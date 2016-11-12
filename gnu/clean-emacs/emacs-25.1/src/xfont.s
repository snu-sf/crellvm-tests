	.text
	.file	"xfont.bc"
	.align	16, 0x90
	.type	xfont_get_cache,@function
xfont_get_cache:                        # @xfont_get_cache
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xfont_get_cache, .Lfunc_end0-xfont_get_cache
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_list,@function
xfont_list:                             # @xfont_list
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
	subq	$768, %rsp              # imm = 0x300
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB1_6
# BB#1:                                 # %if.then
	movl	$89, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_3
# BB#2:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_3:                                # %if.end
	movl	$73, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_5
# BB#4:                                 # %if.then.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_5:                                # %if.end.17
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.18
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%esi, %esi
	movl	$512, %ecx              # imm = 0x200
	leaq	-592(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jl	.LBB1_8
# BB#7:                                 # %lor.lhs.false
	leaq	-592(%rbp), %rdi
	callq	xfont_encode_coding_xlfd
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB1_9
.LBB1_8:                                # %if.then.28
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_9:                                # %if.end.30
	movl	$114, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	CDR
	leaq	-592(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	xfont_list_pattern
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_14
# BB#10:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_14
# BB#11:                                # %if.then.42
	leaq	-592(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$-9, %rdx
	movq	%rdx, -600(%rbp)
	movq	-600(%rbp), %rcx
	subq	%rax, %rcx
	addq	$10, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jge	.LBB1_13
# BB#12:                                # %if.then.48
	movl	$578, %edi              # imm = 0x242
	leaq	-592(%rbp), %rsi
	movq	-600(%rbp), %rax
	movl	$.L.str, %ecx
	movl	%ecx, %edx
	movl	%edi, -652(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	callq	strcpy
	movq	-32(%rbp), %rdi
	movl	-652(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	xfont_list_pattern
	movq	%rax, -48(%rbp)
.LBB1_13:                               # %if.end.53
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.54
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_28
# BB#15:                                # %land.lhs.true.58
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_28
# BB#16:                                # %if.then.62
	movq	-40(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	Vface_alternative_font_registry_alist, %rsi
	movq	%rax, %rdi
	callq	Fassoc
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_27
# BB#17:                                # %if.then.69
	leaq	-592(%rbp), %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	xorl	%edx, %edx
	movl	%edx, %ecx
	subq	%rax, %rcx
	movq	-704(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -608(%rbp)
.LBB1_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-608(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-608(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_20
	jmp	.LBB1_24
.LBB1_20:                               # %land.lhs.true.84
                                        #   in Loop: Header=BB1_18 Depth=1
	leaq	-592(%rbp), %rax
	movq	-616(%rbp), %rcx
	subq	%rax, %rcx
	movq	-608(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-712(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jge	.LBB1_24
# BB#21:                                # %if.then.95
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-616(%rbp), %rdi
	movq	-608(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	lispstpcpy
	leaq	-592(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	xfont_list_pattern
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_23
# BB#22:                                # %if.then.104
	jmp	.LBB1_26
.LBB1_23:                               # %if.end.105
                                        #   in Loop: Header=BB1_18 Depth=1
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.106
                                        #   in Loop: Header=BB1_18 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-608(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -608(%rbp)
	jmp	.LBB1_18
.LBB1_26:                               # %for.end
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.110
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.111
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_36
# BB#29:                                # %if.then.115
	movl	$86, %edi
	callq	builtin_lisp_symbol
	movl	$12, %edi
	movl	%edi, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_35
# BB#30:                                # %land.lhs.true.123
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_31
	jmp	.LBB1_35
.LBB1_31:                               # %land.lhs.true.129
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	SBYTES
	cmpq	$512, %rax              # imm = 0x200
	jge	.LBB1_35
# BB#32:                                # %if.then.136
	leaq	-592(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	SBYTES
	leaq	-592(%rbp), %rdi
	addq	$1, %rax
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-760(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-768(%rbp), %rdi        # 8-byte Reload
	callq	xfont_encode_coding_xlfd
	cmpl	$0, %eax
	jge	.LBB1_34
# BB#33:                                # %if.then.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_34:                               # %if.end.152
	leaq	-592(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	xfont_list_pattern
	movq	%rax, -48(%rbp)
.LBB1_35:                               # %if.end.155
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.156
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$768, %rsp              # imm = 0x300
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xfont_list, .Lfunc_end1-xfont_list
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_match,@function
xfont_match:                            # @xfont_match
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
	subq	$656, %rsp              # imm = 0x290
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$86, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_5
.LBB2_2:                                # %if.then
	xorl	%esi, %esi
	movl	$512, %ecx              # imm = 0x200
	leaq	-576(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	font_unparse_xlfd
	cmpq	$0, %rax
	jge	.LBB2_4
# BB#3:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_24
.LBB2_4:                                # %if.end
	jmp	.LBB2_9
.LBB2_5:                                # %if.else
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	SBYTES
	cmpq	$512, %rax              # imm = 0x200
	jge	.LBB2_7
# BB#6:                                 # %if.then.17
	leaq	-576(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	-624(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_24
.LBB2_8:                                # %if.end.28
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.29
	leaq	-576(%rbp), %rdi
	callq	xfont_encode_coding_xlfd
	cmpl	$0, %eax
	jge	.LBB2_11
# BB#10:                                # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_24
.LBB2_11:                               # %if.end.36
	callq	block_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	leaq	-576(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	XLoadQueryFont
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	je	.LBB2_19
# BB#12:                                # %if.then.40
	movl	$18, %eax
	movl	%eax, %esi
	leaq	-592(%rbp), %rdx
	movq	-584(%rbp), %rdi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB2_18
# BB#13:                                # %if.then.43
	movq	-32(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	XGetAtomName
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_17
# BB#14:                                # %if.then.46
	callq	font_make_entity
	movl	$1045, %edi             # imm = 0x415
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-576(%rbp), %rdx
	movq	-600(%rbp), %rdi
	callq	xfont_decode_coding_xlfd
	leaq	-576(%rbp), %rdi
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	font_parse_xlfd
	cmpl	$0, %eax
	jge	.LBB2_16
# BB#15:                                # %if.then.55
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB2_16:                               # %if.end.57
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.58
	movq	-600(%rbp), %rdi
	callq	XFree
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB2_18:                               # %if.end.60
	movq	-32(%rbp), %rdi
	movq	-584(%rbp), %rsi
	callq	XFreeFont
	movl	%eax, -640(%rbp)        # 4-byte Spill
.LBB2_19:                               # %if.end.62
	callq	unblock_input
# BB#20:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_22
# BB#21:                                # %if.then.66
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	font_add_log
.LBB2_22:                               # %if.end.67
	jmp	.LBB2_23
.LBB2_23:                               # %do.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xfont_match, .Lfunc_end2-xfont_match
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_list_family,@function
xfont_list_family:                      # @xfont_list_family
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
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	x_catch_errors
	movabsq	$.L.str.6, %rsi
	movl	$32768, %edx            # imm = 0x8000
	leaq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	XListFonts
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	x_clear_errors
	movl	$0, -28(%rbp)
.LBB3_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_12 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB3_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB3_5:                                # %while.cond
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -605(%rbp)         # 1-byte Spill
	je	.LBB3_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	setne	%dl
	movb	%dl, -605(%rbp)         # 1-byte Spill
.LBB3_7:                                # %land.end
                                        #   in Loop: Header=BB3_5 Depth=2
	movb	-605(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_8:                                # %while.body
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_5
.LBB3_9:                                # %while.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.12
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
.LBB3_12:                               # %while.cond.14
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -606(%rbp)         # 1-byte Spill
	je	.LBB3_14
# BB#13:                                # %land.rhs.17
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	setne	%dl
	movb	%dl, -606(%rbp)         # 1-byte Spill
.LBB3_14:                               # %land.end.21
                                        #   in Loop: Header=BB3_12 Depth=2
	movb	-606(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_15
	jmp	.LBB3_16
.LBB3_15:                               # %while.body.22
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB3_12
.LBB3_16:                               # %while.end.24
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_18
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_19
.LBB3_18:                               # %if.then.28
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_25
.LBB3_19:                               # %if.end.29
                                        #   in Loop: Header=BB3_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB3_22
# BB#21:                                # %if.then.37
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_25
.LBB3_22:                               # %if.end.38
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-592(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movl	%esi, -52(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	xfont_decode_coding_xlfd
	movl	$1, %edx
	movl	%eax, %esi
	movl	%esi, -604(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-604(%rbp), %rsi
	callq	font_intern_prop
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_24
# BB#23:                                # %if.then.51
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-600(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB3_24:                               # %if.end.53
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_25
.LBB3_25:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_3
.LBB3_26:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	XFreeFontNames
	movl	%eax, -620(%rbp)        # 4-byte Spill
	callq	x_uncatch_errors
	callq	unblock_input
	movq	-40(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xfont_list_family, .Lfunc_end3-xfont_list_family
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_open,@function
xfont_open:                             # @xfont_open
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
	subq	$1408, %rsp             # imm = 0x580
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	leaq	-592(%rbp), %rsi
	leaq	-600(%rbp), %rdx
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rdi
	callq	font_registry_charsets
	cmpl	$0, %eax
	jge	.LBB4_6
# BB#1:                                 # %if.then
	jmp	.LBB4_2
.LBB4_2:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	movq	-584(%rbp), %rsi
	movq	%rsi, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.7, %rdi
	movq	-1232(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_101
.LBB4_6:                                # %if.end.8
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB4_8
# BB#7:                                 # %if.then.11
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB4_14
.LBB4_8:                                # %if.else
	cmpl	$0, -28(%rbp)
	jne	.LBB4_13
# BB#9:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 232(%rax)
	je	.LBB4_11
# BB#10:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.25
	movl	$14, -28(%rbp)
.LBB4_12:                               # %if.end.26
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.27
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.28
	movl	$512, %ecx              # imm = 0x200
	leaq	-560(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -564(%rbp)
	cmpl	$0, -564(%rbp)
	jle	.LBB4_16
# BB#15:                                # %lor.lhs.false
	leaq	-560(%rbp), %rdi
	callq	xfont_encode_coding_xlfd
	movl	%eax, -564(%rbp)
	cmpl	$0, %eax
	jge	.LBB4_21
.LBB4_16:                               # %if.then.37
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.38
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_19
# BB#18:                                # %if.then.42
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	%rsi, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.8, %rdi
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB4_19:                               # %if.end.44
	jmp	.LBB4_20
.LBB4_20:                               # %do.end.45
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_101
.LBB4_21:                               # %if.end.47
	callq	block_input
	movq	-48(%rbp), %rdi
	callq	x_catch_errors
	leaq	-560(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	XLoadQueryFont
	movq	%rax, -632(%rbp)
	movq	-48(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB4_22
	jmp	.LBB4_23
.LBB4_22:                               # %if.then.51
	movq	-48(%rbp), %rdi
	callq	x_clear_errors
	movq	$0, -632(%rbp)
	jmp	.LBB4_35
.LBB4_23:                               # %if.else.52
	cmpq	$0, -632(%rbp)
	jne	.LBB4_34
# BB#24:                                # %if.then.54
	movq	-24(%rbp), %rdi
	callq	copy_font_spec
	xorl	%edi, %edi
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$9, %edi
	movl	%edi, %esi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$512, %ecx              # imm = 0x200
	leaq	-560(%rbp), %rdx
	movq	-640(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -564(%rbp)
	cmpl	$0, -564(%rbp)
	jle	.LBB4_26
# BB#25:                                # %lor.lhs.false.62
	leaq	-560(%rbp), %rdi
	callq	xfont_encode_coding_xlfd
	movl	%eax, -564(%rbp)
	cmpl	$0, %eax
	jge	.LBB4_31
.LBB4_26:                               # %if.then.67
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.68
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_29
# BB#28:                                # %if.then.72
	xorl	%edi, %edi
	movq	-640(%rbp), %rsi
	movq	%rsi, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.8, %rdi
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB4_29:                               # %if.end.74
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.75
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_101
.LBB4_31:                               # %if.end.77
	leaq	-560(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	XLoadQueryFont
	movq	%rax, -632(%rbp)
	movq	-48(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB4_32
	jmp	.LBB4_33
.LBB4_32:                               # %if.then.81
	movq	-48(%rbp), %rdi
	callq	x_clear_errors
	movq	$0, -632(%rbp)
.LBB4_33:                               # %if.end.82
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.83
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.84
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -616(%rbp)
	cmpq	$0, -632(%rbp)
	je	.LBB4_45
# BB#36:                                # %land.lhs.true
	movl	$18, %eax
	movl	%eax, %esi
	leaq	-576(%rbp), %rdx
	movq	-632(%rbp), %rdi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_45
# BB#37:                                # %if.then.89
	movl	$0, -660(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-576(%rbp), %rsi
	callq	XGetAtomName
	movq	%rax, -656(%rbp)
	movq	%rax, -648(%rbp)
.LBB4_38:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-656(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_42
# BB#39:                                # %while.body
                                        #   in Loop: Header=BB4_38 Depth=1
	movq	-656(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB4_41
# BB#40:                                # %if.then.99
                                        #   in Loop: Header=BB4_38 Depth=1
	movl	-660(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -660(%rbp)
.LBB4_41:                               # %if.end.100
                                        #   in Loop: Header=BB4_38 Depth=1
	movq	-656(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -656(%rbp)
	jmp	.LBB4_38
.LBB4_42:                               # %while.end
	cmpl	$13, -660(%rbp)
	jl	.LBB4_44
# BB#43:                                # %if.then.103
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-560(%rbp), %rdx
	movq	-648(%rbp), %rdi
	callq	xfont_decode_coding_xlfd
	leaq	-560(%rbp), %rdi
	movl	%eax, %esi
	movl	%esi, -564(%rbp)
	movslq	-564(%rbp), %rsi
	callq	make_string
	movq	%rax, %rdi
	callq	Fdowncase
	movq	%rax, -616(%rbp)
.LBB4_44:                               # %if.end.111
	movq	-648(%rbp), %rdi
	callq	XFree
	movl	%eax, -1276(%rbp)       # 4-byte Spill
.LBB4_45:                               # %if.end.113
	callq	x_uncatch_errors
	callq	unblock_input
	cmpq	$0, -632(%rbp)
	jne	.LBB4_51
# BB#46:                                # %if.then.115
	jmp	.LBB4_47
.LBB4_47:                               # %do.body.116
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_49
# BB#48:                                # %if.then.120
	leaq	-560(%rbp), %rdi
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.9, %rdi
	movq	-1296(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB4_49:                               # %if.end.124
	jmp	.LBB4_50
.LBB4_50:                               # %do.end.125
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_101
.LBB4_51:                               # %if.end.127
	movl	$29, %edi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	font_make_object
	movl	$1045, %edi             # imm = 0x415
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-616(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB4_52
	jmp	.LBB4_53
.LBB4_52:                               # %if.then.131
	movq	-616(%rbp), %rdi
	callq	SSDATA
	movq	-616(%rbp), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-608(%rbp), %rdx
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	font_parse_xlfd
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	-608(%rbp), %rdi
	movq	-616(%rbp), %rdx
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	ASET
	jmp	.LBB4_54
.LBB4_53:                               # %if.else.135
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-1184(%rbp), %rdx
	leaq	-560(%rbp), %rdi
	callq	xfont_decode_coding_xlfd
	leaq	-1184(%rbp), %rdi
	movl	%eax, %esi
	movl	%esi, -564(%rbp)
	movq	-608(%rbp), %rax
	movslq	-564(%rbp), %rsi
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	make_string
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB4_54:                               # %if.end.143
	movl	$15, %eax
	movl	%eax, %esi
	movq	-608(%rbp), %rdi
	movq	-616(%rbp), %rdx
	callq	ASET
	movq	-608(%rbp), %rdi
	callq	XFONT_OBJECT
	movabsq	$xfont_driver, %rdx
	movq	%rax, -624(%rbp)
	movq	-632(%rbp), %rax
	movq	-624(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	-624(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	256(%rax), %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 232(%rax)
	movl	-28(%rbp), %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 152(%rax)
	movq	-624(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-592(%rbp), %rax
	movl	(%rax), %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 200(%rax)
	cmpq	$0, -600(%rbp)
	je	.LBB4_56
# BB#55:                                # %cond.true
	movq	-600(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB4_57
.LBB4_56:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB4_57
.LBB4_57:                               # %cond.end
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movq	-624(%rbp), %rcx
	movl	%eax, 204(%rcx)
	movq	-632(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 168(%rcx)
	movq	-632(%rbp), %rcx
	movl	92(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movq	-624(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-624(%rbp), %rcx
	addl	172(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 156(%rcx)
	movq	-632(%rbp), %rcx
	movswl	60(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movq	-632(%rbp), %rcx
	movswl	72(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 148(%rcx)
	movq	-632(%rbp), %rcx
	movswl	60(%rcx), %eax
	movq	-632(%rbp), %rcx
	movswl	72(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB4_59
# BB#58:                                # %if.then.172
	movq	-632(%rbp), %rax
	movswl	60(%rax), %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 160(%rax)
	movq	-624(%rbp), %rax
	movl	%ecx, 164(%rax)
	jmp	.LBB4_81
.LBB4_59:                               # %if.else.176
	leaq	-1200(%rbp), %rsi
	movb	$0, -1200(%rbp)
	movb	$32, -1199(%rbp)
	movq	-632(%rbp), %rdi
	callq	xfont_get_pcm
	movq	%rax, -1192(%rbp)
	cmpq	$0, -1192(%rbp)
	je	.LBB4_61
# BB#60:                                # %if.then.179
	movq	-1192(%rbp), %rax
	movswl	4(%rax), %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 160(%rax)
	jmp	.LBB4_62
.LBB4_61:                               # %if.else.183
	movq	-624(%rbp), %rax
	movl	$0, 160(%rax)
.LBB4_62:                               # %if.end.185
	movl	$12, %edi
	movq	-608(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_64
# BB#63:                                # %if.then.192
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-1208(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movq	-624(%rbp), %rax
	movl	%esi, 164(%rax)
.LBB4_64:                               # %if.end.196
	movq	-624(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB4_66
# BB#65:                                # %if.then.200
	xorl	%eax, %eax
	movq	-624(%rbp), %rcx
	subl	164(%rcx), %eax
	movq	-624(%rbp), %rcx
	movl	%eax, 164(%rcx)
	jmp	.LBB4_80
.LBB4_66:                               # %if.else.203
	movq	-624(%rbp), %rax
	cmpl	$0, 164(%rax)
	jne	.LBB4_77
# BB#67:                                # %land.lhs.true.207
	movq	-592(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB4_77
# BB#68:                                # %if.then.209
	movq	-624(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -1212(%rbp)
	cmpq	$0, -1192(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -1216(%rbp)
	movb	$33, -1199(%rbp)
.LBB4_69:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1199(%rbp), %eax
	cmpl	$126, %eax
	jg	.LBB4_74
# BB#70:                                # %for.body
                                        #   in Loop: Header=BB4_69 Depth=1
	leaq	-1200(%rbp), %rsi
	movq	-632(%rbp), %rdi
	callq	xfont_get_pcm
	movq	%rax, -1192(%rbp)
	cmpq	$0, %rax
	je	.LBB4_72
# BB#71:                                # %if.then.222
                                        #   in Loop: Header=BB4_69 Depth=1
	movq	-1192(%rbp), %rax
	movswl	4(%rax), %ecx
	addl	-1212(%rbp), %ecx
	movl	%ecx, -1212(%rbp)
	movl	-1216(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1216(%rbp)
.LBB4_72:                               # %if.end.227
                                        #   in Loop: Header=BB4_69 Depth=1
	jmp	.LBB4_73
.LBB4_73:                               # %for.inc
                                        #   in Loop: Header=BB4_69 Depth=1
	movb	-1199(%rbp), %al
	addb	$1, %al
	movb	%al, -1199(%rbp)
	jmp	.LBB4_69
.LBB4_74:                               # %for.end
	cmpl	$0, -1216(%rbp)
	jle	.LBB4_76
# BB#75:                                # %if.then.232
	movl	-1212(%rbp), %eax
	cltd
	idivl	-1216(%rbp)
	movq	-624(%rbp), %rcx
	movl	%eax, 164(%rcx)
.LBB4_76:                               # %if.end.235
	jmp	.LBB4_77
.LBB4_77:                               # %if.end.236
	movq	-624(%rbp), %rax
	cmpl	$0, 164(%rax)
	jne	.LBB4_79
# BB#78:                                # %if.then.240
	movl	$2, %eax
	movq	-632(%rbp), %rcx
	movswl	60(%rcx), %edx
	movq	-632(%rbp), %rcx
	movswl	72(%rcx), %esi
	addl	%esi, %edx
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1348(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movq	-624(%rbp), %rcx
	movl	%eax, 164(%rcx)
.LBB4_79:                               # %if.end.250
	jmp	.LBB4_80
.LBB4_80:                               # %if.end.251
	jmp	.LBB4_81
.LBB4_81:                               # %if.end.252
	callq	block_input
	movl	$52, %eax
	movl	%eax, %esi
	leaq	-576(%rbp), %rdx
	movq	-632(%rbp), %rdi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_83
# BB#82:                                # %cond.true.255
	movq	-576(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB4_84
.LBB4_83:                               # %cond.false.256
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB4_84
.LBB4_84:                               # %cond.end.257
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movl	$51, %ecx
	movl	%ecx, %esi
	leaq	-576(%rbp), %rdx
	movl	%eax, %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 176(%rax)
	movq	-632(%rbp), %rdi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_86
# BB#85:                                # %cond.true.262
	movq	-576(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB4_87
.LBB4_86:                               # %cond.false.263
	movq	$-1, %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB4_87
.LBB4_87:                               # %cond.end.264
	movq	-1368(%rbp), %rax       # 8-byte Reload
	leaq	-576(%rbp), %rdx
	movl	%eax, %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 180(%rax)
	movq	-632(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	528(%rax), %rsi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_89
# BB#88:                                # %cond.true.269
	movq	-576(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB4_90
.LBB4_89:                               # %cond.false.270
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB4_90
.LBB4_90:                               # %cond.end.271
	movq	-1376(%rbp), %rax       # 8-byte Reload
	leaq	-576(%rbp), %rdx
	movl	%eax, %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 188(%rax)
	movq	-632(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	536(%rax), %rsi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_92
# BB#91:                                # %cond.true.276
	movq	-576(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB4_93
.LBB4_92:                               # %cond.false.277
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB4_93
.LBB4_93:                               # %cond.end.278
	movq	-1384(%rbp), %rax       # 8-byte Reload
	leaq	-576(%rbp), %rdx
	movl	%eax, %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 192(%rax)
	movq	-632(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	544(%rax), %rsi
	callq	XGetFontProperty
	cmpl	$0, %eax
	je	.LBB4_95
# BB#94:                                # %cond.true.283
	movq	-576(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB4_96
.LBB4_95:                               # %cond.false.284
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB4_96
.LBB4_96:                               # %cond.end.285
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movq	-624(%rbp), %rax
	movl	%ecx, 196(%rax)
	callq	unblock_input
	xorl	%edi, %edi
	movq	-616(%rbp), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB4_98
# BB#97:                                # %if.then.291
	movl	$14, %eax
	movl	%eax, %esi
	movq	-608(%rbp), %rdi
	callq	AREF
	movq	%rax, -616(%rbp)
.LBB4_98:                               # %if.end.293
	movq	globals+2592, %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -1401(%rbp)        # 1-byte Spill
	jne	.LBB4_99
	jmp	.LBB4_100
.LBB4_99:                               # %land.rhs
	movq	globals+2592, %rdi
	movq	-616(%rbp), %rsi
	callq	fast_string_match_ignore_case
	cmpq	$0, %rax
	setge	%cl
	movb	%cl, -1401(%rbp)        # 1-byte Spill
.LBB4_100:                              # %land.end
	movb	-1401(%rbp), %al        # 1-byte Reload
	movq	-624(%rbp), %rcx
	andb	$1, %al
	movb	%al, 184(%rcx)
	movq	-608(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB4_101:                              # %return
	movq	-8(%rbp), %rax
	addq	$1408, %rsp             # imm = 0x580
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xfont_open, .Lfunc_end4-xfont_open
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_close,@function
xfont_close:                            # @xfont_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 224(%rdi)
	je	.LBB5_4
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	callq	x_display_info_for_display
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true.2
	movq	-24(%rbp), %rax
	movl	232(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	256(%rax), %ecx
	jne	.LBB5_4
# BB#3:                                 # %if.then
	callq	block_input
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	224(%rax), %rsi
	callq	XFreeFont
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-24(%rbp), %rsi
	movq	$0, 224(%rsi)
.LBB5_4:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xfont_close, .Lfunc_end5-xfont_close
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_prepare_face,@function
xfont_prepare_face:                     # @xfont_prepare_face
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	block_input
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	224(%rax), %rax
	movq	8(%rax), %rdx
	callq	XSetFont
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	xfont_prepare_face, .Lfunc_end6-xfont_prepare_face
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_has_char,@function
xfont_has_char:                         # @xfont_has_char
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
	subq	$128, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$578, %edi              # imm = 0x242
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_9
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	%eax, %esi
	movq	charset_table, %rcx
	movslq	charset_unicode, %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$583, %edi              # imm = 0x247
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, charset_jisx0208
	jl	.LBB7_4
# BB#3:                                 # %if.then.6
	movq	charset_table, %rax
	movslq	charset_jisx0208, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_8
.LBB7_4:                                # %if.else
	movl	$3, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$597, %edi              # imm = 0x255
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_7
# BB#5:                                 # %land.lhs.true.12
	cmpl	$0, charset_ksc5601
	jl	.LBB7_7
# BB#6:                                 # %if.then.14
	movq	charset_table, %rax
	movslq	charset_ksc5601, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.17
	jmp	.LBB7_12
.LBB7_9:                                # %if.else.18
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	font_registry_charsets
	cmpl	$0, %eax
	jge	.LBB7_11
# BB#10:                                # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB7_51
.LBB7_11:                               # %if.end.22
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.23
	movb	$1, %al
	testb	$1, %al
	jne	.LBB7_13
	jmp	.LBB7_14
.LBB7_13:                               # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_15
	jmp	.LBB7_17
.LBB7_14:                               # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_17
.LBB7_15:                               # %land.lhs.true.28
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_17
# BB#16:                                # %if.then.30
	movl	$1, -4(%rbp)
	jmp	.LBB7_51
.LBB7_17:                               # %if.end.31
	cmpq	$0, -48(%rbp)
	jne	.LBB7_19
# BB#18:                                # %if.then.32
	movl	$-1, -4(%rbp)
	jmp	.LBB7_51
.LBB7_19:                               # %if.end.33
	movb	$1, %al
	testb	$1, %al
	jne	.LBB7_20
	jmp	.LBB7_21
.LBB7_20:                               # %cond.true.34
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_22
	jmp	.LBB7_24
.LBB7_21:                               # %cond.false.38
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_24
.LBB7_22:                               # %land.lhs.true.43
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_24
# BB#23:                                # %cond.true.50
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB7_50
.LBB7_24:                               # %cond.false.51
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB7_27
# BB#25:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB7_27
# BB#26:                                # %lor.lhs.false.59
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB7_28
.LBB7_27:                               # %cond.true.63
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB7_49
.LBB7_28:                               # %cond.false.65
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB7_30
# BB#29:                                # %lor.lhs.false.68
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB7_31
.LBB7_30:                               # %cond.true.71
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB7_48
.LBB7_31:                               # %cond.false.72
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB7_36
# BB#32:                                # %cond.true.76
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_34
# BB#33:                                # %cond.true.81
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false.83
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB7_35:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_47
.LBB7_36:                               # %cond.false.85
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB7_45
# BB#37:                                # %cond.true.89
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_43
# BB#38:                                # %land.lhs.true.95
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB7_39
	jmp	.LBB7_43
.LBB7_39:                               # %cond.true.101
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB7_41
# BB#40:                                # %cond.true.110
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB7_42
.LBB7_41:                               # %cond.false.112
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB7_42:                               # %cond.end.114
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB7_44
.LBB7_43:                               # %cond.false.116
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB7_44:                               # %cond.end.118
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB7_46
.LBB7_45:                               # %cond.false.120
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB7_46:                               # %cond.end.122
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB7_47:                               # %cond.end.124
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_48:                               # %cond.end.126
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB7_49:                               # %cond.end.128
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB7_50:                               # %cond.end.130
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	cmpl	128(%rcx), %eax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
.LBB7_51:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xfont_has_char, .Lfunc_end7-xfont_has_char
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_encode_char,@function
xfont_encode_char:                      # @xfont_encode_char
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
	subq	$144, %rsp
	movb	$1, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	charset_table, %rdi
	movq	-16(%rbp), %rcx
	movslq	200(%rcx), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:                                # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_3
	jmp	.LBB8_5
.LBB8_2:                                # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_5
.LBB8_3:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_5
# BB#4:                                 # %cond.true.6
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB8_31
.LBB8_5:                                # %cond.false.7
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB8_8
# BB#6:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB8_8
# BB#7:                                 # %lor.lhs.false.15
	movq	-40(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB8_9
.LBB8_8:                                # %cond.true.19
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB8_30
.LBB8_9:                                # %cond.false.20
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB8_11
# BB#10:                                # %lor.lhs.false.23
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB8_12
.LBB8_11:                               # %cond.true.26
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB8_29
.LBB8_12:                               # %cond.false.27
	movq	-40(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB8_17
# BB#13:                                # %cond.true.31
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_15
# BB#14:                                # %cond.true.36
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-40(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB8_16
.LBB8_15:                               # %cond.false.38
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB8_16:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB8_28
.LBB8_17:                               # %cond.false.40
	movq	-40(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB8_26
# BB#18:                                # %cond.true.44
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_24
# BB#19:                                # %land.lhs.true.50
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB8_20
	jmp	.LBB8_24
.LBB8_20:                               # %cond.true.56
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB8_22
# BB#21:                                # %cond.true.65
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB8_23
.LBB8_22:                               # %cond.false.67
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB8_23:                               # %cond.end.69
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB8_25
.LBB8_24:                               # %cond.false.71
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB8_25:                               # %cond.end.73
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.75
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB8_27:                               # %cond.end.77
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB8_28:                               # %cond.end.79
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB8_29:                               # %cond.end.81
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB8_30:                               # %cond.end.83
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB8_31:                               # %cond.end.85
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB8_33
# BB#32:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_73
.LBB8_33:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 204(%rax)
	jl	.LBB8_69
# BB#34:                                # %if.then.92
	movb	$1, %al
	movq	charset_table, %rcx
	movq	-16(%rbp), %rdx
	movslq	204(%rdx), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	testb	$1, %al
	jne	.LBB8_35
	jmp	.LBB8_36
.LBB8_35:                               # %cond.true.96
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_37
	jmp	.LBB8_39
.LBB8_36:                               # %cond.false.100
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_39
.LBB8_37:                               # %land.lhs.true.105
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_39
# BB#38:                                # %cond.true.112
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB8_65
.LBB8_39:                               # %cond.false.113
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB8_42
# BB#40:                                # %lor.lhs.false.120
	movq	-40(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB8_42
# BB#41:                                # %lor.lhs.false.124
	movq	-40(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB8_43
.LBB8_42:                               # %cond.true.128
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB8_64
.LBB8_43:                               # %cond.false.130
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB8_45
# BB#44:                                # %lor.lhs.false.134
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB8_46
.LBB8_45:                               # %cond.true.138
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB8_63
.LBB8_46:                               # %cond.false.140
	movq	-40(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB8_51
# BB#47:                                # %cond.true.144
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_49
# BB#48:                                # %cond.true.150
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-40(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB8_50
.LBB8_49:                               # %cond.false.155
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB8_50:                               # %cond.end.157
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB8_62
.LBB8_51:                               # %cond.false.159
	movq	-40(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB8_60
# BB#52:                                # %cond.true.163
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_58
# BB#53:                                # %land.lhs.true.170
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB8_54
	jmp	.LBB8_58
.LBB8_54:                               # %cond.true.177
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB8_56
# BB#55:                                # %cond.true.186
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_56:                               # %cond.false.188
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB8_57:                               # %cond.end.191
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB8_59
.LBB8_58:                               # %cond.false.193
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB8_59:                               # %cond.end.195
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB8_61
.LBB8_60:                               # %cond.false.197
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB8_61:                               # %cond.end.199
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB8_62:                               # %cond.end.201
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB8_63:                               # %cond.end.203
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB8_64:                               # %cond.end.205
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB8_65:                               # %cond.end.207
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB8_67
# BB#66:                                # %cond.true.212
	movl	-44(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB8_68
.LBB8_67:                               # %cond.false.213
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB8_68
.LBB8_68:                               # %cond.end.214
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB8_73
.LBB8_69:                               # %if.end.216
	leaq	-48(%rbp), %rsi
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movb	%cl, -48(%rbp)
	movl	-44(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, -47(%rbp)
	movq	-32(%rbp), %rdi
	callq	xfont_get_pcm
	cmpq	$0, %rax
	je	.LBB8_71
# BB#70:                                # %cond.true.221
	movl	-44(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB8_72
.LBB8_71:                               # %cond.false.222
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB8_72
.LBB8_72:                               # %cond.end.223
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB8_73:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xfont_encode_char, .Lfunc_end8-xfont_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_text_extents,@function
xfont_text_extents:                     # @xfont_text_extents
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movb	$1, -49(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$65536, (%rcx,%rax,4)   # imm = 0x10000
	jb	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_18
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-56(%rbp), %rsi
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	shrl	$8, %edx
	movb	%dl, %dil
	movb	%dil, -56(%rbp)
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$255, %edx
	movb	%dl, %dil
	movb	%dil, -55(%rbp)
	movq	-40(%rbp), %rdi
	callq	xfont_get_pcm
	movq	%rax, xfont_text_extents.pcm
	cmpq	$0, xfont_text_extents.pcm
	jne	.LBB9_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_18
.LBB9_6:                                # %if.end.9
                                        #   in Loop: Header=BB9_1 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	xfont_text_extents.pcm, %rax
	movw	(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, (%rax)
	movq	xfont_text_extents.pcm, %rax
	movw	2(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 2(%rax)
	movq	xfont_text_extents.pcm, %rax
	movw	6(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 6(%rax)
	movq	xfont_text_extents.pcm, %rax
	movw	8(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 8(%rax)
	movb	$0, -49(%rbp)
	jmp	.LBB9_17
.LBB9_8:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movswl	(%rax), %ecx
	movl	-48(%rbp), %edx
	movq	xfont_text_extents.pcm, %rax
	movswl	(%rax), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB9_10
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-48(%rbp), %eax
	movq	xfont_text_extents.pcm, %rcx
	movswl	(%rcx), %edx
	addl	%edx, %eax
	movw	%ax, %si
	movq	-32(%rbp), %rcx
	movw	%si, (%rcx)
.LBB9_10:                               # %if.end.28
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movswl	2(%rax), %ecx
	movl	-48(%rbp), %edx
	movq	xfont_text_extents.pcm, %rax
	movswl	2(%rax), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jge	.LBB9_12
# BB#11:                                # %if.then.36
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-48(%rbp), %eax
	movq	xfont_text_extents.pcm, %rcx
	movswl	2(%rcx), %edx
	addl	%edx, %eax
	movw	%ax, %si
	movq	-32(%rbp), %rcx
	movw	%si, 2(%rcx)
.LBB9_12:                               # %if.end.42
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movswl	6(%rax), %ecx
	movq	xfont_text_extents.pcm, %rax
	movswl	6(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB9_14
# BB#13:                                # %if.then.49
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	xfont_text_extents.pcm, %rax
	movw	6(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 6(%rax)
.LBB9_14:                               # %if.end.52
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movswl	8(%rax), %ecx
	movq	xfont_text_extents.pcm, %rax
	movswl	8(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB9_16
# BB#15:                                # %if.then.59
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	xfont_text_extents.pcm, %rax
	movw	8(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 8(%rax)
.LBB9_16:                               # %if.end.62
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.63
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	xfont_text_extents.pcm, %rax
	movswl	4(%rax), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
.LBB9_18:                               # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_1
.LBB9_19:                               # %for.end
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 4(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xfont_text_extents, .Lfunc_end9-xfont_text_extents
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_draw,@function
xfont_draw:                             # @xfont_draw
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
	subq	$240, %rsp
	movb	%r9b, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	96(%r10), %r10
	cmpq	160(%r10), %rdi
	je	.LBB10_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	callq	XSetFont
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	unblock_input
.LBB10_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB10_33
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB10_33
# BB#4:                                 # %if.then.7
	movq	$16384, -80(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
	movslq	-52(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jg	.LBB10_6
# BB#5:                                 # %cond.true
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movslq	-52(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false
	movb	$1, -89(%rbp)
	movslq	-52(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB10_7:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	$0, -68(%rbp)
.LBB10_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB10_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movb	1(%rax,%rcx,2), %dl
	movslq	-68(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_8
.LBB10_11:                              # %for.end
	callq	block_input
	testb	$1, -33(%rbp)
	je	.LBB10_20
# BB#12:                                # %if.then.20
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_18
# BB#13:                                # %if.then.21
	movl	$0, -68(%rbp)
.LBB10_14:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB10_17
# BB#15:                                # %for.body.25
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-104(%rbp), %rcx
	movslq	-68(%rbp), %r10
	addq	%r10, %rcx
	subq	$16, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-128(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	XDrawImageString
	addq	$16, %rsp
	movl	%eax, -136(%rbp)        # 4-byte Spill
# BB#16:                                # %for.inc.34
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_14
.LBB10_17:                              # %for.end.36
	jmp	.LBB10_19
.LBB10_18:                              # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-104(%rbp), %r9
	movl	-52(%rbp), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	XDrawImageString
	addq	$16, %rsp
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB10_19:                              # %if.end.47
	jmp	.LBB10_28
.LBB10_20:                              # %if.else.48
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_26
# BB#21:                                # %if.then.53
	movl	$0, -68(%rbp)
.LBB10_22:                              # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB10_25
# BB#23:                                # %for.body.57
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-104(%rbp), %rcx
	movslq	-68(%rbp), %r10
	addq	%r10, %rcx
	subq	$16, %rsp
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	XDrawString
	addq	$16, %rsp
	movl	%eax, -160(%rbp)        # 4-byte Spill
# BB#24:                                # %for.inc.71
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_22
.LBB10_25:                              # %for.end.73
	jmp	.LBB10_27
.LBB10_26:                              # %if.else.74
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-104(%rbp), %r9
	movl	-52(%rbp), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	XDrawString
	addq	$16, %rsp
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB10_27:                              # %if.end.85
	jmp	.LBB10_28
.LBB10_28:                              # %if.end.86
	callq	unblock_input
# BB#29:                                # %do.body
	testb	$1, -89(%rbp)
	je	.LBB10_31
# BB#30:                                # %if.then.88
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB10_31:                              # %if.end.91
	jmp	.LBB10_32
.LBB10_32:                              # %do.end
	movq	-16(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB10_51
.LBB10_33:                              # %if.end.92
	callq	block_input
	testb	$1, -33(%rbp)
	je	.LBB10_42
# BB#34:                                # %if.then.94
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_40
# BB#35:                                # %if.then.99
	movl	$0, -68(%rbp)
.LBB10_36:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB10_39
# BB#37:                                # %for.body.103
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movslq	-20(%rbp), %r10
	shlq	$1, %r10
	addq	%r10, %rcx
	movslq	-68(%rbp), %r10
	shlq	$1, %r10
	addq	%r10, %rcx
	subq	$16, %rsp
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-192(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	XDrawImageString16
	addq	$16, %rsp
	movl	%eax, -200(%rbp)        # 4-byte Spill
# BB#38:                                # %for.inc.120
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_36
.LBB10_39:                              # %for.end.122
	jmp	.LBB10_41
.LBB10_40:                              # %if.else.123
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-20(%rbp), %r9
	shlq	$1, %r9
	addq	%r9, %rax
	movl	-52(%rbp), %r10d
	subq	$16, %rsp
	movq	%rax, %r9
	movl	%r10d, (%rsp)
	callq	XDrawImageString16
	addq	$16, %rsp
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB10_41:                              # %if.end.137
	jmp	.LBB10_50
.LBB10_42:                              # %if.else.138
	movq	-16(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_48
# BB#43:                                # %if.then.143
	movl	$0, -68(%rbp)
.LBB10_44:                              # %for.cond.144
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB10_47
# BB#45:                                # %for.body.147
                                        #   in Loop: Header=BB10_44 Depth=1
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movslq	-20(%rbp), %r10
	shlq	$1, %r10
	addq	%r10, %rcx
	movslq	-68(%rbp), %r10
	shlq	$1, %r10
	addq	%r10, %rcx
	subq	$16, %rsp
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-216(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	XDrawString16
	addq	$16, %rsp
	movl	%eax, -224(%rbp)        # 4-byte Spill
# BB#46:                                # %for.inc.164
                                        #   in Loop: Header=BB10_44 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_44
.LBB10_47:                              # %for.end.166
	jmp	.LBB10_49
.LBB10_48:                              # %if.else.167
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-20(%rbp), %r9
	shlq	$1, %r9
	addq	%r9, %rax
	movl	-52(%rbp), %r10d
	subq	$16, %rsp
	movq	%rax, %r9
	movl	%r10d, (%rsp)
	callq	XDrawString16
	addq	$16, %rsp
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB10_49:                              # %if.end.181
	jmp	.LBB10_50
.LBB10_50:                              # %if.end.182
	callq	unblock_input
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_51:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	xfont_draw, .Lfunc_end10-xfont_draw
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_check,@function
xfont_check:                            # @xfont_check
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
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	-24(%rbp), %rdi
	cmpq	216(%rdi), %rsi
	cmovel	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xfont_check, .Lfunc_end11-xfont_check
	.cfi_endproc

	.globl	syms_of_xfont
	.align	16, 0x90
	.type	syms_of_xfont,@function
syms_of_xfont:                          # @syms_of_xfont
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
	subq	$16, %rsp
	movabsq	$xfont_scripts_cache, %rdi
	callq	staticpro
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$371, %edi              # imm = 0x173
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-16(%rbp), %rsi
	movq	%rax, -8(%rbp)
	callq	Fmake_hash_table
	movabsq	$xfont_scratch_props, %rdi
	movq	%rax, xfont_scripts_cache
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$34, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$1045, %edi             # imm = 0x415
	movq	%rax, xfont_scratch_props
	callq	builtin_lisp_symbol
	movabsq	$xfont_driver, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, xfont_driver
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	register_font_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	syms_of_xfont, .Lfunc_end12-syms_of_xfont
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_encode_coding_xlfd,@function
xfont_encode_coding_xlfd:               # @xfont_encode_coding_xlfd
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB13_11
.LBB13_4:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_6
# BB#5:                                 # %cond.true.7
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	jmp	.LBB13_10
.LBB13_6:                               # %cond.false.18
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_8
# BB#7:                                 # %cond.true.23
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.38
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	string_char
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB13_10:                              # %cond.end.40
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB13_11:                              # %cond.end.42
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jl	.LBB13_13
# BB#12:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB13_15
.LBB13_13:                              # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-40(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_1
.LBB13_14:                              # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movl	-36(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xfont_encode_coding_xlfd, .Lfunc_end13-xfont_encode_coding_xlfd
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_list_pattern,@function
xfont_list_pattern:                     # @xfont_list_pattern
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
	subq	$864, %rsp              # imm = 0x360
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	font_registry_charsets
	cmpl	$0, %eax
	jge	.LBB14_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_99
.LBB14_3:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_11
# BB#4:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	movq	globals+2080, %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_6
# BB#5:                                 # %if.then.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_99
.LBB14_6:                               # %if.end.14
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_10
# BB#7:                                 # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	xfont_chars_supported
	testb	$1, %al
	jne	.LBB14_9
# BB#8:                                 # %if.then.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_99
.LBB14_9:                               # %if.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB14_10:                              # %if.end.21
	jmp	.LBB14_11
.LBB14_11:                              # %if.end.22
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	x_catch_errors
	movl	$512, -80(%rbp)         # imm = 0x200
.LBB14_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-80(%rbp), %edx
	callq	XListFonts
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB14_13
	jmp	.LBB14_14
.LBB14_13:                              # %if.then.25
	movq	-16(%rbp), %rdi
	callq	x_clear_errors
	movl	$0, -84(%rbp)
	jmp	.LBB14_18
.LBB14_14:                              # %if.end.26
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.28
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.29
                                        #   in Loop: Header=BB14_12 Depth=1
	movq	-96(%rbp), %rdi
	callq	XFreeFontNames
	movl	%eax, -708(%rbp)        # 4-byte Spill
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	-80(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB14_12
.LBB14_18:                              # %for.end
	cmpl	$0, -84(%rbp)
	jle	.LBB14_94
# BB#19:                                # %if.then.32
	movslq	-84(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -616(%rbp)
	movq	xfont_scratch_props, %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	addq	$8, %rax
	movq	%rax, -624(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -632(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -640(%rbp)
	movl	$0, -76(%rbp)
.LBB14_20:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	movq	xfont_scratch_props, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-720(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB14_23
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB14_20 Depth=1
	xorl	%edi, %edi
	movq	xfont_scratch_props, %rax
	movslq	-76(%rbp), %rsi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#22:                                # %for.inc.44
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_20
.LBB14_23:                              # %for.end.45
	movl	$0, -76(%rbp)
.LBB14_24:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB14_27
# BB#25:                                # %for.body.49
                                        #   in Loop: Header=BB14_24 Depth=1
	movslq	-76(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-76(%rbp), %rcx
	movq	-616(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#26:                                # %for.inc.52
                                        #   in Loop: Header=BB14_24 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_24
.LBB14_27:                              # %for.end.54
	movl	$8, %eax
	movl	%eax, %edx
	movabsq	$compare_font_names, %rcx
	movq	-616(%rbp), %rsi
	movslq	-84(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-744(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movb	$0, -641(%rbp)
	movl	$0, -648(%rbp)
.LBB14_28:                              # %for.cond.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_35 Depth 2
                                        #       Child Loop BB14_60 Depth 3
	movb	$1, %al
	cmpl	$0, -648(%rbp)
	movb	%al, -745(%rbp)         # 1-byte Spill
	je	.LBB14_33
# BB#29:                                # %lor.rhs
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -648(%rbp)
	movb	%cl, -746(%rbp)         # 1-byte Spill
	jne	.LBB14_32
# BB#30:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB14_28 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-760(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -746(%rbp)         # 1-byte Spill
	jne	.LBB14_32
# BB#31:                                # %land.rhs
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	-641(%rbp), %al
	movb	%al, -746(%rbp)         # 1-byte Spill
.LBB14_32:                              # %land.end
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	-746(%rbp), %al         # 1-byte Reload
	movb	%al, -745(%rbp)         # 1-byte Spill
.LBB14_33:                              # %lor.end
                                        #   in Loop: Header=BB14_28 Depth=1
	movb	-745(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_34
	jmp	.LBB14_93
.LBB14_34:                              # %for.body.67
                                        #   in Loop: Header=BB14_28 Depth=1
	movl	$0, -76(%rbp)
.LBB14_35:                              # %for.cond.68
                                        #   Parent Loop BB14_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_60 Depth 3
	movl	-76(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB14_91
# BB#36:                                # %for.body.71
                                        #   in Loop: Header=BB14_35 Depth=2
	cmpl	$0, -76(%rbp)
	jle	.LBB14_39
# BB#37:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-616(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-76(%rbp), %rcx
	movq	-616(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB14_39
# BB#38:                                # %if.then.83
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_39:                              # %if.end.84
                                        #   in Loop: Header=BB14_35 Depth=2
	xorl	%edi, %edi
	movq	-640(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_41
# BB#40:                                # %if.then.88
                                        #   in Loop: Header=BB14_35 Depth=2
	callq	font_make_entity
	movq	%rax, -640(%rbp)
.LBB14_41:                              # %if.end.90
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-608(%rbp), %rdx
	movslq	-76(%rbp), %rax
	movq	-616(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	xfont_decode_coding_xlfd
	leaq	-608(%rbp), %rdi
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rsi
	movq	-640(%rbp), %rdx
	callq	font_parse_xlfd
	cmpl	$0, %eax
	jge	.LBB14_43
# BB#42:                                # %if.then.99
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_43:                              # %if.end.100
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$1045, %edi             # imm = 0x415
	movq	-640(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_48
# BB#44:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$11, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_48
# BB#45:                                # %land.lhs.true.114
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$9, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB14_48
# BB#46:                                # %land.lhs.true.118
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$11, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB14_48
# BB#47:                                # %if.then.123
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_48:                              # %if.end.124
                                        #   in Loop: Header=BB14_35 Depth=2
	xorl	%edi, %edi
	movq	globals+2072, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_58
# BB#49:                                # %if.then.128
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$8, %eax
	movl	%eax, %esi
	movl	$0, -660(%rbp)
	movq	-640(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_51
# BB#50:                                # %if.then.135
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$8, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -660(%rbp)
	jmp	.LBB14_54
.LBB14_51:                              # %if.else
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$8, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB14_53
# BB#52:                                # %if.then.144
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$8, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	XFLOAT_DATA
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -660(%rbp)
.LBB14_53:                              # %if.end.148
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_54
.LBB14_54:                              # %if.end.149
                                        #   in Loop: Header=BB14_35 Depth=2
	cmpl	$0, -660(%rbp)
	jne	.LBB14_57
# BB#55:                                # %land.lhs.true.152
                                        #   in Loop: Header=BB14_35 Depth=2
	cmpl	$0, -648(%rbp)
	jne	.LBB14_57
# BB#56:                                # %if.then.155
                                        #   in Loop: Header=BB14_35 Depth=2
	movb	$1, -641(%rbp)
	jmp	.LBB14_90
.LBB14_57:                              # %if.end.156
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_70
.LBB14_58:                              # %if.else.157
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	globals+2072, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_69
# BB#59:                                # %if.then.162
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	globals+2072, %rax
	movq	%rax, -672(%rbp)
.LBB14_60:                              # %for.cond.163
                                        #   Parent Loop BB14_28 Depth=1
                                        #     Parent Loop BB14_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-672(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_66
# BB#61:                                # %for.body.168
                                        #   in Loop: Header=BB14_60 Depth=3
	movq	-672(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_62
	jmp	.LBB14_64
.LBB14_62:                              # %land.lhs.true.172
                                        #   in Loop: Header=BB14_60 Depth=3
	movq	-680(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-616(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-656(%rbp), %rdx
	callq	fast_c_string_match_ignore_case
	cmpq	$0, %rax
	jl	.LBB14_64
# BB#63:                                # %if.then.178
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_66
.LBB14_64:                              # %if.end.179
                                        #   in Loop: Header=BB14_60 Depth=3
	jmp	.LBB14_65
.LBB14_65:                              # %for.inc.180
                                        #   in Loop: Header=BB14_60 Depth=3
	movq	-672(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -672(%rbp)
	jmp	.LBB14_60
.LBB14_66:                              # %for.end.184
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	-672(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB14_68
# BB#67:                                # %if.then.189
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_68:                              # %if.end.190
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_69
.LBB14_69:                              # %if.end.191
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_70
.LBB14_70:                              # %if.end.192
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_72
# BB#71:                                # %if.then.197
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_72:                              # %if.end.198
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-640(%rbp), %rdi
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_76
# BB#73:                                # %if.then.202
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	font_registry_charsets
	cmpl	$0, %eax
	jge	.LBB14_75
# BB#74:                                # %if.then.207
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	$0, -64(%rbp)
.LBB14_75:                              # %if.end.208
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_76
.LBB14_76:                              # %if.end.209
                                        #   in Loop: Header=BB14_35 Depth=2
	cmpq	$0, -64(%rbp)
	jne	.LBB14_78
# BB#77:                                # %if.then.211
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_78:                              # %if.end.212
                                        #   in Loop: Header=BB14_35 Depth=2
	cmpq	$0, -72(%rbp)
	je	.LBB14_83
# BB#79:                                # %if.then.214
                                        #   in Loop: Header=BB14_35 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_81
# BB#80:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_35 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	xfont_chars_supported
	testb	$1, %al
	jne	.LBB14_81
	jmp	.LBB14_82
.LBB14_81:                              # %if.then.220
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	-640(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -640(%rbp)
.LBB14_82:                              # %if.end.223
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_83:                              # %if.end.224
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-624(%rbp), %rcx
	movq	-640(%rbp), %rdi
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	callq	aref_addr
	movl	$56, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB14_85
# BB#84:                                # %lor.lhs.false.228
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$10, %eax
	movl	%eax, %esi
	movq	-640(%rbp), %rdi
	callq	AREF
	movq	-624(%rbp), %rsi
	cmpq	56(%rsi), %rax
	je	.LBB14_86
.LBB14_85:                              # %if.then.233
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	xfont_scratch_props, %rdi
	movq	-640(%rbp), %rcx
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	aref_addr
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$7, %edx
	movl	%edx, %ecx
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	vcopy
	movl	$10, %r8d
	movl	%r8d, %esi
	movq	xfont_scratch_props, %rdi
	movq	-640(%rbp), %rax
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$7, %r8d
	movl	%r8d, %esi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-616(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	xfont_scratch_props, %rdx
	movq	-64(%rbp), %rcx
	callq	xfont_supported_scripts
	movq	%rax, -632(%rbp)
.LBB14_86:                              # %if.end.239
                                        #   in Loop: Header=BB14_35 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_88
# BB#87:                                # %lor.lhs.false.243
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	-40(%rbp), %rdi
	movq	-632(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB14_89
.LBB14_88:                              # %if.then.248
                                        #   in Loop: Header=BB14_35 Depth=2
	movq	-640(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -640(%rbp)
.LBB14_89:                              # %if.end.251
                                        #   in Loop: Header=BB14_35 Depth=2
	jmp	.LBB14_90
.LBB14_90:                              # %for.inc.252
                                        #   in Loop: Header=BB14_35 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_35
.LBB14_91:                              # %for.end.254
                                        #   in Loop: Header=BB14_28 Depth=1
	jmp	.LBB14_92
.LBB14_92:                              # %for.inc.255
                                        #   in Loop: Header=BB14_28 Depth=1
	movl	-648(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -648(%rbp)
	jmp	.LBB14_28
.LBB14_93:                              # %for.end.257
	movq	-96(%rbp), %rdi
	callq	XFreeFontNames
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB14_94:                              # %if.end.259
	callq	x_uncatch_errors
	callq	unblock_input
# BB#95:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_97
# BB#96:                                # %if.then.263
	movq	-24(%rbp), %rdi
	callq	build_string
	movabsq	$.L.str.1, %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	font_add_log
.LBB14_97:                              # %if.end.265
	jmp	.LBB14_98
.LBB14_98:                              # %do.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_99:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xfont_list_pattern, .Lfunc_end14-xfont_list_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_chars_supported,@function
xfont_chars_supported:                  # @xfont_chars_supported
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB15_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_48
# BB#4:                                 # %if.then
	jmp	.LBB15_5
.LBB15_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_47
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -52(%rbp)
	testb	$1, %al
	jne	.LBB15_7
	jmp	.LBB15_8
.LBB15_7:                               # %cond.true.7
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_9
	jmp	.LBB15_11
.LBB15_8:                               # %cond.false.10
                                        #   in Loop: Header=BB15_5 Depth=1
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_11
.LBB15_9:                               # %land.lhs.true
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_11
# BB#10:                                # %cond.true.16
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB15_37
.LBB15_11:                              # %cond.false.17
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB15_14
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB15_14
# BB#13:                                # %lor.lhs.false.25
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB15_15
.LBB15_14:                              # %cond.true.29
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	encode_char
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB15_36
.LBB15_15:                              # %cond.false.30
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB15_17
# BB#16:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB15_18
.LBB15_17:                              # %cond.true.36
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_35
.LBB15_18:                              # %cond.false.37
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB15_23
# BB#19:                                # %cond.true.41
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_21
# BB#20:                                # %cond.true.46
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_22
.LBB15_21:                              # %cond.false.49
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	encode_char
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB15_22:                              # %cond.end.51
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_34
.LBB15_23:                              # %cond.false.53
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB15_32
# BB#24:                                # %cond.true.57
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_30
# BB#25:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_26
	jmp	.LBB15_30
.LBB15_26:                              # %cond.true.69
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB15_28
# BB#27:                                # %cond.true.78
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB15_29
.LBB15_28:                              # %cond.false.80
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB15_29:                              # %cond.end.83
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB15_31
.LBB15_30:                              # %cond.false.85
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	encode_char
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB15_31:                              # %cond.end.87
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB15_33
.LBB15_32:                              # %cond.false.89
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	encode_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB15_33:                              # %cond.end.91
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB15_34:                              # %cond.end.93
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB15_35:                              # %cond.end.95
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB15_36:                              # %cond.end.97
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB15_37:                              # %cond.end.99
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB15_39
# BB#38:                                # %if.then.104
	jmp	.LBB15_47
.LBB15_39:                              # %if.end
                                        #   in Loop: Header=BB15_5 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB15_41
# BB#40:                                # %if.then.106
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_46
.LBB15_41:                              # %if.end.107
                                        #   in Loop: Header=BB15_5 Depth=1
	cmpl	$65536, -56(%rbp)       # imm = 0x10000
	jb	.LBB15_43
# BB#42:                                # %if.then.110
	jmp	.LBB15_47
.LBB15_43:                              # %if.end.111
                                        #   in Loop: Header=BB15_5 Depth=1
	leaq	-64(%rbp), %rsi
	movl	-56(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movb	%cl, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, -63(%rbp)
	movq	-24(%rbp), %rdi
	callq	xfont_get_pcm
	cmpq	$0, %rax
	jne	.LBB15_45
# BB#44:                                # %if.then.118
	jmp	.LBB15_47
.LBB15_45:                              # %if.end.119
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_46
.LBB15_46:                              # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB15_5
.LBB15_47:                              # %for.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
	jmp	.LBB15_95
.LBB15_48:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_49
	jmp	.LBB15_93
.LBB15_49:                              # %if.then.125
	movq	-16(%rbp), %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB15_50:                              # %for.cond.128
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	jl	.LBB15_92
# BB#51:                                # %for.body.131
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	AREF
	movb	$1, %cl
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -76(%rbp)
	testb	$1, %cl
	jne	.LBB15_52
	jmp	.LBB15_53
.LBB15_52:                              # %cond.true.137
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-76(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_54
	jmp	.LBB15_56
.LBB15_53:                              # %cond.false.141
                                        #   in Loop: Header=BB15_50 Depth=1
	movslq	-76(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_56
.LBB15_54:                              # %land.lhs.true.146
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_56
# BB#55:                                # %cond.true.153
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB15_82
.LBB15_56:                              # %cond.false.154
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB15_59
# BB#57:                                # %lor.lhs.false.161
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB15_59
# BB#58:                                # %lor.lhs.false.165
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB15_60
.LBB15_59:                              # %cond.true.169
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	encode_char
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB15_81
.LBB15_60:                              # %cond.false.171
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB15_62
# BB#61:                                # %lor.lhs.false.175
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB15_63
.LBB15_62:                              # %cond.true.179
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB15_80
.LBB15_63:                              # %cond.false.181
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB15_68
# BB#64:                                # %cond.true.185
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_66
# BB#65:                                # %cond.true.191
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB15_67
.LBB15_66:                              # %cond.false.196
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	encode_char
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB15_67:                              # %cond.end.198
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB15_79
.LBB15_68:                              # %cond.false.200
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB15_77
# BB#69:                                # %cond.true.204
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB15_75
# BB#70:                                # %land.lhs.true.211
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_71
	jmp	.LBB15_75
.LBB15_71:                              # %cond.true.218
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB15_73
# BB#72:                                # %cond.true.227
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB15_74
.LBB15_73:                              # %cond.false.229
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB15_74:                              # %cond.end.232
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB15_76
.LBB15_75:                              # %cond.false.234
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	encode_char
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB15_76:                              # %cond.end.236
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB15_78
.LBB15_77:                              # %cond.false.238
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	encode_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB15_78:                              # %cond.end.240
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB15_79:                              # %cond.end.242
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB15_80:                              # %cond.end.244
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB15_81:                              # %cond.end.246
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB15_82:                              # %cond.end.248
                                        #   in Loop: Header=BB15_50 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB15_84
# BB#83:                                # %if.then.254
                                        #   in Loop: Header=BB15_50 Depth=1
	jmp	.LBB15_91
.LBB15_84:                              # %if.end.255
                                        #   in Loop: Header=BB15_50 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB15_86
# BB#85:                                # %if.then.257
	jmp	.LBB15_92
.LBB15_86:                              # %if.end.258
                                        #   in Loop: Header=BB15_50 Depth=1
	cmpl	$65536, -80(%rbp)       # imm = 0x10000
	jb	.LBB15_88
# BB#87:                                # %if.then.261
                                        #   in Loop: Header=BB15_50 Depth=1
	jmp	.LBB15_91
.LBB15_88:                              # %if.end.262
                                        #   in Loop: Header=BB15_50 Depth=1
	leaq	-88(%rbp), %rsi
	movl	-80(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %cl
	movb	%cl, -88(%rbp)
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, -87(%rbp)
	movq	-24(%rbp), %rdi
	callq	xfont_get_pcm
	cmpq	$0, %rax
	je	.LBB15_90
# BB#89:                                # %if.then.271
	jmp	.LBB15_92
.LBB15_90:                              # %if.end.272
                                        #   in Loop: Header=BB15_50 Depth=1
	jmp	.LBB15_91
.LBB15_91:                              # %for.inc.273
                                        #   in Loop: Header=BB15_50 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB15_50
.LBB15_92:                              # %for.end.274
	cmpq	$0, -72(%rbp)
	setge	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB15_95
.LBB15_93:                              # %if.end.277
	jmp	.LBB15_94
.LBB15_94:                              # %if.end.278
	movb	$0, -1(%rbp)
.LBB15_95:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xfont_chars_supported, .Lfunc_end15-xfont_chars_supported
	.cfi_endproc

	.align	16, 0x90
	.type	compare_font_names,@function
compare_font_names:                     # @compare_font_names
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	xstrcasecmp
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	compare_font_names, .Lfunc_end16-compare_font_names
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_decode_coding_xlfd,@function
xfont_decode_coding_xlfd:               # @xfont_decode_coding_xlfd
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB17_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -44(%rbp)
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_4
.LBB17_3:                               # %cond.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB17_5
	jmp	.LBB17_6
.LBB17_4:                               # %cond.false
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB17_6
.LBB17_5:                               # %cond.true.6
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, %eax
	movl	-44(%rbp), %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB17_17
.LBB17_6:                               # %cond.false.8
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_7
	jmp	.LBB17_8
.LBB17_7:                               # %cond.true.9
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB17_9
	jmp	.LBB17_10
.LBB17_8:                               # %cond.false.13
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB17_10
.LBB17_9:                               # %cond.true.18
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB17_16
.LBB17_10:                              # %cond.false.24
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_11
	jmp	.LBB17_12
.LBB17_11:                              # %cond.true.25
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB17_13
	jmp	.LBB17_14
.LBB17_12:                              # %cond.false.29
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB17_14
.LBB17_13:                              # %cond.true.34
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$3, %eax
	movl	-44(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB17_15
.LBB17_14:                              # %cond.false.48
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	char_string
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB17_15:                              # %cond.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB17_16:                              # %cond.end.49
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB17_17:                              # %cond.end.51
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, %eax
	jne	.LBB17_19
# BB#18:                                # %if.then
	jmp	.LBB17_20
.LBB17_19:                              # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_1
.LBB17_20:                              # %while.end
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	xfont_decode_coding_xlfd, .Lfunc_end17-xfont_decode_coding_xlfd
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_supported_scripts,@function
xfont_supported_scripts:                # @xfont_supported_scripts
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
	subq	$160, %rsp
	movl	$2, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%r8, %rsi
	callq	AREF
	movl	$583, %edi              # imm = 0x247
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	callq	intern
	movabsq	$.L.str.3, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	intern
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB18_23
.LBB18_2:                               # %if.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$597, %edi              # imm = 0x255
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.4, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
	jmp	.LBB18_23
.LBB18_4:                               # %if.end.11
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	xfont_scripts_cache, %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB18_22
# BB#5:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	XLoadQueryFont
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB18_18
# BB#6:                                 # %if.then.19
	movq	-56(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB18_17
# BB#7:                                 # %if.then.21
	movq	globals+2080, %rax
	movq	%rax, -64(%rbp)
.LBB18_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_16
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_14
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_14
# BB#11:                                # %if.then.36
                                        #   in Loop: Header=BB18_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	xfont_chars_supported
	testb	$1, %al
	jne	.LBB18_12
	jmp	.LBB18_13
.LBB18_12:                              # %if.then.45
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB18_13:                              # %if.end.47
                                        #   in Loop: Header=BB18_8 Depth=1
	jmp	.LBB18_14
.LBB18_14:                              # %if.end.48
                                        #   in Loop: Header=BB18_8 Depth=1
	jmp	.LBB18_15
.LBB18_15:                              # %for.inc
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB18_8
.LBB18_16:                              # %for.end
	jmp	.LBB18_17
.LBB18_17:                              # %if.end.52
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	XFreeFont
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB18_18:                              # %if.end.54
	movl	$3, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$578, %edi              # imm = 0x242
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_21
# BB#19:                                # %land.lhs.true.59
	movl	$605, %edi              # imm = 0x25D
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_21
# BB#20:                                # %if.then.65
	movl	$605, %edi              # imm = 0x25D
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB18_21:                              # %if.end.68
	movq	-32(%rbp), %rdi
	callq	Fcopy_sequence
	movq	-48(%rbp), %rsi
	movq	xfont_scripts_cache, %rdx
	movq	%rax, %rdi
	callq	Fputhash
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB18_22:                              # %if.end.71
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	xfont_supported_scripts, .Lfunc_end18-xfont_supported_scripts
	.cfi_endproc

	.align	16, 0x90
	.type	xfont_get_pcm,@function
xfont_get_pcm:                          # @xfont_get_pcm
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB19_15
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB19_8
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB19_8
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB19_7
# BB#4:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	20(%rax), %ecx
	jb	.LBB19_7
# BB#5:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	24(%rax), %ecx
	ja	.LBB19_7
# BB#6:                                 # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movzbl	1(%rsi), %eax
	movslq	%eax, %rsi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movl	%eax, %esi
	subq	%rsi, %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -24(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_14
.LBB19_8:                               # %if.else
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	28(%rax), %ecx
	jb	.LBB19_13
# BB#9:                                 # %land.lhs.true.27
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	32(%rax), %ecx
	ja	.LBB19_13
# BB#10:                                # %land.lhs.true.33
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	20(%rax), %ecx
	jb	.LBB19_13
# BB#11:                                # %land.lhs.true.39
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	24(%rax), %ecx
	ja	.LBB19_13
# BB#12:                                # %if.then.45
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %esi
	movq	-8(%rbp), %rcx
	subl	28(%rcx), %esi
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	20(%rcx), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB19_13:                              # %if.end.61
	jmp	.LBB19_14
.LBB19_14:                              # %if.end.62
	jmp	.LBB19_19
.LBB19_15:                              # %if.else.63
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	20(%rax), %ecx
	jb	.LBB19_18
# BB#16:                                # %land.lhs.true.69
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	24(%rax), %ecx
	ja	.LBB19_18
# BB#17:                                # %if.then.75
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movq	%rax, -24(%rbp)
.LBB19_18:                              # %if.end.76
	jmp	.LBB19_19
.LBB19_19:                              # %if.end.77
	cmpq	$0, -24(%rbp)
	je	.LBB19_22
# BB#20:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movswl	4(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB19_23
# BB#21:                                # %land.lhs.true.83
	movq	-24(%rbp), %rax
	movswl	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movswl	(%rax), %edx
	subl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB19_23
.LBB19_22:                              # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB19_24
.LBB19_23:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB19_24:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end19:
	.size	xfont_get_pcm, .Lfunc_end19-xfont_get_pcm
	.cfi_endproc

	.type	xfont_driver,@object    # @xfont_driver
	.data
	.globl	xfont_driver
	.align	8
xfont_driver:
	.quad	0                       # 0x0
	.byte	0                       # 0x0
	.zero	7
	.quad	xfont_get_cache
	.quad	xfont_list
	.quad	xfont_match
	.quad	xfont_list_family
	.quad	0
	.quad	xfont_open
	.quad	xfont_close
	.quad	xfont_prepare_face
	.quad	0
	.quad	xfont_has_char
	.quad	xfont_encode_char
	.quad	xfont_text_extents
	.quad	xfont_draw
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xfont_check
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	xfont_driver, 224

	.type	xfont_scripts_cache,@object # @xfont_scripts_cache
	.local	xfont_scripts_cache
	.comm	xfont_scripts_cache,8,8
	.type	xfont_scratch_props,@object # @xfont_scratch_props
	.local	xfont_scratch_props
	.comm	xfont_scratch_props,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iso10646-1"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"xfont-list"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"kana"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"han"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"hangul"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"xfont-match"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"  x:unknown registry"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"  x:unparse failed"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"  x:open failed"
	.size	.L.str.9, 16

	.type	xfont_text_extents.pcm,@object # @xfont_text_extents.pcm
	.local	xfont_text_extents.pcm
	.comm	xfont_text_extents.pcm,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
