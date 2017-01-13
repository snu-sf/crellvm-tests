	.text
	.file	"search.bc"
	.globl	shrink_regexp_cache
	.align	16, 0x90
	.type	shrink_regexp_cache,@function
shrink_regexp_cache:                    # @shrink_regexp_cache
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
	subq	$16, %rsp
	movq	searchbuf_head, %rax
	movq	%rax, -8(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	shrink_regexp_cache, .Lfunc_end0-shrink_regexp_cache
	.cfi_endproc

	.globl	clear_regexp_cache
	.align	16, 0x90
	.type	clear_regexp_cache,@function
clear_regexp_cache:                     # @clear_regexp_cache
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$20, -4(%rbp)
	jge	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movabsq	$searchbufs, %rax
	movslq	-4(%rbp), %rcx
	imulq	$360, %rcx, %rcx        # imm = 0x168
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	clear_regexp_cache, .Lfunc_end1-clear_regexp_cache
	.cfi_endproc

	.globl	compile_pattern
	.align	16, 0x90
	.type	compile_pattern,@function
compile_pattern:                        # @compile_pattern
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
	subq	$128, %rsp
	movb	%r8b, %al
	movb	%cl, %r9b
	movabsq	$searchbuf_head, %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r9b
	movb	%r9b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	%r10, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_18
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SCHARS
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB2_16
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB2_16
# BB#5:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_16
# BB#6:                                 # %land.lhs.true.18
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_16
# BB#10:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movb	352(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB2_16
# BB#11:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	128(%rcx), %rax
	jne	.LBB2_16
.LBB2_13:                               # %land.lhs.true.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	globals+2096, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_16
# BB#14:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	92(%rax), %ecx
	cmpl	charset_unibyte, %ecx
	jne	.LBB2_16
# BB#15:                                # %if.then.48
	jmp	.LBB2_21
.LBB2_16:                               # %if.end.49
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_19
# BB#17:                                # %if.then.52
	jmp	.LBB2_18
.LBB2_18:                               # %compile_it
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	compile_pattern_1
	jmp	.LBB2_21
.LBB2_19:                               # %if.end.54
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_20
.LBB2_20:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_21:                               # %for.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	searchbuf_head, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, searchbuf_head
	cmpq	$0, -16(%rbp)
	je	.LBB2_23
# BB#22:                                # %if.then.59
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %r8
	movq	%rax, %rdi
	callq	re_set_registers
.LBB2_23:                               # %if.end.61
	movb	-26(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movw	%cx, %si
	movw	88(%rdx), %di
	andw	$1, %si
	shlw	$9, %si
	andw	$-513, %di              # imm = 0xFFFFFFFFFFFFFDFF
	orw	%si, %di
	movw	%di, 88(%rdx)
	movq	-40(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	compile_pattern, .Lfunc_end2-compile_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	compile_pattern_1,@function
compile_pattern_1:                      # @compile_pattern_1
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
	subq	$112, %rsp
	movb	%cl, %al
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	%ecx, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movb	-25(%rbp), %dl
	movq	-8(%rbp), %rax
	andb	$1, %dl
	movb	%dl, 352(%rax)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %esi
	movq	-8(%rbp), %rcx
	movw	%si, %r8w
	movw	88(%rcx), %r9w
	andw	$1, %r8w
	shlw	$8, %r8w
	andw	$-257, %r9w             # imm = 0xFFFFFFFFFFFFFEFF
	orw	%r8w, %r9w
	movw	%r9w, 88(%rcx)
	movl	charset_unibyte, %esi
	movq	-8(%rbp), %rcx
	movl	%esi, 92(%rcx)
	movq	globals+2096, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_5
.LBB3_4:                                # %if.then
	movq	globals+2096, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB3_6:                                # %if.end
	movl	$262144, %eax           # imm = 0x40000
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
	movb	-25(%rbp), %sil
	testb	$1, %sil
	cmovneq	%rdx, %rcx
	orq	$3146244, %rcx          # imm = 0x300204
	movq	%rcx, %rdi
	callq	re_set_syntax
	movq	%rax, -48(%rbp)
	movq	globals+2096, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_8
.LBB3_7:                                # %if.then.16
	movq	globals+2096, %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	re_set_whitespace_regexp
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.18
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	re_set_whitespace_regexp
.LBB3_9:                                # %if.end.19
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-8(%rbp), %rdi
	addq	$32, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	re_compile_pattern
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movw	88(%rax), %r8w
	shrw	$7, %r8w
	andw	$1, %r8w
	movzwl	%r8w, %r9d
	cmpl	$0, %r9d
	je	.LBB3_11
# BB#10:                                # %cond.true.28
	movq	current_buffer, %rax
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.29
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB3_12:                               # %cond.end.31
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	callq	re_set_whitespace_regexp
	movq	-48(%rbp), %rdi
	callq	re_set_syntax
	cmpq	$0, -40(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	je	.LBB3_14
# BB#13:                                # %if.then.35
	movl	$572, %edi              # imm = 0x23C
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB3_14:                               # %if.end.38
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	compile_pattern_1, .Lfunc_end3-compile_pattern_1
	.cfi_endproc

	.globl	Flooking_at
	.align	16, 0x90
	.type	Flooking_at,@function
Flooking_at:                            # @Flooking_at
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	looking_at_1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Flooking_at, .Lfunc_end4-Flooking_at
	.cfi_endproc

	.align	16, 0x90
	.type	looking_at_1,@function
looking_at_1:                           # @looking_at_1
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
	subq	$256, %rsp              # imm = 0x100
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, running_asynch_code
	je	.LBB5_2
# BB#1:                                 # %if.then
	callq	save_search_regs
.LBB5_2:                                # %if.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	200(%rcx), %rdi
	movq	current_buffer, %rcx
	movq	208(%rcx), %rdx
	callq	set_char_table_extras
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	globals+1056, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$search_regs, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	current_buffer, %rax
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	200(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB5_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movb	-9(%rbp), %cl
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movb	%cl, -129(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movb	-129(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %edi
	andl	$1, %edi
	movzbl	%cl, %r8d
	andl	$1, %r8d
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%edi, -136(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	callq	compile_pattern
	movq	%rax, -72(%rbp)
	movb	$1, immediate_quit
# BB#6:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_9
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_9
# BB#8:                                 # %if.then.14
	callq	process_quit_flag
	jmp	.LBB5_12
.LBB5_9:                                # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB5_11
# BB#10:                                # %if.then.16
	callq	process_pending_signals
.LBB5_11:                               # %if.end.17
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.18
	jmp	.LBB5_13
.LBB5_13:                               # %do.end
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB5_15
# BB#14:                                # %cond.true.20
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_16
.LBB5_16:                               # %cond.end.23
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	24(%rcx), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB5_18
# BB#17:                                # %if.then.44
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
.LBB5_18:                               # %if.end.48
	cmpq	$0, -56(%rbp)
	jge	.LBB5_20
# BB#19:                                # %if.then.50
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
.LBB5_20:                               # %if.end.54
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, re_match_object
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	current_buffer, %r9
	movq	744(%r9), %r9
	addq	$0, %r9
	movq	current_buffer, %r10
	subq	760(%r10), %r9
	movq	globals+1056, %r10
	movq	%r10, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%r9, -216(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movabsq	$search_regs, %rdx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rdx
	subq	760(%rdx), %rax
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	re_match_2
	movq	%rax, -64(%rbp)
	movb	$0, immediate_quit
	cmpq	$-2, -64(%rbp)
	jne	.LBB5_22
# BB#21:                                # %if.then.67
	callq	matcher_overflow
.LBB5_22:                               # %if.end.68
	cmpq	$0, -64(%rbp)
	jl	.LBB5_24
# BB#23:                                # %cond.true.70
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false.72
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB5_25:                               # %cond.end.74
	movq	-232(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	globals+1056, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_34
# BB#26:                                # %land.lhs.true.78
	cmpq	$0, -64(%rbp)
	jl	.LBB5_34
# BB#27:                                # %if.then.80
	movq	$0, -64(%rbp)
.LBB5_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB5_33
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	-64(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jl	.LBB5_31
# BB#30:                                # %if.then.85
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-64(%rbp), %rcx
	movq	search_regs+8, %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-64(%rbp), %rcx
	movq	search_regs+16, %rsi
	movq	%rax, (%rsi,%rcx,8)
.LBB5_31:                               # %if.end.96
                                        #   in Loop: Header=BB5_28 Depth=1
	jmp	.LBB5_32
.LBB5_32:                               # %for.inc
                                        #   in Loop: Header=BB5_28 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB5_28
.LBB5_33:                               # %for.end
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, last_thing_searched
.LBB5_34:                               # %if.end.98
	movq	-24(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end5:
	.size	looking_at_1, .Lfunc_end5-looking_at_1
	.cfi_endproc

	.globl	Fposix_looking_at
	.align	16, 0x90
	.type	Fposix_looking_at,@function
Fposix_looking_at:                      # @Fposix_looking_at
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
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	looking_at_1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fposix_looking_at, .Lfunc_end6-Fposix_looking_at
	.cfi_endproc

	.globl	Fstring_match
	.align	16, 0x90
	.type	Fstring_match,@function
Fstring_match:                          # @Fstring_match
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
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	string_match_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fstring_match, .Lfunc_end7-Fstring_match
	.cfi_endproc

	.align	16, 0x90
	.type	string_match_1,@function
string_match_1:                         # @string_match_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	testb	$1, running_asynch_code
	je	.LBB8_2
# BB#1:                                 # %if.then
	callq	save_search_regs
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_4
# BB#3:                                 # %if.then.1
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB8_15
.LBB8_4:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_6
# BB#5:                                 # %cond.true
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB8_7:                                # %cond.end
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jge	.LBB8_10
# BB#8:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-64(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	jg	.LBB8_10
# BB#9:                                 # %if.then.11
	movq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_14
.LBB8_10:                               # %if.else.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jg	.LBB8_12
# BB#11:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB8_13
.LBB8_12:                               # %if.then.17
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB8_13:                               # %if.end.18
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.19
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -72(%rbp)
.LBB8_15:                               # %if.end.21
	movl	$2, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	200(%rcx), %rdi
	movq	current_buffer, %rcx
	movq	208(%rcx), %rdx
	callq	set_char_table_extras
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	globals+1056, %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$search_regs, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	current_buffer, %rax
	movq	144(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_17
# BB#16:                                # %cond.true.28
	movq	current_buffer, %rax
	movq	200(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_17:                               # %cond.false.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end.32
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	-33(%rbp), %cl
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movb	%cl, -153(%rbp)         # 1-byte Spill
	callq	STRING_MULTIBYTE
	movb	-153(%rbp), %cl         # 1-byte Reload
	movzbl	%cl, %edx
	andl	$1, %edx
	movzbl	%al, %esi
	andl	$1, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	%esi, -160(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	-164(%rbp), %ecx        # 4-byte Reload
	movl	-160(%rbp), %r8d        # 4-byte Reload
	callq	compile_pattern
	movq	%rax, -56(%rbp)
	movb	$1, immediate_quit
	movq	-24(%rbp), %rax
	movq	%rax, re_match_object
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%edi, %edi
	subq	-72(%rbp), %rax
	movq	globals+1056, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movabsq	$search_regs, %rdx
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	callq	re_search
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movb	$0, immediate_quit
	movq	globals+1056, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_20
# BB#19:                                # %if.then.49
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, last_thing_searched
.LBB8_20:                               # %if.end.51
	cmpq	$-2, -48(%rbp)
	jne	.LBB8_22
# BB#21:                                # %if.then.54
	callq	matcher_overflow
.LBB8_22:                               # %if.end.55
	cmpq	$0, -48(%rbp)
	jge	.LBB8_24
# BB#23:                                # %if.then.58
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_33
.LBB8_24:                               # %if.end.60
	xorl	%edi, %edi
	movq	globals+1056, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_32
# BB#25:                                # %if.then.64
	movq	$0, -80(%rbp)
.LBB8_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB8_31
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	-80(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jl	.LBB8_29
# BB#28:                                # %if.then.70
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	string_byte_to_char
	movq	-80(%rbp), %rcx
	movq	search_regs+8, %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	string_byte_to_char
	movq	-80(%rbp), %rcx
	movq	search_regs+16, %rsi
	movq	%rax, (%rsi,%rcx,8)
.LBB8_29:                               # %if.end.77
                                        #   in Loop: Header=BB8_26 Depth=1
	jmp	.LBB8_30
.LBB8_30:                               # %for.inc
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB8_26
.LBB8_31:                               # %for.end
	jmp	.LBB8_32
.LBB8_32:                               # %if.end.78
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	string_byte_to_char
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB8_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	string_match_1, .Lfunc_end8-string_match_1
	.cfi_endproc

	.globl	Fposix_string_match
	.align	16, 0x90
	.type	Fposix_string_match,@function
Fposix_string_match:                    # @Fposix_string_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	string_match_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fposix_string_match, .Lfunc_end9-Fposix_string_match
	.cfi_endproc

	.globl	fast_string_match_internal
	.align	16, 0x90
	.type	fast_string_match_internal,@function
fast_string_match_internal:             # @fast_string_match_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	STRING_MULTIBYTE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movzbl	%al, %r8d
	andl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	callq	compile_pattern
	movq	%rax, -40(%rbp)
	movb	$1, immediate_quit
	movq	-16(%rbp), %rax
	movq	%rax, re_match_object
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-104(%rbp), %r9         # 8-byte Reload
	callq	re_search
	movq	%rax, -32(%rbp)
	movb	$0, immediate_quit
	movq	-32(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fast_string_match_internal, .Lfunc_end10-fast_string_match_internal
	.cfi_endproc

	.globl	fast_c_string_match_ignore_case
	.align	16, 0x90
	.type	fast_c_string_match_ignore_case,@function
fast_c_string_match_ignore_case:        # @fast_c_string_match_ignore_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	string_make_unibyte
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movq	%rax, re_match_object
	movq	-8(%rbp), %rax
	movq	Vascii_canon_table, %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	compile_pattern
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movb	$1, immediate_quit
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	re_search
	movq	%rax, -32(%rbp)
	movb	$0, immediate_quit
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fast_c_string_match_ignore_case, .Lfunc_end11-fast_c_string_match_ignore_case
	.cfi_endproc

	.globl	fast_looking_at
	.align	16, 0x90
	.type	fast_looking_at,@function
fast_looking_at:                        # @fast_looking_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_6
.LBB12_1:                               # %if.then
	cmpq	$0, -24(%rbp)
	jge	.LBB12_3
# BB#2:                                 # %if.then.1
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -24(%rbp)
.LBB12_3:                               # %if.end
	cmpq	$0, -40(%rbp)
	jge	.LBB12_5
# BB#4:                                 # %if.then.4
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -40(%rbp)
.LBB12_5:                               # %if.end.6
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	-48(%rbp), %rdi
	callq	SDATA
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, re_match_object
	movq	-48(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB12_18
.LBB12_6:                               # %if.else
	cmpq	$0, -24(%rbp)
	jge	.LBB12_8
# BB#7:                                 # %if.then.11
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB12_8:                               # %if.end.13
	cmpq	$0, -40(%rbp)
	jge	.LBB12_10
# BB#9:                                 # %if.then.15
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
.LBB12_10:                              # %if.end.17
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB12_12
# BB#11:                                # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_13
.LBB12_13:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	24(%rcx), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jge	.LBB12_15
# BB#14:                                # %if.then.43
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -88(%rbp)
.LBB12_15:                              # %if.end.47
	cmpq	$0, -96(%rbp)
	jge	.LBB12_17
# BB#16:                                # %if.then.49
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
.LBB12_17:                              # %if.end.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, re_match_object
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -49(%rbp)
.LBB12_18:                              # %if.end.58
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%ecx, %ecx
	movb	-49(%rbp), %dl
	andb	$1, %dl
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movb	%dl, -129(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-129(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	compile_pattern
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movb	$1, immediate_quit
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2
	movq	%rax, -104(%rbp)
	movb	$0, immediate_quit
	movq	-104(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fast_looking_at, .Lfunc_end12-fast_looking_at
	.cfi_endproc

	.globl	find_newline
	.align	16, 0x90
	.type	find_newline,@function
find_newline:                           # @find_newline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movb	24(%rbp), %al
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB13_4
# BB#1:                                 # %if.then
	movl	$1, -84(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then.1
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB13_3:                               # %if.end
	jmp	.LBB13_7
.LBB13_4:                               # %if.else
	movl	$-1, -84(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB13_6:                               # %if.end.4
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.5
	cmpq	$-1, -40(%rbp)
	jne	.LBB13_9
# BB#8:                                 # %if.then.7
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
.LBB13_9:                               # %if.end.8
	movq	current_buffer, %rdi
	callq	newline_cache_on_off
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB13_11
# BB#10:                                # %if.then.11
	movq	current_buffer, %rax
	movq	784(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB13_12
.LBB13_11:                              # %if.else.13
	movq	current_buffer, %rax
	movq	%rax, -96(%rbp)
.LBB13_12:                              # %if.end.14
	cmpq	$0, -56(%rbp)
	je	.LBB13_14
# BB#13:                                # %if.then.16
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB13_14:                              # %if.end.17
	movb	-65(%rbp), %al
	andb	$1, %al
	movb	%al, immediate_quit
	cmpq	$0, -48(%rbp)
	jle	.LBB13_88
# BB#15:                                # %if.then.21
	jmp	.LBB13_16
.LBB13_16:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_19 Depth 2
                                        #       Child Loop BB13_31 Depth 3
                                        #     Child Loop BB13_68 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_87
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB13_54
# BB#18:                                # %if.then.24
                                        #   in Loop: Header=BB13_16 Depth=1
	movl	$1, -124(%rbp)
	movb	$0, immediate_quit
.LBB13_19:                              # %while.cond.25
                                        #   Parent Loop BB13_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_31 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jge	.LBB13_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB13_19 Depth=2
	cmpl	$0, -124(%rbp)
	setne	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB13_21:                              # %land.end
                                        #   in Loop: Header=BB13_19 Depth=2
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_22
	jmp	.LBB13_46
.LBB13_22:                              # %while.body.28
                                        #   in Loop: Header=BB13_19 Depth=2
	leaq	-120(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	region_cache_forward
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB13_26
# BB#23:                                # %if.then.31
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB13_25
# BB#24:                                # %if.then.34
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB13_25:                              # %if.end.36
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%rax, -136(%rbp)
	jmp	.LBB13_30
.LBB13_26:                              # %if.else.37
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB13_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB13_29:                              # %cond.end
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
.LBB13_30:                              # %if.end.39
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB13_31:                              # %while.cond.41
                                        #   Parent Loop BB13_16 Depth=1
                                        #     Parent Loop BB13_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-136(%rbp), %rdx
	movb	%cl, -281(%rbp)         # 1-byte Spill
	jge	.LBB13_36
# BB#32:                                # %land.rhs.43
                                        #   in Loop: Header=BB13_31 Depth=3
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_34
# BB#33:                                # %cond.true.45
                                        #   in Loop: Header=BB13_31 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB13_35
.LBB13_34:                              # %cond.false.47
                                        #   in Loop: Header=BB13_31 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB13_35
.LBB13_35:                              # %cond.end.48
                                        #   in Loop: Header=BB13_31 Depth=3
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -281(%rbp)        # 1-byte Spill
.LBB13_36:                              # %land.end.54
                                        #   in Loop: Header=BB13_31 Depth=3
	movb	-281(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_37
	jmp	.LBB13_42
.LBB13_37:                              # %while.body.55
                                        #   in Loop: Header=BB13_31 Depth=3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB13_41
# BB#38:                                # %if.then.59
	cmpq	$0, -64(%rbp)
	je	.LBB13_40
# BB#39:                                # %if.then.61
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_40:                              # %if.end.62
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_167
.LBB13_41:                              # %if.end.63
                                        #   in Loop: Header=BB13_31 Depth=3
	jmp	.LBB13_31
.LBB13_42:                              # %while.end
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB13_45
# BB#43:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_19 Depth=2
	cmpl	$0, -124(%rbp)
	jne	.LBB13_45
# BB#44:                                # %if.then.67
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_46
.LBB13_45:                              # %if.end.68
                                        #   in Loop: Header=BB13_19 Depth=2
	movl	$1, -124(%rbp)
	jmp	.LBB13_19
.LBB13_46:                              # %while.end.69
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB13_48
# BB#47:                                # %if.then.72
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_87
.LBB13_48:                              # %if.end.73
                                        #   in Loop: Header=BB13_16 Depth=1
	movb	-65(%rbp), %al
	andb	$1, %al
	movb	%al, immediate_quit
	movq	-24(%rbp), %rcx
	cmpq	-112(%rbp), %rcx
	jle	.LBB13_50
# BB#49:                                # %if.then.78
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB13_50:                              # %if.end.79
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	subq	$1, %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB13_52
# BB#51:                                # %cond.true.84
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB13_53
.LBB13_52:                              # %cond.false.87
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB13_53:                              # %cond.end.88
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB13_57
.LBB13_54:                              # %if.else.90
                                        #   in Loop: Header=BB13_16 Depth=1
	cmpq	$-1, -24(%rbp)
	jne	.LBB13_56
# BB#55:                                # %if.then.93
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB13_56:                              # %if.end.95
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_57
.LBB13_57:                              # %if.end.96
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB13_60
# BB#58:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB13_60
# BB#59:                                # %cond.true.106
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB13_61
.LBB13_60:                              # %cond.false.109
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB13_61:                              # %cond.end.111
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB13_63
# BB#62:                                # %cond.true.116
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB13_64
.LBB13_63:                              # %cond.false.117
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB13_64:                              # %cond.end.118
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_66
# BB#65:                                # %cond.true.124
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB13_67
.LBB13_66:                              # %cond.false.127
                                        #   in Loop: Header=BB13_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB13_67
.LBB13_67:                              # %cond.end.128
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB13_68:                              # %for.cond
                                        #   Parent Loop BB13_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -168(%rbp)
	jge	.LBB13_86
# BB#69:                                # %for.body
                                        #   in Loop: Header=BB13_68 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	addq	-168(%rbp), %rdx
	subq	-168(%rbp), %rcx
	movl	$10, %esi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memchr
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.LBB13_71
# BB#70:                                # %cond.true.144
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-184(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_72
.LBB13_71:                              # %cond.false.145
                                        #   in Loop: Header=BB13_68 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_72
.LBB13_72:                              # %cond.end.146
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB13_78
# BB#73:                                # %land.lhs.true.149
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.LBB13_78
# BB#74:                                # %if.then.152
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	current_buffer, %rax
	movq	-152(%rbp), %rcx
	addq	-168(%rbp), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	buf_bytepos_to_charpos
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rcx
	addq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	buf_bytepos_to_charpos
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	know_region_cache
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_76
# BB#75:                                # %cond.true.161
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB13_77
.LBB13_76:                              # %cond.false.164
                                        #   in Loop: Header=BB13_68 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB13_77
.LBB13_77:                              # %cond.end.165
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB13_78:                              # %if.end.173
                                        #   in Loop: Header=BB13_68 Depth=2
	cmpq	$0, -184(%rbp)
	jne	.LBB13_80
# BB#79:                                # %if.then.175
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_86
.LBB13_80:                              # %if.end.176
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB13_84
# BB#81:                                # %if.then.181
	movb	$0, immediate_quit
	cmpq	$0, -64(%rbp)
	je	.LBB13_83
# BB#82:                                # %if.then.183
	movq	-152(%rbp), %rax
	addq	-176(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_83:                              # %if.end.185
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rax
	addq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -8(%rbp)
	jmp	.LBB13_167
.LBB13_84:                              # %if.end.188
                                        #   in Loop: Header=BB13_68 Depth=2
	jmp	.LBB13_85
.LBB13_85:                              # %for.inc
                                        #   in Loop: Header=BB13_68 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB13_68
.LBB13_86:                              # %for.end
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -16(%rbp)
	jmp	.LBB13_16
.LBB13_87:                              # %while.end.190
	jmp	.LBB13_159
.LBB13_88:                              # %if.else.191
	jmp	.LBB13_89
.LBB13_89:                              # %while.cond.192
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_92 Depth 2
                                        #       Child Loop BB13_102 Depth 3
                                        #     Child Loop BB13_139 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB13_158
# BB#90:                                # %while.body.195
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB13_125
# BB#91:                                # %if.then.199
                                        #   in Loop: Header=BB13_89 Depth=1
	movl	$1, -212(%rbp)
	movb	$0, immediate_quit
.LBB13_92:                              # %while.cond.202
                                        #   Parent Loop BB13_89 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_102 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -369(%rbp)         # 1-byte Spill
	jle	.LBB13_94
# BB#93:                                # %land.rhs.205
                                        #   in Loop: Header=BB13_92 Depth=2
	cmpl	$0, -212(%rbp)
	setne	%al
	movb	%al, -369(%rbp)         # 1-byte Spill
.LBB13_94:                              # %land.end.207
                                        #   in Loop: Header=BB13_92 Depth=2
	movb	-369(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_95
	jmp	.LBB13_117
.LBB13_95:                              # %while.body.208
                                        #   in Loop: Header=BB13_92 Depth=2
	leaq	-208(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	region_cache_backward
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB13_97
# BB#96:                                # %if.then.212
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	%rax, -224(%rbp)
	jmp	.LBB13_101
.LBB13_97:                              # %if.else.213
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-208(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB13_99
# BB#98:                                # %cond.true.216
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-208(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB13_100
.LBB13_99:                              # %cond.false.217
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB13_100:                             # %cond.end.218
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)
.LBB13_101:                             # %if.end.220
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB13_102:                             # %while.cond.222
                                        #   Parent Loop BB13_89 Depth=1
                                        #     Parent Loop BB13_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-224(%rbp), %rdx
	movb	%cl, -385(%rbp)         # 1-byte Spill
	jle	.LBB13_107
# BB#103:                               # %land.rhs.225
                                        #   in Loop: Header=BB13_102 Depth=3
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_105
# BB#104:                               # %cond.true.231
                                        #   in Loop: Header=BB13_102 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB13_106
.LBB13_105:                             # %cond.false.234
                                        #   in Loop: Header=BB13_102 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB13_106
.LBB13_106:                             # %cond.end.235
                                        #   in Loop: Header=BB13_102 Depth=3
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -385(%rbp)        # 1-byte Spill
.LBB13_107:                             # %land.end.246
                                        #   in Loop: Header=BB13_102 Depth=3
	movb	-385(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_108
	jmp	.LBB13_113
.LBB13_108:                             # %while.body.247
                                        #   in Loop: Header=BB13_102 Depth=3
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB13_112
# BB#109:                               # %if.then.251
	cmpq	$0, -64(%rbp)
	je	.LBB13_111
# BB#110:                               # %if.then.253
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_111:                             # %if.end.254
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_167
.LBB13_112:                             # %if.end.255
                                        #   in Loop: Header=BB13_102 Depth=3
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_102
.LBB13_113:                             # %while.end.258
                                        #   in Loop: Header=BB13_92 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jle	.LBB13_116
# BB#114:                               # %land.lhs.true.261
                                        #   in Loop: Header=BB13_92 Depth=2
	cmpl	$0, -212(%rbp)
	jne	.LBB13_116
# BB#115:                               # %if.then.263
                                        #   in Loop: Header=BB13_89 Depth=1
	jmp	.LBB13_117
.LBB13_116:                             # %if.end.264
                                        #   in Loop: Header=BB13_92 Depth=2
	movl	$1, -212(%rbp)
	jmp	.LBB13_92
.LBB13_117:                             # %while.end.265
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jg	.LBB13_119
# BB#118:                               # %if.then.268
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_158
.LBB13_119:                             # %if.end.269
                                        #   in Loop: Header=BB13_89 Depth=1
	movb	-65(%rbp), %al
	andb	$1, %al
	movb	%al, immediate_quit
	movq	-24(%rbp), %rcx
	cmpq	-200(%rbp), %rcx
	jg	.LBB13_121
# BB#120:                               # %if.then.274
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB13_121:                             # %if.end.276
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rdi
	movq	-208(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	cmpq	-200(%rbp), %rax
	jle	.LBB13_123
# BB#122:                               # %cond.true.280
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rdi
	movq	-208(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB13_124
.LBB13_123:                             # %cond.false.282
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB13_124:                             # %cond.end.283
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	jmp	.LBB13_128
.LBB13_125:                             # %if.else.285
                                        #   in Loop: Header=BB13_89 Depth=1
	cmpq	$-1, -24(%rbp)
	jne	.LBB13_127
# BB#126:                               # %if.then.288
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB13_127:                             # %if.end.290
                                        #   in Loop: Header=BB13_89 Depth=1
	jmp	.LBB13_128
.LBB13_128:                             # %if.end.291
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB13_131
# BB#129:                               # %land.lhs.true.297
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jg	.LBB13_131
# BB#130:                               # %cond.true.303
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB13_132
.LBB13_131:                             # %cond.false.306
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB13_132:                             # %cond.end.308
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jle	.LBB13_134
# BB#133:                               # %cond.true.312
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB13_135
.LBB13_134:                             # %cond.false.313
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB13_135:                             # %cond.end.314
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_137
# BB#136:                               # %cond.true.320
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB13_138
.LBB13_137:                             # %cond.false.323
                                        #   in Loop: Header=BB13_89 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB13_138
.LBB13_138:                             # %cond.end.324
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	addq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	movq	-24(%rbp), %rax
	subq	-200(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB13_139:                             # %for.cond.334
                                        #   Parent Loop BB13_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-248(%rbp), %rcx
	jge	.LBB13_157
# BB#140:                               # %for.body.337
                                        #   in Loop: Header=BB13_139 Depth=2
	movl	$10, %esi
	movq	-232(%rbp), %rdi
	movq	-248(%rbp), %rdx
	callq	memrchr
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB13_142
# BB#141:                               # %cond.true.341
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-264(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB13_143
.LBB13_142:                             # %cond.false.345
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	$-1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB13_143
.LBB13_143:                             # %cond.end.346
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB13_149
# BB#144:                               # %land.lhs.true.349
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-248(%rbp), %rax
	movq	-256(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB13_149
# BB#145:                               # %if.then.353
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	current_buffer, %rax
	movq	-200(%rbp), %rcx
	addq	-256(%rbp), %rcx
	addq	$1, %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	buf_bytepos_to_charpos
	movq	current_buffer, %rdi
	movq	-200(%rbp), %rcx
	addq	-248(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	buf_bytepos_to_charpos
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	know_region_cache
	movq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_147
# BB#146:                               # %cond.true.363
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB13_148
.LBB13_147:                             # %cond.false.366
                                        #   in Loop: Header=BB13_139 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB13_148
.LBB13_148:                             # %cond.end.367
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-472(%rbp), %rax        # 8-byte Reload
	addq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
.LBB13_149:                             # %if.end.374
                                        #   in Loop: Header=BB13_139 Depth=2
	cmpq	$0, -264(%rbp)
	jne	.LBB13_151
# BB#150:                               # %if.then.376
                                        #   in Loop: Header=BB13_89 Depth=1
	jmp	.LBB13_157
.LBB13_151:                             # %if.end.377
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jl	.LBB13_155
# BB#152:                               # %if.then.381
	movb	$0, immediate_quit
	cmpq	$0, -64(%rbp)
	je	.LBB13_154
# BB#153:                               # %if.then.383
	movq	-200(%rbp), %rax
	addq	-256(%rbp), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_154:                             # %if.end.386
	movq	current_buffer, %rdi
	movq	-200(%rbp), %rax
	addq	-256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -8(%rbp)
	jmp	.LBB13_167
.LBB13_155:                             # %if.end.390
                                        #   in Loop: Header=BB13_139 Depth=2
	jmp	.LBB13_156
.LBB13_156:                             # %for.inc.391
                                        #   in Loop: Header=BB13_139 Depth=2
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB13_139
.LBB13_157:                             # %for.end.392
                                        #   in Loop: Header=BB13_89 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -16(%rbp)
	jmp	.LBB13_89
.LBB13_158:                             # %while.end.394
	jmp	.LBB13_159
.LBB13_159:                             # %if.end.395
	movb	$0, immediate_quit
	cmpq	$0, -56(%rbp)
	je	.LBB13_161
# BB#160:                               # %if.then.397
	movq	-48(%rbp), %rax
	movslq	-84(%rbp), %rcx
	imulq	%rcx, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_161:                             # %if.end.399
	cmpq	$0, -64(%rbp)
	je	.LBB13_166
# BB#162:                               # %if.then.401
	cmpq	$-1, -24(%rbp)
	jne	.LBB13_164
# BB#163:                               # %cond.true.404
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB13_165
.LBB13_164:                             # %cond.false.406
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB13_165:                             # %cond.end.407
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_166:                             # %if.end.409
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_167:                             # %return
	movq	-8(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_newline, .Lfunc_end13-find_newline
	.cfi_endproc

	.align	16, 0x90
	.type	newline_cache_on_off,@function
newline_cache_on_off:                   # @newline_cache_on_off
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 784(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -24(%rbp)
	movb	$1, -25(%rbp)
.LBB14_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_9
# BB#3:                                 # %if.then.2
	testb	$1, -25(%rbp)
	je	.LBB14_5
# BB#4:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_8
.LBB14_5:                               # %if.then.7
	movq	-24(%rbp), %rax
	cmpq	$0, 912(%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	912(%rax), %rdi
	callq	free_region_cache
	movq	-24(%rbp), %rax
	movq	$0, 912(%rax)
.LBB14_7:                               # %if.end.12
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.13
	movq	$0, -8(%rbp)
	jmp	.LBB14_15
.LBB14_9:                               # %if.else
	testb	$1, -25(%rbp)
	je	.LBB14_11
# BB#10:                                # %lor.lhs.false.15
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_14
.LBB14_11:                              # %if.then.19
	movq	-24(%rbp), %rax
	cmpq	$0, 912(%rax)
	jne	.LBB14_13
# BB#12:                                # %if.then.22
	callq	new_region_cache
	movq	-24(%rbp), %rcx
	movq	%rax, 912(%rcx)
.LBB14_13:                              # %if.end.25
	jmp	.LBB14_14
.LBB14_14:                              # %if.end.26
	movq	-24(%rbp), %rax
	movq	912(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	newline_cache_on_off, .Lfunc_end14-newline_cache_on_off
	.cfi_endproc

	.globl	scan_newline
	.align	16, 0x90
	.type	scan_newline,@function
scan_newline:                           # @scan_newline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	%r9b, %al
	leaq	-72(%rbp), %r9
	leaq	-64(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %al
	andb	$1, %al
	movq	%r10, (%rsp)
	movzbl	%al, %r11d
	movl	%r11d, 8(%rsp)
	callq	find_newline
	movq	%rax, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	temp_set_point_both
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	temp_set_point_both
.LBB15_3:                               # %if.end
	movq	-72(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	scan_newline, .Lfunc_end15-scan_newline
	.cfi_endproc

	.globl	scan_newline_from_point
	.align	16, 0x90
	.type	scan_newline_from_point,@function
scan_newline_from_point:                # @scan_newline_from_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %r9
	movl	$1, %eax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	current_buffer, %rsi
	movq	752(%rsi), %rsi
	movq	current_buffer, %rdi
	movq	760(%rdi), %rdi
	movq	-8(%rbp), %r8
	subq	$1, %r8
	movq	-24(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	find_newline
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	leaq	-32(%rbp), %r9
	movl	$1, %eax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	current_buffer, %rsi
	movq	768(%rsi), %rsi
	movq	current_buffer, %rdi
	movq	776(%rdi), %rdi
	movq	-8(%rbp), %r8
	movq	-24(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	find_newline
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB16_3:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	scan_newline_from_point, .Lfunc_end16-scan_newline_from_point
	.cfi_endproc

	.globl	find_newline_no_quit
	.align	16, 0x90
	.type	find_newline_no_quit,@function
find_newline_no_quit:                   # @find_newline_no_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	$-1, %r9
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rcx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r9, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	find_newline
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	find_newline_no_quit, .Lfunc_end17-find_newline_no_quit
	.cfi_endproc

	.globl	find_before_next_newline
	.align	16, 0x90
	.type	find_before_next_newline,@function
find_before_next_newline:               # @find_before_next_newline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	$-1, %rax
	leaq	-40(%rbp), %r9
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	callq	find_newline
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_18
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB18_16
# BB#2:                                 # %if.then.1
	jmp	.LBB18_3
.LBB18_3:                               # %do.body
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_5
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB18_14
.LBB18_5:                               # %if.else
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.6
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB18_8
# BB#7:                                 # %if.then.9
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               # %if.else.12
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB18_9:                               # %if.end
	jmp	.LBB18_10
.LBB18_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB18_11
	jmp	.LBB18_12
.LBB18_11:                              # %while.body
                                        #   in Loop: Header=BB18_10 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB18_10
.LBB18_12:                              # %while.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.end
	jmp	.LBB18_14
.LBB18_14:                              # %if.end.22
	jmp	.LBB18_15
.LBB18_15:                              # %do.end.23
	jmp	.LBB18_17
.LBB18_16:                              # %if.else.24
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
.LBB18_17:                              # %if.end.26
	jmp	.LBB18_18
.LBB18_18:                              # %if.end.27
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	find_before_next_newline, .Lfunc_end18-find_before_next_newline
	.cfi_endproc

	.globl	Fsearch_backward
	.align	16, 0x90
	.type	Fsearch_backward,@function
Fsearch_backward:                       # @Fsearch_backward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$0, (%rsp)
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fsearch_backward, .Lfunc_end19-Fsearch_backward
	.cfi_endproc

	.align	16, 0x90
	.type	search_command,@function
search_command:                         # @search_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
	movb	16(%rbp), %al
	xorl	%r10d, %r10d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	movslq	-60(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-56(%rbp), %rcx
	movl	%r10d, %edi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_5
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_3
# BB#2:                                 # %cond.true
	jmp	.LBB20_4
.LBB20_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB20_4:                               # %cond.end
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	imulq	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB20_5:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_10
# BB#6:                                 # %if.then.10
	cmpq	$0, -104(%rbp)
	jle	.LBB20_8
# BB#7:                                 # %if.then.13
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.else
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB20_9:                               # %if.end.14
	jmp	.LBB20_30
.LBB20_10:                              # %if.else.15
	jmp	.LBB20_11
.LBB20_11:                              # %do.body
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB20_14
# BB#12:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB20_14
# BB#13:                                # %if.then.23
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB20_18
.LBB20_14:                              # %if.else.26
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_16
# BB#15:                                # %cond.true.32
	jmp	.LBB20_17
.LBB20_16:                              # %cond.false.33
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB20_17:                              # %cond.end.35
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.36
	jmp	.LBB20_19
.LBB20_19:                              # %do.end
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -104(%rbp)
	jle	.LBB20_21
# BB#20:                                # %cond.true.40
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jl	.LBB20_22
	jmp	.LBB20_23
.LBB20_21:                              # %cond.false.43
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jle	.LBB20_23
.LBB20_22:                              # %if.then.48
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	error
.LBB20_23:                              # %if.end.49
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB20_25
# BB#24:                                # %if.then.53
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB20_29
.LBB20_25:                              # %if.else.56
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB20_27
# BB#26:                                # %if.then.60
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB20_28
.LBB20_27:                              # %if.else.63
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -96(%rbp)
.LBB20_28:                              # %if.end.65
	jmp	.LBB20_29
.LBB20_29:                              # %if.end.66
	jmp	.LBB20_30
.LBB20_30:                              # %if.end.67
	movl	$2, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	200(%rcx), %rdi
	movq	current_buffer, %rcx
	movq	208(%rcx), %rdx
	callq	set_char_table_extras
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-64(%rbp), %eax
	movq	current_buffer, %r11
	movq	144(%r11), %r11
	movq	%r11, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%r10, -192(%rbp)        # 8-byte Spill
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_32
# BB#31:                                # %cond.true.74
	movq	current_buffer, %rax
	movq	200(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB20_33
.LBB20_32:                              # %cond.false.76
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB20_33:                              # %cond.end.78
	movq	-208(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	144(%rcx), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_35
# BB#34:                                # %cond.true.83
	movq	current_buffer, %rax
	movq	208(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB20_36
.LBB20_35:                              # %cond.false.85
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB20_36:                              # %cond.end.87
	movq	-232(%rbp), %rax        # 8-byte Reload
	movb	-65(%rbp), %cl
	andb	$1, %cl
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	movb	%cl, -233(%rbp)         # 1-byte Spill
	movq	%r8, %rcx
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	-233(%rbp), %bl         # 1-byte Reload
	movzbl	%bl, %r14d
	movl	%r14d, 24(%rsp)
	callq	search_buffer
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jg	.LBB20_42
# BB#37:                                # %if.then.92
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_39
# BB#38:                                # %if.then.96
	movl	$839, %edi              # imm = 0x347
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB20_39:                              # %if.end.98
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_41
# BB#40:                                # %if.then.102
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB20_43
.LBB20_41:                              # %if.else.104
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB20_43
.LBB20_42:                              # %if.end.106
	movq	-80(%rbp), %rdi
	callq	set_point
	movq	-80(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -24(%rbp)
.LBB20_43:                              # %return
	movq	-24(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	search_command, .Lfunc_end20-search_command
	.cfi_endproc

	.globl	Fsearch_forward
	.align	16, 0x90
	.type	Fsearch_forward,@function
Fsearch_forward:                        # @Fsearch_forward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$0, (%rsp)
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fsearch_forward, .Lfunc_end21-Fsearch_forward
	.cfi_endproc

	.globl	Fre_search_backward
	.align	16, 0x90
	.type	Fre_search_backward,@function
Fre_search_backward:                    # @Fre_search_backward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$0, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fre_search_backward, .Lfunc_end22-Fre_search_backward
	.cfi_endproc

	.globl	Fre_search_forward
	.align	16, 0x90
	.type	Fre_search_forward,@function
Fre_search_forward:                     # @Fre_search_forward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fre_search_forward, .Lfunc_end23-Fre_search_forward
	.cfi_endproc

	.globl	Fposix_search_backward
	.align	16, 0x90
	.type	Fposix_search_backward,@function
Fposix_search_backward:                 # @Fposix_search_backward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fposix_search_backward, .Lfunc_end24-Fposix_search_backward
	.cfi_endproc

	.globl	Fposix_search_forward
	.align	16, 0x90
	.type	Fposix_search_forward,@function
Fposix_search_forward:                  # @Fposix_search_forward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	search_command
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fposix_search_forward, .Lfunc_end25-Fposix_search_forward
	.cfi_endproc

	.globl	Freplace_match
	.align	16, 0x90
	.type	Freplace_match,@function
Freplace_match:                         # @Freplace_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp              # imm = 0x340
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	CHECK_STRING
.LBB26_2:                               # %if.end
	movl	$0, -52(%rbp)
	cmpl	$0, search_regs
	ja	.LBB26_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB26_4:                               # %if.end.3
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_6
# BB#5:                                 # %if.then.6
	movq	$0, -96(%rbp)
	jmp	.LBB26_13
.LBB26_6:                               # %if.else
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_8
# BB#7:                                 # %cond.true
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB26_9:                               # %cond.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB26_11
# BB#10:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jl	.LBB26_12
.LBB26_11:                              # %if.then.17
	movq	-48(%rbp), %rdi
	movl	search_regs, %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	args_out_of_range
.LBB26_12:                              # %if.end.19
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)
.LBB26_13:                              # %if.end.21
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_19
# BB#14:                                # %if.then.25
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB26_17
# BB#15:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jg	.LBB26_17
# BB#16:                                # %lor.lhs.false.32
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB26_18
.LBB26_17:                              # %if.then.36
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	movq	(%rdx,%rcx,8), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	args_out_of_range
.LBB26_18:                              # %if.end.43
	jmp	.LBB26_24
.LBB26_19:                              # %if.else.44
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jl	.LBB26_22
# BB#20:                                # %lor.lhs.false.48
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jg	.LBB26_22
# BB#21:                                # %lor.lhs.false.53
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB26_23
.LBB26_22:                              # %if.then.58
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	movq	(%rdx,%rcx,8), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	args_out_of_range
.LBB26_23:                              # %if.end.65
	jmp	.LBB26_24
.LBB26_24:                              # %if.end.66
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_119
# BB#25:                                # %if.then.70
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_27
# BB#26:                                # %if.then.76
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
	jmp	.LBB26_28
.LBB26_27:                              # %if.else.78
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -72(%rbp)
.LBB26_28:                              # %if.end.80
	movl	$10, -84(%rbp)
	movl	$1, -52(%rbp)
	movb	$0, -73(%rbp)
	movb	$0, -74(%rbp)
	movb	$0, -76(%rbp)
	movb	$0, -75(%rbp)
.LBB26_29:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB26_106
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_71
# BB#31:                                # %if.then.86
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_33
# BB#32:                                # %cond.true.90
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB26_51
.LBB26_33:                              # %cond.false.92
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_34
	jmp	.LBB26_38
.LBB26_34:                              # %cond.true.93
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_36
# BB#35:                                # %cond.true.96
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB26_37
.LBB26_36:                              # %cond.false.98
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB26_37
.LBB26_37:                              # %cond.end.99
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB26_42
	jmp	.LBB26_46
.LBB26_38:                              # %cond.false.107
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_40
# BB#39:                                # %cond.true.112
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB26_41
.LBB26_40:                              # %cond.false.115
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB26_41
.LBB26_41:                              # %cond.end.116
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB26_46
.LBB26_42:                              # %cond.true.127
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_44
# BB#43:                                # %cond.true.132
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB26_45
.LBB26_44:                              # %cond.false.135
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB26_45
.LBB26_45:                              # %cond.end.136
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB26_50
.LBB26_46:                              # %cond.false.144
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_48
# BB#47:                                # %cond.true.149
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB26_49
.LBB26_48:                              # %cond.false.152
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB26_49
.LBB26_49:                              # %cond.end.153
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -500(%rbp)        # 4-byte Spill
.LBB26_50:                              # %cond.end.162
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB26_51:                              # %cond.end.164
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
# BB#52:                                # %do.body
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_54
# BB#53:                                # %if.then.170
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB26_69
.LBB26_54:                              # %if.else.172
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_55
.LBB26_55:                              # %do.body.173
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_57
# BB#56:                                # %cond.true.178
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB26_58
.LBB26_57:                              # %cond.false.181
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB26_58
.LBB26_58:                              # %cond.end.182
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB26_60
# BB#59:                                # %cond.true.191
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$1, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB26_67
.LBB26_60:                              # %cond.false.192
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_62
# BB#61:                                # %cond.true.196
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$2, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB26_66
.LBB26_62:                              # %cond.false.197
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_64
# BB#63:                                # %cond.true.201
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$3, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB26_65
.LBB26_64:                              # %cond.false.202
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB26_65:                              # %cond.end.207
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB26_66:                              # %cond.end.209
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB26_67:                              # %cond.end.211
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
# BB#68:                                # %do.end
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_69
.LBB26_69:                              # %if.end.215
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_70
.LBB26_70:                              # %do.end.216
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_91
.LBB26_71:                              # %if.else.217
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_72
.LBB26_72:                              # %do.body.218
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_73
	jmp	.LBB26_83
.LBB26_73:                              # %if.then.221
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-552(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_75
# BB#74:                                # %cond.true.229
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$1, -140(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB26_82
.LBB26_75:                              # %cond.false.232
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_77
# BB#76:                                # %cond.true.237
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -140(%rbp)
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-136(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -560(%rbp)        # 4-byte Spill
	jmp	.LBB26_81
.LBB26_77:                              # %cond.false.251
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_79
# BB#78:                                # %cond.true.256
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	$3, -140(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-136(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	jmp	.LBB26_80
.LBB26_79:                              # %cond.false.270
                                        #   in Loop: Header=BB26_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-140(%rbp), %rdx
	movq	-136(%rbp), %rdi
	callq	string_char
	movl	%eax, -564(%rbp)        # 4-byte Spill
.LBB26_80:                              # %cond.end.272
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB26_81:                              # %cond.end.274
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB26_82:                              # %cond.end.276
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-140(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB26_89
.LBB26_83:                              # %if.else.280
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	SREF
	movb	$1, %cl
	movzbl	%al, %edx
	movl	%edx, -80(%rbp)
	movq	-72(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %cl
	jne	.LBB26_84
	jmp	.LBB26_85
.LBB26_84:                              # %cond.true.284
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_86
	jmp	.LBB26_87
.LBB26_85:                              # %cond.false.288
                                        #   in Loop: Header=BB26_29 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB26_87
.LBB26_86:                              # %cond.true.293
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB26_88
.LBB26_87:                              # %cond.false.294
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB26_88:                              # %cond.end.296
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB26_89:                              # %if.end.298
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_90
.LBB26_90:                              # %do.end.299
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_91
.LBB26_91:                              # %if.end.300
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %edi
	callq	lowercasep
	testb	$1, %al
	jne	.LBB26_92
	jmp	.LBB26_96
.LBB26_92:                              # %if.then.302
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -74(%rbp)
	movl	-84(%rbp), %edi
	callq	SYNTAX
	cmpl	$2, %eax
	je	.LBB26_94
# BB#93:                                # %if.then.306
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -76(%rbp)
	jmp	.LBB26_95
.LBB26_94:                              # %if.else.307
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -73(%rbp)
.LBB26_95:                              # %if.end.308
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_105
.LBB26_96:                              # %if.else.309
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB26_97
	jmp	.LBB26_101
.LBB26_97:                              # %if.then.311
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -75(%rbp)
	movl	-84(%rbp), %edi
	callq	SYNTAX
	cmpl	$2, %eax
	je	.LBB26_99
# BB#98:                                # %if.then.315
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_100
.LBB26_99:                              # %if.else.316
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -73(%rbp)
.LBB26_100:                             # %if.end.317
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_104
.LBB26_101:                             # %if.else.318
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-84(%rbp), %edi
	callq	SYNTAX
	cmpl	$2, %eax
	je	.LBB26_103
# BB#102:                               # %if.then.322
                                        #   in Loop: Header=BB26_29 Depth=1
	movb	$1, -76(%rbp)
.LBB26_103:                             # %if.end.323
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_104
.LBB26_104:                             # %if.end.324
                                        #   in Loop: Header=BB26_29 Depth=1
	jmp	.LBB26_105
.LBB26_105:                             # %if.end.325
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB26_29
.LBB26_106:                             # %while.end
	testb	$1, -74(%rbp)
	jne	.LBB26_109
# BB#107:                               # %land.lhs.true.327
	testb	$1, -73(%rbp)
	je	.LBB26_109
# BB#108:                               # %if.then.330
	movl	$1, -52(%rbp)
	jmp	.LBB26_118
.LBB26_109:                             # %if.else.331
	testb	$1, -76(%rbp)
	jne	.LBB26_112
# BB#110:                               # %land.lhs.true.333
	testb	$1, -73(%rbp)
	je	.LBB26_112
# BB#111:                               # %if.then.336
	movl	$2, -52(%rbp)
	jmp	.LBB26_117
.LBB26_112:                             # %if.else.337
	testb	$1, -76(%rbp)
	jne	.LBB26_115
# BB#113:                               # %land.lhs.true.339
	testb	$1, -75(%rbp)
	je	.LBB26_115
# BB#114:                               # %if.then.342
	movl	$1, -52(%rbp)
	jmp	.LBB26_116
.LBB26_115:                             # %if.else.343
	movl	$0, -52(%rbp)
.LBB26_116:                             # %if.end.344
	jmp	.LBB26_117
.LBB26_117:                             # %if.end.345
	jmp	.LBB26_118
.LBB26_118:                             # %if.end.346
	jmp	.LBB26_119
.LBB26_119:                             # %if.end.347
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_188
# BB#120:                               # %if.then.351
	movl	$2, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	search_regs+8, %rdx
	movq	(%rdx,%rcx,8), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	Fsubstring
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	movq	(%rdx,%rcx,8), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fsubstring
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_182
# BB#121:                               # %if.then.364
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
.LBB26_122:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.LBB26_178
# BB#123:                               # %for.body
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	$-1, -208(%rbp)
	movq	$0, -216(%rbp)
	movb	$0, -217(%rbp)
# BB#124:                               # %do.body.369
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_125
	jmp	.LBB26_135
.LBB26_125:                             # %if.then.372
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-608(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_127
# BB#126:                               # %cond.true.381
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	$1, -236(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB26_134
.LBB26_127:                             # %cond.false.384
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_129
# BB#128:                               # %cond.true.389
                                        #   in Loop: Header=BB26_122 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -236(%rbp)
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-232(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -616(%rbp)        # 4-byte Spill
	jmp	.LBB26_133
.LBB26_129:                             # %cond.false.404
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_131
# BB#130:                               # %cond.true.409
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	$3, -236(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-232(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-232(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	jmp	.LBB26_132
.LBB26_131:                             # %cond.false.423
                                        #   in Loop: Header=BB26_122 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-236(%rbp), %rdx
	movq	-232(%rbp), %rdi
	callq	string_char
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB26_132:                             # %cond.end.425
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB26_133:                             # %cond.end.427
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB26_134:                             # %cond.end.429
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-236(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB26_136
.LBB26_135:                             # %if.else.433
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
.LBB26_136:                             # %if.end.437
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_137
.LBB26_137:                             # %do.end.438
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$92, -80(%rbp)
	jne	.LBB26_169
# BB#138:                               # %if.then.441
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_139
.LBB26_139:                             # %do.body.442
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_140
	jmp	.LBB26_150
.LBB26_140:                             # %if.then.445
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-632(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_142
# BB#141:                               # %cond.true.454
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	$1, -252(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	jmp	.LBB26_149
.LBB26_142:                             # %cond.false.457
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_144
# BB#143:                               # %cond.true.462
                                        #   in Loop: Header=BB26_122 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -252(%rbp)
	movq	-248(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-248(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-248(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -640(%rbp)        # 4-byte Spill
	jmp	.LBB26_148
.LBB26_144:                             # %cond.false.477
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_146
# BB#145:                               # %cond.true.482
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	$3, -252(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-248(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-248(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	jmp	.LBB26_147
.LBB26_146:                             # %cond.false.496
                                        #   in Loop: Header=BB26_122 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-252(%rbp), %rdx
	movq	-248(%rbp), %rdi
	callq	string_char
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB26_147:                             # %cond.end.498
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	%eax, -640(%rbp)        # 4-byte Spill
.LBB26_148:                             # %cond.end.500
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB26_149:                             # %cond.end.502
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-252(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB26_151
.LBB26_150:                             # %if.else.506
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
.LBB26_151:                             # %if.end.510
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_152
.LBB26_152:                             # %do.end.511
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$38, -80(%rbp)
	jne	.LBB26_154
# BB#153:                               # %if.then.514
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -208(%rbp)
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB26_168
.LBB26_154:                             # %if.else.517
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$49, -80(%rbp)
	jl	.LBB26_161
# BB#155:                               # %land.lhs.true.520
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$57, -80(%rbp)
	jg	.LBB26_161
# BB#156:                               # %if.then.523
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	cmpl	search_regs, %eax
	jae	.LBB26_159
# BB#157:                               # %land.lhs.true.527
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	search_regs+8, %rdx
	cmpq	$0, (%rdx,%rcx,8)
	jl	.LBB26_159
# BB#158:                               # %if.then.532
                                        #   in Loop: Header=BB26_122 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	search_regs+8, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -208(%rbp)
	movl	-80(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	search_regs+16, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -216(%rbp)
	jmp	.LBB26_160
.LBB26_159:                             # %if.else.539
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
.LBB26_160:                             # %if.end.540
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_167
.LBB26_161:                             # %if.else.541
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$92, -80(%rbp)
	jne	.LBB26_163
# BB#162:                               # %if.then.544
                                        #   in Loop: Header=BB26_122 Depth=1
	movb	$1, -217(%rbp)
	jmp	.LBB26_166
.LBB26_163:                             # %if.else.545
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpl	$63, -80(%rbp)
	je	.LBB26_165
# BB#164:                               # %if.then.548
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB26_165:                             # %if.end.549
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_166
.LBB26_166:                             # %if.end.550
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_167
.LBB26_167:                             # %if.end.551
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_168
.LBB26_168:                             # %if.end.552
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_169
.LBB26_169:                             # %if.end.553
                                        #   in Loop: Header=BB26_122 Depth=1
	cmpq	$0, -208(%rbp)
	jl	.LBB26_174
# BB#170:                               # %if.then.556
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	cmpq	-168(%rbp), %rax
	je	.LBB26_172
# BB#171:                               # %if.then.560
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	-72(%rbp), %rcx
	subq	$2, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-656(%rbp), %r8         # 8-byte Reload
	callq	substring_both
	movq	%rax, -192(%rbp)
	jmp	.LBB26_173
.LBB26_172:                             # %if.else.564
                                        #   in Loop: Header=BB26_122 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)
.LBB26_173:                             # %if.end.566
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-208(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-216(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	Fsubstring
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	-672(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -184(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB26_177
.LBB26_174:                             # %if.else.573
                                        #   in Loop: Header=BB26_122 Depth=1
	testb	$1, -217(%rbp)
	je	.LBB26_176
# BB#175:                               # %if.then.575
                                        #   in Loop: Header=BB26_122 Depth=1
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	-72(%rbp), %rcx
	subq	$1, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-680(%rbp), %r8         # 8-byte Reload
	callq	substring_both
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	concat2
	movq	%rax, -184(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB26_176:                             # %if.end.580
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_177
.LBB26_177:                             # %if.end.581
                                        #   in Loop: Header=BB26_122 Depth=1
	jmp	.LBB26_122
.LBB26_178:                             # %for.end
	movq	-64(%rbp), %rax
	cmpq	-168(%rbp), %rax
	je	.LBB26_180
# BB#179:                               # %if.then.584
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	callq	substring_both
	movq	%rax, -192(%rbp)
	jmp	.LBB26_181
.LBB26_180:                             # %if.else.586
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)
.LBB26_181:                             # %if.end.588
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	concat2
	movq	%rax, -16(%rbp)
.LBB26_182:                             # %if.end.590
	cmpl	$1, -52(%rbp)
	jne	.LBB26_184
# BB#183:                               # %if.then.593
	movq	-16(%rbp), %rdi
	callq	Fupcase
	movq	%rax, -16(%rbp)
	jmp	.LBB26_187
.LBB26_184:                             # %if.else.595
	cmpl	$2, -52(%rbp)
	jne	.LBB26_186
# BB#185:                               # %if.then.598
	movq	-16(%rbp), %rdi
	callq	Fupcase_initials
	movq	%rax, -16(%rbp)
.LBB26_186:                             # %if.end.600
	jmp	.LBB26_187
.LBB26_187:                             # %if.end.601
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	concat3
	movq	%rax, -8(%rbp)
	jmp	.LBB26_317
.LBB26_188:                             # %if.end.603
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+16, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jl	.LBB26_190
# BB#189:                               # %if.then.608
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	subq	768(%rcx), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB26_194
.LBB26_190:                             # %if.else.613
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-96(%rbp), %rcx
	movq	search_regs+8, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jle	.LBB26_192
# BB#191:                               # %if.then.619
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	subq	768(%rcx), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB26_193
.LBB26_192:                             # %if.else.623
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
.LBB26_193:                             # %if.end.626
	jmp	.LBB26_194
.LBB26_194:                             # %if.end.627
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_302
# BB#195:                               # %if.then.631
	movq	-16(%rbp), %rdi
	callq	SBYTES
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -289(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	movabsq	$1152921504606846925, %rcx # imm = 0xFFFFFFFFFFFFFCD
	andb	$1, %al
	movb	%al, -290(%rbp)
	movb	$0, -291(%rbp)
	cmpq	%rcx, -264(%rbp)
	jg	.LBB26_197
# BB#196:                               # %cond.true.643
	movq	-264(%rbp), %rax
	shlq	$1, %rax
	addq	$100, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB26_198
.LBB26_197:                             # %cond.false.645
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB26_198
.LBB26_198:                             # %cond.end.646
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -272(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
.LBB26_199:                             # %for.cond.649
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-264(%rbp), %rax
	jge	.LBB26_299
# BB#200:                               # %for.body.652
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	$0, -304(%rbp)
	movq	$0, -312(%rbp)
	movq	$-1, -320(%rbp)
	testb	$1, -290(%rbp)
	je	.LBB26_218
# BB#201:                               # %if.then.654
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_202
.LBB26_202:                             # %do.body.655
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-712(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_204
# BB#203:                               # %cond.true.662
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$1, -332(%rbp)
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	jmp	.LBB26_211
.LBB26_204:                             # %cond.false.665
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_206
# BB#205:                               # %cond.true.670
                                        #   in Loop: Header=BB26_199 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -332(%rbp)
	movq	-328(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-328(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-328(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -720(%rbp)        # 4-byte Spill
	jmp	.LBB26_210
.LBB26_206:                             # %cond.false.685
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_208
# BB#207:                               # %cond.true.690
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$3, -332(%rbp)
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-328(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -724(%rbp)        # 4-byte Spill
	jmp	.LBB26_209
.LBB26_208:                             # %cond.false.704
                                        #   in Loop: Header=BB26_199 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-332(%rbp), %rdx
	movq	-328(%rbp), %rdi
	callq	string_char
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB26_209:                             # %cond.end.706
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB26_210:                             # %cond.end.708
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB26_211:                             # %cond.end.710
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-332(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
# BB#212:                               # %do.end.715
                                        #   in Loop: Header=BB26_199 Depth=1
	testb	$1, -289(%rbp)
	jne	.LBB26_217
# BB#213:                               # %if.then.717
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$4194175, -80(%rbp)     # imm = 0x3FFF7F
	jle	.LBB26_215
# BB#214:                               # %cond.true.720
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB26_216
.LBB26_215:                             # %cond.false.722
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
.LBB26_216:                             # %cond.end.724
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-728(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB26_217:                             # %if.end.726
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_226
.LBB26_218:                             # %if.else.727
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, %rsi
	callq	SREF
	movzbl	%al, %edx
	movl	%edx, -80(%rbp)
	testb	$1, -289(%rbp)
	je	.LBB26_225
# BB#219:                               # %if.then.732
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_220
	jmp	.LBB26_221
.LBB26_220:                             # %cond.true.733
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_222
	jmp	.LBB26_223
.LBB26_221:                             # %cond.false.737
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB26_223
.LBB26_222:                             # %cond.true.742
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	jmp	.LBB26_224
.LBB26_223:                             # %cond.false.743
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB26_224:                             # %cond.end.745
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-732(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB26_225:                             # %if.end.747
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_226
.LBB26_226:                             # %if.end.748
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$92, -80(%rbp)
	jne	.LBB26_270
# BB#227:                               # %if.then.751
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, -291(%rbp)
	testb	$1, -290(%rbp)
	je	.LBB26_248
# BB#228:                               # %if.then.753
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_229
.LBB26_229:                             # %do.body.754
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-744(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_231
# BB#230:                               # %cond.true.763
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$1, -348(%rbp)
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	jmp	.LBB26_238
.LBB26_231:                             # %cond.false.766
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_233
# BB#232:                               # %cond.true.771
                                        #   in Loop: Header=BB26_199 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
	movq	-344(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-344(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-344(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -752(%rbp)        # 4-byte Spill
	jmp	.LBB26_237
.LBB26_233:                             # %cond.false.786
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_235
# BB#234:                               # %cond.true.791
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$3, -348(%rbp)
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-344(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-344(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	jmp	.LBB26_236
.LBB26_235:                             # %cond.false.805
                                        #   in Loop: Header=BB26_199 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-344(%rbp), %rdi
	callq	string_char
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB26_236:                             # %cond.end.807
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-756(%rbp), %eax        # 4-byte Reload
	movl	%eax, -752(%rbp)        # 4-byte Spill
.LBB26_237:                             # %cond.end.809
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-752(%rbp), %eax        # 4-byte Reload
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB26_238:                             # %cond.end.811
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movslq	-348(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
# BB#239:                               # %do.end.816
                                        #   in Loop: Header=BB26_199 Depth=1
	testb	$1, -289(%rbp)
	jne	.LBB26_247
# BB#240:                               # %land.lhs.true.818
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_241
	jmp	.LBB26_242
.LBB26_241:                             # %cond.true.819
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_247
	jmp	.LBB26_243
.LBB26_242:                             # %cond.false.823
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB26_247
.LBB26_243:                             # %if.then.828
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$4194175, -80(%rbp)     # imm = 0x3FFF7F
	jle	.LBB26_245
# BB#244:                               # %cond.true.831
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jmp	.LBB26_246
.LBB26_245:                             # %cond.false.833
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -760(%rbp)        # 4-byte Spill
.LBB26_246:                             # %cond.end.835
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB26_247:                             # %if.end.837
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_256
.LBB26_248:                             # %if.else.838
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, %rsi
	callq	SREF
	movzbl	%al, %edx
	movl	%edx, -80(%rbp)
	testb	$1, -289(%rbp)
	je	.LBB26_255
# BB#249:                               # %if.then.843
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_250
	jmp	.LBB26_251
.LBB26_250:                             # %cond.true.844
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_252
	jmp	.LBB26_253
.LBB26_251:                             # %cond.false.848
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB26_253
.LBB26_252:                             # %cond.true.853
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
	jmp	.LBB26_254
.LBB26_253:                             # %cond.false.854
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB26_254:                             # %cond.end.856
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-764(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB26_255:                             # %if.end.858
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_256
.LBB26_256:                             # %if.end.859
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$38, -80(%rbp)
	jne	.LBB26_258
# BB#257:                               # %if.then.862
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB26_269
.LBB26_258:                             # %if.else.863
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$49, -80(%rbp)
	jl	.LBB26_264
# BB#259:                               # %land.lhs.true.866
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$57, -80(%rbp)
	jg	.LBB26_264
# BB#260:                               # %land.lhs.true.869
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	cmpl	search_regs, %eax
	jae	.LBB26_264
# BB#261:                               # %if.then.873
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	search_regs+8, %rdx
	cmpq	$1, (%rdx,%rcx,8)
	jl	.LBB26_263
# BB#262:                               # %if.then.879
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	%rcx, -320(%rbp)
.LBB26_263:                             # %if.end.882
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_268
.LBB26_264:                             # %if.else.883
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpl	$92, -80(%rbp)
	jne	.LBB26_266
# BB#265:                               # %if.then.886
                                        #   in Loop: Header=BB26_199 Depth=1
	movabsq	$.L.str.2, %rax
	movq	$1, -312(%rbp)
	movq	%rax, -304(%rbp)
	jmp	.LBB26_267
.LBB26_266:                             # %if.else.887
	movq	-272(%rbp), %rdi
	callq	xfree
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB26_267:                             # %if.end.888
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_268
.LBB26_268:                             # %if.end.889
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_269
.LBB26_269:                             # %if.end.890
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_286
.LBB26_270:                             # %if.else.891
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_271
	jmp	.LBB26_272
.LBB26_271:                             # %cond.true.892
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB26_273
	jmp	.LBB26_274
.LBB26_272:                             # %cond.false.896
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB26_274
.LBB26_273:                             # %cond.true.901
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$1, %eax
	movl	-80(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -296(%rbp)
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB26_285
.LBB26_274:                             # %cond.false.904
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_275
	jmp	.LBB26_276
.LBB26_275:                             # %cond.true.905
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB26_277
	jmp	.LBB26_278
.LBB26_276:                             # %cond.false.909
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB26_278
.LBB26_277:                             # %cond.true.914
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -296(%rbp)
	movl	-80(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -295(%rbp)
	movl	%eax, -772(%rbp)        # 4-byte Spill
	jmp	.LBB26_284
.LBB26_278:                             # %cond.false.923
                                        #   in Loop: Header=BB26_199 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_279
	jmp	.LBB26_280
.LBB26_279:                             # %cond.true.924
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-80(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB26_281
	jmp	.LBB26_282
.LBB26_280:                             # %cond.false.928
                                        #   in Loop: Header=BB26_199 Depth=1
	movslq	-80(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB26_282
.LBB26_281:                             # %cond.true.933
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	$3, %eax
	movl	-80(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -296(%rbp)
	movl	-80(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -295(%rbp)
	movl	-80(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -294(%rbp)
	movl	%eax, -776(%rbp)        # 4-byte Spill
	jmp	.LBB26_283
.LBB26_282:                             # %cond.false.947
                                        #   in Loop: Header=BB26_199 Depth=1
	leaq	-296(%rbp), %rsi
	movl	-80(%rbp), %edi
	callq	char_string
	movl	%eax, -776(%rbp)        # 4-byte Spill
.LBB26_283:                             # %cond.end.949
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-776(%rbp), %eax        # 4-byte Reload
	movl	%eax, -772(%rbp)        # 4-byte Spill
.LBB26_284:                             # %cond.end.951
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-772(%rbp), %eax        # 4-byte Reload
	movl	%eax, -768(%rbp)        # 4-byte Spill
.LBB26_285:                             # %cond.end.953
                                        #   in Loop: Header=BB26_199 Depth=1
	movl	-768(%rbp), %eax        # 4-byte Reload
	leaq	-296(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rcx, -304(%rbp)
.LBB26_286:                             # %if.end.957
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpq	$0, -320(%rbp)
	jl	.LBB26_294
# BB#287:                               # %if.then.960
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	current_buffer, %rdi
	movq	-320(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -360(%rbp)
	movq	current_buffer, %rdi
	movq	-320(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	buf_charpos_to_bytepos
	subq	-360(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-320(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB26_290
# BB#288:                               # %land.lhs.true.970
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-320(%rbp), %rcx
	movq	search_regs+16, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jge	.LBB26_290
# BB#289:                               # %if.then.976
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-320(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-360(%rbp), %rsi
	callq	move_gap_both
.LBB26_290:                             # %if.end.978
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-360(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB26_292
# BB#291:                               # %cond.true.983
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB26_293
.LBB26_292:                             # %cond.false.986
                                        #   in Loop: Header=BB26_199 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB26_293
.LBB26_293:                             # %cond.end.987
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-784(%rbp), %rax        # 8-byte Reload
	addq	-360(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -304(%rbp)
.LBB26_294:                             # %if.end.994
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-280(%rbp), %rax
	subq	-288(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jge	.LBB26_296
# BB#295:                               # %if.then.998
                                        #   in Loop: Header=BB26_199 Depth=1
	leaq	-280(%rbp), %rsi
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-272(%rbp), %rdi
	movq	-312(%rbp), %rdx
	movq	-280(%rbp), %r9
	subq	-288(%rbp), %r9
	subq	%r9, %rdx
	callq	xpalloc
	movq	%rax, -272(%rbp)
.LBB26_296:                             # %if.end.1002
                                        #   in Loop: Header=BB26_199 Depth=1
	cmpq	$0, -304(%rbp)
	je	.LBB26_298
# BB#297:                               # %if.then.1004
                                        #   in Loop: Header=BB26_199 Depth=1
	movq	-272(%rbp), %rax
	addq	-288(%rbp), %rax
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-312(%rbp), %rax
	addq	-288(%rbp), %rax
	movq	%rax, -288(%rbp)
.LBB26_298:                             # %if.end.1007
                                        #   in Loop: Header=BB26_199 Depth=1
	jmp	.LBB26_199
.LBB26_299:                             # %for.end.1008
	testb	$1, -291(%rbp)
	je	.LBB26_301
# BB#300:                               # %if.then.1010
	movq	$-1, %rsi
	movq	-272(%rbp), %rdi
	movq	-288(%rbp), %rdx
	movb	-289(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	make_specified_string
	movq	%rax, -16(%rbp)
.LBB26_301:                             # %if.end.1013
	movq	-272(%rbp), %rdi
	callq	xfree
.LBB26_302:                             # %if.end.1014
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -368(%rbp)
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -376(%rbp)
	movl	search_regs, %edx
	movl	%edx, -380(%rbp)
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	SCHARS
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-792(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-796(%rbp), %ecx        # 4-byte Reload
	movl	-796(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	replace_range
	movq	-112(%rbp), %rax
	subq	-376(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	jl	.LBB26_304
# BB#303:                               # %if.then.1025
	movq	-392(%rbp), %rax
	addq	-368(%rbp), %rax
	movq	%rax, -368(%rbp)
.LBB26_304:                             # %if.end.1027
	movq	-392(%rbp), %rax
	addq	-376(%rbp), %rax
	movq	%rax, -376(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB26_306
# BB#305:                               # %if.then.1031
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fupcase_region
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB26_309
.LBB26_306:                             # %if.else.1038
	cmpl	$2, -52(%rbp)
	jne	.LBB26_308
# BB#307:                               # %if.then.1041
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fupcase_initials_region
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB26_308:                             # %if.end.1048
	jmp	.LBB26_309
.LBB26_309:                             # %if.end.1049
	movq	-96(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB26_312
# BB#310:                               # %lor.lhs.false.1053
	movq	-96(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-376(%rbp), %rax
	jne	.LBB26_312
# BB#311:                               # %lor.lhs.false.1057
	movl	search_regs, %eax
	cmpl	-380(%rbp), %eax
	je	.LBB26_313
.LBB26_312:                             # %if.then.1060
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB26_313:                             # %if.end.1061
	cmpq	$0, -104(%rbp)
	jg	.LBB26_315
# BB#314:                               # %if.then.1064
	movq	current_buffer, %rdi
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, %rsi
	callq	temp_set_point
	jmp	.LBB26_316
.LBB26_315:                             # %if.else.1067
	movq	current_buffer, %rdi
	movq	-104(%rbp), %rsi
	callq	temp_set_point
.LBB26_316:                             # %if.end.1068
	movq	-112(%rbp), %rdi
	callq	move_if_not_intangible
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB26_317:                             # %return
	movq	-8(%rbp), %rax
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Freplace_match, .Lfunc_end26-Freplace_match
	.cfi_endproc

	.globl	Fmatch_beginning
	.align	16, 0x90
	.type	Fmatch_beginning,@function
Fmatch_beginning:                       # @Fmatch_beginning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	match_limit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fmatch_beginning, .Lfunc_end27-Fmatch_beginning
	.cfi_endproc

	.align	16, 0x90
	.type	match_limit,@function
match_limit:                            # @match_limit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB28_2
# BB#1:                                 # %cond.true
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB28_3:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB28_5
# BB#4:                                 # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	args_out_of_range
.LBB28_5:                               # %if.end
	cmpl	$0, search_regs
	ja	.LBB28_7
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB28_7:                               # %if.end.8
	movq	-32(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB28_9
# BB#8:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jge	.LBB28_10
.LBB28_9:                               # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB28_14
.LBB28_10:                              # %if.end.16
	testb	$1, -17(%rbp)
	je	.LBB28_12
# BB#11:                                # %cond.true.18
	movq	-32(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB28_13
.LBB28_12:                              # %cond.false.20
	movq	-32(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB28_13:                              # %cond.end.22
	movq	-48(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB28_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	match_limit, .Lfunc_end28-match_limit
	.cfi_endproc

	.globl	Fmatch_end
	.align	16, 0x90
	.type	Fmatch_end,@function
Fmatch_end:                             # @Fmatch_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	match_limit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fmatch_end, .Lfunc_end29-Fmatch_end
	.cfi_endproc

	.globl	Fmatch_data
	.align	16, 0x90
	.type	Fmatch_data,@function
Fmatch_data:                            # @Fmatch_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB30_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB30_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB30_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_2 Depth=1
	jmp	.LBB30_7
.LBB30_7:                               # %for.inc
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_2
.LBB30_8:                               # %for.end
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.18
	xorl	%edi, %edi
	movq	last_thing_searched, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_11
# BB#10:                                # %if.then.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB30_50
.LBB30_11:                              # %if.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	$16384, -80(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
# BB#12:                                # %do.body
	movl	search_regs, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	shrq	$3, %rdx
	shrq	$0, %rdx
	cmpq	%rdx, %rcx
	ja	.LBB30_14
# BB#13:                                # %if.then.31
	movl	search_regs(%rip), %eax
	movl	%eax, %ecx
	leal	1(%rcx,%rcx), %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	-80(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -80(%rbp)
	movl	search_regs(%rip), %eax
	movl	%eax, %ecx
	leal	1(%rcx,%rcx), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdx      # imm = 0xFFFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -56(%rbp)
	jmp	.LBB30_15
.LBB30_14:                              # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movl	search_regs, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -56(%rbp)
	movb	$1, -89(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB30_15:                              # %if.end.45
	jmp	.LBB30_16
.LBB30_16:                              # %do.end
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
.LBB30_17:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB30_30
# BB#18:                                # %for.body.50
                                        #   in Loop: Header=BB30_17 Depth=1
	movq	-64(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jl	.LBB30_27
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB30_17 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	last_thing_searched, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB30_17 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_22
.LBB30_21:                              # %if.then.60
                                        #   in Loop: Header=BB30_17 Depth=1
	movq	-104(%rbp), %rdi
	callq	make_natnum
	movq	-64(%rbp), %rdi
	shlq	$1, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-64(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	make_natnum
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi,%rcx,8)
	jmp	.LBB30_26
.LBB30_22:                              # %if.else.69
                                        #   in Loop: Header=BB30_17 Depth=1
	movq	last_thing_searched, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB30_23
	jmp	.LBB30_24
.LBB30_23:                              # %if.then.71
                                        #   in Loop: Header=BB30_17 Depth=1
	callq	Fmake_marker
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-104(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	last_thing_searched, %rdx
	movq	%rax, %rsi
	callq	Fset_marker
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Fmake_marker
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	movq	-64(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	last_thing_searched, %rdx
	movq	%rax, %rsi
	callq	Fset_marker
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB30_25
.LBB30_24:                              # %if.else.90
	callq	emacs_abort
.LBB30_25:                              # %if.end.91
                                        #   in Loop: Header=BB30_17 Depth=1
	jmp	.LBB30_26
.LBB30_26:                              # %if.end.92
                                        #   in Loop: Header=BB30_17 Depth=1
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB30_28
.LBB30_27:                              # %if.else.95
                                        #   in Loop: Header=BB30_17 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB30_28:                              # %if.end.102
                                        #   in Loop: Header=BB30_17 Depth=1
	jmp	.LBB30_29
.LBB30_29:                              # %for.inc.103
                                        #   in Loop: Header=BB30_17 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB30_17
.LBB30_30:                              # %for.end.104
	movq	last_thing_searched, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB30_31
	jmp	.LBB30_33
.LBB30_31:                              # %land.lhs.true.107
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_33
# BB#32:                                # %if.then.111
	movq	last_thing_searched, %rax
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB30_33:                              # %if.end.114
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB30_35
# BB#34:                                # %if.then.119
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Flist
	movq	%rax, -24(%rbp)
	jmp	.LBB30_45
.LBB30_35:                              # %if.else.121
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB30_36:                              # %for.cond.122
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_42
# BB#37:                                # %for.body.127
                                        #   in Loop: Header=BB30_36 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB30_39
# BB#38:                                # %if.then.130
                                        #   in Loop: Header=BB30_36 Depth=1
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	XSETCAR
	jmp	.LBB30_40
.LBB30_39:                              # %if.else.132
                                        #   in Loop: Header=BB30_36 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB30_40:                              # %if.end.134
                                        #   in Loop: Header=BB30_36 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#41:                                # %for.inc.135
                                        #   in Loop: Header=BB30_36 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_36
.LBB30_42:                              # %for.end.140
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB30_44
# BB#43:                                # %if.then.143
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Flist
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB30_44:                              # %if.end.146
	jmp	.LBB30_45
.LBB30_45:                              # %if.end.147
	jmp	.LBB30_46
.LBB30_46:                              # %do.body.148
	testb	$1, -89(%rbp)
	je	.LBB30_48
# BB#47:                                # %if.then.149
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB30_48:                              # %if.end.152
	jmp	.LBB30_49
.LBB30_49:                              # %do.end.153
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB30_50:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fmatch_data, .Lfunc_end30-Fmatch_data
	.cfi_endproc

	.globl	Fset_match_data
	.align	16, 0x90
	.type	Fset_match_data,@function
Fset_match_data:                        # @Fset_match_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	testb	$1, running_asynch_code
	je	.LBB31_2
# BB#1:                                 # %if.then
	callq	save_search_regs
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	CHECK_LIST
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, last_thing_searched
	movq	-8(%rbp), %rdi
	callq	Flength
	movl	$2, %ecx
	movl	%ecx, %edi
	sarq	$2, %rax
	cqto
	idivq	%rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edi
	cmpq	%rdi, %rax
	jle	.LBB31_10
# BB#3:                                 # %if.then.3
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	search_regs, %ecx
	movl	%ecx, %edx
	movq	%rdx, -48(%rbp)
	cmpq	-40(%rbp), %rax
	jge	.LBB31_5
# BB#4:                                 # %if.then.7
	movq	$-1, %rdi
	callq	memory_full
.LBB31_5:                               # %if.end.8
	leaq	-48(%rbp), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	search_regs+8, %rdx
	movq	-40(%rbp), %rdi
	subq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	xpalloc
	movq	%rax, search_regs+8
	movq	search_regs+16, %rax
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, search_regs+16
	movl	search_regs, %r9d
	movl	%r9d, %eax
	movq	%rax, -24(%rbp)
.LBB31_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB31_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB31_6 Depth=1
	movq	-24(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	$-1, (%rcx,%rax,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB31_6 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_6
.LBB31_9:                               # %for.end
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, search_regs
.LBB31_10:                              # %if.end.15
	movq	$0, -24(%rbp)
.LBB31_11:                              # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_67
# BB#12:                                # %for.body.20
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB31_13
	jmp	.LBB31_14
.LBB31_13:                              # %if.then.23
	movq	-32(%rbp), %rax
	movq	%rax, last_thing_searched
	jmp	.LBB31_67
.LBB31_14:                              # %if.end.24
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB31_16
# BB#15:                                # %if.then.27
	jmp	.LBB31_67
.LBB31_16:                              # %if.end.28
                                        #   in Loop: Header=BB31_11 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_18
# BB#17:                                # %if.then.32
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-24(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_65
.LBB31_18:                              # %if.else
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_24
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_24
# BB#20:                                # %if.then.42
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB31_22
# BB#21:                                # %if.then.46
                                        #   in Loop: Header=BB31_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB31_23
.LBB31_22:                              # %if.else.48
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMARKER
	movl	$5, %esi
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, last_thing_searched
.LBB31_23:                              # %if.end.52
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_24
.LBB31_24:                              # %if.end.53
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_25
.LBB31_25:                              # %do.body
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_28
# BB#26:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_28
# BB#27:                                # %if.then.62
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB31_32
.LBB31_28:                              # %if.else.65
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_31
.LBB31_30:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB31_31:                              # %cond.end
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_32
.LBB31_32:                              # %if.end.72
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_33
.LBB31_33:                              # %do.end
                                        #   in Loop: Header=BB31_11 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_37
# BB#34:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_37
# BB#35:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_37
# BB#36:                                # %if.then.85
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_37:                              # %if.end.88
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB31_38
	jmp	.LBB31_39
.LBB31_38:                              # %if.then.96
	jmp	.LBB31_67
.LBB31_39:                              # %if.end.97
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_43
# BB#40:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_43
# BB#41:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB31_43
# BB#42:                                # %if.then.113
                                        #   in Loop: Header=BB31_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -32(%rbp)
.LBB31_43:                              # %if.end.115
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_44
.LBB31_44:                              # %do.body.116
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_47
# BB#45:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_47
# BB#46:                                # %if.then.125
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB31_51
.LBB31_47:                              # %if.else.128
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_49
# BB#48:                                # %cond.true.134
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_50
.LBB31_49:                              # %cond.false.135
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB31_50:                              # %cond.end.137
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_51
.LBB31_51:                              # %if.end.138
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_52
.LBB31_52:                              # %do.end.139
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB31_54
# BB#53:                                # %cond.true.143
                                        #   in Loop: Header=BB31_11 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB31_55
	jmp	.LBB31_59
.LBB31_54:                              # %cond.false.147
                                        #   in Loop: Header=BB31_11 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rax, %rcx
	jg	.LBB31_59
.LBB31_55:                              # %land.lhs.true.151
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB31_57
# BB#56:                                # %cond.true.155
                                        #   in Loop: Header=BB31_11 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB31_58
	jmp	.LBB31_59
.LBB31_57:                              # %cond.false.159
                                        #   in Loop: Header=BB31_11 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rax, %rcx
	jg	.LBB31_59
.LBB31_58:                              # %if.then.163
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	search_regs+8, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	search_regs+16, %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB31_60
.LBB31_59:                              # %if.else.168
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-24(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	$-1, (%rcx,%rax,8)
.LBB31_60:                              # %if.end.170
                                        #   in Loop: Header=BB31_11 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_64
# BB#61:                                # %land.lhs.true.174
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_64
# BB#62:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_64
# BB#63:                                # %if.then.183
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-64(%rbp), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_64:                              # %if.end.186
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_65
.LBB31_65:                              # %if.end.187
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
# BB#66:                                # %for.inc.191
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_11
.LBB31_67:                              # %for.end.193
	jmp	.LBB31_68
.LBB31_68:                              # %for.cond.194
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB31_71
# BB#69:                                # %for.body.198
                                        #   in Loop: Header=BB31_68 Depth=1
	movq	-24(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	$-1, (%rcx,%rax,8)
# BB#70:                                # %for.inc.200
                                        #   in Loop: Header=BB31_68 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_68
.LBB31_71:                              # %for.end.202
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fset_match_data, .Lfunc_end31-Fset_match_data
	.cfi_endproc

	.align	16, 0x90
	.type	save_search_regs,@function
save_search_regs:                       # @save_search_regs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	testb	$1, search_regs_saved
	jne	.LBB32_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	search_regs, %eax
	movl	%eax, saved_search_regs
	movq	search_regs+8, %rcx
	movq	%rcx, saved_search_regs+8
	movq	search_regs+16, %rcx
	movq	%rcx, saved_search_regs+16
	movq	last_thing_searched, %rcx
	movq	%rcx, saved_last_thing_searched
	callq	builtin_lisp_symbol
	movq	%rax, last_thing_searched
	movl	$0, search_regs
	movq	$0, search_regs+8
	movq	$0, search_regs+16
	movb	$1, search_regs_saved
.LBB32_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end32:
	.size	save_search_regs, .Lfunc_end32-save_search_regs
	.cfi_endproc

	.globl	restore_search_regs
	.align	16, 0x90
	.type	restore_search_regs,@function
restore_search_regs:                    # @restore_search_regs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	testb	$1, search_regs_saved
	je	.LBB33_4
# BB#1:                                 # %if.then
	cmpl	$0, search_regs
	jbe	.LBB33_3
# BB#2:                                 # %if.then.1
	movq	search_regs+8, %rax
	movq	%rax, %rdi
	callq	xfree
	movq	search_regs+16, %rax
	movq	%rax, %rdi
	callq	xfree
.LBB33_3:                               # %if.end
	xorl	%edi, %edi
	movl	saved_search_regs, %eax
	movl	%eax, search_regs
	movq	saved_search_regs+8, %rcx
	movq	%rcx, search_regs+8
	movq	saved_search_regs+16, %rcx
	movq	%rcx, search_regs+16
	movq	saved_last_thing_searched, %rcx
	movq	%rcx, last_thing_searched
	callq	builtin_lisp_symbol
	movq	%rax, saved_last_thing_searched
	movb	$0, search_regs_saved
.LBB33_4:                               # %if.end.2
	popq	%rbp
	retq
.Lfunc_end33:
	.size	restore_search_regs, .Lfunc_end33-restore_search_regs
	.cfi_endproc

	.globl	update_search_regs
	.align	16, 0x90
	.type	update_search_regs,@function
update_search_regs:                     # @update_search_regs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	subq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB34_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB34_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB34_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	search_regs+8, %rdx
	addq	(%rdx,%rcx,8), %rax
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB34_7
.LBB34_4:                               # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-8(%rbp), %rax
	jle	.LBB34_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	search_regs+8, %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB34_6:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_7
.LBB34_7:                               # %if.end.10
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB34_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	search_regs+16, %rdx
	addq	(%rdx,%rcx,8), %rax
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB34_12
.LBB34_9:                               # %if.else.17
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-8(%rbp), %rax
	jle	.LBB34_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	search_regs+16, %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB34_11:                              # %if.end.23
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_12
.LBB34_12:                              # %if.end.24
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_13
.LBB34_13:                              # %for.inc
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_1
.LBB34_14:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end34:
	.size	update_search_regs, .Lfunc_end34-update_search_regs
	.cfi_endproc

	.globl	record_unwind_save_match_data
	.align	16, 0x90
	.type	record_unwind_save_match_data,@function
record_unwind_save_match_data:          # @record_unwind_save_match_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fmatch_data
	movabsq	$unwind_set_match_data, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	record_unwind_save_match_data, .Lfunc_end35-record_unwind_save_match_data
	.cfi_endproc

	.align	16, 0x90
	.type	unwind_set_match_data,@function
unwind_set_match_data:                  # @unwind_set_match_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_match_data
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	unwind_set_match_data, .Lfunc_end36-unwind_set_match_data
	.cfi_endproc

	.globl	Fregexp_quote
	.align	16, 0x90
	.type	Fregexp_quote,@function
Fregexp_quote:                          # @Fregexp_quote
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	-56(%rbp), %rdi
	shrq	$0, %rdi
	shrq	$1, %rdi
	cmpq	%rdi, %rax
	ja	.LBB37_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	%rax, %rax
	movq	-56(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	leaq	15(%rax,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -40(%rbp)
	jmp	.LBB37_4
.LBB37_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -40(%rbp)
	movb	$1, -65(%rbp)
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB37_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB37_18
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$91, %ecx
	je	.LBB37_15
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB37_15
# BB#9:                                 # %lor.lhs.false.16
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB37_15
# BB#10:                                # %lor.lhs.false.20
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB37_15
# BB#11:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB37_15
# BB#12:                                # %lor.lhs.false.28
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB37_15
# BB#13:                                # %lor.lhs.false.32
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB37_15
# BB#14:                                # %lor.lhs.false.36
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB37_16
.LBB37_15:                              # %if.then.40
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$92, (%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB37_16:                              # %if.end.41
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB37_6
.LBB37_18:                              # %for.end
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SCHARS
	addq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rcx
	subq	%rcx, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %edx
	andl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	make_specified_string
	movq	%rax, -80(%rbp)
# BB#19:                                # %do.body.47
	testb	$1, -65(%rbp)
	je	.LBB37_21
# BB#20:                                # %if.then.48
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB37_21:                              # %if.end.51
	jmp	.LBB37_22
.LBB37_22:                              # %do.end.52
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fregexp_quote, .Lfunc_end37-Fregexp_quote
	.cfi_endproc

	.globl	Fnewline_cache_check
	.align	16, 0x90
	.type	Fnewline_cache_check,@function
Fnewline_cache_check:                   # @Fnewline_cache_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_3
.LBB38_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -32(%rbp)
.LBB38_3:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB38_5
# BB#4:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB38_5:                               # %if.end.4
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_7
# BB#6:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 912(%rax)
	jne	.LBB38_8
.LBB38_7:                               # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_39
.LBB38_8:                               # %if.end.10
	cmpq	$0, -32(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal_1
.LBB38_10:                              # %if.end.13
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	leaq	-40(%rbp), %r9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movq	current_buffer, %rdx
	movq	752(%rdx), %rdi
	movq	current_buffer, %rdx
	movq	760(%rdx), %rsi
	movq	current_buffer, %rdx
	movq	768(%rdx), %rdx
	movq	current_buffer, %r10
	movq	776(%r10), %r10
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	find_newline
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	subq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	make_uninit_vector
	movq	%rax, -64(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB38_23
# BB#11:                                # %if.then.17
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
.LBB38_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB38_18
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB38_12 Depth=1
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movl	$1, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-40(%rbp), %r9
	movl	$1, %r10d
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%r10d, -164(%rbp)       # 4-byte Spill
	callq	find_newline
	movq	%rax, -96(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_15
# BB#14:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB38_12 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB38_16
.LBB38_15:                              # %if.then.26
	jmp	.LBB38_18
.LBB38_16:                              # %if.end.27
                                        #   in Loop: Header=BB38_12 Depth=1
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB38_12 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB38_12
.LBB38_18:                              # %for.end
	jmp	.LBB38_19
.LBB38_19:                              # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB38_22
# BB#20:                                # %for.body.31
                                        #   in Loop: Header=BB38_19 Depth=1
	movq	$-2, %rdx
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	ASET
# BB#21:                                # %for.inc.32
                                        #   in Loop: Header=BB38_19 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB38_19
.LBB38_22:                              # %for.end.34
	jmp	.LBB38_23
.LBB38_23:                              # %if.end.35
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	leaq	-40(%rbp), %r9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movq	current_buffer, %rdx
	movq	752(%rdx), %rdi
	movq	current_buffer, %rdx
	movq	760(%rdx), %rsi
	movq	current_buffer, %rdx
	movq	768(%rdx), %rdx
	movq	current_buffer, %r10
	movq	776(%r10), %r10
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	find_newline1
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	subq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	make_uninit_vector
	movq	%rax, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB38_36
# BB#24:                                # %if.then.44
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
.LBB38_25:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB38_31
# BB#26:                                # %for.body.49
                                        #   in Loop: Header=BB38_25 Depth=1
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	$-1, %rcx
	movl	$1, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-40(%rbp), %r9
	movl	$1, %r10d
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	find_newline1
	movq	%rax, -96(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_28
# BB#27:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB38_25 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB38_29
.LBB38_28:                              # %if.then.56
	jmp	.LBB38_31
.LBB38_29:                              # %if.end.57
                                        #   in Loop: Header=BB38_25 Depth=1
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#30:                                # %for.inc.61
                                        #   in Loop: Header=BB38_25 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB38_25
.LBB38_31:                              # %for.end.63
	jmp	.LBB38_32
.LBB38_32:                              # %for.cond.64
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB38_35
# BB#33:                                # %for.body.66
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	$-2, %rdx
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	ASET
# BB#34:                                # %for.inc.67
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB38_32
.LBB38_35:                              # %for.end.69
	jmp	.LBB38_36
.LBB38_36:                              # %if.end.70
	movl	$2, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	ASET
	cmpq	$0, -32(%rbp)
	je	.LBB38_38
# BB#37:                                # %if.then.73
	movq	-32(%rbp), %rdi
	callq	set_buffer_internal_1
.LBB38_38:                              # %if.end.74
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB38_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fnewline_cache_check, .Lfunc_end38-Fnewline_cache_check
	.cfi_endproc

	.align	16, 0x90
	.type	find_newline1,@function
find_newline1:                          # @find_newline1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movb	24(%rbp), %al
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB39_4
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then.1
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB39_3:                               # %if.end
	jmp	.LBB39_7
.LBB39_4:                               # %if.else
	cmpq	$0, -32(%rbp)
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB39_6:                               # %if.end.4
	jmp	.LBB39_7
.LBB39_7:                               # %if.end.5
	cmpq	$-1, -40(%rbp)
	jne	.LBB39_9
# BB#8:                                 # %if.then.7
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
.LBB39_9:                               # %if.end.8
	cmpq	$0, -56(%rbp)
	je	.LBB39_11
# BB#10:                                # %if.then.10
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB39_11:                              # %if.end.11
	movb	-65(%rbp), %al
	andb	$1, %al
	movb	%al, immediate_quit
	cmpq	$0, -48(%rbp)
	jle	.LBB39_41
# BB#12:                                # %if.then.15
	jmp	.LBB39_13
.LBB39_13:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_27 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB39_40
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	.LBB39_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB39_16:                              # %if.end.20
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB39_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB39_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB39_20
.LBB39_19:                              # %cond.false
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB39_20:                              # %cond.end
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB39_22
# BB#21:                                # %cond.true.30
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_23
.LBB39_22:                              # %cond.false.31
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB39_23:                              # %cond.end.32
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_25
# BB#24:                                # %cond.true.37
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB39_26
.LBB39_25:                              # %cond.false.39
                                        #   in Loop: Header=BB39_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB39_26
.LBB39_26:                              # %cond.end.40
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB39_27:                              # %for.cond
                                        #   Parent Loop BB39_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -120(%rbp)
	jge	.LBB39_39
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB39_27 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	addq	-120(%rbp), %rdx
	subq	-120(%rbp), %rcx
	movl	$10, %esi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memchr
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB39_30
# BB#29:                                # %cond.true.52
                                        #   in Loop: Header=BB39_27 Depth=2
	movq	-136(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB39_31
.LBB39_30:                              # %cond.false.53
                                        #   in Loop: Header=BB39_27 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB39_31
.LBB39_31:                              # %cond.end.54
                                        #   in Loop: Header=BB39_27 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB39_33
# BB#32:                                # %if.then.57
                                        #   in Loop: Header=BB39_13 Depth=1
	jmp	.LBB39_39
.LBB39_33:                              # %if.end.58
                                        #   in Loop: Header=BB39_27 Depth=2
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB39_37
# BB#34:                                # %if.then.60
	movb	$0, immediate_quit
	cmpq	$0, -64(%rbp)
	je	.LBB39_36
# BB#35:                                # %if.then.62
	movq	-104(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB39_36:                              # %if.end.64
	movq	current_buffer, %rdi
	movq	-104(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -8(%rbp)
	jmp	.LBB39_49
.LBB39_37:                              # %if.end.67
                                        #   in Loop: Header=BB39_27 Depth=2
	jmp	.LBB39_38
.LBB39_38:                              # %for.inc
                                        #   in Loop: Header=BB39_27 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB39_27
.LBB39_39:                              # %for.end
                                        #   in Loop: Header=BB39_13 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -16(%rbp)
	jmp	.LBB39_13
.LBB39_40:                              # %while.end
	jmp	.LBB39_41
.LBB39_41:                              # %if.end.69
	movb	$0, immediate_quit
	cmpq	$0, -56(%rbp)
	je	.LBB39_43
# BB#42:                                # %if.then.71
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB39_43:                              # %if.end.72
	cmpq	$0, -64(%rbp)
	je	.LBB39_48
# BB#44:                                # %if.then.74
	cmpq	$-1, -24(%rbp)
	jne	.LBB39_46
# BB#45:                                # %cond.true.76
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB39_47
.LBB39_46:                              # %cond.false.78
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB39_47:                              # %cond.end.79
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB39_48:                              # %if.end.81
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	find_newline1, .Lfunc_end39-find_newline1
	.cfi_endproc

	.globl	syms_of_search
	.align	16, 0x90
	.type	syms_of_search,@function
syms_of_search:                         # @syms_of_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$0, -4(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$20, -4(%rbp)
	jge	.LBB40_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$100, %eax
	movl	%eax, %edi
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rcx
	movq	$100, 40(%rcx)
	callq	xmalloc
	xorl	%edi, %edi
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rax, 32(%rsi)
	movslq	-4(%rbp), %rax
	imulq	$360, %rax, %rax        # imm = 0x168
	movq	%rcx, %rdx
	addq	%rax, %rdx
	addq	$96, %rdx
	movslq	-4(%rbp), %rax
	imulq	$360, %rax, %rax        # imm = 0x168
	addq	%rax, %rcx
	movq	%rdx, 64(%rcx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	callq	builtin_lisp_symbol
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rax, 24(%rsi)
	movslq	-4(%rbp), %rax
	imulq	$360, %rax, %rax        # imm = 0x168
	addq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	staticpro
	movabsq	$searchbufs, %rax
	movslq	-4(%rbp), %rcx
	imulq	$360, %rcx, %rcx        # imm = 0x168
	addq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	staticpro
	movabsq	$searchbufs, %rax
	movslq	-4(%rbp), %rcx
	imulq	$360, %rcx, %rcx        # imm = 0x168
	addq	%rcx, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	staticpro
	cmpl	$19, -4(%rbp)
	jne	.LBB40_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB40_5
.LBB40_4:                               # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	movabsq	$searchbufs, %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB40_5:                               # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movabsq	$searchbufs, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$360, %rdx, %rdx        # imm = 0x168
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB40_1
.LBB40_7:                               # %for.end
	movl	$839, %edi              # imm = 0x347
	movabsq	$searchbufs, %rax
	movq	%rax, searchbuf_head
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$839, %edi              # imm = 0x347
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	listn
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$839, %edi              # imm = 0x347
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.4, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$572, %edi              # imm = 0x23C
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$572, %edi              # imm = 0x23C
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	listn
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$572, %edi              # imm = 0x23C
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.5, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$last_thing_searched, %rdi
	movq	%rax, last_thing_searched
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$saved_last_thing_searched, %rdi
	movq	%rax, saved_last_thing_searched
	callq	staticpro
# BB#8:                                 # %do.body
	movabsq	$syms_of_search.o_fwd, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$2096, %rax             # imm = 0x830
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#9:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2096
# BB#10:                                # %do.body.56
	movabsq	$syms_of_search.o_fwd.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$globals, %rax
	addq	$1056, %rax             # imm = 0x420
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#11:                                # %do.end.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Slooking_at, %rcx
	movq	%rax, globals+1056
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sposix_looking_at, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_match, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sposix_string_match, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssearch_forward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssearch_backward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sre_search_forward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sre_search_backward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sposix_search_forward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sposix_search_backward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sreplace_match, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smatch_beginning, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smatch_end, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smatch_data, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_match_data, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sregexp_quote, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snewline_cache_check, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	syms_of_search, .Lfunc_end40-syms_of_search
	.cfi_endproc

	.align	16, 0x90
	.type	matcher_overflow,@function
matcher_overflow:                       # @matcher_overflow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end41:
	.size	matcher_overflow, .Lfunc_end41-matcher_overflow
	.cfi_endproc

	.align	16, 0x90
	.type	search_buffer,@function
search_buffer:                          # @search_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$808, %rsp              # imm = 0x328
.Ltmp131:
	.cfi_offset %rbx, -24
	movb	40(%rbp), %al
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movl	16(%rbp), %ebx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	%ebx, -68(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	andb	$1, %al
	movb	%al, -89(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -112(%rbp)
	testb	$1, running_asynch_code
	je	.LBB42_2
# BB#1:                                 # %if.then
	callq	save_search_regs
.LBB42_2:                               # %if.end
	cmpq	$0, -104(%rbp)
	je	.LBB42_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$0, -64(%rbp)
	jne	.LBB42_5
.LBB42_4:                               # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	set_search_regs
	movq	-32(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	jmp	.LBB42_210
.LBB42_5:                               # %if.end.4
	cmpl	$0, -68(%rbp)
	je	.LBB42_58
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	trivial_regexp_p
	testb	$1, %al
	jne	.LBB42_7
	jmp	.LBB42_8
.LBB42_7:                               # %land.lhs.true.7
	xorl	%edi, %edi
	movq	globals+2096, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_58
.LBB42_8:                               # %if.then.10
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	globals+1056, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movabsq	$search_regs_1, %rcx
	movabsq	$search_regs, %rdx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	movb	-89(%rbp), %r8b
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movb	%r8b, -425(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movb	-425(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %edi
	andl	$1, %edi
	movzbl	%r8b, %r10d
	andl	$1, %r10d
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	%edi, -432(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movl	-432(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, %r8d
	callq	compile_pattern
	movq	%rax, -160(%rbp)
	movb	$1, immediate_quit
# BB#9:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_12
# BB#10:                                # %land.lhs.true.19
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_12
# BB#11:                                # %if.then.22
	callq	process_quit_flag
	jmp	.LBB42_15
.LBB42_12:                              # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB42_14
# BB#13:                                # %if.then.24
	callq	process_pending_signals
.LBB42_14:                              # %if.end.25
	jmp	.LBB42_15
.LBB42_15:                              # %if.end.26
	jmp	.LBB42_16
.LBB42_16:                              # %do.end
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB42_18
# BB#17:                                # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB42_19
.LBB42_18:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB42_19
.LBB42_19:                              # %cond.end
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -128(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -144(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	24(%rcx), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jge	.LBB42_21
# BB#20:                                # %if.then.49
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -144(%rbp)
.LBB42_21:                              # %if.end.53
	cmpq	$0, -152(%rbp)
	jge	.LBB42_23
# BB#22:                                # %if.then.55
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -152(%rbp)
.LBB42_23:                              # %if.end.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, re_match_object
.LBB42_24:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_30 Depth 2
	cmpq	$0, -64(%rbp)
	jge	.LBB42_40
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB42_24 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-152(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	current_buffer, %r10
	subq	760(%r10), %r9
	movq	-56(%rbp), %r10
	subq	-40(%rbp), %r10
	movq	globals+1056, %r11
	movq	%r11, -464(%rbp)        # 8-byte Spill
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	movq	%r8, -504(%rbp)         # 8-byte Spill
	movq	%r9, -512(%rbp)         # 8-byte Spill
	movq	%r10, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$search_regs_1, %rcx
	movabsq	$search_regs, %rdx
	movq	-464(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	-40(%rbp), %rax
	movq	current_buffer, %rdx
	subq	760(%rdx), %rax
	subq	$32, %rsp
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	-488(%rbp), %rdx        # 8-byte Reload
	movq	-496(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-504(%rbp), %r8         # 8-byte Reload
	movq	-512(%rbp), %r9         # 8-byte Reload
	movq	-520(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-528(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	re_search_2
	addq	$32, %rsp
	movq	%rax, -168(%rbp)
	cmpq	$-2, -168(%rbp)
	jne	.LBB42_27
# BB#26:                                # %if.then.72
	callq	matcher_overflow
.LBB42_27:                              # %if.end.73
                                        #   in Loop: Header=BB42_24 Depth=1
	cmpq	$0, -168(%rbp)
	jl	.LBB42_38
# BB#28:                                # %if.then.75
                                        #   in Loop: Header=BB42_24 Depth=1
	xorl	%edi, %edi
	movq	globals+1056, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_36
# BB#29:                                # %if.then.78
                                        #   in Loop: Header=BB42_24 Depth=1
	movq	search_regs+8, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -120(%rbp)
.LBB42_30:                              # %for.cond
                                        #   Parent Loop BB42_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB42_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB42_30 Depth=2
	movq	-120(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jl	.LBB42_33
# BB#32:                                # %if.then.86
                                        #   in Loop: Header=BB42_30 Depth=2
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-120(%rbp), %rcx
	movq	search_regs+8, %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-120(%rbp), %rcx
	movq	search_regs+16, %rsi
	movq	%rax, (%rsi,%rcx,8)
.LBB42_33:                              # %if.end.97
                                        #   in Loop: Header=BB42_30 Depth=2
	jmp	.LBB42_34
.LBB42_34:                              # %for.inc
                                        #   in Loop: Header=BB42_30 Depth=2
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB42_30
.LBB42_35:                              # %for.end
                                        #   in Loop: Header=BB42_24 Depth=1
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, last_thing_searched
	movq	search_regs+8, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB42_37
.LBB42_36:                              # %if.else.100
                                        #   in Loop: Header=BB42_24 Depth=1
	movq	search_regs_1+8, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rdi
	movq	search_regs_1+8, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -32(%rbp)
.LBB42_37:                              # %if.end.108
                                        #   in Loop: Header=BB42_24 Depth=1
	jmp	.LBB42_39
.LBB42_38:                              # %if.else.109
	movb	$0, immediate_quit
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB42_210
.LBB42_39:                              # %if.end.110
                                        #   in Loop: Header=BB42_24 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB42_24
.LBB42_40:                              # %while.end
	jmp	.LBB42_41
.LBB42_41:                              # %while.cond.112
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_47 Depth 2
	cmpq	$0, -64(%rbp)
	jle	.LBB42_57
# BB#42:                                # %while.body.115
                                        #   in Loop: Header=BB42_41 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-152(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	current_buffer, %r10
	subq	760(%r10), %r9
	movq	-56(%rbp), %r10
	subq	-40(%rbp), %r10
	movq	globals+1056, %r11
	movq	%r11, -544(%rbp)        # 8-byte Spill
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%r8, -584(%rbp)         # 8-byte Spill
	movq	%r9, -592(%rbp)         # 8-byte Spill
	movq	%r10, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$search_regs_1, %rcx
	movabsq	$search_regs, %rdx
	movq	-544(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	subq	760(%rdx), %rax
	subq	$32, %rsp
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	-568(%rbp), %rdx        # 8-byte Reload
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-584(%rbp), %r8         # 8-byte Reload
	movq	-592(%rbp), %r9         # 8-byte Reload
	movq	-600(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-608(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	re_search_2
	addq	$32, %rsp
	movq	%rax, -176(%rbp)
	cmpq	$-2, -176(%rbp)
	jne	.LBB42_44
# BB#43:                                # %if.then.129
	callq	matcher_overflow
.LBB42_44:                              # %if.end.130
                                        #   in Loop: Header=BB42_41 Depth=1
	cmpq	$0, -176(%rbp)
	jl	.LBB42_55
# BB#45:                                # %if.then.133
                                        #   in Loop: Header=BB42_41 Depth=1
	xorl	%edi, %edi
	movq	globals+1056, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_53
# BB#46:                                # %if.then.137
                                        #   in Loop: Header=BB42_41 Depth=1
	movq	search_regs+16, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -120(%rbp)
.LBB42_47:                              # %for.cond.141
                                        #   Parent Loop BB42_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB42_52
# BB#48:                                # %for.body.145
                                        #   in Loop: Header=BB42_47 Depth=2
	movq	-120(%rbp), %rax
	movq	search_regs+8, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jl	.LBB42_50
# BB#49:                                # %if.then.149
                                        #   in Loop: Header=BB42_47 Depth=2
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-120(%rbp), %rcx
	movq	search_regs+8, %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	current_buffer, %rdi
	movq	-120(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	-120(%rbp), %rcx
	movq	search_regs+16, %rsi
	movq	%rax, (%rsi,%rcx,8)
.LBB42_50:                              # %if.end.160
                                        #   in Loop: Header=BB42_47 Depth=2
	jmp	.LBB42_51
.LBB42_51:                              # %for.inc.161
                                        #   in Loop: Header=BB42_47 Depth=2
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB42_47
.LBB42_52:                              # %for.end.163
                                        #   in Loop: Header=BB42_41 Depth=1
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, last_thing_searched
	movq	search_regs+16, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB42_54
.LBB42_53:                              # %if.else.166
                                        #   in Loop: Header=BB42_41 Depth=1
	movq	search_regs_1+16, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rdi
	movq	search_regs_1+16, %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -32(%rbp)
.LBB42_54:                              # %if.end.174
                                        #   in Loop: Header=BB42_41 Depth=1
	jmp	.LBB42_56
.LBB42_55:                              # %if.else.175
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, immediate_quit
	subq	-64(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB42_210
.LBB42_56:                              # %if.end.177
                                        #   in Loop: Header=BB42_41 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB42_41
.LBB42_57:                              # %while.end.178
	movb	$0, immediate_quit
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB42_210
.LBB42_58:                              # %if.else.179
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -217(%rbp)
	movl	$-1, -236(%rbp)
	movb	$1, -237(%rbp)
	movq	$16384, -248(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -256(%rbp)
	movb	$0, -257(%rbp)
	movb	-217(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	-24(%rbp), %rax
	movl	%edi, -628(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %esi
	movl	-628(%rbp), %r8d        # 4-byte Reload
	cmpl	%esi, %r8d
	jne	.LBB42_60
# BB#59:                                # %if.then.193
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -208(%rbp)
	jmp	.LBB42_70
.LBB42_60:                              # %if.else.197
	testb	$1, -217(%rbp)
	je	.LBB42_65
# BB#61:                                # %if.then.199
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	$1, %rax
	cmpq	-248(%rbp), %rax
	jg	.LBB42_63
# BB#62:                                # %cond.true.206
	movq	-208(%rbp), %rax
	incq	%rax
	movq	-248(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -248(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB42_64
.LBB42_63:                              # %cond.false.210
	movb	$1, -257(%rbp)
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB42_64:                              # %cond.end.213
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-184(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_text
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB42_69
.LBB42_65:                              # %if.else.218
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	cmpq	-248(%rbp), %rax
	jg	.LBB42_67
# BB#66:                                # %cond.true.224
	movq	-200(%rbp), %rax
	incq	%rax
	movq	-248(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -248(%rbp)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB42_68
.LBB42_67:                              # %cond.false.228
	movb	$1, -257(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB42_68:                              # %cond.end.231
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-184(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	-688(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_text
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB42_69:                              # %if.end.236
	jmp	.LBB42_70
.LBB42_70:                              # %if.end.237
	movq	-200(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
# BB#71:                                # %do.body.238
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	-248(%rbp), %rsi
	shrq	$0, %rsi
	movq	%rsi, %rax
	xorl	%edi, %edi
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	movl	%edi, %edx
	divq	%rcx
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB42_73
# BB#72:                                # %if.then.242
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	movq	-248(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -248(%rbp)
	movq	-104(%rbp), %rax
	leaq	15(%rax,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -216(%rbp)
	jmp	.LBB42_74
.LBB42_73:                              # %if.else.245
	movl	$5, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -216(%rbp)
	movb	$1, -257(%rbp)
	movq	-216(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB42_74:                              # %if.end.247
	jmp	.LBB42_75
.LBB42_75:                              # %do.end.248
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -232(%rbp)
	testb	$1, -217(%rbp)
	je	.LBB42_165
# BB#76:                                # %if.then.250
	jmp	.LBB42_77
.LBB42_77:                              # %while.cond.251
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_126 Depth 2
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, %rax
	jl	.LBB42_162
# BB#78:                                # %while.body.255
                                        #   in Loop: Header=BB42_77 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB42_81
# BB#79:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB42_81
# BB#80:                                # %if.then.261
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
.LBB42_81:                              # %if.end.265
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_83
# BB#82:                                # %cond.true.269
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$1, -288(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	jmp	.LBB42_90
.LBB42_83:                              # %cond.false.272
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_85
# BB#84:                                # %cond.true.277
                                        #   in Loop: Header=BB42_77 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -288(%rbp)
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-232(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -712(%rbp)        # 4-byte Spill
	jmp	.LBB42_89
.LBB42_85:                              # %cond.false.290
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_87
# BB#86:                                # %cond.true.295
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$3, -288(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-232(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-232(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	jmp	.LBB42_88
.LBB42_87:                              # %cond.false.309
                                        #   in Loop: Header=BB42_77 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-288(%rbp), %rdx
	movq	-232(%rbp), %rdi
	callq	string_char
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB42_88:                              # %cond.end.311
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB42_89:                              # %cond.end.313
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB42_90:                              # %cond.end.315
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-708(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -276(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_92
# BB#91:                                # %if.then.320
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-288(%rbp), %ecx
	movl	%ecx, -292(%rbp)
	jmp	.LBB42_161
.LBB42_92:                              # %if.else.321
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_93
.LBB42_93:                              # %do.body.322
                                        #   in Loop: Header=BB42_77 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_98
# BB#94:                                # %if.then.326
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-80(%rbp), %rdi
	movslq	-276(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_96
# BB#95:                                # %if.then.336
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-304(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -280(%rbp)
	jmp	.LBB42_97
.LBB42_96:                              # %if.else.338
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB42_97:                              # %if.end.339
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_99
.LBB42_98:                              # %if.else.340
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB42_99:                              # %if.end.341
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_100
.LBB42_100:                             # %do.end.342
                                        #   in Loop: Header=BB42_77 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB42_101
	jmp	.LBB42_102
.LBB42_101:                             # %cond.true.343
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-280(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB42_103
	jmp	.LBB42_104
.LBB42_102:                             # %cond.false.347
                                        #   in Loop: Header=BB42_77 Depth=1
	movslq	-280(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB42_104
.LBB42_103:                             # %cond.true.352
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$1, %eax
	movl	-280(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -262(%rbp)
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB42_115
.LBB42_104:                             # %cond.false.355
                                        #   in Loop: Header=BB42_77 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB42_105
	jmp	.LBB42_106
.LBB42_105:                             # %cond.true.356
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-280(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB42_107
	jmp	.LBB42_108
.LBB42_106:                             # %cond.false.360
                                        #   in Loop: Header=BB42_77 Depth=1
	movslq	-280(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB42_108
.LBB42_107:                             # %cond.true.365
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$2, %eax
	movl	-280(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -262(%rbp)
	movl	-280(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -261(%rbp)
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB42_114
.LBB42_108:                             # %cond.false.374
                                        #   in Loop: Header=BB42_77 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB42_109
	jmp	.LBB42_110
.LBB42_109:                             # %cond.true.375
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-280(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB42_111
	jmp	.LBB42_112
.LBB42_110:                             # %cond.false.379
                                        #   in Loop: Header=BB42_77 Depth=1
	movslq	-280(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB42_112
.LBB42_111:                             # %cond.true.384
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$3, %eax
	movl	-280(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -262(%rbp)
	movl	-280(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -261(%rbp)
	movl	-280(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -260(%rbp)
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB42_113
.LBB42_112:                             # %cond.false.398
                                        #   in Loop: Header=BB42_77 Depth=1
	leaq	-262(%rbp), %rsi
	movl	-280(%rbp), %edi
	callq	char_string
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB42_113:                             # %cond.end.400
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	%eax, -744(%rbp)        # 4-byte Spill
.LBB42_114:                             # %cond.end.402
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-744(%rbp), %eax        # 4-byte Reload
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB42_115:                             # %cond.end.404
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-740(%rbp), %eax        # 4-byte Reload
	leaq	-262(%rbp), %rcx
	movl	%eax, -292(%rbp)
	movq	%rcx, -272(%rbp)
# BB#116:                               # %do.body.407
                                        #   in Loop: Header=BB42_77 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_121
# BB#117:                               # %if.then.411
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-88(%rbp), %rdi
	movslq	-276(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_119
# BB#118:                               # %if.then.422
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-312(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	jmp	.LBB42_120
.LBB42_119:                             # %if.else.425
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB42_120:                             # %if.end.426
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_122
.LBB42_121:                             # %if.else.427
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB42_122:                             # %if.end.428
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_123
.LBB42_123:                             # %do.end.429
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	-276(%rbp), %eax
	cmpl	-284(%rbp), %eax
	je	.LBB42_160
# BB#124:                               # %land.lhs.true.432
                                        #   in Loop: Header=BB42_77 Depth=1
	testb	$1, -237(%rbp)
	je	.LBB42_160
# BB#125:                               # %if.then.435
                                        #   in Loop: Header=BB42_77 Depth=1
	movl	$-1, -316(%rbp)
.LBB42_126:                             # %while.cond.436
                                        #   Parent Loop BB42_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, -237(%rbp)
	je	.LBB42_159
# BB#127:                               # %while.body.438
                                        #   in Loop: Header=BB42_126 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB42_128
	jmp	.LBB42_129
.LBB42_128:                             # %cond.true.439
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-284(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB42_130
	jmp	.LBB42_134
.LBB42_129:                             # %cond.false.443
                                        #   in Loop: Header=BB42_126 Depth=2
	movslq	-284(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB42_134
.LBB42_130:                             # %if.then.448
                                        #   in Loop: Header=BB42_126 Depth=2
	cmpl	$0, -316(%rbp)
	jle	.LBB42_132
# BB#131:                               # %if.then.451
                                        #   in Loop: Header=BB42_126 Depth=2
	movb	$0, -237(%rbp)
	jmp	.LBB42_133
.LBB42_132:                             # %if.else.452
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	$0, -316(%rbp)
.LBB42_133:                             # %if.end.453
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_148
.LBB42_134:                             # %if.else.454
                                        #   in Loop: Header=BB42_126 Depth=2
	cmpl	$4194175, -284(%rbp)    # imm = 0x3FFF7F
	jle	.LBB42_136
# BB#135:                               # %if.then.457
                                        #   in Loop: Header=BB42_126 Depth=2
	movb	$0, -237(%rbp)
	jmp	.LBB42_147
.LBB42_136:                             # %if.else.458
                                        #   in Loop: Header=BB42_126 Depth=2
	cmpl	$0, -316(%rbp)
	jge	.LBB42_143
# BB#137:                               # %if.then.461
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-284(%rbp), %eax
	andl	$-64, %eax
	movl	%eax, -316(%rbp)
	cmpl	$0, -236(%rbp)
	jge	.LBB42_139
# BB#138:                               # %if.then.465
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-316(%rbp), %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB42_142
.LBB42_139:                             # %if.else.466
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-316(%rbp), %eax
	cmpl	-236(%rbp), %eax
	je	.LBB42_141
# BB#140:                               # %if.then.469
                                        #   in Loop: Header=BB42_126 Depth=2
	movb	$0, -237(%rbp)
.LBB42_141:                             # %if.end.470
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_142
.LBB42_142:                             # %if.end.471
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_146
.LBB42_143:                             # %if.else.472
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-284(%rbp), %eax
	andl	$-64, %eax
	cmpl	-316(%rbp), %eax
	je	.LBB42_145
# BB#144:                               # %if.then.476
                                        #   in Loop: Header=BB42_126 Depth=2
	movb	$0, -237(%rbp)
.LBB42_145:                             # %if.end.477
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_146
.LBB42_146:                             # %if.end.478
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_147
.LBB42_147:                             # %if.end.479
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_148
.LBB42_148:                             # %if.end.480
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-276(%rbp), %eax
	cmpl	-284(%rbp), %eax
	jne	.LBB42_150
# BB#149:                               # %if.then.483
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_159
.LBB42_150:                             # %if.end.484
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_151
.LBB42_151:                             # %do.body.485
                                        #   in Loop: Header=BB42_126 Depth=2
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_156
# BB#152:                               # %if.then.489
                                        #   in Loop: Header=BB42_126 Depth=2
	movq	-88(%rbp), %rdi
	movslq	-284(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_154
# BB#153:                               # %if.then.500
                                        #   in Loop: Header=BB42_126 Depth=2
	movq	-328(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	jmp	.LBB42_155
.LBB42_154:                             # %if.else.503
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-284(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB42_155:                             # %if.end.504
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_157
.LBB42_156:                             # %if.else.505
                                        #   in Loop: Header=BB42_126 Depth=2
	movl	-284(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB42_157:                             # %if.end.506
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_158
.LBB42_158:                             # %do.end.507
                                        #   in Loop: Header=BB42_126 Depth=2
	jmp	.LBB42_126
.LBB42_159:                             # %while.end.508
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_160
.LBB42_160:                             # %if.end.509
                                        #   in Loop: Header=BB42_77 Depth=1
	jmp	.LBB42_161
.LBB42_161:                             # %if.end.510
                                        #   in Loop: Header=BB42_77 Depth=1
	movq	-192(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movslq	-292(%rbp), %rdx
	callq	memcpy
	movl	-292(%rbp), %eax
	movq	-192(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -192(%rbp)
	movl	-288(%rbp), %eax
	movq	-232(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -232(%rbp)
	movslq	-288(%rbp), %rdx
	movq	-112(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, -112(%rbp)
	jmp	.LBB42_77
.LBB42_162:                             # %while.end.517
	cmpl	$0, -236(%rbp)
	jge	.LBB42_164
# BB#163:                               # %if.then.520
	movl	$0, -236(%rbp)
.LBB42_164:                             # %if.end.521
	jmp	.LBB42_202
.LBB42_165:                             # %if.else.522
	movl	$0, -236(%rbp)
.LBB42_166:                             # %while.cond.523
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_187 Depth 2
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, %rax
	jl	.LBB42_201
# BB#167:                               # %while.body.527
                                        #   in Loop: Header=BB42_166 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB42_170
# BB#168:                               # %land.lhs.true.532
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB42_170
# BB#169:                               # %if.then.536
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
.LBB42_170:                             # %if.end.540
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -332(%rbp)
# BB#171:                               # %do.body.543
                                        #   in Loop: Header=BB42_166 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_176
# BB#172:                               # %if.then.547
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-80(%rbp), %rdi
	movslq	-332(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_174
# BB#173:                               # %if.then.558
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-352(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -336(%rbp)
	jmp	.LBB42_175
.LBB42_174:                             # %if.else.561
                                        #   in Loop: Header=BB42_166 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
.LBB42_175:                             # %if.end.562
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_177
.LBB42_176:                             # %if.else.563
                                        #   in Loop: Header=BB42_166 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
.LBB42_177:                             # %if.end.564
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_178
.LBB42_178:                             # %do.end.565
                                        #   in Loop: Header=BB42_166 Depth=1
	movl	-336(%rbp), %eax
	movb	%al, %cl
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -192(%rbp)
	movb	%cl, (%rdx)
# BB#179:                               # %do.body.568
                                        #   in Loop: Header=BB42_166 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_184
# BB#180:                               # %if.then.572
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-88(%rbp), %rdi
	movslq	-332(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_182
# BB#181:                               # %if.then.583
                                        #   in Loop: Header=BB42_166 Depth=1
	movq	-360(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -340(%rbp)
	jmp	.LBB42_183
.LBB42_182:                             # %if.else.586
                                        #   in Loop: Header=BB42_166 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -340(%rbp)
.LBB42_183:                             # %if.end.587
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_185
.LBB42_184:                             # %if.else.588
                                        #   in Loop: Header=BB42_166 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -340(%rbp)
.LBB42_185:                             # %if.end.589
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_186
.LBB42_186:                             # %do.end.590
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_187
.LBB42_187:                             # %while.body.592
                                        #   Parent Loop BB42_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$128, -340(%rbp)
	jl	.LBB42_189
# BB#188:                               # %if.then.595
                                        #   in Loop: Header=BB42_166 Depth=1
	movb	$0, -237(%rbp)
	jmp	.LBB42_200
.LBB42_189:                             # %if.end.596
                                        #   in Loop: Header=BB42_187 Depth=2
	movl	-332(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jne	.LBB42_191
# BB#190:                               # %if.then.599
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_200
.LBB42_191:                             # %if.end.600
                                        #   in Loop: Header=BB42_187 Depth=2
	jmp	.LBB42_192
.LBB42_192:                             # %do.body.601
                                        #   in Loop: Header=BB42_187 Depth=2
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_197
# BB#193:                               # %if.then.605
                                        #   in Loop: Header=BB42_187 Depth=2
	movq	-88(%rbp), %rdi
	movslq	-340(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB42_195
# BB#194:                               # %if.then.616
                                        #   in Loop: Header=BB42_187 Depth=2
	movq	-368(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -340(%rbp)
	jmp	.LBB42_196
.LBB42_195:                             # %if.else.619
                                        #   in Loop: Header=BB42_187 Depth=2
	movl	-340(%rbp), %eax
	movl	%eax, -340(%rbp)
.LBB42_196:                             # %if.end.620
                                        #   in Loop: Header=BB42_187 Depth=2
	jmp	.LBB42_198
.LBB42_197:                             # %if.else.621
                                        #   in Loop: Header=BB42_187 Depth=2
	movl	-340(%rbp), %eax
	movl	%eax, -340(%rbp)
.LBB42_198:                             # %if.end.622
                                        #   in Loop: Header=BB42_187 Depth=2
	jmp	.LBB42_199
.LBB42_199:                             # %do.end.623
                                        #   in Loop: Header=BB42_187 Depth=2
	jmp	.LBB42_187
.LBB42_200:                             # %while.end.624
                                        #   in Loop: Header=BB42_166 Depth=1
	jmp	.LBB42_166
.LBB42_201:                             # %while.end.625
	jmp	.LBB42_202
.LBB42_202:                             # %if.end.626
	movq	-192(%rbp), %rax
	movq	-216(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	%rax, -192(%rbp)
	testb	$1, -237(%rbp)
	je	.LBB42_204
# BB#203:                               # %cond.true.629
	movq	-64(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-56(%rbp), %rax
	movl	-236(%rbp), %r10d
	subq	$16, %rsp
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	boyer_moore
	addq	$16, %rsp
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB42_205
.LBB42_204:                             # %cond.false.631
	movq	-64(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	subq	$32, %rsp
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	simple_search
	addq	$32, %rsp
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB42_205:                             # %cond.end.633
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)
# BB#206:                               # %do.body.635
	testb	$1, -257(%rbp)
	je	.LBB42_208
# BB#207:                               # %if.then.637
	xorl	%edi, %edi
	movb	$0, -257(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB42_208:                             # %if.end.640
	jmp	.LBB42_209
.LBB42_209:                             # %do.end.641
	movq	-376(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB42_210:                             # %return
	movq	-16(%rbp), %rax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	search_buffer, .Lfunc_end42-search_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	set_search_regs,@function
set_search_regs:                        # @set_search_regs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	globals+1056, %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_2
# BB#1:                                 # %if.then
	jmp	.LBB43_9
.LBB43_2:                               # %if.end
	cmpl	$0, search_regs
	jne	.LBB43_4
# BB#3:                                 # %if.then.2
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$16, %ecx
	movl	%ecx, %edi
	movq	%rax, search_regs+8
	callq	xmalloc
	movq	%rax, search_regs+16
	movl	$2, search_regs
.LBB43_4:                               # %if.end.5
	movq	$1, -24(%rbp)
.LBB43_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movl	search_regs, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB43_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	-24(%rbp), %rax
	movq	search_regs+8, %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-24(%rbp), %rax
	movq	search_regs+16, %rcx
	movq	$-1, (%rcx,%rax,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB43_5
.LBB43_8:                               # %for.end
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	search_regs+8, %rsi
	movq	%rax, (%rsi)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movl	$5, %esi
	movq	search_regs+16, %rdi
	movq	%rax, (%rdi)
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, last_thing_searched
.LBB43_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	set_search_regs, .Lfunc_end43-set_search_regs
	.cfi_endproc

	.align	16, 0x90
	.type	trivial_regexp_p,@function
trivial_regexp_p:                       # @trivial_regexp_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
.LBB44_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jl	.LBB44_10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %esi
	subl	$36, %esi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%esi, -40(%rbp)         # 4-byte Spill
	je	.LBB44_3
	jmp	.LBB44_12
.LBB44_12:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-42, %eax
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB44_3
	jmp	.LBB44_13
.LBB44_13:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB44_3
	jmp	.LBB44_14
.LBB44_14:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB44_3
	jmp	.LBB44_15
.LBB44_15:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB44_3
	jmp	.LBB44_16
.LBB44_16:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB44_4
	jmp	.LBB44_17
.LBB44_17:                              # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB44_9
	jmp	.LBB44_3
.LBB44_3:                               # %sw.bb
	movb	$0, -1(%rbp)
	jmp	.LBB44_11
.LBB44_4:                               # %sw.bb.2
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jge	.LBB44_6
# BB#5:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB44_11
.LBB44_6:                               # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %esi
	addl	$-39, %esi
	subl	$3, %esi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%esi, -72(%rbp)         # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_18
.LBB44_18:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_19
.LBB44_19:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-60, %eax
	subl	$3, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_20
.LBB44_20:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-66, %eax
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_21
.LBB44_21:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_22
.LBB44_22:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_23
.LBB44_23:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-95, %eax
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_24
.LBB44_24:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-98, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB44_7
	jmp	.LBB44_25
.LBB44_25:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_26
.LBB44_26:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_27
.LBB44_27:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-123, %eax
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	ja	.LBB44_8
	jmp	.LBB44_7
.LBB44_7:                               # %sw.bb.8
	movb	$0, -1(%rbp)
	jmp	.LBB44_11
.LBB44_8:                               # %sw.epilog
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_9
.LBB44_9:                               # %sw.epilog.9
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_1
.LBB44_10:                              # %while.end
	movb	$1, -1(%rbp)
.LBB44_11:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	trivial_regexp_p, .Lfunc_end44-trivial_regexp_p
	.cfi_endproc

	.align	16, 0x90
	.type	boyer_moore,@function
boyer_moore:                            # @boyer_moore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1912, %rsp             # imm = 0x778
.Ltmp141:
	.cfi_offset %rbx, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	xorl	%r11d, %r11d
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movl	$1, %r14d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r10, -88(%rbp)
	movl	%eax, -92(%rbp)
	cmpq	$0, -40(%rbp)
	cmovgl	%r14d, %ebx
	movl	%ebx, -96(%rbp)
	movl	$0, -116(%rbp)
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movl	%r11d, %edi
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1640(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r15b
	xorb	$-1, %r15b
	andb	$1, %r15b
	movb	%r15b, -1201(%rbp)
	movl	$0, -1476(%rbp)
	movl	$0, -1480(%rbp)
	movl	$0, -1484(%rbp)
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1200(%rbp)
	cmpl	$0, -96(%rbp)
	jge	.LBB45_2
# BB#1:                                 # %if.then
	movq	-1200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
.LBB45_2:                               # %if.end
	movq	$0, -1176(%rbp)
.LBB45_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$256, -1176(%rbp)       # imm = 0x100
	jge	.LBB45_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB45_3 Depth=1
	movq	-104(%rbp), %rax
	movl	%eax, %ecx
	movq	-1176(%rbp), %rax
	movl	%ecx, -1152(%rbp,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB45_3 Depth=1
	movq	-1176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1176(%rbp)
	jmp	.LBB45_3
.LBB45_6:                               # %for.end
	movq	$0, -1176(%rbp)
.LBB45_7:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$256, -1176(%rbp)       # imm = 0x100
	jge	.LBB45_10
# BB#8:                                 # %for.body.11
                                        #   in Loop: Header=BB45_7 Depth=1
	movq	-1176(%rbp), %rax
	movb	%al, %cl
	movq	-1176(%rbp), %rax
	movb	%cl, -1472(%rbp,%rax)
# BB#9:                                 # %for.inc.14
                                        #   in Loop: Header=BB45_7 Depth=1
	movq	-1176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1176(%rbp)
	jmp	.LBB45_7
.LBB45_10:                              # %for.end.16
	cmpl	$0, -92(%rbp)
	je	.LBB45_31
# BB#11:                                # %if.then.17
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_12
	jmp	.LBB45_13
.LBB45_12:                              # %cond.true
	movl	-92(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB45_14
	jmp	.LBB45_15
.LBB45_13:                              # %cond.false
	movslq	-92(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB45_15
.LBB45_14:                              # %cond.true.24
	movl	$1, %eax
	movl	-92(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -1489(%rbp)
	movl	%eax, -1644(%rbp)       # 4-byte Spill
	jmp	.LBB45_26
.LBB45_15:                              # %cond.false.27
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_16
	jmp	.LBB45_17
.LBB45_16:                              # %cond.true.28
	movl	-92(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB45_18
	jmp	.LBB45_19
.LBB45_17:                              # %cond.false.32
	movslq	-92(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB45_19
.LBB45_18:                              # %cond.true.37
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -1489(%rbp)
	movl	-92(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -1488(%rbp)
	movl	%eax, -1648(%rbp)       # 4-byte Spill
	jmp	.LBB45_25
.LBB45_19:                              # %cond.false.43
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_20
	jmp	.LBB45_21
.LBB45_20:                              # %cond.true.44
	movl	-92(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB45_22
	jmp	.LBB45_23
.LBB45_21:                              # %cond.false.48
	movslq	-92(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB45_23
.LBB45_22:                              # %cond.true.53
	movl	$3, %eax
	movl	-92(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -1489(%rbp)
	movl	-92(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -1488(%rbp)
	movl	-92(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -1487(%rbp)
	movl	%eax, -1652(%rbp)       # 4-byte Spill
	jmp	.LBB45_24
.LBB45_23:                              # %cond.false.67
	leaq	-1489(%rbp), %rsi
	movl	-92(%rbp), %edi
	callq	char_string
	movl	%eax, -1652(%rbp)       # 4-byte Spill
.LBB45_24:                              # %cond.end
	movl	-1652(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1648(%rbp)       # 4-byte Spill
.LBB45_25:                              # %cond.end.70
	movl	-1648(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1644(%rbp)       # 4-byte Spill
.LBB45_26:                              # %cond.end.72
	movl	-1644(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1496(%rbp)
	movl	-1496(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movzbl	-1489(%rbp,%rcx), %eax
	movl	%eax, -1476(%rbp)
	cmpl	$2, -1496(%rbp)
	jle	.LBB45_30
# BB#27:                                # %if.then.78
	movl	-1496(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movzbl	-1489(%rbp,%rcx), %eax
	movl	%eax, -1480(%rbp)
	cmpl	$3, -1496(%rbp)
	jle	.LBB45_29
# BB#28:                                # %if.then.85
	movl	-1496(%rbp), %eax
	subl	$4, %eax
	movslq	%eax, %rcx
	movzbl	-1489(%rbp,%rcx), %eax
	movl	%eax, -1484(%rbp)
.LBB45_29:                              # %if.end.90
	jmp	.LBB45_30
.LBB45_30:                              # %if.end.91
	jmp	.LBB45_31
.LBB45_31:                              # %if.end.92
	movq	$0, -1176(%rbp)
.LBB45_32:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_43 Depth 2
                                        #     Child Loop BB45_66 Depth 2
	movq	-1176(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB45_87
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB45_32 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	addq	-1176(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movslq	-96(%rbp), %rax
	addq	-1176(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_83
# BB#34:                                # %if.then.101
                                        #   in Loop: Header=BB45_32 Depth=1
	movb	$1, %al
	movl	$-1, -1508(%rbp)
	testb	$1, %al
	jne	.LBB45_35
	jmp	.LBB45_36
.LBB45_35:                              # %cond.true.102
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB45_38
	jmp	.LBB45_37
.LBB45_36:                              # %cond.false.107
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB45_38
.LBB45_37:                              # %lor.lhs.false
                                        #   in Loop: Header=BB45_32 Depth=1
	testb	$1, -1201(%rbp)
	jne	.LBB45_39
.LBB45_38:                              # %if.then.113
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1508(%rbp)
	jmp	.LBB45_58
.LBB45_39:                              # %if.else
                                        #   in Loop: Header=BB45_32 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB45_57
# BB#40:                                # %land.lhs.true
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1200(%rbp), %rax
	movq	-1504(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$1, %rax
	je	.LBB45_42
# BB#41:                                # %lor.lhs.false.118
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB45_57
.LBB45_42:                              # %if.then.124
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1520(%rbp)
.LBB45_43:                              # %while.cond.126
                                        #   Parent Loop BB45_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_44
	jmp	.LBB45_45
.LBB45_44:                              # %while.body.132
                                        #   in Loop: Header=BB45_43 Depth=2
	movq	-1520(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1520(%rbp)
	jmp	.LBB45_43
.LBB45_45:                              # %while.end
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_47
# BB#46:                                # %cond.true.137
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1668(%rbp)       # 4-byte Spill
	jmp	.LBB45_54
.LBB45_47:                              # %cond.false.140
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_49
# BB#48:                                # %cond.true.145
                                        #   in Loop: Header=BB45_32 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-1520(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-1520(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-1520(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1672(%rbp)       # 4-byte Spill
	jmp	.LBB45_53
.LBB45_49:                              # %cond.false.159
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_51
# BB#50:                                # %cond.true.164
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1520(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-1520(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-1520(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1676(%rbp)       # 4-byte Spill
	jmp	.LBB45_52
.LBB45_51:                              # %cond.false.178
                                        #   in Loop: Header=BB45_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1520(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1676(%rbp)       # 4-byte Spill
.LBB45_52:                              # %cond.end.180
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	-1676(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1672(%rbp)       # 4-byte Spill
.LBB45_53:                              # %cond.end.182
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	-1672(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1668(%rbp)       # 4-byte Spill
.LBB45_54:                              # %cond.end.184
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	-1668(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1508(%rbp)
	movl	-92(%rbp), %eax
	movl	-1508(%rbp), %ecx
	andl	$-64, %ecx
	cmpl	%ecx, %eax
	je	.LBB45_56
# BB#55:                                # %if.then.189
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	$-1, -1508(%rbp)
.LBB45_56:                              # %if.end.190
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_57
.LBB45_57:                              # %if.end.191
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_58
.LBB45_58:                              # %if.end.192
                                        #   in Loop: Header=BB45_32 Depth=1
	cmpl	$128, -1508(%rbp)
	jl	.LBB45_61
# BB#59:                                # %land.lhs.true.195
                                        #   in Loop: Header=BB45_32 Depth=1
	testb	$1, -1201(%rbp)
	je	.LBB45_61
# BB#60:                                # %if.then.198
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	-1508(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movl	%eax, -1180(%rbp)
	jmp	.LBB45_62
.LBB45_61:                              # %if.else.201
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1180(%rbp)
.LBB45_62:                              # %if.end.203
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1176(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB45_64
# BB#63:                                # %if.then.206
                                        #   in Loop: Header=BB45_32 Depth=1
	movslq	-1180(%rbp), %rax
	movl	-1152(%rbp,%rax,4), %ecx
	movl	%ecx, -116(%rbp)
.LBB45_64:                              # %if.end.209
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-104(%rbp), %rax
	subq	-1176(%rbp), %rax
	movl	%eax, %ecx
	movslq	-1180(%rbp), %rax
	movl	%ecx, -1152(%rbp,%rax,4)
	cmpl	$0, -1508(%rbp)
	jl	.LBB45_82
# BB#65:                                # %if.then.216
                                        #   in Loop: Header=BB45_32 Depth=1
	movl	-1508(%rbp), %eax
	movl	%eax, -1524(%rbp)
	movl	-1180(%rbp), %eax
	movl	%eax, -1528(%rbp)
.LBB45_66:                              # %while.body.218
                                        #   Parent Loop BB45_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	jmp	.LBB45_67
.LBB45_67:                              # %do.body
                                        #   in Loop: Header=BB45_66 Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1688(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_72
# BB#68:                                # %if.then.222
                                        #   in Loop: Header=BB45_66 Depth=2
	movq	-72(%rbp), %rdi
	movslq	-1508(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -1536(%rbp)
	movq	-1536(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_70
# BB#69:                                # %if.then.232
                                        #   in Loop: Header=BB45_66 Depth=2
	movq	-1536(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -1508(%rbp)
	jmp	.LBB45_71
.LBB45_70:                              # %if.else.235
                                        #   in Loop: Header=BB45_66 Depth=2
	movl	-1508(%rbp), %eax
	movl	%eax, -1508(%rbp)
.LBB45_71:                              # %if.end.236
                                        #   in Loop: Header=BB45_66 Depth=2
	jmp	.LBB45_73
.LBB45_72:                              # %if.else.237
                                        #   in Loop: Header=BB45_66 Depth=2
	movl	-1508(%rbp), %eax
	movl	%eax, -1508(%rbp)
.LBB45_73:                              # %if.end.238
                                        #   in Loop: Header=BB45_66 Depth=2
	jmp	.LBB45_74
.LBB45_74:                              # %do.end
                                        #   in Loop: Header=BB45_66 Depth=2
	cmpl	$128, -1508(%rbp)
	jl	.LBB45_77
# BB#75:                                # %land.lhs.true.241
                                        #   in Loop: Header=BB45_66 Depth=2
	testb	$1, -1201(%rbp)
	je	.LBB45_77
# BB#76:                                # %if.then.244
                                        #   in Loop: Header=BB45_66 Depth=2
	movl	-1508(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movl	%eax, -1180(%rbp)
	jmp	.LBB45_78
.LBB45_77:                              # %if.else.247
                                        #   in Loop: Header=BB45_66 Depth=2
	movl	-1508(%rbp), %eax
	movl	%eax, -1180(%rbp)
.LBB45_78:                              # %if.end.248
                                        #   in Loop: Header=BB45_66 Depth=2
	movl	-1528(%rbp), %eax
	movb	%al, %cl
	movslq	-1180(%rbp), %rdx
	movb	%cl, -1472(%rbp,%rdx)
	movl	-1508(%rbp), %eax
	cmpl	-1524(%rbp), %eax
	jne	.LBB45_80
# BB#79:                                # %if.then.254
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_81
.LBB45_80:                              # %if.end.255
                                        #   in Loop: Header=BB45_66 Depth=2
	movq	-104(%rbp), %rax
	subq	-1176(%rbp), %rax
	movl	%eax, %ecx
	movslq	-1180(%rbp), %rax
	movl	%ecx, -1152(%rbp,%rax,4)
	jmp	.LBB45_66
.LBB45_81:                              # %while.end.260
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_82
.LBB45_82:                              # %if.end.261
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_86
.LBB45_83:                              # %if.else.262
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-1504(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1180(%rbp)
	movq	-1176(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB45_85
# BB#84:                                # %if.then.266
                                        #   in Loop: Header=BB45_32 Depth=1
	movslq	-1180(%rbp), %rax
	movl	-1152(%rbp,%rax,4), %ecx
	movl	%ecx, -116(%rbp)
.LBB45_85:                              # %if.end.269
                                        #   in Loop: Header=BB45_32 Depth=1
	movq	-104(%rbp), %rax
	subq	-1176(%rbp), %rax
	movl	%eax, %ecx
	movslq	-1180(%rbp), %rax
	movl	%ecx, -1152(%rbp,%rax,4)
.LBB45_86:                              # %if.end.274
                                        #   in Loop: Header=BB45_32 Depth=1
	jmp	.LBB45_32
.LBB45_87:                              # %while.end.275
	movq	-104(%rbp), %rax
	cmpl	$0, -96(%rbp)
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jle	.LBB45_89
# BB#88:                                # %cond.true.278
	movl	-96(%rbp), %eax
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	jmp	.LBB45_90
.LBB45_89:                              # %cond.false.279
	xorl	%eax, %eax
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	jmp	.LBB45_90
.LBB45_90:                              # %cond.end.280
	movl	-1700(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1696(%rbp), %rdx       # 8-byte Reload
	subq	%rcx, %rdx
	addq	-80(%rbp), %rdx
	movq	%rdx, -80(%rbp)
.LBB45_91:                              # %while.cond.285
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_140 Depth 2
                                        #       Child Loop BB45_142 Depth 3
                                        #       Child Loop BB45_148 Depth 3
                                        #       Child Loop BB45_156 Depth 3
                                        #       Child Loop BB45_173 Depth 3
                                        #     Child Loop BB45_216 Depth 2
                                        #       Child Loop BB45_217 Depth 3
                                        #       Child Loop BB45_226 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB45_264
# BB#92:                                # %while.body.288
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-88(%rbp), %rdx
	subq	-80(%rbp), %rdx
	cmpl	$0, -96(%rbp)
	cmovgl	%ecx, %eax
	movslq	%eax, %rsi
	subq	%rsi, %rdx
	movslq	-96(%rbp), %rsi
	imulq	%rsi, %rdx
	cmpq	$0, %rdx
	jge	.LBB45_94
# BB#93:                                # %if.then.299
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	subl	-96(%rbp), %eax
	movslq	%eax, %rdx
	imulq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB45_265
.LBB45_94:                              # %if.end.303
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_95
.LBB45_95:                              # %do.body.304
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1712(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_98
# BB#96:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1720(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_98
# BB#97:                                # %if.then.312
                                        #   in Loop: Header=BB45_91 Depth=1
	callq	process_quit_flag
	jmp	.LBB45_101
.LBB45_98:                              # %if.else.313
                                        #   in Loop: Header=BB45_91 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB45_100
# BB#99:                                # %if.then.315
                                        #   in Loop: Header=BB45_91 Depth=1
	callq	process_pending_signals
.LBB45_100:                             # %if.end.316
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_101
.LBB45_101:                             # %if.end.317
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_102
.LBB45_102:                             # %do.end.318
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	-80(%rbp), %rax
	subq	-104(%rbp), %rax
	movslq	-96(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -96(%rbp)
	jle	.LBB45_114
# BB#103:                               # %if.then.324
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_106
# BB#104:                               # %land.lhs.true.327
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB45_106
# BB#105:                               # %cond.true.331
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB45_107
.LBB45_106:                             # %cond.false.334
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB45_107:                             # %cond.end.335
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1728(%rbp), %rax       # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$20000, %rcx            # imm = 0x4E20
	cmpq	%rcx, %rax
	jge	.LBB45_109
# BB#108:                               # %cond.true.341
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB45_110
.LBB45_109:                             # %cond.false.342
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-80(%rbp), %rax
	addq	$20000, %rax            # imm = 0x4E20
	movq	%rax, -1736(%rbp)       # 8-byte Spill
.LBB45_110:                             # %cond.end.344
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_112
# BB#111:                               # %cond.true.349
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB45_113
.LBB45_112:                             # %cond.false.350
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB45_113:                             # %cond.end.352
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1744(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB45_125
.LBB45_114:                             # %if.else.354
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB45_117
# BB#115:                               # %land.lhs.true.359
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB45_117
# BB#116:                               # %cond.true.364
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB45_118
.LBB45_117:                             # %cond.false.367
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB45_118:                             # %cond.end.368
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1752(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	$20000, %rcx            # imm = 0x4E20
	cmpq	%rcx, %rax
	jle	.LBB45_120
# BB#119:                               # %cond.true.373
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB45_121
.LBB45_120:                             # %cond.false.374
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-80(%rbp), %rax
	subq	$20000, %rax            # imm = 0x4E20
	movq	%rax, -1760(%rbp)       # 8-byte Spill
.LBB45_121:                             # %cond.end.376
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB45_123
# BB#122:                               # %cond.true.380
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	jmp	.LBB45_124
.LBB45_123:                             # %cond.false.381
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
.LBB45_124:                             # %cond.end.382
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1768(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
.LBB45_125:                             # %if.end.384
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_128
# BB#126:                               # %land.lhs.true.389
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB45_128
# BB#127:                               # %cond.true.395
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	jmp	.LBB45_129
.LBB45_128:                             # %cond.false.398
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
.LBB45_129:                             # %cond.end.400
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1776(%rbp), %rax       # 8-byte Reload
	subq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1544(%rbp)
	movq	-1544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_131
# BB#130:                               # %cond.true.408
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB45_132
.LBB45_131:                             # %cond.false.410
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB45_132
.LBB45_132:                             # %cond.end.411
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1784(%rbp), %rax       # 8-byte Reload
	addq	-1544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1552(%rbp)
	movq	-112(%rbp), %rax
	subq	-80(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$20, %rax
	jle	.LBB45_195
# BB#133:                               # %if.then.422
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_135
# BB#134:                               # %cond.true.427
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	jmp	.LBB45_136
.LBB45_135:                             # %cond.false.430
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1792(%rbp)       # 8-byte Spill
	jmp	.LBB45_136
.LBB45_136:                             # %cond.end.431
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1792(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1168(%rbp)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_138
# BB#137:                               # %cond.true.442
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB45_139
.LBB45_138:                             # %cond.false.445
                                        #   in Loop: Header=BB45_91 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB45_139
.LBB45_139:                             # %cond.end.446
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1800(%rbp), %rax       # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1160(%rbp)
	movq	%rax, -1560(%rbp)
.LBB45_140:                             # %while.body.454
                                        #   Parent Loop BB45_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_142 Depth 3
                                        #       Child Loop BB45_148 Depth 3
                                        #       Child Loop BB45_156 Depth 3
                                        #       Child Loop BB45_173 Depth 3
	cmpl	$0, -96(%rbp)
	jle	.LBB45_147
# BB#141:                               # %if.then.457
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_142
.LBB45_142:                             # %while.cond.458
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-1160(%rbp), %rax
	cmpq	-1168(%rbp), %rax
	ja	.LBB45_146
# BB#143:                               # %while.body.461
                                        #   in Loop: Header=BB45_142 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	cmpl	$0, -1152(%rbp,%rax,4)
	jne	.LBB45_145
# BB#144:                               # %if.then.466
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_154
.LBB45_145:                             # %if.end.467
                                        #   in Loop: Header=BB45_142 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movl	-1152(%rbp,%rax,4), %ecx
	movq	-1160(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1160(%rbp)
	jmp	.LBB45_142
.LBB45_146:                             # %while.end.471
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_153
.LBB45_147:                             # %if.else.472
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_148
.LBB45_148:                             # %while.cond.473
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-1160(%rbp), %rax
	cmpq	-1168(%rbp), %rax
	jb	.LBB45_152
# BB#149:                               # %while.body.476
                                        #   in Loop: Header=BB45_148 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	cmpl	$0, -1152(%rbp,%rax,4)
	jne	.LBB45_151
# BB#150:                               # %if.then.481
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_154
.LBB45_151:                             # %if.end.482
                                        #   in Loop: Header=BB45_148 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movl	-1152(%rbp,%rax,4), %ecx
	movq	-1160(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1160(%rbp)
	jmp	.LBB45_148
.LBB45_152:                             # %while.end.487
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_153
.LBB45_153:                             # %if.end.488
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_194
.LBB45_154:                             # %hit
                                        #   in Loop: Header=BB45_140 Depth=2
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movslq	-96(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1176(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1808(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_172
# BB#155:                               # %if.then.494
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_156
.LBB45_156:                             # %while.cond.495
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-96(%rbp), %rax
	movq	-1176(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1176(%rbp)
	movslq	-96(%rbp), %rax
	addq	%rax, %rcx
	cmpq	$0, %rcx
	je	.LBB45_171
# BB#157:                               # %while.body.502
                                        #   in Loop: Header=BB45_156 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %eax
	movq	-1160(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1160(%rbp)
	testb	$1, -1201(%rbp)
	je	.LBB45_166
# BB#158:                               # %lor.lhs.false.507
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1160(%rbp), %rax
	cmpq	-1552(%rbp), %rax
	je	.LBB45_160
# BB#159:                               # %lor.lhs.false.510
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB45_167
.LBB45_160:                             # %land.lhs.true.516
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	jne	.LBB45_166
# BB#161:                               # %lor.lhs.false.522
                                        #   in Loop: Header=BB45_156 Depth=3
	movl	-1476(%rbp), %eax
	movq	-1160(%rbp), %rcx
	movzbl	-1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_167
# BB#162:                               # %land.lhs.true.527
                                        #   in Loop: Header=BB45_156 Depth=3
	movl	-1476(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB45_166
# BB#163:                               # %lor.lhs.false.531
                                        #   in Loop: Header=BB45_156 Depth=3
	movl	-1480(%rbp), %eax
	movq	-1160(%rbp), %rcx
	movzbl	-2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_167
# BB#164:                               # %land.lhs.true.536
                                        #   in Loop: Header=BB45_156 Depth=3
	movl	-1480(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB45_166
# BB#165:                               # %lor.lhs.false.540
                                        #   in Loop: Header=BB45_156 Depth=3
	movl	-1484(%rbp), %eax
	movq	-1160(%rbp), %rcx
	movzbl	-3(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_167
.LBB45_166:                             # %if.then.545
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movzbl	-1472(%rbp,%rax), %ecx
	movl	%ecx, -1564(%rbp)
	jmp	.LBB45_168
.LBB45_167:                             # %if.else.549
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1564(%rbp)
.LBB45_168:                             # %if.end.551
                                        #   in Loop: Header=BB45_156 Depth=3
	movq	-1176(%rbp), %rax
	movq	-1192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-1564(%rbp), %edx
	je	.LBB45_170
# BB#169:                               # %if.then.556
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_171
.LBB45_170:                             # %if.end.557
                                        #   in Loop: Header=BB45_156 Depth=3
	jmp	.LBB45_156
.LBB45_171:                             # %while.end.558
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_178
.LBB45_172:                             # %if.else.559
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_173
.LBB45_173:                             # %while.cond.560
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-96(%rbp), %rax
	movq	-1176(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1176(%rbp)
	movslq	-96(%rbp), %rax
	addq	%rax, %rcx
	cmpq	$0, %rcx
	je	.LBB45_177
# BB#174:                               # %while.body.567
                                        #   in Loop: Header=BB45_173 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %eax
	movq	-1160(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1160(%rbp)
	movq	-1176(%rbp), %rcx
	movq	-1192(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-1160(%rbp), %rcx
	movzbl	(%rcx), %edi
	cmpl	%edi, %eax
	je	.LBB45_176
# BB#175:                               # %if.then.576
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_177
.LBB45_176:                             # %if.end.577
                                        #   in Loop: Header=BB45_173 Depth=3
	jmp	.LBB45_173
.LBB45_177:                             # %while.end.578
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_178
.LBB45_178:                             # %if.end.579
                                        #   in Loop: Header=BB45_140 Depth=2
	movq	-104(%rbp), %rax
	subq	-1176(%rbp), %rax
	movslq	-96(%rbp), %rcx
	subq	%rcx, %rax
	addq	-1160(%rbp), %rax
	movq	%rax, -1160(%rbp)
	movq	-1176(%rbp), %rax
	movslq	-96(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB45_192
# BB#179:                               # %if.then.588
                                        #   in Loop: Header=BB45_140 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-96(%rbp), %eax
	movq	-1160(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1160(%rbp)
	movq	-80(%rbp), %rcx
	addq	-1160(%rbp), %rcx
	movq	-1560(%rbp), %rdx
	subq	%rdx, %rcx
	cmpl	$0, -96(%rbp)
	movq	%rcx, -1816(%rbp)       # 8-byte Spill
	jle	.LBB45_181
# BB#180:                               # %cond.true.598
                                        #   in Loop: Header=BB45_140 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	subq	-56(%rbp), %rcx
	movq	%rcx, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB45_182
.LBB45_181:                             # %cond.false.600
                                        #   in Loop: Header=BB45_140 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB45_182
.LBB45_182:                             # %cond.end.601
                                        #   in Loop: Header=BB45_140 Depth=2
	movq	-1824(%rbp), %rax       # 8-byte Reload
	movq	-1816(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -1576(%rbp)
	movq	-1576(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_search_regs
	xorl	%edi, %edi
	movq	globals+1056, %rax
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1832(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_184
# BB#183:                               # %if.then.607
                                        #   in Loop: Header=BB45_140 Depth=2
	movq	search_regs+8, %rax
	movq	(%rax), %rax
	movq	%rax, -1584(%rbp)
	movq	search_regs+16, %rax
	movq	(%rax), %rax
	movq	%rax, -1592(%rbp)
	jmp	.LBB45_185
.LBB45_184:                             # %if.else.610
                                        #   in Loop: Header=BB45_140 Depth=2
	movq	current_buffer, %rdi
	movq	-1576(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -1584(%rbp)
	movq	current_buffer, %rdi
	movq	-1576(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -1592(%rbp)
.LBB45_185:                             # %if.end.614
                                        #   in Loop: Header=BB45_140 Depth=2
	movslq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rcx
	je	.LBB45_187
# BB#186:                               # %if.then.619
                                        #   in Loop: Header=BB45_140 Depth=2
	movq	-104(%rbp), %rax
	addq	-1160(%rbp), %rax
	movq	%rax, -1160(%rbp)
	jmp	.LBB45_191
.LBB45_187:                             # %if.else.621
	cmpl	$0, -96(%rbp)
	jle	.LBB45_189
# BB#188:                               # %cond.true.624
	movq	-1592(%rbp), %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB45_190
.LBB45_189:                             # %cond.false.625
	movq	-1584(%rbp), %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB45_190:                             # %cond.end.626
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB45_265
.LBB45_191:                             # %if.end.628
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_193
.LBB45_192:                             # %if.else.629
                                        #   in Loop: Header=BB45_140 Depth=2
	movl	-116(%rbp), %eax
	movq	-1160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1160(%rbp)
.LBB45_193:                             # %if.end.632
                                        #   in Loop: Header=BB45_140 Depth=2
	jmp	.LBB45_140
.LBB45_194:                             # %while.end.633
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1160(%rbp), %rax
	movq	-1560(%rbp), %rcx
	subq	%rcx, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB45_261
.LBB45_195:                             # %if.else.638
                                        #   in Loop: Header=BB45_91 Depth=1
	cmpl	$0, -96(%rbp)
	jle	.LBB45_201
# BB#196:                               # %cond.true.641
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-80(%rbp), %rax
	subq	-104(%rbp), %rax
	addq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_199
# BB#197:                               # %land.lhs.true.648
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB45_199
# BB#198:                               # %cond.true.654
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	jmp	.LBB45_200
.LBB45_199:                             # %cond.false.657
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
.LBB45_200:                             # %cond.end.659
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1848(%rbp), %rax       # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	jmp	.LBB45_206
.LBB45_201:                             # %cond.false.662
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB45_204
# BB#202:                               # %land.lhs.true.668
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rcx
	subq	-104(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jg	.LBB45_204
# BB#203:                               # %cond.true.675
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	jmp	.LBB45_205
.LBB45_204:                             # %cond.false.678
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
.LBB45_205:                             # %cond.end.680
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1864(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1856(%rbp)       # 8-byte Spill
.LBB45_206:                             # %cond.end.682
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1856(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	cmpl	$0, -96(%rbp)
	jle	.LBB45_211
# BB#207:                               # %cond.true.686
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_209
# BB#208:                               # %cond.true.691
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	jmp	.LBB45_210
.LBB45_209:                             # %cond.false.693
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB45_210:                             # %cond.end.695
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB45_215
.LBB45_211:                             # %cond.false.697
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB45_213
# BB#212:                               # %cond.true.701
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-112(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	jmp	.LBB45_214
.LBB45_213:                             # %cond.false.703
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
.LBB45_214:                             # %cond.end.704
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1888(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB45_215:                             # %cond.end.706
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
.LBB45_216:                             # %while.body.709
                                        #   Parent Loop BB45_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_217 Depth 3
                                        #       Child Loop BB45_226 Depth 3
	jmp	.LBB45_217
.LBB45_217:                             # %while.cond.710
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax
	subq	-80(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$0, %rax
	jl	.LBB45_224
# BB#218:                               # %while.body.716
                                        #   in Loop: Header=BB45_217 Depth=3
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_220
# BB#219:                               # %cond.true.722
                                        #   in Loop: Header=BB45_217 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	jmp	.LBB45_221
.LBB45_220:                             # %cond.false.725
                                        #   in Loop: Header=BB45_217 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1896(%rbp)       # 8-byte Spill
	jmp	.LBB45_221
.LBB45_221:                             # %cond.end.726
                                        #   in Loop: Header=BB45_217 Depth=3
	movq	-1896(%rbp), %rax       # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1596(%rbp)
	movslq	-1596(%rbp), %rax
	cmpl	$0, -1152(%rbp,%rax,4)
	jne	.LBB45_223
# BB#222:                               # %if.then.738
                                        #   in Loop: Header=BB45_216 Depth=2
	jmp	.LBB45_225
.LBB45_223:                             # %if.end.739
                                        #   in Loop: Header=BB45_217 Depth=3
	movslq	-1596(%rbp), %rax
	movslq	-1152(%rbp,%rax,4), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB45_217
.LBB45_224:                             # %while.end.744
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_260
.LBB45_225:                             # %hit2
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	-104(%rbp), %rax
	movslq	-96(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1176(%rbp)
.LBB45_226:                             # %while.cond.747
                                        #   Parent Loop BB45_91 Depth=1
                                        #     Parent Loop BB45_216 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-96(%rbp), %rax
	movq	-1176(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1176(%rbp)
	movslq	-96(%rbp), %rax
	addq	%rax, %rcx
	cmpq	$0, %rcx
	je	.LBB45_244
# BB#227:                               # %while.body.754
                                        #   in Loop: Header=BB45_226 Depth=3
	movslq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_229
# BB#228:                               # %cond.true.763
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB45_230
.LBB45_229:                             # %cond.false.766
                                        #   in Loop: Header=BB45_226 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB45_230
.LBB45_230:                             # %cond.end.767
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1904(%rbp), %rax       # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1608(%rbp)
	testb	$1, -1201(%rbp)
	je	.LBB45_239
# BB#231:                               # %lor.lhs.false.775
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1608(%rbp), %rax
	cmpq	-1552(%rbp), %rax
	je	.LBB45_233
# BB#232:                               # %lor.lhs.false.778
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1608(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB45_240
.LBB45_233:                             # %land.lhs.true.784
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1608(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	jne	.LBB45_239
# BB#234:                               # %lor.lhs.false.790
                                        #   in Loop: Header=BB45_226 Depth=3
	movl	-1476(%rbp), %eax
	movq	-1608(%rbp), %rcx
	movzbl	-1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_240
# BB#235:                               # %land.lhs.true.795
                                        #   in Loop: Header=BB45_226 Depth=3
	movl	-1476(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB45_239
# BB#236:                               # %lor.lhs.false.799
                                        #   in Loop: Header=BB45_226 Depth=3
	movl	-1480(%rbp), %eax
	movq	-1608(%rbp), %rcx
	movzbl	-2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_240
# BB#237:                               # %land.lhs.true.804
                                        #   in Loop: Header=BB45_226 Depth=3
	movl	-1480(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB45_239
# BB#238:                               # %lor.lhs.false.808
                                        #   in Loop: Header=BB45_226 Depth=3
	movl	-1484(%rbp), %eax
	movq	-1608(%rbp), %rcx
	movzbl	-3(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB45_240
.LBB45_239:                             # %if.then.813
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1608(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movzbl	-1472(%rbp,%rax), %ecx
	movl	%ecx, -1600(%rbp)
	jmp	.LBB45_241
.LBB45_240:                             # %if.else.817
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1608(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1600(%rbp)
.LBB45_241:                             # %if.end.819
                                        #   in Loop: Header=BB45_226 Depth=3
	movq	-1176(%rbp), %rax
	movq	-1192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-1600(%rbp), %edx
	je	.LBB45_243
# BB#242:                               # %if.then.824
                                        #   in Loop: Header=BB45_216 Depth=2
	jmp	.LBB45_244
.LBB45_243:                             # %if.end.825
                                        #   in Loop: Header=BB45_226 Depth=3
	jmp	.LBB45_226
.LBB45_244:                             # %while.end.826
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	-104(%rbp), %rax
	subq	-1176(%rbp), %rax
	movslq	-96(%rbp), %rcx
	subq	%rcx, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-1176(%rbp), %rax
	movslq	-96(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB45_258
# BB#245:                               # %if.then.835
                                        #   in Loop: Header=BB45_216 Depth=2
	movslq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, -96(%rbp)
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	jle	.LBB45_247
# BB#246:                               # %cond.true.843
                                        #   in Loop: Header=BB45_216 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	subq	-56(%rbp), %rcx
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	jmp	.LBB45_248
.LBB45_247:                             # %cond.false.845
                                        #   in Loop: Header=BB45_216 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	jmp	.LBB45_248
.LBB45_248:                             # %cond.end.846
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	-1920(%rbp), %rax       # 8-byte Reload
	movq	-1912(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -1616(%rbp)
	movq	-1616(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_search_regs
	xorl	%edi, %edi
	movq	globals+1056, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1928(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_250
# BB#249:                               # %if.then.852
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	search_regs+8, %rax
	movq	(%rax), %rax
	movq	%rax, -1624(%rbp)
	movq	search_regs+16, %rax
	movq	(%rax), %rax
	movq	%rax, -1632(%rbp)
	jmp	.LBB45_251
.LBB45_250:                             # %if.else.855
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	current_buffer, %rdi
	movq	-1616(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -1624(%rbp)
	movq	current_buffer, %rdi
	movq	-1616(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -1632(%rbp)
.LBB45_251:                             # %if.end.859
                                        #   in Loop: Header=BB45_216 Depth=2
	movslq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rcx
	je	.LBB45_253
# BB#252:                               # %if.then.864
                                        #   in Loop: Header=BB45_216 Depth=2
	movq	-104(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB45_257
.LBB45_253:                             # %if.else.866
	cmpl	$0, -96(%rbp)
	jle	.LBB45_255
# BB#254:                               # %cond.true.869
	movq	-1632(%rbp), %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	jmp	.LBB45_256
.LBB45_255:                             # %cond.false.870
	movq	-1624(%rbp), %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
.LBB45_256:                             # %cond.end.871
	movq	-1936(%rbp), %rax       # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB45_265
.LBB45_257:                             # %if.end.873
                                        #   in Loop: Header=BB45_216 Depth=2
	jmp	.LBB45_259
.LBB45_258:                             # %if.else.874
                                        #   in Loop: Header=BB45_216 Depth=2
	movslq	-116(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB45_259:                             # %if.end.877
                                        #   in Loop: Header=BB45_216 Depth=2
	jmp	.LBB45_216
.LBB45_260:                             # %while.end.878
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_261
.LBB45_261:                             # %if.end.879
                                        #   in Loop: Header=BB45_91 Depth=1
	movq	-88(%rbp), %rax
	subq	-80(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB45_263
# BB#262:                               # %if.then.885
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-40(%rbp), %rcx
	movslq	-96(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB45_265
.LBB45_263:                             # %if.end.889
                                        #   in Loop: Header=BB45_91 Depth=1
	jmp	.LBB45_91
.LBB45_264:                             # %while.end.890
	movq	current_buffer, %rdi
	movq	-80(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -32(%rbp)
.LBB45_265:                             # %return
	movq	-32(%rbp), %rax
	addq	$1912, %rsp             # imm = 0x778
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	boyer_moore, .Lfunc_end45-boyer_moore
	.cfi_endproc

	.align	16, 0x90
	.type	simple_search,@function
simple_search:                          # @simple_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$784, %rsp              # imm = 0x310
.Ltmp147:
	.cfi_offset %rbx, -32
.Ltmp148:
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	xorl	%ebx, %ebx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movl	%ebx, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movq	-336(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%r14b
	xorb	$-1, %r14b
	andb	$1, %r14b
	movb	%r14b, -97(%rbp)
	cmpq	$0, -32(%rbp)
	setg	%r14b
	andb	$1, %r14b
	movb	%r14b, -98(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB46_96
# BB#1:                                 # %land.lhs.true
	testb	$1, -97(%rbp)
	je	.LBB46_96
# BB#2:                                 # %if.then
	jmp	.LBB46_3
.LBB46_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_5 Depth 2
                                        #       Child Loop BB46_9 Depth 3
	cmpq	$0, -32(%rbp)
	jle	.LBB46_95
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB46_3 Depth=1
	jmp	.LBB46_5
.LBB46_5:                               # %while.body.6
                                        #   Parent Loop BB46_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_9 Depth 3
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB46_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-80(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB46_8
.LBB46_7:                               # %if.then.10
	jmp	.LBB46_278
.LBB46_8:                               # %if.end
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_9
.LBB46_9:                               # %while.cond.11
                                        #   Parent Loop BB46_3 Depth=1
                                        #     Parent Loop BB46_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -136(%rbp)
	jle	.LBB46_72
# BB#10:                                # %while.body.13
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	$1, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB46_19
.LBB46_12:                              # %cond.false
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_14
# BB#13:                                # %cond.true.21
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -148(%rbp)
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-144(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -344(%rbp)        # 4-byte Spill
	jmp	.LBB46_18
.LBB46_14:                              # %cond.false.33
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_16
# BB#15:                                # %cond.true.38
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	$3, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-144(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB46_17
.LBB46_16:                              # %cond.false.52
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-148(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB46_17:                              # %cond.end
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB46_18:                              # %cond.end.55
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB46_19:                              # %cond.end.57
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	movq	-128(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	jl	.LBB46_21
# BB#20:                                # %cond.true.61
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB46_22
.LBB46_21:                              # %cond.false.63
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB46_22
.LBB46_22:                              # %cond.end.64
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-360(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB46_27
# BB#23:                                # %cond.true.73
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	$1, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_25
# BB#24:                                # %cond.true.78
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB46_26
.LBB46_25:                              # %cond.false.81
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB46_26
.LBB46_26:                              # %cond.end.82
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-368(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB46_61
.LBB46_27:                              # %cond.false.91
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_29
# BB#28:                                # %cond.true.96
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB46_30
.LBB46_29:                              # %cond.false.99
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB46_30
.LBB46_30:                              # %cond.end.100
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-384(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB46_41
# BB#31:                                # %cond.true.111
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	$2, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_33
# BB#32:                                # %cond.true.116
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB46_34
.LBB46_33:                              # %cond.false.119
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB46_34
.LBB46_34:                              # %cond.end.120
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-392(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$31, %edx
	shll	$6, %edx
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jl	.LBB46_36
# BB#35:                                # %cond.true.135
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB46_37
.LBB46_36:                              # %cond.false.138
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB46_37
.LBB46_37:                              # %cond.end.139
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-396(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -412(%rbp)        # 4-byte Spill
	jl	.LBB46_39
# BB#38:                                # %cond.true.154
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB46_40
.LBB46_39:                              # %cond.false.157
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB46_40
.LBB46_40:                              # %cond.end.158
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-424(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	addq	-128(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	(%rsi), %rsi
	movzbl	-1(%rsi,%rax), %edi
	cmpl	$194, %edi
	cmovll	%edx, %ecx
	movl	-412(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB46_60
.LBB46_41:                              # %cond.false.171
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_43
# BB#42:                                # %cond.true.176
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB46_44
.LBB46_43:                              # %cond.false.179
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB46_44
.LBB46_44:                              # %cond.end.180
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-440(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB46_55
# BB#45:                                # %cond.true.191
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	$3, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_47
# BB#46:                                # %cond.true.196
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB46_48
.LBB46_47:                              # %cond.false.199
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB46_48
.LBB46_48:                              # %cond.end.200
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-448(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -452(%rbp)        # 4-byte Spill
	jl	.LBB46_50
# BB#49:                                # %cond.true.215
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB46_51
.LBB46_50:                              # %cond.false.218
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB46_51
.LBB46_51:                              # %cond.end.219
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-464(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	movl	-452(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -468(%rbp)        # 4-byte Spill
	jl	.LBB46_53
# BB#52:                                # %cond.true.235
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB46_54
.LBB46_53:                              # %cond.false.238
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB46_54
.LBB46_54:                              # %cond.end.239
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	1(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-468(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	jmp	.LBB46_59
.LBB46_55:                              # %cond.false.250
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_57
# BB#56:                                # %cond.true.255
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB46_58
.LBB46_57:                              # %cond.false.258
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB46_58
.LBB46_58:                              # %cond.end.259
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-496(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-152(%rbp), %rdx
	addq	-128(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	addq	(%rdi), %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	string_char
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB46_59:                              # %cond.end.267
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB46_60:                              # %cond.end.269
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB46_61:                              # %cond.end.271
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
# BB#62:                                # %do.body
                                        #   in Loop: Header=BB46_9 Depth=3
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_67
# BB#63:                                # %if.then.276
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-64(%rbp), %rdi
	movslq	-160(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_65
# BB#64:                                # %if.then.286
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-168(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	jmp	.LBB46_66
.LBB46_65:                              # %if.else
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB46_66:                              # %if.end.288
                                        #   in Loop: Header=BB46_9 Depth=3
	jmp	.LBB46_68
.LBB46_67:                              # %if.else.289
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB46_68:                              # %if.end.290
                                        #   in Loop: Header=BB46_9 Depth=3
	jmp	.LBB46_69
.LBB46_69:                              # %do.end
                                        #   in Loop: Header=BB46_9 Depth=3
	movl	-160(%rbp), %eax
	cmpl	-156(%rbp), %eax
	je	.LBB46_71
# BB#70:                                # %if.then.293
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_72
.LBB46_71:                              # %if.end.294
                                        #   in Loop: Header=BB46_9 Depth=3
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movl	-148(%rbp), %ecx
	movq	-144(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movslq	-152(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB46_9
.LBB46_72:                              # %while.end
                                        #   in Loop: Header=BB46_5 Depth=2
	cmpq	$0, -136(%rbp)
	jne	.LBB46_74
# BB#73:                                # %if.then.300
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	-128(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB46_94
.LBB46_74:                              # %if.end.303
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_75
.LBB46_75:                              # %do.body.304
                                        #   in Loop: Header=BB46_5 Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_77
# BB#76:                                # %if.then.310
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB46_92
.LBB46_77:                              # %if.else.312
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_78
.LBB46_78:                              # %do.body.313
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_80
# BB#79:                                # %cond.true.318
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB46_81
.LBB46_80:                              # %cond.false.321
                                        #   in Loop: Header=BB46_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB46_81
.LBB46_81:                              # %cond.end.322
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-520(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB46_83
# BB#82:                                # %cond.true.332
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	$1, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB46_90
.LBB46_83:                              # %cond.false.333
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_85
# BB#84:                                # %cond.true.337
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	$2, %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jmp	.LBB46_89
.LBB46_85:                              # %cond.false.338
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_87
# BB#86:                                # %cond.true.342
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	$3, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB46_88
.LBB46_87:                              # %cond.false.343
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-176(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB46_88:                              # %cond.end.349
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB46_89:                              # %cond.end.351
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	-528(%rbp), %eax        # 4-byte Reload
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB46_90:                              # %cond.end.353
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	-524(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
# BB#91:                                # %do.end.357
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_92
.LBB46_92:                              # %if.end.358
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_93
.LBB46_93:                              # %do.end.359
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_5
.LBB46_94:                              # %while.end.360
                                        #   in Loop: Header=BB46_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB46_3
.LBB46_95:                              # %while.end.362
	jmp	.LBB46_277
.LBB46_96:                              # %if.else.363
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB46_123
# BB#97:                                # %if.then.366
	jmp	.LBB46_98
.LBB46_98:                              # %while.cond.367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_100 Depth 2
                                        #       Child Loop BB46_103 Depth 3
	cmpq	$0, -32(%rbp)
	jle	.LBB46_122
# BB#99:                                # %while.body.370
                                        #   in Loop: Header=BB46_98 Depth=1
	jmp	.LBB46_100
.LBB46_100:                             # %while.body.372
                                        #   Parent Loop BB46_98 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_103 Depth 3
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB46_102
# BB#101:                               # %if.then.379
	jmp	.LBB46_278
.LBB46_102:                             # %if.end.380
                                        #   in Loop: Header=BB46_100 Depth=2
	jmp	.LBB46_103
.LBB46_103:                             # %while.cond.381
                                        #   Parent Loop BB46_98 Depth=1
                                        #     Parent Loop BB46_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -192(%rbp)
	jle	.LBB46_118
# BB#104:                               # %while.body.384
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -204(%rbp)
	movq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_106
# BB#105:                               # %cond.true.392
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB46_107
.LBB46_106:                             # %cond.false.395
                                        #   in Loop: Header=BB46_103 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB46_107
.LBB46_107:                             # %cond.end.396
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	-544(%rbp), %rax        # 8-byte Reload
	addq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -208(%rbp)
# BB#108:                               # %do.body.404
                                        #   in Loop: Header=BB46_103 Depth=3
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_113
# BB#109:                               # %if.then.408
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	-64(%rbp), %rdi
	movslq	-208(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_111
# BB#110:                               # %if.then.419
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	-216(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -208(%rbp)
	jmp	.LBB46_112
.LBB46_111:                             # %if.else.422
                                        #   in Loop: Header=BB46_103 Depth=3
	movl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB46_112:                             # %if.end.423
                                        #   in Loop: Header=BB46_103 Depth=3
	jmp	.LBB46_114
.LBB46_113:                             # %if.else.424
                                        #   in Loop: Header=BB46_103 Depth=3
	movl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB46_114:                             # %if.end.425
                                        #   in Loop: Header=BB46_103 Depth=3
	jmp	.LBB46_115
.LBB46_115:                             # %do.end.426
                                        #   in Loop: Header=BB46_103 Depth=3
	movl	-208(%rbp), %eax
	cmpl	-204(%rbp), %eax
	je	.LBB46_117
# BB#116:                               # %if.then.429
                                        #   in Loop: Header=BB46_100 Depth=2
	jmp	.LBB46_118
.LBB46_117:                             # %if.end.430
                                        #   in Loop: Header=BB46_103 Depth=3
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB46_103
.LBB46_118:                             # %while.end.433
                                        #   in Loop: Header=BB46_100 Depth=2
	cmpq	$0, -192(%rbp)
	jne	.LBB46_120
# BB#119:                               # %if.then.436
                                        #   in Loop: Header=BB46_98 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB46_121
.LBB46_120:                             # %if.end.438
                                        #   in Loop: Header=BB46_100 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB46_100
.LBB46_121:                             # %while.end.440
                                        #   in Loop: Header=BB46_98 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB46_98
.LBB46_122:                             # %while.end.442
	jmp	.LBB46_276
.LBB46_123:                             # %if.else.443
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB46_247
# BB#124:                               # %land.lhs.true.446
	testb	$1, -97(%rbp)
	je	.LBB46_247
# BB#125:                               # %if.then.449
	jmp	.LBB46_126
.LBB46_126:                             # %while.cond.450
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_128 Depth 2
                                        #       Child Loop BB46_132 Depth 3
                                        #         Child Loop BB46_141 Depth 4
                                        #         Child Loop BB46_149 Depth 4
                                        #       Child Loop BB46_239 Depth 3
	cmpq	$0, -32(%rbp)
	jge	.LBB46_246
# BB#127:                               # %while.body.453
                                        #   in Loop: Header=BB46_126 Depth=1
	jmp	.LBB46_128
.LBB46_128:                             # %while.body.455
                                        #   Parent Loop BB46_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_132 Depth 3
                                        #         Child Loop BB46_141 Depth 4
                                        #         Child Loop BB46_149 Depth 4
                                        #       Child Loop BB46_239 Depth 3
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-224(%rbp), %rax
	subq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB46_130
# BB#129:                               # %lor.lhs.false.464
                                        #   in Loop: Header=BB46_128 Depth=2
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB46_131
.LBB46_130:                             # %if.then.468
	jmp	.LBB46_278
.LBB46_131:                             # %if.end.469
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_132
.LBB46_132:                             # %while.cond.470
                                        #   Parent Loop BB46_126 Depth=1
                                        #     Parent Loop BB46_128 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB46_141 Depth 4
                                        #         Child Loop BB46_149 Depth 4
	cmpq	$0, -240(%rbp)
	jle	.LBB46_229
# BB#133:                               # %while.body.473
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_134
.LBB46_134:                             # %do.body.476
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%edi, %edi
	movq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_136
# BB#135:                               # %if.then.482
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB46_145
.LBB46_136:                             # %if.else.484
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_137
.LBB46_137:                             # %do.body.485
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB46_139
# BB#138:                               # %if.then.492
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -264(%rbp)
	jmp	.LBB46_140
.LBB46_139:                             # %if.else.497
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -264(%rbp)
.LBB46_140:                             # %if.end.505
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_141
.LBB46_141:                             # %while.cond.506
                                        #   Parent Loop BB46_126 Depth=1
                                        #     Parent Loop BB46_128 Depth=2
                                        #       Parent Loop BB46_132 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB46_142
	jmp	.LBB46_143
.LBB46_142:                             # %while.body.512
                                        #   in Loop: Header=BB46_141 Depth=4
	movq	-264(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -264(%rbp)
	movq	-232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB46_141
.LBB46_143:                             # %while.end.515
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_144
.LBB46_144:                             # %do.end.516
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_145
.LBB46_145:                             # %if.end.517
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_146
.LBB46_146:                             # %do.end.518
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_147
.LBB46_147:                             # %do.body.519
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB46_166
# BB#148:                               # %if.then.522
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)
.LBB46_149:                             # %do.body.524
                                        #   Parent Loop BB46_126 Depth=1
                                        #     Parent Loop BB46_128 Depth=2
                                        #       Parent Loop BB46_132 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-272(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -272(%rbp)
# BB#150:                               # %do.cond
                                        #   in Loop: Header=BB46_149 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-272(%rbp), %rdx
	cmpq	-40(%rbp), %rdx
	movb	%cl, -561(%rbp)         # 1-byte Spill
	jb	.LBB46_152
# BB#151:                               # %land.rhs
                                        #   in Loop: Header=BB46_149 Depth=4
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -561(%rbp)         # 1-byte Spill
.LBB46_152:                             # %land.end
                                        #   in Loop: Header=BB46_149 Depth=4
	movb	-561(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_149
# BB#153:                               # %do.end.533
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_155
# BB#154:                               # %cond.true.537
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	$1, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB46_162
.LBB46_155:                             # %cond.false.538
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_157
# BB#156:                               # %cond.true.542
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	$2, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB46_161
.LBB46_157:                             # %cond.false.543
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_159
# BB#158:                               # %cond.true.547
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	$3, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB46_160
.LBB46_159:                             # %cond.false.548
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	$5, %eax
	movl	$4, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB46_160:                             # %cond.end.554
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB46_161:                             # %cond.end.556
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB46_162:                             # %cond.end.558
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-568(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx
	movq	-272(%rbp), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB46_164
# BB#163:                               # %cond.true.563
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-272(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB46_165
.LBB46_164:                             # %cond.false.564
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB46_165:                             # %cond.end.566
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
.LBB46_166:                             # %if.end.568
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_167
.LBB46_167:                             # %do.end.570
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_169
# BB#168:                               # %cond.true.575
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	jmp	.LBB46_176
.LBB46_169:                             # %cond.false.578
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_171
# BB#170:                               # %cond.true.583
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-248(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-248(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-248(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -592(%rbp)        # 4-byte Spill
	jmp	.LBB46_175
.LBB46_171:                             # %cond.false.598
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_173
# BB#172:                               # %cond.true.603
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-248(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-248(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	jmp	.LBB46_174
.LBB46_173:                             # %cond.false.617
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB46_174:                             # %cond.end.619
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB46_175:                             # %cond.end.621
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB46_176:                             # %cond.end.623
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)
	movq	-232(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	jl	.LBB46_178
# BB#177:                               # %cond.true.629
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB46_179
.LBB46_178:                             # %cond.false.632
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB46_179
.LBB46_179:                             # %cond.end.633
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-608(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB46_184
# BB#180:                               # %cond.true.644
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_182
# BB#181:                               # %cond.true.649
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB46_183
.LBB46_182:                             # %cond.false.652
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB46_183
.LBB46_183:                             # %cond.end.653
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-616(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -620(%rbp)        # 4-byte Spill
	jmp	.LBB46_218
.LBB46_184:                             # %cond.false.662
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_186
# BB#185:                               # %cond.true.667
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB46_187
.LBB46_186:                             # %cond.false.670
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB46_187
.LBB46_187:                             # %cond.end.671
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-632(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB46_198
# BB#188:                               # %cond.true.682
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_190
# BB#189:                               # %cond.true.687
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB46_191
.LBB46_190:                             # %cond.false.690
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB46_191
.LBB46_191:                             # %cond.end.691
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-640(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$31, %edx
	shll	$6, %edx
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -644(%rbp)        # 4-byte Spill
	jl	.LBB46_193
# BB#192:                               # %cond.true.706
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB46_194
.LBB46_193:                             # %cond.false.709
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB46_194
.LBB46_194:                             # %cond.end.710
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-656(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-644(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -660(%rbp)        # 4-byte Spill
	jl	.LBB46_196
# BB#195:                               # %cond.true.725
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB46_197
.LBB46_196:                             # %cond.false.728
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB46_197
.LBB46_197:                             # %cond.end.729
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-672(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	addq	-232(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	(%rsi), %rsi
	movzbl	-1(%rsi,%rax), %edi
	cmpl	$194, %edi
	cmovll	%edx, %ecx
	movl	-660(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -676(%rbp)        # 4-byte Spill
	jmp	.LBB46_217
.LBB46_198:                             # %cond.false.742
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_200
# BB#199:                               # %cond.true.747
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB46_201
.LBB46_200:                             # %cond.false.750
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB46_201
.LBB46_201:                             # %cond.end.751
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-688(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB46_212
# BB#202:                               # %cond.true.762
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_204
# BB#203:                               # %cond.true.767
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB46_205
.LBB46_204:                             # %cond.false.770
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB46_205
.LBB46_205:                             # %cond.end.771
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-696(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%edx, -700(%rbp)        # 4-byte Spill
	jl	.LBB46_207
# BB#206:                               # %cond.true.786
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB46_208
.LBB46_207:                             # %cond.false.789
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB46_208
.LBB46_208:                             # %cond.end.790
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-712(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	movl	-700(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movl	%esi, -716(%rbp)        # 4-byte Spill
	jl	.LBB46_210
# BB#209:                               # %cond.true.806
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB46_211
.LBB46_210:                             # %cond.false.809
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB46_211
.LBB46_211:                             # %cond.end.810
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-728(%rbp), %rax        # 8-byte Reload
	addq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	1(%rcx,%rax), %edx
	andl	$63, %edx
	movl	-716(%rbp), %esi        # 4-byte Reload
	orl	%edx, %esi
	movl	%esi, -732(%rbp)        # 4-byte Spill
	jmp	.LBB46_216
.LBB46_212:                             # %cond.false.821
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-232(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_214
# BB#213:                               # %cond.true.826
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB46_215
.LBB46_214:                             # %cond.false.829
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB46_215
.LBB46_215:                             # %cond.end.830
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-744(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-232(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	(%rsi), %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	string_char
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB46_216:                             # %cond.end.838
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-732(%rbp), %eax        # 4-byte Reload
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB46_217:                             # %cond.end.840
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB46_218:                             # %cond.end.842
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)
# BB#219:                               # %do.body.844
                                        #   in Loop: Header=BB46_132 Depth=3
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_224
# BB#220:                               # %if.then.848
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-64(%rbp), %rdi
	movslq	-256(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_222
# BB#221:                               # %if.then.859
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -256(%rbp)
	jmp	.LBB46_223
.LBB46_222:                             # %if.else.862
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-256(%rbp), %eax
	movl	%eax, -256(%rbp)
.LBB46_223:                             # %if.end.863
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_225
.LBB46_224:                             # %if.else.864
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-256(%rbp), %eax
	movl	%eax, -256(%rbp)
.LBB46_225:                             # %if.end.865
                                        #   in Loop: Header=BB46_132 Depth=3
	jmp	.LBB46_226
.LBB46_226:                             # %do.end.867
                                        #   in Loop: Header=BB46_132 Depth=3
	movl	-256(%rbp), %eax
	cmpl	-252(%rbp), %eax
	je	.LBB46_228
# BB#227:                               # %if.then.870
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_229
.LBB46_228:                             # %if.end.871
                                        #   in Loop: Header=BB46_132 Depth=3
	movq	-240(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB46_132
.LBB46_229:                             # %while.end.873
                                        #   in Loop: Header=BB46_128 Depth=2
	cmpq	$0, -240(%rbp)
	jne	.LBB46_231
# BB#230:                               # %if.then.876
                                        #   in Loop: Header=BB46_126 Depth=1
	movq	-80(%rbp), %rax
	subq	-232(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB46_245
.LBB46_231:                             # %if.end.878
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_232
.LBB46_232:                             # %do.body.879
                                        #   in Loop: Header=BB46_128 Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_234
# BB#233:                               # %if.then.885
                                        #   in Loop: Header=BB46_128 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB46_243
.LBB46_234:                             # %if.else.887
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_235
.LBB46_235:                             # %do.body.888
                                        #   in Loop: Header=BB46_128 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB46_237
# BB#236:                               # %if.then.895
                                        #   in Loop: Header=BB46_128 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB46_238
.LBB46_237:                             # %if.else.900
                                        #   in Loop: Header=BB46_128 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
.LBB46_238:                             # %if.end.908
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_239
.LBB46_239:                             # %while.cond.909
                                        #   Parent Loop BB46_126 Depth=1
                                        #     Parent Loop BB46_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-288(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB46_240
	jmp	.LBB46_241
.LBB46_240:                             # %while.body.915
                                        #   in Loop: Header=BB46_239 Depth=3
	movq	-288(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB46_239
.LBB46_241:                             # %while.end.918
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_242
.LBB46_242:                             # %do.end.920
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_243
.LBB46_243:                             # %if.end.921
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_244
.LBB46_244:                             # %do.end.923
                                        #   in Loop: Header=BB46_128 Depth=2
	jmp	.LBB46_128
.LBB46_245:                             # %while.end.924
                                        #   in Loop: Header=BB46_126 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB46_126
.LBB46_246:                             # %while.end.926
	jmp	.LBB46_275
.LBB46_247:                             # %if.else.927
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB46_274
# BB#248:                               # %if.then.930
	jmp	.LBB46_249
.LBB46_249:                             # %while.cond.931
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_251 Depth 2
                                        #       Child Loop BB46_254 Depth 3
	cmpq	$0, -32(%rbp)
	jge	.LBB46_273
# BB#250:                               # %while.body.934
                                        #   in Loop: Header=BB46_249 Depth=1
	jmp	.LBB46_251
.LBB46_251:                             # %while.body.936
                                        #   Parent Loop BB46_249 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_254 Depth 3
	movq	-72(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-296(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB46_253
# BB#252:                               # %if.then.943
	jmp	.LBB46_278
.LBB46_253:                             # %if.end.944
                                        #   in Loop: Header=BB46_251 Depth=2
	jmp	.LBB46_254
.LBB46_254:                             # %while.cond.945
                                        #   Parent Loop BB46_249 Depth=1
                                        #     Parent Loop BB46_251 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -304(%rbp)
	jle	.LBB46_269
# BB#255:                               # %while.body.948
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -316(%rbp)
	movq	-296(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_257
# BB#256:                               # %cond.true.957
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB46_258
.LBB46_257:                             # %cond.false.960
                                        #   in Loop: Header=BB46_254 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB46_258
.LBB46_258:                             # %cond.end.961
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	-768(%rbp), %rax        # 8-byte Reload
	addq	-296(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -320(%rbp)
# BB#259:                               # %do.body.969
                                        #   in Loop: Header=BB46_254 Depth=3
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_264
# BB#260:                               # %if.then.973
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	-64(%rbp), %rdi
	movslq	-320(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_262
# BB#261:                               # %if.then.984
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	-328(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -320(%rbp)
	jmp	.LBB46_263
.LBB46_262:                             # %if.else.987
                                        #   in Loop: Header=BB46_254 Depth=3
	movl	-320(%rbp), %eax
	movl	%eax, -320(%rbp)
.LBB46_263:                             # %if.end.988
                                        #   in Loop: Header=BB46_254 Depth=3
	jmp	.LBB46_265
.LBB46_264:                             # %if.else.989
                                        #   in Loop: Header=BB46_254 Depth=3
	movl	-320(%rbp), %eax
	movl	%eax, -320(%rbp)
.LBB46_265:                             # %if.end.990
                                        #   in Loop: Header=BB46_254 Depth=3
	jmp	.LBB46_266
.LBB46_266:                             # %do.end.992
                                        #   in Loop: Header=BB46_254 Depth=3
	movl	-320(%rbp), %eax
	cmpl	-316(%rbp), %eax
	je	.LBB46_268
# BB#267:                               # %if.then.995
                                        #   in Loop: Header=BB46_251 Depth=2
	jmp	.LBB46_269
.LBB46_268:                             # %if.end.996
                                        #   in Loop: Header=BB46_254 Depth=3
	movq	-304(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB46_254
.LBB46_269:                             # %while.end.999
                                        #   in Loop: Header=BB46_251 Depth=2
	cmpq	$0, -304(%rbp)
	jne	.LBB46_271
# BB#270:                               # %if.then.1002
                                        #   in Loop: Header=BB46_249 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB46_272
.LBB46_271:                             # %if.end.1004
                                        #   in Loop: Header=BB46_251 Depth=2
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB46_251
.LBB46_272:                             # %while.end.1006
                                        #   in Loop: Header=BB46_249 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB46_249
.LBB46_273:                             # %while.end.1008
	jmp	.LBB46_274
.LBB46_274:                             # %if.end.1009
	jmp	.LBB46_275
.LBB46_275:                             # %if.end.1010
	jmp	.LBB46_276
.LBB46_276:                             # %if.end.1011
	jmp	.LBB46_277
.LBB46_277:                             # %if.end.1012
	jmp	.LBB46_278
.LBB46_278:                             # %stop
	cmpq	$0, -32(%rbp)
	jne	.LBB46_289
# BB#279:                               # %if.then.1015
	testb	$1, -98(%rbp)
	je	.LBB46_284
# BB#280:                               # %if.then.1017
	testb	$1, -97(%rbp)
	je	.LBB46_282
# BB#281:                               # %cond.true.1020
	movq	-80(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB46_283
.LBB46_282:                             # %cond.false.1021
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB46_283:                             # %cond.end.1022
	movq	-784(%rbp), %rax        # 8-byte Reload
	subq	-112(%rbp), %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_search_regs
	jmp	.LBB46_288
.LBB46_284:                             # %if.else.1025
	testb	$1, -97(%rbp)
	je	.LBB46_286
# BB#285:                               # %cond.true.1028
	movq	-80(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB46_287
.LBB46_286:                             # %cond.false.1029
	movq	-72(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB46_287:                             # %cond.end.1030
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_search_regs
.LBB46_288:                             # %if.end.1032
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB46_292
.LBB46_289:                             # %if.else.1033
	cmpq	$0, -32(%rbp)
	jle	.LBB46_291
# BB#290:                               # %if.then.1036
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB46_292
.LBB46_291:                             # %if.else.1038
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB46_292:                             # %return
	movq	-24(%rbp), %rax
	addq	$784, %rsp              # imm = 0x310
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	simple_search, .Lfunc_end46-simple_search
	.cfi_endproc

	.type	searchbuf_head,@object  # @searchbuf_head
	.local	searchbuf_head
	.comm	searchbuf_head,8,8
	.type	searchbufs,@object      # @searchbufs
	.local	searchbufs
	.comm	searchbufs,7200,16
	.type	search_regs,@object     # @search_regs
	.local	search_regs
	.comm	search_regs,24,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"`replace-match' called before any match found"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid use of `\\' in replacement text"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\\"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Match data clobbered by buffer modification hooks"
	.size	.L.str.3, 50

	.type	last_thing_searched,@object # @last_thing_searched
	.local	last_thing_searched
	.comm	last_thing_searched,8,8
	.type	search_regs_saved,@object # @search_regs_saved
	.local	search_regs_saved
	.comm	search_regs_saved,1,1
	.type	saved_search_regs,@object # @saved_search_regs
	.local	saved_search_regs
	.comm	saved_search_regs,24,8
	.type	saved_last_thing_searched,@object # @saved_last_thing_searched
	.local	saved_last_thing_searched
	.comm	saved_last_thing_searched,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Search failed"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid regexp"
	.size	.L.str.5, 15

	.type	syms_of_search.o_fwd,@object # @syms_of_search.o_fwd
	.local	syms_of_search.o_fwd
	.comm	syms_of_search.o_fwd,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"search-spaces-regexp"
	.size	.L.str.6, 21

	.type	syms_of_search.o_fwd.7,@object # @syms_of_search.o_fwd.7
	.local	syms_of_search.o_fwd.7
	.comm	syms_of_search.o_fwd.7,16,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"inhibit-changing-match-data"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Stack overflow in regexp matcher"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Invalid search bound (wrong side of point)"
	.size	.L.str.10, 43

	.type	search_regs_1,@object   # @search_regs_1
	.local	search_regs_1
	.comm	search_regs_1,24,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"No match data, because no search succeeded"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"looking-at"
	.size	.L.str.12, 11

	.type	Slooking_at,@object     # @Slooking_at
	.data
	.align	8
Slooking_at:
	.quad	167772160               # 0xa000000
	.quad	Flooking_at
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Slooking_at, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"posix-looking-at"
	.size	.L.str.13, 17

	.type	Sposix_looking_at,@object # @Sposix_looking_at
	.data
	.align	8
Sposix_looking_at:
	.quad	167772160               # 0xa000000
	.quad	Fposix_looking_at
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Sposix_looking_at, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"string-match"
	.size	.L.str.14, 13

	.type	Sstring_match,@object   # @Sstring_match
	.data
	.align	8
Sstring_match:
	.quad	167772160               # 0xa000000
	.quad	Fstring_match
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Sstring_match, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"posix-string-match"
	.size	.L.str.15, 19

	.type	Sposix_string_match,@object # @Sposix_string_match
	.data
	.align	8
Sposix_string_match:
	.quad	167772160               # 0xa000000
	.quad	Fposix_string_match
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sposix_string_match, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"search-forward"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"MSearch: "
	.size	.L.str.17, 10

	.type	Ssearch_forward,@object # @Ssearch_forward
	.data
	.align	8
Ssearch_forward:
	.quad	167772160               # 0xa000000
	.quad	Fsearch_forward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0
	.size	Ssearch_forward, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"search-backward"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"MSearch backward: "
	.size	.L.str.19, 19

	.type	Ssearch_backward,@object # @Ssearch_backward
	.data
	.align	8
Ssearch_backward:
	.quad	167772160               # 0xa000000
	.quad	Fsearch_backward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	0
	.size	Ssearch_backward, 48

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"re-search-forward"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"sRE search: "
	.size	.L.str.21, 13

	.type	Sre_search_forward,@object # @Sre_search_forward
	.data
	.align	8
Sre_search_forward:
	.quad	167772160               # 0xa000000
	.quad	Fre_search_forward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.size	Sre_search_forward, 48

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"re-search-backward"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"sRE search backward: "
	.size	.L.str.23, 22

	.type	Sre_search_backward,@object # @Sre_search_backward
	.data
	.align	8
Sre_search_backward:
	.quad	167772160               # 0xa000000
	.quad	Fre_search_backward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.size	Sre_search_backward, 48

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"posix-search-forward"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"sPosix search: "
	.size	.L.str.25, 16

	.type	Sposix_search_forward,@object # @Sposix_search_forward
	.data
	.align	8
Sposix_search_forward:
	.quad	167772160               # 0xa000000
	.quad	Fposix_search_forward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.size	Sposix_search_forward, 48

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"posix-search-backward"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"sPosix search backward: "
	.size	.L.str.27, 25

	.type	Sposix_search_backward,@object # @Sposix_search_backward
	.data
	.align	8
Sposix_search_backward:
	.quad	167772160               # 0xa000000
	.quad	Fposix_search_backward
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	0
	.size	Sposix_search_backward, 48

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"replace-match"
	.size	.L.str.28, 14

	.type	Sreplace_match,@object  # @Sreplace_match
	.data
	.align	8
Sreplace_match:
	.quad	167772160               # 0xa000000
	.quad	Freplace_match
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.28
	.quad	0
	.quad	0
	.size	Sreplace_match, 48

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"match-beginning"
	.size	.L.str.29, 16

	.type	Smatch_beginning,@object # @Smatch_beginning
	.data
	.align	8
Smatch_beginning:
	.quad	167772160               # 0xa000000
	.quad	Fmatch_beginning
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.29
	.quad	0
	.quad	0
	.size	Smatch_beginning, 48

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"match-end"
	.size	.L.str.30, 10

	.type	Smatch_end,@object      # @Smatch_end
	.data
	.align	8
Smatch_end:
	.quad	167772160               # 0xa000000
	.quad	Fmatch_end
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.30
	.quad	0
	.quad	0
	.size	Smatch_end, 48

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"match-data"
	.size	.L.str.31, 11

	.type	Smatch_data,@object     # @Smatch_data
	.data
	.align	8
Smatch_data:
	.quad	167772160               # 0xa000000
	.quad	Fmatch_data
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.31
	.quad	0
	.quad	0
	.size	Smatch_data, 48

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"set-match-data"
	.size	.L.str.32, 15

	.type	Sset_match_data,@object # @Sset_match_data
	.data
	.align	8
Sset_match_data:
	.quad	167772160               # 0xa000000
	.quad	Fset_match_data
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.size	Sset_match_data, 48

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"regexp-quote"
	.size	.L.str.33, 13

	.type	Sregexp_quote,@object   # @Sregexp_quote
	.data
	.align	8
Sregexp_quote:
	.quad	167772160               # 0xa000000
	.quad	Fregexp_quote
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.size	Sregexp_quote, 48

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"newline-cache-check"
	.size	.L.str.34, 20

	.type	Snewline_cache_check,@object # @Snewline_cache_check
	.data
	.align	8
Snewline_cache_check:
	.quad	167772160               # 0xa000000
	.quad	Fnewline_cache_check
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.34
	.quad	0
	.quad	0
	.size	Snewline_cache_check, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
