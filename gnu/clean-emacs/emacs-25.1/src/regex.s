	.text
	.file	"regex.bc"
	.globl	re_set_syntax
	.align	16, 0x90
	.type	re_set_syntax,@function
re_set_syntax:                          # @re_set_syntax
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
	movq	re_syntax_options, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, re_syntax_options
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	re_set_syntax, .Lfunc_end0-re_set_syntax
	.cfi_endproc

	.globl	re_set_whitespace_regexp
	.align	16, 0x90
	.type	re_set_whitespace_regexp,@function
re_set_whitespace_regexp:               # @re_set_whitespace_regexp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, whitespace_regexp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	re_set_whitespace_regexp, .Lfunc_end1-re_set_whitespace_regexp
	.cfi_endproc

	.globl	re_wctype
	.align	16, 0x90
	.type	re_wctype,@function
re_wctype:                              # @re_wctype
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB2_35
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	movl	$2, -4(%rbp)
	jmp	.LBB2_35
.LBB2_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_6
# BB#5:                                 # %if.then.7
	movl	$3, -4(%rbp)
	jmp	.LBB2_35
.LBB2_6:                                # %if.else.8
	movq	-24(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	movl	$16, -4(%rbp)
	jmp	.LBB2_35
.LBB2_8:                                # %if.else.12
	movq	-24(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.15
	movl	$15, -4(%rbp)
	jmp	.LBB2_35
.LBB2_10:                               # %if.else.16
	movq	-24(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_12
# BB#11:                                # %if.then.19
	movl	$4, -4(%rbp)
	jmp	.LBB2_35
.LBB2_12:                               # %if.else.20
	movq	-24(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_14
# BB#13:                                # %if.then.23
	movl	$6, -4(%rbp)
	jmp	.LBB2_35
.LBB2_14:                               # %if.else.24
	movq	-24(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_16
# BB#15:                                # %if.then.27
	movl	$5, -4(%rbp)
	jmp	.LBB2_35
.LBB2_16:                               # %if.else.28
	movq	-24(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_18
# BB#17:                                # %if.then.31
	movl	$8, -4(%rbp)
	jmp	.LBB2_35
.LBB2_18:                               # %if.else.32
	movq	-24(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.35
	movl	$13, -4(%rbp)
	jmp	.LBB2_35
.LBB2_20:                               # %if.else.36
	movq	-24(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %if.then.39
	movl	$7, -4(%rbp)
	jmp	.LBB2_35
.LBB2_22:                               # %if.else.40
	movq	-24(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_24
# BB#23:                                # %if.then.43
	movl	$17, -4(%rbp)
	jmp	.LBB2_35
.LBB2_24:                               # %if.else.44
	movq	-24(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_26
# BB#25:                                # %if.then.47
	movl	$14, -4(%rbp)
	jmp	.LBB2_35
.LBB2_26:                               # %if.else.48
	movq	-24(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_28
# BB#27:                                # %if.then.51
	movl	$10, -4(%rbp)
	jmp	.LBB2_35
.LBB2_28:                               # %if.else.52
	movq	-24(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_30
# BB#29:                                # %if.then.55
	movl	$11, -4(%rbp)
	jmp	.LBB2_35
.LBB2_30:                               # %if.else.56
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_32
# BB#31:                                # %if.then.59
	movl	$9, -4(%rbp)
	jmp	.LBB2_35
.LBB2_32:                               # %if.else.60
	movq	-24(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_34
# BB#33:                                # %if.then.63
	movl	$12, -4(%rbp)
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.64
	movl	$0, -4(%rbp)
.LBB2_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	re_wctype, .Lfunc_end2-re_wctype
	.cfi_endproc

	.globl	re_iswctype
	.align	16, 0x90
	.type	re_iswctype,@function
re_iswctype:                            # @re_iswctype
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
	subq	$80, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$17, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB3_81
# BB#83:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	cmpl	$128, -8(%rbp)
	jge	.LBB3_10
# BB#2:                                 # %cond.true
	cmpl	$97, -8(%rbp)
	jl	.LBB3_4
# BB#3:                                 # %land.lhs.true
	movb	$1, %al
	cmpl	$122, -8(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
	jle	.LBB3_9
.LBB3_4:                                # %lor.lhs.false
	cmpl	$65, -8(%rbp)
	jl	.LBB3_6
# BB#5:                                 # %land.lhs.true.4
	movb	$1, %al
	cmpl	$90, -8(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
	jle	.LBB3_9
.LBB3_6:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -8(%rbp)
	movb	%cl, -34(%rbp)          # 1-byte Spill
	jl	.LBB3_8
# BB#7:                                 # %land.rhs
	cmpl	$57, -8(%rbp)
	setle	%al
	movb	%al, -34(%rbp)          # 1-byte Spill
.LBB3_8:                                # %land.end
	movb	-34(%rbp), %al          # 1-byte Reload
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB3_9:                                # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB3_13
.LBB3_10:                               # %cond.false
	movl	-8(%rbp), %edi
	callq	alphabeticp
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB3_12
# BB#11:                                # %lor.rhs.8
	movl	-8(%rbp), %edi
	callq	decimalnump
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB3_12:                               # %lor.end.10
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB3_13:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_14:                               # %sw.bb.14
	cmpl	$128, -8(%rbp)
	jge	.LBB3_21
# BB#15:                                # %cond.true.17
	cmpl	$97, -8(%rbp)
	jl	.LBB3_17
# BB#16:                                # %land.lhs.true.20
	movb	$1, %al
	cmpl	$122, -8(%rbp)
	movb	%al, -42(%rbp)          # 1-byte Spill
	jle	.LBB3_20
.LBB3_17:                               # %lor.rhs.23
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$65, -8(%rbp)
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jl	.LBB3_19
# BB#18:                                # %land.rhs.26
	cmpl	$90, -8(%rbp)
	setle	%al
	movb	%al, -43(%rbp)          # 1-byte Spill
.LBB3_19:                               # %land.end.29
	movb	-43(%rbp), %al          # 1-byte Reload
	movb	%al, -42(%rbp)          # 1-byte Spill
.LBB3_20:                               # %lor.end.30
	movb	-42(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false.32
	movl	-8(%rbp), %edi
	callq	alphabeticp
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
.LBB3_22:                               # %cond.end.35
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_23:                               # %sw.bb.40
	movb	$1, %al
	cmpl	$32, -8(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
	je	.LBB3_25
# BB#24:                                # %lor.rhs.43
	cmpl	$9, -8(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB3_25:                               # %lor.end.46
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_26:                               # %sw.bb.51
	cmpl	$32, -8(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_27:                               # %sw.bb.57
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -8(%rbp)
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jl	.LBB3_29
# BB#28:                                # %land.rhs.60
	cmpl	$57, -8(%rbp)
	setle	%al
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB3_29:                               # %land.end.63
	movb	-50(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_30:                               # %sw.bb.67
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_31
	jmp	.LBB3_32
.LBB3_31:                               # %cond.true.68
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB3_33
	jmp	.LBB3_38
.LBB3_32:                               # %cond.false.71
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB3_38
.LBB3_33:                               # %cond.true.76
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -8(%rbp)
	movb	%cl, -51(%rbp)          # 1-byte Spill
	jle	.LBB3_37
# BB#34:                                # %land.rhs.79
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -8(%rbp)
	movb	%cl, -52(%rbp)          # 1-byte Spill
	jl	.LBB3_36
# BB#35:                                # %land.rhs.82
	cmpl	$160, -8(%rbp)
	setle	%al
	movb	%al, -52(%rbp)          # 1-byte Spill
.LBB3_36:                               # %land.end.85
	movb	-52(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -51(%rbp)          # 1-byte Spill
.LBB3_37:                               # %land.end.87
	movb	-51(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false.89
	movl	-8(%rbp), %edi
	callq	graphicp
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -56(%rbp)         # 4-byte Spill
.LBB3_39:                               # %cond.end.92
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_40:                               # %sw.bb.97
	movl	-8(%rbp), %edi
	callq	lowercasep
	andb	$1, %al
	movzbl	%al, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	movb	%dil, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_41:                               # %sw.bb.103
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_42
	jmp	.LBB3_43
.LBB3_42:                               # %cond.true.104
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB3_44
	jmp	.LBB3_49
.LBB3_43:                               # %cond.false.108
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB3_49
.LBB3_44:                               # %cond.true.113
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -8(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jl	.LBB3_48
# BB#45:                                # %land.rhs.116
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -8(%rbp)
	movb	%cl, -58(%rbp)          # 1-byte Spill
	jl	.LBB3_47
# BB#46:                                # %land.rhs.119
	cmpl	$159, -8(%rbp)
	setle	%al
	movb	%al, -58(%rbp)          # 1-byte Spill
.LBB3_47:                               # %land.end.122
	movb	-58(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB3_48:                               # %land.end.125
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB3_50
.LBB3_49:                               # %cond.false.127
	movl	-8(%rbp), %edi
	callq	printablep
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -64(%rbp)         # 4-byte Spill
.LBB3_50:                               # %cond.end.130
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_51:                               # %sw.bb.135
	cmpl	$128, -8(%rbp)
	jge	.LBB3_63
# BB#52:                                # %cond.true.138
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -8(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jle	.LBB3_62
# BB#53:                                # %land.lhs.true.141
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -8(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jge	.LBB3_62
# BB#54:                                # %land.rhs.144
	cmpl	$97, -8(%rbp)
	jl	.LBB3_56
# BB#55:                                # %land.lhs.true.147
	movb	$1, %al
	cmpl	$122, -8(%rbp)
	movb	%al, -66(%rbp)          # 1-byte Spill
	jle	.LBB3_61
.LBB3_56:                               # %lor.lhs.false.150
	cmpl	$65, -8(%rbp)
	jl	.LBB3_58
# BB#57:                                # %land.lhs.true.153
	movb	$1, %al
	cmpl	$90, -8(%rbp)
	movb	%al, -66(%rbp)          # 1-byte Spill
	jle	.LBB3_61
.LBB3_58:                               # %lor.rhs.156
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -8(%rbp)
	movb	%cl, -67(%rbp)          # 1-byte Spill
	jl	.LBB3_60
# BB#59:                                # %land.rhs.159
	cmpl	$57, -8(%rbp)
	setle	%al
	movb	%al, -67(%rbp)          # 1-byte Spill
.LBB3_60:                               # %land.end.162
	movb	-67(%rbp), %al          # 1-byte Reload
	movb	%al, -66(%rbp)          # 1-byte Spill
.LBB3_61:                               # %lor.end.164
	movb	-66(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB3_62:                               # %land.end.167
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_64
.LBB3_63:                               # %cond.false.169
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	syntax_property
	cmpl	$2, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB3_64:                               # %cond.end.173
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_65:                               # %sw.bb.178
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	syntax_property
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_66:                               # %sw.bb.185
	movl	-8(%rbp), %edi
	callq	uppercasep
	andb	$1, %al
	movzbl	%al, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	movb	%dil, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_67:                               # %sw.bb.191
	cmpl	$48, -8(%rbp)
	jl	.LBB3_69
# BB#68:                                # %land.lhs.true.194
	movb	$1, %al
	cmpl	$57, -8(%rbp)
	movb	%al, -73(%rbp)          # 1-byte Spill
	jle	.LBB3_74
.LBB3_69:                               # %lor.lhs.false.197
	cmpl	$97, -8(%rbp)
	jl	.LBB3_71
# BB#70:                                # %land.lhs.true.200
	movb	$1, %al
	cmpl	$102, -8(%rbp)
	movb	%al, -73(%rbp)          # 1-byte Spill
	jle	.LBB3_74
.LBB3_71:                               # %lor.rhs.203
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$65, -8(%rbp)
	movb	%cl, -74(%rbp)          # 1-byte Spill
	jl	.LBB3_73
# BB#72:                                # %land.rhs.206
	cmpl	$70, -8(%rbp)
	setle	%al
	movb	%al, -74(%rbp)          # 1-byte Spill
.LBB3_73:                               # %land.end.209
	movb	-74(%rbp), %al          # 1-byte Reload
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB3_74:                               # %lor.end.211
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_75:                               # %sw.bb.216
	cmpl	$128, -8(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_76:                               # %sw.bb.222
	cmpl	$128, -8(%rbp)
	setl	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_82
.LBB3_77:                               # %sw.bb.227
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_78:                               # %sw.bb.234
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	setb	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_79:                               # %sw.bb.241
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	syntax_property
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB3_82
.LBB3_80:                               # %sw.bb.248
	movb	$0, -1(%rbp)
	jmp	.LBB3_82
.LBB3_81:                               # %sw.default
	callq	abort
.LBB3_82:                               # %return
	movsbl	-1(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	re_iswctype, .Lfunc_end3-re_iswctype
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_80
	.quad	.LBB3_1
	.quad	.LBB3_14
	.quad	.LBB3_79
	.quad	.LBB3_30
	.quad	.LBB3_41
	.quad	.LBB3_40
	.quad	.LBB3_66
	.quad	.LBB3_51
	.quad	.LBB3_26
	.quad	.LBB3_27
	.quad	.LBB3_67
	.quad	.LBB3_23
	.quad	.LBB3_65
	.quad	.LBB3_78
	.quad	.LBB3_76
	.quad	.LBB3_75
	.quad	.LBB3_77

	.text
	.globl	re_compile_fastmap
	.align	16, 0x90
	.type	re_compile_fastmap,@function
re_compile_fastmap:                     # @re_compile_fastmap
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	xorl	%esi, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	memset
	movq	-16(%rbp), %rdx
	movw	56(%rdx), %cx
	andw	$-9, %cx
	orw	$8, %cx
	movw	%cx, 56(%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %r8
	addq	16(%r8), %rdx
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %r9
	movw	56(%r9), %cx
	shrw	$8, %cx
	andw	$1, %cx
	movzwl	%cx, %ecx
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	analyze_first
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movq	-16(%rbp), %rdx
	movw	%ax, %r11w
	movw	56(%rdx), %bx
	andw	$1, %r11w
	andw	$-2, %bx
	orw	%r11w, %bx
	movw	%bx, 56(%rdx)
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	re_compile_fastmap, .Lfunc_end4-re_compile_fastmap
	.cfi_endproc

	.align	16, 0x90
	.type	analyze_first,@function
analyze_first:                          # @analyze_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movb	$0, -46(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_143
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$34, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	ja	.LBB5_141
# BB#145:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_3:                                # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB5_144
.LBB5_4:                                # %sw.bb.1
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %sw.bb.3
	cmpq	$0, -32(%rbp)
	je	.LBB5_29
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	$1, (%rdx,%rax)
	cmpl	$0, -36(%rbp)
	jne	.LBB5_28
# BB#7:                                 # %if.then.6
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_8
	jmp	.LBB5_9
.LBB5_8:                                # %cond.true
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB5_10
	jmp	.LBB5_11
.LBB5_9:                                # %cond.false
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB5_11
.LBB5_10:                               # %cond.true.16
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %cond.false.19
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB5_12:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$127, -60(%rbp)
	jg	.LBB5_14
# BB#13:                                # %cond.true.25
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_27
.LBB5_14:                               # %cond.false.26
	cmpl	$2047, -60(%rbp)        # imm = 0x7FF
	jg	.LBB5_16
# BB#15:                                # %cond.true.29
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_26
.LBB5_16:                               # %cond.false.30
	cmpl	$65535, -60(%rbp)       # imm = 0xFFFF
	jg	.LBB5_18
# BB#17:                                # %cond.true.33
	movl	-60(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_25
.LBB5_18:                               # %cond.false.36
	cmpl	$2097151, -60(%rbp)     # imm = 0x1FFFFF
	jg	.LBB5_20
# BB#19:                                # %cond.true.39
	movl	-60(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB5_24
.LBB5_20:                               # %cond.false.42
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jg	.LBB5_22
# BB#21:                                # %cond.true.45
	movl	$248, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.46
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB5_23:                               # %cond.end.49
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_24:                               # %cond.end.51
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_25:                               # %cond.end.53
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_26:                               # %cond.end.55
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB5_27:                               # %cond.end.57
	movl	-104(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
.LBB5_28:                               # %if.end
	jmp	.LBB5_29
.LBB5_29:                               # %if.end.61
	jmp	.LBB5_142
.LBB5_30:                               # %sw.bb.62
	cmpq	$0, -32(%rbp)
	jne	.LBB5_32
# BB#31:                                # %if.then.64
	jmp	.LBB5_142
.LBB5_32:                               # %if.end.65
	movl	$-1, -4(%rbp)
	jmp	.LBB5_144
.LBB5_33:                               # %sw.bb.66
	cmpq	$0, -32(%rbp)
	jne	.LBB5_35
# BB#34:                                # %if.then.68
	jmp	.LBB5_142
.LBB5_35:                               # %if.end.69
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	shll	$3, %ecx
	movl	%ecx, -40(%rbp)
.LBB5_36:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB5_39
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB5_36 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#38:                                # %for.inc
                                        #   in Loop: Header=BB5_36 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_36
.LBB5_39:                               # %for.end
	jmp	.LBB5_40
.LBB5_40:                               # %sw.bb.78
	cmpq	$0, -32(%rbp)
	jne	.LBB5_42
# BB#41:                                # %if.then.80
	jmp	.LBB5_142
.LBB5_42:                               # %if.end.81
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -45(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	shll	$3, %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB5_43:                               # %for.cond.92
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jl	.LBB5_48
# BB#44:                                # %for.body.95
                                        #   in Loop: Header=BB5_43 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movl	-40(%rbp), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-40(%rbp), %r8d
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-124(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movsbl	-45(%rbp), %r8d
	xorl	%r8d, %edx
	cmpl	$0, %edx
	je	.LBB5_46
# BB#45:                                # %if.then.104
                                        #   in Loop: Header=BB5_43 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB5_46:                               # %if.end.107
                                        #   in Loop: Header=BB5_43 Depth=1
	jmp	.LBB5_47
.LBB5_47:                               # %for.inc.108
                                        #   in Loop: Header=BB5_43 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_43
.LBB5_48:                               # %for.end.109
	movsbl	-45(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_51
# BB#49:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB5_58
# BB#50:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$127, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movzbl	-2(%rdx,%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %esi
	andl	$127, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rdx
	movzbl	-2(%rdx,%rax), %esi
	shll	$8, %esi
	addl	%esi, %ecx
	cmpl	$0, %ecx
	je	.LBB5_58
.LBB5_51:                               # %if.then.139
	movsbl	-46(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_57
# BB#52:                                # %if.then.143
	movl	$192, -40(%rbp)
.LBB5_53:                               # %for.cond.144
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$248, -40(%rbp)
	jg	.LBB5_56
# BB#54:                                # %for.body.147
                                        #   in Loop: Header=BB5_53 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#55:                                # %for.inc.150
                                        #   in Loop: Header=BB5_53 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_53
.LBB5_56:                               # %for.end.152
	movb	$1, -46(%rbp)
.LBB5_57:                               # %if.end.153
	jmp	.LBB5_105
.LBB5_58:                               # %if.else
	cmpb	$0, -45(%rbp)
	jne	.LBB5_104
# BB#59:                                # %land.lhs.true.155
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB5_104
# BB#60:                                # %land.lhs.true.161
	movsbl	-46(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_104
# BB#61:                                # %if.then.165
	leaq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$127, %ecx
	addl	$2, %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -68(%rbp)
.LBB5_62:                               # %for.cond.173
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_98 Depth 2
	cmpl	$0, -68(%rbp)
	jle	.LBB5_103
# BB#63:                                # %for.body.176
                                        #   in Loop: Header=BB5_62 Depth=1
	jmp	.LBB5_64
.LBB5_64:                               # %do.body
                                        #   in Loop: Header=BB5_62 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
# BB#65:                                # %do.end
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$127, -64(%rbp)
	jg	.LBB5_67
# BB#66:                                # %cond.true.189
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB5_80
.LBB5_67:                               # %cond.false.190
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$2047, -64(%rbp)        # imm = 0x7FF
	jg	.LBB5_69
# BB#68:                                # %cond.true.193
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB5_79
.LBB5_69:                               # %cond.false.196
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$65535, -64(%rbp)       # imm = 0xFFFF
	jg	.LBB5_71
# BB#70:                                # %cond.true.199
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB5_78
.LBB5_71:                               # %cond.false.202
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$2097151, -64(%rbp)     # imm = 0x1FFFFF
	jg	.LBB5_73
# BB#72:                                # %cond.true.205
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB5_77
.LBB5_73:                               # %cond.false.208
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$4194175, -64(%rbp)     # imm = 0x3FFF7F
	jg	.LBB5_75
# BB#74:                                # %cond.true.211
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	$248, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB5_76
.LBB5_75:                               # %cond.false.212
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB5_76:                               # %cond.end.216
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB5_77:                               # %cond.end.218
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB5_78:                               # %cond.end.220
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB5_79:                               # %cond.end.222
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB5_80:                               # %cond.end.224
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -69(%rbp)
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -16(%rbp)
# BB#81:                                # %do.body.228
                                        #   in Loop: Header=BB5_62 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -64(%rbp)
# BB#82:                                # %do.end.239
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$127, -64(%rbp)
	jg	.LBB5_84
# BB#83:                                # %cond.true.242
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB5_97
.LBB5_84:                               # %cond.false.243
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$2047, -64(%rbp)        # imm = 0x7FF
	jg	.LBB5_86
# BB#85:                                # %cond.true.246
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB5_96
.LBB5_86:                               # %cond.false.249
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$65535, -64(%rbp)       # imm = 0xFFFF
	jg	.LBB5_88
# BB#87:                                # %cond.true.252
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB5_95
.LBB5_88:                               # %cond.false.255
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$2097151, -64(%rbp)     # imm = 0x1FFFFF
	jg	.LBB5_90
# BB#89:                                # %cond.true.258
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB5_94
.LBB5_90:                               # %cond.false.261
                                        #   in Loop: Header=BB5_62 Depth=1
	cmpl	$4194175, -64(%rbp)     # imm = 0x3FFF7F
	jg	.LBB5_92
# BB#91:                                # %cond.true.264
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	$248, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB5_93
.LBB5_92:                               # %cond.false.265
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-64(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB5_93:                               # %cond.end.269
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB5_94:                               # %cond.end.271
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB5_95:                               # %cond.end.273
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB5_96:                               # %cond.end.275
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB5_97:                               # %cond.end.277
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -70(%rbp)
	movzbl	-69(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB5_98:                               # %for.cond.281
                                        #   Parent Loop BB5_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movzbl	-70(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB5_101
# BB#99:                                # %for.body.285
                                        #   in Loop: Header=BB5_98 Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#100:                               # %for.inc.288
                                        #   in Loop: Header=BB5_98 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_98
.LBB5_101:                              # %for.end.290
                                        #   in Loop: Header=BB5_62 Depth=1
	jmp	.LBB5_102
.LBB5_102:                              # %for.inc.291
                                        #   in Loop: Header=BB5_62 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB5_62
.LBB5_103:                              # %for.end.294
	jmp	.LBB5_104
.LBB5_104:                              # %if.end.295
	jmp	.LBB5_105
.LBB5_105:                              # %if.end.296
	jmp	.LBB5_142
.LBB5_106:                              # %sw.bb.297
	cmpq	$0, -32(%rbp)
	jne	.LBB5_108
# BB#107:                               # %if.then.299
	jmp	.LBB5_142
.LBB5_108:                              # %if.end.300
	movl	$-1, -4(%rbp)
	jmp	.LBB5_144
.LBB5_109:                              # %sw.bb.301
	cmpq	$0, -32(%rbp)
	jne	.LBB5_111
# BB#110:                               # %if.then.303
	jmp	.LBB5_142
.LBB5_111:                              # %if.end.304
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$34, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -45(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$256, -40(%rbp)         # imm = 0x100
.LBB5_112:                              # %for.cond.312
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jl	.LBB5_117
# BB#113:                               # %for.body.315
                                        #   in Loop: Header=BB5_112 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	CHAR_HAS_CATEGORY
	andb	$1, %al
	movzbl	%al, %esi
	movsbl	-45(%rbp), %edi
	xorl	%edi, %esi
	cmpl	$0, %esi
	je	.LBB5_115
# BB#114:                               # %if.then.321
                                        #   in Loop: Header=BB5_112 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB5_115:                              # %if.end.324
                                        #   in Loop: Header=BB5_112 Depth=1
	jmp	.LBB5_116
.LBB5_116:                              # %for.inc.325
                                        #   in Loop: Header=BB5_112 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_112
.LBB5_117:                              # %for.end.327
	movsbl	-46(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_123
# BB#118:                               # %if.then.331
	movl	$192, -40(%rbp)
.LBB5_119:                              # %for.cond.332
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$248, -40(%rbp)
	jg	.LBB5_122
# BB#120:                               # %for.body.335
                                        #   in Loop: Header=BB5_119 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#121:                               # %for.inc.338
                                        #   in Loop: Header=BB5_119 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_119
.LBB5_122:                              # %for.end.340
	movb	$1, -46(%rbp)
.LBB5_123:                              # %if.end.341
	jmp	.LBB5_142
.LBB5_124:                              # %sw.bb.342
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_125:                              # %sw.bb.343
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB5_127
# BB#126:                               # %if.then.347
	jmp	.LBB5_142
.LBB5_127:                              # %if.end.348
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax,%rcx), %esi
	addl	$-14, %esi
	subl	$4, %esi
	movl	%esi, -172(%rbp)        # 4-byte Spill
	ja	.LBB5_129
	jmp	.LBB5_128
.LBB5_128:                              # %sw.bb.352
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_130
.LBB5_129:                              # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_130:                              # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_131
.LBB5_131:                              # %sw.bb.354
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	cmpq	-56(%rbp), %rdi
	ja	.LBB5_133
# BB#132:                               # %if.then.360
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_136
.LBB5_133:                              # %if.else.361
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	analyze_first
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB5_135
# BB#134:                               # %if.then.364
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_144
.LBB5_135:                              # %if.end.365
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB5_136:                              # %if.end.368
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_137:                              # %sw.bb.369
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_138:                              # %sw.bb.371
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_139:                              # %sw.bb.373
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_140:                              # %sw.bb.375
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_141:                              # %sw.default.377
	callq	abort
.LBB5_142:                              # %sw.epilog.378
	movl	$0, -4(%rbp)
	jmp	.LBB5_144
.LBB5_143:                              # %while.end
	movl	$1, -4(%rbp)
.LBB5_144:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	analyze_first, .Lfunc_end5-analyze_first
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_124
	.quad	.LBB5_3
	.quad	.LBB5_5
	.quad	.LBB5_30
	.quad	.LBB5_40
	.quad	.LBB5_33
	.quad	.LBB5_140
	.quad	.LBB5_140
	.quad	.LBB5_4
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_125
	.quad	.LBB5_131
	.quad	.LBB5_131
	.quad	.LBB5_131
	.quad	.LBB5_131
	.quad	.LBB5_131
	.quad	.LBB5_138
	.quad	.LBB5_137
	.quad	.LBB5_139
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_106
	.quad	.LBB5_106
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_124
	.quad	.LBB5_109
	.quad	.LBB5_109

	.text
	.globl	re_set_registers
	.align	16, 0x90
	.type	re_set_registers,@function
re_set_registers:                       # @re_set_registers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movw	56(%rax), %cx
	andw	$-7, %cx
	orw	$2, %cx
	movw	%cx, 56(%rax)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movw	56(%rax), %cx
	andw	$-7, %cx
	movw	%cx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	re_set_registers, .Lfunc_end6-re_set_registers
	.cfi_endproc

	.globl	re_search
	.align	16, 0x90
	.type	re_search,@function
re_search:                              # @re_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %r11
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	re_search_2
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	re_search, .Lfunc_end7-re_search
	.cfi_endproc

	.globl	re_search_2
	.align	16, 0x90
	.type	re_search_2,@function
re_search_2:                            # @re_search_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	movw	56(%rax), %bx
	shrw	$9, %bx
	andw	$1, %bx
	movzwl	%bx, %r14d
	movb	%r14b, %r15b
	movb	%r15b, -162(%rbp)
	cmpq	$0, -80(%rbp)
	jl	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jbe	.LBB8_3
.LBB8_2:                                # %if.then
	movq	$-1, -32(%rbp)
	jmp	.LBB8_263
.LBB8_3:                                # %if.end
	cmpq	$0, -160(%rbp)
	jge	.LBB8_5
# BB#4:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-80(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB8_8
.LBB8_5:                                # %if.else
	movq	-160(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jbe	.LBB8_7
# BB#6:                                 # %if.then.12
	movq	-152(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB8_7:                                # %if.end.14
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.15
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jbe	.LBB8_15
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB8_15
# BB#10:                                # %land.lhs.true.21
	cmpq	$0, -88(%rbp)
	jle	.LBB8_15
# BB#11:                                # %if.then.24
	cmpq	$0, -80(%rbp)
	jle	.LBB8_13
# BB#12:                                # %if.then.27
	movq	$-1, -32(%rbp)
	jmp	.LBB8_263
.LBB8_13:                               # %if.else.28
	movq	$0, -88(%rbp)
# BB#14:                                # %if.end.29
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.30
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jbe	.LBB8_21
# BB#16:                                # %land.lhs.true.34
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$31, %ecx
	jne	.LBB8_21
# BB#17:                                # %land.lhs.true.40
	cmpq	$0, -88(%rbp)
	jle	.LBB8_21
# BB#18:                                # %if.then.43
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jge	.LBB8_20
# BB#19:                                # %if.then.49
	movq	$-1, -32(%rbp)
	jmp	.LBB8_263
.LBB8_20:                               # %if.end.50
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.51
	cmpq	$0, -136(%rbp)
	je	.LBB8_24
# BB#22:                                # %land.lhs.true.52
	movq	-40(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$3, %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB8_24
# BB#23:                                # %if.then.58
	movq	-40(%rbp), %rdi
	callq	re_compile_fastmap
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB8_24:                               # %if.end.59
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -161(%rbp)
	movq	re_match_object, %rax
	movq	%rax, gl_state
	movq	-80(%rbp), %rax
	movq	re_match_object, %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%dl, -305(%rbp)         # 1-byte Spill
	je	.LBB8_26
# BB#25:                                # %lor.rhs
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -305(%rbp)         # 1-byte Spill
.LBB8_26:                               # %lor.end
	movb	-305(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-304(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -176(%rbp)
	movq	re_match_object, %rdi
	movq	-176(%rbp), %rsi
	callq	SETUP_SYNTAX_TABLE_FOR_OBJECT
.LBB8_27:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_48 Depth 2
                                        #     Child Loop BB8_78 Depth 2
                                        #     Child Loop BB8_102 Depth 2
                                        #     Child Loop BB8_132 Depth 2
                                        #     Child Loop BB8_238 Depth 2
	movsbl	-161(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB8_35
# BB#28:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -80(%rbp)
	jle	.LBB8_35
# BB#29:                                # %if.then.79
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.LBB8_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB8_32
.LBB8_31:                               # %cond.false
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$1, %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
.LBB8_32:                               # %cond.end
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	je	.LBB8_34
# BB#33:                                # %if.then.91
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_207
.LBB8_34:                               # %if.end.92
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_35
.LBB8_35:                               # %if.end.93
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB8_197
# BB#36:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jae	.LBB8_197
# BB#37:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-40(%rbp), %rax
	movw	56(%rax), %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB8_197
# BB#38:                                # %if.then.103
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB8_40
# BB#39:                                # %cond.true.106
                                        #   in Loop: Header=BB8_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB8_41
.LBB8_40:                               # %cond.false.107
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB8_41:                               # %cond.end.108
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -88(%rbp)
	jle	.LBB8_139
# BB#42:                                # %if.then.113
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB8_45
# BB#43:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB8_45
# BB#44:                                # %if.then.120
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -208(%rbp)
.LBB8_45:                               # %if.end.123
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$2, -144(%rbp)
	je	.LBB8_100
# BB#46:                                # %if.then.126
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpb	$0, -162(%rbp)
	je	.LBB8_77
# BB#47:                                # %if.then.128
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_48
.LBB8_48:                               # %while.cond
                                        #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jle	.LBB8_76
# BB#49:                                # %while.body
                                        #   in Loop: Header=BB8_48 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_51
# BB#50:                                # %cond.true.134
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	$1, -212(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB8_58
.LBB8_51:                               # %cond.false.137
                                        #   in Loop: Header=BB8_48 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_53
# BB#52:                                # %cond.true.142
                                        #   in Loop: Header=BB8_48 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -212(%rbp)
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-184(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -328(%rbp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_53:                               # %cond.false.155
                                        #   in Loop: Header=BB8_48 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_55
# BB#54:                                # %cond.true.160
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	$3, -212(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-184(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-184(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB8_56
.LBB8_55:                               # %cond.false.174
                                        #   in Loop: Header=BB8_48 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-212(%rbp), %rdx
	movq	-184(%rbp), %rdi
	callq	string_char
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB8_56:                               # %cond.end.176
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB8_57:                               # %cond.end.178
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB8_58:                               # %cond.end.180
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movq	-144(%rbp), %rdi
	movl	-188(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -188(%rbp)
	cmpl	$127, -188(%rbp)
	jg	.LBB8_60
# BB#59:                                # %cond.true.185
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-188(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB8_73
.LBB8_60:                               # %cond.false.186
                                        #   in Loop: Header=BB8_48 Depth=2
	cmpl	$2047, -188(%rbp)       # imm = 0x7FF
	jg	.LBB8_62
# BB#61:                                # %cond.true.189
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB8_72
.LBB8_62:                               # %cond.false.191
                                        #   in Loop: Header=BB8_48 Depth=2
	cmpl	$65535, -188(%rbp)      # imm = 0xFFFF
	jg	.LBB8_64
# BB#63:                                # %cond.true.194
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-188(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB8_71
.LBB8_64:                               # %cond.false.197
                                        #   in Loop: Header=BB8_48 Depth=2
	cmpl	$2097151, -188(%rbp)    # imm = 0x1FFFFF
	jg	.LBB8_66
# BB#65:                                # %cond.true.200
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-188(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB8_70
.LBB8_66:                               # %cond.false.203
                                        #   in Loop: Header=BB8_48 Depth=2
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	jg	.LBB8_68
# BB#67:                                # %cond.true.206
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	$248, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB8_69
.LBB8_68:                               # %cond.false.207
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB8_69:                               # %cond.end.211
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB8_70:                               # %cond.end.213
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB8_71:                               # %cond.end.215
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB8_72:                               # %cond.end.217
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB8_73:                               # %cond.end.219
                                        #   in Loop: Header=BB8_48 Depth=2
	movl	-336(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB8_75
# BB#74:                                # %if.then.223
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_76
.LBB8_75:                               # %if.end.224
                                        #   in Loop: Header=BB8_48 Depth=2
	movslq	-212(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movl	-212(%rbp), %edx
	movq	-184(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB8_48
.LBB8_76:                               # %while.end
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_99
.LBB8_77:                               # %if.else.228
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_78
.LBB8_78:                               # %while.cond.229
                                        #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jle	.LBB8_98
# BB#79:                                # %while.body.232
                                        #   in Loop: Header=BB8_78 Depth=2
	movb	$1, %al
	movq	-184(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -188(%rbp)
	testb	$1, %al
	jne	.LBB8_80
	jmp	.LBB8_81
.LBB8_80:                               # %cond.true.234
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-188(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_82
	jmp	.LBB8_83
.LBB8_81:                               # %cond.false.238
                                        #   in Loop: Header=BB8_78 Depth=2
	movslq	-188(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_83
.LBB8_82:                               # %cond.true.243
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-188(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB8_84
.LBB8_83:                               # %cond.false.244
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-188(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB8_84:                               # %cond.end.246
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)
	movq	-144(%rbp), %rdi
	movl	-216(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -220(%rbp)
	movl	-220(%rbp), %eax
	cmpl	-216(%rbp), %eax
	je	.LBB8_95
# BB#85:                                # %land.lhs.true.251
                                        #   in Loop: Header=BB8_78 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_86
	jmp	.LBB8_87
.LBB8_86:                               # %cond.true.252
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-220(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_88
	jmp	.LBB8_89
.LBB8_87:                               # %cond.false.256
                                        #   in Loop: Header=BB8_78 Depth=2
	movslq	-220(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_89
.LBB8_88:                               # %cond.true.261
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-220(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB8_93
.LBB8_89:                               # %cond.false.262
                                        #   in Loop: Header=BB8_78 Depth=2
	cmpl	$4194175, -220(%rbp)    # imm = 0x3FFF7F
	jle	.LBB8_91
# BB#90:                                # %cond.true.265
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-220(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB8_92
.LBB8_91:                               # %cond.false.267
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB8_92
.LBB8_92:                               # %cond.end.268
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB8_93:                               # %cond.end.270
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_95
# BB#94:                                # %if.then.274
                                        #   in Loop: Header=BB8_78 Depth=2
	movl	-216(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB8_95:                               # %if.end.275
                                        #   in Loop: Header=BB8_78 Depth=2
	movslq	-188(%rbp), %rax
	movq	-136(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_97
# BB#96:                                # %if.then.279
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_98
.LBB8_97:                               # %if.end.280
                                        #   in Loop: Header=BB8_78 Depth=2
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB8_78
.LBB8_98:                               # %while.end.281
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_99
.LBB8_99:                               # %if.end.282
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_138
.LBB8_100:                              # %if.else.283
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpb	$0, -162(%rbp)
	je	.LBB8_131
# BB#101:                               # %if.then.285
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_102
.LBB8_102:                              # %while.cond.286
                                        #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jle	.LBB8_130
# BB#103:                               # %while.body.289
                                        #   in Loop: Header=BB8_102 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_105
# BB#104:                               # %cond.true.295
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	$1, -224(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB8_112
.LBB8_105:                              # %cond.false.298
                                        #   in Loop: Header=BB8_102 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_107
# BB#106:                               # %cond.true.303
                                        #   in Loop: Header=BB8_102 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -224(%rbp)
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-184(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -372(%rbp)        # 4-byte Spill
	jmp	.LBB8_111
.LBB8_107:                              # %cond.false.318
                                        #   in Loop: Header=BB8_102 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_109
# BB#108:                               # %cond.true.323
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	$3, -224(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-184(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-184(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	jmp	.LBB8_110
.LBB8_109:                              # %cond.false.337
                                        #   in Loop: Header=BB8_102 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-224(%rbp), %rdx
	movq	-184(%rbp), %rdi
	callq	string_char
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB8_110:                              # %cond.end.339
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB8_111:                              # %cond.end.341
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB8_112:                              # %cond.end.343
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	cmpl	$127, -188(%rbp)
	jg	.LBB8_114
# BB#113:                               # %cond.true.347
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-188(%rbp), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB8_127
.LBB8_114:                              # %cond.false.348
                                        #   in Loop: Header=BB8_102 Depth=2
	cmpl	$2047, -188(%rbp)       # imm = 0x7FF
	jg	.LBB8_116
# BB#115:                               # %cond.true.351
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB8_126
.LBB8_116:                              # %cond.false.354
                                        #   in Loop: Header=BB8_102 Depth=2
	cmpl	$65535, -188(%rbp)      # imm = 0xFFFF
	jg	.LBB8_118
# BB#117:                               # %cond.true.357
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-188(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB8_125
.LBB8_118:                              # %cond.false.360
                                        #   in Loop: Header=BB8_102 Depth=2
	cmpl	$2097151, -188(%rbp)    # imm = 0x1FFFFF
	jg	.LBB8_120
# BB#119:                               # %cond.true.363
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-188(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB8_124
.LBB8_120:                              # %cond.false.366
                                        #   in Loop: Header=BB8_102 Depth=2
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	jg	.LBB8_122
# BB#121:                               # %cond.true.369
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	$248, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB8_123
.LBB8_122:                              # %cond.false.370
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB8_123:                              # %cond.end.374
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB8_124:                              # %cond.end.376
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB8_125:                              # %cond.end.378
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB8_126:                              # %cond.end.380
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB8_127:                              # %cond.end.382
                                        #   in Loop: Header=BB8_102 Depth=2
	movl	-380(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB8_129
# BB#128:                               # %if.then.387
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_130
.LBB8_129:                              # %if.end.388
                                        #   in Loop: Header=BB8_102 Depth=2
	movslq	-224(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movl	-224(%rbp), %edx
	movq	-184(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB8_102
.LBB8_130:                              # %while.end.393
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_137
.LBB8_131:                              # %if.else.394
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_132
.LBB8_132:                              # %while.cond.395
                                        #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpq	-208(%rbp), %rdx
	movb	%cl, -397(%rbp)         # 1-byte Spill
	jle	.LBB8_134
# BB#133:                               # %land.rhs
                                        #   in Loop: Header=BB8_132 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-136(%rbp), %rdx
	cmpb	$0, (%rdx,%rax)
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -397(%rbp)        # 1-byte Spill
.LBB8_134:                              # %land.end
                                        #   in Loop: Header=BB8_132 Depth=2
	movb	-397(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_135
	jmp	.LBB8_136
.LBB8_135:                              # %while.body.401
                                        #   in Loop: Header=BB8_132 Depth=2
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB8_132
.LBB8_136:                              # %while.end.404
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_137
.LBB8_137:                              # %if.end.405
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_138
.LBB8_138:                              # %if.end.406
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-200(%rbp), %rax
	subq	-88(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB8_196
.LBB8_139:                              # %if.else.409
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpb	$0, -162(%rbp)
	je	.LBB8_170
# BB#140:                               # %if.then.411
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_142
# BB#141:                               # %cond.true.416
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB8_149
.LBB8_142:                              # %cond.false.419
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_144
# BB#143:                               # %cond.true.424
                                        #   in Loop: Header=BB8_27 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-184(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -408(%rbp)        # 4-byte Spill
	jmp	.LBB8_148
.LBB8_144:                              # %cond.false.439
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_146
# BB#145:                               # %cond.true.444
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-184(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-184(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB8_147
.LBB8_146:                              # %cond.false.458
                                        #   in Loop: Header=BB8_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB8_147:                              # %cond.end.460
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB8_148:                              # %cond.end.462
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB8_149:                              # %cond.end.464
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	cmpq	$2, -144(%rbp)
	je	.LBB8_151
# BB#150:                               # %cond.true.468
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-144(%rbp), %rdi
	movl	-188(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB8_152
.LBB8_151:                              # %cond.false.470
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB8_152:                              # %cond.end.471
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	cmpl	$127, -188(%rbp)
	jg	.LBB8_154
# BB#153:                               # %cond.true.475
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB8_167
.LBB8_154:                              # %cond.false.476
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpl	$2047, -188(%rbp)       # imm = 0x7FF
	jg	.LBB8_156
# BB#155:                               # %cond.true.479
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB8_166
.LBB8_156:                              # %cond.false.482
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpl	$65535, -188(%rbp)      # imm = 0xFFFF
	jg	.LBB8_158
# BB#157:                               # %cond.true.485
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB8_165
.LBB8_158:                              # %cond.false.488
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpl	$2097151, -188(%rbp)    # imm = 0x1FFFFF
	jg	.LBB8_160
# BB#159:                               # %cond.true.491
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB8_164
.LBB8_160:                              # %cond.false.494
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	jg	.LBB8_162
# BB#161:                               # %cond.true.497
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$248, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB8_163
.LBB8_162:                              # %cond.false.498
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB8_163:                              # %cond.end.502
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB8_164:                              # %cond.end.504
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB8_165:                              # %cond.end.506
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB8_166:                              # %cond.end.508
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB8_167:                              # %cond.end.510
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB8_169
# BB#168:                               # %if.then.515
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_207
.LBB8_169:                              # %if.end.516
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_195
.LBB8_170:                              # %if.else.517
                                        #   in Loop: Header=BB8_27 Depth=1
	movb	$1, %al
	movq	-184(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -188(%rbp)
	testb	$1, %al
	jne	.LBB8_171
	jmp	.LBB8_172
.LBB8_171:                              # %cond.true.521
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_173
	jmp	.LBB8_174
.LBB8_172:                              # %cond.false.525
                                        #   in Loop: Header=BB8_27 Depth=1
	movslq	-188(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_174
.LBB8_173:                              # %cond.true.530
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB8_175
.LBB8_174:                              # %cond.false.531
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB8_175:                              # %cond.end.533
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)
	cmpq	$2, -144(%rbp)
	je	.LBB8_177
# BB#176:                               # %cond.true.537
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-144(%rbp), %rdi
	movl	-228(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB8_178
.LBB8_177:                              # %cond.false.539
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB8_178:                              # %cond.end.540
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	cmpl	-228(%rbp), %eax
	je	.LBB8_189
# BB#179:                               # %land.lhs.true.544
                                        #   in Loop: Header=BB8_27 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_180
	jmp	.LBB8_181
.LBB8_180:                              # %cond.true.545
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-232(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_182
	jmp	.LBB8_183
.LBB8_181:                              # %cond.false.549
                                        #   in Loop: Header=BB8_27 Depth=1
	movslq	-232(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_183
.LBB8_182:                              # %cond.true.554
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB8_187
.LBB8_183:                              # %cond.false.555
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpl	$4194175, -232(%rbp)    # imm = 0x3FFF7F
	jle	.LBB8_185
# BB#184:                               # %cond.true.558
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-232(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB8_186
.LBB8_185:                              # %cond.false.560
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB8_186
.LBB8_186:                              # %cond.end.561
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB8_187:                              # %cond.end.563
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-448(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_189
# BB#188:                               # %if.then.567
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB8_189:                              # %if.end.568
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$2, -144(%rbp)
	je	.LBB8_191
# BB#190:                               # %cond.true.571
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-144(%rbp), %rdi
	movl	-188(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB8_192
.LBB8_191:                              # %cond.false.573
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB8_192:                              # %cond.end.574
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB8_194
# BB#193:                               # %if.then.579
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_207
.LBB8_194:                              # %if.end.580
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_195
.LBB8_195:                              # %if.end.581
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_196
.LBB8_196:                              # %if.end.582
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_197
.LBB8_197:                              # %if.end.583
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -88(%rbp)
	jl	.LBB8_202
# BB#198:                               # %land.lhs.true.586
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB8_202
# BB#199:                               # %land.lhs.true.589
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB8_202
# BB#200:                               # %land.lhs.true.591
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-40(%rbp), %rax
	movw	56(%rax), %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB8_202
# BB#201:                               # %if.then.597
	movq	$-1, -32(%rbp)
	jmp	.LBB8_263
.LBB8_202:                              # %if.end.598
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2_internal
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jl	.LBB8_204
# BB#203:                               # %if.then.602
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_263
.LBB8_204:                              # %if.end.603
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$-2, -112(%rbp)
	jne	.LBB8_206
# BB#205:                               # %if.then.606
	movq	$-2, -32(%rbp)
	jmp	.LBB8_263
.LBB8_206:                              # %if.end.607
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_207
.LBB8_207:                              # %advance
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB8_209
# BB#208:                               # %if.then.609
	jmp	.LBB8_262
.LBB8_209:                              # %if.else.610
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpq	$0, -88(%rbp)
	jle	.LBB8_228
# BB#210:                               # %if.then.613
                                        #   in Loop: Header=BB8_27 Depth=1
	cmpb	$0, -162(%rbp)
	je	.LBB8_226
# BB#211:                               # %if.then.615
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB8_213
# BB#212:                               # %cond.true.618
                                        #   in Loop: Header=BB8_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB8_214
.LBB8_213:                              # %cond.false.621
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB8_214:                              # %cond.end.622
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_216
# BB#215:                               # %cond.true.628
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$1, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB8_223
.LBB8_216:                              # %cond.false.629
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_218
# BB#217:                               # %cond.true.633
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$2, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB8_222
.LBB8_218:                              # %cond.false.634
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_220
# BB#219:                               # %cond.true.638
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$3, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB8_221
.LBB8_220:                              # %cond.false.639
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-240(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB8_221:                              # %cond.end.645
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB8_222:                              # %cond.end.647
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB8_223:                              # %cond.end.649
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)
	movslq	-244(%rbp), %rcx
	movq	-88(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jge	.LBB8_225
# BB#224:                               # %if.then.655
	jmp	.LBB8_262
.LBB8_225:                              # %if.end.656
                                        #   in Loop: Header=BB8_27 Depth=1
	movslq	-244(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB8_227
.LBB8_226:                              # %if.else.659
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB8_227:                              # %if.end.661
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_260
.LBB8_228:                              # %if.else.662
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	cmpb	$0, -162(%rbp)
	je	.LBB8_259
# BB#229:                               # %if.then.666
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB8_231
# BB#230:                               # %cond.true.670
                                        #   in Loop: Header=BB8_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB8_232
.LBB8_231:                              # %cond.false.673
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB8_232:                              # %cond.end.674
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB8_234
# BB#233:                               # %cond.true.680
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB8_235
.LBB8_234:                              # %cond.false.681
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB8_235:                              # %cond.end.682
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -272(%rbp)
# BB#236:                               # %do.body
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-256(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jbe	.LBB8_255
# BB#237:                               # %if.then.686
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, -280(%rbp)
.LBB8_238:                              # %do.body.687
                                        #   Parent Loop BB8_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-280(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -280(%rbp)
# BB#239:                               # %do.cond
                                        #   in Loop: Header=BB8_238 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-280(%rbp), %rdx
	cmpq	-272(%rbp), %rdx
	movb	%cl, -497(%rbp)         # 1-byte Spill
	jb	.LBB8_241
# BB#240:                               # %land.rhs.691
                                        #   in Loop: Header=BB8_238 Depth=2
	movq	-280(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -497(%rbp)         # 1-byte Spill
.LBB8_241:                              # %land.end.697
                                        #   in Loop: Header=BB8_238 Depth=2
	movb	-497(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_238
# BB#242:                               # %do.end
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-280(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_244
# BB#243:                               # %cond.true.701
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$1, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB8_251
.LBB8_244:                              # %cond.false.702
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-280(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_246
# BB#245:                               # %cond.true.706
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$2, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB8_250
.LBB8_246:                              # %cond.false.707
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-280(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_248
# BB#247:                               # %cond.true.711
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$3, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB8_249
.LBB8_248:                              # %cond.false.712
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-280(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB8_249:                              # %cond.end.718
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB8_250:                              # %cond.end.720
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%eax, -504(%rbp)        # 4-byte Spill
.LBB8_251:                              # %cond.end.722
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-256(%rbp), %rdx
	movq	-280(%rbp), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB8_253
# BB#252:                               # %cond.true.727
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB8_254
.LBB8_253:                              # %cond.false.728
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-256(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB8_254:                              # %cond.end.730
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)
.LBB8_255:                              # %if.end.732
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_256
.LBB8_256:                              # %do.end.734
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-264(%rbp), %rax
	addq	$-1, %rax
	movq	-256(%rbp), %rcx
	subq	%rcx, %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jle	.LBB8_258
# BB#257:                               # %if.then.742
	jmp	.LBB8_262
.LBB8_258:                              # %if.end.743
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	-264(%rbp), %rax
	addq	$-1, %rax
	movq	-256(%rbp), %rcx
	subq	%rcx, %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
.LBB8_259:                              # %if.end.749
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_260
.LBB8_260:                              # %if.end.750
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_261
.LBB8_261:                              # %if.end.751
                                        #   in Loop: Header=BB8_27 Depth=1
	jmp	.LBB8_27
.LBB8_262:                              # %for.end
	movq	$-1, -32(%rbp)
.LBB8_263:                              # %return
	movq	-32(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	re_search_2, .Lfunc_end8-re_search_2
	.cfi_endproc

	.align	16, 0x90
	.type	re_match_2_internal,@function
re_match_2_internal:                    # @re_match_2_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$2896, %rsp             # imm = 0xB50
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-32(%rbp), %rax
	movw	56(%rax), %r11w
	shrw	$8, %r11w
	andw	$1, %r11w
	movzwl	%r11w, %ebx
	movb	%bl, %r14b
	movb	%r14b, -185(%rbp)
	movq	-32(%rbp), %rax
	movw	56(%rax), %r11w
	shrw	$9, %r11w
	andw	$1, %r11w
	movzwl	%r11w, %ebx
	movb	%bl, %r14b
	movb	%r14b, -186(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	movl	$0, -252(%rbp)
	movq	$0, -280(%rbp)
	movq	$16384, -288(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -296(%rbp)
	movb	$0, -297(%rbp)
# BB#1:                                 # %do.body
	movl	$3200, %eax             # imm = 0xC80
	movl	%eax, %ecx
	cmpq	-288(%rbp), %rcx
	ja	.LBB9_3
# BB#2:                                 # %cond.true
	movq	-288(%rbp), %rax
	addq	$-3200, %rax            # imm = 0xFFFFFFFFFFFFF380
	movq	%rax, -288(%rbp)
	movq	%rsp, %rax
	addq	$-3200, %rax            # imm = 0xFFFFFFFFFFFFF380
	movq	%rax, %rsp
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	movl	$3200, %eax             # imm = 0xC80
	movl	%eax, %edi
	movb	$1, -297(%rbp)
	callq	record_xmalloc
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB9_4:                                # %cond.end
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_6:                                # %if.end
	movq	$20, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
# BB#7:                                 # %do.end
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_48
# BB#8:                                 # %if.then.15
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	cmpq	-288(%rbp), %rax
	ja	.LBB9_10
# BB#9:                                 # %cond.true.18
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	movq	-232(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false.22
	movb	$1, -297(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB9_11:                               # %cond.end.25
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	cmpq	-288(%rbp), %rax
	ja	.LBB9_13
# BB#12:                                # %cond.true.30
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	movq	-232(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.34
	movb	$1, -297(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB9_14:                               # %cond.end.37
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	cmpq	-288(%rbp), %rax
	ja	.LBB9_16
# BB#15:                                # %cond.true.42
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	movq	-232(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.46
	movb	$1, -297(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB9_17:                               # %cond.end.49
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	cmpq	-288(%rbp), %rax
	ja	.LBB9_19
# BB#18:                                # %cond.true.54
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	movq	-232(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false.58
	movb	$1, -297(%rbp)
	movq	-232(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB9_20:                               # %cond.end.61
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movq	%rax, -272(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB9_24
# BB#21:                                # %land.lhs.true
	cmpq	$0, -248(%rbp)
	je	.LBB9_24
# BB#22:                                # %land.lhs.true.65
	cmpq	$0, -264(%rbp)
	je	.LBB9_24
# BB#23:                                # %land.lhs.true.67
	cmpq	$0, -272(%rbp)
	jne	.LBB9_47
.LBB9_24:                               # %if.then.69
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.70
	jmp	.LBB9_26
.LBB9_26:                               # %do.body.71
	cmpq	$0, -240(%rbp)
	je	.LBB9_28
# BB#27:                                # %if.then.73
	movq	$0, -240(%rbp)
.LBB9_28:                               # %if.end.74
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.75
	jmp	.LBB9_30
.LBB9_30:                               # %do.body.76
	cmpq	$0, -248(%rbp)
	je	.LBB9_32
# BB#31:                                # %if.then.78
	movq	$0, -248(%rbp)
.LBB9_32:                               # %if.end.79
	jmp	.LBB9_33
.LBB9_33:                               # %do.end.80
	jmp	.LBB9_34
.LBB9_34:                               # %do.body.81
	cmpq	$0, -264(%rbp)
	je	.LBB9_36
# BB#35:                                # %if.then.83
	movq	$0, -264(%rbp)
.LBB9_36:                               # %if.end.84
	jmp	.LBB9_37
.LBB9_37:                               # %do.end.85
	jmp	.LBB9_38
.LBB9_38:                               # %do.body.86
	cmpq	$0, -272(%rbp)
	je	.LBB9_40
# BB#39:                                # %if.then.88
	movq	$0, -272(%rbp)
.LBB9_40:                               # %if.end.89
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.90
	jmp	.LBB9_42
.LBB9_42:                               # %do.body.91
	testb	$1, -297(%rbp)
	je	.LBB9_44
# BB#43:                                # %if.then.93
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB9_44:                               # %if.end.96
	jmp	.LBB9_45
.LBB9_45:                               # %do.end.97
	jmp	.LBB9_46
.LBB9_46:                               # %do.end.98
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_47:                               # %if.end.99
	jmp	.LBB9_49
.LBB9_48:                               # %if.else
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
.LBB9_49:                               # %if.end.100
	cmpq	$0, -72(%rbp)
	jl	.LBB9_51
# BB#50:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB9_74
.LBB9_51:                               # %if.then.106
	jmp	.LBB9_52
.LBB9_52:                               # %do.body.107
	jmp	.LBB9_53
.LBB9_53:                               # %do.body.108
	cmpq	$0, -240(%rbp)
	je	.LBB9_55
# BB#54:                                # %if.then.110
	movq	$0, -240(%rbp)
.LBB9_55:                               # %if.end.111
	jmp	.LBB9_56
.LBB9_56:                               # %do.end.112
	jmp	.LBB9_57
.LBB9_57:                               # %do.body.113
	cmpq	$0, -248(%rbp)
	je	.LBB9_59
# BB#58:                                # %if.then.115
	movq	$0, -248(%rbp)
.LBB9_59:                               # %if.end.116
	jmp	.LBB9_60
.LBB9_60:                               # %do.end.117
	jmp	.LBB9_61
.LBB9_61:                               # %do.body.118
	cmpq	$0, -264(%rbp)
	je	.LBB9_63
# BB#62:                                # %if.then.120
	movq	$0, -264(%rbp)
.LBB9_63:                               # %if.end.121
	jmp	.LBB9_64
.LBB9_64:                               # %do.end.122
	jmp	.LBB9_65
.LBB9_65:                               # %do.body.123
	cmpq	$0, -272(%rbp)
	je	.LBB9_67
# BB#66:                                # %if.then.125
	movq	$0, -272(%rbp)
.LBB9_67:                               # %if.end.126
	jmp	.LBB9_68
.LBB9_68:                               # %do.end.127
	jmp	.LBB9_69
.LBB9_69:                               # %do.body.128
	testb	$1, -297(%rbp)
	je	.LBB9_71
# BB#70:                                # %if.then.130
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB9_71:                               # %if.end.133
	jmp	.LBB9_72
.LBB9_72:                               # %do.end.134
	jmp	.LBB9_73
.LBB9_73:                               # %do.end.135
	movq	$-1, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_74:                               # %if.end.136
	movq	$1, -104(%rbp)
.LBB9_75:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jae	.LBB9_78
# BB#76:                                # %for.body
                                        #   in Loop: Header=BB9_75 Depth=1
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
# BB#77:                                # %for.inc
                                        #   in Loop: Header=BB9_75 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_75
.LBB9_78:                               # %for.end
	cmpq	$0, -64(%rbp)
	jne	.LBB9_81
# BB#79:                                # %land.lhs.true.142
	cmpq	$0, -40(%rbp)
	je	.LBB9_81
# BB#80:                                # %if.then.145
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB9_81:                               # %if.end.146
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.LBB9_83
# BB#82:                                # %if.then.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	addq	-72(%rbp), %rdx
	movq	%rcx, %rsi
	subq	-48(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -144(%rbp)
	movq	-56(%rbp), %rdx
	addq	-88(%rbp), %rdx
	subq	-48(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -136(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB9_87
.LBB9_83:                               # %if.else.157
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB9_85
# BB#84:                                # %if.then.160
	movq	-40(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_86
.LBB9_85:                               # %if.else.162
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-56(%rbp), %rdx
	addq	-88(%rbp), %rdx
	subq	-48(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -136(%rbp)
.LBB9_86:                               # %if.end.166
	movq	-40(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_87:                               # %if.end.168
	jmp	.LBB9_88
.LBB9_88:                               # %for.cond.169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_106 Depth 2
                                        #     Child Loop BB9_1399 Depth 2
                                        #     Child Loop BB9_1347 Depth 2
                                        #     Child Loop BB9_1298 Depth 2
                                        #     Child Loop BB9_1211 Depth 2
                                        #     Child Loop BB9_1245 Depth 2
                                        #     Child Loop BB9_973 Depth 2
                                        #     Child Loop BB9_1141 Depth 2
                                        #     Child Loop BB9_1042 Depth 2
                                        #     Child Loop BB9_1082 Depth 2
                                        #     Child Loop BB9_918 Depth 2
                                        #     Child Loop BB9_883 Depth 2
                                        #     Child Loop BB9_847 Depth 2
                                        #     Child Loop BB9_705 Depth 2
                                        #     Child Loop BB9_717 Depth 2
                                        #     Child Loop BB9_750 Depth 2
                                        #     Child Loop BB9_763 Depth 2
                                        #     Child Loop BB9_674 Depth 2
                                        #     Child Loop BB9_795 Depth 2
                                        #     Child Loop BB9_624 Depth 2
                                        #     Child Loop BB9_584 Depth 2
                                        #       Child Loop BB9_585 Depth 3
                                        #       Child Loop BB9_594 Depth 3
                                        #     Child Loop BB9_541 Depth 2
                                        #     Child Loop BB9_376 Depth 2
                                        #     Child Loop BB9_519 Depth 2
                                        #     Child Loop BB9_348 Depth 2
                                        #     Child Loop BB9_255 Depth 2
                                        #       Child Loop BB9_256 Depth 3
                                        #     Child Loop BB9_295 Depth 2
                                        #       Child Loop BB9_296 Depth 3
                                        #     Child Loop BB9_1427 Depth 2
                                        #       Child Loop BB9_1442 Depth 3
                                        #     Child Loop BB9_1456 Depth 2
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB9_250
# BB#89:                                # %if.then.172
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	je	.LBB9_125
# BB#90:                                # %if.then.175
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -1081(%rbp)        # 1-byte Spill
	je	.LBB9_93
# BB#91:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-280(%rbp), %rdx
	movb	%cl, -1081(%rbp)        # 1-byte Spill
	ja	.LBB9_93
# BB#92:                                # %land.rhs
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-280(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -1081(%rbp)        # 1-byte Spill
.LBB9_93:                               # %land.end
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1081(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	cmpq	$0, -48(%rbp)
	movl	%ecx, -1088(%rbp)       # 4-byte Spill
	movb	%dl, -1089(%rbp)        # 1-byte Spill
	je	.LBB9_96
# BB#94:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-144(%rbp), %rdx
	movb	%cl, -1089(%rbp)        # 1-byte Spill
	ja	.LBB9_96
# BB#95:                                # %land.rhs.187
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -1089(%rbp)        # 1-byte Spill
.LBB9_96:                               # %land.end.191
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1089(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1088(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -313(%rbp)
	cmpb	$0, -313(%rbp)
	je	.LBB9_98
# BB#97:                                # %if.then.197
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-280(%rbp), %rax
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -314(%rbp)
	jmp	.LBB9_102
.LBB9_98:                               # %if.else.201
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -1090(%rbp)        # 1-byte Spill
	je	.LBB9_101
# BB#99:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-144(%rbp), %rdx
	movb	%cl, -1090(%rbp)        # 1-byte Spill
	ja	.LBB9_101
# BB#100:                               # %land.rhs.206
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -1090(%rbp)        # 1-byte Spill
.LBB9_101:                              # %land.end.210
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1090(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -314(%rbp)
.LBB9_102:                              # %if.end.213
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -200(%rbp)
	je	.LBB9_111
# BB#103:                               # %if.then.217
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -252(%rbp)
	je	.LBB9_105
# BB#104:                               # %lor.lhs.false.219
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-314(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_110
.LBB9_105:                              # %if.then.222
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -252(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	$1, -104(%rbp)
.LBB9_106:                              # %for.cond.223
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jae	.LBB9_109
# BB#107:                               # %for.body.226
                                        #   in Loop: Header=BB9_106 Depth=2
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-104(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-104(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#108:                               # %for.inc.231
                                        #   in Loop: Header=BB9_106 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_106
.LBB9_109:                              # %for.end.233
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_110
.LBB9_110:                              # %if.end.234
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_111:                              # %if.else.235
	cmpl	$0, -252(%rbp)
	je	.LBB9_123
# BB#112:                               # %land.lhs.true.237
	cmpb	$0, -314(%rbp)
	jne	.LBB9_123
# BB#113:                               # %if.then.239
	jmp	.LBB9_114
.LBB9_114:                              # %restore_best_regs
	movq	-280(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB9_117
# BB#115:                               # %land.lhs.true.242
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	ja	.LBB9_117
# BB#116:                               # %cond.true.245
	movq	-128(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB9_118
.LBB9_117:                              # %cond.false.246
	movq	-136(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB9_118:                              # %cond.end.247
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	$1, -104(%rbp)
.LBB9_119:                              # %for.cond.249
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jae	.LBB9_122
# BB#120:                               # %for.body.252
                                        #   in Loop: Header=BB9_119 Depth=1
	movq	-104(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-104(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-104(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-104(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#121:                               # %for.inc.257
                                        #   in Loop: Header=BB9_119 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_119
.LBB9_122:                              # %for.end.259
	jmp	.LBB9_123
.LBB9_123:                              # %if.end.260
	jmp	.LBB9_124
.LBB9_124:                              # %if.end.261
	jmp	.LBB9_125
.LBB9_125:                              # %if.end.262
	jmp	.LBB9_126
.LBB9_126:                              # %succeed_label
	cmpq	$0, -80(%rbp)
	je	.LBB9_222
# BB#127:                               # %land.lhs.true.264
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$4, %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB9_222
# BB#128:                               # %if.then.270
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$1, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB9_158
# BB#129:                               # %if.then.277
	movl	$30, %eax
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB9_131
# BB#130:                               # %cond.true.281
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB9_132
.LBB9_131:                              # %cond.false.282
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB9_132:                              # %cond.end.284
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-80(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-80(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_134
# BB#133:                               # %lor.lhs.false.299
	movq	-80(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_157
.LBB9_134:                              # %if.then.303
	jmp	.LBB9_135
.LBB9_135:                              # %do.body.304
	jmp	.LBB9_136
.LBB9_136:                              # %do.body.305
	cmpq	$0, -240(%rbp)
	je	.LBB9_138
# BB#137:                               # %if.then.307
	movq	$0, -240(%rbp)
.LBB9_138:                              # %if.end.308
	jmp	.LBB9_139
.LBB9_139:                              # %do.end.309
	jmp	.LBB9_140
.LBB9_140:                              # %do.body.310
	cmpq	$0, -248(%rbp)
	je	.LBB9_142
# BB#141:                               # %if.then.312
	movq	$0, -248(%rbp)
.LBB9_142:                              # %if.end.313
	jmp	.LBB9_143
.LBB9_143:                              # %do.end.314
	jmp	.LBB9_144
.LBB9_144:                              # %do.body.315
	cmpq	$0, -264(%rbp)
	je	.LBB9_146
# BB#145:                               # %if.then.317
	movq	$0, -264(%rbp)
.LBB9_146:                              # %if.end.318
	jmp	.LBB9_147
.LBB9_147:                              # %do.end.319
	jmp	.LBB9_148
.LBB9_148:                              # %do.body.320
	cmpq	$0, -272(%rbp)
	je	.LBB9_150
# BB#149:                               # %if.then.322
	movq	$0, -272(%rbp)
.LBB9_150:                              # %if.end.323
	jmp	.LBB9_151
.LBB9_151:                              # %do.end.324
	jmp	.LBB9_152
.LBB9_152:                              # %do.body.325
	testb	$1, -297(%rbp)
	je	.LBB9_154
# BB#153:                               # %if.then.327
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB9_154:                              # %if.end.330
	jmp	.LBB9_155
.LBB9_155:                              # %do.end.331
	jmp	.LBB9_156
.LBB9_156:                              # %do.end.332
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_157:                              # %if.end.333
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	andw	$-7, %cx
	orw	$2, %cx
	movw	%cx, 56(%rax)
	jmp	.LBB9_189
.LBB9_158:                              # %if.else.337
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$1, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$1, %edx
	jne	.LBB9_187
# BB#159:                               # %if.then.345
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jae	.LBB9_186
# BB#160:                               # %if.then.351
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_162
# BB#161:                               # %lor.lhs.false.370
	movq	-80(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_185
.LBB9_162:                              # %if.then.374
	jmp	.LBB9_163
.LBB9_163:                              # %do.body.375
	jmp	.LBB9_164
.LBB9_164:                              # %do.body.376
	cmpq	$0, -240(%rbp)
	je	.LBB9_166
# BB#165:                               # %if.then.378
	movq	$0, -240(%rbp)
.LBB9_166:                              # %if.end.379
	jmp	.LBB9_167
.LBB9_167:                              # %do.end.380
	jmp	.LBB9_168
.LBB9_168:                              # %do.body.381
	cmpq	$0, -248(%rbp)
	je	.LBB9_170
# BB#169:                               # %if.then.383
	movq	$0, -248(%rbp)
.LBB9_170:                              # %if.end.384
	jmp	.LBB9_171
.LBB9_171:                              # %do.end.385
	jmp	.LBB9_172
.LBB9_172:                              # %do.body.386
	cmpq	$0, -264(%rbp)
	je	.LBB9_174
# BB#173:                               # %if.then.388
	movq	$0, -264(%rbp)
.LBB9_174:                              # %if.end.389
	jmp	.LBB9_175
.LBB9_175:                              # %do.end.390
	jmp	.LBB9_176
.LBB9_176:                              # %do.body.391
	cmpq	$0, -272(%rbp)
	je	.LBB9_178
# BB#177:                               # %if.then.393
	movq	$0, -272(%rbp)
.LBB9_178:                              # %if.end.394
	jmp	.LBB9_179
.LBB9_179:                              # %do.end.395
	jmp	.LBB9_180
.LBB9_180:                              # %do.body.396
	testb	$1, -297(%rbp)
	je	.LBB9_182
# BB#181:                               # %if.then.398
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB9_182:                              # %if.end.401
	jmp	.LBB9_183
.LBB9_183:                              # %do.end.402
	jmp	.LBB9_184
.LBB9_184:                              # %do.end.403
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_185:                              # %if.end.404
	jmp	.LBB9_186
.LBB9_186:                              # %if.end.405
	jmp	.LBB9_188
.LBB9_187:                              # %if.else.406
	jmp	.LBB9_188
.LBB9_188:                              # %if.end.407
	jmp	.LBB9_189
.LBB9_189:                              # %if.end.408
	movq	-80(%rbp), %rax
	cmpl	$0, (%rax)
	jbe	.LBB9_196
# BB#190:                               # %if.then.412
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB9_194
# BB#191:                               # %land.lhs.true.416
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_194
# BB#192:                               # %land.lhs.true.419
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_194
# BB#193:                               # %cond.true.423
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB9_195
.LBB9_194:                              # %cond.false.424
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB9_195:                              # %cond.end.429
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB9_196:                              # %if.end.433
	movq	$1, -104(%rbp)
.LBB9_197:                              # %for.cond.434
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	(%rdx), %esi
	movl	%esi, %edx
	cmpq	%rdx, %rcx
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jae	.LBB9_199
# BB#198:                               # %cond.true.439
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB9_200
.LBB9_199:                              # %cond.false.440
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB9_200:                              # %cond.end.443
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB9_217
# BB#201:                               # %for.body.447
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_203
# BB#202:                               # %lor.lhs.false.451
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB9_204
.LBB9_203:                              # %if.then.455
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	jmp	.LBB9_215
.LBB9_204:                              # %if.else.460
                                        #   in Loop: Header=BB9_197 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_208
# BB#205:                               # %land.lhs.true.462
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-40(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-240(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB9_208
# BB#206:                               # %land.lhs.true.466
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_208
# BB#207:                               # %cond.true.471
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB9_209
.LBB9_208:                              # %cond.false.476
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB9_209:                              # %cond.end.482
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpq	$0, -48(%rbp)
	je	.LBB9_213
# BB#210:                               # %land.lhs.true.487
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-40(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-248(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB9_213
# BB#211:                               # %land.lhs.true.491
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_213
# BB#212:                               # %cond.true.496
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB9_214
.LBB9_213:                              # %cond.false.501
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB9_214:                              # %cond.end.507
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB9_215:                              # %if.end.511
                                        #   in Loop: Header=BB9_197 Depth=1
	jmp	.LBB9_216
.LBB9_216:                              # %for.inc.512
                                        #   in Loop: Header=BB9_197 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_197
.LBB9_217:                              # %for.end.514
	movq	-232(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB9_218:                              # %for.cond.515
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jae	.LBB9_221
# BB#219:                               # %for.body.520
                                        #   in Loop: Header=BB9_218 Depth=1
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
# BB#220:                               # %for.inc.525
                                        #   in Loop: Header=BB9_218 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_218
.LBB9_221:                              # %for.end.527
	jmp	.LBB9_222
.LBB9_222:                              # %if.end.528
	cmpq	$0, -48(%rbp)
	je	.LBB9_226
# BB#223:                               # %land.lhs.true.530
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_226
# BB#224:                               # %land.lhs.true.533
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_226
# BB#225:                               # %cond.true.537
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB9_227
.LBB9_226:                              # %cond.false.541
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB9_227:                              # %cond.end.546
	movq	-1192(%rbp), %rax       # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)
# BB#228:                               # %do.body.549
	jmp	.LBB9_229
.LBB9_229:                              # %do.body.550
	cmpq	$0, -240(%rbp)
	je	.LBB9_231
# BB#230:                               # %if.then.552
	movq	$0, -240(%rbp)
.LBB9_231:                              # %if.end.553
	jmp	.LBB9_232
.LBB9_232:                              # %do.end.554
	jmp	.LBB9_233
.LBB9_233:                              # %do.body.555
	cmpq	$0, -248(%rbp)
	je	.LBB9_235
# BB#234:                               # %if.then.557
	movq	$0, -248(%rbp)
.LBB9_235:                              # %if.end.558
	jmp	.LBB9_236
.LBB9_236:                              # %do.end.559
	jmp	.LBB9_237
.LBB9_237:                              # %do.body.560
	cmpq	$0, -264(%rbp)
	je	.LBB9_239
# BB#238:                               # %if.then.562
	movq	$0, -264(%rbp)
.LBB9_239:                              # %if.end.563
	jmp	.LBB9_240
.LBB9_240:                              # %do.end.564
	jmp	.LBB9_241
.LBB9_241:                              # %do.body.565
	cmpq	$0, -272(%rbp)
	je	.LBB9_243
# BB#242:                               # %if.then.567
	movq	$0, -272(%rbp)
.LBB9_243:                              # %if.end.568
	jmp	.LBB9_244
.LBB9_244:                              # %do.end.569
	jmp	.LBB9_245
.LBB9_245:                              # %do.body.570
	testb	$1, -297(%rbp)
	je	.LBB9_247
# BB#246:                               # %if.then.572
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB9_247:                              # %if.end.575
	jmp	.LBB9_248
.LBB9_248:                              # %do.end.576
	jmp	.LBB9_249
.LBB9_249:                              # %do.end.577
	movq	-312(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_250:                              # %if.end.578
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -168(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$34, %rcx
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	ja	.LBB9_1425
# BB#1521:                              # %if.end.578
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_251:                              # %sw.bb
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_252:                              # %sw.bb.580
	jmp	.LBB9_126
.LBB9_253:                              # %sw.bb.581
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -92(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	cmpb	$0, -186(%rbp)
	je	.LBB9_294
# BB#254:                               # %if.then.585
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_255
.LBB9_255:                              # %do.body.586
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_256 Depth 3
	jmp	.LBB9_256
.LBB9_256:                              # %while.cond
                                        #   Parent Loop BB9_88 Depth=1
                                        #     Parent Loop BB9_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_260
# BB#257:                               # %while.body
                                        #   in Loop: Header=BB9_256 Depth=3
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_259
# BB#258:                               # %if.then.591
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_259:                              # %if.end.592
                                        #   in Loop: Header=BB9_256 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_256
.LBB9_260:                              # %while.end
                                        #   in Loop: Header=BB9_255 Depth=2
	cmpb	$0, -185(%rbp)
	je	.LBB9_271
# BB#261:                               # %if.then.594
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_263
# BB#262:                               # %cond.true.598
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	$1, -320(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB9_270
.LBB9_263:                              # %cond.false.601
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_265
# BB#264:                               # %cond.true.606
                                        #   in Loop: Header=BB9_255 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -320(%rbp)
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-168(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1232(%rbp)       # 4-byte Spill
	jmp	.LBB9_269
.LBB9_265:                              # %cond.false.619
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_267
# BB#266:                               # %cond.true.624
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	$3, -320(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-168(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-168(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
	jmp	.LBB9_268
.LBB9_267:                              # %cond.false.638
                                        #   in Loop: Header=BB9_255 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-320(%rbp), %rdx
	movq	-168(%rbp), %rdi
	callq	string_char
	movl	%eax, -1236(%rbp)       # 4-byte Spill
.LBB9_268:                              # %cond.end.640
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1236(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1232(%rbp)       # 4-byte Spill
.LBB9_269:                              # %cond.end.642
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1232(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1228(%rbp)       # 4-byte Spill
.LBB9_270:                              # %cond.end.644
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	jmp	.LBB9_277
.LBB9_271:                              # %if.else.646
                                        #   in Loop: Header=BB9_255 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_272
	jmp	.LBB9_273
.LBB9_272:                              # %cond.true.647
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB9_274
	jmp	.LBB9_275
.LBB9_273:                              # %cond.false.652
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_275
.LBB9_274:                              # %cond.true.657
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1240(%rbp)       # 4-byte Spill
	jmp	.LBB9_276
.LBB9_275:                              # %cond.false.659
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -1240(%rbp)       # 4-byte Spill
.LBB9_276:                              # %cond.end.662
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1240(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	movl	$1, -320(%rbp)
.LBB9_277:                              # %if.end.664
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_279
# BB#278:                               # %cond.true.669
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	$1, -324(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1244(%rbp)       # 4-byte Spill
	jmp	.LBB9_286
.LBB9_279:                              # %cond.false.672
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_281
# BB#280:                               # %cond.true.677
                                        #   in Loop: Header=BB9_255 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -324(%rbp)
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
	movl	%esi, -1248(%rbp)       # 4-byte Spill
	jmp	.LBB9_285
.LBB9_281:                              # %cond.false.692
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_283
# BB#282:                               # %cond.true.697
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	$3, -324(%rbp)
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
	movl	%ecx, -1252(%rbp)       # 4-byte Spill
	jmp	.LBB9_284
.LBB9_283:                              # %cond.false.711
                                        #   in Loop: Header=BB9_255 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-324(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -1252(%rbp)       # 4-byte Spill
.LBB9_284:                              # %cond.end.713
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1252(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1248(%rbp)       # 4-byte Spill
.LBB9_285:                              # %cond.end.715
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1248(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1244(%rbp)       # 4-byte Spill
.LBB9_286:                              # %cond.end.717
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1244(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	cmpq	$2, -184(%rbp)
	je	.LBB9_288
# BB#287:                               # %cond.true.721
                                        #   in Loop: Header=BB9_255 Depth=2
	movq	-184(%rbp), %rdi
	movl	-332(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1256(%rbp)       # 4-byte Spill
	jmp	.LBB9_289
.LBB9_288:                              # %cond.false.723
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-332(%rbp), %eax
	movl	%eax, -1256(%rbp)       # 4-byte Spill
.LBB9_289:                              # %cond.end.724
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-1256(%rbp), %eax       # 4-byte Reload
	cmpl	-328(%rbp), %eax
	je	.LBB9_291
# BB#290:                               # %if.then.728
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB9_1427
.LBB9_291:                              # %if.end.729
                                        #   in Loop: Header=BB9_255 Depth=2
	movl	-320(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	movl	-324(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	movl	-320(%rbp), %eax
	movl	-92(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -92(%rbp)
# BB#292:                               # %do.cond
                                        #   in Loop: Header=BB9_255 Depth=2
	cmpl	$0, -92(%rbp)
	jg	.LBB9_255
# BB#293:                               # %do.end.736
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_346
.LBB9_294:                              # %if.else.737
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_295
.LBB9_295:                              # %do.body.738
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_296 Depth 3
	jmp	.LBB9_296
.LBB9_296:                              # %while.cond.742
                                        #   Parent Loop BB9_88 Depth=1
                                        #     Parent Loop BB9_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_300
# BB#297:                               # %while.body.745
                                        #   in Loop: Header=BB9_296 Depth=3
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_299
# BB#298:                               # %if.then.748
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_299:                              # %if.end.749
                                        #   in Loop: Header=BB9_296 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_296
.LBB9_300:                              # %while.end.750
                                        #   in Loop: Header=BB9_295 Depth=2
	cmpb	$0, -185(%rbp)
	je	.LBB9_319
# BB#301:                               # %if.then.752
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_303
# BB#302:                               # %cond.true.757
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	$1, -336(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1260(%rbp)       # 4-byte Spill
	jmp	.LBB9_310
.LBB9_303:                              # %cond.false.760
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_305
# BB#304:                               # %cond.true.765
                                        #   in Loop: Header=BB9_295 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -336(%rbp)
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-168(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1264(%rbp)       # 4-byte Spill
	jmp	.LBB9_309
.LBB9_305:                              # %cond.false.780
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_307
# BB#306:                               # %cond.true.785
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	$3, -336(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-168(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-168(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1268(%rbp)       # 4-byte Spill
	jmp	.LBB9_308
.LBB9_307:                              # %cond.false.799
                                        #   in Loop: Header=BB9_295 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-336(%rbp), %rdx
	movq	-168(%rbp), %rdi
	callq	string_char
	movl	%eax, -1268(%rbp)       # 4-byte Spill
.LBB9_308:                              # %cond.end.801
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1268(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1264(%rbp)       # 4-byte Spill
.LBB9_309:                              # %cond.end.803
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1264(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1260(%rbp)       # 4-byte Spill
.LBB9_310:                              # %cond.end.805
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1260(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -340(%rbp)
	testb	$1, %cl
	jne	.LBB9_311
	jmp	.LBB9_312
.LBB9_311:                              # %cond.true.807
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-340(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_313
	jmp	.LBB9_314
.LBB9_312:                              # %cond.false.811
                                        #   in Loop: Header=BB9_295 Depth=2
	movslq	-340(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_314
.LBB9_313:                              # %cond.true.816
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-340(%rbp), %eax
	movl	%eax, -1272(%rbp)       # 4-byte Spill
	jmp	.LBB9_318
.LBB9_314:                              # %cond.false.817
                                        #   in Loop: Header=BB9_295 Depth=2
	cmpl	$4194175, -340(%rbp)    # imm = 0x3FFF7F
	jle	.LBB9_316
# BB#315:                               # %cond.true.820
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-340(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB9_317
.LBB9_316:                              # %cond.false.822
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB9_317
.LBB9_317:                              # %cond.end.823
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1272(%rbp)       # 4-byte Spill
.LBB9_318:                              # %cond.end.825
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1272(%rbp), %eax       # 4-byte Reload
	movl	%eax, -340(%rbp)
	jmp	.LBB9_320
.LBB9_319:                              # %if.else.827
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -340(%rbp)
	movl	$1, -336(%rbp)
.LBB9_320:                              # %if.end.829
                                        #   in Loop: Header=BB9_295 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_321
	jmp	.LBB9_322
.LBB9_321:                              # %cond.true.830
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB9_323
	jmp	.LBB9_324
.LBB9_322:                              # %cond.false.835
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_324
.LBB9_323:                              # %cond.true.840
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB9_325
.LBB9_324:                              # %cond.false.842
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -1280(%rbp)       # 4-byte Spill
.LBB9_325:                              # %cond.end.845
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1280(%rbp), %eax       # 4-byte Reload
	movl	%eax, -344(%rbp)
	cmpl	$4194175, -344(%rbp)    # imm = 0x3FFF7F
	jg	.LBB9_340
# BB#326:                               # %if.then.849
                                        #   in Loop: Header=BB9_295 Depth=2
	cmpq	$2, -184(%rbp)
	je	.LBB9_328
# BB#327:                               # %cond.true.852
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-184(%rbp), %rdi
	movl	-344(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB9_329
.LBB9_328:                              # %cond.false.854
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-344(%rbp), %eax
	movl	%eax, -1284(%rbp)       # 4-byte Spill
.LBB9_329:                              # %cond.end.855
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -344(%rbp)
	testb	$1, %cl
	jne	.LBB9_330
	jmp	.LBB9_331
.LBB9_330:                              # %cond.true.857
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-344(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_332
	jmp	.LBB9_333
.LBB9_331:                              # %cond.false.861
                                        #   in Loop: Header=BB9_295 Depth=2
	movslq	-344(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_333
.LBB9_332:                              # %cond.true.866
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-344(%rbp), %eax
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	jmp	.LBB9_337
.LBB9_333:                              # %cond.false.867
                                        #   in Loop: Header=BB9_295 Depth=2
	cmpl	$4194175, -344(%rbp)    # imm = 0x3FFF7F
	jle	.LBB9_335
# BB#334:                               # %cond.true.870
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-344(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB9_336
.LBB9_335:                              # %cond.false.872
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB9_336
.LBB9_336:                              # %cond.end.873
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1292(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1288(%rbp)       # 4-byte Spill
.LBB9_337:                              # %cond.end.875
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-1288(%rbp), %eax       # 4-byte Reload
	movl	%eax, -344(%rbp)
	cmpl	$0, -344(%rbp)
	jge	.LBB9_339
# BB#338:                               # %if.then.879
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -344(%rbp)
.LBB9_339:                              # %if.end.881
                                        #   in Loop: Header=BB9_295 Depth=2
	jmp	.LBB9_341
.LBB9_340:                              # %if.else.882
                                        #   in Loop: Header=BB9_295 Depth=2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -344(%rbp)
.LBB9_341:                              # %if.end.884
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-344(%rbp), %eax
	cmpl	-340(%rbp), %eax
	je	.LBB9_343
# BB#342:                               # %if.then.887
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB9_1427
.LBB9_343:                              # %if.end.888
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-336(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
# BB#344:                               # %do.cond.892
                                        #   in Loop: Header=BB9_295 Depth=2
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, %eax
	jne	.LBB9_295
# BB#345:                               # %do.end.894
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_346
.LBB9_346:                              # %if.end.895
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_347:                              # %sw.bb.896
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_348
.LBB9_348:                              # %while.cond.899
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_352
# BB#349:                               # %while.body.902
                                        #   in Loop: Header=BB9_348 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_351
# BB#350:                               # %if.then.905
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_351:                              # %if.end.906
                                        #   in Loop: Header=BB9_348 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_348
.LBB9_352:                              # %while.end.907
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-186(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_363
# BB#353:                               # %cond.true.910
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_355
# BB#354:                               # %cond.true.915
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -348(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB9_362
.LBB9_355:                              # %cond.false.918
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_357
# BB#356:                               # %cond.true.923
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
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
	movl	%esi, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB9_361
.LBB9_357:                              # %cond.false.938
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_359
# BB#358:                               # %cond.true.943
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -348(%rbp)
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
	movl	%ecx, -1304(%rbp)       # 4-byte Spill
	jmp	.LBB9_360
.LBB9_359:                              # %cond.false.957
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -1304(%rbp)       # 4-byte Spill
.LBB9_360:                              # %cond.end.959
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1304(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1300(%rbp)       # 4-byte Spill
.LBB9_361:                              # %cond.end.961
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1300(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1296(%rbp)       # 4-byte Spill
.LBB9_362:                              # %cond.end.963
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1296(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB9_364
.LBB9_363:                              # %cond.false.965
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -348(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1308(%rbp)       # 4-byte Spill
.LBB9_364:                              # %cond.end.967
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, -352(%rbp)
	cmpq	$2, -184(%rbp)
	je	.LBB9_366
# BB#365:                               # %cond.true.971
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-184(%rbp), %rdi
	movl	-352(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1312(%rbp)       # 4-byte Spill
	jmp	.LBB9_367
.LBB9_366:                              # %cond.false.973
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-352(%rbp), %eax
	movl	%eax, -1312(%rbp)       # 4-byte Spill
.LBB9_367:                              # %cond.end.974
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1312(%rbp), %eax       # 4-byte Reload
	movl	%eax, -352(%rbp)
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rcx
	andq	$64, %rcx
	cmpq	$0, %rcx
	jne	.LBB9_369
# BB#368:                               # %land.lhs.true.978
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$10, -352(%rbp)
	je	.LBB9_371
.LBB9_369:                              # %lor.lhs.false.981
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB9_372
# BB#370:                               # %land.lhs.true.985
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -352(%rbp)
	jne	.LBB9_372
.LBB9_371:                              # %if.then.988
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_372:                              # %if.end.989
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-348(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB9_1426
.LBB9_373:                              # %sw.bb.992
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -361(%rbp)
	movl	$0, -384(%rbp)
	movb	$0, -385(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	movl	%ecx, -380(%rbp)
	cmpl	$0, -380(%rbp)
	je	.LBB9_375
# BB#374:                               # %if.then.1003
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-376(%rbp), %rdi
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rax
	movq	-168(%rbp), %rdx
	addq	$-1, %rdx
	addq	%rax, %rdx
	movq	%rdx, -376(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -384(%rbp)
.LBB9_375:                              # %if.end.1012
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_376
.LBB9_376:                              # %while.cond.1013
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_380
# BB#377:                               # %while.body.1016
                                        #   in Loop: Header=BB9_376 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_379
# BB#378:                               # %if.then.1019
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_379:                              # %if.end.1020
                                        #   in Loop: Header=BB9_376 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_376
.LBB9_380:                              # %while.end.1021
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-186(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_391
# BB#381:                               # %cond.true.1024
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_383
# BB#382:                               # %cond.true.1029
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -368(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1316(%rbp)       # 4-byte Spill
	jmp	.LBB9_390
.LBB9_383:                              # %cond.false.1032
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_385
# BB#384:                               # %cond.true.1037
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -368(%rbp)
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
	movl	%esi, -1320(%rbp)       # 4-byte Spill
	jmp	.LBB9_389
.LBB9_385:                              # %cond.false.1052
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_387
# BB#386:                               # %cond.true.1057
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -368(%rbp)
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
	movl	%ecx, -1324(%rbp)       # 4-byte Spill
	jmp	.LBB9_388
.LBB9_387:                              # %cond.false.1071
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-368(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -1324(%rbp)       # 4-byte Spill
.LBB9_388:                              # %cond.end.1073
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1324(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1320(%rbp)       # 4-byte Spill
.LBB9_389:                              # %cond.end.1075
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1320(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1316(%rbp)       # 4-byte Spill
.LBB9_390:                              # %cond.end.1077
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1316(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1328(%rbp)       # 4-byte Spill
	jmp	.LBB9_392
.LBB9_391:                              # %cond.false.1079
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -368(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1328(%rbp)       # 4-byte Spill
.LBB9_392:                              # %cond.end.1081
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1328(%rbp), %eax       # 4-byte Reload
	movl	%eax, -356(%rbp)
	movl	%eax, -360(%rbp)
	cmpb	$0, -186(%rbp)
	je	.LBB9_407
# BB#393:                               # %if.then.1084
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$2, -184(%rbp)
	je	.LBB9_395
# BB#394:                               # %cond.true.1087
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-184(%rbp), %rdi
	movl	-356(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB9_396
.LBB9_395:                              # %cond.false.1089
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, -1332(%rbp)       # 4-byte Spill
.LBB9_396:                              # %cond.end.1090
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -356(%rbp)
	testb	$1, %cl
	jne	.LBB9_397
	jmp	.LBB9_398
.LBB9_397:                              # %cond.true.1092
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_399
	jmp	.LBB9_400
.LBB9_398:                              # %cond.false.1096
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB9_400
.LBB9_399:                              # %cond.true.1101
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, -1336(%rbp)       # 4-byte Spill
	jmp	.LBB9_404
.LBB9_400:                              # %cond.false.1102
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$4194175, -356(%rbp)    # imm = 0x3FFF7F
	jbe	.LBB9_402
# BB#401:                               # %cond.true.1105
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB9_403
.LBB9_402:                              # %cond.false.1107
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB9_403
.LBB9_403:                              # %cond.end.1108
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1336(%rbp)       # 4-byte Spill
.LBB9_404:                              # %cond.end.1110
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1336(%rbp), %eax       # 4-byte Reload
	movl	%eax, -392(%rbp)
	cmpl	$0, -392(%rbp)
	jl	.LBB9_406
# BB#405:                               # %if.then.1114
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, -385(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -356(%rbp)
.LBB9_406:                              # %if.end.1115
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_429
.LBB9_407:                              # %if.else.1116
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_408
	jmp	.LBB9_409
.LBB9_408:                              # %cond.true.1118
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_410
	jmp	.LBB9_411
.LBB9_409:                              # %cond.false.1122
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB9_411
.LBB9_410:                              # %cond.true.1127
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, -1344(%rbp)       # 4-byte Spill
	jmp	.LBB9_412
.LBB9_411:                              # %cond.false.1128
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1344(%rbp)       # 4-byte Spill
.LBB9_412:                              # %cond.end.1130
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1344(%rbp), %eax       # 4-byte Reload
	movl	%eax, -396(%rbp)
	cmpl	$4194175, -396(%rbp)    # imm = 0x3FFF7F
	jg	.LBB9_427
# BB#413:                               # %if.then.1134
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$2, -184(%rbp)
	je	.LBB9_415
# BB#414:                               # %cond.true.1137
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-184(%rbp), %rdi
	movl	-396(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	jmp	.LBB9_416
.LBB9_415:                              # %cond.false.1139
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-396(%rbp), %eax
	movl	%eax, -1348(%rbp)       # 4-byte Spill
.LBB9_416:                              # %cond.end.1140
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1348(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -396(%rbp)
	testb	$1, %cl
	jne	.LBB9_417
	jmp	.LBB9_418
.LBB9_417:                              # %cond.true.1142
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-396(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_419
	jmp	.LBB9_420
.LBB9_418:                              # %cond.false.1146
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-396(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_420
.LBB9_419:                              # %cond.true.1151
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-396(%rbp), %eax
	movl	%eax, -1352(%rbp)       # 4-byte Spill
	jmp	.LBB9_424
.LBB9_420:                              # %cond.false.1152
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$4194175, -396(%rbp)    # imm = 0x3FFF7F
	jle	.LBB9_422
# BB#421:                               # %cond.true.1155
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-396(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	jmp	.LBB9_423
.LBB9_422:                              # %cond.false.1157
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	jmp	.LBB9_423
.LBB9_423:                              # %cond.end.1158
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1356(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1352(%rbp)       # 4-byte Spill
.LBB9_424:                              # %cond.end.1160
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1352(%rbp), %eax       # 4-byte Reload
	movl	%eax, -396(%rbp)
	cmpl	$0, -396(%rbp)
	jl	.LBB9_426
# BB#425:                               # %if.then.1164
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, -385(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -356(%rbp)
.LBB9_426:                              # %if.end.1165
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_428
.LBB9_427:                              # %if.else.1166
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, -385(%rbp)
.LBB9_428:                              # %if.end.1167
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_429
.LBB9_429:                              # %if.end.1168
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-385(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_435
# BB#430:                               # %land.lhs.true.1171
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$256, -356(%rbp)        # imm = 0x100
	jae	.LBB9_435
# BB#431:                               # %if.then.1174
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$127, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jae	.LBB9_434
# BB#432:                               # %land.lhs.true.1182
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %eax
	movl	-356(%rbp), %ecx
	shrl	$3, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-356(%rbp), %edi
	andl	$7, %edi
	movl	%ecx, -1360(%rbp)       # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-1360(%rbp), %edi       # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	je	.LBB9_434
# BB#433:                               # %if.then.1190
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -361(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -361(%rbp)
.LBB9_434:                              # %if.end.1195
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_533
.LBB9_435:                              # %if.else.1196
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -380(%rbp)
	je	.LBB9_532
# BB#436:                               # %if.then.1198
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %eax
	andl	$127, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rsi
	movzbl	-1(%rsi,%rdx), %eax
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %edi
	andl	$127, %edi
	addl	$3, %edi
	movslq	%edi, %rdx
	movq	-168(%rbp), %rsi
	movzbl	-1(%rsi,%rdx), %edi
	shll	$8, %edi
	addl	%edi, %eax
	movl	%eax, -400(%rbp)
	movl	-400(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	movb	%cl, -1361(%rbp)        # 1-byte Spill
	je	.LBB9_443
# BB#437:                               # %land.rhs.1221
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	lowercasep
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -1362(%rbp)        # 1-byte Spill
	jne	.LBB9_442
# BB#438:                               # %lor.rhs
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-360(%rbp), %eax
	cmpl	-356(%rbp), %eax
	movb	%cl, -1363(%rbp)        # 1-byte Spill
	je	.LBB9_441
# BB#439:                               # %land.lhs.true.1226
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	-360(%rbp), %edi
	movl	%eax, -1368(%rbp)       # 4-byte Spill
	callq	upcase
	xorl	%edi, %edi
	movb	%dil, %cl
	movl	-1368(%rbp), %edi       # 4-byte Reload
	cmpl	%eax, %edi
	movb	%cl, -1363(%rbp)        # 1-byte Spill
	jne	.LBB9_441
# BB#440:                               # %land.rhs.1230
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	uppercasep
	movb	%al, -1363(%rbp)        # 1-byte Spill
.LBB9_441:                              # %land.end.1233
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1363(%rbp), %al        # 1-byte Reload
	movb	%al, -1362(%rbp)        # 1-byte Spill
.LBB9_442:                              # %lor.end
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1362(%rbp), %al        # 1-byte Reload
	movb	%al, -1361(%rbp)        # 1-byte Spill
.LBB9_443:                              # %land.end.1235
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1361(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-400(%rbp), %esi
	andl	$32, %esi
	orl	%esi, %ecx
	movl	-400(%rbp), %esi
	andl	$4, %esi
	cmpl	$0, %esi
	movl	%ecx, -1372(%rbp)       # 4-byte Spill
	movb	%dl, -1373(%rbp)        # 1-byte Spill
	je	.LBB9_458
# BB#444:                               # %land.rhs.1241
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$128, -356(%rbp)
	jae	.LBB9_456
# BB#445:                               # %cond.true.1244
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -356(%rbp)
	movb	%cl, -1374(%rbp)        # 1-byte Spill
	jbe	.LBB9_455
# BB#446:                               # %land.lhs.true.1247
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -356(%rbp)
	movb	%cl, -1374(%rbp)        # 1-byte Spill
	jae	.LBB9_455
# BB#447:                               # %land.rhs.1250
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$97, -356(%rbp)
	jb	.LBB9_449
# BB#448:                               # %land.lhs.true.1253
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	cmpl	$122, -356(%rbp)
	movb	%al, -1375(%rbp)        # 1-byte Spill
	jbe	.LBB9_454
.LBB9_449:                              # %lor.lhs.false.1256
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$65, -356(%rbp)
	jb	.LBB9_451
# BB#450:                               # %land.lhs.true.1259
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	cmpl	$90, -356(%rbp)
	movb	%al, -1375(%rbp)        # 1-byte Spill
	jbe	.LBB9_454
.LBB9_451:                              # %lor.rhs.1262
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -356(%rbp)
	movb	%cl, -1376(%rbp)        # 1-byte Spill
	jb	.LBB9_453
# BB#452:                               # %land.rhs.1265
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$57, -356(%rbp)
	setbe	%al
	movb	%al, -1376(%rbp)        # 1-byte Spill
.LBB9_453:                              # %land.end.1268
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1376(%rbp), %al        # 1-byte Reload
	movb	%al, -1375(%rbp)        # 1-byte Spill
.LBB9_454:                              # %lor.end.1270
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1375(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -1374(%rbp)        # 1-byte Spill
.LBB9_455:                              # %land.end.1273
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1374(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1380(%rbp)       # 4-byte Spill
	jmp	.LBB9_457
.LBB9_456:                              # %cond.false.1275
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-356(%rbp), %edi
	callq	syntax_property
	cmpl	$2, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -1380(%rbp)       # 4-byte Spill
.LBB9_457:                              # %cond.end.1279
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1380(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -1373(%rbp)        # 1-byte Spill
.LBB9_458:                              # %land.end.1282
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1373(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1372(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	movl	%esi, -1384(%rbp)       # 4-byte Spill
	movb	%dl, -1385(%rbp)        # 1-byte Spill
	je	.LBB9_460
# BB#459:                               # %land.rhs.1287
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-356(%rbp), %edi
	callq	syntax_property
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -1385(%rbp)        # 1-byte Spill
.LBB9_460:                              # %land.end.1291
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1385(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1384(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	movl	%esi, -1392(%rbp)       # 4-byte Spill
	movb	%dl, -1393(%rbp)        # 1-byte Spill
	je	.LBB9_467
# BB#461:                               # %land.rhs.1296
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	uppercasep
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -1394(%rbp)        # 1-byte Spill
	jne	.LBB9_466
# BB#462:                               # %lor.rhs.1299
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-360(%rbp), %eax
	cmpl	-356(%rbp), %eax
	movb	%cl, -1395(%rbp)        # 1-byte Spill
	je	.LBB9_465
# BB#463:                               # %land.lhs.true.1302
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	-360(%rbp), %edi
	movl	%eax, -1400(%rbp)       # 4-byte Spill
	callq	downcase
	xorl	%edi, %edi
	movb	%dil, %cl
	movl	-1400(%rbp), %edi       # 4-byte Reload
	cmpl	%eax, %edi
	movb	%cl, -1395(%rbp)        # 1-byte Spill
	jne	.LBB9_465
# BB#464:                               # %land.rhs.1306
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	lowercasep
	movb	%al, -1395(%rbp)        # 1-byte Spill
.LBB9_465:                              # %land.end.1309
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1395(%rbp), %al        # 1-byte Reload
	movb	%al, -1394(%rbp)        # 1-byte Spill
.LBB9_466:                              # %lor.end.1311
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1394(%rbp), %al        # 1-byte Reload
	movb	%al, -1393(%rbp)        # 1-byte Spill
.LBB9_467:                              # %land.end.1312
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1393(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1392(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movl	%esi, -1404(%rbp)       # 4-byte Spill
	movb	%dl, -1405(%rbp)        # 1-byte Spill
	je	.LBB9_469
# BB#468:                               # %land.rhs.1317
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-356(%rbp), %edi
	callq	syntax_property
	cmpl	$2, %eax
	sete	%cl
	movb	%cl, -1405(%rbp)        # 1-byte Spill
.LBB9_469:                              # %land.end.1321
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1405(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1404(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	movl	%esi, -1412(%rbp)       # 4-byte Spill
	movb	%dl, -1413(%rbp)        # 1-byte Spill
	je	.LBB9_479
# BB#470:                               # %land.rhs.1326
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$128, -356(%rbp)
	jae	.LBB9_477
# BB#471:                               # %cond.true.1329
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$97, -356(%rbp)
	jb	.LBB9_473
# BB#472:                               # %land.lhs.true.1332
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	cmpl	$122, -356(%rbp)
	movb	%al, -1414(%rbp)        # 1-byte Spill
	jbe	.LBB9_476
.LBB9_473:                              # %lor.rhs.1335
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$65, -356(%rbp)
	movb	%cl, -1415(%rbp)        # 1-byte Spill
	jb	.LBB9_475
# BB#474:                               # %land.rhs.1338
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$90, -356(%rbp)
	setbe	%al
	movb	%al, -1415(%rbp)        # 1-byte Spill
.LBB9_475:                              # %land.end.1341
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1415(%rbp), %al        # 1-byte Reload
	movb	%al, -1414(%rbp)        # 1-byte Spill
.LBB9_476:                              # %lor.end.1343
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1414(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1420(%rbp)       # 4-byte Spill
	jmp	.LBB9_478
.LBB9_477:                              # %cond.false.1344
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	alphabeticp
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -1420(%rbp)       # 4-byte Spill
.LBB9_478:                              # %cond.end.1347
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1420(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -1413(%rbp)        # 1-byte Spill
.LBB9_479:                              # %land.end.1350
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1413(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1412(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	movl	%esi, -1424(%rbp)       # 4-byte Spill
	movb	%dl, -1425(%rbp)        # 1-byte Spill
	je	.LBB9_493
# BB#480:                               # %land.rhs.1355
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$128, -356(%rbp)
	jae	.LBB9_489
# BB#481:                               # %cond.true.1358
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$97, -356(%rbp)
	jb	.LBB9_483
# BB#482:                               # %land.lhs.true.1361
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	cmpl	$122, -356(%rbp)
	movb	%al, -1426(%rbp)        # 1-byte Spill
	jbe	.LBB9_488
.LBB9_483:                              # %lor.lhs.false.1364
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$65, -356(%rbp)
	jb	.LBB9_485
# BB#484:                               # %land.lhs.true.1367
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	cmpl	$90, -356(%rbp)
	movb	%al, -1426(%rbp)        # 1-byte Spill
	jbe	.LBB9_488
.LBB9_485:                              # %lor.rhs.1370
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -356(%rbp)
	movb	%cl, -1427(%rbp)        # 1-byte Spill
	jb	.LBB9_487
# BB#486:                               # %land.rhs.1373
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$57, -356(%rbp)
	setbe	%al
	movb	%al, -1427(%rbp)        # 1-byte Spill
.LBB9_487:                              # %land.end.1376
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1427(%rbp), %al        # 1-byte Reload
	movb	%al, -1426(%rbp)        # 1-byte Spill
.LBB9_488:                              # %lor.end.1378
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1426(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1432(%rbp)       # 4-byte Spill
	jmp	.LBB9_492
.LBB9_489:                              # %cond.false.1380
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	alphabeticp
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -1433(%rbp)        # 1-byte Spill
	jne	.LBB9_491
# BB#490:                               # %lor.rhs.1383
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	decimalnump
	movb	%al, -1433(%rbp)        # 1-byte Spill
.LBB9_491:                              # %lor.end.1386
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1433(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1432(%rbp)       # 4-byte Spill
.LBB9_492:                              # %cond.end.1388
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1432(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -1425(%rbp)        # 1-byte Spill
.LBB9_493:                              # %land.end.1391
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1425(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1424(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	movl	%esi, -1440(%rbp)       # 4-byte Spill
	movb	%dl, -1441(%rbp)        # 1-byte Spill
	je	.LBB9_504
# BB#494:                               # %land.rhs.1396
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_495
	jmp	.LBB9_496
.LBB9_495:                              # %cond.true.1397
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_497
	jmp	.LBB9_502
.LBB9_496:                              # %cond.false.1401
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jae	.LBB9_502
.LBB9_497:                              # %cond.true.1406
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -356(%rbp)
	movb	%cl, -1442(%rbp)        # 1-byte Spill
	jbe	.LBB9_501
# BB#498:                               # %land.rhs.1409
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -356(%rbp)
	movb	%cl, -1443(%rbp)        # 1-byte Spill
	jb	.LBB9_500
# BB#499:                               # %land.rhs.1412
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$160, -356(%rbp)
	setbe	%al
	movb	%al, -1443(%rbp)        # 1-byte Spill
.LBB9_500:                              # %land.end.1415
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1443(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -1442(%rbp)        # 1-byte Spill
.LBB9_501:                              # %land.end.1419
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1442(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB9_503
.LBB9_502:                              # %cond.false.1421
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	graphicp
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -1448(%rbp)       # 4-byte Spill
.LBB9_503:                              # %cond.end.1424
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1448(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -1441(%rbp)        # 1-byte Spill
.LBB9_504:                              # %land.end.1427
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1441(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1440(%rbp), %esi       # 4-byte Reload
	orl	%ecx, %esi
	movl	-400(%rbp), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	movl	%esi, -1452(%rbp)       # 4-byte Spill
	movb	%dl, -1453(%rbp)        # 1-byte Spill
	je	.LBB9_515
# BB#505:                               # %land.rhs.1432
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_506
	jmp	.LBB9_507
.LBB9_506:                              # %cond.true.1433
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_508
	jmp	.LBB9_513
.LBB9_507:                              # %cond.false.1437
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jae	.LBB9_513
.LBB9_508:                              # %cond.true.1442
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -356(%rbp)
	movb	%cl, -1454(%rbp)        # 1-byte Spill
	jb	.LBB9_512
# BB#509:                               # %land.rhs.1445
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -356(%rbp)
	movb	%cl, -1455(%rbp)        # 1-byte Spill
	jb	.LBB9_511
# BB#510:                               # %land.rhs.1448
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$159, -356(%rbp)
	setbe	%al
	movb	%al, -1455(%rbp)        # 1-byte Spill
.LBB9_511:                              # %land.end.1451
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1455(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -1454(%rbp)        # 1-byte Spill
.LBB9_512:                              # %land.end.1455
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1454(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	jmp	.LBB9_514
.LBB9_513:                              # %cond.false.1457
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-356(%rbp), %edi
	callq	printablep
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -1460(%rbp)       # 4-byte Spill
.LBB9_514:                              # %cond.end.1460
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1460(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -1453(%rbp)        # 1-byte Spill
.LBB9_515:                              # %land.end.1463
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1453(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1452(%rbp), %edx       # 4-byte Reload
	orl	%ecx, %edx
	cmpl	$0, %edx
	je	.LBB9_517
# BB#516:                               # %if.then.1467
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -361(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -361(%rbp)
	jmp	.LBB9_531
.LBB9_517:                              # %if.else.1472
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_518
.LBB9_518:                              # %do.body.1473
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-376(%rbp), %rax
	movl	-384(%rbp), %ecx
	shll	$1, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -416(%rbp)
.LBB9_519:                              # %for.cond.1478
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-416(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jae	.LBB9_529
# BB#520:                               # %for.body.1481
                                        #   in Loop: Header=BB9_519 Depth=2
	jmp	.LBB9_521
.LBB9_521:                              # %do.body.1482
                                        #   in Loop: Header=BB9_519 Depth=2
	movq	-416(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-416(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-416(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -404(%rbp)
# BB#522:                               # %do.end.1494
                                        #   in Loop: Header=BB9_519 Depth=2
	jmp	.LBB9_523
.LBB9_523:                              # %do.body.1495
                                        #   in Loop: Header=BB9_519 Depth=2
	movq	-416(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-416(%rbp), %rax
	movzbl	4(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-416(%rbp), %rax
	movzbl	5(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -408(%rbp)
# BB#524:                               # %do.end.1510
                                        #   in Loop: Header=BB9_519 Depth=2
	movl	-404(%rbp), %eax
	cmpl	-356(%rbp), %eax
	ja	.LBB9_527
# BB#525:                               # %land.lhs.true.1513
                                        #   in Loop: Header=BB9_519 Depth=2
	movl	-356(%rbp), %eax
	cmpl	-408(%rbp), %eax
	ja	.LBB9_527
# BB#526:                               # %if.then.1516
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -361(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -361(%rbp)
	jmp	.LBB9_529
.LBB9_527:                              # %if.end.1521
                                        #   in Loop: Header=BB9_519 Depth=2
	jmp	.LBB9_528
.LBB9_528:                              # %for.inc.1522
                                        #   in Loop: Header=BB9_519 Depth=2
	movq	-416(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -416(%rbp)
	jmp	.LBB9_519
.LBB9_529:                              # %for.end.1524
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_530
.LBB9_530:                              # %do.end.1526
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_531
.LBB9_531:                              # %if.end.1527
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_532
.LBB9_532:                              # %if.end.1528
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_533
.LBB9_533:                              # %if.end.1529
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -380(%rbp)
	je	.LBB9_535
# BB#534:                               # %if.then.1531
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-376(%rbp), %rax
	movl	-384(%rbp), %ecx
	shll	$1, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_536
.LBB9_535:                              # %if.else.1536
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$1, %ecx
	movq	-168(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
.LBB9_536:                              # %if.end.1544
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -361(%rbp)
	jne	.LBB9_538
# BB#537:                               # %if.then.1546
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_538:                              # %if.end.1547
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-368(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB9_1426
.LBB9_539:                              # %sw.bb.1550
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_540
.LBB9_540:                              # %do.body.1551
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -440(%rbp)
.LBB9_541:                              # %while.cond.1553
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_568
# BB#542:                               # %while.body.1559
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_544
# BB#543:                               # %cond.true.1565
                                        #   in Loop: Header=BB9_541 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_567
	jmp	.LBB9_566
.LBB9_544:                              # %cond.false.1566
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_546
# BB#545:                               # %cond.true.1573
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB9_547
.LBB9_546:                              # %cond.false.1575
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
.LBB9_547:                              # %cond.end.1579
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1472(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_555
# BB#548:                               # %cond.true.1583
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_550
# BB#549:                               # %cond.true.1590
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB9_551
.LBB9_550:                              # %cond.false.1592
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB9_551:                              # %cond.end.1596
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1480(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_553
# BB#552:                               # %cond.true.1605
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB9_554
.LBB9_553:                              # %cond.false.1607
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
.LBB9_554:                              # %cond.end.1611
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1488(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB9_559
.LBB9_555:                              # %cond.false.1613
                                        #   in Loop: Header=BB9_541 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_557
# BB#556:                               # %cond.true.1620
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB9_558
.LBB9_557:                              # %cond.false.1622
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB9_558:                              # %cond.end.1626
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1496(%rbp)       # 8-byte Spill
.LBB9_559:                              # %cond.end.1629
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_561
# BB#560:                               # %cond.true.1638
                                        #   in Loop: Header=BB9_541 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1516(%rbp)       # 4-byte Spill
	jmp	.LBB9_565
.LBB9_561:                              # %cond.false.1639
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_563
# BB#562:                               # %cond.true.1646
                                        #   in Loop: Header=BB9_541 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB9_564
.LBB9_563:                              # %cond.false.1648
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
.LBB9_564:                              # %cond.end.1652
                                        #   in Loop: Header=BB9_541 Depth=2
	movq	-1528(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1516(%rbp)       # 4-byte Spill
.LBB9_565:                              # %cond.end.1656
                                        #   in Loop: Header=BB9_541 Depth=2
	movl	-1516(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_567
.LBB9_566:                              # %if.then.1659
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_567:                              # %if.end.1660
                                        #   in Loop: Header=BB9_541 Depth=2
	jmp	.LBB9_541
.LBB9_568:                              # %while.end.1661
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-440(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-440(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-440(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#569:                               # %do.end.1678
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-240(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-248(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_1426
.LBB9_570:                              # %sw.bb.1684
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-248(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_1426
.LBB9_571:                              # %sw.bb.1688
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -460(%rbp)
	movslq	-460(%rbp), %rax
	movq	-240(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_573
# BB#572:                               # %lor.lhs.false.1695
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-460(%rbp), %rax
	movq	-248(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB9_574
.LBB9_573:                              # %if.then.1700
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_574:                              # %if.end.1701
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-460(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, -448(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	cmpq	$0, -48(%rbp)
	movb	%cl, -1529(%rbp)        # 1-byte Spill
	je	.LBB9_577
# BB#575:                               # %land.lhs.true.1705
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movslq	-460(%rbp), %rsi
	movq	-240(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -1529(%rbp)        # 1-byte Spill
	ja	.LBB9_577
# BB#576:                               # %land.rhs.1710
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-460(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -1529(%rbp)        # 1-byte Spill
.LBB9_577:                              # %land.end.1716
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1529(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	cmpq	$0, -48(%rbp)
	movl	%ecx, -1536(%rbp)       # 4-byte Spill
	movb	%dl, -1537(%rbp)        # 1-byte Spill
	je	.LBB9_580
# BB#578:                               # %land.lhs.true.1719
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movslq	-460(%rbp), %rsi
	movq	-248(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -1537(%rbp)        # 1-byte Spill
	ja	.LBB9_580
# BB#579:                               # %land.rhs.1724
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-460(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -1537(%rbp)        # 1-byte Spill
.LBB9_580:                              # %land.end.1730
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-1537(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1536(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB9_582
# BB#581:                               # %cond.true.1734
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-460(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB9_583
.LBB9_582:                              # %cond.false.1737
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB9_583:                              # %cond.end.1738
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movq	%rax, -456(%rbp)
.LBB9_584:                              # %for.cond.1740
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_585 Depth 3
                                        #       Child Loop BB9_594 Depth 3
	jmp	.LBB9_585
.LBB9_585:                              # %while.cond.1742
                                        #   Parent Loop BB9_88 Depth=1
                                        #     Parent Loop BB9_584 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-448(%rbp), %rax
	cmpq	-456(%rbp), %rax
	jne	.LBB9_591
# BB#586:                               # %while.body.1745
                                        #   in Loop: Header=BB9_585 Depth=3
	movq	-456(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_588
# BB#587:                               # %if.then.1748
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_591
.LBB9_588:                              # %if.end.1749
                                        #   in Loop: Header=BB9_585 Depth=3
	movq	-456(%rbp), %rax
	movslq	-460(%rbp), %rcx
	movq	-248(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB9_590
# BB#589:                               # %if.then.1754
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_591
.LBB9_590:                              # %if.end.1755
                                        #   in Loop: Header=BB9_585 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)
	movslq	-460(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -456(%rbp)
	jmp	.LBB9_585
.LBB9_591:                              # %while.end.1758
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-448(%rbp), %rax
	cmpq	-456(%rbp), %rax
	jne	.LBB9_593
# BB#592:                               # %if.then.1761
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_605
.LBB9_593:                              # %if.end.1762
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_594
.LBB9_594:                              # %while.cond.1763
                                        #   Parent Loop BB9_88 Depth=1
                                        #     Parent Loop BB9_584 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_598
# BB#595:                               # %while.body.1766
                                        #   in Loop: Header=BB9_594 Depth=3
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_597
# BB#596:                               # %if.then.1769
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_597:                              # %if.end.1770
                                        #   in Loop: Header=BB9_594 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_594
.LBB9_598:                              # %while.end.1771
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	-456(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_600
# BB#599:                               # %if.then.1780
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-456(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -472(%rbp)
.LBB9_600:                              # %if.end.1784
                                        #   in Loop: Header=BB9_584 Depth=2
	cmpq	$2, -184(%rbp)
	je	.LBB9_602
# BB#601:                               # %cond.true.1787
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-144(%rbp), %rdi
	movq	-448(%rbp), %rsi
	movq	-472(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movsbl	-186(%rbp), %r8d
	callq	bcmp_translate
	cmpl	$0, %eax
	jne	.LBB9_603
	jmp	.LBB9_604
.LBB9_602:                              # %cond.false.1791
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-144(%rbp), %rdi
	movq	-448(%rbp), %rsi
	movq	-472(%rbp), %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB9_604
.LBB9_603:                              # %if.then.1794
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB9_1427
.LBB9_604:                              # %if.end.1795
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-472(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-472(%rbp), %rax
	addq	-448(%rbp), %rax
	movq	%rax, -448(%rbp)
	jmp	.LBB9_584
.LBB9_605:                              # %for.end.1798
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_606:                              # %sw.bb.1799
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	je	.LBB9_608
# BB#607:                               # %cond.true.1801
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB9_609
.LBB9_608:                              # %cond.false.1802
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
.LBB9_609:                              # %cond.end.1803
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_611
# BB#610:                               # %lor.lhs.false.1807
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB9_614
.LBB9_611:                              # %if.then.1809
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$5, %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB9_613
# BB#612:                               # %if.then.1815
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_613:                              # %if.end.1816
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_651
.LBB9_614:                              # %if.else.1817
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_615
.LBB9_615:                              # %do.body.1819
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_638
# BB#616:                               # %if.then.1821
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_618
# BB#617:                               # %cond.true.1824
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB9_619
.LBB9_618:                              # %cond.false.1825
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
.LBB9_619:                              # %cond.end.1826
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_622
# BB#620:                               # %land.lhs.true.1830
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_622
# BB#621:                               # %cond.true.1833
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB9_623
.LBB9_622:                              # %cond.false.1834
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
.LBB9_623:                              # %cond.end.1835
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movq	%rax, -496(%rbp)
.LBB9_624:                              # %while.cond.1837
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-488(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -488(%rbp)
	cmpq	-496(%rbp), %rdx
	movb	%cl, -1585(%rbp)        # 1-byte Spill
	jbe	.LBB9_626
# BB#625:                               # %land.rhs.1841
                                        #   in Loop: Header=BB9_624 Depth=2
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -1585(%rbp)        # 1-byte Spill
.LBB9_626:                              # %land.end.1848
                                        #   in Loop: Header=BB9_624 Depth=2
	movb	-1585(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_627
	jmp	.LBB9_628
.LBB9_627:                              # %while.body.1850
                                        #   in Loop: Header=BB9_624 Depth=2
	jmp	.LBB9_624
.LBB9_628:                              # %while.end.1851
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_630
# BB#629:                               # %cond.true.1856
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1592(%rbp)       # 4-byte Spill
	jmp	.LBB9_637
.LBB9_630:                              # %cond.false.1859
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_632
# BB#631:                               # %cond.true.1864
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-488(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-488(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-488(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1596(%rbp)       # 4-byte Spill
	jmp	.LBB9_636
.LBB9_632:                              # %cond.false.1879
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_634
# BB#633:                               # %cond.true.1884
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-488(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-488(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-488(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1600(%rbp)       # 4-byte Spill
	jmp	.LBB9_635
.LBB9_634:                              # %cond.false.1898
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-488(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1600(%rbp)       # 4-byte Spill
.LBB9_635:                              # %cond.end.1900
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1600(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1596(%rbp)       # 4-byte Spill
.LBB9_636:                              # %cond.end.1902
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1596(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1592(%rbp)       # 4-byte Spill
.LBB9_637:                              # %cond.end.1904
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1592(%rbp), %eax       # 4-byte Reload
	movl	%eax, -476(%rbp)
	jmp	.LBB9_647
.LBB9_638:                              # %if.else.1906
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_640
# BB#639:                               # %cond.true.1909
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB9_641
.LBB9_640:                              # %cond.false.1910
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB9_641:                              # %cond.end.1911
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -476(%rbp)
	testb	$1, %cl
	jne	.LBB9_642
	jmp	.LBB9_643
.LBB9_642:                              # %cond.true.1915
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-476(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_644
	jmp	.LBB9_645
.LBB9_643:                              # %cond.false.1919
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-476(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB9_645
.LBB9_644:                              # %cond.true.1924
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-476(%rbp), %eax
	movl	%eax, -1612(%rbp)       # 4-byte Spill
	jmp	.LBB9_646
.LBB9_645:                              # %cond.false.1925
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-476(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1612(%rbp)       # 4-byte Spill
.LBB9_646:                              # %cond.end.1927
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-1612(%rbp), %eax       # 4-byte Reload
	movl	%eax, -476(%rbp)
.LBB9_647:                              # %if.end.1929
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_648
.LBB9_648:                              # %do.end.1931
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$10, -476(%rbp)
	jne	.LBB9_650
# BB#649:                               # %if.then.1934
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_650:                              # %if.end.1935
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_651
.LBB9_651:                              # %if.end.1936
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_652:                              # %sw.bb.1937
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_656
# BB#653:                               # %if.then.1940
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-32(%rbp), %rax
	movw	56(%rax), %cx
	shrw	$6, %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB9_655
# BB#654:                               # %if.then.1946
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_655:                              # %if.end.1947
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_661
.LBB9_656:                              # %if.else.1948
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_658
# BB#657:                               # %if.then.1951
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_658:                              # %if.end.1952
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB9_660
# BB#659:                               # %if.then.1956
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_660:                              # %if.end.1957
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_661
.LBB9_661:                              # %if.end.1958
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_662:                              # %sw.bb.1959
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	je	.LBB9_664
# BB#663:                               # %cond.true.1961
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB9_665
.LBB9_664:                              # %cond.false.1962
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
.LBB9_665:                              # %cond.end.1963
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_667
# BB#666:                               # %lor.lhs.false.1967
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB9_668
.LBB9_667:                              # %if.then.1969
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_668:                              # %if.end.1970
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_669:                              # %sw.bb.1971
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_671
# BB#670:                               # %if.then.1974
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_671:                              # %if.end.1975
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_672:                              # %sw.bb.1976
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
# BB#673:                               # %do.body.1978
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_674
.LBB9_674:                              # %while.cond.1980
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_701
# BB#675:                               # %while.body.1986
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_677
# BB#676:                               # %cond.true.1992
                                        #   in Loop: Header=BB9_674 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_700
	jmp	.LBB9_699
.LBB9_677:                              # %cond.false.1993
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_679
# BB#678:                               # %cond.true.2000
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB9_680
.LBB9_679:                              # %cond.false.2002
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB9_680:                              # %cond.end.2006
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1640(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_688
# BB#681:                               # %cond.true.2010
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_683
# BB#682:                               # %cond.true.2017
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB9_684
.LBB9_683:                              # %cond.false.2019
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB9_684:                              # %cond.end.2023
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1648(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_686
# BB#685:                               # %cond.true.2032
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB9_687
.LBB9_686:                              # %cond.false.2034
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
.LBB9_687:                              # %cond.end.2038
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1656(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB9_692
.LBB9_688:                              # %cond.false.2040
                                        #   in Loop: Header=BB9_674 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_690
# BB#689:                               # %cond.true.2047
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB9_691
.LBB9_690:                              # %cond.false.2049
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
.LBB9_691:                              # %cond.end.2053
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1672(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB9_692:                              # %cond.end.2056
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_694
# BB#693:                               # %cond.true.2065
                                        #   in Loop: Header=BB9_674 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	jmp	.LBB9_698
.LBB9_694:                              # %cond.false.2066
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_696
# BB#695:                               # %cond.true.2073
                                        #   in Loop: Header=BB9_674 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB9_697
.LBB9_696:                              # %cond.false.2075
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB9_697:                              # %cond.end.2079
                                        #   in Loop: Header=BB9_674 Depth=2
	movq	-1696(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1684(%rbp)       # 4-byte Spill
.LBB9_698:                              # %cond.end.2083
                                        #   in Loop: Header=BB9_674 Depth=2
	movl	-1684(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_700
.LBB9_699:                              # %if.then.2086
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_700:                              # %if.end.2087
                                        #   in Loop: Header=BB9_674 Depth=2
	jmp	.LBB9_674
.LBB9_701:                              # %while.end.2088
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-168(%rbp), %rax
	addq	$-3, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#702:                               # %do.end.2109
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_703:                              # %sw.bb.2110
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
	movl	$0, -508(%rbp)
# BB#704:                               # %do.body.2112
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB9_705:                              # %while.cond.2114
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -520(%rbp)
	movb	%cl, -1697(%rbp)        # 1-byte Spill
	jle	.LBB9_709
# BB#706:                               # %land.rhs.2117
                                        #   in Loop: Header=BB9_705 Depth=2
	movb	$1, %al
	movq	-520(%rbp), %rcx
	subq	$2, %rcx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	-144(%rbp), %rcx
	movb	%al, -1698(%rbp)        # 1-byte Spill
	je	.LBB9_708
# BB#707:                               # %lor.rhs.2124
                                        #   in Loop: Header=BB9_705 Depth=2
	movq	-520(%rbp), %rax
	subq	$2, %rax
	movq	-224(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	sete	%dl
	movb	%dl, -1698(%rbp)        # 1-byte Spill
.LBB9_708:                              # %lor.end.2131
                                        #   in Loop: Header=BB9_705 Depth=2
	movb	-1698(%rbp), %al        # 1-byte Reload
	movb	%al, -1697(%rbp)        # 1-byte Spill
.LBB9_709:                              # %land.end.2133
                                        #   in Loop: Header=BB9_705 Depth=2
	movb	-1697(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_710
	jmp	.LBB9_713
.LBB9_710:                              # %while.body.2135
                                        #   in Loop: Header=BB9_705 Depth=2
	movq	-520(%rbp), %rax
	subq	$1, %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-168(%rbp), %rcx
	addq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_712
# BB#711:                               # %if.then.2143
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -508(%rbp)
	jmp	.LBB9_713
.LBB9_712:                              # %if.end.2144
                                        #   in Loop: Header=BB9_705 Depth=2
	movq	-520(%rbp), %rax
	subq	$3, %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -520(%rbp)
	jmp	.LBB9_705
.LBB9_713:                              # %while.end.2149
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_714
.LBB9_714:                              # %do.end.2151
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -508(%rbp)
	jne	.LBB9_746
# BB#715:                               # %if.then.2153
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_716
.LBB9_716:                              # %do.body.2154
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_717
.LBB9_717:                              # %while.cond.2156
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_744
# BB#718:                               # %while.body.2162
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_720
# BB#719:                               # %cond.true.2168
                                        #   in Loop: Header=BB9_717 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_743
	jmp	.LBB9_742
.LBB9_720:                              # %cond.false.2169
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_722
# BB#721:                               # %cond.true.2176
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB9_723
.LBB9_722:                              # %cond.false.2178
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB9_723:                              # %cond.end.2182
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1712(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_731
# BB#724:                               # %cond.true.2186
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_726
# BB#725:                               # %cond.true.2193
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	jmp	.LBB9_727
.LBB9_726:                              # %cond.false.2195
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
.LBB9_727:                              # %cond.end.2199
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1720(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_729
# BB#728:                               # %cond.true.2208
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB9_730
.LBB9_729:                              # %cond.false.2210
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB9_730:                              # %cond.end.2214
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1728(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB9_735
.LBB9_731:                              # %cond.false.2216
                                        #   in Loop: Header=BB9_717 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_733
# BB#732:                               # %cond.true.2223
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB9_734
.LBB9_733:                              # %cond.false.2225
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB9_734:                              # %cond.end.2229
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1744(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1736(%rbp)       # 8-byte Spill
.LBB9_735:                              # %cond.end.2232
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1752(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_737
# BB#736:                               # %cond.true.2241
                                        #   in Loop: Header=BB9_717 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1756(%rbp)       # 4-byte Spill
	jmp	.LBB9_741
.LBB9_737:                              # %cond.false.2242
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_739
# BB#738:                               # %cond.true.2249
                                        #   in Loop: Header=BB9_717 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	jmp	.LBB9_740
.LBB9_739:                              # %cond.false.2251
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
.LBB9_740:                              # %cond.end.2255
                                        #   in Loop: Header=BB9_717 Depth=2
	movq	-1768(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1756(%rbp)       # 4-byte Spill
.LBB9_741:                              # %cond.end.2259
                                        #   in Loop: Header=BB9_717 Depth=2
	movl	-1756(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_743
.LBB9_742:                              # %if.then.2262
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_743:                              # %if.end.2263
                                        #   in Loop: Header=BB9_717 Depth=2
	jmp	.LBB9_717
.LBB9_744:                              # %while.end.2264
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-144(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	addq	$-3, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#745:                               # %do.end.2285
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_746
.LBB9_746:                              # %if.end.2286
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_747:                              # %sw.bb.2287
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_748
.LBB9_748:                              # %on_failure
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
	movl	$0, -532(%rbp)
# BB#749:                               # %do.body.2290
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -544(%rbp)
.LBB9_750:                              # %while.cond.2293
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -544(%rbp)
	movb	%cl, -1769(%rbp)        # 1-byte Spill
	jle	.LBB9_754
# BB#751:                               # %land.rhs.2296
                                        #   in Loop: Header=BB9_750 Depth=2
	movb	$1, %al
	movq	-544(%rbp), %rcx
	subq	$2, %rcx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	-144(%rbp), %rcx
	movb	%al, -1770(%rbp)        # 1-byte Spill
	je	.LBB9_753
# BB#752:                               # %lor.rhs.2303
                                        #   in Loop: Header=BB9_750 Depth=2
	movq	-544(%rbp), %rax
	subq	$2, %rax
	movq	-224(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	sete	%dl
	movb	%dl, -1770(%rbp)        # 1-byte Spill
.LBB9_753:                              # %lor.end.2310
                                        #   in Loop: Header=BB9_750 Depth=2
	movb	-1770(%rbp), %al        # 1-byte Reload
	movb	%al, -1769(%rbp)        # 1-byte Spill
.LBB9_754:                              # %land.end.2312
                                        #   in Loop: Header=BB9_750 Depth=2
	movb	-1769(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_755
	jmp	.LBB9_758
.LBB9_755:                              # %while.body.2314
                                        #   in Loop: Header=BB9_750 Depth=2
	movq	-544(%rbp), %rax
	subq	$1, %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-168(%rbp), %rcx
	addq	$-3, %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_757
# BB#756:                               # %if.then.2322
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -532(%rbp)
	jmp	.LBB9_758
.LBB9_757:                              # %if.end.2323
                                        #   in Loop: Header=BB9_750 Depth=2
	movq	-544(%rbp), %rax
	subq	$3, %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -544(%rbp)
	jmp	.LBB9_750
.LBB9_758:                              # %while.end.2328
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_759
.LBB9_759:                              # %do.end.2330
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$0, -532(%rbp)
	je	.LBB9_761
# BB#760:                               # %if.then.2332
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-92(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	jmp	.LBB9_792
.LBB9_761:                              # %if.else.2335
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_762
.LBB9_762:                              # %do.body.2336
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_763
.LBB9_763:                              # %while.cond.2338
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_790
# BB#764:                               # %while.body.2344
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_766
# BB#765:                               # %cond.true.2350
                                        #   in Loop: Header=BB9_763 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_789
	jmp	.LBB9_788
.LBB9_766:                              # %cond.false.2351
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_768
# BB#767:                               # %cond.true.2358
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB9_769
.LBB9_768:                              # %cond.false.2360
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
.LBB9_769:                              # %cond.end.2364
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1784(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_777
# BB#770:                               # %cond.true.2368
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_772
# BB#771:                               # %cond.true.2375
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	jmp	.LBB9_773
.LBB9_772:                              # %cond.false.2377
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
.LBB9_773:                              # %cond.end.2381
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1792(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_775
# BB#774:                               # %cond.true.2390
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB9_776
.LBB9_775:                              # %cond.false.2392
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB9_776:                              # %cond.end.2396
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1800(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1808(%rbp)       # 8-byte Spill
	jmp	.LBB9_781
.LBB9_777:                              # %cond.false.2398
                                        #   in Loop: Header=BB9_763 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_779
# BB#778:                               # %cond.true.2405
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB9_780
.LBB9_779:                              # %cond.false.2407
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB9_780:                              # %cond.end.2411
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1808(%rbp)       # 8-byte Spill
.LBB9_781:                              # %cond.end.2414
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1808(%rbp), %rax       # 8-byte Reload
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1824(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_783
# BB#782:                               # %cond.true.2423
                                        #   in Loop: Header=BB9_763 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1828(%rbp)       # 4-byte Spill
	jmp	.LBB9_787
.LBB9_783:                              # %cond.false.2424
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_785
# BB#784:                               # %cond.true.2431
                                        #   in Loop: Header=BB9_763 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB9_786
.LBB9_785:                              # %cond.false.2433
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB9_786:                              # %cond.end.2437
                                        #   in Loop: Header=BB9_763 Depth=2
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1828(%rbp)       # 4-byte Spill
.LBB9_787:                              # %cond.end.2441
                                        #   in Loop: Header=BB9_763 Depth=2
	movl	-1828(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_789
.LBB9_788:                              # %if.then.2444
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_789:                              # %if.end.2445
                                        #   in Loop: Header=BB9_763 Depth=2
	jmp	.LBB9_763
.LBB9_790:                              # %while.end.2446
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-144(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	addq	$-3, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#791:                               # %do.end.2467
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_792
.LBB9_792:                              # %if.end.2468
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_793:                              # %sw.bb.2469
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
# BB#794:                               # %do.body.2471
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_795
.LBB9_795:                              # %while.cond.2473
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_822
# BB#796:                               # %while.body.2479
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_798
# BB#797:                               # %cond.true.2485
                                        #   in Loop: Header=BB9_795 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_821
	jmp	.LBB9_820
.LBB9_798:                              # %cond.false.2486
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_800
# BB#799:                               # %cond.true.2493
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	jmp	.LBB9_801
.LBB9_800:                              # %cond.false.2495
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
.LBB9_801:                              # %cond.end.2499
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1848(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_809
# BB#802:                               # %cond.true.2503
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_804
# BB#803:                               # %cond.true.2510
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	jmp	.LBB9_805
.LBB9_804:                              # %cond.false.2512
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
.LBB9_805:                              # %cond.end.2516
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1856(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_807
# BB#806:                               # %cond.true.2525
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	jmp	.LBB9_808
.LBB9_807:                              # %cond.false.2527
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
.LBB9_808:                              # %cond.end.2531
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1864(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1872(%rbp)       # 8-byte Spill
	jmp	.LBB9_813
.LBB9_809:                              # %cond.false.2533
                                        #   in Loop: Header=BB9_795 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_811
# BB#810:                               # %cond.true.2540
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB9_812
.LBB9_811:                              # %cond.false.2542
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB9_812:                              # %cond.end.2546
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB9_813:                              # %cond.end.2549
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1888(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_815
# BB#814:                               # %cond.true.2558
                                        #   in Loop: Header=BB9_795 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB9_819
.LBB9_815:                              # %cond.false.2559
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_817
# BB#816:                               # %cond.true.2566
                                        #   in Loop: Header=BB9_795 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB9_818
.LBB9_817:                              # %cond.false.2568
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
.LBB9_818:                              # %cond.end.2572
                                        #   in Loop: Header=BB9_795 Depth=2
	movq	-1904(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
.LBB9_819:                              # %cond.end.2576
                                        #   in Loop: Header=BB9_795 Depth=2
	movl	-1892(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_821
.LBB9_820:                              # %if.then.2579
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_821:                              # %if.end.2580
                                        #   in Loop: Header=BB9_795 Depth=2
	jmp	.LBB9_795
.LBB9_822:                              # %while.end.2581
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-144(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	addq	$-3, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#823:                               # %do.end.2602
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_824:                              # %sw.bb.2603
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rdi
	movq	%rdi, -568(%rbp)
	movq	-168(%rbp), %rdi
	movslq	-92(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -576(%rbp)
	movq	-168(%rbp), %rcx
	addq	$-3, %rcx
	movq	%rcx, -584(%rbp)
	movq	-168(%rbp), %rcx
	addq	$-3, %rcx
	movq	%rcx, -168(%rbp)
	movq	-576(%rbp), %rcx
	addq	$-2, %rcx
	movq	%rcx, %rdi
	callq	extract_number
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rdi
	movq	-568(%rbp), %rsi
	movq	-576(%rbp), %rdx
	callq	mutually_exclusive_p
	cmpl	$0, %eax
	je	.LBB9_828
# BB#825:                               # %if.then.2613
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-584(%rbp), %rax
	movb	$15, (%rax)
# BB#826:                               # %do.body.2614
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-92(%rbp), %eax
	addl	$3, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-576(%rbp), %rdx
	movb	%cl, -2(%rdx)
	movl	-92(%rbp), %eax
	addl	$3, %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-576(%rbp), %rdx
	movb	%cl, -1(%rdx)
# BB#827:                               # %do.end.2625
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_829
.LBB9_828:                              # %if.else.2626
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-584(%rbp), %rax
	movb	$14, (%rax)
.LBB9_829:                              # %if.end.2627
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_830:                              # %sw.bb.2628
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_831
.LBB9_831:                              # %unconditional_jump
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_832
.LBB9_832:                              # %do.body.2629
                                        #   in Loop: Header=BB9_88 Depth=1
	testb	$1, immediate_quit
	je	.LBB9_842
# BB#833:                               # %if.then.2631
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_834
.LBB9_834:                              # %do.body.2632
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1912(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_837
# BB#835:                               # %land.lhs.true.2636
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1920(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_837
# BB#836:                               # %if.then.2640
                                        #   in Loop: Header=BB9_88 Depth=1
	callq	process_quit_flag
	jmp	.LBB9_840
.LBB9_837:                              # %if.else.2641
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB9_839
# BB#838:                               # %if.then.2643
                                        #   in Loop: Header=BB9_88 Depth=1
	callq	process_pending_signals
.LBB9_839:                              # %if.end.2644
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_840
.LBB9_840:                              # %if.end.2645
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_841
.LBB9_841:                              # %do.end.2647
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_842
.LBB9_842:                              # %if.end.2648
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_843
.LBB9_843:                              # %do.end.2650
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-168(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -168(%rbp)
	jmp	.LBB9_1426
.LBB9_844:                              # %sw.bb.2654
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	extract_number
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB9_878
# BB#845:                               # %if.then.2659
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -592(%rbp)
	movl	-92(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	movq	-168(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -168(%rbp)
# BB#846:                               # %do.body.2664
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_847
.LBB9_847:                              # %while.cond.2667
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_874
# BB#848:                               # %while.body.2673
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_850
# BB#849:                               # %cond.true.2679
                                        #   in Loop: Header=BB9_847 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_873
	jmp	.LBB9_872
.LBB9_850:                              # %cond.false.2680
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_852
# BB#851:                               # %cond.true.2687
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	jmp	.LBB9_853
.LBB9_852:                              # %cond.false.2689
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
.LBB9_853:                              # %cond.end.2693
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1928(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_861
# BB#854:                               # %cond.true.2697
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_856
# BB#855:                               # %cond.true.2704
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	jmp	.LBB9_857
.LBB9_856:                              # %cond.false.2706
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
.LBB9_857:                              # %cond.end.2710
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1936(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_859
# BB#858:                               # %cond.true.2719
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	jmp	.LBB9_860
.LBB9_859:                              # %cond.false.2721
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
.LBB9_860:                              # %cond.end.2725
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1944(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1952(%rbp)       # 8-byte Spill
	jmp	.LBB9_865
.LBB9_861:                              # %cond.false.2727
                                        #   in Loop: Header=BB9_847 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_863
# BB#862:                               # %cond.true.2734
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	jmp	.LBB9_864
.LBB9_863:                              # %cond.false.2736
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
.LBB9_864:                              # %cond.end.2740
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1960(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -1952(%rbp)       # 8-byte Spill
.LBB9_865:                              # %cond.end.2743
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1952(%rbp), %rax       # 8-byte Reload
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_867
# BB#866:                               # %cond.true.2752
                                        #   in Loop: Header=BB9_847 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1972(%rbp)       # 4-byte Spill
	jmp	.LBB9_871
.LBB9_867:                              # %cond.false.2753
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_869
# BB#868:                               # %cond.true.2760
                                        #   in Loop: Header=BB9_847 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	jmp	.LBB9_870
.LBB9_869:                              # %cond.false.2762
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
.LBB9_870:                              # %cond.end.2766
                                        #   in Loop: Header=BB9_847 Depth=2
	movq	-1984(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -1972(%rbp)       # 4-byte Spill
.LBB9_871:                              # %cond.end.2770
                                        #   in Loop: Header=BB9_847 Depth=2
	movl	-1972(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_873
.LBB9_872:                              # %if.then.2773
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_873:                              # %if.end.2774
                                        #   in Loop: Header=BB9_847 Depth=2
	jmp	.LBB9_847
.LBB9_874:                              # %while.end.2775
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-592(%rbp), %rdi
	callq	extract_number
	movl	%eax, -604(%rbp)
	movslq	-604(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-592(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -208(%rbp)
	movq	-224(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#875:                               # %do.body.2793
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-92(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-592(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-92(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-592(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#876:                               # %do.end.2801
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_877
.LBB9_877:                              # %do.end.2803
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_879
.LBB9_878:                              # %if.else.2804
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_748
.LBB9_879:                              # %if.end.2805
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_880:                              # %sw.bb.2806
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	extract_number
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB9_914
# BB#881:                               # %if.then.2811
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -616(%rbp)
	movl	-92(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
# BB#882:                               # %do.body.2815
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_883
.LBB9_883:                              # %while.cond.2818
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_910
# BB#884:                               # %while.body.2824
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_886
# BB#885:                               # %cond.true.2830
                                        #   in Loop: Header=BB9_883 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_909
	jmp	.LBB9_908
.LBB9_886:                              # %cond.false.2831
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_888
# BB#887:                               # %cond.true.2838
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	jmp	.LBB9_889
.LBB9_888:                              # %cond.false.2840
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
.LBB9_889:                              # %cond.end.2844
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-1992(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_897
# BB#890:                               # %cond.true.2848
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_892
# BB#891:                               # %cond.true.2855
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2000(%rbp)       # 8-byte Spill
	jmp	.LBB9_893
.LBB9_892:                              # %cond.false.2857
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2000(%rbp)       # 8-byte Spill
.LBB9_893:                              # %cond.end.2861
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-2000(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_895
# BB#894:                               # %cond.true.2870
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	jmp	.LBB9_896
.LBB9_895:                              # %cond.false.2872
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2008(%rbp)       # 8-byte Spill
.LBB9_896:                              # %cond.end.2876
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-2008(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -2016(%rbp)       # 8-byte Spill
	jmp	.LBB9_901
.LBB9_897:                              # %cond.false.2878
                                        #   in Loop: Header=BB9_883 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_899
# BB#898:                               # %cond.true.2885
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	jmp	.LBB9_900
.LBB9_899:                              # %cond.false.2887
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
.LBB9_900:                              # %cond.end.2891
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-2024(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -2016(%rbp)       # 8-byte Spill
.LBB9_901:                              # %cond.end.2894
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-2016(%rbp), %rax       # 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-2032(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_903
# BB#902:                               # %cond.true.2903
                                        #   in Loop: Header=BB9_883 Depth=2
	xorl	%eax, %eax
	movl	%eax, -2036(%rbp)       # 4-byte Spill
	jmp	.LBB9_907
.LBB9_903:                              # %cond.false.2904
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_905
# BB#904:                               # %cond.true.2911
                                        #   in Loop: Header=BB9_883 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	jmp	.LBB9_906
.LBB9_905:                              # %cond.false.2913
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
.LBB9_906:                              # %cond.end.2917
                                        #   in Loop: Header=BB9_883 Depth=2
	movq	-2048(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -2036(%rbp)       # 4-byte Spill
.LBB9_907:                              # %cond.end.2921
                                        #   in Loop: Header=BB9_883 Depth=2
	movl	-2036(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_909
.LBB9_908:                              # %if.then.2924
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_909:                              # %if.end.2925
                                        #   in Loop: Header=BB9_883 Depth=2
	jmp	.LBB9_883
.LBB9_910:                              # %while.end.2926
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-616(%rbp), %rdi
	callq	extract_number
	movl	%eax, -628(%rbp)
	movslq	-628(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-616(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -208(%rbp)
	movq	-224(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#911:                               # %do.body.2944
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-92(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-616(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-92(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-616(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#912:                               # %do.end.2952
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_913
.LBB9_913:                              # %do.end.2954
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_831
.LBB9_914:                              # %if.else.2955
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -168(%rbp)
# BB#915:                               # %if.end.2957
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_916:                              # %sw.bb.2958
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-168(%rbp), %rdi
	callq	extract_number_and_incr
	leaq	-168(%rbp), %rdi
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rcx
	movslq	-92(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -640(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
# BB#917:                               # %do.body.2964
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_918
.LBB9_918:                              # %while.cond.2967
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_945
# BB#919:                               # %while.body.2973
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_921
# BB#920:                               # %cond.true.2979
                                        #   in Loop: Header=BB9_918 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_944
	jmp	.LBB9_943
.LBB9_921:                              # %cond.false.2980
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_923
# BB#922:                               # %cond.true.2987
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	jmp	.LBB9_924
.LBB9_923:                              # %cond.false.2989
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2056(%rbp)       # 8-byte Spill
.LBB9_924:                              # %cond.end.2993
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2056(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_932
# BB#925:                               # %cond.true.2997
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_927
# BB#926:                               # %cond.true.3004
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB9_928
.LBB9_927:                              # %cond.false.3006
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
.LBB9_928:                              # %cond.end.3010
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2064(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_930
# BB#929:                               # %cond.true.3019
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	jmp	.LBB9_931
.LBB9_930:                              # %cond.false.3021
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
.LBB9_931:                              # %cond.end.3025
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2072(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB9_936
.LBB9_932:                              # %cond.false.3027
                                        #   in Loop: Header=BB9_918 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_934
# BB#933:                               # %cond.true.3034
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	jmp	.LBB9_935
.LBB9_934:                              # %cond.false.3036
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
.LBB9_935:                              # %cond.end.3040
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2088(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -2080(%rbp)       # 8-byte Spill
.LBB9_936:                              # %cond.end.3043
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_938
# BB#937:                               # %cond.true.3052
                                        #   in Loop: Header=BB9_918 Depth=2
	xorl	%eax, %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
	jmp	.LBB9_942
.LBB9_938:                              # %cond.false.3053
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_940
# BB#939:                               # %cond.true.3060
                                        #   in Loop: Header=BB9_918 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2112(%rbp)       # 8-byte Spill
	jmp	.LBB9_941
.LBB9_940:                              # %cond.false.3062
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2112(%rbp)       # 8-byte Spill
.LBB9_941:                              # %cond.end.3066
                                        #   in Loop: Header=BB9_918 Depth=2
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -2100(%rbp)       # 4-byte Spill
.LBB9_942:                              # %cond.end.3070
                                        #   in Loop: Header=BB9_918 Depth=2
	movl	-2100(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_944
.LBB9_943:                              # %if.then.3073
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_944:                              # %if.end.3074
                                        #   in Loop: Header=BB9_918 Depth=2
	jmp	.LBB9_918
.LBB9_945:                              # %while.end.3075
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-640(%rbp), %rdi
	callq	extract_number
	movl	%eax, -652(%rbp)
	movslq	-652(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-640(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -208(%rbp)
	movq	-224(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#946:                               # %do.body.3093
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-92(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-640(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-92(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-640(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#947:                               # %do.end.3101
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_948
.LBB9_948:                              # %do.end.3103
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_949:                              # %sw.bb.3104
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$25, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -653(%rbp)
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	je	.LBB9_951
# BB#950:                               # %cond.true.3112
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jmp	.LBB9_952
.LBB9_951:                              # %cond.false.3113
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
.LBB9_952:                              # %cond.end.3114
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2128(%rbp), %rax       # 8-byte Reload
	movq	-2120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_955
# BB#953:                               # %lor.lhs.false.3118
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_955
# BB#954:                               # %lor.lhs.false.3120
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_956
.LBB9_955:                              # %if.then.3123
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -653(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -653(%rbp)
	jmp	.LBB9_1029
.LBB9_956:                              # %if.else.3128
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_960
# BB#957:                               # %land.lhs.true.3131
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	-144(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_960
# BB#958:                               # %land.lhs.true.3135
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_960
# BB#959:                               # %cond.true.3140
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2136(%rbp)       # 8-byte Spill
	jmp	.LBB9_961
.LBB9_960:                              # %cond.false.3145
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2136(%rbp)       # 8-byte Spill
.LBB9_961:                              # %cond.end.3151
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2136(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	movq	%rcx, -2152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2152(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2153(%rbp)        # 1-byte Spill
	je	.LBB9_963
# BB#962:                               # %lor.rhs.3156
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2153(%rbp)        # 1-byte Spill
.LBB9_963:                              # %lor.end.3159
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2153(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2144(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -688(%rbp)
	movq	-688(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
# BB#964:                               # %do.body.3164
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_987
# BB#965:                               # %if.then.3166
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_967
# BB#966:                               # %cond.true.3170
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	jmp	.LBB9_968
.LBB9_967:                              # %cond.false.3171
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
.LBB9_968:                              # %cond.end.3172
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2168(%rbp), %rax       # 8-byte Reload
	movq	%rax, -704(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_971
# BB#969:                               # %land.lhs.true.3177
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_971
# BB#970:                               # %cond.true.3180
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	jmp	.LBB9_972
.LBB9_971:                              # %cond.false.3181
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2176(%rbp)       # 8-byte Spill
.LBB9_972:                              # %cond.end.3182
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2176(%rbp), %rax       # 8-byte Reload
	movq	%rax, -712(%rbp)
.LBB9_973:                              # %while.cond.3184
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-704(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -704(%rbp)
	cmpq	-712(%rbp), %rdx
	movb	%cl, -2177(%rbp)        # 1-byte Spill
	jbe	.LBB9_975
# BB#974:                               # %land.rhs.3188
                                        #   in Loop: Header=BB9_973 Depth=2
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -2177(%rbp)        # 1-byte Spill
.LBB9_975:                              # %land.end.3195
                                        #   in Loop: Header=BB9_973 Depth=2
	movb	-2177(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_976
	jmp	.LBB9_977
.LBB9_976:                              # %while.body.3197
                                        #   in Loop: Header=BB9_973 Depth=2
	jmp	.LBB9_973
.LBB9_977:                              # %while.end.3198
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_979
# BB#978:                               # %cond.true.3203
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2184(%rbp)       # 4-byte Spill
	jmp	.LBB9_986
.LBB9_979:                              # %cond.false.3206
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_981
# BB#980:                               # %cond.true.3211
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-704(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-704(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-704(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -2188(%rbp)       # 4-byte Spill
	jmp	.LBB9_985
.LBB9_981:                              # %cond.false.3226
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_983
# BB#982:                               # %cond.true.3231
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-704(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-704(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-704(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2192(%rbp)       # 4-byte Spill
	jmp	.LBB9_984
.LBB9_983:                              # %cond.false.3245
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-704(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2192(%rbp)       # 4-byte Spill
.LBB9_984:                              # %cond.end.3247
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2192(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2188(%rbp)       # 4-byte Spill
.LBB9_985:                              # %cond.end.3249
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2188(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2184(%rbp)       # 4-byte Spill
.LBB9_986:                              # %cond.end.3251
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2184(%rbp), %eax       # 4-byte Reload
	movl	%eax, -660(%rbp)
	jmp	.LBB9_996
.LBB9_987:                              # %if.else.3253
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_989
# BB#988:                               # %cond.true.3256
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB9_990
.LBB9_989:                              # %cond.false.3257
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
.LBB9_990:                              # %cond.end.3258
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2200(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -660(%rbp)
	testb	$1, %cl
	jne	.LBB9_991
	jmp	.LBB9_992
.LBB9_991:                              # %cond.true.3262
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-660(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_993
	jmp	.LBB9_994
.LBB9_992:                              # %cond.false.3266
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-660(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_994
.LBB9_993:                              # %cond.true.3271
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-660(%rbp), %eax
	movl	%eax, -2204(%rbp)       # 4-byte Spill
	jmp	.LBB9_995
.LBB9_994:                              # %cond.false.3272
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-660(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2204(%rbp)       # 4-byte Spill
.LBB9_995:                              # %cond.end.3274
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2204(%rbp), %eax       # 4-byte Reload
	movl	%eax, -660(%rbp)
.LBB9_996:                              # %if.end.3276
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_997
.LBB9_997:                              # %do.end.3278
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-660(%rbp), %edi
	callq	syntax_property
	movl	%eax, -668(%rbp)
	movq	-696(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD_FAST
	movq	-144(%rbp), %rcx
	cmpq	-112(%rbp), %rcx
	jne	.LBB9_999
# BB#998:                               # %if.then.3283
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_999:                              # %if.end.3284
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1000
.LBB9_1000:                             # %do.body.3285
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1011
# BB#1001:                              # %if.then.3287
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1003
# BB#1002:                              # %cond.true.3292
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -676(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2208(%rbp)       # 4-byte Spill
	jmp	.LBB9_1010
.LBB9_1003:                             # %cond.false.3295
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1005
# BB#1004:                              # %cond.true.3300
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -676(%rbp)
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
	movl	%esi, -2212(%rbp)       # 4-byte Spill
	jmp	.LBB9_1009
.LBB9_1005:                             # %cond.false.3315
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1007
# BB#1006:                              # %cond.true.3320
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -676(%rbp)
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
	movl	%ecx, -2216(%rbp)       # 4-byte Spill
	jmp	.LBB9_1008
.LBB9_1007:                             # %cond.false.3334
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-676(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -2216(%rbp)       # 4-byte Spill
.LBB9_1008:                             # %cond.end.3336
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2216(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2212(%rbp)       # 4-byte Spill
.LBB9_1009:                             # %cond.end.3338
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2212(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2208(%rbp)       # 4-byte Spill
.LBB9_1010:                             # %cond.end.3340
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2208(%rbp), %eax       # 4-byte Reload
	movl	%eax, -664(%rbp)
	jmp	.LBB9_1017
.LBB9_1011:                             # %if.else.3342
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -664(%rbp)
	movl	$1, -676(%rbp)
	testb	$1, %al
	jne	.LBB9_1012
	jmp	.LBB9_1013
.LBB9_1012:                             # %cond.true.3344
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-664(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1014
	jmp	.LBB9_1015
.LBB9_1013:                             # %cond.false.3348
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-664(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1015
.LBB9_1014:                             # %cond.true.3353
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-664(%rbp), %eax
	movl	%eax, -2220(%rbp)       # 4-byte Spill
	jmp	.LBB9_1016
.LBB9_1015:                             # %cond.false.3354
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-664(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2220(%rbp)       # 4-byte Spill
.LBB9_1016:                             # %cond.end.3356
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2220(%rbp), %eax       # 4-byte Reload
	movl	%eax, -664(%rbp)
.LBB9_1017:                             # %if.end.3358
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1018
.LBB9_1018:                             # %do.end.3360
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-664(%rbp), %edi
	callq	syntax_property
	movl	%eax, -672(%rbp)
	cmpl	$2, -668(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$2, -672(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %eax
	jne	.LBB9_1027
# BB#1019:                              # %lor.lhs.false.3368
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$2, -668(%rbp)
	jne	.LBB9_1028
# BB#1020:                              # %land.lhs.true.3371
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1021
	jmp	.LBB9_1022
.LBB9_1021:                             # %cond.true.3372
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-660(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1023
	jmp	.LBB9_1026
.LBB9_1022:                             # %cond.false.3376
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-660(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB9_1026
.LBB9_1023:                             # %land.lhs.true.3381
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1024
	jmp	.LBB9_1025
.LBB9_1024:                             # %cond.true.3382
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-664(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1028
	jmp	.LBB9_1026
.LBB9_1025:                             # %cond.false.3386
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-664(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB9_1028
.LBB9_1026:                             # %land.lhs.true.3391
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-660(%rbp), %edi
	movl	-664(%rbp), %esi
	callq	word_boundary_p
	testb	$1, %al
	jne	.LBB9_1027
	jmp	.LBB9_1028
.LBB9_1027:                             # %if.then.3394
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -653(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -653(%rbp)
.LBB9_1028:                             # %if.end.3399
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1029
.LBB9_1029:                             # %if.end.3400
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -653(%rbp)
	je	.LBB9_1031
# BB#1030:                              # %if.then.3402
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1031:                             # %if.else.3403
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1032:                             # %sw.bb.3404
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_1034
# BB#1033:                              # %if.then.3407
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1034:                             # %if.else.3408
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_1038
# BB#1035:                              # %land.lhs.true.3416
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_1038
# BB#1036:                              # %land.lhs.true.3419
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_1038
# BB#1037:                              # %cond.true.3423
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	jmp	.LBB9_1039
.LBB9_1038:                             # %cond.false.3427
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
.LBB9_1039:                             # %cond.end.3432
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2232(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	movq	%rcx, -2248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2249(%rbp)        # 1-byte Spill
	je	.LBB9_1041
# BB#1040:                              # %lor.rhs.3437
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2249(%rbp)        # 1-byte Spill
.LBB9_1041:                             # %lor.end.3440
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2249(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2240(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
.LBB9_1042:                             # %while.cond.3446
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_1046
# BB#1043:                              # %while.body.3449
                                        #   in Loop: Header=BB9_1042 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_1045
# BB#1044:                              # %if.then.3452
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1045:                             # %if.end.3453
                                        #   in Loop: Header=BB9_1042 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_1042
.LBB9_1046:                             # %while.end.3454
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1047
.LBB9_1047:                             # %do.body.3455
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1058
# BB#1048:                              # %if.then.3457
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1050
# BB#1049:                              # %cond.true.3462
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -732(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2256(%rbp)       # 4-byte Spill
	jmp	.LBB9_1057
.LBB9_1050:                             # %cond.false.3465
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1052
# BB#1051:                              # %cond.true.3470
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -732(%rbp)
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
	movl	%esi, -2260(%rbp)       # 4-byte Spill
	jmp	.LBB9_1056
.LBB9_1052:                             # %cond.false.3485
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1054
# BB#1053:                              # %cond.true.3490
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -732(%rbp)
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
	movl	%ecx, -2264(%rbp)       # 4-byte Spill
	jmp	.LBB9_1055
.LBB9_1054:                             # %cond.false.3504
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-732(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -2264(%rbp)       # 4-byte Spill
.LBB9_1055:                             # %cond.end.3506
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2264(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2260(%rbp)       # 4-byte Spill
.LBB9_1056:                             # %cond.end.3508
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2260(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2256(%rbp)       # 4-byte Spill
.LBB9_1057:                             # %cond.end.3510
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2256(%rbp), %eax       # 4-byte Reload
	movl	%eax, -720(%rbp)
	jmp	.LBB9_1064
.LBB9_1058:                             # %if.else.3512
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -720(%rbp)
	movl	$1, -732(%rbp)
	testb	$1, %al
	jne	.LBB9_1059
	jmp	.LBB9_1060
.LBB9_1059:                             # %cond.true.3514
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-720(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1061
	jmp	.LBB9_1062
.LBB9_1060:                             # %cond.false.3518
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-720(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1062
.LBB9_1061:                             # %cond.true.3523
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-720(%rbp), %eax
	movl	%eax, -2268(%rbp)       # 4-byte Spill
	jmp	.LBB9_1063
.LBB9_1062:                             # %cond.false.3524
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-720(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2268(%rbp)       # 4-byte Spill
.LBB9_1063:                             # %cond.end.3526
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2268(%rbp), %eax       # 4-byte Reload
	movl	%eax, -720(%rbp)
.LBB9_1064:                             # %if.end.3528
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1065
.LBB9_1065:                             # %do.end.3530
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-720(%rbp), %edi
	callq	syntax_property
	movl	%eax, -728(%rbp)
	cmpl	$2, -728(%rbp)
	je	.LBB9_1067
# BB#1066:                              # %if.then.3534
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1067:                             # %if.end.3535
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	je	.LBB9_1069
# BB#1068:                              # %cond.true.3537
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	jmp	.LBB9_1070
.LBB9_1069:                             # %cond.false.3538
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
.LBB9_1070:                             # %cond.end.3539
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2288(%rbp), %rax       # 8-byte Reload
	movq	-2280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_1116
# BB#1071:                              # %lor.lhs.false.3543
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_1116
# BB#1072:                              # %if.then.3545
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1073
.LBB9_1073:                             # %do.body.3546
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1096
# BB#1074:                              # %if.then.3548
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1076
# BB#1075:                              # %cond.true.3552
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	jmp	.LBB9_1077
.LBB9_1076:                             # %cond.false.3553
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2296(%rbp)       # 8-byte Spill
.LBB9_1077:                             # %cond.end.3554
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -760(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_1080
# BB#1078:                              # %land.lhs.true.3559
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_1080
# BB#1079:                              # %cond.true.3562
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB9_1081
.LBB9_1080:                             # %cond.false.3563
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
.LBB9_1081:                             # %cond.end.3564
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2304(%rbp), %rax       # 8-byte Reload
	movq	%rax, -768(%rbp)
.LBB9_1082:                             # %while.cond.3566
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-760(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -760(%rbp)
	cmpq	-768(%rbp), %rdx
	movb	%cl, -2305(%rbp)        # 1-byte Spill
	jbe	.LBB9_1084
# BB#1083:                              # %land.rhs.3570
                                        #   in Loop: Header=BB9_1082 Depth=2
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -2305(%rbp)        # 1-byte Spill
.LBB9_1084:                             # %land.end.3577
                                        #   in Loop: Header=BB9_1082 Depth=2
	movb	-2305(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_1085
	jmp	.LBB9_1086
.LBB9_1085:                             # %while.body.3579
                                        #   in Loop: Header=BB9_1082 Depth=2
	jmp	.LBB9_1082
.LBB9_1086:                             # %while.end.3580
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1088
# BB#1087:                              # %cond.true.3585
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2312(%rbp)       # 4-byte Spill
	jmp	.LBB9_1095
.LBB9_1088:                             # %cond.false.3588
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1090
# BB#1089:                              # %cond.true.3593
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-760(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-760(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-760(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -2316(%rbp)       # 4-byte Spill
	jmp	.LBB9_1094
.LBB9_1090:                             # %cond.false.3608
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1092
# BB#1091:                              # %cond.true.3613
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-760(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-760(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-760(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2320(%rbp)       # 4-byte Spill
	jmp	.LBB9_1093
.LBB9_1092:                             # %cond.false.3627
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-760(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2320(%rbp)       # 4-byte Spill
.LBB9_1093:                             # %cond.end.3629
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2320(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2316(%rbp)       # 4-byte Spill
.LBB9_1094:                             # %cond.end.3631
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2316(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2312(%rbp)       # 4-byte Spill
.LBB9_1095:                             # %cond.end.3633
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2312(%rbp), %eax       # 4-byte Reload
	movl	%eax, -716(%rbp)
	jmp	.LBB9_1105
.LBB9_1096:                             # %if.else.3635
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1098
# BB#1097:                              # %cond.true.3638
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2328(%rbp)       # 8-byte Spill
	jmp	.LBB9_1099
.LBB9_1098:                             # %cond.false.3639
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2328(%rbp)       # 8-byte Spill
.LBB9_1099:                             # %cond.end.3640
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2328(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -716(%rbp)
	testb	$1, %cl
	jne	.LBB9_1100
	jmp	.LBB9_1101
.LBB9_1100:                             # %cond.true.3644
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-716(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1102
	jmp	.LBB9_1103
.LBB9_1101:                             # %cond.false.3648
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-716(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1103
.LBB9_1102:                             # %cond.true.3653
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-716(%rbp), %eax
	movl	%eax, -2332(%rbp)       # 4-byte Spill
	jmp	.LBB9_1104
.LBB9_1103:                             # %cond.false.3654
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-716(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2332(%rbp)       # 4-byte Spill
.LBB9_1104:                             # %cond.end.3656
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2332(%rbp), %eax       # 4-byte Reload
	movl	%eax, -716(%rbp)
.LBB9_1105:                             # %if.end.3658
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1106
.LBB9_1106:                             # %do.end.3660
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-752(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movl	$1, %esi
	movl	-716(%rbp), %edi
	callq	syntax_property
	movl	%eax, -724(%rbp)
	cmpl	$2, -724(%rbp)
	jne	.LBB9_1115
# BB#1107:                              # %land.lhs.true.3665
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1108
	jmp	.LBB9_1109
.LBB9_1108:                             # %cond.true.3666
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-716(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1110
	jmp	.LBB9_1113
.LBB9_1109:                             # %cond.false.3670
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-716(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB9_1113
.LBB9_1110:                             # %land.lhs.true.3675
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1111
	jmp	.LBB9_1112
.LBB9_1111:                             # %cond.true.3676
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-720(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1114
	jmp	.LBB9_1113
.LBB9_1112:                             # %cond.false.3680
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-720(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB9_1114
.LBB9_1113:                             # %land.lhs.true.3685
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-716(%rbp), %edi
	movl	-720(%rbp), %esi
	callq	word_boundary_p
	testb	$1, %al
	jne	.LBB9_1115
.LBB9_1114:                             # %if.then.3688
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1115:                             # %if.end.3689
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1116
.LBB9_1116:                             # %if.end.3690
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1117
.LBB9_1117:                             # %if.end.3691
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1118:                             # %sw.bb.3692
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	je	.LBB9_1120
# BB#1119:                              # %cond.true.3694
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	jmp	.LBB9_1121
.LBB9_1120:                             # %cond.false.3695
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2352(%rbp)       # 8-byte Spill
.LBB9_1121:                             # %cond.end.3696
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2352(%rbp), %rax       # 8-byte Reload
	movq	-2344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_1123
# BB#1122:                              # %lor.lhs.false.3700
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB9_1124
.LBB9_1123:                             # %if.then.3702
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1124:                             # %if.else.3703
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_1128
# BB#1125:                              # %land.lhs.true.3711
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_1128
# BB#1126:                              # %land.lhs.true.3714
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_1128
# BB#1127:                              # %cond.true.3718
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	jmp	.LBB9_1129
.LBB9_1128:                             # %cond.false.3722
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
.LBB9_1129:                             # %cond.end.3727
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2360(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2368(%rbp)       # 8-byte Spill
	movq	%rcx, -2376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2376(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2377(%rbp)        # 1-byte Spill
	je	.LBB9_1131
# BB#1130:                              # %lor.rhs.3732
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2377(%rbp)        # 1-byte Spill
.LBB9_1131:                             # %lor.end.3735
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2377(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2368(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	subq	$1, %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
# BB#1132:                              # %do.body.3742
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1155
# BB#1133:                              # %if.then.3744
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1135
# BB#1134:                              # %cond.true.3748
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2392(%rbp)       # 8-byte Spill
	jmp	.LBB9_1136
.LBB9_1135:                             # %cond.false.3749
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2392(%rbp)       # 8-byte Spill
.LBB9_1136:                             # %cond.end.3750
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2392(%rbp), %rax       # 8-byte Reload
	movq	%rax, -816(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_1139
# BB#1137:                              # %land.lhs.true.3755
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_1139
# BB#1138:                              # %cond.true.3758
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	jmp	.LBB9_1140
.LBB9_1139:                             # %cond.false.3759
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
.LBB9_1140:                             # %cond.end.3760
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -824(%rbp)
.LBB9_1141:                             # %while.cond.3762
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-816(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -816(%rbp)
	cmpq	-824(%rbp), %rdx
	movb	%cl, -2401(%rbp)        # 1-byte Spill
	jbe	.LBB9_1143
# BB#1142:                              # %land.rhs.3766
                                        #   in Loop: Header=BB9_1141 Depth=2
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -2401(%rbp)        # 1-byte Spill
.LBB9_1143:                             # %land.end.3773
                                        #   in Loop: Header=BB9_1141 Depth=2
	movb	-2401(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_1144
	jmp	.LBB9_1145
.LBB9_1144:                             # %while.body.3775
                                        #   in Loop: Header=BB9_1141 Depth=2
	jmp	.LBB9_1141
.LBB9_1145:                             # %while.end.3776
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1147
# BB#1146:                              # %cond.true.3781
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2408(%rbp)       # 4-byte Spill
	jmp	.LBB9_1154
.LBB9_1147:                             # %cond.false.3784
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1149
# BB#1148:                              # %cond.true.3789
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-816(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-816(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-816(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -2412(%rbp)       # 4-byte Spill
	jmp	.LBB9_1153
.LBB9_1149:                             # %cond.false.3804
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1151
# BB#1150:                              # %cond.true.3809
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-816(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-816(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-816(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2416(%rbp)       # 4-byte Spill
	jmp	.LBB9_1152
.LBB9_1151:                             # %cond.false.3823
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-816(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2416(%rbp)       # 4-byte Spill
.LBB9_1152:                             # %cond.end.3825
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2416(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2412(%rbp)       # 4-byte Spill
.LBB9_1153:                             # %cond.end.3827
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2412(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2408(%rbp)       # 4-byte Spill
.LBB9_1154:                             # %cond.end.3829
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2408(%rbp), %eax       # 4-byte Reload
	movl	%eax, -772(%rbp)
	jmp	.LBB9_1164
.LBB9_1155:                             # %if.else.3831
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1157
# BB#1156:                              # %cond.true.3834
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2424(%rbp)       # 8-byte Spill
	jmp	.LBB9_1158
.LBB9_1157:                             # %cond.false.3835
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2424(%rbp)       # 8-byte Spill
.LBB9_1158:                             # %cond.end.3836
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2424(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -772(%rbp)
	testb	$1, %cl
	jne	.LBB9_1159
	jmp	.LBB9_1160
.LBB9_1159:                             # %cond.true.3840
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-772(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1161
	jmp	.LBB9_1162
.LBB9_1160:                             # %cond.false.3844
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-772(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1162
.LBB9_1161:                             # %cond.true.3849
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-772(%rbp), %eax
	movl	%eax, -2428(%rbp)       # 4-byte Spill
	jmp	.LBB9_1163
.LBB9_1162:                             # %cond.false.3850
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-772(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2428(%rbp)       # 4-byte Spill
.LBB9_1163:                             # %cond.end.3852
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2428(%rbp), %eax       # 4-byte Reload
	movl	%eax, -772(%rbp)
.LBB9_1164:                             # %if.end.3854
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1165
.LBB9_1165:                             # %do.end.3856
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-772(%rbp), %edi
	callq	syntax_property
	movl	%eax, -780(%rbp)
	cmpl	$2, -780(%rbp)
	je	.LBB9_1167
# BB#1166:                              # %if.then.3860
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1167:                             # %if.end.3861
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB9_1199
# BB#1168:                              # %if.then.3864
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_1170
# BB#1169:                              # %if.then.3867
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_1170:                             # %if.end.3868
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1171
.LBB9_1171:                             # %do.body.3869
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1182
# BB#1172:                              # %if.then.3871
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1174
# BB#1173:                              # %cond.true.3876
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -788(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2432(%rbp)       # 4-byte Spill
	jmp	.LBB9_1181
.LBB9_1174:                             # %cond.false.3879
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1176
# BB#1175:                              # %cond.true.3884
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -788(%rbp)
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
	movl	%esi, -2436(%rbp)       # 4-byte Spill
	jmp	.LBB9_1180
.LBB9_1176:                             # %cond.false.3899
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1178
# BB#1177:                              # %cond.true.3904
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -788(%rbp)
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
	movl	%ecx, -2440(%rbp)       # 4-byte Spill
	jmp	.LBB9_1179
.LBB9_1178:                             # %cond.false.3918
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-788(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -2440(%rbp)       # 4-byte Spill
.LBB9_1179:                             # %cond.end.3920
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2440(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2436(%rbp)       # 4-byte Spill
.LBB9_1180:                             # %cond.end.3922
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2436(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2432(%rbp)       # 4-byte Spill
.LBB9_1181:                             # %cond.end.3924
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2432(%rbp), %eax       # 4-byte Reload
	movl	%eax, -776(%rbp)
	jmp	.LBB9_1188
.LBB9_1182:                             # %if.else.3926
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -776(%rbp)
	movl	$1, -788(%rbp)
	testb	$1, %al
	jne	.LBB9_1183
	jmp	.LBB9_1184
.LBB9_1183:                             # %cond.true.3928
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-776(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1185
	jmp	.LBB9_1186
.LBB9_1184:                             # %cond.false.3932
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-776(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1186
.LBB9_1185:                             # %cond.true.3937
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-776(%rbp), %eax
	movl	%eax, -2444(%rbp)       # 4-byte Spill
	jmp	.LBB9_1187
.LBB9_1186:                             # %cond.false.3938
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-776(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2444(%rbp)       # 4-byte Spill
.LBB9_1187:                             # %cond.end.3940
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2444(%rbp), %eax       # 4-byte Reload
	movl	%eax, -776(%rbp)
.LBB9_1188:                             # %if.end.3942
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1189
.LBB9_1189:                             # %do.end.3944
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-808(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD_FAST
	movl	$1, %esi
	movl	-776(%rbp), %edi
	callq	syntax_property
	movl	%eax, -784(%rbp)
	cmpl	$2, -784(%rbp)
	jne	.LBB9_1198
# BB#1190:                              # %land.lhs.true.3948
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1191
	jmp	.LBB9_1192
.LBB9_1191:                             # %cond.true.3949
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-772(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1193
	jmp	.LBB9_1196
.LBB9_1192:                             # %cond.false.3953
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-772(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB9_1196
.LBB9_1193:                             # %land.lhs.true.3958
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_1194
	jmp	.LBB9_1195
.LBB9_1194:                             # %cond.true.3959
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-776(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB9_1197
	jmp	.LBB9_1196
.LBB9_1195:                             # %cond.false.3963
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-776(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB9_1197
.LBB9_1196:                             # %land.lhs.true.3968
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-772(%rbp), %edi
	movl	-776(%rbp), %esi
	callq	word_boundary_p
	testb	$1, %al
	jne	.LBB9_1198
.LBB9_1197:                             # %if.then.3971
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1198:                             # %if.end.3972
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1199
.LBB9_1199:                             # %if.end.3973
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1200
.LBB9_1200:                             # %if.end.3974
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1201:                             # %sw.bb.3975
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_1203
# BB#1202:                              # %if.then.3978
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1203:                             # %if.else.3979
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_1207
# BB#1204:                              # %land.lhs.true.3986
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_1207
# BB#1205:                              # %land.lhs.true.3989
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_1207
# BB#1206:                              # %cond.true.3993
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	jmp	.LBB9_1208
.LBB9_1207:                             # %cond.false.3997
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
.LBB9_1208:                             # %cond.end.4002
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2456(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	movq	%rcx, -2472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2472(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2473(%rbp)        # 1-byte Spill
	je	.LBB9_1210
# BB#1209:                              # %lor.rhs.4007
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2473(%rbp)        # 1-byte Spill
.LBB9_1210:                             # %lor.end.4010
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2473(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2464(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -848(%rbp)
	movq	-848(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
.LBB9_1211:                             # %while.cond.4016
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_1215
# BB#1212:                              # %while.body.4019
                                        #   in Loop: Header=BB9_1211 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_1214
# BB#1213:                              # %if.then.4022
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1214:                             # %if.end.4023
                                        #   in Loop: Header=BB9_1211 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_1211
.LBB9_1215:                             # %while.end.4024
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-186(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_1226
# BB#1216:                              # %cond.true.4027
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1218
# BB#1217:                              # %cond.true.4032
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2480(%rbp)       # 4-byte Spill
	jmp	.LBB9_1225
.LBB9_1218:                             # %cond.false.4035
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1220
# BB#1219:                              # %cond.true.4040
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -2484(%rbp)       # 4-byte Spill
	jmp	.LBB9_1224
.LBB9_1220:                             # %cond.false.4055
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1222
# BB#1221:                              # %cond.true.4060
                                        #   in Loop: Header=BB9_88 Depth=1
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
	movl	%ecx, -2488(%rbp)       # 4-byte Spill
	jmp	.LBB9_1223
.LBB9_1222:                             # %cond.false.4074
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2488(%rbp)       # 4-byte Spill
.LBB9_1223:                             # %cond.end.4076
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2488(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2484(%rbp)       # 4-byte Spill
.LBB9_1224:                             # %cond.end.4078
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2484(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2480(%rbp)       # 4-byte Spill
.LBB9_1225:                             # %cond.end.4080
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2480(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2492(%rbp)       # 4-byte Spill
	jmp	.LBB9_1227
.LBB9_1226:                             # %cond.false.4082
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2492(%rbp)       # 4-byte Spill
.LBB9_1227:                             # %cond.end.4084
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2492(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -832(%rbp)
	movl	-832(%rbp), %edi
	callq	syntax_property
	movl	%eax, -840(%rbp)
	cmpl	$2, -840(%rbp)
	je	.LBB9_1230
# BB#1228:                              # %land.lhs.true.4089
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$3, -840(%rbp)
	je	.LBB9_1230
# BB#1229:                              # %if.then.4092
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1230:                             # %if.end.4093
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	je	.LBB9_1232
# BB#1231:                              # %cond.true.4095
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2512(%rbp)       # 8-byte Spill
	jmp	.LBB9_1233
.LBB9_1232:                             # %cond.false.4096
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2512(%rbp)       # 8-byte Spill
.LBB9_1233:                             # %cond.end.4097
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2512(%rbp), %rax       # 8-byte Reload
	movq	-2504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_1273
# BB#1234:                              # %lor.lhs.false.4101
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_1273
# BB#1235:                              # %if.then.4103
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1236
.LBB9_1236:                             # %do.body.4104
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1259
# BB#1237:                              # %if.then.4106
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1239
# BB#1238:                              # %cond.true.4110
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2520(%rbp)       # 8-byte Spill
	jmp	.LBB9_1240
.LBB9_1239:                             # %cond.false.4111
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2520(%rbp)       # 8-byte Spill
.LBB9_1240:                             # %cond.end.4112
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2520(%rbp), %rax       # 8-byte Reload
	movq	%rax, -864(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_1243
# BB#1241:                              # %land.lhs.true.4117
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_1243
# BB#1242:                              # %cond.true.4120
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	jmp	.LBB9_1244
.LBB9_1243:                             # %cond.false.4121
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
.LBB9_1244:                             # %cond.end.4122
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2528(%rbp), %rax       # 8-byte Reload
	movq	%rax, -872(%rbp)
.LBB9_1245:                             # %while.cond.4124
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-864(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -864(%rbp)
	cmpq	-872(%rbp), %rdx
	movb	%cl, -2529(%rbp)        # 1-byte Spill
	jbe	.LBB9_1247
# BB#1246:                              # %land.rhs.4128
                                        #   in Loop: Header=BB9_1245 Depth=2
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -2529(%rbp)        # 1-byte Spill
.LBB9_1247:                             # %land.end.4135
                                        #   in Loop: Header=BB9_1245 Depth=2
	movb	-2529(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_1248
	jmp	.LBB9_1249
.LBB9_1248:                             # %while.body.4137
                                        #   in Loop: Header=BB9_1245 Depth=2
	jmp	.LBB9_1245
.LBB9_1249:                             # %while.end.4138
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1251
# BB#1250:                              # %cond.true.4143
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2536(%rbp)       # 4-byte Spill
	jmp	.LBB9_1258
.LBB9_1251:                             # %cond.false.4146
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1253
# BB#1252:                              # %cond.true.4151
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-864(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-864(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-864(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -2540(%rbp)       # 4-byte Spill
	jmp	.LBB9_1257
.LBB9_1253:                             # %cond.false.4166
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1255
# BB#1254:                              # %cond.true.4171
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-864(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-864(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-864(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2544(%rbp)       # 4-byte Spill
	jmp	.LBB9_1256
.LBB9_1255:                             # %cond.false.4185
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-864(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2544(%rbp)       # 4-byte Spill
.LBB9_1256:                             # %cond.end.4187
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2544(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2540(%rbp)       # 4-byte Spill
.LBB9_1257:                             # %cond.end.4189
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2540(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2536(%rbp)       # 4-byte Spill
.LBB9_1258:                             # %cond.end.4191
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2536(%rbp), %eax       # 4-byte Reload
	movl	%eax, -828(%rbp)
	jmp	.LBB9_1268
.LBB9_1259:                             # %if.else.4193
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1261
# BB#1260:                              # %cond.true.4196
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2552(%rbp)       # 8-byte Spill
	jmp	.LBB9_1262
.LBB9_1261:                             # %cond.false.4197
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2552(%rbp)       # 8-byte Spill
.LBB9_1262:                             # %cond.end.4198
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2552(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -828(%rbp)
	testb	$1, %cl
	jne	.LBB9_1263
	jmp	.LBB9_1264
.LBB9_1263:                             # %cond.true.4202
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-828(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1265
	jmp	.LBB9_1266
.LBB9_1264:                             # %cond.false.4206
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-828(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1266
.LBB9_1265:                             # %cond.true.4211
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-828(%rbp), %eax
	movl	%eax, -2556(%rbp)       # 4-byte Spill
	jmp	.LBB9_1267
.LBB9_1266:                             # %cond.false.4212
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-828(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2556(%rbp)       # 4-byte Spill
.LBB9_1267:                             # %cond.end.4214
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2556(%rbp), %eax       # 4-byte Reload
	movl	%eax, -828(%rbp)
.LBB9_1268:                             # %if.end.4216
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1269
.LBB9_1269:                             # %do.end.4218
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-856(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movl	$1, %esi
	movl	-828(%rbp), %edi
	callq	syntax_property
	movl	%eax, -836(%rbp)
	cmpl	$2, -836(%rbp)
	je	.LBB9_1271
# BB#1270:                              # %lor.lhs.false.4223
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$3, -836(%rbp)
	jne	.LBB9_1272
.LBB9_1271:                             # %if.then.4226
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1272:                             # %if.end.4227
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1273
.LBB9_1273:                             # %if.end.4228
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1274
.LBB9_1274:                             # %if.end.4229
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1275:                             # %sw.bb.4230
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -2568(%rbp)       # 8-byte Spill
	je	.LBB9_1277
# BB#1276:                              # %cond.true.4232
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	jmp	.LBB9_1278
.LBB9_1277:                             # %cond.false.4233
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2576(%rbp)       # 8-byte Spill
.LBB9_1278:                             # %cond.end.4234
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2576(%rbp), %rax       # 8-byte Reload
	movq	-2568(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_1280
# BB#1279:                              # %lor.lhs.false.4238
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB9_1281
.LBB9_1280:                             # %if.then.4240
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1281:                             # %if.else.4241
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_1285
# BB#1282:                              # %land.lhs.true.4248
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_1285
# BB#1283:                              # %land.lhs.true.4251
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_1285
# BB#1284:                              # %cond.true.4255
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	jmp	.LBB9_1286
.LBB9_1285:                             # %cond.false.4259
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2584(%rbp)       # 8-byte Spill
.LBB9_1286:                             # %cond.end.4264
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2584(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2592(%rbp)       # 8-byte Spill
	movq	%rcx, -2600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2600(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2601(%rbp)        # 1-byte Spill
	je	.LBB9_1288
# BB#1287:                              # %lor.rhs.4269
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2601(%rbp)        # 1-byte Spill
.LBB9_1288:                             # %lor.end.4272
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2601(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2592(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	subq	$1, %rsi
	movq	%rsi, -896(%rbp)
	movq	-896(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
# BB#1289:                              # %do.body.4279
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1312
# BB#1290:                              # %if.then.4281
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1292
# BB#1291:                              # %cond.true.4285
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
	jmp	.LBB9_1293
.LBB9_1292:                             # %cond.false.4286
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
.LBB9_1293:                             # %cond.end.4287
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2616(%rbp), %rax       # 8-byte Reload
	movq	%rax, -912(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB9_1296
# BB#1294:                              # %land.lhs.true.4292
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.LBB9_1296
# BB#1295:                              # %cond.true.4295
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -2624(%rbp)       # 8-byte Spill
	jmp	.LBB9_1297
.LBB9_1296:                             # %cond.false.4296
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -2624(%rbp)       # 8-byte Spill
.LBB9_1297:                             # %cond.end.4297
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2624(%rbp), %rax       # 8-byte Reload
	movq	%rax, -920(%rbp)
.LBB9_1298:                             # %while.cond.4299
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-912(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -912(%rbp)
	cmpq	-920(%rbp), %rdx
	movb	%cl, -2625(%rbp)        # 1-byte Spill
	jbe	.LBB9_1300
# BB#1299:                              # %land.rhs.4303
                                        #   in Loop: Header=BB9_1298 Depth=2
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -2625(%rbp)        # 1-byte Spill
.LBB9_1300:                             # %land.end.4310
                                        #   in Loop: Header=BB9_1298 Depth=2
	movb	-2625(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_1301
	jmp	.LBB9_1302
.LBB9_1301:                             # %while.body.4312
                                        #   in Loop: Header=BB9_1298 Depth=2
	jmp	.LBB9_1298
.LBB9_1302:                             # %while.end.4313
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1304
# BB#1303:                              # %cond.true.4318
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2632(%rbp)       # 4-byte Spill
	jmp	.LBB9_1311
.LBB9_1304:                             # %cond.false.4321
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1306
# BB#1305:                              # %cond.true.4326
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-912(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-912(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-912(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -2636(%rbp)       # 4-byte Spill
	jmp	.LBB9_1310
.LBB9_1306:                             # %cond.false.4341
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1308
# BB#1307:                              # %cond.true.4346
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-912(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-912(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-912(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2640(%rbp)       # 4-byte Spill
	jmp	.LBB9_1309
.LBB9_1308:                             # %cond.false.4360
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-912(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2640(%rbp)       # 4-byte Spill
.LBB9_1309:                             # %cond.end.4362
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2640(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2636(%rbp)       # 4-byte Spill
.LBB9_1310:                             # %cond.end.4364
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2636(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2632(%rbp)       # 4-byte Spill
.LBB9_1311:                             # %cond.end.4366
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2632(%rbp), %eax       # 4-byte Reload
	movl	%eax, -876(%rbp)
	jmp	.LBB9_1321
.LBB9_1312:                             # %if.else.4368
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_1314
# BB#1313:                              # %cond.true.4371
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	jmp	.LBB9_1315
.LBB9_1314:                             # %cond.false.4372
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -2648(%rbp)       # 8-byte Spill
.LBB9_1315:                             # %cond.end.4373
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2648(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movzbl	-1(%rax), %edx
	movl	%edx, -876(%rbp)
	testb	$1, %cl
	jne	.LBB9_1316
	jmp	.LBB9_1317
.LBB9_1316:                             # %cond.true.4377
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-876(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1318
	jmp	.LBB9_1319
.LBB9_1317:                             # %cond.false.4381
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-876(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1319
.LBB9_1318:                             # %cond.true.4386
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-876(%rbp), %eax
	movl	%eax, -2652(%rbp)       # 4-byte Spill
	jmp	.LBB9_1320
.LBB9_1319:                             # %cond.false.4387
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-876(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2652(%rbp)       # 4-byte Spill
.LBB9_1320:                             # %cond.end.4389
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2652(%rbp), %eax       # 4-byte Reload
	movl	%eax, -876(%rbp)
.LBB9_1321:                             # %if.end.4391
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1322
.LBB9_1322:                             # %do.end.4393
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-876(%rbp), %edi
	callq	syntax_property
	movl	%eax, -884(%rbp)
	cmpl	$2, -884(%rbp)
	je	.LBB9_1325
# BB#1323:                              # %land.lhs.true.4397
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$3, -884(%rbp)
	je	.LBB9_1325
# BB#1324:                              # %if.then.4400
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1325:                             # %if.end.4401
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB9_1344
# BB#1326:                              # %if.then.4404
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_1328
# BB#1327:                              # %if.then.4407
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_1328:                             # %if.end.4408
                                        #   in Loop: Header=BB9_88 Depth=1
	movsbl	-186(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_1339
# BB#1329:                              # %cond.true.4411
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1331
# BB#1330:                              # %cond.true.4416
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2656(%rbp)       # 4-byte Spill
	jmp	.LBB9_1338
.LBB9_1331:                             # %cond.false.4419
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1333
# BB#1332:                              # %cond.true.4424
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -2660(%rbp)       # 4-byte Spill
	jmp	.LBB9_1337
.LBB9_1333:                             # %cond.false.4439
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1335
# BB#1334:                              # %cond.true.4444
                                        #   in Loop: Header=BB9_88 Depth=1
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
	movl	%ecx, -2664(%rbp)       # 4-byte Spill
	jmp	.LBB9_1336
.LBB9_1335:                             # %cond.false.4458
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -2664(%rbp)       # 4-byte Spill
.LBB9_1336:                             # %cond.end.4460
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2664(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2660(%rbp)       # 4-byte Spill
.LBB9_1337:                             # %cond.end.4462
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2660(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2656(%rbp)       # 4-byte Spill
.LBB9_1338:                             # %cond.end.4464
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2656(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2668(%rbp)       # 4-byte Spill
	jmp	.LBB9_1340
.LBB9_1339:                             # %cond.false.4466
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2668(%rbp)       # 4-byte Spill
.LBB9_1340:                             # %cond.end.4468
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2668(%rbp), %eax       # 4-byte Reload
	movl	%eax, -880(%rbp)
	movq	-904(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD_FAST
	movl	$1, %esi
	movl	-880(%rbp), %edi
	callq	syntax_property
	movl	%eax, -888(%rbp)
	cmpl	$2, -888(%rbp)
	je	.LBB9_1342
# BB#1341:                              # %lor.lhs.false.4474
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpl	$3, -888(%rbp)
	jne	.LBB9_1343
.LBB9_1342:                             # %if.then.4477
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1343:                             # %if.end.4478
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1344
.LBB9_1344:                             # %if.end.4479
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1345
.LBB9_1345:                             # %if.end.4480
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1346:                             # %sw.bb.4481
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$29, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -921(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB9_1347:                             # %while.cond.4490
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_1351
# BB#1348:                              # %while.body.4493
                                        #   in Loop: Header=BB9_1347 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_1350
# BB#1349:                              # %if.then.4496
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1350:                             # %if.end.4497
                                        #   in Loop: Header=BB9_1347 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_1347
.LBB9_1351:                             # %while.end.4498
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_1355
# BB#1352:                              # %land.lhs.true.4501
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.LBB9_1355
# BB#1353:                              # %land.lhs.true.4504
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_1355
# BB#1354:                              # %cond.true.4508
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	jmp	.LBB9_1356
.LBB9_1355:                             # %cond.false.4512
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -2680(%rbp)       # 8-byte Spill
.LBB9_1356:                             # %cond.end.4517
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2680(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	re_match_object, %rcx
	movq	%rax, -2688(%rbp)       # 8-byte Spill
	movq	%rcx, -2696(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-2696(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -2697(%rbp)        # 1-byte Spill
	je	.LBB9_1358
# BB#1357:                              # %lor.rhs.4522
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -2697(%rbp)        # 1-byte Spill
.LBB9_1358:                             # %lor.end.4525
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	-2697(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-2688(%rbp), %rsi       # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -936(%rbp)
	movq	-936(%rbp), %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FAST
# BB#1359:                              # %do.body.4532
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1370
# BB#1360:                              # %if.then.4534
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1362
# BB#1361:                              # %cond.true.4539
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -948(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2704(%rbp)       # 4-byte Spill
	jmp	.LBB9_1369
.LBB9_1362:                             # %cond.false.4542
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1364
# BB#1363:                              # %cond.true.4547
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -948(%rbp)
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
	movl	%esi, -2708(%rbp)       # 4-byte Spill
	jmp	.LBB9_1368
.LBB9_1364:                             # %cond.false.4562
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1366
# BB#1365:                              # %cond.true.4567
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -948(%rbp)
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
	movl	%ecx, -2712(%rbp)       # 4-byte Spill
	jmp	.LBB9_1367
.LBB9_1366:                             # %cond.false.4581
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-948(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -2712(%rbp)       # 4-byte Spill
.LBB9_1367:                             # %cond.end.4583
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2712(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2708(%rbp)       # 4-byte Spill
.LBB9_1368:                             # %cond.end.4585
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2708(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2704(%rbp)       # 4-byte Spill
.LBB9_1369:                             # %cond.end.4587
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2704(%rbp), %eax       # 4-byte Reload
	movl	%eax, -952(%rbp)
	jmp	.LBB9_1376
.LBB9_1370:                             # %if.else.4589
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -952(%rbp)
	movl	$1, -948(%rbp)
	testb	$1, %al
	jne	.LBB9_1371
	jmp	.LBB9_1372
.LBB9_1371:                             # %cond.true.4591
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-952(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1373
	jmp	.LBB9_1374
.LBB9_1372:                             # %cond.false.4595
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-952(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1374
.LBB9_1373:                             # %cond.true.4600
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-952(%rbp), %eax
	movl	%eax, -2716(%rbp)       # 4-byte Spill
	jmp	.LBB9_1375
.LBB9_1374:                             # %cond.false.4601
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-952(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2716(%rbp)       # 4-byte Spill
.LBB9_1375:                             # %cond.end.4603
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2716(%rbp), %eax       # 4-byte Reload
	movl	%eax, -952(%rbp)
.LBB9_1376:                             # %if.end.4605
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1377
.LBB9_1377:                             # %do.end.4607
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, %esi
	movl	-952(%rbp), %edi
	callq	syntax_property
	cmpl	-92(%rbp), %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movsbl	-921(%rbp), %esi
	xorl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB9_1379
# BB#1378:                              # %if.then.4613
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1379:                             # %if.end.4614
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-948(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB9_1426
.LBB9_1380:                             # %sw.bb.4617
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-144(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	24(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	jg	.LBB9_1382
# BB#1381:                              # %cond.true.4630
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2736(%rbp)       # 8-byte Spill
	jmp	.LBB9_1383
.LBB9_1382:                             # %cond.false.4631
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2736(%rbp)       # 8-byte Spill
.LBB9_1383:                             # %cond.end.4633
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2736(%rbp), %rax       # 8-byte Reload
	movq	-2728(%rbp), %rcx       # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	cmpq	%rax, %rcx
	jl	.LBB9_1385
# BB#1384:                              # %if.then.4640
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1385:                             # %if.end.4641
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1386:                             # %sw.bb.4642
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-144(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	24(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -2744(%rbp)       # 8-byte Spill
	jg	.LBB9_1388
# BB#1387:                              # %cond.true.4658
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2752(%rbp)       # 8-byte Spill
	jmp	.LBB9_1389
.LBB9_1388:                             # %cond.false.4659
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2752(%rbp)       # 8-byte Spill
.LBB9_1389:                             # %cond.end.4662
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2752(%rbp), %rax       # 8-byte Reload
	movq	-2744(%rbp), %rcx       # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	cmpq	%rax, %rcx
	je	.LBB9_1391
# BB#1390:                              # %if.then.4670
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1391:                             # %if.end.4671
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1392:                             # %sw.bb.4672
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-144(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	24(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -2760(%rbp)       # 8-byte Spill
	jg	.LBB9_1394
# BB#1393:                              # %cond.true.4688
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2768(%rbp)       # 8-byte Spill
	jmp	.LBB9_1395
.LBB9_1394:                             # %cond.false.4689
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2768(%rbp)       # 8-byte Spill
.LBB9_1395:                             # %cond.end.4692
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-2768(%rbp), %rax       # 8-byte Reload
	movq	-2760(%rbp), %rcx       # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	cmpq	%rax, %rcx
	jg	.LBB9_1397
# BB#1396:                              # %if.then.4700
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1397:                             # %if.end.4701
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1426
.LBB9_1398:                             # %sw.bb.4702
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$34, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -953(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB9_1399:                             # %while.cond.4711
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_1403
# BB#1400:                              # %while.body.4714
                                        #   in Loop: Header=BB9_1399 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_1402
# BB#1401:                              # %if.then.4717
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1402:                             # %if.end.4718
                                        #   in Loop: Header=BB9_1399 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_1399
.LBB9_1403:                             # %while.end.4719
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1404
.LBB9_1404:                             # %do.body.4722
                                        #   in Loop: Header=BB9_88 Depth=1
	cmpb	$0, -186(%rbp)
	je	.LBB9_1415
# BB#1405:                              # %if.then.4724
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1407
# BB#1406:                              # %cond.true.4729
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$1, -960(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -2772(%rbp)       # 4-byte Spill
	jmp	.LBB9_1414
.LBB9_1407:                             # %cond.false.4732
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1409
# BB#1408:                              # %cond.true.4737
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -960(%rbp)
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
	movl	%esi, -2776(%rbp)       # 4-byte Spill
	jmp	.LBB9_1413
.LBB9_1409:                             # %cond.false.4752
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_1411
# BB#1410:                              # %cond.true.4757
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	$3, -960(%rbp)
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
	movl	%ecx, -2780(%rbp)       # 4-byte Spill
	jmp	.LBB9_1412
.LBB9_1411:                             # %cond.false.4771
                                        #   in Loop: Header=BB9_88 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-960(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -2780(%rbp)       # 4-byte Spill
.LBB9_1412:                             # %cond.end.4773
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2780(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2776(%rbp)       # 4-byte Spill
.LBB9_1413:                             # %cond.end.4775
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2776(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2772(%rbp)       # 4-byte Spill
.LBB9_1414:                             # %cond.end.4777
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2772(%rbp), %eax       # 4-byte Reload
	movl	%eax, -964(%rbp)
	jmp	.LBB9_1421
.LBB9_1415:                             # %if.else.4779
                                        #   in Loop: Header=BB9_88 Depth=1
	movb	$1, %al
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -964(%rbp)
	movl	$1, -960(%rbp)
	testb	$1, %al
	jne	.LBB9_1416
	jmp	.LBB9_1417
.LBB9_1416:                             # %cond.true.4781
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-964(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_1418
	jmp	.LBB9_1419
.LBB9_1417:                             # %cond.false.4785
                                        #   in Loop: Header=BB9_88 Depth=1
	movslq	-964(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_1419
.LBB9_1418:                             # %cond.true.4790
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-964(%rbp), %eax
	movl	%eax, -2784(%rbp)       # 4-byte Spill
	jmp	.LBB9_1420
.LBB9_1419:                             # %cond.false.4791
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-964(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2784(%rbp)       # 4-byte Spill
.LBB9_1420:                             # %cond.end.4793
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2784(%rbp), %eax       # 4-byte Reload
	movl	%eax, -964(%rbp)
.LBB9_1421:                             # %if.end.4795
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1422
.LBB9_1422:                             # %do.end.4797
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-964(%rbp), %edi
	movl	-92(%rbp), %esi
	callq	CHAR_HAS_CATEGORY
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movsbl	-953(%rbp), %edi
	xorl	%edi, %esi
	cmpl	$0, %esi
	je	.LBB9_1424
# BB#1423:                              # %if.then.4804
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1427
.LBB9_1424:                             # %if.end.4805
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-960(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB9_1426
.LBB9_1425:                             # %sw.default
	callq	abort
.LBB9_1426:                             # %sw.epilog
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_88
.LBB9_1427:                             # %fail
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_1442 Depth 3
	jmp	.LBB9_1428
.LBB9_1428:                             # %do.body.4808
                                        #   in Loop: Header=BB9_1427 Depth=2
	testb	$1, immediate_quit
	je	.LBB9_1438
# BB#1429:                              # %if.then.4810
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1430
.LBB9_1430:                             # %do.body.4811
                                        #   in Loop: Header=BB9_1427 Depth=2
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -2792(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2792(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_1433
# BB#1431:                              # %land.lhs.true.4815
                                        #   in Loop: Header=BB9_1427 Depth=2
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -2800(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_1433
# BB#1432:                              # %if.then.4819
                                        #   in Loop: Header=BB9_1427 Depth=2
	callq	process_quit_flag
	jmp	.LBB9_1436
.LBB9_1433:                             # %if.else.4820
                                        #   in Loop: Header=BB9_1427 Depth=2
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB9_1435
# BB#1434:                              # %if.then.4822
                                        #   in Loop: Header=BB9_1427 Depth=2
	callq	process_pending_signals
.LBB9_1435:                             # %if.end.4823
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1436
.LBB9_1436:                             # %if.end.4824
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1437
.LBB9_1437:                             # %do.end.4826
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1438
.LBB9_1438:                             # %if.end.4827
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1439
.LBB9_1439:                             # %do.end.4829
                                        #   in Loop: Header=BB9_1427 Depth=2
	cmpq	$0, -200(%rbp)
	je	.LBB9_1493
# BB#1440:                              # %if.then.4833
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1441
.LBB9_1441:                             # %do.body.4834
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1442
.LBB9_1442:                             # %while.cond.4835
                                        #   Parent Loop BB9_88 Depth=1
                                        #     Parent Loop BB9_1427 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jae	.LBB9_1451
# BB#1443:                              # %while.body.4840
                                        #   in Loop: Header=BB9_1442 Depth=3
	jmp	.LBB9_1444
.LBB9_1444:                             # %do.body.4841
                                        #   in Loop: Header=BB9_1442 Depth=3
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -992(%rbp)
	cmpq	$-1, -992(%rbp)
	jne	.LBB9_1448
# BB#1445:                              # %if.then.4849
                                        #   in Loop: Header=BB9_1442 Depth=3
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -1000(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -992(%rbp)
# BB#1446:                              # %do.body.4860
                                        #   in Loop: Header=BB9_1442 Depth=3
	movq	-992(%rbp), %rax
	andq	$255, %rax
	movb	%al, %cl
	movq	-1000(%rbp), %rax
	movb	%cl, (%rax)
	movq	-992(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %cl
	movq	-1000(%rbp), %rax
	movb	%cl, 1(%rax)
# BB#1447:                              # %do.end.4868
                                        #   in Loop: Header=BB9_1442 Depth=3
	jmp	.LBB9_1449
.LBB9_1448:                             # %if.else.4869
                                        #   in Loop: Header=BB9_1442 Depth=3
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	-992(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	-992(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB9_1449:                             # %if.end.4882
                                        #   in Loop: Header=BB9_1442 Depth=3
	jmp	.LBB9_1450
.LBB9_1450:                             # %do.end.4884
                                        #   in Loop: Header=BB9_1442 Depth=3
	jmp	.LBB9_1442
.LBB9_1451:                             # %while.end.4885
                                        #   in Loop: Header=BB9_1427 Depth=2
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -984(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -976(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -208(%rbp)
	movq	-224(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)
# BB#1452:                              # %do.end.4903
                                        #   in Loop: Header=BB9_1427 Depth=2
	movq	-984(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -984(%rbp)
	movzbl	(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -2804(%rbp)       # 4-byte Spill
	je	.LBB9_1487
	jmp	.LBB9_1522
.LBB9_1522:                             # %do.end.4903
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2804(%rbp), %eax       # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -2808(%rbp)       # 4-byte Spill
	je	.LBB9_1485
	jmp	.LBB9_1523
.LBB9_1523:                             # %do.end.4903
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2804(%rbp), %eax       # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -2812(%rbp)       # 4-byte Spill
	je	.LBB9_1453
	jmp	.LBB9_1524
.LBB9_1524:                             # %do.end.4903
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2804(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -2816(%rbp)       # 4-byte Spill
	je	.LBB9_1485
	jmp	.LBB9_1525
.LBB9_1525:                             # %do.end.4903
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2804(%rbp), %eax       # 4-byte Reload
	subl	$17, %eax
	movl	%eax, -2820(%rbp)       # 4-byte Spill
	je	.LBB9_1454
	jmp	.LBB9_1526
.LBB9_1526:                             # %do.end.4903
                                        #   in Loop: Header=BB9_88 Depth=1
	movl	-2804(%rbp), %eax       # 4-byte Reload
	subl	$19, %eax
	movl	%eax, -2824(%rbp)       # 4-byte Spill
	je	.LBB9_1485
	jmp	.LBB9_1488
.LBB9_1453:                             # %sw.bb.4906
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1486
.LBB9_1454:                             # %sw.bb.4907
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1455
.LBB9_1455:                             # %do.body.4908
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1456
.LBB9_1456:                             # %while.cond.4910
                                        #   Parent Loop BB9_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	subq	-208(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_1483
# BB#1457:                              # %while.body.4916
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_1459
# BB#1458:                              # %cond.true.4922
                                        #   in Loop: Header=BB9_1456 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_1482
	jmp	.LBB9_1481
.LBB9_1459:                             # %cond.false.4923
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_1461
# BB#1460:                              # %cond.true.4930
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2832(%rbp)       # 8-byte Spill
	jmp	.LBB9_1462
.LBB9_1461:                             # %cond.false.4932
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2832(%rbp)       # 8-byte Spill
.LBB9_1462:                             # %cond.end.4936
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2832(%rbp), %rax       # 8-byte Reload
	cmpq	-288(%rbp), %rax
	ja	.LBB9_1470
# BB#1463:                              # %cond.true.4940
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_1465
# BB#1464:                              # %cond.true.4947
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2840(%rbp)       # 8-byte Spill
	jmp	.LBB9_1466
.LBB9_1465:                             # %cond.false.4949
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2840(%rbp)       # 8-byte Spill
.LBB9_1466:                             # %cond.end.4953
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2840(%rbp), %rax       # 8-byte Reload
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_1468
# BB#1467:                              # %cond.true.4962
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2848(%rbp)       # 8-byte Spill
	jmp	.LBB9_1469
.LBB9_1468:                             # %cond.false.4964
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2848(%rbp)       # 8-byte Spill
.LBB9_1469:                             # %cond.end.4968
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2848(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -2856(%rbp)       # 8-byte Spill
	jmp	.LBB9_1474
.LBB9_1470:                             # %cond.false.4970
                                        #   in Loop: Header=BB9_1456 Depth=2
	movb	$1, -297(%rbp)
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_1472
# BB#1471:                              # %cond.true.4977
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2864(%rbp)       # 8-byte Spill
	jmp	.LBB9_1473
.LBB9_1472:                             # %cond.false.4979
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2864(%rbp)       # 8-byte Spill
.LBB9_1473:                             # %cond.end.4983
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2864(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -2856(%rbp)       # 8-byte Spill
.LBB9_1474:                             # %cond.end.4986
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2856(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2872(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-2872(%rbp), %rax       # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB9_1476
# BB#1475:                              # %cond.true.4995
                                        #   in Loop: Header=BB9_1456 Depth=2
	xorl	%eax, %eax
	movl	%eax, -2876(%rbp)       # 4-byte Spill
	jmp	.LBB9_1480
.LBB9_1476:                             # %cond.false.4996
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-216(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_1478
# BB#1477:                              # %cond.true.5003
                                        #   in Loop: Header=BB9_1456 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -2888(%rbp)       # 8-byte Spill
	jmp	.LBB9_1479
.LBB9_1478:                             # %cond.false.5005
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-216(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -2888(%rbp)       # 8-byte Spill
.LBB9_1479:                             # %cond.end.5009
                                        #   in Loop: Header=BB9_1456 Depth=2
	movq	-2888(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -216(%rbp)
	movl	%ecx, -2876(%rbp)       # 4-byte Spill
.LBB9_1480:                             # %cond.end.5013
                                        #   in Loop: Header=BB9_1456 Depth=2
	movl	-2876(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_1482
.LBB9_1481:                             # %if.then.5016
	movq	$-2, -24(%rbp)
	jmp	.LBB9_1520
.LBB9_1482:                             # %if.end.5017
                                        #   in Loop: Header=BB9_1456 Depth=2
	jmp	.LBB9_1456
.LBB9_1483:                             # %while.end.5018
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-976(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-984(%rbp), %rax
	addq	$-2, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#1484:                              # %do.end.5039
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1485
.LBB9_1485:                             # %sw.bb.5040
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-976(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB9_1486:                             # %continue_failure_jump
                                        #   in Loop: Header=BB9_88 Depth=1
	leaq	-984(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -92(%rbp)
	movq	-984(%rbp), %rdi
	movslq	-92(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -168(%rbp)
	jmp	.LBB9_1489
.LBB9_1487:                             # %sw.bb.5044
                                        #   in Loop: Header=BB9_1427 Depth=2
	jmp	.LBB9_1427
.LBB9_1488:                             # %sw.default.5045
	callq	abort
.LBB9_1489:                             # %sw.epilog.5046
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB9_1492
# BB#1490:                              # %land.lhs.true.5049
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	ja	.LBB9_1492
# BB#1491:                              # %if.then.5052
                                        #   in Loop: Header=BB9_88 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB9_1492:                             # %if.end.5053
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_1494
.LBB9_1493:                             # %if.else.5054
	jmp	.LBB9_1495
.LBB9_1494:                             # %if.end.5055
                                        #   in Loop: Header=BB9_88 Depth=1
	jmp	.LBB9_88
.LBB9_1495:                             # %for.end.5056
	cmpl	$0, -252(%rbp)
	je	.LBB9_1497
# BB#1496:                              # %if.then.5058
	jmp	.LBB9_114
.LBB9_1497:                             # %if.end.5059
	jmp	.LBB9_1498
.LBB9_1498:                             # %do.body.5060
	jmp	.LBB9_1499
.LBB9_1499:                             # %do.body.5061
	cmpq	$0, -240(%rbp)
	je	.LBB9_1501
# BB#1500:                              # %if.then.5063
	movq	$0, -240(%rbp)
.LBB9_1501:                             # %if.end.5064
	jmp	.LBB9_1502
.LBB9_1502:                             # %do.end.5066
	jmp	.LBB9_1503
.LBB9_1503:                             # %do.body.5067
	cmpq	$0, -248(%rbp)
	je	.LBB9_1505
# BB#1504:                              # %if.then.5069
	movq	$0, -248(%rbp)
.LBB9_1505:                             # %if.end.5070
	jmp	.LBB9_1506
.LBB9_1506:                             # %do.end.5072
	jmp	.LBB9_1507
.LBB9_1507:                             # %do.body.5073
	cmpq	$0, -264(%rbp)
	je	.LBB9_1509
# BB#1508:                              # %if.then.5075
	movq	$0, -264(%rbp)
.LBB9_1509:                             # %if.end.5076
	jmp	.LBB9_1510
.LBB9_1510:                             # %do.end.5078
	jmp	.LBB9_1511
.LBB9_1511:                             # %do.body.5079
	cmpq	$0, -272(%rbp)
	je	.LBB9_1513
# BB#1512:                              # %if.then.5081
	movq	$0, -272(%rbp)
.LBB9_1513:                             # %if.end.5082
	jmp	.LBB9_1514
.LBB9_1514:                             # %do.end.5084
	jmp	.LBB9_1515
.LBB9_1515:                             # %do.body.5085
	testb	$1, -297(%rbp)
	je	.LBB9_1517
# BB#1516:                              # %if.then.5087
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -2904(%rbp)       # 8-byte Spill
.LBB9_1517:                             # %if.end.5090
	jmp	.LBB9_1518
.LBB9_1518:                             # %do.end.5092
	jmp	.LBB9_1519
.LBB9_1519:                             # %do.end.5094
	movq	$-1, -24(%rbp)
.LBB9_1520:                             # %return
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	re_match_2_internal, .Lfunc_end9-re_match_2_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_251
	.quad	.LBB9_252
	.quad	.LBB9_253
	.quad	.LBB9_347
	.quad	.LBB9_373
	.quad	.LBB9_373
	.quad	.LBB9_539
	.quad	.LBB9_570
	.quad	.LBB9_571
	.quad	.LBB9_606
	.quad	.LBB9_652
	.quad	.LBB9_662
	.quad	.LBB9_669
	.quad	.LBB9_830
	.quad	.LBB9_793
	.quad	.LBB9_672
	.quad	.LBB9_747
	.quad	.LBB9_703
	.quad	.LBB9_824
	.quad	.LBB9_844
	.quad	.LBB9_880
	.quad	.LBB9_916
	.quad	.LBB9_1032
	.quad	.LBB9_1118
	.quad	.LBB9_949
	.quad	.LBB9_949
	.quad	.LBB9_1201
	.quad	.LBB9_1275
	.quad	.LBB9_1346
	.quad	.LBB9_1346
	.quad	.LBB9_1380
	.quad	.LBB9_1386
	.quad	.LBB9_1392
	.quad	.LBB9_1398
	.quad	.LBB9_1398

	.text
	.globl	re_match_2
	.align	16, 0x90
	.type	re_match_2,@function
re_match_2:                             # @re_match_2
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp39:
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	xorl	%r11d, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	re_match_object, %rax
	movq	%rax, gl_state
	movq	-56(%rbp), %rax
	movq	re_match_object, %rcx
	movl	%r11d, %edi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %bl
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%bl, -105(%rbp)         # 1-byte Spill
	je	.LBB10_2
# BB#1:                                 # %lor.rhs
	movq	re_match_object, %rdi
	callq	BUFFERP
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB10_2:                               # %lor.end
	movb	-105(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	callq	SYNTAX_TABLE_BYTE_TO_CHAR
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)
	movq	re_match_object, %rdi
	movq	-88(%rbp), %rsi
	callq	SETUP_SYNTAX_TABLE_FOR_OBJECT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2_internal
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	re_match_2, .Lfunc_end10-re_match_2
	.cfi_endproc

	.globl	re_compile_pattern
	.align	16, 0x90
	.type	re_compile_pattern,@function
re_compile_pattern:                     # @re_compile_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movw	56(%rdx), %ax
	andw	$-7, %ax
	movw	%ax, 56(%rdx)
	movq	-32(%rbp), %rdx
	movw	56(%rdx), %ax
	andw	$-17, %ax
	movw	%ax, 56(%rdx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	re_syntax_options, %rdx
	movq	-32(%rbp), %rcx
	callq	regex_compile
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movslq	-36(%rbp), %rax
	movq	re_error_msgid(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB11_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	re_compile_pattern, .Lfunc_end11-re_compile_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	regex_compile,@function
regex_compile:                          # @regex_compile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$1968, %rsp             # imm = 0x7B0
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -144(%rbp)
	movq	-40(%rbp), %rcx
	movw	56(%rcx), %r9w
	shrw	$8, %r9w
	andw	$1, %r9w
	movzwl	%r9w, %eax
	movb	%al, %r10b
	movb	%r10b, -169(%rbp)
	movl	$0, -176(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_2:                               # %if.end
	movq	$32, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movw	56(%rax), %dx
	andw	$-9, %dx
	movw	%dx, 56(%rax)
	movq	-40(%rbp), %rax
	movw	56(%rax), %dx
	andw	$-65, %dx
	movw	%dx, 56(%rax)
	movq	-40(%rbp), %rax
	movw	56(%rax), %dx
	andw	$-33, %dx
	movw	%dx, 56(%rax)
	movq	-40(%rbp), %rax
	movw	56(%rax), %dx
	andw	$-129, %dx
	movw	%dx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB12_14
# BB#3:                                 # %if.then.18
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_5
# BB#4:                                 # %if.then.19
	movl	$32, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	xrealloc
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movl	$32, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB12_6:                               # %if.end.25
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_13
# BB#7:                                 # %if.then.28
	jmp	.LBB12_8
.LBB12_8:                               # %do.body
	jmp	.LBB12_9
.LBB12_9:                               # %do.body.29
	cmpq	$0, -168(%rbp)
	je	.LBB12_11
# BB#10:                                # %if.then.32
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_11:                              # %if.end.34
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_13:                              # %if.end.37
	movq	-40(%rbp), %rax
	movq	$32, 8(%rax)
.LBB12_14:                              # %if.end.39
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -128(%rbp)
.LBB12_15:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_58 Depth 2
                                        #     Child Loop BB12_1126 Depth 2
                                        #     Child Loop BB12_1190 Depth 2
                                        #     Child Loop BB12_1300 Depth 2
                                        #     Child Loop BB12_1510 Depth 2
                                        #     Child Loop BB12_1372 Depth 2
                                        #     Child Loop BB12_1448 Depth 2
                                        #     Child Loop BB12_1678 Depth 2
                                        #     Child Loop BB12_1726 Depth 2
                                        #     Child Loop BB12_1623 Depth 2
                                        #     Child Loop BB12_1646 Depth 2
                                        #     Child Loop BB12_1534 Depth 2
                                        #     Child Loop BB12_1410 Depth 2
                                        #     Child Loop BB12_1486 Depth 2
                                        #     Child Loop BB12_1702 Depth 2
                                        #     Child Loop BB12_1582 Depth 2
                                        #     Child Loop BB12_1334 Depth 2
                                        #     Child Loop BB12_1558 Depth 2
                                        #     Child Loop BB12_1783 Depth 2
                                        #     Child Loop BB12_1750 Depth 2
                                        #     Child Loop BB12_346 Depth 2
                                        #     Child Loop BB12_366 Depth 2
                                        #     Child Loop BB12_389 Depth 2
                                        #     Child Loop BB12_412 Depth 2
                                        #       Child Loop BB12_493 Depth 3
                                        #       Child Loop BB12_550 Depth 3
                                        #       Child Loop BB12_644 Depth 3
                                        #       Child Loop BB12_685 Depth 3
                                        #       Child Loop BB12_700 Depth 3
                                        #         Child Loop BB12_728 Depth 4
                                        #       Child Loop BB12_755 Depth 3
                                        #         Child Loop BB12_778 Depth 4
                                        #     Child Loop BB12_809 Depth 2
                                        #     Child Loop BB12_816 Depth 2
                                        #     Child Loop BB12_839 Depth 2
                                        #     Child Loop BB12_318 Depth 2
                                        #     Child Loop BB12_125 Depth 2
                                        #     Child Loop BB12_198 Depth 2
                                        #     Child Loop BB12_217 Depth 2
                                        #     Child Loop BB12_221 Depth 2
                                        #     Child Loop BB12_247 Depth 2
                                        #     Child Loop BB12_268 Depth 2
                                        #     Child Loop BB12_290 Depth 2
                                        #     Child Loop BB12_1027 Depth 2
                                        #     Child Loop BB12_909 Depth 2
                                        #     Child Loop BB12_974 Depth 2
                                        #     Child Loop BB12_85 Depth 2
                                        #     Child Loop BB12_40 Depth 2
                                        #     Child Loop BB12_1055 Depth 2
                                        #     Child Loop BB12_1078 Depth 2
                                        #     Child Loop BB12_1833 Depth 2
                                        #     Child Loop BB12_1854 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_19
# BB#16:                                # %if.then.43
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -176(%rbp)
	je	.LBB12_18
# BB#17:                                # %if.then.45
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -176(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB12_15
.LBB12_18:                              # %if.end.46
	jmp	.LBB12_1916
.LBB12_19:                              # %if.end.47
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_20
.LBB12_20:                              # %do.body.48
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_22
# BB#21:                                # %if.then.51
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_22:                              # %if.end.52
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_33
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_25
# BB#24:                                # %cond.true.57
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -204(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB12_32
.LBB12_25:                              # %cond.false
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_27
# BB#26:                                # %cond.true.64
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -204(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB12_31
.LBB12_27:                              # %cond.false.75
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_29
# BB#28:                                # %cond.true.80
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -204(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB12_30
.LBB12_29:                              # %cond.false.94
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-204(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1140(%rbp)       # 4-byte Spill
.LBB12_30:                              # %cond.end
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1140(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1136(%rbp)       # 4-byte Spill
.LBB12_31:                              # %cond.end.97
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1136(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1132(%rbp)       # 4-byte Spill
.LBB12_32:                              # %cond.end.99
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB12_34
.LBB12_33:                              # %cond.false.101
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -204(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1144(%rbp)       # 4-byte Spill
.LBB12_34:                              # %cond.end.103
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1144(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-204(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#35:                                # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	movl	%ecx, -1152(%rbp)       # 4-byte Spill
	je	.LBB12_852
	jmp	.LBB12_1957
.LBB12_1957:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	je	.LBB12_36
	jmp	.LBB12_1958
.LBB12_1958:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	je	.LBB12_80
	jmp	.LBB12_1959
.LBB12_1959:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	je	.LBB12_846
	jmp	.LBB12_1960
.LBB12_1960:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	je	.LBB12_849
	jmp	.LBB12_1961
.LBB12_1961:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	je	.LBB12_112
	jmp	.LBB12_1962
.LBB12_1962:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	je	.LBB12_107
	jmp	.LBB12_1963
.LBB12_1963:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	je	.LBB12_316
	jmp	.LBB12_1964
.LBB12_1964:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -1184(%rbp)       # 4-byte Spill
	je	.LBB12_107
	jmp	.LBB12_1965
.LBB12_1965:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	je	.LBB12_338
	jmp	.LBB12_1966
.LBB12_1966:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -1192(%rbp)       # 4-byte Spill
	je	.LBB12_862
	jmp	.LBB12_1967
.LBB12_1967:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	je	.LBB12_53
	jmp	.LBB12_1968
.LBB12_1968:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	je	.LBB12_858
	jmp	.LBB12_1969
.LBB12_1969:                            # %do.end.106
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	je	.LBB12_855
	jmp	.LBB12_1809
.LBB12_36:                              # %sw.bb
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, whitespace_regexp
	je	.LBB12_38
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -176(%rbp)
	je	.LBB12_39
.LBB12_38:                              # %if.then.109
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_39:                              # %if.end.110
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_40
.LBB12_40:                              # %while.cond.111
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_44
# BB#41:                                # %while.body.114
                                        #   in Loop: Header=BB12_40 Depth=2
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB12_43
# BB#42:                                # %if.then.118
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_44
.LBB12_43:                              # %if.end.119
                                        #   in Loop: Header=BB12_40 Depth=2
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB12_40
.LBB12_44:                              # %while.end
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_52
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB12_51
# BB#46:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_51
# BB#47:                                # %lor.lhs.false.129
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB12_51
# BB#48:                                # %lor.lhs.false.133
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB12_52
# BB#49:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_52
# BB#50:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB12_52
.LBB12_51:                              # %if.then.146
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_52:                              # %if.end.147
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -176(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	whitespace_regexp, %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -96(%rbp)
	jmp	.LBB12_1915
.LBB12_53:                              # %sw.bb.150
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB12_56
# BB#54:                                # %lor.lhs.false.154
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB12_56
# BB#55:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_begline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB12_78
.LBB12_56:                              # %if.then.161
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_57
.LBB12_57:                              # %do.body.162
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_58
.LBB12_58:                              # %while.cond.163
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_76
# BB#59:                                # %while.body.169
                                        #   in Loop: Header=BB12_58 Depth=2
	jmp	.LBB12_60
.LBB12_60:                              # %do.body.170
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_62
# BB#61:                                # %if.then.175
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_62:                              # %if.end.176
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_64
# BB#63:                                # %if.then.182
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_64:                              # %if.end.184
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_66
# BB#65:                                # %if.then.192
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_66:                              # %if.end.193
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-224(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_74
# BB#67:                                # %if.then.197
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_69
# BB#68:                                # %if.then.208
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-232(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_69:                              # %if.end.213
                                        #   in Loop: Header=BB12_58 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_71
# BB#70:                                # %if.then.215
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-232(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_71:                              # %if.end.220
                                        #   in Loop: Header=BB12_58 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_73
# BB#72:                                # %if.then.222
                                        #   in Loop: Header=BB12_58 Depth=2
	movq	-232(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_73:                              # %if.end.227
                                        #   in Loop: Header=BB12_58 Depth=2
	jmp	.LBB12_74
.LBB12_74:                              # %if.end.228
                                        #   in Loop: Header=BB12_58 Depth=2
	jmp	.LBB12_75
.LBB12_75:                              # %do.end.229
                                        #   in Loop: Header=BB12_58 Depth=2
	jmp	.LBB12_58
.LBB12_76:                              # %while.end.230
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$9, %eax
	movl	$11, %ecx
	movq	-32(%rbp), %rdx
	andq	$4194304, %rdx          # imm = 0x400000
	cmpq	$0, %rdx
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
# BB#77:                                # %do.end.236
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_79
.LBB12_78:                              # %if.else.237
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_79:                              # %if.end.238
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_80:                              # %sw.bb.239
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_83
# BB#81:                                # %lor.lhs.false.242
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB12_83
# BB#82:                                # %lor.lhs.false.245
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_endline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB12_105
.LBB12_83:                              # %if.then.249
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_84
.LBB12_84:                              # %do.body.250
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_85
.LBB12_85:                              # %while.cond.251
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_103
# BB#86:                                # %while.body.260
                                        #   in Loop: Header=BB12_85 Depth=2
	jmp	.LBB12_87
.LBB12_87:                              # %do.body.261
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_89
# BB#88:                                # %if.then.267
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_89:                              # %if.end.268
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_91
# BB#90:                                # %if.then.274
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_91:                              # %if.end.276
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_93
# BB#92:                                # %if.then.285
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_93:                              # %if.end.286
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-240(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_101
# BB#94:                                # %if.then.290
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-248(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_96
# BB#95:                                # %if.then.302
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-248(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_96:                              # %if.end.307
                                        #   in Loop: Header=BB12_85 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_98
# BB#97:                                # %if.then.309
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-248(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_98:                              # %if.end.314
                                        #   in Loop: Header=BB12_85 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_100
# BB#99:                                # %if.then.316
                                        #   in Loop: Header=BB12_85 Depth=2
	movq	-248(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_100:                             # %if.end.321
                                        #   in Loop: Header=BB12_85 Depth=2
	jmp	.LBB12_101
.LBB12_101:                             # %if.end.322
                                        #   in Loop: Header=BB12_85 Depth=2
	jmp	.LBB12_102
.LBB12_102:                             # %do.end.323
                                        #   in Loop: Header=BB12_85 Depth=2
	jmp	.LBB12_85
.LBB12_103:                             # %while.end.324
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$10, %eax
	movl	$12, %ecx
	movq	-32(%rbp), %rdx
	andq	$4194304, %rdx          # imm = 0x400000
	cmpq	$0, %rdx
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
# BB#104:                               # %do.end.330
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_106
.LBB12_105:                             # %if.else.331
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_106:                             # %if.end.332
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_107:                             # %sw.bb.333
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB12_109
# BB#108:                               # %lor.lhs.false.336
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB12_110
.LBB12_109:                             # %if.then.339
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_110:                             # %if.end.340
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_111
.LBB12_111:                             # %handle_plus
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_112
.LBB12_112:                             # %sw.bb.341
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB12_124
# BB#113:                               # %if.then.343
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB12_120
# BB#114:                               # %if.then.346
	jmp	.LBB12_115
.LBB12_115:                             # %do.body.347
	jmp	.LBB12_116
.LBB12_116:                             # %do.body.348
	cmpq	$0, -168(%rbp)
	je	.LBB12_118
# BB#117:                               # %if.then.351
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_118:                             # %if.end.353
	jmp	.LBB12_119
.LBB12_119:                             # %do.end.354
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$13, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_120:                             # %if.else.357
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	jne	.LBB12_122
# BB#121:                               # %if.then.360
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_122:                             # %if.end.361
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_123
.LBB12_123:                             # %if.end.362
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_124
.LBB12_124:                             # %if.end.363
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$0, -249(%rbp)
	movb	$0, -250(%rbp)
	movb	$1, -251(%rbp)
.LBB12_125:                             # %for.cond
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	andq	$1048576, %rax          # imm = 0x100000
	cmpq	$0, %rax
	je	.LBB12_130
# BB#126:                               # %land.lhs.true.366
                                        #   in Loop: Header=BB12_125 Depth=2
	cmpl	$63, -44(%rbp)
	jne	.LBB12_130
# BB#127:                               # %land.lhs.true.369
                                        #   in Loop: Header=BB12_125 Depth=2
	movsbl	-249(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB12_129
# BB#128:                               # %lor.lhs.false.372
                                        #   in Loop: Header=BB12_125 Depth=2
	movsbl	-250(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_130
.LBB12_129:                             # %if.then.375
                                        #   in Loop: Header=BB12_125 Depth=2
	movb	$0, -251(%rbp)
	jmp	.LBB12_131
.LBB12_130:                             # %if.else.376
                                        #   in Loop: Header=BB12_125 Depth=2
	cmpl	$43, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbl	-249(%rbp), %edx
	orl	%ecx, %edx
	movb	%dl, %al
	movb	%al, -249(%rbp)
	cmpl	$63, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbl	-250(%rbp), %edx
	orl	%ecx, %edx
	movb	%dl, %al
	movb	%al, -250(%rbp)
.LBB12_131:                             # %if.end.387
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_133
# BB#132:                               # %if.then.390
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_188
.LBB12_133:                             # %if.else.391
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB12_137
# BB#134:                               # %lor.lhs.false.395
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB12_138
# BB#135:                               # %land.lhs.true.398
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_137
# BB#136:                               # %lor.lhs.false.402
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB12_138
.LBB12_137:                             # %if.then.406
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_170
.LBB12_138:                             # %if.else.407
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB12_168
# BB#139:                               # %land.lhs.true.410
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB12_168
# BB#140:                               # %if.then.414
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_147
# BB#141:                               # %if.then.418
	jmp	.LBB12_142
.LBB12_142:                             # %do.body.419
	jmp	.LBB12_143
.LBB12_143:                             # %do.body.420
	cmpq	$0, -168(%rbp)
	je	.LBB12_145
# BB#144:                               # %if.then.423
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_145:                             # %if.end.425
	jmp	.LBB12_146
.LBB12_146:                             # %do.end.426
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$5, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_147:                             # %if.end.429
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_149
# BB#148:                               # %lor.lhs.false.434
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB12_166
.LBB12_149:                             # %if.then.439
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_150
.LBB12_150:                             # %do.body.440
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_152
# BB#151:                               # %if.then.444
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_152:                             # %if.end.445
                                        #   in Loop: Header=BB12_125 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_163
# BB#153:                               # %cond.true.448
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_155
# BB#154:                               # %cond.true.453
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$1, -256(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB12_162
.LBB12_155:                             # %cond.false.456
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_157
# BB#156:                               # %cond.true.461
                                        #   in Loop: Header=BB12_125 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -256(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1224(%rbp)       # 4-byte Spill
	jmp	.LBB12_161
.LBB12_157:                             # %cond.false.476
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_159
# BB#158:                               # %cond.true.481
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$3, -256(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB12_160
.LBB12_159:                             # %cond.false.495
                                        #   in Loop: Header=BB12_125 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-256(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1228(%rbp)       # 4-byte Spill
.LBB12_160:                             # %cond.end.497
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1224(%rbp)       # 4-byte Spill
.LBB12_161:                             # %cond.end.499
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1224(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1220(%rbp)       # 4-byte Spill
.LBB12_162:                             # %cond.end.501
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	jmp	.LBB12_164
.LBB12_163:                             # %cond.false.503
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$1, -256(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1232(%rbp)       # 4-byte Spill
.LBB12_164:                             # %cond.end.505
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1232(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-256(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#165:                               # %do.end.509
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_167
.LBB12_166:                             # %if.else.510
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_188
.LBB12_167:                             # %if.end.511
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_169
.LBB12_168:                             # %if.else.512
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_188
.LBB12_169:                             # %if.end.513
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_170
.LBB12_170:                             # %if.end.514
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_171
.LBB12_171:                             # %if.end.515
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_172
.LBB12_172:                             # %do.body.516
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_174
# BB#173:                               # %if.then.520
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_174:                             # %if.end.521
                                        #   in Loop: Header=BB12_125 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_185
# BB#175:                               # %cond.true.524
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_177
# BB#176:                               # %cond.true.529
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$1, -260(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
	jmp	.LBB12_184
.LBB12_177:                             # %cond.false.532
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_179
# BB#178:                               # %cond.true.537
                                        #   in Loop: Header=BB12_125 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -260(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1240(%rbp)       # 4-byte Spill
	jmp	.LBB12_183
.LBB12_179:                             # %cond.false.552
                                        #   in Loop: Header=BB12_125 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_181
# BB#180:                               # %cond.true.557
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$3, -260(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1244(%rbp)       # 4-byte Spill
	jmp	.LBB12_182
.LBB12_181:                             # %cond.false.571
                                        #   in Loop: Header=BB12_125 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-260(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1244(%rbp)       # 4-byte Spill
.LBB12_182:                             # %cond.end.573
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1244(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1240(%rbp)       # 4-byte Spill
.LBB12_183:                             # %cond.end.575
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1240(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1236(%rbp)       # 4-byte Spill
.LBB12_184:                             # %cond.end.577
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1236(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1248(%rbp)       # 4-byte Spill
	jmp	.LBB12_186
.LBB12_185:                             # %cond.false.579
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	$1, -260(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1248(%rbp)       # 4-byte Spill
.LBB12_186:                             # %cond.end.581
                                        #   in Loop: Header=BB12_125 Depth=2
	movl	-1248(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-260(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#187:                               # %do.end.585
                                        #   in Loop: Header=BB12_125 Depth=2
	jmp	.LBB12_125
.LBB12_188:                             # %for.end
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB12_190
# BB#189:                               # %lor.lhs.false.587
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_191
.LBB12_190:                             # %if.then.590
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_191:                             # %if.end.591
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpb	$0, -251(%rbp)
	je	.LBB12_267
# BB#192:                               # %if.then.593
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpb	$0, -250(%rbp)
	je	.LBB12_246
# BB#193:                               # %if.then.595
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-120(%rbp), %rdi
	callq	skip_one_char
	movb	$1, %cl
	cmpq	-56(%rbp), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movb	%sil, %dl
	movb	%dl, -261(%rbp)
	movq	$0, -272(%rbp)
	movsbl	-261(%rbp), %esi
	cmpl	$0, %esi
	movb	%cl, -1249(%rbp)        # 1-byte Spill
	jne	.LBB12_195
# BB#194:                               # %lor.rhs
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	analyze_first
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	movb	%r8b, -1249(%rbp)       # 1-byte Spill
.LBB12_195:                             # %lor.end
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	-1249(%rbp), %al        # 1-byte Reload
	movl	$16, %ecx
	movl	$14, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -276(%rbp)
	cmpb	$0, -249(%rbp)
	jne	.LBB12_220
# BB#196:                               # %land.lhs.true.606
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-261(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_220
# BB#197:                               # %if.then.609
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -272(%rbp)
.LBB12_198:                             # %while.cond.614
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	-272(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_216
# BB#199:                               # %while.body.623
                                        #   in Loop: Header=BB12_198 Depth=2
	jmp	.LBB12_200
.LBB12_200:                             # %do.body.624
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_202
# BB#201:                               # %if.then.630
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_202:                             # %if.end.631
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_204
# BB#203:                               # %if.then.637
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_204:                             # %if.end.639
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_206
# BB#205:                               # %if.then.648
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_206:                             # %if.end.649
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-304(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_214
# BB#207:                               # %if.then.653
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-312(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_209
# BB#208:                               # %if.then.665
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-312(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_209:                             # %if.end.670
                                        #   in Loop: Header=BB12_198 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_211
# BB#210:                               # %if.then.672
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-312(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_211:                             # %if.end.677
                                        #   in Loop: Header=BB12_198 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_213
# BB#212:                               # %if.then.679
                                        #   in Loop: Header=BB12_198 Depth=2
	movq	-312(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_213:                             # %if.end.684
                                        #   in Loop: Header=BB12_198 Depth=2
	jmp	.LBB12_214
.LBB12_214:                             # %if.end.685
                                        #   in Loop: Header=BB12_198 Depth=2
	jmp	.LBB12_215
.LBB12_215:                             # %do.end.686
                                        #   in Loop: Header=BB12_198 Depth=2
	jmp	.LBB12_198
.LBB12_216:                             # %while.end.687
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)
.LBB12_217:                             # %while.cond.688
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-296(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jae	.LBB12_219
# BB#218:                               # %while.body.691
                                        #   in Loop: Header=BB12_217 Depth=2
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB12_217
.LBB12_219:                             # %while.end.694
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$1, -249(%rbp)
.LBB12_220:                             # %if.end.695
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_221
.LBB12_221:                             # %while.cond.696
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$6, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_239
# BB#222:                               # %while.body.705
                                        #   in Loop: Header=BB12_221 Depth=2
	jmp	.LBB12_223
.LBB12_223:                             # %do.body.706
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_225
# BB#224:                               # %if.then.712
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_225:                             # %if.end.713
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_227
# BB#226:                               # %if.then.719
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_227:                             # %if.end.721
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_229
# BB#228:                               # %if.then.730
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_229:                             # %if.end.731
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-320(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_237
# BB#230:                               # %if.then.735
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-328(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_232
# BB#231:                               # %if.then.747
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-328(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_232:                             # %if.end.752
                                        #   in Loop: Header=BB12_221 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_234
# BB#233:                               # %if.then.754
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-328(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_234:                             # %if.end.759
                                        #   in Loop: Header=BB12_221 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_236
# BB#235:                               # %if.then.761
                                        #   in Loop: Header=BB12_221 Depth=2
	movq	-328(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_236:                             # %if.end.766
                                        #   in Loop: Header=BB12_221 Depth=2
	jmp	.LBB12_237
.LBB12_237:                             # %if.end.767
                                        #   in Loop: Header=BB12_221 Depth=2
	jmp	.LBB12_238
.LBB12_238:                             # %do.end.768
                                        #   in Loop: Header=BB12_221 Depth=2
	jmp	.LBB12_221
.LBB12_239:                             # %while.end.769
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpb	$0, -249(%rbp)
	jne	.LBB12_241
# BB#240:                               # %if.then.771
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-276(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
	jmp	.LBB12_245
.LBB12_241:                             # %if.else.777
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-261(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_243
# BB#242:                               # %cond.true.780
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$18, %eax
	movl	%eax, -1256(%rbp)       # 4-byte Spill
	jmp	.LBB12_244
.LBB12_243:                             # %cond.false.781
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -1256(%rbp)       # 4-byte Spill
.LBB12_244:                             # %cond.end.782
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	movq	-120(%rbp), %rcx
	addq	-272(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$6, %rdx
	movq	-120(%rbp), %rsi
	addq	-272(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$3, %rdx
	movl	%edx, %edi
	movq	-56(%rbp), %rdx
	movl	%edi, -1260(%rbp)       # 4-byte Spill
	movl	%eax, %edi
	movq	%rcx, %rsi
	movl	-1260(%rbp), %eax       # 4-byte Reload
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	movl	%eax, %edx
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	callq	insert_op1
.LBB12_245:                             # %if.end.792
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	-272(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_266
.LBB12_246:                             # %if.else.801
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_247
.LBB12_247:                             # %while.cond.802
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_265
# BB#248:                               # %while.body.811
                                        #   in Loop: Header=BB12_247 Depth=2
	jmp	.LBB12_249
.LBB12_249:                             # %do.body.812
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_251
# BB#250:                               # %if.then.818
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_251:                             # %if.end.819
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_253
# BB#252:                               # %if.then.825
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_253:                             # %if.end.827
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_255
# BB#254:                               # %if.then.836
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_255:                             # %if.end.837
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-336(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_263
# BB#256:                               # %if.then.841
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-344(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_258
# BB#257:                               # %if.then.853
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-344(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_258:                             # %if.end.858
                                        #   in Loop: Header=BB12_247 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_260
# BB#259:                               # %if.then.860
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-344(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_260:                             # %if.end.865
                                        #   in Loop: Header=BB12_247 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_262
# BB#261:                               # %if.then.867
                                        #   in Loop: Header=BB12_247 Depth=2
	movq	-344(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_262:                             # %if.end.872
                                        #   in Loop: Header=BB12_247 Depth=2
	jmp	.LBB12_263
.LBB12_263:                             # %if.end.873
                                        #   in Loop: Header=BB12_247 Depth=2
	jmp	.LBB12_264
.LBB12_264:                             # %do.end.874
                                        #   in Loop: Header=BB12_247 Depth=2
	jmp	.LBB12_247
.LBB12_265:                             # %while.end.875
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$14, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB12_266:                             # %if.end.883
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_315
.LBB12_267:                             # %if.else.884
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_268
.LBB12_268:                             # %while.cond.885
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$7, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_286
# BB#269:                               # %while.body.894
                                        #   in Loop: Header=BB12_268 Depth=2
	jmp	.LBB12_270
.LBB12_270:                             # %do.body.895
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_272
# BB#271:                               # %if.then.901
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_272:                             # %if.end.902
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_274
# BB#273:                               # %if.then.908
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_274:                             # %if.end.910
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_276
# BB#275:                               # %if.then.919
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_276:                             # %if.end.920
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-352(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_284
# BB#277:                               # %if.then.924
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-360(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_279
# BB#278:                               # %if.then.936
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-360(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_279:                             # %if.end.941
                                        #   in Loop: Header=BB12_268 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_281
# BB#280:                               # %if.then.943
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-360(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_281:                             # %if.end.948
                                        #   in Loop: Header=BB12_268 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_283
# BB#282:                               # %if.then.950
                                        #   in Loop: Header=BB12_268 Depth=2
	movq	-360(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_283:                             # %if.end.955
                                        #   in Loop: Header=BB12_268 Depth=2
	jmp	.LBB12_284
.LBB12_284:                             # %if.end.956
                                        #   in Loop: Header=BB12_268 Depth=2
	jmp	.LBB12_285
.LBB12_285:                             # %do.end.957
                                        #   in Loop: Header=BB12_268 Depth=2
	jmp	.LBB12_268
.LBB12_286:                             # %while.end.958
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpb	$0, -250(%rbp)
	je	.LBB12_313
# BB#287:                               # %if.then.960
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	analyze_first
	movb	%al, %r8b
	movb	%r8b, -361(%rbp)
	cmpb	$0, -361(%rbp)
	je	.LBB12_310
# BB#288:                               # %if.then.964
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_289
.LBB12_289:                             # %do.body.965
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_290
.LBB12_290:                             # %while.cond.966
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_308
# BB#291:                               # %while.body.975
                                        #   in Loop: Header=BB12_290 Depth=2
	jmp	.LBB12_292
.LBB12_292:                             # %do.body.976
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_294
# BB#293:                               # %if.then.982
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_294:                             # %if.end.983
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_296
# BB#295:                               # %if.then.989
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_296:                             # %if.end.991
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_298
# BB#297:                               # %if.then.1000
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_298:                             # %if.end.1001
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-376(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_306
# BB#299:                               # %if.then.1005
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-384(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_301
# BB#300:                               # %if.then.1017
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-384(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_301:                             # %if.end.1022
                                        #   in Loop: Header=BB12_290 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_303
# BB#302:                               # %if.then.1024
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-384(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_303:                             # %if.end.1029
                                        #   in Loop: Header=BB12_290 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_305
# BB#304:                               # %if.then.1031
                                        #   in Loop: Header=BB12_290 Depth=2
	movq	-384(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_305:                             # %if.end.1036
                                        #   in Loop: Header=BB12_290 Depth=2
	jmp	.LBB12_306
.LBB12_306:                             # %if.end.1037
                                        #   in Loop: Header=BB12_290 Depth=2
	jmp	.LBB12_307
.LBB12_307:                             # %do.end.1038
                                        #   in Loop: Header=BB12_290 Depth=2
	jmp	.LBB12_290
.LBB12_308:                             # %while.end.1039
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
# BB#309:                               # %do.end.1041
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_310
.LBB12_310:                             # %if.end.1042
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$14, %eax
	movl	$17, %ecx
	movsbl	-361(%rbp), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %r8
	subq	%r8, %rdi
	subq	$3, %rdi
	movl	%edi, %ecx
	movl	%eax, %edi
	movl	%ecx, %edx
	callq	store_op1
	movq	-56(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -56(%rbp)
	cmpb	$0, -249(%rbp)
	je	.LBB12_312
# BB#311:                               # %if.then.1053
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB12_312:                             # %if.end.1060
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_314
.LBB12_313:                             # %if.else.1061
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movl	$14, %edi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB12_314:                             # %if.end.1076
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_315
.LBB12_315:                             # %if.end.1077
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	$0, -112(%rbp)
	jmp	.LBB12_1915
.LBB12_316:                             # %sw.bb.1078
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#317:                               # %do.body.1079
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_318
.LBB12_318:                             # %while.cond.1080
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_336
# BB#319:                               # %while.body.1089
                                        #   in Loop: Header=BB12_318 Depth=2
	jmp	.LBB12_320
.LBB12_320:                             # %do.body.1090
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_322
# BB#321:                               # %if.then.1096
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_322:                             # %if.end.1097
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_324
# BB#323:                               # %if.then.1103
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_324:                             # %if.end.1105
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_326
# BB#325:                               # %if.then.1114
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_326:                             # %if.end.1115
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-392(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_334
# BB#327:                               # %if.then.1119
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-400(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_329
# BB#328:                               # %if.then.1131
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-400(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_329:                             # %if.end.1136
                                        #   in Loop: Header=BB12_318 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_331
# BB#330:                               # %if.then.1138
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-400(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_331:                             # %if.end.1143
                                        #   in Loop: Header=BB12_318 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_333
# BB#332:                               # %if.then.1145
                                        #   in Loop: Header=BB12_318 Depth=2
	movq	-400(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_333:                             # %if.end.1150
                                        #   in Loop: Header=BB12_318 Depth=2
	jmp	.LBB12_334
.LBB12_334:                             # %if.end.1151
                                        #   in Loop: Header=BB12_318 Depth=2
	jmp	.LBB12_335
.LBB12_335:                             # %do.end.1152
                                        #   in Loop: Header=BB12_318 Depth=2
	jmp	.LBB12_318
.LBB12_336:                             # %while.end.1153
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$3, (%rax)
# BB#337:                               # %do.end.1155
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_338:                             # %sw.bb.1156
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_345
# BB#339:                               # %if.then.1161
	jmp	.LBB12_340
.LBB12_340:                             # %do.body.1162
	jmp	.LBB12_341
.LBB12_341:                             # %do.body.1163
	cmpq	$0, -168(%rbp)
	je	.LBB12_343
# BB#342:                               # %if.then.1166
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_343:                             # %if.end.1168
	jmp	.LBB12_344
.LBB12_344:                             # %do.end.1169
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$7, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_345:                             # %if.end.1172
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_346
.LBB12_346:                             # %while.cond.1173
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$34, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_364
# BB#347:                               # %while.body.1182
                                        #   in Loop: Header=BB12_346 Depth=2
	jmp	.LBB12_348
.LBB12_348:                             # %do.body.1183
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_350
# BB#349:                               # %if.then.1189
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_350:                             # %if.end.1190
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_352
# BB#351:                               # %if.then.1196
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_352:                             # %if.end.1198
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_354
# BB#353:                               # %if.then.1207
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_354:                             # %if.end.1208
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-416(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_362
# BB#355:                               # %if.then.1212
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-424(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_357
# BB#356:                               # %if.then.1224
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-424(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_357:                             # %if.end.1229
                                        #   in Loop: Header=BB12_346 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_359
# BB#358:                               # %if.then.1231
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-424(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_359:                             # %if.end.1236
                                        #   in Loop: Header=BB12_346 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_361
# BB#360:                               # %if.then.1238
                                        #   in Loop: Header=BB12_346 Depth=2
	movq	-424(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_361:                             # %if.end.1243
                                        #   in Loop: Header=BB12_346 Depth=2
	jmp	.LBB12_362
.LBB12_362:                             # %if.end.1244
                                        #   in Loop: Header=BB12_346 Depth=2
	jmp	.LBB12_363
.LBB12_363:                             # %do.end.1245
                                        #   in Loop: Header=BB12_346 Depth=2
	jmp	.LBB12_346
.LBB12_364:                             # %while.end.1246
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#365:                               # %do.body.1247
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_366
.LBB12_366:                             # %while.cond.1248
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_384
# BB#367:                               # %while.body.1257
                                        #   in Loop: Header=BB12_366 Depth=2
	jmp	.LBB12_368
.LBB12_368:                             # %do.body.1258
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_370
# BB#369:                               # %if.then.1264
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_370:                             # %if.end.1265
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_372
# BB#371:                               # %if.then.1271
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_372:                             # %if.end.1273
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_374
# BB#373:                               # %if.then.1282
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_374:                             # %if.end.1283
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-432(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_382
# BB#375:                               # %if.then.1287
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-440(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_377
# BB#376:                               # %if.then.1299
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-440(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_377:                             # %if.end.1304
                                        #   in Loop: Header=BB12_366 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_379
# BB#378:                               # %if.then.1306
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-440(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_379:                             # %if.end.1311
                                        #   in Loop: Header=BB12_366 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_381
# BB#380:                               # %if.then.1313
                                        #   in Loop: Header=BB12_366 Depth=2
	movq	-440(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_381:                             # %if.end.1318
                                        #   in Loop: Header=BB12_366 Depth=2
	jmp	.LBB12_382
.LBB12_382:                             # %if.end.1319
                                        #   in Loop: Header=BB12_366 Depth=2
	jmp	.LBB12_383
.LBB12_383:                             # %do.end.1320
                                        #   in Loop: Header=BB12_366 Depth=2
	jmp	.LBB12_366
.LBB12_384:                             # %while.end.1321
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$4, %eax
	movl	$5, %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	cmpl	$94, %esi
	cmovel	%ecx, %eax
	movb	%al, %dil
	movq	-56(%rbp), %rdx
	movq	%rdx, %r8
	addq	$1, %r8
	movq	%r8, -56(%rbp)
	movb	%dil, (%rdx)
# BB#385:                               # %do.end.1328
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB12_387
# BB#386:                               # %if.then.1332
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB12_387:                             # %if.end.1334
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -408(%rbp)
# BB#388:                               # %do.body.1335
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_389
.LBB12_389:                             # %while.cond.1336
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_407
# BB#390:                               # %while.body.1345
                                        #   in Loop: Header=BB12_389 Depth=2
	jmp	.LBB12_391
.LBB12_391:                             # %do.body.1346
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_393
# BB#392:                               # %if.then.1352
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_393:                             # %if.end.1353
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_395
# BB#394:                               # %if.then.1359
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_395:                             # %if.end.1361
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_397
# BB#396:                               # %if.then.1370
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_397:                             # %if.end.1371
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-448(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_405
# BB#398:                               # %if.then.1375
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-456(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_400
# BB#399:                               # %if.then.1387
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-456(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_400:                             # %if.end.1392
                                        #   in Loop: Header=BB12_389 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_402
# BB#401:                               # %if.then.1394
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-456(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_402:                             # %if.end.1399
                                        #   in Loop: Header=BB12_389 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_404
# BB#403:                               # %if.then.1401
                                        #   in Loop: Header=BB12_389 Depth=2
	movq	-456(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_404:                             # %if.end.1406
                                        #   in Loop: Header=BB12_389 Depth=2
	jmp	.LBB12_405
.LBB12_405:                             # %if.end.1407
                                        #   in Loop: Header=BB12_389 Depth=2
	jmp	.LBB12_406
.LBB12_406:                             # %do.end.1408
                                        #   in Loop: Header=BB12_389 Depth=2
	jmp	.LBB12_389
.LBB12_407:                             # %while.end.1409
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$32, (%rax)
# BB#408:                               # %do.end.1411
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	memset
	movq	-56(%rbp), %rdx
	movzbl	-2(%rdx), %eax
	cmpl	$5, %eax
	jne	.LBB12_411
# BB#409:                               # %land.lhs.true.1416
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB12_411
# BB#410:                               # %if.then.1419
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	orl	$4, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
.LBB12_411:                             # %if.end.1424
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_412
.LBB12_412:                             # %for.cond.1425
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_493 Depth 3
                                        #       Child Loop BB12_550 Depth 3
                                        #       Child Loop BB12_644 Depth 3
                                        #       Child Loop BB12_685 Depth 3
                                        #       Child Loop BB12_700 Depth 3
                                        #         Child Loop BB12_728 Depth 4
                                        #       Child Loop BB12_755 Depth 3
                                        #         Child Loop BB12_778 Depth 4
	movb	$0, -457(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_419
# BB#413:                               # %if.then.1429
	jmp	.LBB12_414
.LBB12_414:                             # %do.body.1430
	jmp	.LBB12_415
.LBB12_415:                             # %do.body.1431
	cmpq	$0, -168(%rbp)
	je	.LBB12_417
# BB#416:                               # %if.then.1434
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_417:                             # %if.end.1436
	jmp	.LBB12_418
.LBB12_418:                             # %do.end.1437
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$7, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_419:                             # %if.end.1440
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_420
.LBB12_420:                             # %do.body.1441
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_422
# BB#421:                               # %if.then.1445
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_422:                             # %if.end.1446
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_433
# BB#423:                               # %cond.true.1449
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_425
# BB#424:                               # %cond.true.1454
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -480(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB12_432
.LBB12_425:                             # %cond.false.1457
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_427
# BB#426:                               # %cond.true.1462
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -480(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB12_431
.LBB12_427:                             # %cond.false.1477
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_429
# BB#428:                               # %cond.true.1482
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -480(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB12_430
.LBB12_429:                             # %cond.false.1496
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-480(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1284(%rbp)       # 4-byte Spill
.LBB12_430:                             # %cond.end.1498
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1280(%rbp)       # 4-byte Spill
.LBB12_431:                             # %cond.end.1500
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1280(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1276(%rbp)       # 4-byte Spill
.LBB12_432:                             # %cond.end.1502
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	jmp	.LBB12_434
.LBB12_433:                             # %cond.false.1504
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -480(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1288(%rbp)       # 4-byte Spill
.LBB12_434:                             # %cond.end.1506
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1288(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-480(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#435:                               # %do.end.1510
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-32(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB12_461
# BB#436:                               # %land.lhs.true.1513
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$92, -44(%rbp)
	jne	.LBB12_461
# BB#437:                               # %if.then.1516
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_444
# BB#438:                               # %if.then.1519
	jmp	.LBB12_439
.LBB12_439:                             # %do.body.1520
	jmp	.LBB12_440
.LBB12_440:                             # %do.body.1521
	cmpq	$0, -168(%rbp)
	je	.LBB12_442
# BB#441:                               # %if.then.1524
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_442:                             # %if.end.1526
	jmp	.LBB12_443
.LBB12_443:                             # %do.end.1527
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$5, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_444:                             # %if.end.1530
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_445
.LBB12_445:                             # %do.body.1531
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_447
# BB#446:                               # %if.then.1535
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_447:                             # %if.end.1536
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_458
# BB#448:                               # %cond.true.1539
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_450
# BB#449:                               # %cond.true.1544
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -484(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB12_457
.LBB12_450:                             # %cond.false.1547
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_452
# BB#451:                               # %cond.true.1552
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -484(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB12_456
.LBB12_452:                             # %cond.false.1567
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_454
# BB#453:                               # %cond.true.1572
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -484(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB12_455
.LBB12_454:                             # %cond.false.1586
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-484(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1300(%rbp)       # 4-byte Spill
.LBB12_455:                             # %cond.end.1588
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1300(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1296(%rbp)       # 4-byte Spill
.LBB12_456:                             # %cond.end.1590
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1296(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1292(%rbp)       # 4-byte Spill
.LBB12_457:                             # %cond.end.1592
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1292(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1304(%rbp)       # 4-byte Spill
	jmp	.LBB12_459
.LBB12_458:                             # %cond.false.1594
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -484(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1304(%rbp)       # 4-byte Spill
.LBB12_459:                             # %cond.end.1596
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1304(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-484(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#460:                               # %do.end.1600
                                        #   in Loop: Header=BB12_412 Depth=2
	movb	$1, -457(%rbp)
	jmp	.LBB12_465
.LBB12_461:                             # %if.else.1601
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$93, -44(%rbp)
	jne	.LBB12_464
# BB#462:                               # %land.lhs.true.1604
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-472(%rbp), %rax
	cmpq	-408(%rbp), %rax
	je	.LBB12_464
# BB#463:                               # %if.then.1607
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_808
.LBB12_464:                             # %if.end.1608
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_465
.LBB12_465:                             # %if.end.1609
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpb	$0, -457(%rbp)
	jne	.LBB12_586
# BB#466:                               # %land.lhs.true.1611
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-32(%rbp), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB12_586
# BB#467:                               # %land.lhs.true.1614
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$91, -44(%rbp)
	jne	.LBB12_586
# BB#468:                               # %land.lhs.true.1617
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB12_586
# BB#469:                               # %if.then.1621
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_470
.LBB12_470:                             # %do.body.1622
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_472
# BB#471:                               # %if.then.1626
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_472:                             # %if.end.1627
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_483
# BB#473:                               # %cond.true.1630
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_475
# BB#474:                               # %cond.true.1635
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -508(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB12_482
.LBB12_475:                             # %cond.false.1638
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_477
# BB#476:                               # %cond.true.1643
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -508(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1312(%rbp)       # 4-byte Spill
	jmp	.LBB12_481
.LBB12_477:                             # %cond.false.1658
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_479
# BB#478:                               # %cond.true.1663
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -508(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1316(%rbp)       # 4-byte Spill
	jmp	.LBB12_480
.LBB12_479:                             # %cond.false.1677
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-508(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1316(%rbp)       # 4-byte Spill
.LBB12_480:                             # %cond.end.1679
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1316(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1312(%rbp)       # 4-byte Spill
.LBB12_481:                             # %cond.end.1681
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1312(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1308(%rbp)       # 4-byte Spill
.LBB12_482:                             # %cond.end.1683
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1320(%rbp)       # 4-byte Spill
	jmp	.LBB12_484
.LBB12_483:                             # %cond.false.1685
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -508(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1320(%rbp)       # 4-byte Spill
.LBB12_484:                             # %cond.end.1687
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1320(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-508(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#485:                               # %do.end.1691
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_492
# BB#486:                               # %if.then.1694
	jmp	.LBB12_487
.LBB12_487:                             # %do.body.1695
	jmp	.LBB12_488
.LBB12_488:                             # %do.body.1696
	cmpq	$0, -168(%rbp)
	je	.LBB12_490
# BB#489:                               # %if.then.1699
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_490:                             # %if.end.1701
	jmp	.LBB12_491
.LBB12_491:                             # %do.end.1702
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$7, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_492:                             # %if.end.1705
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_493
.LBB12_493:                             # %for.cond.1706
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	jmp	.LBB12_494
.LBB12_494:                             # %do.body.1707
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_496
# BB#495:                               # %if.then.1711
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_496:                             # %if.end.1712
                                        #   in Loop: Header=BB12_493 Depth=3
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_507
# BB#497:                               # %cond.true.1715
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_499
# BB#498:                               # %cond.true.1720
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	$1, -512(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1324(%rbp)       # 4-byte Spill
	jmp	.LBB12_506
.LBB12_499:                             # %cond.false.1723
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_501
# BB#500:                               # %cond.true.1728
                                        #   in Loop: Header=BB12_493 Depth=3
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -512(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1328(%rbp)       # 4-byte Spill
	jmp	.LBB12_505
.LBB12_501:                             # %cond.false.1743
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_503
# BB#502:                               # %cond.true.1748
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	$3, -512(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB12_504
.LBB12_503:                             # %cond.false.1762
                                        #   in Loop: Header=BB12_493 Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-512(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1332(%rbp)       # 4-byte Spill
.LBB12_504:                             # %cond.end.1764
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1328(%rbp)       # 4-byte Spill
.LBB12_505:                             # %cond.end.1766
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	-1328(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1324(%rbp)       # 4-byte Spill
.LBB12_506:                             # %cond.end.1768
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	-1324(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1336(%rbp)       # 4-byte Spill
	jmp	.LBB12_508
.LBB12_507:                             # %cond.false.1770
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	$1, -512(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1336(%rbp)       # 4-byte Spill
.LBB12_508:                             # %cond.end.1772
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	-1336(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-512(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#509:                               # %do.end.1776
                                        #   in Loop: Header=BB12_493 Depth=3
	cmpl	$58, -44(%rbp)
	jne	.LBB12_511
# BB#510:                               # %land.lhs.true.1779
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB12_512
.LBB12_511:                             # %lor.lhs.false.1783
                                        #   in Loop: Header=BB12_493 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_513
.LBB12_512:                             # %if.then.1786
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_517
.LBB12_513:                             # %if.end.1787
                                        #   in Loop: Header=BB12_493 Depth=3
	cmpl	$9, -48(%rbp)
	jge	.LBB12_515
# BB#514:                               # %if.then.1790
                                        #   in Loop: Header=BB12_493 Depth=3
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -494(%rbp,%rsi)
	jmp	.LBB12_516
.LBB12_515:                             # %if.else.1793
                                        #   in Loop: Header=BB12_493 Depth=3
	movb	$0, -494(%rbp)
.LBB12_516:                             # %if.end.1795
                                        #   in Loop: Header=BB12_493 Depth=3
	jmp	.LBB12_493
.LBB12_517:                             # %for.end.1796
                                        #   in Loop: Header=BB12_412 Depth=2
	movslq	-48(%rbp), %rax
	movb	$0, -494(%rbp,%rax)
	cmpl	$58, -44(%rbp)
	jne	.LBB12_584
# BB#518:                               # %land.lhs.true.1801
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$93, %ecx
	jne	.LBB12_584
# BB#519:                               # %if.then.1805
                                        #   in Loop: Header=BB12_412 Depth=2
	leaq	-494(%rbp), %rdi
	callq	re_wctype
	movl	%eax, -516(%rbp)
	cmpl	$0, -516(%rbp)
	jne	.LBB12_526
# BB#520:                               # %if.then.1809
	jmp	.LBB12_521
.LBB12_521:                             # %do.body.1810
	jmp	.LBB12_522
.LBB12_522:                             # %do.body.1811
	cmpq	$0, -168(%rbp)
	je	.LBB12_524
# BB#523:                               # %if.then.1814
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_524:                             # %if.end.1816
	jmp	.LBB12_525
.LBB12_525:                             # %do.end.1817
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$4, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_526:                             # %if.end.1820
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_527
.LBB12_527:                             # %do.body.1821
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_529
# BB#528:                               # %if.then.1825
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_529:                             # %if.end.1826
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_540
# BB#530:                               # %cond.true.1829
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_532
# BB#531:                               # %cond.true.1834
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -520(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB12_539
.LBB12_532:                             # %cond.false.1837
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_534
# BB#533:                               # %cond.true.1842
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -520(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1344(%rbp)       # 4-byte Spill
	jmp	.LBB12_538
.LBB12_534:                             # %cond.false.1857
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_536
# BB#535:                               # %cond.true.1862
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -520(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1348(%rbp)       # 4-byte Spill
	jmp	.LBB12_537
.LBB12_536:                             # %cond.false.1876
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-520(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1348(%rbp)       # 4-byte Spill
.LBB12_537:                             # %cond.end.1878
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1348(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1344(%rbp)       # 4-byte Spill
.LBB12_538:                             # %cond.end.1880
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1344(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1340(%rbp)       # 4-byte Spill
.LBB12_539:                             # %cond.end.1882
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1352(%rbp)       # 4-byte Spill
	jmp	.LBB12_541
.LBB12_540:                             # %cond.false.1884
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -520(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1352(%rbp)       # 4-byte Spill
.LBB12_541:                             # %cond.end.1886
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1352(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-520(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#542:                               # %do.end.1890
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_549
# BB#543:                               # %if.then.1893
	jmp	.LBB12_544
.LBB12_544:                             # %do.body.1894
	jmp	.LBB12_545
.LBB12_545:                             # %do.body.1895
	cmpq	$0, -168(%rbp)
	je	.LBB12_547
# BB#546:                               # %if.then.1898
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_547:                             # %if.end.1900
	jmp	.LBB12_548
.LBB12_548:                             # %do.end.1901
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$7, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_549:                             # %if.end.1904
                                        #   in Loop: Header=BB12_412 Depth=2
	callq	SETUP_BUFFER_SYNTAX_TABLE
	movl	$0, -476(%rbp)
.LBB12_550:                             # %for.cond.1905
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$256, -476(%rbp)        # imm = 0x100
	jge	.LBB12_581
# BB#551:                               # %for.body
                                        #   in Loop: Header=BB12_550 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_552
	jmp	.LBB12_553
.LBB12_552:                             # %cond.true.1908
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-476(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_554
	jmp	.LBB12_555
.LBB12_553:                             # %cond.false.1912
                                        #   in Loop: Header=BB12_550 Depth=3
	movslq	-476(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_555
.LBB12_554:                             # %cond.true.1917
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-476(%rbp), %eax
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	jmp	.LBB12_556
.LBB12_555:                             # %cond.false.1918
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-476(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1356(%rbp)       # 4-byte Spill
.LBB12_556:                             # %cond.end.1920
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-1356(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jg	.LBB12_579
# BB#557:                               # %land.lhs.true.1924
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-44(%rbp), %edi
	movl	-516(%rbp), %esi
	callq	re_iswctype
	movsbl	%al, %esi
	cmpl	$0, %esi
	je	.LBB12_579
# BB#558:                               # %if.then.1928
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-476(%rbp), %edx
	movl	%eax, -1360(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1360(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1364(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1364(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-476(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1368(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1368(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	cmpq	$2, -104(%rbp)
	je	.LBB12_560
# BB#559:                               # %cond.true.1937
                                        #   in Loop: Header=BB12_550 Depth=3
	movq	-104(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB12_561
.LBB12_560:                             # %cond.false.1939
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-44(%rbp), %eax
	movl	%eax, -1372(%rbp)       # 4-byte Spill
.LBB12_561:                             # %cond.end.1940
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-1372(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB12_563
# BB#562:                               # %if.then.1944
                                        #   in Loop: Header=BB12_550 Depth=3
	jmp	.LBB12_580
.LBB12_563:                             # %if.end.1945
                                        #   in Loop: Header=BB12_550 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_564
	jmp	.LBB12_565
.LBB12_564:                             # %cond.true.1946
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-48(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_566
	jmp	.LBB12_567
.LBB12_565:                             # %cond.false.1950
                                        #   in Loop: Header=BB12_550 Depth=3
	movslq	-48(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_567
.LBB12_566:                             # %if.then.1955
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-48(%rbp), %edx
	movl	%eax, -1376(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1376(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1380(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1380(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-48(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1384(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1384(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	jmp	.LBB12_578
.LBB12_567:                             # %if.else.1964
                                        #   in Loop: Header=BB12_550 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_568
	jmp	.LBB12_569
.LBB12_568:                             # %cond.true.1965
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-48(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_570
	jmp	.LBB12_571
.LBB12_569:                             # %cond.false.1969
                                        #   in Loop: Header=BB12_550 Depth=3
	movslq	-48(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_571
.LBB12_570:                             # %cond.true.1974
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-48(%rbp), %eax
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	jmp	.LBB12_575
.LBB12_571:                             # %cond.false.1975
                                        #   in Loop: Header=BB12_550 Depth=3
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_573
# BB#572:                               # %cond.true.1978
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-48(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1392(%rbp)       # 4-byte Spill
	jmp	.LBB12_574
.LBB12_573:                             # %cond.false.1980
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1392(%rbp)       # 4-byte Spill
	jmp	.LBB12_574
.LBB12_574:                             # %cond.end.1981
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-1392(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1388(%rbp)       # 4-byte Spill
.LBB12_575:                             # %cond.end.1983
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-1388(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jl	.LBB12_577
# BB#576:                               # %if.then.1987
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-48(%rbp), %edx
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1396(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1400(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1400(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-48(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1404(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1404(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB12_577:                             # %if.end.1996
                                        #   in Loop: Header=BB12_550 Depth=3
	jmp	.LBB12_578
.LBB12_578:                             # %if.end.1997
                                        #   in Loop: Header=BB12_550 Depth=3
	jmp	.LBB12_579
.LBB12_579:                             # %if.end.1998
                                        #   in Loop: Header=BB12_550 Depth=3
	jmp	.LBB12_580
.LBB12_580:                             # %for.inc
                                        #   in Loop: Header=BB12_550 Depth=3
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB12_550
.LBB12_581:                             # %for.end.2000
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-516(%rbp), %edi
	callq	re_wctype_to_bit
	movl	$1, %edi
	orl	-152(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-516(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	$8200, %edi             # imm = 0x2008
	cmpl	$0, %edi
	je	.LBB12_583
# BB#582:                               # %if.then.2007
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-40(%rbp), %rax
	movw	56(%rax), %cx
	andw	$-129, %cx
	orw	$128, %cx
	movw	%cx, 56(%rax)
.LBB12_583:                             # %if.end.2011
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_412
.LBB12_584:                             # %if.else.2012
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-504(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movzbl	11(%rax), %ecx
	orl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, 11(%rax)
	movl	$58, -44(%rbp)
# BB#585:                               # %if.end.2017
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_586
.LBB12_586:                             # %if.end.2018
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB12_628
# BB#587:                               # %land.lhs.true.2021
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB12_628
# BB#588:                               # %land.lhs.true.2026
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB12_628
# BB#589:                               # %if.then.2031
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_590
.LBB12_590:                             # %do.body.2032
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_592
# BB#591:                               # %if.then.2036
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_592:                             # %if.end.2037
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_603
# BB#593:                               # %cond.true.2040
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_595
# BB#594:                               # %cond.true.2045
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -524(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1408(%rbp)       # 4-byte Spill
	jmp	.LBB12_602
.LBB12_595:                             # %cond.false.2048
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_597
# BB#596:                               # %cond.true.2053
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -524(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1412(%rbp)       # 4-byte Spill
	jmp	.LBB12_601
.LBB12_597:                             # %cond.false.2068
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_599
# BB#598:                               # %cond.true.2073
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -524(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1416(%rbp)       # 4-byte Spill
	jmp	.LBB12_600
.LBB12_599:                             # %cond.false.2087
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-524(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1416(%rbp)       # 4-byte Spill
.LBB12_600:                             # %cond.end.2089
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1416(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1412(%rbp)       # 4-byte Spill
.LBB12_601:                             # %cond.end.2091
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1412(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1408(%rbp)       # 4-byte Spill
.LBB12_602:                             # %cond.end.2093
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1408(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1420(%rbp)       # 4-byte Spill
	jmp	.LBB12_604
.LBB12_603:                             # %cond.false.2095
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -524(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1420(%rbp)       # 4-byte Spill
.LBB12_604:                             # %cond.end.2097
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1420(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-524(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#605:                               # %do.end.2101
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_606
.LBB12_606:                             # %do.body.2102
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_608
# BB#607:                               # %if.then.2106
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_608:                             # %if.end.2107
                                        #   in Loop: Header=BB12_412 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_619
# BB#609:                               # %cond.true.2110
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_611
# BB#610:                               # %cond.true.2115
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -528(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1424(%rbp)       # 4-byte Spill
	jmp	.LBB12_618
.LBB12_611:                             # %cond.false.2118
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_613
# BB#612:                               # %cond.true.2123
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -528(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1428(%rbp)       # 4-byte Spill
	jmp	.LBB12_617
.LBB12_613:                             # %cond.false.2138
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_615
# BB#614:                               # %cond.true.2143
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$3, -528(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1432(%rbp)       # 4-byte Spill
	jmp	.LBB12_616
.LBB12_615:                             # %cond.false.2157
                                        #   in Loop: Header=BB12_412 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-528(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1432(%rbp)       # 4-byte Spill
.LBB12_616:                             # %cond.end.2159
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1432(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1428(%rbp)       # 4-byte Spill
.LBB12_617:                             # %cond.end.2161
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1428(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1424(%rbp)       # 4-byte Spill
.LBB12_618:                             # %cond.end.2163
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1424(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1436(%rbp)       # 4-byte Spill
	jmp	.LBB12_620
.LBB12_619:                             # %cond.false.2165
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$1, -528(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
.LBB12_620:                             # %cond.end.2167
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-528(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#621:                               # %do.end.2171
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_627
# BB#622:                               # %land.lhs.true.2174
                                        #   in Loop: Header=BB12_412 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_623
	jmp	.LBB12_624
.LBB12_623:                             # %cond.true.2175
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_627
	jmp	.LBB12_625
.LBB12_624:                             # %cond.false.2179
                                        #   in Loop: Header=BB12_412 Depth=2
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB12_627
.LBB12_625:                             # %land.lhs.true.2184
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jg	.LBB12_627
# BB#626:                               # %if.then.2187
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB12_627:                             # %if.end.2189
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_629
.LBB12_628:                             # %if.else.2190
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB12_629:                             # %if.end.2191
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB12_638
# BB#630:                               # %if.then.2194
                                        #   in Loop: Header=BB12_412 Depth=2
	movq	-32(%rbp), %rax
	andq	$65536, %rax            # imm = 0x10000
	cmpq	$0, %rax
	je	.LBB12_637
# BB#631:                               # %if.then.2197
	jmp	.LBB12_632
.LBB12_632:                             # %do.body.2198
	jmp	.LBB12_633
.LBB12_633:                             # %do.body.2199
	cmpq	$0, -168(%rbp)
	je	.LBB12_635
# BB#634:                               # %if.then.2202
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_635:                             # %if.end.2204
	jmp	.LBB12_636
.LBB12_636:                             # %do.end.2205
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$17, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_637:                             # %if.end.2208
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_807
.LBB12_638:                             # %if.else.2209
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$128, -44(%rbp)
	jge	.LBB12_676
# BB#639:                               # %if.then.2212
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$127, %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB12_641
# BB#640:                               # %cond.true.2215
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$127, %eax
	movl	%eax, -1440(%rbp)       # 4-byte Spill
	jmp	.LBB12_642
.LBB12_641:                             # %cond.false.2216
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -1440(%rbp)       # 4-byte Spill
.LBB12_642:                             # %cond.end.2217
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1440(%rbp), %eax       # 4-byte Reload
	movl	%eax, -476(%rbp)
# BB#643:                               # %do.body.2219
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -532(%rbp)
.LBB12_644:                             # %for.cond.2220
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-532(%rbp), %eax
	cmpl	-476(%rbp), %eax
	jg	.LBB12_672
# BB#645:                               # %for.body.2223
                                        #   in Loop: Header=BB12_644 Depth=3
	cmpq	$2, -104(%rbp)
	je	.LBB12_647
# BB#646:                               # %cond.true.2226
                                        #   in Loop: Header=BB12_644 Depth=3
	movq	-104(%rbp), %rdi
	movl	-532(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1444(%rbp)       # 4-byte Spill
	jmp	.LBB12_648
.LBB12_647:                             # %cond.false.2228
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-532(%rbp), %eax
	movl	%eax, -1444(%rbp)       # 4-byte Spill
.LBB12_648:                             # %cond.end.2229
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-1444(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -536(%rbp)
	testb	$1, %cl
	jne	.LBB12_649
	jmp	.LBB12_650
.LBB12_649:                             # %cond.true.2231
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-536(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_670
	jmp	.LBB12_651
.LBB12_650:                             # %cond.false.2235
                                        #   in Loop: Header=BB12_644 Depth=3
	movslq	-536(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB12_670
.LBB12_651:                             # %if.then.2240
                                        #   in Loop: Header=BB12_644 Depth=3
	jmp	.LBB12_652
.LBB12_652:                             # %do.body.2241
                                        #   in Loop: Header=BB12_644 Depth=3
	jmp	.LBB12_653
.LBB12_653:                             # %do.body.2242
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movslq	-160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB12_657
# BB#654:                               # %if.then.2251
                                        #   in Loop: Header=BB12_644 Depth=3
	leaq	-168(%rbp), %rdi
	callq	extend_range_table_work_area
	cmpq	$0, -168(%rbp)
	jne	.LBB12_656
# BB#655:                               # %if.then.2255
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_656:                             # %if.end.2256
                                        #   in Loop: Header=BB12_644 Depth=3
	jmp	.LBB12_657
.LBB12_657:                             # %if.end.2257
                                        #   in Loop: Header=BB12_644 Depth=3
	jmp	.LBB12_658
.LBB12_658:                             # %do.end.2258
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-536(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-536(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#659:                               # %do.end.2269
                                        #   in Loop: Header=BB12_644 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_660
	jmp	.LBB12_661
.LBB12_660:                             # %cond.true.2270
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-536(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_662
	jmp	.LBB12_663
.LBB12_661:                             # %cond.false.2274
                                        #   in Loop: Header=BB12_644 Depth=3
	movslq	-536(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_663
.LBB12_662:                             # %cond.true.2279
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-536(%rbp), %eax
	movl	%eax, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB12_667
.LBB12_663:                             # %cond.false.2280
                                        #   in Loop: Header=BB12_644 Depth=3
	cmpl	$4194175, -536(%rbp)    # imm = 0x3FFF7F
	jle	.LBB12_665
# BB#664:                               # %cond.true.2283
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-536(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB12_666
.LBB12_665:                             # %cond.false.2285
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB12_666
.LBB12_666:                             # %cond.end.2286
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-1452(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1448(%rbp)       # 4-byte Spill
.LBB12_667:                             # %cond.end.2288
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-1448(%rbp), %eax       # 4-byte Reload
	movl	%eax, -536(%rbp)
	cmpl	$0, %eax
	jge	.LBB12_669
# BB#668:                               # %if.then.2292
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-532(%rbp), %eax
	movl	%eax, -536(%rbp)
.LBB12_669:                             # %if.end.2293
                                        #   in Loop: Header=BB12_644 Depth=3
	jmp	.LBB12_670
.LBB12_670:                             # %if.end.2294
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-536(%rbp), %edx
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1456(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1460(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-536(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1464(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1464(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
# BB#671:                               # %for.inc.2303
                                        #   in Loop: Header=BB12_644 Depth=3
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB12_644
.LBB12_672:                             # %for.end.2305
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_673
.LBB12_673:                             # %do.end.2306
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_675
# BB#674:                               # %if.then.2310
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	$4194176, -44(%rbp)     # imm = 0x3FFF80
.LBB12_675:                             # %if.end.2311
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_676
.LBB12_676:                             # %if.end.2312
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB12_806
# BB#677:                               # %if.then.2315
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_689
# BB#678:                               # %if.then.2318
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_680
# BB#679:                               # %cond.true.2321
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	jmp	.LBB12_681
.LBB12_680:                             # %cond.false.2323
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -1468(%rbp)       # 4-byte Spill
.LBB12_681:                             # %cond.end.2325
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1468(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	jle	.LBB12_683
# BB#682:                               # %cond.true.2329
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-48(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1472(%rbp)       # 4-byte Spill
	jmp	.LBB12_684
.LBB12_683:                             # %cond.false.2331
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-48(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -1472(%rbp)       # 4-byte Spill
.LBB12_684:                             # %cond.end.2333
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-1472(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
.LBB12_685:                             # %for.cond.2335
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB12_688
# BB#686:                               # %for.body.2338
                                        #   in Loop: Header=BB12_685 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -1476(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1476(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1480(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1480(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-44(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1484(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1484(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
# BB#687:                               # %for.inc.2347
                                        #   in Loop: Header=BB12_685 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_685
.LBB12_688:                             # %for.end.2349
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_805
.LBB12_689:                             # %if.else.2350
                                        #   in Loop: Header=BB12_412 Depth=2
	cmpb	$0, -169(%rbp)
	je	.LBB12_753
# BB#690:                               # %if.then.2352
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_691
.LBB12_691:                             # %do.body.2353
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-156(%rbp), %eax
	movl	%eax, -556(%rbp)
# BB#692:                               # %do.body.2357
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_693
.LBB12_693:                             # %do.body.2358
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movslq	-160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB12_697
# BB#694:                               # %if.then.2367
                                        #   in Loop: Header=BB12_412 Depth=2
	leaq	-168(%rbp), %rdi
	callq	extend_range_table_work_area
	cmpq	$0, -168(%rbp)
	jne	.LBB12_696
# BB#695:                               # %if.then.2371
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_696:                             # %if.end.2372
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_697
.LBB12_697:                             # %if.end.2373
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_698
.LBB12_698:                             # %do.end.2374
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-48(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#699:                               # %do.end.2385
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -540(%rbp)
.LBB12_700:                             # %for.cond.2386
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_728 Depth 4
	movl	-540(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB12_751
# BB#701:                               # %for.body.2389
                                        #   in Loop: Header=BB12_700 Depth=3
	cmpq	$2, -104(%rbp)
	je	.LBB12_703
# BB#702:                               # %cond.true.2392
                                        #   in Loop: Header=BB12_700 Depth=3
	movq	-104(%rbp), %rdi
	movl	-540(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1488(%rbp)       # 4-byte Spill
	jmp	.LBB12_704
.LBB12_703:                             # %cond.false.2394
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-540(%rbp), %eax
	movl	%eax, -1488(%rbp)       # 4-byte Spill
.LBB12_704:                             # %cond.end.2395
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-1488(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -544(%rbp)
	testb	$1, %cl
	jne	.LBB12_705
	jmp	.LBB12_706
.LBB12_705:                             # %cond.true.2397
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_707
	jmp	.LBB12_708
.LBB12_706:                             # %cond.false.2401
                                        #   in Loop: Header=BB12_700 Depth=3
	movslq	-544(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_708
.LBB12_707:                             # %cond.true.2406
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	movl	%eax, -1492(%rbp)       # 4-byte Spill
	jmp	.LBB12_712
.LBB12_708:                             # %cond.false.2407
                                        #   in Loop: Header=BB12_700 Depth=3
	cmpl	$4194175, -544(%rbp)    # imm = 0x3FFF7F
	jle	.LBB12_710
# BB#709:                               # %cond.true.2410
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1496(%rbp)       # 4-byte Spill
	jmp	.LBB12_711
.LBB12_710:                             # %cond.false.2412
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1496(%rbp)       # 4-byte Spill
	jmp	.LBB12_711
.LBB12_711:                             # %cond.end.2413
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-1496(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1492(%rbp)       # 4-byte Spill
.LBB12_712:                             # %cond.end.2415
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-1492(%rbp), %eax       # 4-byte Reload
	movl	%eax, -548(%rbp)
	cmpl	$0, %eax
	jge	.LBB12_723
# BB#713:                               # %lor.lhs.false.2419
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	cmpl	-540(%rbp), %eax
	je	.LBB12_724
# BB#714:                               # %land.lhs.true.2422
                                        #   in Loop: Header=BB12_700 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_715
	jmp	.LBB12_716
.LBB12_715:                             # %cond.true.2423
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-540(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_717
	jmp	.LBB12_718
.LBB12_716:                             # %cond.false.2427
                                        #   in Loop: Header=BB12_700 Depth=3
	movslq	-540(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_718
.LBB12_717:                             # %cond.true.2432
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-540(%rbp), %eax
	movl	%eax, -1500(%rbp)       # 4-byte Spill
	jmp	.LBB12_722
.LBB12_718:                             # %cond.false.2433
                                        #   in Loop: Header=BB12_700 Depth=3
	cmpl	$4194175, -540(%rbp)    # imm = 0x3FFF7F
	jle	.LBB12_720
# BB#719:                               # %cond.true.2436
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-540(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1504(%rbp)       # 4-byte Spill
	jmp	.LBB12_721
.LBB12_720:                             # %cond.false.2438
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1504(%rbp)       # 4-byte Spill
	jmp	.LBB12_721
.LBB12_721:                             # %cond.end.2439
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-1504(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1500(%rbp)       # 4-byte Spill
.LBB12_722:                             # %cond.end.2441
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-1500(%rbp), %eax       # 4-byte Reload
	movl	%eax, -548(%rbp)
	cmpl	$0, %eax
	jl	.LBB12_724
.LBB12_723:                             # %if.then.2445
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-548(%rbp), %edx
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1508(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1512(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1512(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-548(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1516(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1516(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB12_724:                             # %if.end.2454
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB12_727
# BB#725:                               # %land.lhs.true.2457
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB12_727
# BB#726:                               # %if.then.2460
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_750
.LBB12_727:                             # %if.end.2461
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-156(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -552(%rbp)
.LBB12_728:                             # %for.cond.2464
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        #       Parent Loop BB12_700 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-552(%rbp), %eax
	cmpl	-556(%rbp), %eax
	jl	.LBB12_739
# BB#729:                               # %for.body.2467
                                        #   in Loop: Header=BB12_728 Depth=4
	movslq	-552(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -560(%rbp)
	movl	-552(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -564(%rbp)
	movl	-544(%rbp), %edx
	movl	-560(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	jl	.LBB12_737
# BB#730:                               # %land.lhs.true.2478
                                        #   in Loop: Header=BB12_728 Depth=4
	movl	-544(%rbp), %eax
	movl	-564(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB12_737
# BB#731:                               # %if.then.2482
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	movl	-560(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_733
# BB#732:                               # %if.then.2486
                                        #   in Loop: Header=BB12_700 Depth=3
	movslq	-552(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB12_736
.LBB12_733:                             # %if.else.2490
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	movl	-564(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_735
# BB#734:                               # %if.then.2494
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-552(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, (%rdx,%rcx,4)
.LBB12_735:                             # %if.end.2500
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_736
.LBB12_736:                             # %if.end.2501
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_739
.LBB12_737:                             # %if.end.2502
                                        #   in Loop: Header=BB12_728 Depth=4
	jmp	.LBB12_738
.LBB12_738:                             # %for.inc.2503
                                        #   in Loop: Header=BB12_728 Depth=4
	movl	-552(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -552(%rbp)
	jmp	.LBB12_728
.LBB12_739:                             # %for.end.2505
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-552(%rbp), %eax
	cmpl	-556(%rbp), %eax
	jge	.LBB12_749
# BB#740:                               # %if.then.2508
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_741
.LBB12_741:                             # %do.body.2509
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_742
.LBB12_742:                             # %do.body.2510
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movslq	-160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB12_746
# BB#743:                               # %if.then.2519
                                        #   in Loop: Header=BB12_700 Depth=3
	leaq	-168(%rbp), %rdi
	callq	extend_range_table_work_area
	cmpq	$0, -168(%rbp)
	jne	.LBB12_745
# BB#744:                               # %if.then.2523
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_745:                             # %if.end.2524
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_746
.LBB12_746:                             # %if.end.2525
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_747
.LBB12_747:                             # %do.end.2526
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-544(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-544(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#748:                               # %do.end.2537
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_749
.LBB12_749:                             # %if.end.2538
                                        #   in Loop: Header=BB12_700 Depth=3
	jmp	.LBB12_750
.LBB12_750:                             # %for.inc.2539
                                        #   in Loop: Header=BB12_700 Depth=3
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB12_700
.LBB12_751:                             # %for.end.2541
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_752
.LBB12_752:                             # %do.end.2542
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_804
.LBB12_753:                             # %if.else.2543
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_754
.LBB12_754:                             # %do.body.2544
                                        #   in Loop: Header=BB12_412 Depth=2
	movl	-156(%rbp), %eax
	movl	%eax, -584(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -568(%rbp)
.LBB12_755:                             # %for.cond.2551
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_778 Depth 4
	movl	-568(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB12_802
# BB#756:                               # %for.body.2554
                                        #   in Loop: Header=BB12_755 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_757
	jmp	.LBB12_758
.LBB12_757:                             # %cond.true.2555
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-568(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_759
	jmp	.LBB12_760
.LBB12_758:                             # %cond.false.2559
                                        #   in Loop: Header=BB12_755 Depth=3
	movslq	-568(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_760
.LBB12_759:                             # %cond.true.2564
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-568(%rbp), %eax
	movl	%eax, -1520(%rbp)       # 4-byte Spill
	jmp	.LBB12_761
.LBB12_760:                             # %cond.false.2565
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-568(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1520(%rbp)       # 4-byte Spill
.LBB12_761:                             # %cond.end.2567
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-1520(%rbp), %eax       # 4-byte Reload
	movl	%eax, -572(%rbp)
	cmpl	$4194175, -572(%rbp)    # imm = 0x3FFF7F
	jle	.LBB12_763
# BB#762:                               # %if.then.2571
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-568(%rbp), %edx
	movl	%eax, -1524(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1524(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1528(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1528(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-568(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1532(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1532(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	jmp	.LBB12_800
.LBB12_763:                             # %if.else.2580
                                        #   in Loop: Header=BB12_755 Depth=3
	cmpq	$2, -104(%rbp)
	je	.LBB12_765
# BB#764:                               # %cond.true.2583
                                        #   in Loop: Header=BB12_755 Depth=3
	movq	-104(%rbp), %rdi
	movl	-572(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1536(%rbp)       # 4-byte Spill
	jmp	.LBB12_766
.LBB12_765:                             # %cond.false.2585
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-572(%rbp), %eax
	movl	%eax, -1536(%rbp)       # 4-byte Spill
.LBB12_766:                             # %cond.end.2586
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-1536(%rbp), %eax       # 4-byte Reload
	movl	%eax, -576(%rbp)
	movl	-576(%rbp), %eax
	cmpl	-572(%rbp), %eax
	je	.LBB12_776
# BB#767:                               # %lor.lhs.false.2590
                                        #   in Loop: Header=BB12_755 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_768
	jmp	.LBB12_769
.LBB12_768:                             # %cond.true.2591
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_770
	jmp	.LBB12_771
.LBB12_769:                             # %cond.false.2595
                                        #   in Loop: Header=BB12_755 Depth=3
	movslq	-576(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_771
.LBB12_770:                             # %cond.true.2600
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	movl	%eax, -1540(%rbp)       # 4-byte Spill
	jmp	.LBB12_775
.LBB12_771:                             # %cond.false.2601
                                        #   in Loop: Header=BB12_755 Depth=3
	cmpl	$4194175, -576(%rbp)    # imm = 0x3FFF7F
	jle	.LBB12_773
# BB#772:                               # %cond.true.2604
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1544(%rbp)       # 4-byte Spill
	jmp	.LBB12_774
.LBB12_773:                             # %cond.false.2606
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1544(%rbp)       # 4-byte Spill
	jmp	.LBB12_774
.LBB12_774:                             # %cond.end.2607
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-1544(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1540(%rbp)       # 4-byte Spill
.LBB12_775:                             # %cond.end.2609
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-1540(%rbp), %eax       # 4-byte Reload
	movl	%eax, -572(%rbp)
	cmpl	$0, %eax
	jge	.LBB12_777
.LBB12_776:                             # %if.then.2613
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-568(%rbp), %eax
	movl	%eax, -572(%rbp)
.LBB12_777:                             # %if.end.2614
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-572(%rbp), %edx
	movl	%eax, -1548(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1548(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1552(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1552(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-572(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1556(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1556(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	movl	-156(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -580(%rbp)
.LBB12_778:                             # %for.cond.2625
                                        #   Parent Loop BB12_15 Depth=1
                                        #     Parent Loop BB12_412 Depth=2
                                        #       Parent Loop BB12_755 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-580(%rbp), %eax
	cmpl	-584(%rbp), %eax
	jl	.LBB12_789
# BB#779:                               # %for.body.2628
                                        #   in Loop: Header=BB12_778 Depth=4
	movslq	-580(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -588(%rbp)
	movl	-580(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -592(%rbp)
	movl	-576(%rbp), %edx
	movl	-588(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	jl	.LBB12_787
# BB#780:                               # %land.lhs.true.2641
                                        #   in Loop: Header=BB12_778 Depth=4
	movl	-576(%rbp), %eax
	movl	-592(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB12_787
# BB#781:                               # %if.then.2645
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	movl	-588(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_783
# BB#782:                               # %if.then.2649
                                        #   in Loop: Header=BB12_755 Depth=3
	movslq	-580(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB12_786
.LBB12_783:                             # %if.else.2654
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	movl	-592(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_785
# BB#784:                               # %if.then.2658
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, (%rdx,%rcx,4)
.LBB12_785:                             # %if.end.2664
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_786
.LBB12_786:                             # %if.end.2665
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_789
.LBB12_787:                             # %if.end.2666
                                        #   in Loop: Header=BB12_778 Depth=4
	jmp	.LBB12_788
.LBB12_788:                             # %for.inc.2667
                                        #   in Loop: Header=BB12_778 Depth=4
	movl	-580(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -580(%rbp)
	jmp	.LBB12_778
.LBB12_789:                             # %for.end.2669
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-580(%rbp), %eax
	cmpl	-584(%rbp), %eax
	jge	.LBB12_799
# BB#790:                               # %if.then.2672
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_791
.LBB12_791:                             # %do.body.2673
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_792
.LBB12_792:                             # %do.body.2674
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movslq	-160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB12_796
# BB#793:                               # %if.then.2683
                                        #   in Loop: Header=BB12_755 Depth=3
	leaq	-168(%rbp), %rdi
	callq	extend_range_table_work_area
	cmpq	$0, -168(%rbp)
	jne	.LBB12_795
# BB#794:                               # %if.then.2687
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_795:                             # %if.end.2688
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_796
.LBB12_796:                             # %if.end.2689
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_797
.LBB12_797:                             # %do.end.2690
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-576(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-576(%rbp), %eax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movslq	%ecx, %rsi
	movq	-168(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#798:                               # %do.end.2701
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_799
.LBB12_799:                             # %if.end.2702
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_800
.LBB12_800:                             # %if.end.2703
                                        #   in Loop: Header=BB12_755 Depth=3
	jmp	.LBB12_801
.LBB12_801:                             # %for.inc.2704
                                        #   in Loop: Header=BB12_755 Depth=3
	movl	-568(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -568(%rbp)
	jmp	.LBB12_755
.LBB12_802:                             # %for.end.2706
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_803
.LBB12_803:                             # %do.end.2707
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_804
.LBB12_804:                             # %if.end.2708
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_805
.LBB12_805:                             # %if.end.2709
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_806
.LBB12_806:                             # %if.end.2710
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_807
.LBB12_807:                             # %if.end.2711
                                        #   in Loop: Header=BB12_412 Depth=2
	jmp	.LBB12_412
.LBB12_808:                             # %for.end.2712
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_809
.LBB12_809:                             # %while.cond.2713
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movzbl	-1(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1557(%rbp)        # 1-byte Spill
	jle	.LBB12_811
# BB#810:                               # %land.rhs
                                        #   in Loop: Header=BB12_809 Depth=2
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$0, %ecx
	sete	%sil
	movb	%sil, -1557(%rbp)       # 1-byte Spill
.LBB12_811:                             # %land.end
                                        #   in Loop: Header=BB12_809 Depth=2
	movb	-1557(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_812
	jmp	.LBB12_813
.LBB12_812:                             # %while.body.2726
                                        #   in Loop: Header=BB12_809 Depth=2
	movq	-56(%rbp), %rax
	movb	-1(%rax), %cl
	addb	$-1, %cl
	movb	%cl, -1(%rax)
	jmp	.LBB12_809
.LBB12_813:                             # %while.end.2729
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.LBB12_815
# BB#814:                               # %lor.lhs.false.2736
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -152(%rbp)
	je	.LBB12_845
.LBB12_815:                             # %if.then.2739
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -600(%rbp)
.LBB12_816:                             # %while.cond.2742
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	imull	$3, -600(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_834
# BB#817:                               # %while.body.2754
                                        #   in Loop: Header=BB12_816 Depth=2
	jmp	.LBB12_818
.LBB12_818:                             # %do.body.2755
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_820
# BB#819:                               # %if.then.2761
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_820:                             # %if.end.2762
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_822
# BB#821:                               # %if.then.2768
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_822:                             # %if.end.2770
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_824
# BB#823:                               # %if.then.2779
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_824:                             # %if.end.2780
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-608(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_832
# BB#825:                               # %if.then.2784
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-616(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_827
# BB#826:                               # %if.then.2796
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-616(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_827:                             # %if.end.2801
                                        #   in Loop: Header=BB12_816 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_829
# BB#828:                               # %if.then.2803
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-616(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_829:                             # %if.end.2808
                                        #   in Loop: Header=BB12_816 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_831
# BB#830:                               # %if.then.2810
                                        #   in Loop: Header=BB12_816 Depth=2
	movq	-616(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_831:                             # %if.end.2815
                                        #   in Loop: Header=BB12_816 Depth=2
	jmp	.LBB12_832
.LBB12_832:                             # %if.end.2816
                                        #   in Loop: Header=BB12_816 Depth=2
	jmp	.LBB12_833
.LBB12_833:                             # %do.end.2817
                                        #   in Loop: Header=BB12_816 Depth=2
	jmp	.LBB12_816
.LBB12_834:                             # %while.end.2818
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-120(%rbp), %rax
	movzbl	1(%rax), %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
	movl	-152(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rax)
	movl	-152(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rax)
# BB#835:                               # %do.body.2830
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_836
.LBB12_836:                             # %do.body.2831
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$2, %eax
	movl	-600(%rbp), %ecx
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1564(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	andl	$255, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdi
	movb	%sil, (%rdi)
	movl	-600(%rbp), %eax
	cltd
	idivl	%ecx
	sarl	$8, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdi
	movb	%sil, 1(%rdi)
# BB#837:                               # %do.end.2840
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#838:                               # %do.end.2842
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -596(%rbp)
.LBB12_839:                             # %for.cond.2843
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-596(%rbp), %eax
	cmpl	-600(%rbp), %eax
	jge	.LBB12_844
# BB#840:                               # %for.body.2846
                                        #   in Loop: Header=BB12_839 Depth=2
	jmp	.LBB12_841
.LBB12_841:                             # %do.body.2847
                                        #   in Loop: Header=BB12_839 Depth=2
	movslq	-596(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$255, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, (%rax)
	movslq	-596(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	sarl	$8, %edx
	andl	$255, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 1(%rax)
	movslq	-596(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	sarl	$16, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
# BB#842:                               # %do.end.2868
                                        #   in Loop: Header=BB12_839 Depth=2
	jmp	.LBB12_843
.LBB12_843:                             # %for.inc.2869
                                        #   in Loop: Header=BB12_839 Depth=2
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -596(%rbp)
	jmp	.LBB12_839
.LBB12_844:                             # %for.end.2871
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_845
.LBB12_845:                             # %if.end.2872
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_846:                             # %sw.bb.2873
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB12_848
# BB#847:                               # %if.then.2876
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_889
.LBB12_848:                             # %if.else.2877
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_849:                             # %sw.bb.2878
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB12_851
# BB#850:                               # %if.then.2881
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1007
.LBB12_851:                             # %if.else.2882
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_852:                             # %sw.bb.2883
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2048, %rax             # imm = 0x800
	cmpq	$0, %rax
	je	.LBB12_854
# BB#853:                               # %if.then.2886
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1052
.LBB12_854:                             # %if.else.2887
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_855:                             # %sw.bb.2888
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB12_857
# BB#856:                               # %if.then.2891
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1052
.LBB12_857:                             # %if.else.2892
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_858:                             # %sw.bb.2893
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB12_861
# BB#859:                               # %land.lhs.true.2896
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB12_861
# BB#860:                               # %if.then.2899
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1101
.LBB12_861:                             # %if.else.2900
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_862:                             # %sw.bb.2901
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_869
# BB#863:                               # %if.then.2904
	jmp	.LBB12_864
.LBB12_864:                             # %do.body.2905
	jmp	.LBB12_865
.LBB12_865:                             # %do.body.2906
	cmpq	$0, -168(%rbp)
	je	.LBB12_867
# BB#866:                               # %if.then.2909
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_867:                             # %if.end.2911
	jmp	.LBB12_868
.LBB12_868:                             # %do.end.2912
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$5, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_869:                             # %if.end.2915
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_870
.LBB12_870:                             # %do.body.2916
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_872
# BB#871:                               # %if.then.2920
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_872:                             # %if.end.2921
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_883
# BB#873:                               # %cond.true.2924
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_875
# BB#874:                               # %cond.true.2929
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -620(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1568(%rbp)       # 4-byte Spill
	jmp	.LBB12_882
.LBB12_875:                             # %cond.false.2932
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_877
# BB#876:                               # %cond.true.2937
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -620(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1572(%rbp)       # 4-byte Spill
	jmp	.LBB12_881
.LBB12_877:                             # %cond.false.2952
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_879
# BB#878:                               # %cond.true.2957
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -620(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1576(%rbp)       # 4-byte Spill
	jmp	.LBB12_880
.LBB12_879:                             # %cond.false.2971
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-620(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1576(%rbp)       # 4-byte Spill
.LBB12_880:                             # %cond.end.2973
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1576(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1572(%rbp)       # 4-byte Spill
.LBB12_881:                             # %cond.end.2975
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1572(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1568(%rbp)       # 4-byte Spill
.LBB12_882:                             # %cond.end.2977
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1568(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1580(%rbp)       # 4-byte Spill
	jmp	.LBB12_884
.LBB12_883:                             # %cond.false.2979
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -620(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1580(%rbp)       # 4-byte Spill
.LBB12_884:                             # %cond.end.2981
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1580(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-620(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#885:                               # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$39, %ecx
	movl	%eax, -1584(%rbp)       # 4-byte Spill
	movl	%ecx, -1588(%rbp)       # 4-byte Spill
	je	.LBB12_1746
	jmp	.LBB12_1970
.LBB12_1970:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -1592(%rbp)       # 4-byte Spill
	je	.LBB12_886
	jmp	.LBB12_1971
.LBB12_1971:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -1596(%rbp)       # 4-byte Spill
	je	.LBB12_995
	jmp	.LBB12_1972
.LBB12_1972:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -1600(%rbp)       # 4-byte Spill
	je	.LBB12_1803
	jmp	.LBB12_1973
.LBB12_1973:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -1604(%rbp)       # 4-byte Spill
	jb	.LBB12_1770
	jmp	.LBB12_1974
.LBB12_1974:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -1608(%rbp)       # 4-byte Spill
	je	.LBB12_1554
	jmp	.LBB12_1975
.LBB12_1975:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -1612(%rbp)       # 4-byte Spill
	je	.LBB12_1332
	jmp	.LBB12_1976
.LBB12_1976:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -1616(%rbp)       # 4-byte Spill
	je	.LBB12_1578
	jmp	.LBB12_1977
.LBB12_1977:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -1620(%rbp)       # 4-byte Spill
	je	.LBB12_1803
	jmp	.LBB12_1978
.LBB12_1978:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -1624(%rbp)       # 4-byte Spill
	je	.LBB12_1698
	jmp	.LBB12_1979
.LBB12_1979:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -1628(%rbp)       # 4-byte Spill
	je	.LBB12_1468
	jmp	.LBB12_1980
.LBB12_1980:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -1632(%rbp)       # 4-byte Spill
	je	.LBB12_1392
	jmp	.LBB12_1981
.LBB12_1981:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -1636(%rbp)       # 4-byte Spill
	je	.LBB12_1530
	jmp	.LBB12_1982
.LBB12_1982:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -1640(%rbp)       # 4-byte Spill
	je	.LBB12_1602
	jmp	.LBB12_1983
.LBB12_1983:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$96, %eax
	movl	%eax, -1644(%rbp)       # 4-byte Spill
	je	.LBB12_1722
	jmp	.LBB12_1984
.LBB12_1984:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -1648(%rbp)       # 4-byte Spill
	je	.LBB12_1674
	jmp	.LBB12_1985
.LBB12_1985:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -1652(%rbp)       # 4-byte Spill
	je	.LBB12_1430
	jmp	.LBB12_1986
.LBB12_1986:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -1656(%rbp)       # 4-byte Spill
	je	.LBB12_1354
	jmp	.LBB12_1987
.LBB12_1987:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -1660(%rbp)       # 4-byte Spill
	je	.LBB12_1506
	jmp	.LBB12_1988
.LBB12_1988:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -1664(%rbp)       # 4-byte Spill
	je	.LBB12_1097
	jmp	.LBB12_1989
.LBB12_1989:                            # %do.end.2985
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1584(%rbp), %eax       # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -1668(%rbp)       # 4-byte Spill
	je	.LBB12_1048
	jmp	.LBB12_1806
.LBB12_886:                             # %sw.bb.2986
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB12_888
# BB#887:                               # %if.then.2989
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_888:                             # %if.end.2990
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_889
.LBB12_889:                             # %handle_open
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -624(%rbp)
	movl	$0, -628(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB12_946
# BB#890:                               # %if.then.2994
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2097152, %rax          # imm = 0x200000
	cmpq	$0, %rax
	je	.LBB12_945
# BB#891:                               # %land.lhs.true.2997
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB12_945
# BB#892:                               # %if.then.3001
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_893
.LBB12_893:                             # %do.body.3002
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_895
# BB#894:                               # %if.then.3006
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_895:                             # %if.end.3007
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_906
# BB#896:                               # %cond.true.3010
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_898
# BB#897:                               # %cond.true.3015
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -632(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1672(%rbp)       # 4-byte Spill
	jmp	.LBB12_905
.LBB12_898:                             # %cond.false.3018
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_900
# BB#899:                               # %cond.true.3023
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -632(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1676(%rbp)       # 4-byte Spill
	jmp	.LBB12_904
.LBB12_900:                             # %cond.false.3038
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_902
# BB#901:                               # %cond.true.3043
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -632(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1680(%rbp)       # 4-byte Spill
	jmp	.LBB12_903
.LBB12_902:                             # %cond.false.3057
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-632(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1680(%rbp)       # 4-byte Spill
.LBB12_903:                             # %cond.end.3059
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1680(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1676(%rbp)       # 4-byte Spill
.LBB12_904:                             # %cond.end.3061
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1676(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1672(%rbp)       # 4-byte Spill
.LBB12_905:                             # %cond.end.3063
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1672(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	jmp	.LBB12_907
.LBB12_906:                             # %cond.false.3065
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -632(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1684(%rbp)       # 4-byte Spill
.LBB12_907:                             # %cond.end.3067
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1684(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-632(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#908:                               # %do.end.3071
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_909
.LBB12_909:                             # %while.cond.3072
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -624(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB12_910
	jmp	.LBB12_944
.LBB12_910:                             # %while.body.3075
                                        #   in Loop: Header=BB12_909 Depth=2
	jmp	.LBB12_911
.LBB12_911:                             # %do.body.3076
                                        #   in Loop: Header=BB12_909 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_913
# BB#912:                               # %if.then.3080
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_913:                             # %if.end.3081
                                        #   in Loop: Header=BB12_909 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_924
# BB#914:                               # %cond.true.3084
                                        #   in Loop: Header=BB12_909 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_916
# BB#915:                               # %cond.true.3089
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	$1, -636(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1688(%rbp)       # 4-byte Spill
	jmp	.LBB12_923
.LBB12_916:                             # %cond.false.3092
                                        #   in Loop: Header=BB12_909 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_918
# BB#917:                               # %cond.true.3097
                                        #   in Loop: Header=BB12_909 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -636(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1692(%rbp)       # 4-byte Spill
	jmp	.LBB12_922
.LBB12_918:                             # %cond.false.3112
                                        #   in Loop: Header=BB12_909 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_920
# BB#919:                               # %cond.true.3117
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	$3, -636(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1696(%rbp)       # 4-byte Spill
	jmp	.LBB12_921
.LBB12_920:                             # %cond.false.3131
                                        #   in Loop: Header=BB12_909 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-636(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1696(%rbp)       # 4-byte Spill
.LBB12_921:                             # %cond.end.3133
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1696(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1692(%rbp)       # 4-byte Spill
.LBB12_922:                             # %cond.end.3135
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1692(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1688(%rbp)       # 4-byte Spill
.LBB12_923:                             # %cond.end.3137
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1688(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	jmp	.LBB12_925
.LBB12_924:                             # %cond.false.3139
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	$1, -636(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1700(%rbp)       # 4-byte Spill
.LBB12_925:                             # %cond.end.3141
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1700(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-636(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#926:                               # %do.end.3145
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$48, %ecx
	movl	%eax, -1704(%rbp)       # 4-byte Spill
	movl	%ecx, -1708(%rbp)       # 4-byte Spill
	je	.LBB12_928
	jmp	.LBB12_1990
.LBB12_1990:                            # %do.end.3145
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1704(%rbp), %eax       # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -1712(%rbp)       # 4-byte Spill
	jb	.LBB12_936
	jmp	.LBB12_1991
.LBB12_1991:                            # %do.end.3145
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	-1704(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -1716(%rbp)       # 4-byte Spill
	jne	.LBB12_937
	jmp	.LBB12_927
.LBB12_927:                             # %sw.bb.3146
                                        #   in Loop: Header=BB12_909 Depth=2
	movl	$1, -624(%rbp)
	jmp	.LBB12_943
.LBB12_928:                             # %sw.bb.3147
                                        #   in Loop: Header=BB12_909 Depth=2
	cmpl	$0, -628(%rbp)
	jne	.LBB12_935
# BB#929:                               # %if.then.3150
	jmp	.LBB12_930
.LBB12_930:                             # %do.body.3151
	jmp	.LBB12_931
.LBB12_931:                             # %do.body.3152
	cmpq	$0, -168(%rbp)
	je	.LBB12_933
# BB#932:                               # %if.then.3155
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_933:                             # %if.end.3157
	jmp	.LBB12_934
.LBB12_934:                             # %do.end.3158
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$2, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_935:                             # %if.end.3161
                                        #   in Loop: Header=BB12_909 Depth=2
	jmp	.LBB12_936
.LBB12_936:                             # %sw.bb.3162
                                        #   in Loop: Header=BB12_909 Depth=2
	imull	$10, -628(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -628(%rbp)
	jmp	.LBB12_943
.LBB12_937:                             # %sw.default
	jmp	.LBB12_938
.LBB12_938:                             # %do.body.3166
	jmp	.LBB12_939
.LBB12_939:                             # %do.body.3167
	cmpq	$0, -168(%rbp)
	je	.LBB12_941
# BB#940:                               # %if.then.3170
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_941:                             # %if.end.3172
	jmp	.LBB12_942
.LBB12_942:                             # %do.end.3173
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$2, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_943:                             # %sw.epilog
                                        #   in Loop: Header=BB12_909 Depth=2
	jmp	.LBB12_909
.LBB12_944:                             # %while.end.3176
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_945
.LBB12_945:                             # %if.end.3177
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_946
.LBB12_946:                             # %if.end.3178
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -624(%rbp)
	jne	.LBB12_948
# BB#947:                               # %if.then.3180
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movl	%ecx, %edx
	movl	%edx, -628(%rbp)
	jmp	.LBB12_963
.LBB12_948:                             # %if.else.3184
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -628(%rbp)
	je	.LBB12_961
# BB#949:                               # %if.then.3186
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -624(%rbp)
	movslq	-628(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jbe	.LBB12_951
# BB#950:                               # %if.then.3191
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-628(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB12_960
.LBB12_951:                             # %if.else.3194
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-628(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	48(%rcx), %rax
	ja	.LBB12_953
# BB#952:                               # %lor.lhs.false.3199
                                        #   in Loop: Header=BB12_15 Depth=1
	leaq	-80(%rbp), %rax
	movl	-628(%rbp), %edi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	group_in_compile_stack
	movsbl	%al, %edi
	cmpl	$0, %edi
	je	.LBB12_959
.LBB12_953:                             # %if.then.3203
	jmp	.LBB12_954
.LBB12_954:                             # %do.body.3204
	jmp	.LBB12_955
.LBB12_955:                             # %do.body.3205
	cmpq	$0, -168(%rbp)
	je	.LBB12_957
# BB#956:                               # %if.then.3208
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_957:                             # %if.end.3210
	jmp	.LBB12_958
.LBB12_958:                             # %do.end.3211
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$2, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_959:                             # %if.end.3214
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_960
.LBB12_960:                             # %if.end.3215
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_962
.LBB12_961:                             # %if.else.3216
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	subq	48(%rdx), %rcx
	movl	%ecx, %eax
	movl	%eax, -628(%rbp)
.LBB12_962:                             # %if.end.3220
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_963
.LBB12_963:                             # %if.end.3221
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_967
# BB#964:                               # %if.then.3226
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_966
# BB#965:                               # %if.then.3236
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_966:                             # %if.end.3237
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-72(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB12_967:                             # %if.end.3240
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -144(%rbp)
	je	.LBB12_969
# BB#968:                               # %cond.true.3249
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB12_970
.LBB12_969:                             # %cond.false.3255
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB12_970
.LBB12_970:                             # %cond.end.3256
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-1728(%rbp), %rax       # 8-byte Reload
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-628(%rbp), %edx
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	movl	%edx, 24(%rax)
	cmpl	$255, -628(%rbp)
	jg	.LBB12_994
# BB#971:                               # %land.lhs.true.3275
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -628(%rbp)
	jle	.LBB12_994
# BB#972:                               # %if.then.3278
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_973
.LBB12_973:                             # %do.body.3279
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_974
.LBB12_974:                             # %while.cond.3280
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_992
# BB#975:                               # %while.body.3289
                                        #   in Loop: Header=BB12_974 Depth=2
	jmp	.LBB12_976
.LBB12_976:                             # %do.body.3290
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_978
# BB#977:                               # %if.then.3296
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_978:                             # %if.end.3297
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_980
# BB#979:                               # %if.then.3303
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_980:                             # %if.end.3305
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_982
# BB#981:                               # %if.then.3314
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_982:                             # %if.end.3315
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-648(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_990
# BB#983:                               # %if.then.3319
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-648(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-656(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-648(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_985
# BB#984:                               # %if.then.3331
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-656(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-648(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_985:                             # %if.end.3336
                                        #   in Loop: Header=BB12_974 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_987
# BB#986:                               # %if.then.3338
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-656(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-648(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_987:                             # %if.end.3343
                                        #   in Loop: Header=BB12_974 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_989
# BB#988:                               # %if.then.3345
                                        #   in Loop: Header=BB12_974 Depth=2
	movq	-656(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-648(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_989:                             # %if.end.3350
                                        #   in Loop: Header=BB12_974 Depth=2
	jmp	.LBB12_990
.LBB12_990:                             # %if.end.3351
                                        #   in Loop: Header=BB12_974 Depth=2
	jmp	.LBB12_991
.LBB12_991:                             # %do.end.3352
                                        #   in Loop: Header=BB12_974 Depth=2
	jmp	.LBB12_974
.LBB12_992:                             # %while.end.3353
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$6, (%rax)
	movl	-628(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#993:                               # %do.end.3357
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_994
.LBB12_994:                             # %if.end.3358
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$0, -112(%rbp)
	jmp	.LBB12_1808
.LBB12_995:                             # %sw.bb.3361
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB12_997
# BB#996:                               # %if.then.3364
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_997:                             # %if.end.3365
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB12_1006
# BB#998:                               # %if.then.3369
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB12_1000
# BB#999:                               # %if.then.3372
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1000:                            # %if.else.3373
	jmp	.LBB12_1001
.LBB12_1001:                            # %do.body.3374
	jmp	.LBB12_1002
.LBB12_1002:                            # %do.body.3375
	cmpq	$0, -168(%rbp)
	je	.LBB12_1004
# BB#1003:                              # %if.then.3378
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1004:                            # %if.end.3380
	jmp	.LBB12_1005
.LBB12_1005:                            # %do.end.3381
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$16, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1006:                            # %if.end.3385
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1007
.LBB12_1007:                            # %handle_close
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1008
.LBB12_1008:                            # %do.body.3386
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB12_1010
# BB#1009:                              # %if.then.3388
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB12_1010:                            # %if.end.3394
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1011
.LBB12_1011:                            # %do.end.3395
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB12_1020
# BB#1012:                              # %if.then.3399
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB12_1014
# BB#1013:                              # %if.then.3402
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1014:                            # %if.else.3403
	jmp	.LBB12_1015
.LBB12_1015:                            # %do.body.3404
	jmp	.LBB12_1016
.LBB12_1016:                            # %do.body.3405
	cmpq	$0, -168(%rbp)
	je	.LBB12_1018
# BB#1017:                              # %if.then.3408
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1018:                            # %if.end.3410
	jmp	.LBB12_1019
.LBB12_1019:                            # %do.end.3411
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$16, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1020:                            # %if.end.3415
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB12_1022
# BB#1021:                              # %cond.true.3430
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	8(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB12_1023
.LBB12_1022:                            # %cond.false.3438
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB12_1023
.LBB12_1023:                            # %cond.end.3439
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	movl	24(%rax), %edx
	movl	%edx, -660(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$255, -660(%rbp)
	jg	.LBB12_1047
# BB#1024:                              # %land.lhs.true.3453
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -660(%rbp)
	jle	.LBB12_1047
# BB#1025:                              # %if.then.3456
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1026
.LBB12_1026:                            # %do.body.3457
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1027
.LBB12_1027:                            # %while.cond.3458
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1045
# BB#1028:                              # %while.body.3467
                                        #   in Loop: Header=BB12_1027 Depth=2
	jmp	.LBB12_1029
.LBB12_1029:                            # %do.body.3468
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1031
# BB#1030:                              # %if.then.3474
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1031:                            # %if.end.3475
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1033
# BB#1032:                              # %if.then.3481
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1033:                            # %if.end.3483
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1035
# BB#1034:                              # %if.then.3492
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1035:                            # %if.end.3493
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-672(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1043
# BB#1036:                              # %if.then.3497
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-672(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-680(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-672(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1038
# BB#1037:                              # %if.then.3509
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-680(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-672(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1038:                            # %if.end.3514
                                        #   in Loop: Header=BB12_1027 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1040
# BB#1039:                              # %if.then.3516
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-680(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-672(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1040:                            # %if.end.3521
                                        #   in Loop: Header=BB12_1027 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1042
# BB#1041:                              # %if.then.3523
                                        #   in Loop: Header=BB12_1027 Depth=2
	movq	-680(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-672(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1042:                            # %if.end.3528
                                        #   in Loop: Header=BB12_1027 Depth=2
	jmp	.LBB12_1043
.LBB12_1043:                            # %if.end.3529
                                        #   in Loop: Header=BB12_1027 Depth=2
	jmp	.LBB12_1044
.LBB12_1044:                            # %do.end.3530
                                        #   in Loop: Header=BB12_1027 Depth=2
	jmp	.LBB12_1027
.LBB12_1045:                            # %while.end.3531
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$7, (%rax)
	movl	-660(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#1046:                              # %do.end.3535
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1047
.LBB12_1047:                            # %if.end.3536
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1048:                            # %sw.bb.3537
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	jne	.LBB12_1050
# BB#1049:                              # %lor.lhs.false.3540
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB12_1051
.LBB12_1050:                            # %if.then.3543
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1051:                            # %if.end.3544
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1052
.LBB12_1052:                            # %handle_alt
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB12_1054
# BB#1053:                              # %if.then.3547
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1054:                            # %if.end.3548
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1055
.LBB12_1055:                            # %while.cond.3549
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1073
# BB#1056:                              # %while.body.3558
                                        #   in Loop: Header=BB12_1055 Depth=2
	jmp	.LBB12_1057
.LBB12_1057:                            # %do.body.3559
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1059
# BB#1058:                              # %if.then.3565
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1059:                            # %if.end.3566
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1061
# BB#1060:                              # %if.then.3572
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1061:                            # %if.end.3574
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1063
# BB#1062:                              # %if.then.3583
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1063:                            # %if.end.3584
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-688(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1071
# BB#1064:                              # %if.then.3588
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-688(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-696(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-688(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1066
# BB#1065:                              # %if.then.3600
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-696(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-688(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1066:                            # %if.end.3605
                                        #   in Loop: Header=BB12_1055 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1068
# BB#1067:                              # %if.then.3607
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-696(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-688(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1068:                            # %if.end.3612
                                        #   in Loop: Header=BB12_1055 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1070
# BB#1069:                              # %if.then.3614
                                        #   in Loop: Header=BB12_1055 Depth=2
	movq	-696(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-688(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1070:                            # %if.end.3619
                                        #   in Loop: Header=BB12_1055 Depth=2
	jmp	.LBB12_1071
.LBB12_1071:                            # %if.end.3620
                                        #   in Loop: Header=BB12_1055 Depth=2
	jmp	.LBB12_1072
.LBB12_1072:                            # %do.end.3621
                                        #   in Loop: Header=BB12_1055 Depth=2
	jmp	.LBB12_1055
.LBB12_1073:                            # %while.end.3622
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$14, %edi
	movq	-128(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movq	-128(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	$0, -112(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
# BB#1074:                              # %do.body.3630
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB12_1076
# BB#1075:                              # %if.then.3632
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB12_1076:                            # %if.end.3638
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1077
.LBB12_1077:                            # %do.end.3639
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB12_1078:                            # %while.cond.3640
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1096
# BB#1079:                              # %while.body.3649
                                        #   in Loop: Header=BB12_1078 Depth=2
	jmp	.LBB12_1080
.LBB12_1080:                            # %do.body.3650
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1082
# BB#1081:                              # %if.then.3656
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1082:                            # %if.end.3657
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1084
# BB#1083:                              # %if.then.3663
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1084:                            # %if.end.3665
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1086
# BB#1085:                              # %if.then.3674
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1086:                            # %if.end.3675
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-704(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1094
# BB#1087:                              # %if.then.3679
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-712(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-704(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-712(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-704(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1089
# BB#1088:                              # %if.then.3691
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-712(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-704(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1089:                            # %if.end.3696
                                        #   in Loop: Header=BB12_1078 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1091
# BB#1090:                              # %if.then.3698
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-712(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-704(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1091:                            # %if.end.3703
                                        #   in Loop: Header=BB12_1078 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1093
# BB#1092:                              # %if.then.3705
                                        #   in Loop: Header=BB12_1078 Depth=2
	movq	-712(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-704(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1093:                            # %if.end.3710
                                        #   in Loop: Header=BB12_1078 Depth=2
	jmp	.LBB12_1094
.LBB12_1094:                            # %if.end.3711
                                        #   in Loop: Header=BB12_1078 Depth=2
	jmp	.LBB12_1095
.LBB12_1095:                            # %do.end.3712
                                        #   in Loop: Header=BB12_1078 Depth=2
	jmp	.LBB12_1078
.LBB12_1096:                            # %while.end.3713
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB12_1808
.LBB12_1097:                            # %sw.bb.3715
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB12_1099
# BB#1098:                              # %lor.lhs.false.3718
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB12_1100
.LBB12_1099:                            # %if.then.3721
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1100:                            # %if.end.3722
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1101
.LBB12_1101:                            # %handle_interval
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$0, -716(%rbp)
	movl	$-1, -720(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)
# BB#1102:                              # %do.body.3723
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1109
# BB#1103:                              # %if.then.3726
	jmp	.LBB12_1104
.LBB12_1104:                            # %do.body.3727
	jmp	.LBB12_1105
.LBB12_1105:                            # %do.body.3728
	cmpq	$0, -168(%rbp)
	je	.LBB12_1107
# BB#1106:                              # %if.then.3731
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1107:                            # %if.end.3733
	jmp	.LBB12_1108
.LBB12_1108:                            # %do.end.3734
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$9, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1109:                            # %if.else.3737
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1110
.LBB12_1110:                            # %do.body.3738
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1112
# BB#1111:                              # %if.then.3742
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1112:                            # %if.end.3743
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1123
# BB#1113:                              # %cond.true.3746
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1115
# BB#1114:                              # %cond.true.3751
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -724(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1740(%rbp)       # 4-byte Spill
	jmp	.LBB12_1122
.LBB12_1115:                            # %cond.false.3754
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1117
# BB#1116:                              # %cond.true.3759
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -724(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1744(%rbp)       # 4-byte Spill
	jmp	.LBB12_1121
.LBB12_1117:                            # %cond.false.3774
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1119
# BB#1118:                              # %cond.true.3779
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -724(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1748(%rbp)       # 4-byte Spill
	jmp	.LBB12_1120
.LBB12_1119:                            # %cond.false.3793
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-724(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1748(%rbp)       # 4-byte Spill
.LBB12_1120:                            # %cond.end.3795
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1748(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1744(%rbp)       # 4-byte Spill
.LBB12_1121:                            # %cond.end.3797
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1744(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1740(%rbp)       # 4-byte Spill
.LBB12_1122:                            # %cond.end.3799
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1740(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1752(%rbp)       # 4-byte Spill
	jmp	.LBB12_1124
.LBB12_1123:                            # %cond.false.3801
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -724(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1752(%rbp)       # 4-byte Spill
.LBB12_1124:                            # %cond.end.3803
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1752(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-724(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1125:                              # %do.end.3807
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1126
.LBB12_1126:                            # %while.cond.3808
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -1753(%rbp)        # 1-byte Spill
	jg	.LBB12_1128
# BB#1127:                              # %land.rhs.3811
                                        #   in Loop: Header=BB12_1126 Depth=2
	cmpl	$57, -44(%rbp)
	setle	%al
	movb	%al, -1753(%rbp)        # 1-byte Spill
.LBB12_1128:                            # %land.end.3814
                                        #   in Loop: Header=BB12_1126 Depth=2
	movb	-1753(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_1129
	jmp	.LBB12_1162
.LBB12_1129:                            # %while.body.3815
                                        #   in Loop: Header=BB12_1126 Depth=2
	cmpl	$0, -716(%rbp)
	jge	.LBB12_1131
# BB#1130:                              # %if.then.3818
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	$0, -716(%rbp)
.LBB12_1131:                            # %if.end.3819
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	$3276, %eax             # imm = 0xCCC
	movl	$7, %ecx
	movl	-44(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	cmpl	-716(%rbp), %eax
	jge	.LBB12_1138
# BB#1132:                              # %if.then.3826
	jmp	.LBB12_1133
.LBB12_1133:                            # %do.body.3827
	jmp	.LBB12_1134
.LBB12_1134:                            # %do.body.3828
	cmpq	$0, -168(%rbp)
	je	.LBB12_1136
# BB#1135:                              # %if.then.3831
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1136:                            # %if.end.3833
	jmp	.LBB12_1137
.LBB12_1137:                            # %do.end.3834
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$10, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1138:                            # %if.end.3837
                                        #   in Loop: Header=BB12_1126 Depth=2
	imull	$10, -716(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -716(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB12_1145
# BB#1139:                              # %if.then.3843
	jmp	.LBB12_1140
.LBB12_1140:                            # %do.body.3844
	jmp	.LBB12_1141
.LBB12_1141:                            # %do.body.3845
	cmpq	$0, -168(%rbp)
	je	.LBB12_1143
# BB#1142:                              # %if.then.3848
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1143:                            # %if.end.3850
	jmp	.LBB12_1144
.LBB12_1144:                            # %do.end.3851
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$9, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1145:                            # %if.end.3854
                                        #   in Loop: Header=BB12_1126 Depth=2
	jmp	.LBB12_1146
.LBB12_1146:                            # %do.body.3855
                                        #   in Loop: Header=BB12_1126 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1148
# BB#1147:                              # %if.then.3859
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1148:                            # %if.end.3860
                                        #   in Loop: Header=BB12_1126 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1159
# BB#1149:                              # %cond.true.3863
                                        #   in Loop: Header=BB12_1126 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1151
# BB#1150:                              # %cond.true.3868
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	$1, -728(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1760(%rbp)       # 4-byte Spill
	jmp	.LBB12_1158
.LBB12_1151:                            # %cond.false.3871
                                        #   in Loop: Header=BB12_1126 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1153
# BB#1152:                              # %cond.true.3876
                                        #   in Loop: Header=BB12_1126 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -728(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1764(%rbp)       # 4-byte Spill
	jmp	.LBB12_1157
.LBB12_1153:                            # %cond.false.3891
                                        #   in Loop: Header=BB12_1126 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1155
# BB#1154:                              # %cond.true.3896
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	$3, -728(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1768(%rbp)       # 4-byte Spill
	jmp	.LBB12_1156
.LBB12_1155:                            # %cond.false.3910
                                        #   in Loop: Header=BB12_1126 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-728(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1768(%rbp)       # 4-byte Spill
.LBB12_1156:                            # %cond.end.3912
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	-1768(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1764(%rbp)       # 4-byte Spill
.LBB12_1157:                            # %cond.end.3914
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	-1764(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1760(%rbp)       # 4-byte Spill
.LBB12_1158:                            # %cond.end.3916
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	-1760(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1772(%rbp)       # 4-byte Spill
	jmp	.LBB12_1160
.LBB12_1159:                            # %cond.false.3918
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	$1, -728(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1772(%rbp)       # 4-byte Spill
.LBB12_1160:                            # %cond.end.3920
                                        #   in Loop: Header=BB12_1126 Depth=2
	movl	-1772(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-728(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1161:                              # %do.end.3924
                                        #   in Loop: Header=BB12_1126 Depth=2
	jmp	.LBB12_1126
.LBB12_1162:                            # %while.end.3925
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1163
.LBB12_1163:                            # %if.end.3926
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1164
.LBB12_1164:                            # %do.end.3927
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$44, -44(%rbp)
	jne	.LBB12_1229
# BB#1165:                              # %if.then.3930
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1166
.LBB12_1166:                            # %do.body.3931
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1173
# BB#1167:                              # %if.then.3934
	jmp	.LBB12_1168
.LBB12_1168:                            # %do.body.3935
	jmp	.LBB12_1169
.LBB12_1169:                            # %do.body.3936
	cmpq	$0, -168(%rbp)
	je	.LBB12_1171
# BB#1170:                              # %if.then.3939
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1171:                            # %if.end.3941
	jmp	.LBB12_1172
.LBB12_1172:                            # %do.end.3942
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$9, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1173:                            # %if.else.3945
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1174
.LBB12_1174:                            # %do.body.3946
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1176
# BB#1175:                              # %if.then.3950
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1176:                            # %if.end.3951
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1187
# BB#1177:                              # %cond.true.3954
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1179
# BB#1178:                              # %cond.true.3959
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -732(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1776(%rbp)       # 4-byte Spill
	jmp	.LBB12_1186
.LBB12_1179:                            # %cond.false.3962
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1181
# BB#1180:                              # %cond.true.3967
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -732(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1780(%rbp)       # 4-byte Spill
	jmp	.LBB12_1185
.LBB12_1181:                            # %cond.false.3982
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1183
# BB#1182:                              # %cond.true.3987
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -732(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1784(%rbp)       # 4-byte Spill
	jmp	.LBB12_1184
.LBB12_1183:                            # %cond.false.4001
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-732(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1784(%rbp)       # 4-byte Spill
.LBB12_1184:                            # %cond.end.4003
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1784(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1780(%rbp)       # 4-byte Spill
.LBB12_1185:                            # %cond.end.4005
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1780(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1776(%rbp)       # 4-byte Spill
.LBB12_1186:                            # %cond.end.4007
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1776(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1788(%rbp)       # 4-byte Spill
	jmp	.LBB12_1188
.LBB12_1187:                            # %cond.false.4009
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -732(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1788(%rbp)       # 4-byte Spill
.LBB12_1188:                            # %cond.end.4011
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1788(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-732(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1189:                              # %do.end.4015
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1190
.LBB12_1190:                            # %while.cond.4016
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -1789(%rbp)        # 1-byte Spill
	jg	.LBB12_1192
# BB#1191:                              # %land.rhs.4019
                                        #   in Loop: Header=BB12_1190 Depth=2
	cmpl	$57, -44(%rbp)
	setle	%al
	movb	%al, -1789(%rbp)        # 1-byte Spill
.LBB12_1192:                            # %land.end.4022
                                        #   in Loop: Header=BB12_1190 Depth=2
	movb	-1789(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_1193
	jmp	.LBB12_1226
.LBB12_1193:                            # %while.body.4023
                                        #   in Loop: Header=BB12_1190 Depth=2
	cmpl	$0, -720(%rbp)
	jge	.LBB12_1195
# BB#1194:                              # %if.then.4026
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	$0, -720(%rbp)
.LBB12_1195:                            # %if.end.4027
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	$3276, %eax             # imm = 0xCCC
	movl	$7, %ecx
	movl	-44(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	cmpl	-720(%rbp), %eax
	jge	.LBB12_1202
# BB#1196:                              # %if.then.4034
	jmp	.LBB12_1197
.LBB12_1197:                            # %do.body.4035
	jmp	.LBB12_1198
.LBB12_1198:                            # %do.body.4036
	cmpq	$0, -168(%rbp)
	je	.LBB12_1200
# BB#1199:                              # %if.then.4039
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1200:                            # %if.end.4041
	jmp	.LBB12_1201
.LBB12_1201:                            # %do.end.4042
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$10, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1202:                            # %if.end.4045
                                        #   in Loop: Header=BB12_1190 Depth=2
	imull	$10, -720(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -720(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB12_1209
# BB#1203:                              # %if.then.4051
	jmp	.LBB12_1204
.LBB12_1204:                            # %do.body.4052
	jmp	.LBB12_1205
.LBB12_1205:                            # %do.body.4053
	cmpq	$0, -168(%rbp)
	je	.LBB12_1207
# BB#1206:                              # %if.then.4056
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1207:                            # %if.end.4058
	jmp	.LBB12_1208
.LBB12_1208:                            # %do.end.4059
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$9, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1209:                            # %if.end.4062
                                        #   in Loop: Header=BB12_1190 Depth=2
	jmp	.LBB12_1210
.LBB12_1210:                            # %do.body.4063
                                        #   in Loop: Header=BB12_1190 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1212
# BB#1211:                              # %if.then.4067
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1212:                            # %if.end.4068
                                        #   in Loop: Header=BB12_1190 Depth=2
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1223
# BB#1213:                              # %cond.true.4071
                                        #   in Loop: Header=BB12_1190 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1215
# BB#1214:                              # %cond.true.4076
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	$1, -736(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1796(%rbp)       # 4-byte Spill
	jmp	.LBB12_1222
.LBB12_1215:                            # %cond.false.4079
                                        #   in Loop: Header=BB12_1190 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1217
# BB#1216:                              # %cond.true.4084
                                        #   in Loop: Header=BB12_1190 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -736(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1800(%rbp)       # 4-byte Spill
	jmp	.LBB12_1221
.LBB12_1217:                            # %cond.false.4099
                                        #   in Loop: Header=BB12_1190 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1219
# BB#1218:                              # %cond.true.4104
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	$3, -736(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1804(%rbp)       # 4-byte Spill
	jmp	.LBB12_1220
.LBB12_1219:                            # %cond.false.4118
                                        #   in Loop: Header=BB12_1190 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-736(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1804(%rbp)       # 4-byte Spill
.LBB12_1220:                            # %cond.end.4120
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	-1804(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1800(%rbp)       # 4-byte Spill
.LBB12_1221:                            # %cond.end.4122
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	-1800(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1796(%rbp)       # 4-byte Spill
.LBB12_1222:                            # %cond.end.4124
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	-1796(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1808(%rbp)       # 4-byte Spill
	jmp	.LBB12_1224
.LBB12_1223:                            # %cond.false.4126
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	$1, -736(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1808(%rbp)       # 4-byte Spill
.LBB12_1224:                            # %cond.end.4128
                                        #   in Loop: Header=BB12_1190 Depth=2
	movl	-1808(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-736(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1225:                              # %do.end.4132
                                        #   in Loop: Header=BB12_1190 Depth=2
	jmp	.LBB12_1190
.LBB12_1226:                            # %while.end.4133
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1227
.LBB12_1227:                            # %if.end.4134
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1228
.LBB12_1228:                            # %do.end.4135
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1230
.LBB12_1229:                            # %if.else.4136
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-716(%rbp), %eax
	movl	%eax, -720(%rbp)
.LBB12_1230:                            # %if.end.4137
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -716(%rbp)
	jl	.LBB12_1233
# BB#1231:                              # %lor.lhs.false.4140
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	cmpl	-720(%rbp), %eax
	jg	.LBB12_1239
# BB#1232:                              # %land.lhs.true.4143
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-720(%rbp), %eax
	cmpl	-716(%rbp), %eax
	jge	.LBB12_1239
.LBB12_1233:                            # %if.then.4146
	jmp	.LBB12_1234
.LBB12_1234:                            # %do.body.4147
	jmp	.LBB12_1235
.LBB12_1235:                            # %do.body.4148
	cmpq	$0, -168(%rbp)
	je	.LBB12_1237
# BB#1236:                              # %if.then.4151
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1237:                            # %if.end.4153
	jmp	.LBB12_1238
.LBB12_1238:                            # %do.end.4154
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$10, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1239:                            # %if.end.4157
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB12_1271
# BB#1240:                              # %if.then.4160
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$92, -44(%rbp)
	je	.LBB12_1247
# BB#1241:                              # %if.then.4163
	jmp	.LBB12_1242
.LBB12_1242:                            # %do.body.4164
	jmp	.LBB12_1243
.LBB12_1243:                            # %do.body.4165
	cmpq	$0, -168(%rbp)
	je	.LBB12_1245
# BB#1244:                              # %if.then.4168
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1245:                            # %if.end.4170
	jmp	.LBB12_1246
.LBB12_1246:                            # %do.end.4171
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$10, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1247:                            # %if.end.4174
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1254
# BB#1248:                              # %if.then.4177
	jmp	.LBB12_1249
.LBB12_1249:                            # %do.body.4178
	jmp	.LBB12_1250
.LBB12_1250:                            # %do.body.4179
	cmpq	$0, -168(%rbp)
	je	.LBB12_1252
# BB#1251:                              # %if.then.4182
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1252:                            # %if.end.4184
	jmp	.LBB12_1253
.LBB12_1253:                            # %do.end.4185
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$5, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1254:                            # %if.end.4188
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1255
.LBB12_1255:                            # %do.body.4189
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1257
# BB#1256:                              # %if.then.4193
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1257:                            # %if.end.4194
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1268
# BB#1258:                              # %cond.true.4197
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1260
# BB#1259:                              # %cond.true.4202
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -740(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1812(%rbp)       # 4-byte Spill
	jmp	.LBB12_1267
.LBB12_1260:                            # %cond.false.4205
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1262
# BB#1261:                              # %cond.true.4210
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -740(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1816(%rbp)       # 4-byte Spill
	jmp	.LBB12_1266
.LBB12_1262:                            # %cond.false.4225
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1264
# BB#1263:                              # %cond.true.4230
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -740(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1820(%rbp)       # 4-byte Spill
	jmp	.LBB12_1265
.LBB12_1264:                            # %cond.false.4244
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-740(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1820(%rbp)       # 4-byte Spill
.LBB12_1265:                            # %cond.end.4246
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1820(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1816(%rbp)       # 4-byte Spill
.LBB12_1266:                            # %cond.end.4248
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1816(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1812(%rbp)       # 4-byte Spill
.LBB12_1267:                            # %cond.end.4250
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1812(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1824(%rbp)       # 4-byte Spill
	jmp	.LBB12_1269
.LBB12_1268:                            # %cond.false.4252
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -740(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1824(%rbp)       # 4-byte Spill
.LBB12_1269:                            # %cond.end.4254
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1824(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-740(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1270:                              # %do.end.4258
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1271
.LBB12_1271:                            # %if.end.4259
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$125, -44(%rbp)
	je	.LBB12_1278
# BB#1272:                              # %if.then.4262
	jmp	.LBB12_1273
.LBB12_1273:                            # %do.body.4263
	jmp	.LBB12_1274
.LBB12_1274:                            # %do.body.4264
	cmpq	$0, -168(%rbp)
	je	.LBB12_1276
# BB#1275:                              # %if.then.4267
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1276:                            # %if.end.4269
	jmp	.LBB12_1277
.LBB12_1277:                            # %do.end.4270
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$10, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1278:                            # %if.end.4273
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB12_1291
# BB#1279:                              # %if.then.4275
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB12_1286
# BB#1280:                              # %if.then.4278
	jmp	.LBB12_1281
.LBB12_1281:                            # %do.body.4279
	jmp	.LBB12_1282
.LBB12_1282:                            # %do.body.4280
	cmpq	$0, -168(%rbp)
	je	.LBB12_1284
# BB#1283:                              # %if.then.4283
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1284:                            # %if.end.4285
	jmp	.LBB12_1285
.LBB12_1285:                            # %do.end.4286
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$13, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1286:                            # %if.else.4289
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	je	.LBB12_1288
# BB#1287:                              # %if.then.4292
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB12_1289
.LBB12_1288:                            # %if.else.4293
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1329
.LBB12_1289:                            # %if.end.4294
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1290
.LBB12_1290:                            # %if.end.4295
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1291
.LBB12_1291:                            # %if.end.4296
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -720(%rbp)
	jne	.LBB12_1293
# BB#1292:                              # %if.then.4299
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_1328
.LBB12_1293:                            # %if.else.4300
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$1, -716(%rbp)
	jne	.LBB12_1296
# BB#1294:                              # %land.lhs.true.4303
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$1, -720(%rbp)
	jne	.LBB12_1296
# BB#1295:                              # %if.then.4306
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1327
.LBB12_1296:                            # %if.else.4307
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -720(%rbp)
	jge	.LBB12_1298
# BB#1297:                              # %cond.true.4310
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, %eax
	movl	%eax, -1828(%rbp)       # 4-byte Spill
	jmp	.LBB12_1299
.LBB12_1298:                            # %cond.false.4311
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$5, %ecx
	cmpl	$1, -720(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -1828(%rbp)       # 4-byte Spill
.LBB12_1299:                            # %cond.end.4315
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1828(%rbp), %eax       # 4-byte Reload
	movl	%eax, -744(%rbp)
	movl	$0, -748(%rbp)
.LBB12_1300:                            # %while.cond.4318
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$20, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1318
# BB#1301:                              # %while.body.4327
                                        #   in Loop: Header=BB12_1300 Depth=2
	jmp	.LBB12_1302
.LBB12_1302:                            # %do.body.4328
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1304
# BB#1303:                              # %if.then.4334
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1304:                            # %if.end.4335
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1306
# BB#1305:                              # %if.then.4341
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1306:                            # %if.end.4343
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1308
# BB#1307:                              # %if.then.4352
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1308:                            # %if.end.4353
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-760(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1316
# BB#1309:                              # %if.then.4357
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-768(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1311
# BB#1310:                              # %if.then.4369
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-768(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1311:                            # %if.end.4374
                                        #   in Loop: Header=BB12_1300 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1313
# BB#1312:                              # %if.then.4376
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-768(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1313:                            # %if.end.4381
                                        #   in Loop: Header=BB12_1300 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1315
# BB#1314:                              # %if.then.4383
                                        #   in Loop: Header=BB12_1300 Depth=2
	movq	-768(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1315:                            # %if.end.4388
                                        #   in Loop: Header=BB12_1300 Depth=2
	jmp	.LBB12_1316
.LBB12_1316:                            # %if.end.4389
                                        #   in Loop: Header=BB12_1300 Depth=2
	jmp	.LBB12_1317
.LBB12_1317:                            # %do.end.4390
                                        #   in Loop: Header=BB12_1300 Depth=2
	jmp	.LBB12_1300
.LBB12_1318:                            # %while.end.4391
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -716(%rbp)
	jne	.LBB12_1320
# BB#1319:                              # %if.then.4394
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$16, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movl	-744(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_1321
.LBB12_1320:                            # %if.else.4404
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$19, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movl	-744(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	-716(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movq	%rax, %r8
	callq	insert_op2
	movl	$21, %edi
	movl	$5, %edx
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movl	-716(%rbp), %ecx
	movq	-56(%rbp), %r8
	callq	insert_op2
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movl	-748(%rbp), %ecx
	addl	$5, %ecx
	movl	%ecx, -748(%rbp)
.LBB12_1321:                            # %if.end.4416
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$0, -720(%rbp)
	jge	.LBB12_1323
# BB#1322:                              # %if.then.4419
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$13, %edi
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-748(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	store_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_1326
.LBB12_1323:                            # %if.else.4428
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$1, -720(%rbp)
	jle	.LBB12_1325
# BB#1324:                              # %if.then.4431
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$20, %edi
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-748(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	-720(%rbp), %r8d
	subl	$1, %r8d
	movl	%ecx, %edx
	movl	%r8d, %ecx
	callq	store_op2
	movl	$21, %edi
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %r9
	subq	%r9, %rax
	movl	%eax, %ecx
	movl	-720(%rbp), %edx
	subl	$1, %edx
	movq	-56(%rbp), %r8
	movl	%edx, -1832(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1832(%rbp), %ecx       # 4-byte Reload
	callq	insert_op2
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
.LBB12_1325:                            # %if.end.4447
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1326
.LBB12_1326:                            # %if.end.4448
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1327
.LBB12_1327:                            # %if.end.4449
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1328
.LBB12_1328:                            # %if.end.4450
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	$0, -112(%rbp)
	movq	$0, -136(%rbp)
	jmp	.LBB12_1808
.LBB12_1329:                            # %unfetch_interval
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -136(%rbp)
	movl	$123, -44(%rbp)
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB12_1331
# BB#1330:                              # %if.then.4453
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1331:                            # %if.else.4454
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1332:                            # %sw.bb.4455
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1333:                              # %do.body.4456
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1334
.LBB12_1334:                            # %while.cond.4457
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1352
# BB#1335:                              # %while.body.4466
                                        #   in Loop: Header=BB12_1334 Depth=2
	jmp	.LBB12_1336
.LBB12_1336:                            # %do.body.4467
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1338
# BB#1337:                              # %if.then.4473
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1338:                            # %if.end.4474
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1340
# BB#1339:                              # %if.then.4480
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1340:                            # %if.end.4482
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1342
# BB#1341:                              # %if.then.4491
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1342:                            # %if.end.4492
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-776(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1350
# BB#1343:                              # %if.then.4496
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-776(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-784(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-776(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1345
# BB#1344:                              # %if.then.4508
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-784(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-776(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1345:                            # %if.end.4513
                                        #   in Loop: Header=BB12_1334 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1347
# BB#1346:                              # %if.then.4515
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-784(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-776(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1347:                            # %if.end.4520
                                        #   in Loop: Header=BB12_1334 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1349
# BB#1348:                              # %if.then.4522
                                        #   in Loop: Header=BB12_1334 Depth=2
	movq	-784(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-776(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1349:                            # %if.end.4527
                                        #   in Loop: Header=BB12_1334 Depth=2
	jmp	.LBB12_1350
.LBB12_1350:                            # %if.end.4528
                                        #   in Loop: Header=BB12_1334 Depth=2
	jmp	.LBB12_1351
.LBB12_1351:                            # %do.end.4529
                                        #   in Loop: Header=BB12_1334 Depth=2
	jmp	.LBB12_1334
.LBB12_1352:                            # %while.end.4530
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$31, (%rax)
# BB#1353:                              # %do.end.4532
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1354:                            # %sw.bb.4533
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1355:                              # %do.body.4534
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1357
# BB#1356:                              # %if.then.4538
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1357:                            # %if.end.4539
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1368
# BB#1358:                              # %cond.true.4542
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1360
# BB#1359:                              # %cond.true.4547
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -788(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1836(%rbp)       # 4-byte Spill
	jmp	.LBB12_1367
.LBB12_1360:                            # %cond.false.4550
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1362
# BB#1361:                              # %cond.true.4555
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -788(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1840(%rbp)       # 4-byte Spill
	jmp	.LBB12_1366
.LBB12_1362:                            # %cond.false.4570
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1364
# BB#1363:                              # %cond.true.4575
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -788(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1844(%rbp)       # 4-byte Spill
	jmp	.LBB12_1365
.LBB12_1364:                            # %cond.false.4589
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-788(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1844(%rbp)       # 4-byte Spill
.LBB12_1365:                            # %cond.end.4591
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1844(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1840(%rbp)       # 4-byte Spill
.LBB12_1366:                            # %cond.end.4593
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1840(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1836(%rbp)       # 4-byte Spill
.LBB12_1367:                            # %cond.end.4595
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1836(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1848(%rbp)       # 4-byte Spill
	jmp	.LBB12_1369
.LBB12_1368:                            # %cond.false.4597
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -788(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1848(%rbp)       # 4-byte Spill
.LBB12_1369:                            # %cond.end.4599
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1848(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-788(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1370:                              # %do.end.4603
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1371
.LBB12_1371:                            # %do.body.4604
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1372
.LBB12_1372:                            # %while.cond.4605
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1390
# BB#1373:                              # %while.body.4614
                                        #   in Loop: Header=BB12_1372 Depth=2
	jmp	.LBB12_1374
.LBB12_1374:                            # %do.body.4615
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1376
# BB#1375:                              # %if.then.4621
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1376:                            # %if.end.4622
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1378
# BB#1377:                              # %if.then.4628
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1378:                            # %if.end.4630
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1380
# BB#1379:                              # %if.then.4639
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1380:                            # %if.end.4640
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-800(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1388
# BB#1381:                              # %if.then.4644
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-808(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1383
# BB#1382:                              # %if.then.4656
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-808(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1383:                            # %if.end.4661
                                        #   in Loop: Header=BB12_1372 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1385
# BB#1384:                              # %if.then.4663
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-808(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1385:                            # %if.end.4668
                                        #   in Loop: Header=BB12_1372 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1387
# BB#1386:                              # %if.then.4670
                                        #   in Loop: Header=BB12_1372 Depth=2
	movq	-808(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1387:                            # %if.end.4675
                                        #   in Loop: Header=BB12_1372 Depth=2
	jmp	.LBB12_1388
.LBB12_1388:                            # %if.end.4676
                                        #   in Loop: Header=BB12_1372 Depth=2
	jmp	.LBB12_1389
.LBB12_1389:                            # %do.end.4677
                                        #   in Loop: Header=BB12_1372 Depth=2
	jmp	.LBB12_1372
.LBB12_1390:                            # %while.end.4678
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$28, (%rax)
	movslq	-44(%rbp), %rax
	movb	syntax_spec_code(,%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
# BB#1391:                              # %do.end.4683
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1392:                            # %sw.bb.4684
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1393:                              # %do.body.4685
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1395
# BB#1394:                              # %if.then.4689
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1395:                            # %if.end.4690
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1406
# BB#1396:                              # %cond.true.4693
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1398
# BB#1397:                              # %cond.true.4698
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -812(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1852(%rbp)       # 4-byte Spill
	jmp	.LBB12_1405
.LBB12_1398:                            # %cond.false.4701
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1400
# BB#1399:                              # %cond.true.4706
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -812(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1856(%rbp)       # 4-byte Spill
	jmp	.LBB12_1404
.LBB12_1400:                            # %cond.false.4721
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1402
# BB#1401:                              # %cond.true.4726
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -812(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1860(%rbp)       # 4-byte Spill
	jmp	.LBB12_1403
.LBB12_1402:                            # %cond.false.4740
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-812(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1860(%rbp)       # 4-byte Spill
.LBB12_1403:                            # %cond.end.4742
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1860(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1856(%rbp)       # 4-byte Spill
.LBB12_1404:                            # %cond.end.4744
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1856(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1852(%rbp)       # 4-byte Spill
.LBB12_1405:                            # %cond.end.4746
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1852(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1864(%rbp)       # 4-byte Spill
	jmp	.LBB12_1407
.LBB12_1406:                            # %cond.false.4748
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -812(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1864(%rbp)       # 4-byte Spill
.LBB12_1407:                            # %cond.end.4750
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1864(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-812(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1408:                              # %do.end.4754
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1409
.LBB12_1409:                            # %do.body.4755
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1410
.LBB12_1410:                            # %while.cond.4756
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1428
# BB#1411:                              # %while.body.4765
                                        #   in Loop: Header=BB12_1410 Depth=2
	jmp	.LBB12_1412
.LBB12_1412:                            # %do.body.4766
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1414
# BB#1413:                              # %if.then.4772
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1414:                            # %if.end.4773
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1416
# BB#1415:                              # %if.then.4779
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1416:                            # %if.end.4781
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1418
# BB#1417:                              # %if.then.4790
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1418:                            # %if.end.4791
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-824(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1426
# BB#1419:                              # %if.then.4795
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-832(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-824(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-832(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-824(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1421
# BB#1420:                              # %if.then.4807
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-832(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-824(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1421:                            # %if.end.4812
                                        #   in Loop: Header=BB12_1410 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1423
# BB#1422:                              # %if.then.4814
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-832(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-824(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1423:                            # %if.end.4819
                                        #   in Loop: Header=BB12_1410 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1425
# BB#1424:                              # %if.then.4821
                                        #   in Loop: Header=BB12_1410 Depth=2
	movq	-832(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-824(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1425:                            # %if.end.4826
                                        #   in Loop: Header=BB12_1410 Depth=2
	jmp	.LBB12_1426
.LBB12_1426:                            # %if.end.4827
                                        #   in Loop: Header=BB12_1410 Depth=2
	jmp	.LBB12_1427
.LBB12_1427:                            # %do.end.4828
                                        #   in Loop: Header=BB12_1410 Depth=2
	jmp	.LBB12_1410
.LBB12_1428:                            # %while.end.4829
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$29, (%rax)
	movslq	-44(%rbp), %rax
	movb	syntax_spec_code(,%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
# BB#1429:                              # %do.end.4834
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1430:                            # %sw.bb.4835
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1431:                              # %do.body.4836
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1433
# BB#1432:                              # %if.then.4840
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1433:                            # %if.end.4841
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1444
# BB#1434:                              # %cond.true.4844
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1436
# BB#1435:                              # %cond.true.4849
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -836(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1868(%rbp)       # 4-byte Spill
	jmp	.LBB12_1443
.LBB12_1436:                            # %cond.false.4852
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1438
# BB#1437:                              # %cond.true.4857
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -836(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1872(%rbp)       # 4-byte Spill
	jmp	.LBB12_1442
.LBB12_1438:                            # %cond.false.4872
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1440
# BB#1439:                              # %cond.true.4877
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -836(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1876(%rbp)       # 4-byte Spill
	jmp	.LBB12_1441
.LBB12_1440:                            # %cond.false.4891
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-836(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1876(%rbp)       # 4-byte Spill
.LBB12_1441:                            # %cond.end.4893
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1876(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1872(%rbp)       # 4-byte Spill
.LBB12_1442:                            # %cond.end.4895
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1872(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1868(%rbp)       # 4-byte Spill
.LBB12_1443:                            # %cond.end.4897
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1868(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1880(%rbp)       # 4-byte Spill
	jmp	.LBB12_1445
.LBB12_1444:                            # %cond.false.4899
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -836(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1880(%rbp)       # 4-byte Spill
.LBB12_1445:                            # %cond.end.4901
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1880(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-836(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1446:                              # %do.end.4905
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1447
.LBB12_1447:                            # %do.body.4906
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1448
.LBB12_1448:                            # %while.cond.4907
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1466
# BB#1449:                              # %while.body.4916
                                        #   in Loop: Header=BB12_1448 Depth=2
	jmp	.LBB12_1450
.LBB12_1450:                            # %do.body.4917
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1452
# BB#1451:                              # %if.then.4923
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1452:                            # %if.end.4924
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1454
# BB#1453:                              # %if.then.4930
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1454:                            # %if.end.4932
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1456
# BB#1455:                              # %if.then.4941
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1456:                            # %if.end.4942
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-848(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1464
# BB#1457:                              # %if.then.4946
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-856(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1459
# BB#1458:                              # %if.then.4958
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-856(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1459:                            # %if.end.4963
                                        #   in Loop: Header=BB12_1448 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1461
# BB#1460:                              # %if.then.4965
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-856(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1461:                            # %if.end.4970
                                        #   in Loop: Header=BB12_1448 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1463
# BB#1462:                              # %if.then.4972
                                        #   in Loop: Header=BB12_1448 Depth=2
	movq	-856(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1463:                            # %if.end.4977
                                        #   in Loop: Header=BB12_1448 Depth=2
	jmp	.LBB12_1464
.LBB12_1464:                            # %if.end.4978
                                        #   in Loop: Header=BB12_1448 Depth=2
	jmp	.LBB12_1465
.LBB12_1465:                            # %do.end.4979
                                        #   in Loop: Header=BB12_1448 Depth=2
	jmp	.LBB12_1448
.LBB12_1466:                            # %while.end.4980
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$33, (%rax)
	movl	-44(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#1467:                              # %do.end.4984
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1468:                            # %sw.bb.4985
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1469:                              # %do.body.4986
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1471
# BB#1470:                              # %if.then.4990
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1471:                            # %if.end.4991
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1482
# BB#1472:                              # %cond.true.4994
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1474
# BB#1473:                              # %cond.true.4999
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -860(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1884(%rbp)       # 4-byte Spill
	jmp	.LBB12_1481
.LBB12_1474:                            # %cond.false.5002
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1476
# BB#1475:                              # %cond.true.5007
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -860(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1888(%rbp)       # 4-byte Spill
	jmp	.LBB12_1480
.LBB12_1476:                            # %cond.false.5022
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1478
# BB#1477:                              # %cond.true.5027
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -860(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB12_1479
.LBB12_1478:                            # %cond.false.5041
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-860(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1892(%rbp)       # 4-byte Spill
.LBB12_1479:                            # %cond.end.5043
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1892(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1888(%rbp)       # 4-byte Spill
.LBB12_1480:                            # %cond.end.5045
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1888(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1884(%rbp)       # 4-byte Spill
.LBB12_1481:                            # %cond.end.5047
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1884(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1896(%rbp)       # 4-byte Spill
	jmp	.LBB12_1483
.LBB12_1482:                            # %cond.false.5049
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -860(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1896(%rbp)       # 4-byte Spill
.LBB12_1483:                            # %cond.end.5051
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1896(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-860(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1484:                              # %do.end.5055
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1485
.LBB12_1485:                            # %do.body.5056
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1486
.LBB12_1486:                            # %while.cond.5057
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1504
# BB#1487:                              # %while.body.5066
                                        #   in Loop: Header=BB12_1486 Depth=2
	jmp	.LBB12_1488
.LBB12_1488:                            # %do.body.5067
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -872(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1490
# BB#1489:                              # %if.then.5073
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1490:                            # %if.end.5074
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1492
# BB#1491:                              # %if.then.5080
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1492:                            # %if.end.5082
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1494
# BB#1493:                              # %if.then.5091
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1494:                            # %if.end.5092
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-872(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1502
# BB#1495:                              # %if.then.5096
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-872(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-880(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-872(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1497
# BB#1496:                              # %if.then.5108
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-880(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-872(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1497:                            # %if.end.5113
                                        #   in Loop: Header=BB12_1486 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1499
# BB#1498:                              # %if.then.5115
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-880(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-872(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1499:                            # %if.end.5120
                                        #   in Loop: Header=BB12_1486 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1501
# BB#1500:                              # %if.then.5122
                                        #   in Loop: Header=BB12_1486 Depth=2
	movq	-880(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-872(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1501:                            # %if.end.5127
                                        #   in Loop: Header=BB12_1486 Depth=2
	jmp	.LBB12_1502
.LBB12_1502:                            # %if.end.5128
                                        #   in Loop: Header=BB12_1486 Depth=2
	jmp	.LBB12_1503
.LBB12_1503:                            # %do.end.5129
                                        #   in Loop: Header=BB12_1486 Depth=2
	jmp	.LBB12_1486
.LBB12_1504:                            # %while.end.5130
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$34, (%rax)
	movl	-44(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#1505:                              # %do.end.5134
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1506:                            # %sw.bb.5135
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1508
# BB#1507:                              # %if.then.5138
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1508:                            # %if.end.5139
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1509:                              # %do.body.5140
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1510
.LBB12_1510:                            # %while.cond.5141
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1528
# BB#1511:                              # %while.body.5150
                                        #   in Loop: Header=BB12_1510 Depth=2
	jmp	.LBB12_1512
.LBB12_1512:                            # %do.body.5151
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1514
# BB#1513:                              # %if.then.5157
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1514:                            # %if.end.5158
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1516
# BB#1515:                              # %if.then.5164
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1516:                            # %if.end.5166
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1518
# BB#1517:                              # %if.then.5175
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1518:                            # %if.end.5176
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-888(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1526
# BB#1519:                              # %if.then.5180
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-896(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1521
# BB#1520:                              # %if.then.5192
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-896(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1521:                            # %if.end.5197
                                        #   in Loop: Header=BB12_1510 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1523
# BB#1522:                              # %if.then.5199
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-896(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1523:                            # %if.end.5204
                                        #   in Loop: Header=BB12_1510 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1525
# BB#1524:                              # %if.then.5206
                                        #   in Loop: Header=BB12_1510 Depth=2
	movq	-896(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1525:                            # %if.end.5211
                                        #   in Loop: Header=BB12_1510 Depth=2
	jmp	.LBB12_1526
.LBB12_1526:                            # %if.end.5212
                                        #   in Loop: Header=BB12_1510 Depth=2
	jmp	.LBB12_1527
.LBB12_1527:                            # %do.end.5213
                                        #   in Loop: Header=BB12_1510 Depth=2
	jmp	.LBB12_1510
.LBB12_1528:                            # %while.end.5214
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$28, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$2, (%rax)
# BB#1529:                              # %do.end.5217
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1530:                            # %sw.bb.5218
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1532
# BB#1531:                              # %if.then.5221
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1532:                            # %if.end.5222
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1533:                              # %do.body.5223
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1534
.LBB12_1534:                            # %while.cond.5224
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1552
# BB#1535:                              # %while.body.5233
                                        #   in Loop: Header=BB12_1534 Depth=2
	jmp	.LBB12_1536
.LBB12_1536:                            # %do.body.5234
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1538
# BB#1537:                              # %if.then.5240
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1538:                            # %if.end.5241
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1540
# BB#1539:                              # %if.then.5247
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1540:                            # %if.end.5249
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1542
# BB#1541:                              # %if.then.5258
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1542:                            # %if.end.5259
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-904(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1550
# BB#1543:                              # %if.then.5263
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-912(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1545
# BB#1544:                              # %if.then.5275
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-912(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1545:                            # %if.end.5280
                                        #   in Loop: Header=BB12_1534 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1547
# BB#1546:                              # %if.then.5282
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-912(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1547:                            # %if.end.5287
                                        #   in Loop: Header=BB12_1534 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1549
# BB#1548:                              # %if.then.5289
                                        #   in Loop: Header=BB12_1534 Depth=2
	movq	-912(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1549:                            # %if.end.5294
                                        #   in Loop: Header=BB12_1534 Depth=2
	jmp	.LBB12_1550
.LBB12_1550:                            # %if.end.5295
                                        #   in Loop: Header=BB12_1534 Depth=2
	jmp	.LBB12_1551
.LBB12_1551:                            # %do.end.5296
                                        #   in Loop: Header=BB12_1534 Depth=2
	jmp	.LBB12_1534
.LBB12_1552:                            # %while.end.5297
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$29, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$2, (%rax)
# BB#1553:                              # %do.end.5300
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1554:                            # %sw.bb.5301
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1556
# BB#1555:                              # %if.then.5304
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1556:                            # %if.end.5305
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1557:                              # %do.body.5306
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1558
.LBB12_1558:                            # %while.cond.5307
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1576
# BB#1559:                              # %while.body.5316
                                        #   in Loop: Header=BB12_1558 Depth=2
	jmp	.LBB12_1560
.LBB12_1560:                            # %do.body.5317
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -920(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1562
# BB#1561:                              # %if.then.5323
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1562:                            # %if.end.5324
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1564
# BB#1563:                              # %if.then.5330
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1564:                            # %if.end.5332
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1566
# BB#1565:                              # %if.then.5341
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1566:                            # %if.end.5342
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-920(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1574
# BB#1567:                              # %if.then.5346
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-928(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1569
# BB#1568:                              # %if.then.5358
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-928(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1569:                            # %if.end.5363
                                        #   in Loop: Header=BB12_1558 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1571
# BB#1570:                              # %if.then.5365
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-928(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1571:                            # %if.end.5370
                                        #   in Loop: Header=BB12_1558 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1573
# BB#1572:                              # %if.then.5372
                                        #   in Loop: Header=BB12_1558 Depth=2
	movq	-928(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1573:                            # %if.end.5377
                                        #   in Loop: Header=BB12_1558 Depth=2
	jmp	.LBB12_1574
.LBB12_1574:                            # %if.end.5378
                                        #   in Loop: Header=BB12_1558 Depth=2
	jmp	.LBB12_1575
.LBB12_1575:                            # %do.end.5379
                                        #   in Loop: Header=BB12_1558 Depth=2
	jmp	.LBB12_1558
.LBB12_1576:                            # %while.end.5380
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$22, (%rax)
# BB#1577:                              # %do.end.5382
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1578:                            # %sw.bb.5383
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1580
# BB#1579:                              # %if.then.5386
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1580:                            # %if.end.5387
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1581:                              # %do.body.5388
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1582
.LBB12_1582:                            # %while.cond.5389
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1600
# BB#1583:                              # %while.body.5398
                                        #   in Loop: Header=BB12_1582 Depth=2
	jmp	.LBB12_1584
.LBB12_1584:                            # %do.body.5399
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1586
# BB#1585:                              # %if.then.5405
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1586:                            # %if.end.5406
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1588
# BB#1587:                              # %if.then.5412
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1588:                            # %if.end.5414
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1590
# BB#1589:                              # %if.then.5423
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1590:                            # %if.end.5424
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-936(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1598
# BB#1591:                              # %if.then.5428
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-936(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-944(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-936(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1593
# BB#1592:                              # %if.then.5440
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-944(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-936(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1593:                            # %if.end.5445
                                        #   in Loop: Header=BB12_1582 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1595
# BB#1594:                              # %if.then.5447
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-944(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-936(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1595:                            # %if.end.5452
                                        #   in Loop: Header=BB12_1582 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1597
# BB#1596:                              # %if.then.5454
                                        #   in Loop: Header=BB12_1582 Depth=2
	movq	-944(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-936(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1597:                            # %if.end.5459
                                        #   in Loop: Header=BB12_1582 Depth=2
	jmp	.LBB12_1598
.LBB12_1598:                            # %if.end.5460
                                        #   in Loop: Header=BB12_1582 Depth=2
	jmp	.LBB12_1599
.LBB12_1599:                            # %do.end.5461
                                        #   in Loop: Header=BB12_1582 Depth=2
	jmp	.LBB12_1582
.LBB12_1600:                            # %while.end.5462
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$23, (%rax)
# BB#1601:                              # %do.end.5464
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1602:                            # %sw.bb.5465
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1604
# BB#1603:                              # %if.then.5468
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1604:                            # %if.end.5469
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1605:                              # %do.body.5470
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_1607
# BB#1606:                              # %if.then.5474
	movl	$14, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1607:                            # %if.end.5475
                                        #   in Loop: Header=BB12_15 Depth=1
	movsbl	-169(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_1618
# BB#1608:                              # %cond.true.5478
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1610
# BB#1609:                              # %cond.true.5483
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -948(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1900(%rbp)       # 4-byte Spill
	jmp	.LBB12_1617
.LBB12_1610:                            # %cond.false.5486
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1612
# BB#1611:                              # %cond.true.5491
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -948(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1904(%rbp)       # 4-byte Spill
	jmp	.LBB12_1616
.LBB12_1612:                            # %cond.false.5506
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_1614
# BB#1613:                              # %cond.true.5511
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, -948(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1908(%rbp)       # 4-byte Spill
	jmp	.LBB12_1615
.LBB12_1614:                            # %cond.false.5525
                                        #   in Loop: Header=BB12_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-948(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -1908(%rbp)       # 4-byte Spill
.LBB12_1615:                            # %cond.end.5527
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1908(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1904(%rbp)       # 4-byte Spill
.LBB12_1616:                            # %cond.end.5529
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1904(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1900(%rbp)       # 4-byte Spill
.LBB12_1617:                            # %cond.end.5531
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1900(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1912(%rbp)       # 4-byte Spill
	jmp	.LBB12_1619
.LBB12_1618:                            # %cond.false.5533
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, -948(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1912(%rbp)       # 4-byte Spill
.LBB12_1619:                            # %cond.end.5535
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1912(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-948(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#1620:                              # %do.end.5539
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$60, -44(%rbp)
	jne	.LBB12_1643
# BB#1621:                              # %if.then.5542
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1622
.LBB12_1622:                            # %do.body.5543
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1623
.LBB12_1623:                            # %while.cond.5544
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1641
# BB#1624:                              # %while.body.5553
                                        #   in Loop: Header=BB12_1623 Depth=2
	jmp	.LBB12_1625
.LBB12_1625:                            # %do.body.5554
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -960(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1627
# BB#1626:                              # %if.then.5560
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1627:                            # %if.end.5561
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1629
# BB#1628:                              # %if.then.5567
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1629:                            # %if.end.5569
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1631
# BB#1630:                              # %if.then.5578
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1631:                            # %if.end.5579
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-960(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1639
# BB#1632:                              # %if.then.5583
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -968(%rbp)
	movq	-968(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-960(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-968(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-960(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1634
# BB#1633:                              # %if.then.5595
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-968(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-960(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1634:                            # %if.end.5600
                                        #   in Loop: Header=BB12_1623 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1636
# BB#1635:                              # %if.then.5602
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-968(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-960(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1636:                            # %if.end.5607
                                        #   in Loop: Header=BB12_1623 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1638
# BB#1637:                              # %if.then.5609
                                        #   in Loop: Header=BB12_1623 Depth=2
	movq	-968(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-960(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1638:                            # %if.end.5614
                                        #   in Loop: Header=BB12_1623 Depth=2
	jmp	.LBB12_1639
.LBB12_1639:                            # %if.end.5615
                                        #   in Loop: Header=BB12_1623 Depth=2
	jmp	.LBB12_1640
.LBB12_1640:                            # %do.end.5616
                                        #   in Loop: Header=BB12_1623 Depth=2
	jmp	.LBB12_1623
.LBB12_1641:                            # %while.end.5617
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$26, (%rax)
# BB#1642:                              # %do.end.5619
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1673
.LBB12_1643:                            # %if.else.5620
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$62, -44(%rbp)
	jne	.LBB12_1666
# BB#1644:                              # %if.then.5623
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1645
.LBB12_1645:                            # %do.body.5624
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1646
.LBB12_1646:                            # %while.cond.5625
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1664
# BB#1647:                              # %while.body.5634
                                        #   in Loop: Header=BB12_1646 Depth=2
	jmp	.LBB12_1648
.LBB12_1648:                            # %do.body.5635
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -976(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1650
# BB#1649:                              # %if.then.5641
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1650:                            # %if.end.5642
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1652
# BB#1651:                              # %if.then.5648
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1652:                            # %if.end.5650
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1654
# BB#1653:                              # %if.then.5659
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1654:                            # %if.end.5660
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-976(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1662
# BB#1655:                              # %if.then.5664
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -984(%rbp)
	movq	-984(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-976(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-984(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-976(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1657
# BB#1656:                              # %if.then.5676
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-984(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-976(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1657:                            # %if.end.5681
                                        #   in Loop: Header=BB12_1646 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1659
# BB#1658:                              # %if.then.5683
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-984(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-976(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1659:                            # %if.end.5688
                                        #   in Loop: Header=BB12_1646 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1661
# BB#1660:                              # %if.then.5690
                                        #   in Loop: Header=BB12_1646 Depth=2
	movq	-984(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-976(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1661:                            # %if.end.5695
                                        #   in Loop: Header=BB12_1646 Depth=2
	jmp	.LBB12_1662
.LBB12_1662:                            # %if.end.5696
                                        #   in Loop: Header=BB12_1646 Depth=2
	jmp	.LBB12_1663
.LBB12_1663:                            # %do.end.5697
                                        #   in Loop: Header=BB12_1646 Depth=2
	jmp	.LBB12_1646
.LBB12_1664:                            # %while.end.5698
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$27, (%rax)
# BB#1665:                              # %do.end.5700
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1672
.LBB12_1666:                            # %if.else.5701
	jmp	.LBB12_1667
.LBB12_1667:                            # %do.body.5702
	jmp	.LBB12_1668
.LBB12_1668:                            # %do.body.5703
	cmpq	$0, -168(%rbp)
	je	.LBB12_1670
# BB#1669:                              # %if.then.5706
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1670:                            # %if.end.5708
	jmp	.LBB12_1671
.LBB12_1671:                            # %do.end.5709
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$2, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1672:                            # %if.end.5712
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1673
.LBB12_1673:                            # %if.end.5713
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1674:                            # %sw.bb.5714
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1676
# BB#1675:                              # %if.then.5717
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1676:                            # %if.end.5718
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1677
.LBB12_1677:                            # %do.body.5719
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1678
.LBB12_1678:                            # %while.cond.5720
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1696
# BB#1679:                              # %while.body.5729
                                        #   in Loop: Header=BB12_1678 Depth=2
	jmp	.LBB12_1680
.LBB12_1680:                            # %do.body.5730
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -992(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1682
# BB#1681:                              # %if.then.5736
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1682:                            # %if.end.5737
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1684
# BB#1683:                              # %if.then.5743
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1684:                            # %if.end.5745
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1686
# BB#1685:                              # %if.then.5754
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1686:                            # %if.end.5755
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-992(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1694
# BB#1687:                              # %if.then.5759
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1000(%rbp)
	movq	-1000(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-992(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1000(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-992(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1689
# BB#1688:                              # %if.then.5771
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-1000(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-992(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1689:                            # %if.end.5776
                                        #   in Loop: Header=BB12_1678 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1691
# BB#1690:                              # %if.then.5778
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-1000(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-992(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1691:                            # %if.end.5783
                                        #   in Loop: Header=BB12_1678 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1693
# BB#1692:                              # %if.then.5785
                                        #   in Loop: Header=BB12_1678 Depth=2
	movq	-1000(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-992(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1693:                            # %if.end.5790
                                        #   in Loop: Header=BB12_1678 Depth=2
	jmp	.LBB12_1694
.LBB12_1694:                            # %if.end.5791
                                        #   in Loop: Header=BB12_1678 Depth=2
	jmp	.LBB12_1695
.LBB12_1695:                            # %do.end.5792
                                        #   in Loop: Header=BB12_1678 Depth=2
	jmp	.LBB12_1678
.LBB12_1696:                            # %while.end.5793
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$24, (%rax)
# BB#1697:                              # %do.end.5795
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1698:                            # %sw.bb.5796
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1700
# BB#1699:                              # %if.then.5799
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1700:                            # %if.end.5800
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1701
.LBB12_1701:                            # %do.body.5801
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1702
.LBB12_1702:                            # %while.cond.5802
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1720
# BB#1703:                              # %while.body.5811
                                        #   in Loop: Header=BB12_1702 Depth=2
	jmp	.LBB12_1704
.LBB12_1704:                            # %do.body.5812
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1008(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1706
# BB#1705:                              # %if.then.5818
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1706:                            # %if.end.5819
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1708
# BB#1707:                              # %if.then.5825
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1708:                            # %if.end.5827
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1710
# BB#1709:                              # %if.then.5836
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1710:                            # %if.end.5837
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-1008(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1718
# BB#1711:                              # %if.then.5841
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1016(%rbp)
	movq	-1016(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1008(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1016(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1008(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1713
# BB#1712:                              # %if.then.5853
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-1016(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1008(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1713:                            # %if.end.5858
                                        #   in Loop: Header=BB12_1702 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1715
# BB#1714:                              # %if.then.5860
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-1016(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1008(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1715:                            # %if.end.5865
                                        #   in Loop: Header=BB12_1702 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1717
# BB#1716:                              # %if.then.5867
                                        #   in Loop: Header=BB12_1702 Depth=2
	movq	-1016(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1008(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1717:                            # %if.end.5872
                                        #   in Loop: Header=BB12_1702 Depth=2
	jmp	.LBB12_1718
.LBB12_1718:                            # %if.end.5873
                                        #   in Loop: Header=BB12_1702 Depth=2
	jmp	.LBB12_1719
.LBB12_1719:                            # %do.end.5874
                                        #   in Loop: Header=BB12_1702 Depth=2
	jmp	.LBB12_1702
.LBB12_1720:                            # %while.end.5875
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$25, (%rax)
# BB#1721:                              # %do.end.5877
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1722:                            # %sw.bb.5878
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1724
# BB#1723:                              # %if.then.5881
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1724:                            # %if.end.5882
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1725
.LBB12_1725:                            # %do.body.5883
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1726
.LBB12_1726:                            # %while.cond.5884
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1744
# BB#1727:                              # %while.body.5893
                                        #   in Loop: Header=BB12_1726 Depth=2
	jmp	.LBB12_1728
.LBB12_1728:                            # %do.body.5894
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1024(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1730
# BB#1729:                              # %if.then.5900
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1730:                            # %if.end.5901
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1732
# BB#1731:                              # %if.then.5907
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1732:                            # %if.end.5909
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1734
# BB#1733:                              # %if.then.5918
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1734:                            # %if.end.5919
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-1024(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1742
# BB#1735:                              # %if.then.5923
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1032(%rbp)
	movq	-1032(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1024(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1032(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1024(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1737
# BB#1736:                              # %if.then.5935
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-1032(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1024(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1737:                            # %if.end.5940
                                        #   in Loop: Header=BB12_1726 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1739
# BB#1738:                              # %if.then.5942
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-1032(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1024(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1739:                            # %if.end.5947
                                        #   in Loop: Header=BB12_1726 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1741
# BB#1740:                              # %if.then.5949
                                        #   in Loop: Header=BB12_1726 Depth=2
	movq	-1032(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1024(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1741:                            # %if.end.5954
                                        #   in Loop: Header=BB12_1726 Depth=2
	jmp	.LBB12_1742
.LBB12_1742:                            # %if.end.5955
                                        #   in Loop: Header=BB12_1726 Depth=2
	jmp	.LBB12_1743
.LBB12_1743:                            # %do.end.5956
                                        #   in Loop: Header=BB12_1726 Depth=2
	jmp	.LBB12_1726
.LBB12_1744:                            # %while.end.5957
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$11, (%rax)
# BB#1745:                              # %do.end.5959
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1746:                            # %sw.bb.5960
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB12_1748
# BB#1747:                              # %if.then.5963
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1748:                            # %if.end.5964
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1749
.LBB12_1749:                            # %do.body.5965
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1750
.LBB12_1750:                            # %while.cond.5966
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1768
# BB#1751:                              # %while.body.5975
                                        #   in Loop: Header=BB12_1750 Depth=2
	jmp	.LBB12_1752
.LBB12_1752:                            # %do.body.5976
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1040(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1754
# BB#1753:                              # %if.then.5982
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1754:                            # %if.end.5983
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1756
# BB#1755:                              # %if.then.5989
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1756:                            # %if.end.5991
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1758
# BB#1757:                              # %if.then.6000
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1758:                            # %if.end.6001
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-1040(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1766
# BB#1759:                              # %if.then.6005
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1048(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1761
# BB#1760:                              # %if.then.6017
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-1048(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1761:                            # %if.end.6022
                                        #   in Loop: Header=BB12_1750 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1763
# BB#1762:                              # %if.then.6024
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-1048(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1763:                            # %if.end.6029
                                        #   in Loop: Header=BB12_1750 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1765
# BB#1764:                              # %if.then.6031
                                        #   in Loop: Header=BB12_1750 Depth=2
	movq	-1048(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1040(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1765:                            # %if.end.6036
                                        #   in Loop: Header=BB12_1750 Depth=2
	jmp	.LBB12_1766
.LBB12_1766:                            # %if.end.6037
                                        #   in Loop: Header=BB12_1750 Depth=2
	jmp	.LBB12_1767
.LBB12_1767:                            # %do.end.6038
                                        #   in Loop: Header=BB12_1750 Depth=2
	jmp	.LBB12_1750
.LBB12_1768:                            # %while.end.6039
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$12, (%rax)
# BB#1769:                              # %do.end.6041
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1770:                            # %sw.bb.6042
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16384, %rax            # imm = 0x4000
	cmpq	$0, %rax
	je	.LBB12_1772
# BB#1771:                              # %if.then.6045
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1772:                            # %if.end.6046
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -1052(%rbp)
	movslq	-1052(%rbp), %rcx
	movq	-40(%rbp), %rdx
	cmpq	48(%rdx), %rcx
	ja	.LBB12_1775
# BB#1773:                              # %lor.lhs.false.6052
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$1, -1052(%rbp)
	jl	.LBB12_1775
# BB#1774:                              # %lor.lhs.false.6055
                                        #   in Loop: Header=BB12_15 Depth=1
	leaq	-80(%rbp), %rax
	movl	-1052(%rbp), %edi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	group_in_compile_stack
	movsbl	%al, %edi
	cmpl	$0, %edi
	je	.LBB12_1781
.LBB12_1775:                            # %if.then.6059
	jmp	.LBB12_1776
.LBB12_1776:                            # %do.body.6060
	jmp	.LBB12_1777
.LBB12_1777:                            # %do.body.6061
	cmpq	$0, -168(%rbp)
	je	.LBB12_1779
# BB#1778:                              # %if.then.6064
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1779:                            # %if.end.6066
	jmp	.LBB12_1780
.LBB12_1780:                            # %do.end.6067
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$6, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1781:                            # %if.end.6070
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1782:                              # %do.body.6071
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1783
.LBB12_1783:                            # %while.cond.6072
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1801
# BB#1784:                              # %while.body.6081
                                        #   in Loop: Header=BB12_1783 Depth=2
	jmp	.LBB12_1785
.LBB12_1785:                            # %do.body.6082
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1064(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1787
# BB#1786:                              # %if.then.6088
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1787:                            # %if.end.6089
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1789
# BB#1788:                              # %if.then.6095
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1789:                            # %if.end.6097
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1791
# BB#1790:                              # %if.then.6106
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1791:                            # %if.end.6107
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-1064(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1799
# BB#1792:                              # %if.then.6111
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1064(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1072(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1064(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1794
# BB#1793:                              # %if.then.6123
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-1072(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1064(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1794:                            # %if.end.6128
                                        #   in Loop: Header=BB12_1783 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1796
# BB#1795:                              # %if.then.6130
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-1072(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1064(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1796:                            # %if.end.6135
                                        #   in Loop: Header=BB12_1783 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1798
# BB#1797:                              # %if.then.6137
                                        #   in Loop: Header=BB12_1783 Depth=2
	movq	-1072(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1064(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1798:                            # %if.end.6142
                                        #   in Loop: Header=BB12_1783 Depth=2
	jmp	.LBB12_1799
.LBB12_1799:                            # %if.end.6143
                                        #   in Loop: Header=BB12_1783 Depth=2
	jmp	.LBB12_1800
.LBB12_1800:                            # %do.end.6144
                                        #   in Loop: Header=BB12_1783 Depth=2
	jmp	.LBB12_1783
.LBB12_1801:                            # %while.end.6145
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$8, (%rax)
	movl	-1052(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#1802:                              # %do.end.6149
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1808
.LBB12_1803:                            # %sw.bb.6150
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB12_1805
# BB#1804:                              # %if.then.6153
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_111
.LBB12_1805:                            # %if.else.6154
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1806:                            # %sw.default.6155
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1807
.LBB12_1807:                            # %normal_backslash
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1808:                            # %sw.epilog.6156
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1915
.LBB12_1809:                            # %sw.default.6157
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1810
.LBB12_1810:                            # %normal_char
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB12_1831
# BB#1811:                              # %lor.lhs.false.6159
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-112(%rbp), %rax
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_1831
# BB#1812:                              # %lor.lhs.false.6166
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$251, %ecx
	jge	.LBB12_1831
# BB#1813:                              # %lor.lhs.false.6170
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_1816
# BB#1814:                              # %land.lhs.true.6173
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB12_1831
# BB#1815:                              # %lor.lhs.false.6177
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB12_1831
.LBB12_1816:                            # %lor.lhs.false.6181
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB12_1821
# BB#1817:                              # %cond.true.6184
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB12_1824
# BB#1818:                              # %land.lhs.true.6188
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB12_1824
# BB#1819:                              # %land.lhs.true.6192
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_1831
# BB#1820:                              # %lor.lhs.false.6197
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB12_1831
	jmp	.LBB12_1824
.LBB12_1821:                            # %cond.false.6202
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_1824
# BB#1822:                              # %land.lhs.true.6205
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB12_1831
# BB#1823:                              # %lor.lhs.false.6209
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB12_1831
.LBB12_1824:                            # %lor.lhs.false.6213
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB12_1853
# BB#1825:                              # %land.lhs.true.6216
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB12_1828
# BB#1826:                              # %cond.true.6219
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB12_1853
# BB#1827:                              # %land.lhs.true.6222
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB12_1831
	jmp	.LBB12_1853
.LBB12_1828:                            # %cond.false.6226
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB12_1853
# BB#1829:                              # %land.lhs.true.6230
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB12_1853
# BB#1830:                              # %land.lhs.true.6235
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB12_1853
.LBB12_1831:                            # %if.then.6240
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1832:                              # %do.body.6241
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1833
.LBB12_1833:                            # %while.cond.6242
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1851
# BB#1834:                              # %while.body.6251
                                        #   in Loop: Header=BB12_1833 Depth=2
	jmp	.LBB12_1835
.LBB12_1835:                            # %do.body.6252
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1080(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1837
# BB#1836:                              # %if.then.6258
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1837:                            # %if.end.6259
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1839
# BB#1838:                              # %if.then.6265
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1839:                            # %if.end.6267
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1841
# BB#1840:                              # %if.then.6276
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1841:                            # %if.end.6277
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-1080(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1849
# BB#1842:                              # %if.then.6281
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1088(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1844
# BB#1843:                              # %if.then.6293
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-1088(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1844:                            # %if.end.6298
                                        #   in Loop: Header=BB12_1833 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1846
# BB#1845:                              # %if.then.6300
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-1088(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1846:                            # %if.end.6305
                                        #   in Loop: Header=BB12_1833 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1848
# BB#1847:                              # %if.then.6307
                                        #   in Loop: Header=BB12_1833 Depth=2
	movq	-1088(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1848:                            # %if.end.6312
                                        #   in Loop: Header=BB12_1833 Depth=2
	jmp	.LBB12_1849
.LBB12_1849:                            # %if.end.6313
                                        #   in Loop: Header=BB12_1833 Depth=2
	jmp	.LBB12_1850
.LBB12_1850:                            # %do.end.6314
                                        #   in Loop: Header=BB12_1833 Depth=2
	jmp	.LBB12_1833
.LBB12_1851:                            # %while.end.6315
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$2, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
# BB#1852:                              # %do.end.6318
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB12_1853:                            # %if.end.6320
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1854
.LBB12_1854:                            # %while.cond.6321
                                        #   Parent Loop BB12_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$5, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1872
# BB#1855:                              # %while.body.6330
                                        #   in Loop: Header=BB12_1854 Depth=2
	jmp	.LBB12_1856
.LBB12_1856:                            # %do.body.6331
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1858
# BB#1857:                              # %if.then.6337
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1858:                            # %if.end.6338
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1860
# BB#1859:                              # %if.then.6344
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1860:                            # %if.end.6346
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1862
# BB#1861:                              # %if.then.6355
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1862:                            # %if.end.6356
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-1096(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1870
# BB#1863:                              # %if.then.6360
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1096(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1104(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1096(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1865
# BB#1864:                              # %if.then.6372
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-1104(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1096(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1865:                            # %if.end.6377
                                        #   in Loop: Header=BB12_1854 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB12_1867
# BB#1866:                              # %if.then.6379
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-1104(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1096(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1867:                            # %if.end.6384
                                        #   in Loop: Header=BB12_1854 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB12_1869
# BB#1868:                              # %if.then.6386
                                        #   in Loop: Header=BB12_1854 Depth=2
	movq	-1104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1096(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1869:                            # %if.end.6391
                                        #   in Loop: Header=BB12_1854 Depth=2
	jmp	.LBB12_1870
.LBB12_1870:                            # %if.end.6392
                                        #   in Loop: Header=BB12_1854 Depth=2
	jmp	.LBB12_1871
.LBB12_1871:                            # %do.end.6393
                                        #   in Loop: Header=BB12_1854 Depth=2
	jmp	.LBB12_1854
.LBB12_1872:                            # %while.end.6394
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpb	$0, -169(%rbp)
	je	.LBB12_1892
# BB#1873:                              # %if.then.6397
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$2, -104(%rbp)
	je	.LBB12_1875
# BB#1874:                              # %cond.true.6400
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-104(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1916(%rbp)       # 4-byte Spill
	jmp	.LBB12_1876
.LBB12_1875:                            # %cond.false.6402
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -1916(%rbp)       # 4-byte Spill
.LBB12_1876:                            # %cond.end.6403
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1916(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -44(%rbp)
	testb	$1, %cl
	jne	.LBB12_1877
	jmp	.LBB12_1878
.LBB12_1877:                            # %cond.true.6405
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB12_1879
	jmp	.LBB12_1880
.LBB12_1878:                            # %cond.false.6409
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB12_1880
.LBB12_1879:                            # %cond.true.6414
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$1, %eax
	movl	-44(%rbp), %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -1920(%rbp)       # 4-byte Spill
	jmp	.LBB12_1891
.LBB12_1880:                            # %cond.false.6417
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_1881
	jmp	.LBB12_1882
.LBB12_1881:                            # %cond.true.6418
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB12_1883
	jmp	.LBB12_1884
.LBB12_1882:                            # %cond.false.6422
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB12_1884
.LBB12_1883:                            # %cond.true.6427
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -1924(%rbp)       # 4-byte Spill
	jmp	.LBB12_1890
.LBB12_1884:                            # %cond.false.6436
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_1885
	jmp	.LBB12_1886
.LBB12_1885:                            # %cond.true.6437
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB12_1887
	jmp	.LBB12_1888
.LBB12_1886:                            # %cond.false.6441
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB12_1888
.LBB12_1887:                            # %cond.true.6446
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$3, %eax
	movl	-44(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -1928(%rbp)       # 4-byte Spill
	jmp	.LBB12_1889
.LBB12_1888:                            # %cond.false.6460
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	char_string
	movl	%eax, -1928(%rbp)       # 4-byte Spill
.LBB12_1889:                            # %cond.end.6462
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1928(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1924(%rbp)       # 4-byte Spill
.LBB12_1890:                            # %cond.end.6464
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1924(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1920(%rbp)       # 4-byte Spill
.LBB12_1891:                            # %cond.end.6466
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1920(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1108(%rbp)
	movl	-1108(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB12_1914
.LBB12_1892:                            # %if.else.6470
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_1893
	jmp	.LBB12_1894
.LBB12_1893:                            # %cond.true.6471
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_1895
	jmp	.LBB12_1896
.LBB12_1894:                            # %cond.false.6475
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_1896
.LBB12_1895:                            # %cond.true.6480
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -1932(%rbp)       # 4-byte Spill
	jmp	.LBB12_1897
.LBB12_1896:                            # %cond.false.6481
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1932(%rbp)       # 4-byte Spill
.LBB12_1897:                            # %cond.end.6483
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1932(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	jg	.LBB12_1913
# BB#1898:                              # %if.then.6487
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpq	$2, -104(%rbp)
	je	.LBB12_1900
# BB#1899:                              # %cond.true.6490
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-104(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -1936(%rbp)       # 4-byte Spill
	jmp	.LBB12_1901
.LBB12_1900:                            # %cond.false.6492
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -1936(%rbp)       # 4-byte Spill
.LBB12_1901:                            # %cond.end.6493
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1936(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1112(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	je	.LBB12_1912
# BB#1902:                              # %land.lhs.true.6497
                                        #   in Loop: Header=BB12_15 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_1903
	jmp	.LBB12_1904
.LBB12_1903:                            # %cond.true.6498
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1112(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB12_1905
	jmp	.LBB12_1906
.LBB12_1904:                            # %cond.false.6502
                                        #   in Loop: Header=BB12_15 Depth=1
	movslq	-1112(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB12_1906
.LBB12_1905:                            # %cond.true.6507
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1112(%rbp), %eax
	movl	%eax, -1940(%rbp)       # 4-byte Spill
	jmp	.LBB12_1910
.LBB12_1906:                            # %cond.false.6508
                                        #   in Loop: Header=BB12_15 Depth=1
	cmpl	$4194175, -1112(%rbp)   # imm = 0x3FFF7F
	jle	.LBB12_1908
# BB#1907:                              # %cond.true.6511
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1112(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1944(%rbp)       # 4-byte Spill
	jmp	.LBB12_1909
.LBB12_1908:                            # %cond.false.6513
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1944(%rbp)       # 4-byte Spill
	jmp	.LBB12_1909
.LBB12_1909:                            # %cond.end.6514
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1940(%rbp)       # 4-byte Spill
.LBB12_1910:                            # %cond.end.6516
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1940(%rbp), %eax       # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jl	.LBB12_1912
# BB#1911:                              # %if.then.6520
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB12_1912:                            # %if.end.6521
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_1913
.LBB12_1913:                            # %if.end.6522
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%cl, (%rdx)
	movl	$1, -1108(%rbp)
.LBB12_1914:                            # %if.end.6525
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-1108(%rbp), %eax
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %edx
	addl	%eax, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx)
.LBB12_1915:                            # %sw.epilog.6529
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_15
.LBB12_1916:                            # %while.end.6530
	jmp	.LBB12_1917
.LBB12_1917:                            # %do.body.6531
	cmpq	$0, -144(%rbp)
	je	.LBB12_1919
# BB#1918:                              # %if.then.6533
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB12_1919:                            # %if.end.6539
	jmp	.LBB12_1920
.LBB12_1920:                            # %do.end.6540
	cmpq	$0, -64(%rbp)
	je	.LBB12_1927
# BB#1921:                              # %if.then.6544
	jmp	.LBB12_1922
.LBB12_1922:                            # %do.body.6545
	jmp	.LBB12_1923
.LBB12_1923:                            # %do.body.6546
	cmpq	$0, -168(%rbp)
	je	.LBB12_1925
# BB#1924:                              # %if.then.6549
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1925:                            # %if.end.6551
	jmp	.LBB12_1926
.LBB12_1926:                            # %do.end.6552
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$8, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1927:                            # %if.end.6555
	movq	-32(%rbp), %rax
	andq	$262144, %rax           # imm = 0x40000
	cmpq	$0, %rax
	je	.LBB12_1950
# BB#1928:                              # %if.then.6558
	jmp	.LBB12_1929
.LBB12_1929:                            # %do.body.6559
	jmp	.LBB12_1930
.LBB12_1930:                            # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB12_1948
# BB#1931:                              # %while.body.6568
                                        #   in Loop: Header=BB12_1930 Depth=1
	jmp	.LBB12_1932
.LBB12_1932:                            # %do.body.6569
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB12_1934
# BB#1933:                              # %if.then.6575
	movl	$15, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1934:                            # %if.end.6576
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB12_1936
# BB#1935:                              # %if.then.6582
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB12_1936:                            # %if.end.6584
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_1938
# BB#1937:                              # %if.then.6593
	movl	$12, -4(%rbp)
	jmp	.LBB12_1956
.LBB12_1938:                            # %if.end.6594
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-1120(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB12_1946
# BB#1939:                              # %if.then.6598
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1128(%rbp)
	movq	-1128(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-1128(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB12_1941
# BB#1940:                              # %if.then.6610
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-1128(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB12_1941:                            # %if.end.6615
                                        #   in Loop: Header=BB12_1930 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB12_1943
# BB#1942:                              # %if.then.6617
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-1128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB12_1943:                            # %if.end.6622
                                        #   in Loop: Header=BB12_1930 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB12_1945
# BB#1944:                              # %if.then.6624
                                        #   in Loop: Header=BB12_1930 Depth=1
	movq	-1128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB12_1945:                            # %if.end.6629
                                        #   in Loop: Header=BB12_1930 Depth=1
	jmp	.LBB12_1946
.LBB12_1946:                            # %if.end.6630
                                        #   in Loop: Header=BB12_1930 Depth=1
	jmp	.LBB12_1947
.LBB12_1947:                            # %do.end.6631
                                        #   in Loop: Header=BB12_1930 Depth=1
	jmp	.LBB12_1930
.LBB12_1948:                            # %while.end.6632
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$1, (%rax)
# BB#1949:                              # %do.end.6634
	jmp	.LBB12_1950
.LBB12_1950:                            # %if.end.6635
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#1951:                              # %do.body.6641
	jmp	.LBB12_1952
.LBB12_1952:                            # %do.body.6642
	cmpq	$0, -168(%rbp)
	je	.LBB12_1954
# BB#1953:                              # %if.then.6645
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB12_1954:                            # %if.end.6647
	jmp	.LBB12_1955
.LBB12_1955:                            # %do.end.6648
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$0, -4(%rbp)
.LBB12_1956:                            # %do.end.6650
	movl	-4(%rbp), %eax
	addq	$1968, %rsp             # imm = 0x7B0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	regex_compile, .Lfunc_end12-regex_compile
	.cfi_endproc

	.align	16, 0x90
	.type	extract_number_and_incr,@function
extract_number_and_incr:                # @extract_number_and_incr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	extract_number
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rcx
	addq	$2, %rcx
	movq	%rcx, (%rdi)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	extract_number_and_incr, .Lfunc_end13-extract_number_and_incr
	.cfi_endproc

	.align	16, 0x90
	.type	extract_number,@function
extract_number:                         # @extract_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	1(%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	addl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	extract_number, .Lfunc_end14-extract_number
	.cfi_endproc

	.align	16, 0x90
	.type	bcmp_translate,@function
bcmp_translate:                         # @bcmp_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpq	-72(%rbp), %rdx
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jae	.LBB15_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setb	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB15_3:                               # %land.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_45
.LBB15_4:                               # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_5
.LBB15_5:                               # %do.body
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB15_16
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$1, -84(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB15_15
.LBB15_8:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_10
# BB#9:                                 # %cond.true.10
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -84(%rbp)
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-56(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_14
.LBB15_10:                              # %cond.false.21
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_12
# BB#11:                                # %cond.true.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$3, -84(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_13
.LBB15_12:                              # %cond.false.40
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-84(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	string_char
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB15_13:                              # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB15_14:                              # %cond.end.42
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB15_15:                              # %cond.end.44
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	jmp	.LBB15_22
.LBB15_16:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	$1, %al
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -92(%rbp)
	movl	$1, -84(%rbp)
	testb	$1, %al
	jne	.LBB15_17
	jmp	.LBB15_18
.LBB15_17:                              # %cond.true.47
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_19
	jmp	.LBB15_20
.LBB15_18:                              # %cond.false.51
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-92(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_20
.LBB15_19:                              # %cond.true.56
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_21
.LBB15_20:                              # %cond.false.57
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB15_21:                              # %cond.end.59
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
.LBB15_22:                              # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_23
.LBB15_23:                              # %do.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_24
.LBB15_24:                              # %do.body.61
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB15_35
# BB#25:                                # %if.then.63
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_27
# BB#26:                                # %cond.true.68
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$1, -88(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_34
.LBB15_27:                              # %cond.false.71
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_29
# BB#28:                                # %cond.true.76
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -88(%rbp)
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-64(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -124(%rbp)        # 4-byte Spill
	jmp	.LBB15_33
.LBB15_29:                              # %cond.false.91
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_31
# BB#30:                                # %cond.true.96
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$3, -88(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB15_32
.LBB15_31:                              # %cond.false.110
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-88(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	string_char
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB15_32:                              # %cond.end.112
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB15_33:                              # %cond.end.114
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB15_34:                              # %cond.end.116
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	jmp	.LBB15_41
.LBB15_35:                              # %if.else.118
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	$1, %al
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -96(%rbp)
	movl	$1, -88(%rbp)
	testb	$1, %al
	jne	.LBB15_36
	jmp	.LBB15_37
.LBB15_36:                              # %cond.true.120
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-96(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_38
	jmp	.LBB15_39
.LBB15_37:                              # %cond.false.124
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-96(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_39
.LBB15_38:                              # %cond.true.129
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB15_40
.LBB15_39:                              # %cond.false.130
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-96(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB15_40:                              # %cond.end.132
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
.LBB15_41:                              # %if.end.134
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_42
.LBB15_42:                              # %do.end.135
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	char_table_translate
	movq	-40(%rbp), %rdi
	movl	-96(%rbp), %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	char_table_translate
	movl	-136(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	je	.LBB15_44
# BB#43:                                # %if.then.140
	movl	$1, -4(%rbp)
	jmp	.LBB15_49
.LBB15_44:                              # %if.end.141
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB15_1
.LBB15_45:                              # %while.end
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_47
# BB#46:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB15_48
.LBB15_47:                              # %if.then.149
	movl	$1, -4(%rbp)
	jmp	.LBB15_49
.LBB15_48:                              # %if.end.150
	movl	$0, -4(%rbp)
.LBB15_49:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bcmp_translate, .Lfunc_end15-bcmp_translate
	.cfi_endproc

	.align	16, 0x90
	.type	mutually_exclusive_p,@function
mutually_exclusive_p:                   # @mutually_exclusive_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movw	56(%rdx), %ax
	shrw	$8, %ax
	andw	$1, %ax
	movzwl	%ax, %ecx
	movb	%cl, %r8b
	movb	%r8b, -37(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	16(%rsi), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	skip_noops
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB16_3:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	decl	%eax
	movl	%eax, %ecx
	subl	$33, %eax
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%eax, -124(%rbp)        # 4-byte Spill
	ja	.LBB16_142
# BB#145:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_4:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	skip_one_char
	cmpq	$0, %rax
	je	.LBB16_6
# BB#5:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_6:                               # %if.end
	jmp	.LBB16_143
.LBB16_7:                               # %sw.bb.5
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB16_9
# BB#8:                                 # %cond.true.9
	movl	$10, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB16_22
.LBB16_9:                               # %cond.false.10
	movsbl	-37(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB16_20
# BB#10:                                # %cond.true.13
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_12
# BB#11:                                # %cond.true.17
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB16_19
.LBB16_12:                              # %cond.false.21
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_14
# BB#13:                                # %cond.true.27
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-32(%rbp), %rdx
	movzbl	2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-32(%rbp), %rdx
	movzbl	3(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-32(%rbp), %rdx
	movzbl	2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	jmp	.LBB16_18
.LBB16_14:                              # %cond.false.42
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_16
# BB#15:                                # %cond.true.48
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	4(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB16_17
.LBB16_16:                              # %cond.false.65
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB16_17:                              # %cond.end.68
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB16_18:                              # %cond.end.70
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB16_19:                              # %cond.end.72
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB16_21
.LBB16_20:                              # %cond.false.74
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
.LBB16_21:                              # %cond.end.77
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB16_22:                              # %cond.end.79
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %eax
	cmpl	$2, %eax
	jne	.LBB16_38
# BB#23:                                # %if.then.84
	movl	-52(%rbp), %eax
	movsbl	-37(%rbp), %ecx
	cmpl	$0, %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB16_34
# BB#24:                                # %cond.true.87
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_26
# BB#25:                                # %cond.true.93
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	jmp	.LBB16_33
.LBB16_26:                              # %cond.false.97
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_28
# BB#27:                                # %cond.true.103
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	3(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -156(%rbp)        # 4-byte Spill
	jmp	.LBB16_32
.LBB16_28:                              # %cond.false.121
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_30
# BB#29:                                # %cond.true.127
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB16_31
.LBB16_30:                              # %cond.false.144
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB16_31:                              # %cond.end.147
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB16_32:                              # %cond.end.149
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB16_33:                              # %cond.end.151
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB16_35
.LBB16_34:                              # %cond.false.153
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB16_35:                              # %cond.end.156
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB16_37
# BB#36:                                # %if.then.160
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_37:                              # %if.end.161
	jmp	.LBB16_72
.LBB16_38:                              # %if.else
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	je	.LBB16_40
# BB#39:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB16_67
.LBB16_40:                              # %if.then.168
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -56(%rbp)
	cmpb	$0, -37(%rbp)
	je	.LBB16_42
# BB#41:                                # %lor.lhs.false.173
	cmpl	$128, -52(%rbp)
	jge	.LBB16_46
.LBB16_42:                              # %if.then.176
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB16_45
# BB#43:                                # %land.lhs.true
	movl	$1, %eax
	movl	$8, %ecx
	movl	-52(%rbp), %edx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-168(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB16_45
# BB#44:                                # %if.then.188
	cmpl	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -56(%rbp)
.LBB16_45:                              # %if.end.190
	jmp	.LBB16_64
.LBB16_46:                              # %if.else.191
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB16_63
# BB#47:                                # %if.then.196
	jmp	.LBB16_48
.LBB16_48:                              # %do.body
	leaq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$127, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -60(%rbp)
# BB#49:                                # %do.body.204
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB16_50:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB16_60
# BB#51:                                # %for.body
                                        #   in Loop: Header=BB16_50 Depth=1
	jmp	.LBB16_52
.LBB16_52:                              # %do.body.210
                                        #   in Loop: Header=BB16_50 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
# BB#53:                                # %do.end
                                        #   in Loop: Header=BB16_50 Depth=1
	jmp	.LBB16_54
.LBB16_54:                              # %do.body.221
                                        #   in Loop: Header=BB16_50 Depth=1
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	4(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	5(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, -80(%rbp)
# BB#55:                                # %do.end.235
                                        #   in Loop: Header=BB16_50 Depth=1
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB16_58
# BB#56:                                # %land.lhs.true.238
                                        #   in Loop: Header=BB16_50 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jg	.LBB16_58
# BB#57:                                # %if.then.241
	cmpl	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB16_60
.LBB16_58:                              # %if.end.245
                                        #   in Loop: Header=BB16_50 Depth=1
	jmp	.LBB16_59
.LBB16_59:                              # %for.inc
                                        #   in Loop: Header=BB16_50 Depth=1
	movq	-88(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB16_50
.LBB16_60:                              # %for.end
	jmp	.LBB16_61
.LBB16_61:                              # %do.end.247
	jmp	.LBB16_62
.LBB16_62:                              # %do.end.248
	jmp	.LBB16_63
.LBB16_63:                              # %if.end.249
	jmp	.LBB16_64
.LBB16_64:                              # %if.end.250
	cmpl	$0, -56(%rbp)
	jne	.LBB16_66
# BB#65:                                # %if.then.252
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_66:                              # %if.end.253
	jmp	.LBB16_71
.LBB16_67:                              # %if.else.254
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB16_70
# BB#68:                                # %land.lhs.true.258
	cmpl	$10, -52(%rbp)
	jne	.LBB16_70
# BB#69:                                # %if.then.261
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_70:                              # %if.end.262
	jmp	.LBB16_71
.LBB16_71:                              # %if.end.263
	jmp	.LBB16_72
.LBB16_72:                              # %if.end.264
	jmp	.LBB16_143
.LBB16_73:                              # %sw.bb.265
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB16_75
# BB#74:                                # %if.then.269
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	mutually_exclusive_p
	movl	%eax, -4(%rbp)
	jmp	.LBB16_144
.LBB16_75:                              # %if.else.271
	cmpb	$0, -37(%rbp)
	je	.LBB16_77
# BB#76:                                # %lor.lhs.false.273
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_104
.LBB16_77:                              # %if.then.278
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB16_90
# BB#78:                                # %if.then.282
	movl	$0, -100(%rbp)
.LBB16_79:                              # %for.cond.283
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %rdx
	movzbl	1(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -173(%rbp)         # 1-byte Spill
	jge	.LBB16_81
# BB#80:                                # %land.rhs
                                        #   in Loop: Header=BB16_79 Depth=1
	movl	-100(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -173(%rbp)        # 1-byte Spill
.LBB16_81:                              # %land.end
                                        #   in Loop: Header=BB16_79 Depth=1
	movb	-173(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_82
	jmp	.LBB16_86
.LBB16_82:                              # %for.body.293
                                        #   in Loop: Header=BB16_79 Depth=1
	movl	-100(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-100(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB16_84
# BB#83:                                # %if.then.305
	jmp	.LBB16_86
.LBB16_84:                              # %if.end.306
                                        #   in Loop: Header=BB16_79 Depth=1
	jmp	.LBB16_85
.LBB16_85:                              # %for.inc.307
                                        #   in Loop: Header=BB16_79 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB16_79
.LBB16_86:                              # %for.end.308
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB16_88
# BB#87:                                # %lor.lhs.false.313
	movl	-100(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	jne	.LBB16_89
.LBB16_88:                              # %if.then.319
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_89:                              # %if.end.320
	jmp	.LBB16_103
.LBB16_90:                              # %if.else.321
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB16_102
# BB#91:                                # %if.then.325
	movl	$0, -104(%rbp)
.LBB16_92:                              # %for.cond.327
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB16_99
# BB#93:                                # %for.body.332
                                        #   in Loop: Header=BB16_92 Depth=1
	movl	-104(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB16_97
# BB#94:                                # %lor.lhs.false.339
                                        #   in Loop: Header=BB16_92 Depth=1
	movl	-104(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	jge	.LBB16_96
# BB#95:                                # %land.lhs.true.345
                                        #   in Loop: Header=BB16_92 Depth=1
	movl	-104(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-104(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	xorl	$-1, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB16_97
.LBB16_96:                              # %if.then.357
	jmp	.LBB16_99
.LBB16_97:                              # %if.end.358
                                        #   in Loop: Header=BB16_92 Depth=1
	jmp	.LBB16_98
.LBB16_98:                              # %for.inc.359
                                        #   in Loop: Header=BB16_92 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB16_92
.LBB16_99:                              # %for.end.361
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB16_101
# BB#100:                               # %if.then.366
	movl	$1, -4(%rbp)
	jmp	.LBB16_144
.LBB16_101:                             # %if.end.367
	jmp	.LBB16_102
.LBB16_102:                             # %if.end.368
	jmp	.LBB16_103
.LBB16_103:                             # %if.end.369
	jmp	.LBB16_104
.LBB16_104:                             # %if.end.370
	jmp	.LBB16_105
.LBB16_105:                             # %if.end.371
	jmp	.LBB16_143
.LBB16_106:                             # %sw.bb.372
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	je	.LBB16_107
	jmp	.LBB16_146
.LBB16_146:                             # %sw.bb.372
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB16_107
	jmp	.LBB16_147
.LBB16_147:                             # %sw.bb.372
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB16_108
	jmp	.LBB16_109
.LBB16_107:                             # %sw.bb.374
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	mutually_exclusive_p
	movl	%eax, -4(%rbp)
	jmp	.LBB16_144
.LBB16_108:                             # %sw.bb.376
	jmp	.LBB16_109
.LBB16_109:                             # %sw.epilog
	jmp	.LBB16_143
.LBB16_110:                             # %sw.bb.377
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jne	.LBB16_112
# BB#111:                               # %land.rhs.381
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -193(%rbp)         # 1-byte Spill
.LBB16_112:                             # %land.end.386
	movb	-193(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_113:                             # %sw.bb.387
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -194(%rbp)         # 1-byte Spill
	jne	.LBB16_117
# BB#114:                               # %land.rhs.391
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$3, %edx
	movb	%al, -195(%rbp)         # 1-byte Spill
	je	.LBB16_116
# BB#115:                               # %lor.rhs
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -195(%rbp)         # 1-byte Spill
.LBB16_116:                             # %lor.end
	movb	-195(%rbp), %al         # 1-byte Reload
	movb	%al, -194(%rbp)         # 1-byte Spill
.LBB16_117:                             # %land.end.400
	movb	-194(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_118:                             # %sw.bb.402
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -196(%rbp)         # 1-byte Spill
	jne	.LBB16_120
# BB#119:                               # %land.rhs.406
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -196(%rbp)        # 1-byte Spill
.LBB16_120:                             # %land.end.413
	movb	-196(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_121:                             # %sw.bb.415
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -197(%rbp)         # 1-byte Spill
	jne	.LBB16_123
# BB#122:                               # %land.rhs.419
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -197(%rbp)         # 1-byte Spill
.LBB16_123:                             # %land.end.424
	movb	-197(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_124:                             # %sw.bb.426
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -198(%rbp)         # 1-byte Spill
	jne	.LBB16_128
# BB#125:                               # %land.rhs.430
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$3, %edx
	movb	%al, -199(%rbp)         # 1-byte Spill
	je	.LBB16_127
# BB#126:                               # %lor.rhs.435
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -199(%rbp)         # 1-byte Spill
.LBB16_127:                             # %lor.end.440
	movb	-199(%rbp), %al         # 1-byte Reload
	movb	%al, -198(%rbp)         # 1-byte Spill
.LBB16_128:                             # %land.end.441
	movb	-198(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_129:                             # %sw.bb.443
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -200(%rbp)         # 1-byte Spill
	jne	.LBB16_131
# BB#130:                               # %land.rhs.447
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -200(%rbp)        # 1-byte Spill
.LBB16_131:                             # %land.end.454
	movb	-200(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_132:                             # %sw.bb.456
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$29, %ecx
	je	.LBB16_134
# BB#133:                               # %lor.lhs.false.460
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jne	.LBB16_135
.LBB16_134:                             # %land.rhs.464
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -201(%rbp)         # 1-byte Spill
.LBB16_135:                             # %land.end.469
	movb	-201(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_136:                             # %sw.bb.471
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$34, %eax
	movb	%cl, -202(%rbp)         # 1-byte Spill
	jne	.LBB16_138
# BB#137:                               # %land.rhs.475
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -202(%rbp)        # 1-byte Spill
.LBB16_138:                             # %land.end.482
	movb	-202(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_139:                             # %sw.bb.484
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$33, %eax
	movb	%cl, -203(%rbp)         # 1-byte Spill
	jne	.LBB16_141
# BB#140:                               # %land.rhs.488
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -203(%rbp)        # 1-byte Spill
.LBB16_141:                             # %land.end.495
	movb	-203(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_144
.LBB16_142:                             # %sw.default
	jmp	.LBB16_143
.LBB16_143:                             # %sw.epilog.497
	movl	$0, -4(%rbp)
.LBB16_144:                             # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mutually_exclusive_p, .Lfunc_end16-mutually_exclusive_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_4
	.quad	.LBB16_7
	.quad	.LBB16_142
	.quad	.LBB16_73
	.quad	.LBB16_106
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_7
	.quad	.LBB16_142
	.quad	.LBB16_4
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_121
	.quad	.LBB16_110
	.quad	.LBB16_132
	.quad	.LBB16_142
	.quad	.LBB16_124
	.quad	.LBB16_113
	.quad	.LBB16_129
	.quad	.LBB16_118
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_142
	.quad	.LBB16_136
	.quad	.LBB16_139

	.text
	.align	16, 0x90
	.type	skip_noops,@function
skip_noops:                             # @skip_noops
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB17_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	je	.LBB17_4
	jmp	.LBB17_10
.LBB17_10:                              # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jb	.LBB17_3
	jmp	.LBB17_11
.LBB17_11:                              # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB17_5
	jmp	.LBB17_6
.LBB17_3:                               # %sw.bb
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_7
.LBB17_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_7
.LBB17_5:                               # %sw.bb.3
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -16(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %sw.default
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_9
.LBB17_7:                               # %sw.epilog
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_1
.LBB17_8:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	skip_noops, .Lfunc_end17-skip_noops
	.cfi_endproc

	.align	16, 0x90
	.type	skip_one_char,@function
skip_one_char:                          # @skip_one_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	incq	%rax
	movq	%rax, -8(%rbp)
	movzbl	(%rdi), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	je	.LBB18_2
	jmp	.LBB18_10
.LBB18_10:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB18_1
	jmp	.LBB18_11
.LBB18_11:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB18_3
	jmp	.LBB18_12
.LBB18_12:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-28, %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jb	.LBB18_7
	jmp	.LBB18_13
.LBB18_13:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-33, %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jb	.LBB18_7
	jmp	.LBB18_8
.LBB18_1:                               # %sw.bb
	jmp	.LBB18_9
.LBB18_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_9
.LBB18_3:                               # %sw.bb.3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB18_5
# BB#4:                                 # %if.then
	leaq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	$-1, %rdx
	addq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	shll	$1, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB18_6
.LBB18_5:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.LBB18_6:                               # %if.end
	jmp	.LBB18_9
.LBB18_7:                               # %sw.bb.23
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               # %sw.default
	movq	$0, -8(%rbp)
.LBB18_9:                               # %sw.epilog
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	skip_one_char, .Lfunc_end18-skip_one_char
	.cfi_endproc

	.align	16, 0x90
	.type	at_begline_loc_p,@function
at_begline_loc_p:                       # @at_begline_loc_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	addq	$-2, %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$40, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB19_20
.LBB19_2:                               # %if.else
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	jne	.LBB19_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB19_19
.LBB19_4:                               # %if.else.13
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB19_17
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	andq	$2097152, %rax          # imm = 0x200000
	cmpq	$0, %rax
	je	.LBB19_17
# BB#6:                                 # %if.then.18
	jmp	.LBB19_7
.LBB19_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	addq	$-1, %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jb	.LBB19_10
# BB#8:                                 # %land.lhs.true.22
                                        #   in Loop: Header=BB19_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movzbl	-1(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jl	.LBB19_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
.LBB19_10:                              # %land.end
                                        #   in Loop: Header=BB19_7 Depth=1
	movb	-42(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_11
	jmp	.LBB19_12
.LBB19_11:                              # %while.body
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_7
.LBB19_12:                              # %while.end
	movq	-40(%rbp), %rax
	addq	$-2, %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB19_15
# BB#13:                                # %land.lhs.true.33
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB19_15
# BB#14:                                # %land.lhs.true.38
	movq	-40(%rbp), %rax
	movzbl	-2(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB19_16
.LBB19_15:                              # %if.then.43
	movb	$0, -1(%rbp)
	jmp	.LBB19_26
.LBB19_16:                              # %if.end
	movq	-40(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB19_18
.LBB19_17:                              # %if.else.49
	movb	$0, -1(%rbp)
	jmp	.LBB19_26
.LBB19_18:                              # %if.end.50
	jmp	.LBB19_19
.LBB19_19:                              # %if.end.51
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.52
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB19_21:                              # %while.cond.53
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	addq	$-1, %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jb	.LBB19_23
# BB#22:                                # %land.rhs.57
                                        #   in Loop: Header=BB19_21 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	sete	%dl
	movb	%dl, -43(%rbp)          # 1-byte Spill
.LBB19_23:                              # %land.end.62
                                        #   in Loop: Header=BB19_21 Depth=1
	movb	-43(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_24
	jmp	.LBB19_25
.LBB19_24:                              # %while.body.63
                                        #   in Loop: Header=BB19_21 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_21
.LBB19_25:                              # %while.end.65
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movsbq	-41(%rbp), %rcx
	andq	%rcx, %rax
	movb	%al, %dl
	movb	%dl, -1(%rbp)
.LBB19_26:                              # %return
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	at_begline_loc_p, .Lfunc_end19-at_begline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	at_endline_loc_p,@function
at_endline_loc_p:                       # @at_endline_loc_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$92, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -33(%rbp)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	-16(%rbp), %rdx
	jae	.LBB20_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_3
.LBB20_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB20_5
# BB#4:                                 # %cond.true.6
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB20_15
	jmp	.LBB20_8
.LBB20_5:                               # %cond.false.10
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB20_8
# BB#7:                                 # %land.lhs.true.14
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB20_15
.LBB20_8:                               # %lor.rhs
	movq	-24(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB20_10
# BB#9:                                 # %cond.true.20
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB20_14
.LBB20_10:                              # %cond.false.24
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB20_13
# BB#11:                                # %land.lhs.true.27
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB20_13
# BB#12:                                # %land.rhs
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB20_13:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB20_14:                              # %cond.end.32
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB20_15:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	at_endline_loc_p, .Lfunc_end20-at_endline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	store_op1,@function
store_op1:                              # @store_op1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edx
	movb	%dl, %al
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#2:                                 # %do.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	store_op1, .Lfunc_end21-store_op1
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op1,@function
insert_op1:                             # @insert_op1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -48(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB22_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	-1(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, -1(%rax)
	jmp	.LBB22_1
.LBB22_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	store_op1
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	insert_op1, .Lfunc_end22-insert_op1
	.cfi_endproc

	.align	16, 0x90
	.type	re_wctype_to_bit,@function
re_wctype_to_bit:                       # @re_wctype_to_bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$17, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	ja	.LBB23_12
# BB#14:                                # %entry
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_1:                               # %sw.bb
	movl	$32, -4(%rbp)
	jmp	.LBB23_13
.LBB23_2:                               # %sw.bb.1
	movl	$64, -4(%rbp)
	jmp	.LBB23_13
.LBB23_3:                               # %sw.bb.2
	movl	$128, -4(%rbp)
	jmp	.LBB23_13
.LBB23_4:                               # %sw.bb.3
	movl	$1, -4(%rbp)
	jmp	.LBB23_13
.LBB23_5:                               # %sw.bb.4
	movl	$2, -4(%rbp)
	jmp	.LBB23_13
.LBB23_6:                               # %sw.bb.5
	movl	$16, -4(%rbp)
	jmp	.LBB23_13
.LBB23_7:                               # %sw.bb.6
	movl	$4, -4(%rbp)
	jmp	.LBB23_13
.LBB23_8:                               # %sw.bb.7
	movl	$8, -4(%rbp)
	jmp	.LBB23_13
.LBB23_9:                               # %sw.bb.8
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB23_13
.LBB23_10:                              # %sw.bb.9
	movl	$512, -4(%rbp)          # imm = 0x200
	jmp	.LBB23_13
.LBB23_11:                              # %sw.bb.10
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_12:                              # %sw.default
	callq	abort
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	re_wctype_to_bit, .Lfunc_end23-re_wctype_to_bit
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_11
	.quad	.LBB23_3
	.quad	.LBB23_2
	.quad	.LBB23_4
	.quad	.LBB23_9
	.quad	.LBB23_10
	.quad	.LBB23_5
	.quad	.LBB23_6
	.quad	.LBB23_7
	.quad	.LBB23_11
	.quad	.LBB23_11
	.quad	.LBB23_11
	.quad	.LBB23_11
	.quad	.LBB23_8
	.quad	.LBB23_1
	.quad	.LBB23_1
	.quad	.LBB23_11
	.quad	.LBB23_11

	.text
	.align	16, 0x90
	.type	extend_range_table_work_area,@function
extend_range_table_work_area:           # @extend_range_table_work_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rax
	addq	$64, %rax
	movl	%eax, %ecx
	movl	%ecx, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movslq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	xrealloc
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	extend_range_table_work_area, .Lfunc_end24-extend_range_table_work_area
	.cfi_endproc

	.align	16, 0x90
	.type	group_in_compile_stack,@function
group_in_compile_stack:                 # @group_in_compile_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rax
	movl	%edi, -8(%rbp)
	movq	16(%rax), %rcx
	subq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jl	.LBB25_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-16(%rbp), %rax
	shlq	$5, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	(%rcx), %rax
	movl	24(%rax), %edx
	cmpl	-8(%rbp), %edx
	jne	.LBB25_4
# BB#3:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB25_7
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB25_1
.LBB25_6:                               # %for.end
	movb	$0, -1(%rbp)
.LBB25_7:                               # %return
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	group_in_compile_stack, .Lfunc_end25-group_in_compile_stack
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op2,@function
insert_op2:                             # @insert_op2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	addq	$5, %rsi
	movq	%rsi, -48(%rbp)
.LBB26_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB26_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	-1(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, -1(%rax)
	jmp	.LBB26_1
.LBB26_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	store_op2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	insert_op2, .Lfunc_end26-insert_op2
	.cfi_endproc

	.align	16, 0x90
	.type	store_op2,@function
store_op2:                              # @store_op2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-4(%rbp), %ecx
	movb	%cl, %al
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#2:                                 # %do.end
	jmp	.LBB27_3
.LBB27_3:                               # %do.body.5
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 4(%rdx)
# BB#4:                                 # %do.end.14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	store_op2, .Lfunc_end27-store_op2
	.cfi_endproc

	.type	re_syntax_options,@object # @re_syntax_options
	.comm	re_syntax_options,8,8
	.type	whitespace_regexp,@object # @whitespace_regexp
	.local	whitespace_regexp
	.comm	whitespace_regexp,8,8
	.type	re_max_failures,@object # @re_max_failures
	.data
	.globl	re_max_failures
	.align	8
re_max_failures:
	.quad	40000                   # 0x9c40
	.size	re_max_failures, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alnum"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alpha"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"word"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ascii"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nonascii"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"graph"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lower"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"print"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"punct"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"space"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"upper"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unibyte"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"multibyte"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"digit"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xdigit"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cntrl"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"blank"
	.size	.L.str.16, 6

	.type	re_match_object,@object # @re_match_object
	.comm	re_match_object,8,8
	.type	re_error_msgid,@object  # @re_error_msgid
	.data
	.align	16
re_error_msgid:
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.size	re_error_msgid, 144

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"Success"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No match"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid regular expression"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid collation character"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid character class name"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Trailing backslash"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Invalid back reference"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Unmatched [ or [^"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Unmatched ( or \\("
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Unmatched \\{"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Invalid content of \\{\\}"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Invalid range end"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Memory exhausted"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Invalid preceding regular expression"
	.size	.L.str.30, 37

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Premature end of regular expression"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Regular expression too big"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Unmatched ) or \\)"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Range striding over charsets"
	.size	.L.str.34, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
