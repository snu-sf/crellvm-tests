	.text
	.file	"bytecode.bc"
	.globl	relocate_byte_stack
	.align	16, 0x90
	.type	relocate_byte_stack,@function
relocate_byte_stack:                    # @relocate_byte_stack
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
	movq	byte_stack_list, %rax
	movq	%rax, -8(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SDATA
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	relocate_byte_stack, .Lfunc_end0-relocate_byte_stack
	.cfi_endproc

	.globl	Fbyte_code
	.align	16, 0x90
	.type	Fbyte_code,@function
Fbyte_code:                             # @Fbyte_code
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	exec_byte_code
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fbyte_code, .Lfunc_end1-Fbyte_code
	.cfi_endproc

	.globl	exec_byte_code
	.align	16, 0x90
	.type	exec_byte_code,@function
exec_byte_code:                         # @exec_byte_code
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
	subq	$1872, %rsp             # imm = 0x750
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-24(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	Fstring_as_unibyte
	movq	%rax, -8(%rbp)
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movl	$2048, %ecx             # imm = 0x800
	movl	%ecx, %edi
	movq	%rax, -88(%rbp)
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	%rax, %rdi
	jg	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	$-1, %rdi
	callq	memory_full
.LBB2_4:                                # %if.end.6
	leaq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movabsq	$9223372036854775804, %rdx # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rdx, %rcx
	leaq	23(%rcx,%rcx), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -112(%rbp)
	movq	byte_stack_list, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, byte_stack_list
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB2_32
# BB#5:                                 # %if.then.11
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$128, %rax
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -137(%rbp)
	movq	-136(%rbp), %rax
	andq	$127, %rax
	movl	%eax, %edx
	movl	%edx, -144(%rbp)
	movq	-136(%rbp), %rax
	sarq	$8, %rax
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jg	.LBB2_23
# BB#6:                                 # %if.then.21
	movq	$0, -160(%rbp)
.LBB2_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB2_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end
	movq	-40(%rbp), %rax
	movslq	-144(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_15
# BB#11:                                # %if.then.28
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movslq	-144(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	testb	$1, -137(%rbp)
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	je	.LBB2_13
# BB#12:                                # %cond.true
	movl	$173, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false
	movq	-152(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB2_14:                               # %cond.end
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-40(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_15:                               # %if.else
	jmp	.LBB2_16
.LBB2_16:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB2_19
# BB#17:                                # %for.body.44
                                        #   in Loop: Header=BB2_16 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#18:                                # %for.inc.47
                                        #   in Loop: Header=BB2_16 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB2_16
.LBB2_19:                               # %for.end.49
	testb	$1, -137(%rbp)
	je	.LBB2_21
# BB#20:                                # %if.then.51
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_21:                               # %if.end.54
	jmp	.LBB2_22
.LBB2_22:                               # %if.end.55
	jmp	.LBB2_31
.LBB2_23:                               # %if.else.56
	testb	$1, -137(%rbp)
	je	.LBB2_29
# BB#24:                                # %if.then.58
	movq	$0, -168(%rbp)
.LBB2_25:                               # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB2_28
# BB#26:                                # %for.body.63
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#27:                                # %for.inc.65
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_25
.LBB2_28:                               # %for.end.68
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Flist
	movq	-112(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else.71
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movslq	-144(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-152(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list2
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB2_30:                               # %if.end.83
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.84
	jmp	.LBB2_35
.LBB2_32:                               # %if.else.85
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_34
# BB#33:                                # %if.then.89
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB2_34:                               # %if.end.90
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.91
	jmp	.LBB2_36
.LBB2_36:                               # %while.body
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp9:                                 # Block address taken
.LBB2_37:                               # %insn_Bvarref7
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_45
.Ltmp10:                                # Block address taken
.LBB2_38:                               # %insn_Bvarref
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_39
.Ltmp11:                                # Block address taken
.LBB2_39:                               # %insn_Bvarref1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_40
.Ltmp12:                                # Block address taken
.LBB2_40:                               # %insn_Bvarref2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_41
.Ltmp13:                                # Block address taken
.LBB2_41:                               # %insn_Bvarref3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_42
.Ltmp14:                                # Block address taken
.LBB2_42:                               # %insn_Bvarref4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_43
.Ltmp15:                                # Block address taken
.LBB2_43:                               # %insn_Bvarref5
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_45
.Ltmp16:                                # Block address taken
.LBB2_44:                               # %insn_Bvarref6
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
.LBB2_45:                               # %varref
                                        #   in Loop: Header=BB2_488 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB2_50
# BB#46:                                # %if.then.113
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-176(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$4, %edx
	jne	.LBB2_48
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-176(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+16(,%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_49
.LBB2_48:                               # %if.then.122
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-176(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -184(%rbp)
.LBB2_49:                               # %if.end.124
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_51
.LBB2_50:                               # %if.else.125
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-176(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -184(%rbp)
.LBB2_51:                               # %if.end.127
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp17:                                # Block address taken
.LBB2_52:                               # %insn_Bgotoifnil
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_53
.LBB2_53:                               # %do.body
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#54:                                # %do.end
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_66
# BB#55:                                # %if.then.147
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_56
.LBB2_56:                               # %do.body.148
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_61
# BB#57:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-992(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_61
# BB#58:                                # %if.then.155
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -200(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB2_60
# BB#59:                                # %if.then.159
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB2_60:                               # %if.end.161
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB2_64
.LBB2_61:                               # %if.else.165
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_63
# BB#62:                                # %if.then.167
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_63:                               # %if.end.168
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_64
.LBB2_64:                               # %if.end.169
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_65
.LBB2_65:                               # %do.end.170
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
.LBB2_66:                               # %if.end.174
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp18:                                # Block address taken
.LBB2_67:                               # %insn_Bcar
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_69
# BB#68:                                # %if.then.185
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_73
.LBB2_69:                               # %if.else.187
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_71
# BB#70:                                # %if.then.191
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_72
.LBB2_71:                               # %if.else.193
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB2_72:                               # %if.end.195
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_73
.LBB2_73:                               # %if.end.196
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp19:                                # Block address taken
.LBB2_74:                               # %insn_Beq
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB2_76
# BB#75:                                # %cond.true.206
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB2_77
.LBB2_76:                               # %cond.false.208
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB2_77:                               # %cond.end.210
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp20:                                # Block address taken
.LBB2_78:                               # %insn_Bmemq
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-224(%rbp), %rsi
	callq	Fmemq
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp21:                                # Block address taken
.LBB2_79:                               # %insn_Bcdr
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_81
# BB#80:                                # %if.then.230
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_85
.LBB2_81:                               # %if.else.232
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-232(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_83
# BB#82:                                # %if.then.236
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_84
.LBB2_83:                               # %if.else.238
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB2_84:                               # %if.end.240
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_85
.LBB2_85:                               # %if.end.241
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp22:                                # Block address taken
.LBB2_86:                               # %insn_Bvarset
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_87
.Ltmp23:                                # Block address taken
.LBB2_87:                               # %insn_Bvarset1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_88
.Ltmp24:                                # Block address taken
.LBB2_88:                               # %insn_Bvarset2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_89
.Ltmp25:                                # Block address taken
.LBB2_89:                               # %insn_Bvarset3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_90
.Ltmp26:                                # Block address taken
.LBB2_90:                               # %insn_Bvarset4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_91
.Ltmp27:                                # Block address taken
.LBB2_91:                               # %insn_Bvarset5
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$16, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_94
.Ltmp28:                                # Block address taken
.LBB2_92:                               # %insn_Bvarset7
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_94
.Ltmp29:                                # Block address taken
.LBB2_93:                               # %insn_Bvarset6
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
.LBB2_94:                               # %varset
                                        #   in Loop: Header=BB2_488 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -240(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB2_99
# BB#95:                                # %land.lhs.true.266
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-248(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_99
# BB#96:                                # %land.lhs.true.270
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-240(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB2_99
# BB#97:                                # %land.lhs.true.278
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-240(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB2_99
# BB#98:                                # %if.then.286
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-248(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	$0, %rcx
	movq	%rax, lispsym+16(,%rcx)
	jmp	.LBB2_100
.LBB2_99:                               # %if.else.291
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rsi
	movq	%rsi, -1080(%rbp)       # 8-byte Spill
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	set_internal
.LBB2_100:                              # %if.end.293
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp30:                                # Block address taken
.LBB2_101:                              # %insn_Bdup
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-256(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp31:                                # Block address taken
.LBB2_102:                              # %insn_Bvarbind6
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_110
.Ltmp32:                                # Block address taken
.LBB2_103:                              # %insn_Bvarbind7
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_110
.Ltmp33:                                # Block address taken
.LBB2_104:                              # %insn_Bvarbind
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_105
.Ltmp34:                                # Block address taken
.LBB2_105:                              # %insn_Bvarbind1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_106
.Ltmp35:                                # Block address taken
.LBB2_106:                              # %insn_Bvarbind2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_107
.Ltmp36:                                # Block address taken
.LBB2_107:                              # %insn_Bvarbind3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_108
.Ltmp37:                                # Block address taken
.LBB2_108:                              # %insn_Bvarbind4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_109
.Ltmp38:                                # Block address taken
.LBB2_109:                              # %insn_Bvarbind5
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -60(%rbp)
.LBB2_110:                              # %varbind
                                        #   in Loop: Header=BB2_488 Depth=1
	movslq	-60(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rsi
	callq	specbind
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp39:                                # Block address taken
.LBB2_111:                              # %insn_Bcall6
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_119
.Ltmp40:                                # Block address taken
.LBB2_112:                              # %insn_Bcall7
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_119
.Ltmp41:                                # Block address taken
.LBB2_113:                              # %insn_Bcall
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_114
.Ltmp42:                                # Block address taken
.LBB2_114:                              # %insn_Bcall1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_115
.Ltmp43:                                # Block address taken
.LBB2_115:                              # %insn_Bcall2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_116
.Ltmp44:                                # Block address taken
.LBB2_116:                              # %insn_Bcall3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_117
.Ltmp45:                                # Block address taken
.LBB2_117:                              # %insn_Bcall4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_118
.Ltmp46:                                # Block address taken
.LBB2_118:                              # %insn_Bcall5
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -60(%rbp)
.LBB2_119:                              # %docall
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	movq	-112(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movq	-112(%rbp), %rsi
	callq	Ffuncall
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp47:                                # Block address taken
.LBB2_120:                              # %insn_Bunbind6
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_128
.Ltmp48:                                # Block address taken
.LBB2_121:                              # %insn_Bunbind7
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB2_128
.Ltmp49:                                # Block address taken
.LBB2_122:                              # %insn_Bunbind
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_123
.Ltmp50:                                # Block address taken
.LBB2_123:                              # %insn_Bunbind1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_124
.Ltmp51:                                # Block address taken
.LBB2_124:                              # %insn_Bunbind2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_125
.Ltmp52:                                # Block address taken
.LBB2_125:                              # %insn_Bunbind3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_126
.Ltmp53:                                # Block address taken
.LBB2_126:                              # %insn_Bunbind4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_127
.Ltmp54:                                # Block address taken
.LBB2_127:                              # %insn_Bunbind5
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$40, %eax
	movl	%eax, -60(%rbp)
.LBB2_128:                              # %dounbind
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movslq	-60(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rcx), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp55:                                # Block address taken
.LBB2_129:                              # %insn_Bunbind_all
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rsi
	movq	exec_byte_code.targets(,%rsi,8), %rsi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	movq	%rsi, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp56:                                # Block address taken
.LBB2_130:                              # %insn_Bgoto
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_131
.LBB2_131:                              # %do.body.378
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#132:                               # %do.end.379
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_133
.LBB2_133:                              # %do.body.380
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_138
# BB#134:                               # %land.lhs.true.384
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_138
# BB#135:                               # %if.then.388
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -264(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB2_137
# BB#136:                               # %if.then.393
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB2_137:                              # %if.end.395
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB2_141
.LBB2_138:                              # %if.else.399
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_140
# BB#139:                               # %if.then.401
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_140:                              # %if.end.402
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_141
.LBB2_141:                              # %if.end.403
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_142
.LBB2_142:                              # %do.end.404
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp57:                                # Block address taken
.LBB2_143:                              # %insn_Bgotoifnonnil
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_144
.LBB2_144:                              # %do.body.423
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#145:                               # %do.end.424
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_157
# BB#146:                               # %if.then.437
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_147
.LBB2_147:                              # %do.body.438
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_152
# BB#148:                               # %land.lhs.true.442
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_152
# BB#149:                               # %if.then.446
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -280(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB2_151
# BB#150:                               # %if.then.451
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB2_151:                              # %if.end.453
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB2_155
.LBB2_152:                              # %if.else.457
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_154
# BB#153:                               # %if.then.459
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_154:                              # %if.end.460
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_155
.LBB2_155:                              # %if.end.461
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_156
.LBB2_156:                              # %do.end.462
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
.LBB2_157:                              # %if.end.467
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp58:                                # Block address taken
.LBB2_158:                              # %insn_Bgotoifnilelsepop
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_159
.LBB2_159:                              # %do.body.473
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#160:                               # %do.end.474
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_172
# BB#161:                               # %if.then.486
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_162
.LBB2_162:                              # %do.body.487
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_167
# BB#163:                               # %land.lhs.true.491
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_167
# BB#164:                               # %if.then.495
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -288(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-288(%rbp), %rax
	jne	.LBB2_166
# BB#165:                               # %if.then.500
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB2_166:                              # %if.end.502
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB2_170
.LBB2_167:                              # %if.else.506
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_169
# BB#168:                               # %if.then.508
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_169:                              # %if.end.509
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_170
.LBB2_170:                              # %if.end.510
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_171
.LBB2_171:                              # %do.end.511
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB2_173
.LBB2_172:                              # %if.else.516
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
.LBB2_173:                              # %if.end.518
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp59:                                # Block address taken
.LBB2_174:                              # %insn_Bgotoifnonnilelsepop
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_175
.LBB2_175:                              # %do.body.524
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#176:                               # %do.end.525
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_188
# BB#177:                               # %if.then.537
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_178
.LBB2_178:                              # %do.body.538
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_183
# BB#179:                               # %land.lhs.true.542
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_183
# BB#180:                               # %if.then.546
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -296(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB2_182
# BB#181:                               # %if.then.551
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB2_182:                              # %if.end.553
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB2_186
.LBB2_183:                              # %if.else.557
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_185
# BB#184:                               # %if.then.559
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_185:                              # %if.end.560
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_186
.LBB2_186:                              # %if.end.561
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_187
.LBB2_187:                              # %do.end.562
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB2_189
.LBB2_188:                              # %if.else.567
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
.LBB2_189:                              # %if.end.569
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp60:                                # Block address taken
.LBB2_190:                              # %insn_BRgoto
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_191
.LBB2_191:                              # %do.body.575
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#192:                               # %do.end.576
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_193
.LBB2_193:                              # %do.body.577
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_198
# BB#194:                               # %land.lhs.true.581
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_198
# BB#195:                               # %if.then.585
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -304(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB2_197
# BB#196:                               # %if.then.590
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1368(%rbp)       # 8-byte Spill
.LBB2_197:                              # %if.end.592
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB2_201
.LBB2_198:                              # %if.else.596
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_200
# BB#199:                               # %if.then.598
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_200:                              # %if.end.599
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_201
.LBB2_201:                              # %if.end.600
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_202
.LBB2_202:                              # %do.end.601
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$127, %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp61:                                # Block address taken
.LBB2_203:                              # %insn_BRgotoifnil
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_204
.LBB2_204:                              # %do.body.614
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#205:                               # %do.end.615
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_217
# BB#206:                               # %if.then.620
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_207
.LBB2_207:                              # %do.body.621
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_212
# BB#208:                               # %land.lhs.true.625
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_212
# BB#209:                               # %if.then.629
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -320(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB2_211
# BB#210:                               # %if.then.634
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1424(%rbp)       # 8-byte Spill
.LBB2_211:                              # %if.end.636
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB2_215
.LBB2_212:                              # %if.else.640
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_214
# BB#213:                               # %if.then.642
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_214:                              # %if.end.643
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_215
.LBB2_215:                              # %if.end.644
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_216
.LBB2_216:                              # %do.end.645
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
.LBB2_217:                              # %if.end.652
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp62:                                # Block address taken
.LBB2_218:                              # %insn_BRgotoifnonnil
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_219
.LBB2_219:                              # %do.body.661
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#220:                               # %do.end.662
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1448(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_232
# BB#221:                               # %if.then.667
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_222
.LBB2_222:                              # %do.body.668
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_227
# BB#223:                               # %land.lhs.true.672
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1464(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_227
# BB#224:                               # %if.then.676
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -336(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-336(%rbp), %rax
	jne	.LBB2_226
# BB#225:                               # %if.then.681
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB2_226:                              # %if.end.683
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB2_230
.LBB2_227:                              # %if.else.687
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_229
# BB#228:                               # %if.then.689
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_229:                              # %if.end.690
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_230
.LBB2_230:                              # %if.end.691
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_231
.LBB2_231:                              # %do.end.692
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
.LBB2_232:                              # %if.end.699
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp63:                                # Block address taken
.LBB2_233:                              # %insn_BRgotoifnilelsepop
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_234
.LBB2_234:                              # %do.body.707
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#235:                               # %do.end.708
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_247
# BB#236:                               # %if.then.715
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_237
.LBB2_237:                              # %do.body.716
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1512(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_242
# BB#238:                               # %land.lhs.true.720
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_242
# BB#239:                               # %if.then.724
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -344(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB2_241
# BB#240:                               # %if.then.729
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB2_241:                              # %if.end.731
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB2_245
.LBB2_242:                              # %if.else.735
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_244
# BB#243:                               # %if.then.737
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_244:                              # %if.end.738
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_245
.LBB2_245:                              # %if.end.739
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_246
.LBB2_246:                              # %do.end.740
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$128, %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	jmp	.LBB2_248
.LBB2_247:                              # %if.else.745
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
.LBB2_248:                              # %if.end.747
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp64:                                # Block address taken
.LBB2_249:                              # %insn_BRgotoifnonnilelsepop
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_250
.LBB2_250:                              # %do.body.753
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	maybe_gc
# BB#251:                               # %do.end.754
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_263
# BB#252:                               # %if.then.761
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_253
.LBB2_253:                              # %do.body.762
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1568(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_258
# BB#254:                               # %land.lhs.true.766
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1576(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_258
# BB#255:                               # %if.then.770
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -352(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	globals+2368, %rax
	cmpq	-352(%rbp), %rax
	jne	.LBB2_257
# BB#256:                               # %if.then.775
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -1592(%rbp)       # 8-byte Spill
.LBB2_257:                              # %if.end.777
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB2_261
.LBB2_258:                              # %if.else.781
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_260
# BB#259:                               # %if.then.783
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	process_pending_signals
.LBB2_260:                              # %if.end.784
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_261
.LBB2_261:                              # %if.end.785
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_262
.LBB2_262:                              # %do.end.786
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-60(%rbp), %eax
	subl	$128, %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	jmp	.LBB2_264
.LBB2_263:                              # %if.else.791
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
.LBB2_264:                              # %if.end.793
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp65:                                # Block address taken
.LBB2_265:                              # %insn_Breturn
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB2_483
.Ltmp66:                                # Block address taken
.LBB2_266:                              # %insn_Bdiscard
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp67:                                # Block address taken
.LBB2_267:                              # %insn_Bconstant2
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp68:                                # Block address taken
.LBB2_268:                              # %insn_Bsave_excursion
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp69:                                # Block address taken
.LBB2_269:                              # %insn_Bsave_current_buffer
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_270
.Ltmp70:                                # Block address taken
.LBB2_270:                              # %insn_Bsave_current_buffer_1
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	record_unwind_current_buffer
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp71:                                # Block address taken
.LBB2_271:                              # %insn_Bsave_window_excursion
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -360(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fcurrent_window_configuration
	movabsq	$restore_window_configuration, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fprogn
	movq	-112(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-360(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	callq	unbind_to
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rsi
	movq	exec_byte_code.targets(,%rsi,8), %rsi
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	movq	%rsi, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp72:                                # Block address taken
.LBB2_272:                              # %insn_Bsave_restriction
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	save_restriction_save
	movabsq	$save_restriction_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp73:                                # Block address taken
.LBB2_273:                              # %insn_Bcatch
                                        #   in Loop: Header=BB2_488 Depth=1
	movabsq	$eval_sub, %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-368(%rbp), %rdx
	callq	internal_catch
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp74:                                # Block address taken
.LBB2_274:                              # %insn_Bpushcatch
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB2_276
.Ltmp75:                                # Block address taken
.LBB2_275:                              # %insn_Bpushconditioncase
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$1, -124(%rbp)
.LBB2_276:                              # %pushhandler
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	addl	%esi, %edx
	movl	%edx, -380(%rbp)
	movq	-376(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	push_handler
	movq	%rax, -392(%rbp)
	movl	-380(%rbp), %edx
	movq	-392(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-392(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB2_278
# BB#277:                               # %if.then.870
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	handlerlist, %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-400(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -404(%rbp)
	movq	-400(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-400(%rbp), %rax
	movq	16(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-96(%rbp), %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movslq	-404(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
.LBB2_278:                              # %if.end.885
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp76:                                # Block address taken
.LBB2_279:                              # %insn_Bpophandler
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp77:                                # Block address taken
.LBB2_280:                              # %insn_Bunwind_protect
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rdi
	callq	Ffunctionp
	xorl	%edi, %edi
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$bcall0, %rcx
	movabsq	$unwind_body, %rdx
	movq	-1624(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	-416(%rbp), %rsi
	movq	%rcx, %rdi
	callq	record_unwind_protect
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp78:                                # Block address taken
.LBB2_281:                              # %insn_Bcondition_case
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-432(%rbp), %rsi
	movq	-424(%rbp), %rdx
	callq	internal_lisp_condition_case
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp79:                                # Block address taken
.LBB2_282:                              # %insn_Btemp_output_buffer_setup
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	CHECK_STRING
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	temp_output_buffer_setup
	movq	globals+2216, %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp80:                                # Block address taken
.LBB2_283:                              # %insn_Btemp_output_buffer_show
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	temp_output_buffer_show
	movq	-440(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	subq	$1, %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rcx), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp81:                                # Block address taken
.LBB2_284:                              # %insn_Bnth
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB2_286
# BB#285:                               # %cond.true.941
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_287
.LBB2_286:                              # %cond.false.942
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB2_287:                              # %cond.end.944
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-456(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -464(%rbp)
	movb	$1, immediate_quit
.LBB2_288:                              # %while.cond.946
                                        #   Parent Loop BB2_488 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -464(%rbp)
	cmpq	$0, %rdx
	movb	%cl, -1649(%rbp)        # 1-byte Spill
	jl	.LBB2_290
# BB#289:                               # %land.rhs
                                        #   in Loop: Header=BB2_288 Depth=2
	movq	-448(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -1649(%rbp)        # 1-byte Spill
.LBB2_290:                              # %land.end
                                        #   in Loop: Header=BB2_288 Depth=2
	movb	-1649(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_291
	jmp	.LBB2_292
.LBB2_291:                              # %while.body.953
                                        #   in Loop: Header=BB2_288 Depth=2
	movq	-448(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -448(%rbp)
	jmp	.LBB2_288
.LBB2_292:                              # %while.end
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	$0, immediate_quit
	movq	-448(%rbp), %rdi
	callq	CAR
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp82:                                # Block address taken
.LBB2_293:                              # %insn_Bsymbolp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_295
# BB#294:                               # %cond.true.967
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB2_296
.LBB2_295:                              # %cond.false.969
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB2_296:                              # %cond.end.971
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp83:                                # Block address taken
.LBB2_297:                              # %insn_Bconsp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_299
# BB#298:                               # %cond.true.982
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB2_300
.LBB2_299:                              # %cond.false.984
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1672(%rbp)       # 8-byte Spill
.LBB2_300:                              # %cond.end.986
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1672(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp84:                                # Block address taken
.LBB2_301:                              # %insn_Bstringp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_302
	jmp	.LBB2_303
.LBB2_302:                              # %cond.true.995
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB2_304
.LBB2_303:                              # %cond.false.997
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB2_304:                              # %cond.end.999
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp85:                                # Block address taken
.LBB2_305:                              # %insn_Blistp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB2_307
# BB#306:                               # %lor.lhs.false.1010
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1688(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_308
.LBB2_307:                              # %cond.true.1014
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB2_309
.LBB2_308:                              # %cond.false.1016
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB2_309:                              # %cond.end.1018
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1696(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp86:                                # Block address taken
.LBB2_310:                              # %insn_Bnot
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1704(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_312
# BB#311:                               # %cond.true.1028
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB2_313
.LBB2_312:                              # %cond.false.1030
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB2_313:                              # %cond.end.1032
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1712(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp87:                                # Block address taken
.LBB2_314:                              # %insn_Bcons
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-472(%rbp), %rsi
	callq	Fcons
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp88:                                # Block address taken
.LBB2_315:                              # %insn_Blist1
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	list1
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp89:                                # Block address taken
.LBB2_316:                              # %insn_Blist2
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-480(%rbp), %rsi
	callq	list2
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp90:                                # Block address taken
.LBB2_317:                              # %insn_Blist3
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$3, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-16, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Flist
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp91:                                # Block address taken
.LBB2_318:                              # %insn_Blist4
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-24, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Flist
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp92:                                # Block address taken
.LBB2_319:                              # %insn_BlistN
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movq	-112(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movslq	-60(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Flist
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp93:                                # Block address taken
.LBB2_320:                              # %insn_Blength
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Flength
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp94:                                # Block address taken
.LBB2_321:                              # %insn_Baref
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-488(%rbp), %rsi
	callq	Faref
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp95:                                # Block address taken
.LBB2_322:                              # %insn_Baset
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdx
	callq	Faset
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp96:                                # Block address taken
.LBB2_323:                              # %insn_Bsymbol_value
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fsymbol_value
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp97:                                # Block address taken
.LBB2_324:                              # %insn_Bsymbol_function
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fsymbol_function
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp98:                                # Block address taken
.LBB2_325:                              # %insn_Bset
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-512(%rbp), %rsi
	callq	Fset
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp99:                                # Block address taken
.LBB2_326:                              # %insn_Bfset
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-520(%rbp), %rsi
	callq	Ffset
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp100:                               # Block address taken
.LBB2_327:                              # %insn_Bget
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-528(%rbp), %rsi
	callq	Fget
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp101:                               # Block address taken
.LBB2_328:                              # %insn_Bsubstring
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-536(%rbp), %rsi
	movq	-544(%rbp), %rdx
	callq	Fsubstring
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp102:                               # Block address taken
.LBB2_329:                              # %insn_Bconcat2
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fconcat
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp103:                               # Block address taken
.LBB2_330:                              # %insn_Bconcat3
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$3, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-16, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fconcat
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp104:                               # Block address taken
.LBB2_331:                              # %insn_Bconcat4
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-24, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fconcat
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp105:                               # Block address taken
.LBB2_332:                              # %insn_BconcatN
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movq	-112(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movslq	-60(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Fconcat
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp106:                               # Block address taken
.LBB2_333:                              # %insn_Bsub1
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_335
# BB#334:                               # %if.then.1200
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-552(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_336
.LBB2_335:                              # %if.else.1205
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-552(%rbp), %rdi
	callq	Fsub1
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB2_336:                              # %if.end.1207
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp107:                               # Block address taken
.LBB2_337:                              # %insn_Badd1
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_339
# BB#338:                               # %if.then.1219
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-560(%rbp), %rax
	sarq	$2, %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_340
.LBB2_339:                              # %if.else.1224
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-560(%rbp), %rdi
	callq	Fadd1
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB2_340:                              # %if.end.1226
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp108:                               # Block address taken
.LBB2_341:                              # %insn_Beqlsign
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
# BB#342:                               # %do.body.1235
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB2_345
# BB#343:                               # %land.lhs.true.1240
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB2_345
# BB#344:                               # %if.then.1244
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -568(%rbp)
	jmp	.LBB2_349
.LBB2_345:                              # %if.else.1247
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB2_346
	jmp	.LBB2_347
.LBB2_346:                              # %cond.true.1250
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_348
.LBB2_347:                              # %cond.false.1251
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1720(%rbp)       # 8-byte Spill
.LBB2_348:                              # %cond.end.1253
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_349
.LBB2_349:                              # %if.end.1254
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_350
.LBB2_350:                              # %do.end.1255
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_351
.LBB2_351:                              # %do.body.1256
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB2_354
# BB#352:                               # %land.lhs.true.1261
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB2_354
# BB#353:                               # %if.then.1265
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -576(%rbp)
	jmp	.LBB2_358
.LBB2_354:                              # %if.else.1268
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB2_355
	jmp	.LBB2_356
.LBB2_355:                              # %cond.true.1271
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_357
.LBB2_356:                              # %cond.false.1272
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB2_357:                              # %cond.end.1274
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_358
.LBB2_358:                              # %if.end.1275
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_359
.LBB2_359:                              # %do.end.1276
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	je	.LBB2_361
# BB#360:                               # %lor.lhs.false.1281
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB2_371
.LBB2_361:                              # %if.then.1286
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB2_363
# BB#362:                               # %cond.true.1291
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -1736(%rbp)      # 8-byte Spill
	jmp	.LBB2_364
.LBB2_363:                              # %cond.false.1293
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -1736(%rbp)      # 8-byte Spill
.LBB2_364:                              # %cond.end.1296
                                        #   in Loop: Header=BB2_488 Depth=1
	movsd	-1736(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)
	movq	-576(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB2_366
# BB#365:                               # %cond.true.1302
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -1744(%rbp)      # 8-byte Spill
	jmp	.LBB2_367
.LBB2_366:                              # %cond.false.1304
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-576(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -1744(%rbp)      # 8-byte Spill
.LBB2_367:                              # %cond.end.1307
                                        #   in Loop: Header=BB2_488 Depth=1
	movsd	-1744(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-592(%rbp), %xmm0
	jne	.LBB2_369
	jp	.LBB2_369
# BB#368:                               # %cond.true.1311
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB2_370
.LBB2_369:                              # %cond.false.1313
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB2_370:                              # %cond.end.1315
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1752(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_375
.LBB2_371:                              # %if.else.1317
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-568(%rbp), %rax
	sarq	$2, %rax
	movq	-576(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_373
# BB#372:                               # %cond.true.1322
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB2_374
.LBB2_373:                              # %cond.false.1324
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1760(%rbp)       # 8-byte Spill
.LBB2_374:                              # %cond.end.1326
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_375:                              # %if.end.1328
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp109:                               # Block address taken
.LBB2_376:                              # %insn_Bgtr
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$3, %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-600(%rbp), %rsi
	callq	arithcompare
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp110:                               # Block address taken
.LBB2_377:                              # %insn_Blss
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-608(%rbp), %rsi
	callq	arithcompare
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp111:                               # Block address taken
.LBB2_378:                              # %insn_Bleq
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$4, %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-616(%rbp), %rsi
	callq	arithcompare
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp112:                               # Block address taken
.LBB2_379:                              # %insn_Bgeq
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$5, %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-624(%rbp), %rsi
	callq	arithcompare
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp113:                               # Block address taken
.LBB2_380:                              # %insn_Bdiff
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fminus
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp114:                               # Block address taken
.LBB2_381:                              # %insn_Bnegate
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_383
# BB#382:                               # %if.then.1379
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-632(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -632(%rbp)
	movq	-632(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rdx)
	jmp	.LBB2_384
.LBB2_383:                              # %if.else.1384
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rsi
	callq	Fminus
	movq	-112(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB2_384:                              # %if.end.1386
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp115:                               # Block address taken
.LBB2_385:                              # %insn_Bplus
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fplus
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp116:                               # Block address taken
.LBB2_386:                              # %insn_Bmax
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fmax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp117:                               # Block address taken
.LBB2_387:                              # %insn_Bmin
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fmin
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp118:                               # Block address taken
.LBB2_388:                              # %insn_Bmult
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Ftimes
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp119:                               # Block address taken
.LBB2_389:                              # %insn_Bquo
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fquo
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp120:                               # Block address taken
.LBB2_390:                              # %insn_Brem
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-640(%rbp), %rsi
	callq	Frem
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp121:                               # Block address taken
.LBB2_391:                              # %insn_Bpoint
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -648(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-648(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp122:                               # Block address taken
.LBB2_392:                              # %insn_Bgoto_char
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fgoto_char
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp123:                               # Block address taken
.LBB2_393:                              # %insn_Binsert
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rsi
	callq	Finsert
	movq	-112(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp124:                               # Block address taken
.LBB2_394:                              # %insn_BinsertN
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movq	-112(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movslq	-60(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Finsert
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp125:                               # Block address taken
.LBB2_395:                              # %insn_Bpoint_max
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -656(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-656(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp126:                               # Block address taken
.LBB2_396:                              # %insn_Bpoint_min
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -664(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-664(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp127:                               # Block address taken
.LBB2_397:                              # %insn_Bchar_after
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fchar_after
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp128:                               # Block address taken
.LBB2_398:                              # %insn_Bfollowing_char
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	Ffollowing_char
	movq	%rax, -672(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-672(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp129:                               # Block address taken
.LBB2_399:                              # %insn_Bpreceding_char
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	Fprevious_char
	movq	%rax, -680(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-680(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp130:                               # Block address taken
.LBB2_400:                              # %insn_Bcurrent_column
                                        #   in Loop: Header=BB2_488 Depth=1
	callq	current_column
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -688(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-688(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp131:                               # Block address taken
.LBB2_401:                              # %insn_Bindent_to
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Findent_to
	movq	-112(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp132:                               # Block address taken
.LBB2_402:                              # %insn_Beolp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Feolp
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp133:                               # Block address taken
.LBB2_403:                              # %insn_Beobp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Feobp
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp134:                               # Block address taken
.LBB2_404:                              # %insn_Bbolp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Fbolp
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp135:                               # Block address taken
.LBB2_405:                              # %insn_Bbobp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Fbobp
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp136:                               # Block address taken
.LBB2_406:                              # %insn_Bcurrent_buffer
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Fcurrent_buffer
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp137:                               # Block address taken
.LBB2_407:                              # %insn_Bset_buffer
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fset_buffer
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp138:                               # Block address taken
.LBB2_408:                              # %insn_Binteractive_p
                                        #   in Loop: Header=BB2_488 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp139:                               # Block address taken
.LBB2_409:                              # %insn_Bforward_char
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fforward_char
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp140:                               # Block address taken
.LBB2_410:                              # %insn_Bforward_word
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fforward_word
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp141:                               # Block address taken
.LBB2_411:                              # %insn_Bskip_chars_forward
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-696(%rbp), %rsi
	callq	Fskip_chars_forward
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp142:                               # Block address taken
.LBB2_412:                              # %insn_Bskip_chars_backward
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-704(%rbp), %rsi
	callq	Fskip_chars_backward
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp143:                               # Block address taken
.LBB2_413:                              # %insn_Bforward_line
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fforward_line
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp144:                               # Block address taken
.LBB2_414:                              # %insn_Bchar_syntax
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB2_415
	jmp	.LBB2_417
.LBB2_415:                              # %land.lhs.true.1610
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB2_417
# BB#416:                               # %cond.true.1614
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_418
.LBB2_417:                              # %cond.false.1615
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1776(%rbp)       # 8-byte Spill
.LBB2_418:                              # %cond.end.1617
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -708(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1784(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB2_425
# BB#419:                               # %if.then.1623
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_420
	jmp	.LBB2_421
.LBB2_420:                              # %cond.true.1624
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-708(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB2_422
	jmp	.LBB2_423
.LBB2_421:                              # %cond.false.1628
                                        #   in Loop: Header=BB2_488 Depth=1
	movslq	-708(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB2_423
.LBB2_422:                              # %cond.true.1633
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-708(%rbp), %eax
	movl	%eax, -1788(%rbp)       # 4-byte Spill
	jmp	.LBB2_424
.LBB2_423:                              # %cond.false.1634
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-708(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1788(%rbp)       # 4-byte Spill
.LBB2_424:                              # %cond.end.1636
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-1788(%rbp), %eax       # 4-byte Reload
	movl	%eax, -708(%rbp)
.LBB2_425:                              # %if.end.1638
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	-708(%rbp), %edi
	callq	SYNTAX
	movl	%eax, %eax
	movl	%eax, %ecx
	movsbq	syntax_code_spec(,%rcx), %rdi
	callq	make_natnum
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp145:                               # Block address taken
.LBB2_426:                              # %insn_Bbuffer_substring
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-720(%rbp), %rsi
	callq	Fbuffer_substring
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp146:                               # Block address taken
.LBB2_427:                              # %insn_Bdelete_region
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-728(%rbp), %rsi
	callq	Fdelete_region
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp147:                               # Block address taken
.LBB2_428:                              # %insn_Bnarrow_to_region
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-736(%rbp), %rsi
	callq	Fnarrow_to_region
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp148:                               # Block address taken
.LBB2_429:                              # %insn_Bwiden
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	callq	Fwiden
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp149:                               # Block address taken
.LBB2_430:                              # %insn_Bend_of_line
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fend_of_line
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp150:                               # Block address taken
.LBB2_431:                              # %insn_Bset_marker
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -752(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-752(%rbp), %rsi
	movq	-744(%rbp), %rdx
	callq	Fset_marker
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %r8d
	movl	%r8d, -60(%rbp)
	movslq	%r8d, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp151:                               # Block address taken
.LBB2_432:                              # %insn_Bmatch_beginning
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fmatch_beginning
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp152:                               # Block address taken
.LBB2_433:                              # %insn_Bmatch_end
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fmatch_end
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp153:                               # Block address taken
.LBB2_434:                              # %insn_Bupcase
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fupcase
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp154:                               # Block address taken
.LBB2_435:                              # %insn_Bdowncase
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fdowncase
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp155:                               # Block address taken
.LBB2_436:                              # %insn_Bstringeqlsign
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-760(%rbp), %rsi
	callq	Fstring_equal
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp156:                               # Block address taken
.LBB2_437:                              # %insn_Bstringlss
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-768(%rbp), %rsi
	callq	Fstring_lessp
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp157:                               # Block address taken
.LBB2_438:                              # %insn_Bequal
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-776(%rbp), %rsi
	callq	Fequal
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp158:                               # Block address taken
.LBB2_439:                              # %insn_Bnthcdr
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-784(%rbp), %rsi
	callq	Fnthcdr
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp159:                               # Block address taken
.LBB2_440:                              # %insn_Belt
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_450
# BB#441:                               # %if.then.1758
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-800(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB2_443
# BB#442:                               # %cond.true.1766
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_444
.LBB2_443:                              # %cond.false.1767
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-800(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB2_444:                              # %cond.end.1769
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-800(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -808(%rbp)
	movb	$1, immediate_quit
.LBB2_445:                              # %while.cond.1771
                                        #   Parent Loop BB2_488 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-808(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -808(%rbp)
	cmpq	$0, %rdx
	movb	%cl, -1801(%rbp)        # 1-byte Spill
	jl	.LBB2_447
# BB#446:                               # %land.rhs.1775
                                        #   in Loop: Header=BB2_445 Depth=2
	movq	-792(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -1801(%rbp)        # 1-byte Spill
.LBB2_447:                              # %land.end.1780
                                        #   in Loop: Header=BB2_445 Depth=2
	movb	-1801(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_448
	jmp	.LBB2_449
.LBB2_448:                              # %while.body.1781
                                        #   in Loop: Header=BB2_445 Depth=2
	movq	-792(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -792(%rbp)
	jmp	.LBB2_445
.LBB2_449:                              # %while.end.1785
                                        #   in Loop: Header=BB2_488 Depth=1
	movb	$0, immediate_quit
	movq	-792(%rbp), %rdi
	callq	CAR
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB2_451
.LBB2_450:                              # %if.else.1787
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-792(%rbp), %rsi
	callq	Felt
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_451:                              # %if.end.1790
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp160:                               # Block address taken
.LBB2_452:                              # %insn_Bmember
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-816(%rbp), %rsi
	callq	Fmember
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp161:                               # Block address taken
.LBB2_453:                              # %insn_Bassq
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-824(%rbp), %rsi
	callq	Fassq
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp162:                               # Block address taken
.LBB2_454:                              # %insn_Bnreverse
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fnreverse
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp163:                               # Block address taken
.LBB2_455:                              # %insn_Bsetcar
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-832(%rbp), %rsi
	callq	Fsetcar
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp164:                               # Block address taken
.LBB2_456:                              # %insn_Bsetcdr
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-840(%rbp), %rsi
	callq	Fsetcdr
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp165:                               # Block address taken
.LBB2_457:                              # %insn_Bcar_safe
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rdi
	callq	CAR_SAFE
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp166:                               # Block address taken
.LBB2_458:                              # %insn_Bcdr_safe
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rdi
	callq	CDR_SAFE
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp167:                               # Block address taken
.LBB2_459:                              # %insn_Bnconc
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-112(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rsi
	callq	Fnconc
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp168:                               # Block address taken
.LBB2_460:                              # %insn_Bnumberp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB2_461
	jmp	.LBB2_462
.LBB2_461:                              # %cond.true.1857
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB2_463
.LBB2_462:                              # %cond.false.1859
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB2_463:                              # %cond.end.1861
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp169:                               # Block address taken
.LBB2_464:                              # %insn_Bintegerp
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_466
# BB#465:                               # %cond.true.1873
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB2_467
.LBB2_466:                              # %cond.false.1875
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1824(%rbp)       # 8-byte Spill
.LBB2_467:                              # %cond.end.1877
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-1824(%rbp), %rax       # 8-byte Reload
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%edx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp170:                               # Block address taken
.LBB2_468:                              # %insn_Bstack_ref
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_469
.Ltmp171:                               # Block address taken
.LBB2_469:                              # %insn_default
                                        #   in Loop: Header=BB2_488 Depth=1
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movabsq	$.L.str.2, %rdi
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	build_string
	movslq	-60(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-104(%rbp), %rcx
	addq	$-1, %rcx
	movq	-88(%rbp), %rdx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-1832(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -1840(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-1840(%rbp), %rdx       # 8-byte Reload
	callq	call3
	movq	%rax, -1848(%rbp)       # 8-byte Spill
.Ltmp172:                               # Block address taken
.LBB2_470:                              # %insn_Bstack_ref1
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_471
.Ltmp173:                               # Block address taken
.LBB2_471:                              # %insn_Bstack_ref2
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_472
.Ltmp174:                               # Block address taken
.LBB2_472:                              # %insn_Bstack_ref3
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_473
.Ltmp175:                               # Block address taken
.LBB2_473:                              # %insn_Bstack_ref4
                                        #   in Loop: Header=BB2_488 Depth=1
	jmp	.LBB2_474
.Ltmp176:                               # Block address taken
.LBB2_474:                              # %insn_Bstack_ref5
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movl	-60(%rbp), %eax
	subl	$0, %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -864(%rbp)
	movq	-112(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-864(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp177:                               # Block address taken
.LBB2_475:                              # %insn_Bstack_ref6
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -872(%rbp)
	movq	-112(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-872(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp178:                               # Block address taken
.LBB2_476:                              # %insn_Bstack_ref7
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %r8d
	shll	$8, %r8d
	addl	%r8d, %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -880(%rbp)
	movq	-112(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movq	-880(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp179:                               # Block address taken
.LBB2_477:                              # %insn_Bstack_set
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -888(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-8, %rdx
	movq	%rdx, -112(%rbp)
	movq	(%rcx), %rcx
	movq	-888(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp180:                               # Block address taken
.LBB2_478:                              # %insn_Bstack_set2
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -104(%rbp)
	movzbl	(%rsi), %r8d
	shll	$8, %r8d
	addl	%r8d, %eax
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -896(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-8, %rdx
	movq	%rdx, -112(%rbp)
	movq	(%rcx), %rcx
	movq	-896(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp181:                               # Block address taken
.LBB2_479:                              # %insn_BdiscardN
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	-60(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	je	.LBB2_481
# BB#480:                               # %if.then.1972
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	-60(%rbp), %ecx
	andl	$127, %ecx
	movl	%ecx, -60(%rbp)
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rdx
	subl	-60(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rdi
	movq	%rdx, (%rdi,%rsi,8)
.LBB2_481:                              # %if.end.1977
                                        #   in Loop: Header=BB2_488 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	movq	-112(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	exec_byte_code.targets(,%rcx,8), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.Ltmp182:                               # Block address taken
.LBB2_482:                              # %insn_Bconstant
                                        #   in Loop: Header=BB2_488 Depth=1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movl	-60(%rbp), %ecx
	subl	$192, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	%ecx, %rax
	movq	exec_byte_code.targets(,%rax,8), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB2_488
.LBB2_483:                              # %exit
	movq	byte_stack_list, %rax
	movq	24(%rax), %rax
	movq	%rax, byte_stack_list
	callq	SPECPDL_INDEX
	cmpq	-56(%rbp), %rax
	je	.LBB2_487
# BB#484:                               # %if.then.1999
	callq	SPECPDL_INDEX
	cmpq	-56(%rbp), %rax
	jle	.LBB2_486
# BB#485:                               # %if.then.2003
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1864(%rbp)       # 8-byte Spill
.LBB2_486:                              # %if.end.2006
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB2_487:                              # %if.end.2007
	movq	-120(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB2_488:                              # %indirectgoto
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_445 Depth 2
                                        #     Child Loop BB2_288 Depth 2
	movq	-960(%rbp), %rax        # 8-byte Reload
	jmpq	*%rax
.Lfunc_end2:
	.size	exec_byte_code, .Lfunc_end2-exec_byte_code
	.cfi_endproc

	.align	16, 0x90
	.type	bcall0,@function
bcall0:                                 # @bcall0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-8(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	Ffuncall
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bcall0, .Lfunc_end3-bcall0
	.cfi_endproc

	.globl	syms_of_bytecode
	.align	16, 0x90
	.type	syms_of_bytecode,@function
syms_of_bytecode:                       # @syms_of_bytecode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	movabsq	$Sbyte_code, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end4:
	.size	syms_of_bytecode, .Lfunc_end4-syms_of_bytecode
	.cfi_endproc

	.type	byte_stack_list,@object # @byte_stack_list
	.comm	byte_stack_list,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unknown args template!"
	.size	.L.str, 23

	.type	exec_byte_code.targets,@object # @exec_byte_code.targets
	.section	.rodata,"a",@progbits
	.align	16
exec_byte_code.targets:
	.quad	.Ltmp170
	.quad	.Ltmp172
	.quad	.Ltmp173
	.quad	.Ltmp174
	.quad	.Ltmp175
	.quad	.Ltmp176
	.quad	.Ltmp177
	.quad	.Ltmp178
	.quad	.Ltmp10
	.quad	.Ltmp11
	.quad	.Ltmp12
	.quad	.Ltmp13
	.quad	.Ltmp14
	.quad	.Ltmp15
	.quad	.Ltmp16
	.quad	.Ltmp9
	.quad	.Ltmp22
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp25
	.quad	.Ltmp26
	.quad	.Ltmp27
	.quad	.Ltmp29
	.quad	.Ltmp28
	.quad	.Ltmp33
	.quad	.Ltmp34
	.quad	.Ltmp35
	.quad	.Ltmp36
	.quad	.Ltmp37
	.quad	.Ltmp38
	.quad	.Ltmp31
	.quad	.Ltmp32
	.quad	.Ltmp41
	.quad	.Ltmp42
	.quad	.Ltmp43
	.quad	.Ltmp44
	.quad	.Ltmp45
	.quad	.Ltmp46
	.quad	.Ltmp39
	.quad	.Ltmp40
	.quad	.Ltmp49
	.quad	.Ltmp50
	.quad	.Ltmp51
	.quad	.Ltmp52
	.quad	.Ltmp53
	.quad	.Ltmp54
	.quad	.Ltmp47
	.quad	.Ltmp48
	.quad	.Ltmp76
	.quad	.Ltmp75
	.quad	.Ltmp74
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp81
	.quad	.Ltmp82
	.quad	.Ltmp83
	.quad	.Ltmp84
	.quad	.Ltmp85
	.quad	.Ltmp19
	.quad	.Ltmp20
	.quad	.Ltmp86
	.quad	.Ltmp18
	.quad	.Ltmp21
	.quad	.Ltmp87
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Ltmp93
	.quad	.Ltmp94
	.quad	.Ltmp95
	.quad	.Ltmp96
	.quad	.Ltmp97
	.quad	.Ltmp98
	.quad	.Ltmp99
	.quad	.Ltmp100
	.quad	.Ltmp101
	.quad	.Ltmp102
	.quad	.Ltmp103
	.quad	.Ltmp104
	.quad	.Ltmp106
	.quad	.Ltmp107
	.quad	.Ltmp108
	.quad	.Ltmp109
	.quad	.Ltmp110
	.quad	.Ltmp111
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	.Ltmp114
	.quad	.Ltmp115
	.quad	.Ltmp116
	.quad	.Ltmp117
	.quad	.Ltmp118
	.quad	.Ltmp121
	.quad	.Ltmp69
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp125
	.quad	.Ltmp126
	.quad	.Ltmp127
	.quad	.Ltmp128
	.quad	.Ltmp129
	.quad	.Ltmp130
	.quad	.Ltmp131
	.quad	.Ltmp171
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp134
	.quad	.Ltmp135
	.quad	.Ltmp136
	.quad	.Ltmp137
	.quad	.Ltmp70
	.quad	.Ltmp171
	.quad	.Ltmp138
	.quad	.Ltmp139
	.quad	.Ltmp140
	.quad	.Ltmp141
	.quad	.Ltmp142
	.quad	.Ltmp143
	.quad	.Ltmp144
	.quad	.Ltmp145
	.quad	.Ltmp146
	.quad	.Ltmp147
	.quad	.Ltmp148
	.quad	.Ltmp149
	.quad	.Ltmp171
	.quad	.Ltmp67
	.quad	.Ltmp56
	.quad	.Ltmp17
	.quad	.Ltmp57
	.quad	.Ltmp58
	.quad	.Ltmp59
	.quad	.Ltmp65
	.quad	.Ltmp66
	.quad	.Ltmp30
	.quad	.Ltmp68
	.quad	.Ltmp71
	.quad	.Ltmp72
	.quad	.Ltmp73
	.quad	.Ltmp77
	.quad	.Ltmp78
	.quad	.Ltmp79
	.quad	.Ltmp80
	.quad	.Ltmp55
	.quad	.Ltmp150
	.quad	.Ltmp151
	.quad	.Ltmp152
	.quad	.Ltmp153
	.quad	.Ltmp154
	.quad	.Ltmp155
	.quad	.Ltmp156
	.quad	.Ltmp157
	.quad	.Ltmp158
	.quad	.Ltmp159
	.quad	.Ltmp160
	.quad	.Ltmp161
	.quad	.Ltmp162
	.quad	.Ltmp163
	.quad	.Ltmp164
	.quad	.Ltmp165
	.quad	.Ltmp166
	.quad	.Ltmp167
	.quad	.Ltmp119
	.quad	.Ltmp120
	.quad	.Ltmp168
	.quad	.Ltmp169
	.quad	.Ltmp171
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp62
	.quad	.Ltmp63
	.quad	.Ltmp64
	.quad	.Ltmp92
	.quad	.Ltmp105
	.quad	.Ltmp124
	.quad	.Ltmp179
	.quad	.Ltmp180
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp181
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp171
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.quad	.Ltmp182
	.size	exec_byte_code.targets, 2048

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"interactive-p"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid byte opcode: op=%s, ptr=%d"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"binding stack not balanced (serious byte compiler bug)"
	.size	.L.str.3, 55

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"byte-code"
	.size	.L.str.4, 10

	.type	Sbyte_code,@object      # @Sbyte_code
	.data
	.align	8
Sbyte_code:
	.quad	167772160               # 0xa000000
	.quad	Fbyte_code
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.size	Sbyte_code, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
