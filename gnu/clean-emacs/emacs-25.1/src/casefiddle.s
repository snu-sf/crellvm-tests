	.text
	.file	"casefiddle.bc"
	.globl	Fupcase
	.align	16, 0x90
	.type	Fupcase,@function
Fupcase:                                # @Fupcase
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	casify_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fupcase, .Lfunc_end0-Fupcase
	.cfi_endproc

	.align	16, 0x90
	.type	casify_object,@function
casify_object:                          # @casify_object
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
	subq	$1088, %rsp             # imm = 0x440
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$1, -12(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	current_buffer, %rsi
	movq	184(%rsi), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	560(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	184(%rax), %rdi
	callq	Fset_case_table
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB1_35
# BB#3:                                 # %if.then.8
	xorl	%edi, %edi
	movl	$264241152, -40(%rbp)   # imm = 0xFC00000
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movslq	-40(%rbp), %rcx
	andq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movb	%dl, %sil
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movb	%r8b, -45(%rbp)
	testb	$1, %sil
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %cond.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movl	-40(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB1_6
	jmp	.LBB1_7
.LBB1_5:                                # %cond.false
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movslq	-40(%rbp), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB1_7
.LBB1_6:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_520
.LBB1_7:                                # %if.end.28
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	-40(%rbp), %ecx
	xorl	$-1, %ecx
	movslq	%ecx, %rdx
	andq	%rdx, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jl	.LBB1_9
# BB#8:                                 # %if.then.35
	movb	$1, -45(%rbp)
.LBB1_9:                                # %if.end.36
	testb	$1, -45(%rbp)
	jne	.LBB1_16
# BB#10:                                # %if.then.37
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_11:                               # %cond.true.38
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:                               # %cond.false.42
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB1_14
.LBB1_13:                               # %cond.true.47
	movl	-32(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false.48
	movl	-32(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB1_15:                               # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
.LBB1_16:                               # %if.end.50
	movl	-32(%rbp), %edi
	callq	downcase
	movl	%eax, -28(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.53
	movl	-28(%rbp), %eax
	orl	-44(%rbp), %eax
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB1_34
.LBB1_18:                               # %if.else
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	-40(%rbp), %edx
	xorl	$-1, %edx
	movslq	%edx, %rsi
	andq	%rsi, %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_33
# BB#19:                                # %if.then.63
	testb	$1, -33(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.65
	movl	-32(%rbp), %edi
	callq	upcase1
	movl	%eax, -28(%rbp)
.LBB1_21:                               # %if.end.67
	testb	$1, -45(%rbp)
	jne	.LBB1_32
# BB#22:                                # %if.then.69
	jmp	.LBB1_23
.LBB1_23:                               # %do.body
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_24
	jmp	.LBB1_25
.LBB1_24:                               # %cond.true.70
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB1_30
	jmp	.LBB1_26
.LBB1_25:                               # %cond.false.74
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB1_30
.LBB1_26:                               # %if.then.79
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB1_28
# BB#27:                                # %cond.true.82
	movl	-28(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.83
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB1_29:                               # %cond.end.85
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB1_30:                               # %if.end.87
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.88
	movl	-28(%rbp), %eax
	orl	-44(%rbp), %eax
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB1_33:                               # %if.end.92
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.93
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_520
.LBB1_35:                               # %if.end.94
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_37
# BB#36:                                # %if.then.96
	movl	$255, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB1_37:                               # %if.else.98
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB1_72
# BB#38:                                # %if.then.100
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -24(%rbp)
	movq	$0, -56(%rbp)
.LBB1_39:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB1_71
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	SREF
	movb	$1, %cl
	movzbl	%al, %edx
	movl	%edx, -28(%rbp)
	testb	$1, %cl
	jne	.LBB1_41
	jmp	.LBB1_42
.LBB1_41:                               # %cond.true.107
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB1_43
	jmp	.LBB1_44
.LBB1_42:                               # %cond.false.111
                                        #   in Loop: Header=BB1_39 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB1_44
.LBB1_43:                               # %cond.true.116
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB1_45
.LBB1_44:                               # %cond.false.117
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB1_45:                               # %cond.end.119
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB1_48
# BB#46:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$3, -12(%rbp)
	je	.LBB1_48
# BB#47:                                # %if.then.125
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %edi
	callq	downcase
	movl	%eax, -28(%rbp)
	jmp	.LBB1_53
.LBB1_48:                               # %if.else.127
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB1_52
# BB#49:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB1_39 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB1_51
# BB#50:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$3, -12(%rbp)
	je	.LBB1_52
.LBB1_51:                               # %if.then.133
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-32(%rbp), %edi
	callq	upcase1
	movl	%eax, -28(%rbp)
.LBB1_52:                               # %if.end.135
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_53
.LBB1_53:                               # %if.end.136
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$2, -12(%rbp)
	jl	.LBB1_55
# BB#54:                                # %if.then.139
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %edi
	callq	SYNTAX
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -33(%rbp)
.LBB1_55:                               # %if.end.144
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB1_69
# BB#56:                                # %if.then.147
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               # %do.body.148
                                        #   in Loop: Header=BB1_39 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_58
	jmp	.LBB1_59
.LBB1_58:                               # %cond.true.149
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB1_64
	jmp	.LBB1_60
.LBB1_59:                               # %cond.false.153
                                        #   in Loop: Header=BB1_39 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB1_64
.LBB1_60:                               # %if.then.158
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB1_62
# BB#61:                                # %cond.true.161
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB1_63
.LBB1_62:                               # %cond.false.163
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB1_63:                               # %cond.end.165
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB1_64:                               # %if.end.167
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_65
.LBB1_65:                               # %do.end.168
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB1_68
# BB#66:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB1_68
# BB#67:                                # %if.then.174
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %edx
	callq	SSET
.LBB1_68:                               # %if.end.176
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_69
.LBB1_69:                               # %if.end.177
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_70
.LBB1_70:                               # %for.inc
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_39
.LBB1_71:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_520
.LBB1_72:                               # %if.else.178
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -88(%rbp)
	movq	$16384, -104(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	movb	$0, -113(%rbp)
	testb	$1, %dl
	jne	.LBB1_73
	jmp	.LBB1_152
.LBB1_73:                               # %cond.true.183
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_74
	jmp	.LBB1_113
.LBB1_74:                               # %cond.true.184
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_76
# BB#75:                                # %cond.true.191
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB1_77
.LBB1_76:                               # %cond.false.210
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB1_77:                               # %cond.end.216
	movl	-196(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_79
# BB#78:                                # %land.lhs.true.220
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB1_105
.LBB1_79:                               # %lor.lhs.false.225
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_80
	jmp	.LBB1_91
.LBB1_80:                               # %cond.true.226
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB1_85
# BB#81:                                # %cond.true.231
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jge	.LBB1_83
# BB#82:                                # %cond.true.241
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB1_84
.LBB1_83:                               # %cond.false.251
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB1_84:                               # %cond.end.257
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-200(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_105
	jmp	.LBB1_102
.LBB1_85:                               # %cond.false.261
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_86
	jmp	.LBB1_87
.LBB1_86:                               # %cond.true.262
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_105
	jmp	.LBB1_102
.LBB1_87:                               # %cond.false.263
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_89
# BB#88:                                # %cond.true.271
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB1_90
.LBB1_89:                               # %cond.false.291
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
.LBB1_90:                               # %cond.end.297
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_105
	jmp	.LBB1_102
.LBB1_91:                               # %cond.false.304
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_92
	jmp	.LBB1_93
.LBB1_92:                               # %cond.true.305
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_105
	jmp	.LBB1_102
.LBB1_93:                               # %cond.false.306
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB1_98
# BB#94:                                # %cond.true.311
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jge	.LBB1_96
# BB#95:                                # %cond.true.321
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB1_97
.LBB1_96:                               # %cond.false.341
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
.LBB1_97:                               # %cond.end.347
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-212(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_105
	jmp	.LBB1_102
.LBB1_98:                               # %cond.false.352
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_100
# BB#99:                                # %cond.true.360
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB1_101
.LBB1_100:                              # %cond.false.370
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB1_101:                              # %cond.end.376
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_105
.LBB1_102:                              # %lor.lhs.false.383
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$5, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_104
# BB#103:                               # %land.lhs.true.391
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$5, %edx, %edx
	cmpl	$-128, %edx
	jl	.LBB1_105
.LBB1_104:                              # %lor.lhs.false.397
	movl	$127, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$5, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB1_109
.LBB1_105:                              # %cond.true.403
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB1_107
# BB#106:                               # %cond.true.409
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
	jmp	.LBB1_108
.LBB1_107:                              # %cond.false.415
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
.LBB1_108:                              # %cond.end.423
	movl	-224(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_109:                              # %cond.false.426
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB1_111
# BB#110:                               # %cond.true.432
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB1_112
.LBB1_111:                              # %cond.false.438
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB1_112:                              # %cond.end.446
	movl	-228(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_113:                              # %cond.false.449
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_115
# BB#114:                               # %cond.true.455
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB1_116
.LBB1_115:                              # %cond.false.472
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB1_116:                              # %cond.end.476
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_118
# BB#117:                               # %land.lhs.true.480
	cmpq	$0, -88(%rbp)
	jl	.LBB1_144
.LBB1_118:                              # %lor.lhs.false.483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_119
	jmp	.LBB1_130
.LBB1_119:                              # %cond.true.484
	cmpq	$0, -88(%rbp)
	jge	.LBB1_124
# BB#120:                               # %cond.true.487
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jge	.LBB1_122
# BB#121:                               # %cond.true.493
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB1_123
.LBB1_122:                              # %cond.false.501
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB1_123:                              # %cond.end.505
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	cqto
	movq	-264(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_144
	jmp	.LBB1_141
.LBB1_124:                              # %cond.false.510
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_125
	jmp	.LBB1_126
.LBB1_125:                              # %cond.true.511
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_144
	jmp	.LBB1_141
.LBB1_126:                              # %cond.false.512
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_128
# BB#127:                               # %cond.true.518
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB1_129
.LBB1_128:                              # %cond.false.535
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB1_129:                              # %cond.end.539
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	cqto
	movq	-280(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_144
	jmp	.LBB1_141
.LBB1_130:                              # %cond.false.544
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_131
	jmp	.LBB1_132
.LBB1_131:                              # %cond.true.545
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_144
	jmp	.LBB1_141
.LBB1_132:                              # %cond.false.546
	cmpq	$0, -88(%rbp)
	jge	.LBB1_137
# BB#133:                               # %cond.true.549
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB1_135
# BB#134:                               # %cond.true.555
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB1_136
.LBB1_135:                              # %cond.false.572
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB1_136:                              # %cond.end.576
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	cqto
	movq	-304(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_144
	jmp	.LBB1_141
.LBB1_137:                              # %cond.false.581
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_139
# BB#138:                               # %cond.true.587
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_140
.LBB1_139:                              # %cond.false.595
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB1_140:                              # %cond.end.599
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_144
.LBB1_141:                              # %lor.lhs.false.604
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_143
# BB#142:                               # %land.lhs.true.610
	imulq	$5, -88(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB1_144
.LBB1_143:                              # %lor.lhs.false.614
	movl	$127, %eax
	movl	%eax, %ecx
	imulq	$5, -88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB1_148
.LBB1_144:                              # %cond.true.618
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB1_146
# BB#145:                               # %cond.true.624
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB1_147
.LBB1_146:                              # %cond.false.630
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
.LBB1_147:                              # %cond.end.638
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_148:                              # %cond.false.641
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB1_150
# BB#149:                               # %cond.true.647
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB1_151
.LBB1_150:                              # %cond.false.653
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -328(%rbp)        # 4-byte Spill
.LBB1_151:                              # %cond.end.661
	movl	-328(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_152:                              # %cond.false.664
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_153
	jmp	.LBB1_232
.LBB1_153:                              # %cond.true.665
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_154
	jmp	.LBB1_193
.LBB1_154:                              # %cond.true.666
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_156
# BB#155:                               # %cond.true.674
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB1_157
.LBB1_156:                              # %cond.false.694
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -332(%rbp)        # 4-byte Spill
.LBB1_157:                              # %cond.end.700
	movl	-332(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_159
# BB#158:                               # %land.lhs.true.704
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB1_185
.LBB1_159:                              # %lor.lhs.false.709
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_160
	jmp	.LBB1_171
.LBB1_160:                              # %cond.true.710
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB1_165
# BB#161:                               # %cond.true.715
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -336(%rbp)        # 4-byte Spill
	jge	.LBB1_163
# BB#162:                               # %cond.true.725
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB1_164
.LBB1_163:                              # %cond.false.735
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
.LBB1_164:                              # %cond.end.741
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-336(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_185
	jmp	.LBB1_182
.LBB1_165:                              # %cond.false.746
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_166
	jmp	.LBB1_167
.LBB1_166:                              # %cond.true.747
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_185
	jmp	.LBB1_182
.LBB1_167:                              # %cond.false.748
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_169
# BB#168:                               # %cond.true.756
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB1_170
.LBB1_169:                              # %cond.false.776
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -344(%rbp)        # 4-byte Spill
.LBB1_170:                              # %cond.end.782
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_185
	jmp	.LBB1_182
.LBB1_171:                              # %cond.false.789
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_172
	jmp	.LBB1_173
.LBB1_172:                              # %cond.true.790
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_185
	jmp	.LBB1_182
.LBB1_173:                              # %cond.false.791
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB1_178
# BB#174:                               # %cond.true.796
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	jge	.LBB1_176
# BB#175:                               # %cond.true.806
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB1_177
.LBB1_176:                              # %cond.false.826
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -352(%rbp)        # 4-byte Spill
.LBB1_177:                              # %cond.end.832
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-348(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_185
	jmp	.LBB1_182
.LBB1_178:                              # %cond.false.837
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_180
# BB#179:                               # %cond.true.845
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB1_181
.LBB1_180:                              # %cond.false.855
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -356(%rbp)        # 4-byte Spill
.LBB1_181:                              # %cond.end.861
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_185
.LBB1_182:                              # %lor.lhs.false.868
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$5, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB1_184
# BB#183:                               # %land.lhs.true.876
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$5, %edx, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB1_185
.LBB1_184:                              # %lor.lhs.false.882
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$5, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB1_189
.LBB1_185:                              # %cond.true.888
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB1_187
# BB#186:                               # %cond.true.894
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -360(%rbp)        # 4-byte Spill
	jmp	.LBB1_188
.LBB1_187:                              # %cond.false.900
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -360(%rbp)        # 4-byte Spill
.LBB1_188:                              # %cond.end.908
	movl	-360(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_189:                              # %cond.false.911
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB1_191
# BB#190:                               # %cond.true.917
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB1_192
.LBB1_191:                              # %cond.false.923
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -364(%rbp)        # 4-byte Spill
.LBB1_192:                              # %cond.end.931
	movl	-364(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_193:                              # %cond.false.934
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_195
# BB#194:                               # %cond.true.940
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB1_196
.LBB1_195:                              # %cond.false.957
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB1_196:                              # %cond.end.961
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_198
# BB#197:                               # %land.lhs.true.965
	cmpq	$0, -88(%rbp)
	jl	.LBB1_224
.LBB1_198:                              # %lor.lhs.false.968
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_199
	jmp	.LBB1_210
.LBB1_199:                              # %cond.true.969
	cmpq	$0, -88(%rbp)
	jge	.LBB1_204
# BB#200:                               # %cond.true.972
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jge	.LBB1_202
# BB#201:                               # %cond.true.978
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB1_203
.LBB1_202:                              # %cond.false.986
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_203:                              # %cond.end.990
	movq	-392(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	cqto
	movq	-400(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_224
	jmp	.LBB1_221
.LBB1_204:                              # %cond.false.995
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_205
	jmp	.LBB1_206
.LBB1_205:                              # %cond.true.996
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_224
	jmp	.LBB1_221
.LBB1_206:                              # %cond.false.997
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_208
# BB#207:                               # %cond.true.1003
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB1_209
.LBB1_208:                              # %cond.false.1020
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB1_209:                              # %cond.end.1024
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	cqto
	movq	-416(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_224
	jmp	.LBB1_221
.LBB1_210:                              # %cond.false.1029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_211
	jmp	.LBB1_212
.LBB1_211:                              # %cond.true.1030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_224
	jmp	.LBB1_221
.LBB1_212:                              # %cond.false.1031
	cmpq	$0, -88(%rbp)
	jge	.LBB1_217
# BB#213:                               # %cond.true.1034
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jge	.LBB1_215
# BB#214:                               # %cond.true.1040
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB1_216
.LBB1_215:                              # %cond.false.1057
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB1_216:                              # %cond.end.1061
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_224
	jmp	.LBB1_221
.LBB1_217:                              # %cond.false.1066
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_219
# BB#218:                               # %cond.true.1072
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB1_220
.LBB1_219:                              # %cond.false.1080
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB1_220:                              # %cond.end.1084
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_224
.LBB1_221:                              # %lor.lhs.false.1089
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_223
# BB#222:                               # %land.lhs.true.1095
	imulq	$5, -88(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB1_224
.LBB1_223:                              # %lor.lhs.false.1099
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	imulq	$5, -88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB1_228
.LBB1_224:                              # %cond.true.1103
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB1_226
# BB#225:                               # %cond.true.1109
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB1_227
.LBB1_226:                              # %cond.false.1115
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -460(%rbp)        # 4-byte Spill
.LBB1_227:                              # %cond.end.1123
	movl	-460(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_228:                              # %cond.false.1126
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB1_230
# BB#229:                               # %cond.true.1132
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -464(%rbp)        # 4-byte Spill
	jmp	.LBB1_231
.LBB1_230:                              # %cond.false.1138
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$5, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -464(%rbp)        # 4-byte Spill
.LBB1_231:                              # %cond.end.1146
	movl	-464(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_232:                              # %cond.false.1149
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_233
	jmp	.LBB1_312
.LBB1_233:                              # %cond.true.1150
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_234
	jmp	.LBB1_273
.LBB1_234:                              # %cond.true.1151
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_236
# BB#235:                               # %cond.true.1158
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB1_237
.LBB1_236:                              # %cond.false.1176
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
.LBB1_237:                              # %cond.end.1181
	movl	-468(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_239
# BB#238:                               # %land.lhs.true.1185
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB1_265
.LBB1_239:                              # %lor.lhs.false.1189
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_240
	jmp	.LBB1_251
.LBB1_240:                              # %cond.true.1190
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_245
# BB#241:                               # %cond.true.1194
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	jge	.LBB1_243
# BB#242:                               # %cond.true.1202
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	jmp	.LBB1_244
.LBB1_243:                              # %cond.false.1211
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
.LBB1_244:                              # %cond.end.1216
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-472(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_265
	jmp	.LBB1_262
.LBB1_245:                              # %cond.false.1221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_246
	jmp	.LBB1_247
.LBB1_246:                              # %cond.true.1222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_265
	jmp	.LBB1_262
.LBB1_247:                              # %cond.false.1223
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_249
# BB#248:                               # %cond.true.1230
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB1_250
.LBB1_249:                              # %cond.false.1248
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -480(%rbp)        # 4-byte Spill
.LBB1_250:                              # %cond.end.1253
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_265
	jmp	.LBB1_262
.LBB1_251:                              # %cond.false.1259
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_252
	jmp	.LBB1_253
.LBB1_252:                              # %cond.true.1260
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_265
	jmp	.LBB1_262
.LBB1_253:                              # %cond.false.1261
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_258
# BB#254:                               # %cond.true.1265
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	jge	.LBB1_256
# BB#255:                               # %cond.true.1273
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB1_257
.LBB1_256:                              # %cond.false.1291
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -488(%rbp)        # 4-byte Spill
.LBB1_257:                              # %cond.end.1296
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-484(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_265
	jmp	.LBB1_262
.LBB1_258:                              # %cond.false.1301
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_260
# BB#259:                               # %cond.true.1308
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB1_261
.LBB1_260:                              # %cond.false.1317
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
.LBB1_261:                              # %cond.end.1322
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_265
.LBB1_262:                              # %lor.lhs.false.1328
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB1_264
# BB#263:                               # %land.lhs.true.1335
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB1_265
.LBB1_264:                              # %lor.lhs.false.1340
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	imull	$5, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB1_269
.LBB1_265:                              # %cond.true.1345
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB1_267
# BB#266:                               # %cond.true.1350
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB1_268
.LBB1_267:                              # %cond.false.1353
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -496(%rbp)        # 4-byte Spill
.LBB1_268:                              # %cond.end.1358
	movl	-496(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_269:                              # %cond.false.1361
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB1_271
# BB#270:                               # %cond.true.1366
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB1_272
.LBB1_271:                              # %cond.false.1369
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -500(%rbp)        # 4-byte Spill
.LBB1_272:                              # %cond.end.1374
	movl	-500(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_273:                              # %cond.false.1377
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_275
# BB#274:                               # %cond.true.1383
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB1_276
.LBB1_275:                              # %cond.false.1400
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB1_276:                              # %cond.end.1404
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_278
# BB#277:                               # %land.lhs.true.1408
	cmpq	$0, -88(%rbp)
	jl	.LBB1_304
.LBB1_278:                              # %lor.lhs.false.1411
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_279
	jmp	.LBB1_290
.LBB1_279:                              # %cond.true.1412
	cmpq	$0, -88(%rbp)
	jge	.LBB1_284
# BB#280:                               # %cond.true.1415
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jge	.LBB1_282
# BB#281:                               # %cond.true.1421
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB1_283
.LBB1_282:                              # %cond.false.1429
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB1_283:                              # %cond.end.1433
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_304
	jmp	.LBB1_301
.LBB1_284:                              # %cond.false.1438
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_285
	jmp	.LBB1_286
.LBB1_285:                              # %cond.true.1439
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_304
	jmp	.LBB1_301
.LBB1_286:                              # %cond.false.1440
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_288
# BB#287:                               # %cond.true.1446
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB1_289
.LBB1_288:                              # %cond.false.1463
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB1_289:                              # %cond.end.1467
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_304
	jmp	.LBB1_301
.LBB1_290:                              # %cond.false.1472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_291
	jmp	.LBB1_292
.LBB1_291:                              # %cond.true.1473
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_304
	jmp	.LBB1_301
.LBB1_292:                              # %cond.false.1474
	cmpq	$0, -88(%rbp)
	jge	.LBB1_297
# BB#293:                               # %cond.true.1477
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jge	.LBB1_295
# BB#294:                               # %cond.true.1483
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB1_296
.LBB1_295:                              # %cond.false.1500
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB1_296:                              # %cond.end.1504
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_304
	jmp	.LBB1_301
.LBB1_297:                              # %cond.false.1509
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_299
# BB#298:                               # %cond.true.1515
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB1_300
.LBB1_299:                              # %cond.false.1523
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB1_300:                              # %cond.end.1527
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_304
.LBB1_301:                              # %lor.lhs.false.1532
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_303
# BB#302:                               # %land.lhs.true.1538
	imulq	$5, -88(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB1_304
.LBB1_303:                              # %lor.lhs.false.1542
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	imulq	$5, -88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB1_308
.LBB1_304:                              # %cond.true.1546
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB1_306
# BB#305:                               # %cond.true.1551
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	jmp	.LBB1_307
.LBB1_306:                              # %cond.false.1554
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -596(%rbp)        # 4-byte Spill
.LBB1_307:                              # %cond.end.1559
	movl	-596(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_308:                              # %cond.false.1562
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB1_310
# BB#309:                               # %cond.true.1567
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	movl	%ecx, -600(%rbp)        # 4-byte Spill
	jmp	.LBB1_311
.LBB1_310:                              # %cond.false.1570
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$5, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -600(%rbp)        # 4-byte Spill
.LBB1_311:                              # %cond.end.1575
	movl	-600(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_312:                              # %cond.false.1578
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_313
	jmp	.LBB1_392
.LBB1_313:                              # %cond.true.1579
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_314
	jmp	.LBB1_353
.LBB1_314:                              # %cond.true.1580
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_316
# BB#315:                               # %cond.true.1586
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB1_317
.LBB1_316:                              # %cond.false.1603
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB1_317:                              # %cond.end.1607
	movq	-608(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_319
# BB#318:                               # %land.lhs.true.1611
	cmpq	$0, -88(%rbp)
	jl	.LBB1_345
.LBB1_319:                              # %lor.lhs.false.1614
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_320
	jmp	.LBB1_331
.LBB1_320:                              # %cond.true.1615
	cmpq	$0, -88(%rbp)
	jge	.LBB1_325
# BB#321:                               # %cond.true.1618
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB1_323
# BB#322:                               # %cond.true.1624
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB1_324
.LBB1_323:                              # %cond.false.1632
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB1_324:                              # %cond.end.1636
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_345
	jmp	.LBB1_342
.LBB1_325:                              # %cond.false.1641
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_326
	jmp	.LBB1_327
.LBB1_326:                              # %cond.true.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_345
	jmp	.LBB1_342
.LBB1_327:                              # %cond.false.1643
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_329
# BB#328:                               # %cond.true.1649
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB1_330
.LBB1_329:                              # %cond.false.1666
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB1_330:                              # %cond.end.1670
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_345
	jmp	.LBB1_342
.LBB1_331:                              # %cond.false.1675
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_332
	jmp	.LBB1_333
.LBB1_332:                              # %cond.true.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_345
	jmp	.LBB1_342
.LBB1_333:                              # %cond.false.1677
	cmpq	$0, -88(%rbp)
	jge	.LBB1_338
# BB#334:                               # %cond.true.1680
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB1_336
# BB#335:                               # %cond.true.1686
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB1_337
.LBB1_336:                              # %cond.false.1703
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB1_337:                              # %cond.end.1707
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_345
	jmp	.LBB1_342
.LBB1_338:                              # %cond.false.1712
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_340
# BB#339:                               # %cond.true.1718
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB1_341
.LBB1_340:                              # %cond.false.1726
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB1_341:                              # %cond.end.1730
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_345
.LBB1_342:                              # %lor.lhs.false.1735
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_344
# BB#343:                               # %land.lhs.true.1741
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_345
.LBB1_344:                              # %lor.lhs.false.1745
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_349
.LBB1_345:                              # %cond.true.1749
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_347
# BB#346:                               # %cond.true.1753
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB1_348
.LBB1_347:                              # %cond.false.1755
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB1_348:                              # %cond.end.1759
	movq	-696(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_349:                              # %cond.false.1761
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_351
# BB#350:                               # %cond.true.1765
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB1_352
.LBB1_351:                              # %cond.false.1767
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB1_352:                              # %cond.end.1771
	movq	-704(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_353:                              # %cond.false.1773
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_355
# BB#354:                               # %cond.true.1779
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB1_356
.LBB1_355:                              # %cond.false.1796
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB1_356:                              # %cond.end.1800
	movq	-712(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_358
# BB#357:                               # %land.lhs.true.1804
	cmpq	$0, -88(%rbp)
	jl	.LBB1_384
.LBB1_358:                              # %lor.lhs.false.1807
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_359
	jmp	.LBB1_370
.LBB1_359:                              # %cond.true.1808
	cmpq	$0, -88(%rbp)
	jge	.LBB1_364
# BB#360:                               # %cond.true.1811
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jge	.LBB1_362
# BB#361:                               # %cond.true.1817
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB1_363
.LBB1_362:                              # %cond.false.1825
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB1_363:                              # %cond.end.1829
	movq	-728(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	cqto
	movq	-736(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-720(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_384
	jmp	.LBB1_381
.LBB1_364:                              # %cond.false.1834
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_365
	jmp	.LBB1_366
.LBB1_365:                              # %cond.true.1835
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_384
	jmp	.LBB1_381
.LBB1_366:                              # %cond.false.1836
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_368
# BB#367:                               # %cond.true.1842
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB1_369
.LBB1_368:                              # %cond.false.1859
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB1_369:                              # %cond.end.1863
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_384
	jmp	.LBB1_381
.LBB1_370:                              # %cond.false.1868
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_371
	jmp	.LBB1_372
.LBB1_371:                              # %cond.true.1869
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_384
	jmp	.LBB1_381
.LBB1_372:                              # %cond.false.1870
	cmpq	$0, -88(%rbp)
	jge	.LBB1_377
# BB#373:                               # %cond.true.1873
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jge	.LBB1_375
# BB#374:                               # %cond.true.1879
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB1_376
.LBB1_375:                              # %cond.false.1896
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB1_376:                              # %cond.end.1900
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-760(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_384
	jmp	.LBB1_381
.LBB1_377:                              # %cond.false.1905
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_379
# BB#378:                               # %cond.true.1911
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB1_380
.LBB1_379:                              # %cond.false.1919
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB1_380:                              # %cond.end.1923
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_384
.LBB1_381:                              # %lor.lhs.false.1928
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_383
# BB#382:                               # %land.lhs.true.1934
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_384
.LBB1_383:                              # %lor.lhs.false.1938
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_388
.LBB1_384:                              # %cond.true.1942
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_386
# BB#385:                               # %cond.true.1946
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB1_387
.LBB1_386:                              # %cond.false.1948
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB1_387:                              # %cond.end.1952
	movq	-800(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_388:                              # %cond.false.1954
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_390
# BB#389:                               # %cond.true.1958
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB1_391
.LBB1_390:                              # %cond.false.1960
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB1_391:                              # %cond.end.1964
	movq	-808(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_392:                              # %cond.false.1966
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_393
	jmp	.LBB1_432
.LBB1_393:                              # %cond.true.1967
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_395
# BB#394:                               # %cond.true.1973
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB1_396
.LBB1_395:                              # %cond.false.1990
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB1_396:                              # %cond.end.1994
	movq	-816(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_398
# BB#397:                               # %land.lhs.true.1998
	cmpq	$0, -88(%rbp)
	jl	.LBB1_424
.LBB1_398:                              # %lor.lhs.false.2001
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_399
	jmp	.LBB1_410
.LBB1_399:                              # %cond.true.2002
	cmpq	$0, -88(%rbp)
	jge	.LBB1_404
# BB#400:                               # %cond.true.2005
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jge	.LBB1_402
# BB#401:                               # %cond.true.2011
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB1_403
.LBB1_402:                              # %cond.false.2019
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB1_403:                              # %cond.end.2023
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	cqto
	movq	-840(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-824(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_424
	jmp	.LBB1_421
.LBB1_404:                              # %cond.false.2028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_405:                              # %cond.true.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_424
	jmp	.LBB1_421
.LBB1_406:                              # %cond.false.2030
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_408
# BB#407:                               # %cond.true.2036
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB1_409
.LBB1_408:                              # %cond.false.2053
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB1_409:                              # %cond.end.2057
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_424
	jmp	.LBB1_421
.LBB1_410:                              # %cond.false.2062
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_411
	jmp	.LBB1_412
.LBB1_411:                              # %cond.true.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_424
	jmp	.LBB1_421
.LBB1_412:                              # %cond.false.2064
	cmpq	$0, -88(%rbp)
	jge	.LBB1_417
# BB#413:                               # %cond.true.2067
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jge	.LBB1_415
# BB#414:                               # %cond.true.2073
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB1_416
.LBB1_415:                              # %cond.false.2090
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB1_416:                              # %cond.end.2094
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-864(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_424
	jmp	.LBB1_421
.LBB1_417:                              # %cond.false.2099
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_419
# BB#418:                               # %cond.true.2105
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB1_420
.LBB1_419:                              # %cond.false.2113
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB1_420:                              # %cond.end.2117
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_424
.LBB1_421:                              # %lor.lhs.false.2122
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_423
# BB#422:                               # %land.lhs.true.2128
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_424
.LBB1_423:                              # %lor.lhs.false.2132
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_428
.LBB1_424:                              # %cond.true.2136
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_426
# BB#425:                               # %cond.true.2140
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB1_427
.LBB1_426:                              # %cond.false.2142
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB1_427:                              # %cond.end.2146
	movq	-904(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_428:                              # %cond.false.2148
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_430
# BB#429:                               # %cond.true.2152
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB1_431
.LBB1_430:                              # %cond.false.2154
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB1_431:                              # %cond.end.2158
	movq	-912(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_432:                              # %cond.false.2160
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_434
# BB#433:                               # %cond.true.2166
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB1_435
.LBB1_434:                              # %cond.false.2183
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB1_435:                              # %cond.end.2187
	movq	-920(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_437
# BB#436:                               # %land.lhs.true.2191
	cmpq	$0, -88(%rbp)
	jl	.LBB1_463
.LBB1_437:                              # %lor.lhs.false.2194
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_438
	jmp	.LBB1_449
.LBB1_438:                              # %cond.true.2195
	cmpq	$0, -88(%rbp)
	jge	.LBB1_443
# BB#439:                               # %cond.true.2198
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jge	.LBB1_441
# BB#440:                               # %cond.true.2204
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB1_442
.LBB1_441:                              # %cond.false.2212
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB1_442:                              # %cond.end.2216
	movq	-936(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -944(%rbp)        # 8-byte Spill
	cqto
	movq	-944(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_463
	jmp	.LBB1_460
.LBB1_443:                              # %cond.false.2221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_444
	jmp	.LBB1_445
.LBB1_444:                              # %cond.true.2222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_463
	jmp	.LBB1_460
.LBB1_445:                              # %cond.false.2223
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_447
# BB#446:                               # %cond.true.2229
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB1_448
.LBB1_447:                              # %cond.false.2246
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB1_448:                              # %cond.end.2250
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_463
	jmp	.LBB1_460
.LBB1_449:                              # %cond.false.2255
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_450
	jmp	.LBB1_451
.LBB1_450:                              # %cond.true.2256
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_463
	jmp	.LBB1_460
.LBB1_451:                              # %cond.false.2257
	cmpq	$0, -88(%rbp)
	jge	.LBB1_456
# BB#452:                               # %cond.true.2260
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jge	.LBB1_454
# BB#453:                               # %cond.true.2266
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB1_455
.LBB1_454:                              # %cond.false.2283
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB1_455:                              # %cond.end.2287
	movq	-976(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	cqto
	movq	-984(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-968(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_463
	jmp	.LBB1_460
.LBB1_456:                              # %cond.false.2292
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_458
# BB#457:                               # %cond.true.2298
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB1_459
.LBB1_458:                              # %cond.false.2306
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB1_459:                              # %cond.end.2310
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB1_463
.LBB1_460:                              # %lor.lhs.false.2315
	imulq	$5, -88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_462
# BB#461:                               # %land.lhs.true.2321
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_463
.LBB1_462:                              # %lor.lhs.false.2325
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_467
.LBB1_463:                              # %cond.true.2329
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_465
# BB#464:                               # %cond.true.2333
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB1_466
.LBB1_465:                              # %cond.false.2335
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB1_466:                              # %cond.end.2339
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_467:                              # %cond.false.2341
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$5, -88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_469
# BB#468:                               # %cond.true.2345
	imulq	$5, -88(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB1_470
.LBB1_469:                              # %cond.false.2347
	imulq	$5, -88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB1_470:                              # %cond.end.2351
	movq	-1016(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB1_471
	jmp	.LBB1_472
.LBB1_471:                              # %if.then.2353
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -128(%rbp)
.LBB1_472:                              # %if.end.2354
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jg	.LBB1_474
# BB#473:                               # %cond.true.2357
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movq	-128(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB1_475
.LBB1_474:                              # %cond.false.2359
	movb	$1, -113(%rbp)
	movq	-128(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB1_475:                              # %cond.end.2361
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
.LBB1_476:                              # %for.cond.2363
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB1_515
# BB#477:                               # %for.body.2366
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-128(%rbp), %rax
	subq	$5, %rax
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_479
# BB#478:                               # %if.then.2370
	callq	string_overflow
.LBB1_479:                              # %if.end.2371
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_481
# BB#480:                               # %cond.true.2377
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$1, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB1_488
.LBB1_481:                              # %cond.false.2382
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_483
# BB#482:                               # %cond.true.2389
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$2, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-1032(%rbp), %edx       # 4-byte Reload
	orl	%ecx, %edx
	movq	-24(%rbp), %rdi
	movl	%edx, -1036(%rbp)       # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-1036(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -1040(%rbp)       # 4-byte Spill
	jmp	.LBB1_487
.LBB1_483:                              # %cond.false.2410
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_485
# BB#484:                               # %cond.true.2417
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$3, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-1044(%rbp), %edx       # 4-byte Reload
	orl	%ecx, %edx
	movq	-24(%rbp), %rdi
	movl	%edx, -1048(%rbp)       # 4-byte Spill
	callq	SDATA
	movq	-80(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-1048(%rbp), %edx       # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB1_486
.LBB1_485:                              # %cond.false.2437
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-92(%rbp), %rdx
	addq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	string_char
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB1_486:                              # %cond.end.2441
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1040(%rbp)       # 4-byte Spill
.LBB1_487:                              # %cond.end.2443
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1040(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1028(%rbp)       # 4-byte Spill
.LBB1_488:                              # %cond.end.2445
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movl	%eax, -28(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB1_491
# BB#489:                               # %land.lhs.true.2449
                                        #   in Loop: Header=BB1_476 Depth=1
	cmpl	$3, -12(%rbp)
	je	.LBB1_491
# BB#490:                               # %if.then.2452
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %edi
	callq	downcase
	movl	%eax, -28(%rbp)
	jmp	.LBB1_496
.LBB1_491:                              # %if.else.2454
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB1_495
# BB#492:                               # %land.lhs.true.2456
                                        #   in Loop: Header=BB1_476 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB1_494
# BB#493:                               # %lor.lhs.false.2458
                                        #   in Loop: Header=BB1_476 Depth=1
	cmpl	$3, -12(%rbp)
	je	.LBB1_495
.LBB1_494:                              # %if.then.2461
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %edi
	callq	upcase1
	movl	%eax, -28(%rbp)
.LBB1_495:                              # %if.end.2463
                                        #   in Loop: Header=BB1_476 Depth=1
	jmp	.LBB1_496
.LBB1_496:                              # %if.end.2464
                                        #   in Loop: Header=BB1_476 Depth=1
	cmpl	$2, -12(%rbp)
	jl	.LBB1_498
# BB#497:                               # %if.then.2467
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %edi
	callq	SYNTAX
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -33(%rbp)
.LBB1_498:                              # %if.end.2472
                                        #   in Loop: Header=BB1_476 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_499
	jmp	.LBB1_500
.LBB1_499:                              # %cond.true.2473
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB1_501
	jmp	.LBB1_502
.LBB1_500:                              # %cond.false.2477
                                        #   in Loop: Header=BB1_476 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB1_502
.LBB1_501:                              # %cond.true.2482
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$1, %eax
	movl	-28(%rbp), %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -1056(%rbp)       # 4-byte Spill
	jmp	.LBB1_513
.LBB1_502:                              # %cond.false.2485
                                        #   in Loop: Header=BB1_476 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_503
	jmp	.LBB1_504
.LBB1_503:                              # %cond.true.2486
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB1_505
	jmp	.LBB1_506
.LBB1_504:                              # %cond.false.2490
                                        #   in Loop: Header=BB1_476 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB1_506
.LBB1_505:                              # %cond.true.2495
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB1_512
.LBB1_506:                              # %cond.false.2504
                                        #   in Loop: Header=BB1_476 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_507
	jmp	.LBB1_508
.LBB1_507:                              # %cond.true.2505
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB1_509
	jmp	.LBB1_510
.LBB1_508:                              # %cond.false.2509
                                        #   in Loop: Header=BB1_476 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB1_510
.LBB1_509:                              # %cond.true.2514
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	$3, %eax
	movl	-28(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-144(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	jmp	.LBB1_511
.LBB1_510:                              # %cond.false.2528
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-28(%rbp), %edi
	movq	-144(%rbp), %rsi
	callq	char_string
	movl	%eax, -1064(%rbp)       # 4-byte Spill
.LBB1_511:                              # %cond.end.2530
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1064(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1060(%rbp)       # 4-byte Spill
.LBB1_512:                              # %cond.end.2532
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1056(%rbp)       # 4-byte Spill
.LBB1_513:                              # %cond.end.2534
                                        #   in Loop: Header=BB1_476 Depth=1
	movl	-1056(%rbp), %eax       # 4-byte Reload
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#514:                               # %for.inc.2537
                                        #   in Loop: Header=BB1_476 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	-92(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB1_476
.LBB1_515:                              # %for.end.2541
	movq	-136(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	make_multibyte_string
	movq	%rax, -24(%rbp)
# BB#516:                               # %do.body.2546
	testb	$1, -113(%rbp)
	je	.LBB1_518
# BB#517:                               # %if.then.2548
	xorl	%edi, %edi
	movb	$0, -113(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB1_518:                              # %if.end.2551
	jmp	.LBB1_519
.LBB1_519:                              # %do.end.2552
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_520:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	casify_object, .Lfunc_end1-casify_object
	.cfi_endproc

	.globl	Fdowncase
	.align	16, 0x90
	.type	Fdowncase,@function
Fdowncase:                              # @Fdowncase
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	casify_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fdowncase, .Lfunc_end2-Fdowncase
	.cfi_endproc

	.globl	Fcapitalize
	.align	16, 0x90
	.type	Fcapitalize,@function
Fcapitalize:                            # @Fcapitalize
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
	subq	$16, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	casify_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fcapitalize, .Lfunc_end3-Fcapitalize
	.cfi_endproc

	.globl	Fupcase_initials
	.align	16, 0x90
	.type	Fupcase_initials,@function
Fupcase_initials:                       # @Fupcase_initials
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
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	casify_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fupcase_initials, .Lfunc_end4-Fupcase_initials
	.cfi_endproc

	.globl	Fupcase_region
	.align	16, 0x90
	.type	Fupcase_region,@function
Fupcase_region:                         # @Fupcase_region
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	casify_region
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fupcase_region, .Lfunc_end5-Fupcase_region
	.cfi_endproc

	.align	16, 0x90
	.type	casify_region,@function
casify_region:                          # @casify_region
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
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$1, -4(%rbp)
	sete	%cl
	andb	$1, %cl
	movb	%cl, -29(%rbp)
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -30(%rbp)
	movq	$-1, -64(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_115
.LBB6_2:                                # %if.end
	movq	current_buffer, %rax
	movq	184(%rax), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	560(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_4
# BB#3:                                 # %if.then.8
	movq	current_buffer, %rax
	movq	184(%rax), %rdi
	callq	Fset_case_table
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB6_4:                                # %if.end.11
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	validate_region
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rsi
	sarq	$2, %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	modify_text
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	subq	-40(%rbp), %rsi
	callq	record_change
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -56(%rbp)
	callq	SETUP_BUFFER_SYNTAX_TABLE
.LBB6_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_99 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB6_111
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -30(%rbp)
	je	.LBB6_20
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -28(%rbp)
	cmpl	$127, -28(%rbp)
	jg	.LBB6_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_19
.LBB6_9:                                # %cond.false
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2047, -28(%rbp)        # imm = 0x7FF
	jg	.LBB6_11
# BB#10:                                # %cond.true.19
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB6_18
.LBB6_11:                               # %cond.false.20
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$65535, -28(%rbp)       # imm = 0xFFFF
	jg	.LBB6_13
# BB#12:                                # %cond.true.22
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$3, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB6_17
.LBB6_13:                               # %cond.false.23
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2097151, -28(%rbp)     # imm = 0x1FFFFF
	jg	.LBB6_15
# BB#14:                                # %cond.true.25
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$4, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false.26
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB6_16:                               # %cond.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB6_17:                               # %cond.end.29
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB6_18:                               # %cond.end.31
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB6_19:                               # %cond.end.33
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	jmp	.LBB6_29
.LBB6_20:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_22
# BB#21:                                # %cond.true.36
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.38
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_23
.LBB6_23:                               # %cond.end.39
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	addq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	movzbl	-1(%rdx,%rax), %esi
	movl	%esi, -28(%rbp)
	testb	$1, %cl
	jne	.LBB6_24
	jmp	.LBB6_25
.LBB6_24:                               # %cond.true.44
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_26
	jmp	.LBB6_27
.LBB6_25:                               # %cond.false.48
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_27
.LBB6_26:                               # %cond.true.53
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false.54
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB6_28:                               # %cond.end.56
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	$1, -96(%rbp)
.LBB6_29:                               # %if.end.58
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)
	testb	$1, -29(%rbp)
	je	.LBB6_32
# BB#30:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$3, -4(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.63
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %edi
	callq	downcase
	movl	%eax, -28(%rbp)
	jmp	.LBB6_37
.LBB6_32:                               # %if.else.65
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB6_36
# BB#33:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -29(%rbp)
	je	.LBB6_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$3, -4(%rbp)
	je	.LBB6_36
.LBB6_35:                               # %if.then.71
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %edi
	callq	upcase1
	movl	%eax, -28(%rbp)
.LBB6_36:                               # %if.end.73
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.74
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2, -4(%rbp)
	jl	.LBB6_43
# BB#38:                                # %if.then.77
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %edi
	callq	SYNTAX
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$2, %eax
	movb	%cl, -165(%rbp)         # 1-byte Spill
	jne	.LBB6_42
# BB#39:                                # %land.rhs
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, -29(%rbp)
	movb	%al, -166(%rbp)         # 1-byte Spill
	jne	.LBB6_41
# BB#40:                                # %lor.rhs
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %edi
	callq	syntax_prefix_flag_p
	xorb	$-1, %al
	movb	%al, -166(%rbp)         # 1-byte Spill
.LBB6_41:                               # %lor.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	-166(%rbp), %al         # 1-byte Reload
	movb	%al, -165(%rbp)         # 1-byte Spill
.LBB6_42:                               # %land.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	-165(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -29(%rbp)
.LBB6_43:                               # %if.end.86
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.LBB6_110
# BB#44:                                # %if.then.89
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jge	.LBB6_46
# BB#45:                                # %if.then.92
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB6_46:                               # %if.end.93
                                        #   in Loop: Header=BB6_5 Depth=1
	testb	$1, -30(%rbp)
	jne	.LBB6_60
# BB#47:                                # %if.then.95
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_48
.LBB6_48:                               # %do.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_49
	jmp	.LBB6_50
.LBB6_49:                               # %cond.true.96
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_55
	jmp	.LBB6_51
.LBB6_50:                               # %cond.false.100
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB6_55
.LBB6_51:                               # %if.then.105
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB6_53
# BB#52:                                # %cond.true.108
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB6_54
.LBB6_53:                               # %cond.false.110
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB6_54:                               # %cond.end.111
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB6_55:                               # %if.end.113
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_56
.LBB6_56:                               # %do.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rdx
	movb	%cl, -173(%rbp)         # 1-byte Spill
	jl	.LBB6_58
# BB#57:                                # %cond.true.119
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB6_59
.LBB6_58:                               # %cond.false.122
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB6_59
.LBB6_59:                               # %cond.end.123
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movb	-173(%rbp), %dl         # 1-byte Reload
	movb	%dl, -1(%rcx,%rax)
	jmp	.LBB6_109
.LBB6_60:                               # %if.else.130
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_61
	jmp	.LBB6_62
.LBB6_61:                               # %cond.true.131
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-92(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_63
	jmp	.LBB6_70
.LBB6_62:                               # %cond.false.135
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-92(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_70
.LBB6_63:                               # %land.lhs.true.140
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_64
	jmp	.LBB6_65
.LBB6_64:                               # %cond.true.141
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_66
	jmp	.LBB6_70
.LBB6_65:                               # %cond.false.145
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_70
.LBB6_66:                               # %if.then.150
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rdx
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jl	.LBB6_68
# BB#67:                                # %cond.true.156
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB6_69
.LBB6_68:                               # %cond.false.159
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB6_69
.LBB6_69:                               # %cond.end.160
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movb	-185(%rbp), %dl         # 1-byte Reload
	movb	%dl, -1(%rcx,%rax)
	jmp	.LBB6_108
.LBB6_70:                               # %if.else.167
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$127, -28(%rbp)
	jg	.LBB6_72
# BB#71:                                # %cond.true.170
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB6_82
.LBB6_72:                               # %cond.false.171
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2047, -28(%rbp)        # imm = 0x7FF
	jg	.LBB6_74
# BB#73:                                # %cond.true.174
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB6_81
.LBB6_74:                               # %cond.false.175
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$65535, -28(%rbp)       # imm = 0xFFFF
	jg	.LBB6_76
# BB#75:                                # %cond.true.178
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$3, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB6_80
.LBB6_76:                               # %cond.false.179
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpl	$2097151, -28(%rbp)     # imm = 0x1FFFFF
	jg	.LBB6_78
# BB#77:                                # %cond.true.182
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$4, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB6_79
.LBB6_78:                               # %cond.false.183
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB6_79:                               # %cond.end.187
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB6_80:                               # %cond.end.189
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB6_81:                               # %cond.end.191
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB6_82:                               # %cond.end.193
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -100(%rbp)
	testb	$1, %cl
	jne	.LBB6_83
	jmp	.LBB6_84
.LBB6_83:                               # %cond.true.195
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB6_85
	jmp	.LBB6_86
.LBB6_84:                               # %cond.false.199
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB6_86
.LBB6_85:                               # %cond.true.204
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -109(%rbp)
	jmp	.LBB6_97
.LBB6_86:                               # %cond.false.207
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_87
	jmp	.LBB6_88
.LBB6_87:                               # %cond.true.208
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB6_89
	jmp	.LBB6_90
.LBB6_88:                               # %cond.false.212
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB6_90
.LBB6_89:                               # %cond.true.217
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -109(%rbp)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -108(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB6_96
.LBB6_90:                               # %cond.false.225
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_91
	jmp	.LBB6_92
.LBB6_91:                               # %cond.true.226
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB6_93
	jmp	.LBB6_94
.LBB6_92:                               # %cond.false.230
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB6_94
.LBB6_93:                               # %cond.true.235
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$3, %eax
	movl	-28(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -109(%rbp)
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -108(%rbp)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -107(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB6_95
.LBB6_94:                               # %cond.false.249
                                        #   in Loop: Header=BB6_5 Depth=1
	leaq	-109(%rbp), %rsi
	movl	-28(%rbp), %edi
	callq	char_string
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB6_95:                               # %cond.end.251
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB6_96:                               # %cond.end.253
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB6_97:                               # %cond.end.255
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB6_106
# BB#98:                                # %if.then.259
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$0, -104(%rbp)
.LBB6_99:                               # %for.cond
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB6_105
# BB#100:                               # %for.body
                                        #   in Loop: Header=BB6_99 Depth=2
	movslq	-104(%rbp), %rax
	movb	-109(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movslq	-104(%rbp), %rdx
	addq	%rdx, %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rax
	movb	%cl, -229(%rbp)         # 1-byte Spill
	jl	.LBB6_102
# BB#101:                               # %cond.true.269
                                        #   in Loop: Header=BB6_99 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_103
.LBB6_102:                              # %cond.false.272
                                        #   in Loop: Header=BB6_99 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_103
.LBB6_103:                              # %cond.end.273
                                        #   in Loop: Header=BB6_99 Depth=2
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	addq	%rdx, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movb	-229(%rbp), %sil        # 1-byte Reload
	movb	%sil, -1(%rcx,%rax)
# BB#104:                               # %for.inc
                                        #   in Loop: Header=BB6_99 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB6_99
.LBB6_105:                              # %for.end
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_107
.LBB6_106:                              # %if.else.282
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	leaq	-109(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	-56(%rbp), %rdx
	movslq	-96(%rbp), %r10
	addq	%r10, %rdx
	movslq	-100(%rbp), %r10
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	replace_range_2
	movl	-100(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB6_107:                              # %if.end.288
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_108
.LBB6_108:                              # %if.end.289
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_109
.LBB6_109:                              # %if.end.290
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_110
.LBB6_110:                              # %if.end.291
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movslq	-96(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_5
.LBB6_111:                              # %while.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-80(%rbp), %rax
	je	.LBB6_113
# BB#112:                               # %if.then.299
	movq	current_buffer, %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	temp_set_point_both
.LBB6_113:                              # %if.end.300
	cmpq	$0, -64(%rbp)
	jl	.LBB6_115
# BB#114:                               # %if.then.303
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$1, %rax
	subq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	subq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	signal_after_change
	movl	$7, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	update_compositions
.LBB6_115:                              # %if.end.309
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end6:
	.size	casify_region, .Lfunc_end6-casify_region
	.cfi_endproc

	.globl	Fdowncase_region
	.align	16, 0x90
	.type	Fdowncase_region,@function
Fdowncase_region:                       # @Fdowncase_region
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB7_5
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	Fsymbol_value
	movabsq	$.L.str.1, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -32(%rbp)
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$1, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdx
	callq	casify_region
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_2
.LBB7_4:                                # %while.end
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	casify_region
.LBB7_6:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fdowncase_region, .Lfunc_end7-Fdowncase_region
	.cfi_endproc

	.globl	Fcapitalize_region
	.align	16, 0x90
	.type	Fcapitalize_region,@function
Fcapitalize_region:                     # @Fcapitalize_region
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
	subq	$16, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	casify_region
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fcapitalize_region, .Lfunc_end8-Fcapitalize_region
	.cfi_endproc

	.globl	Fupcase_initials_region
	.align	16, 0x90
	.type	Fupcase_initials_region,@function
Fupcase_initials_region:                # @Fupcase_initials_region
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
	subq	$16, %rsp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	casify_region
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fupcase_initials_region, .Lfunc_end9-Fupcase_initials_region
	.cfi_endproc

	.globl	Fupcase_word
	.align	16, 0x90
	.type	Fupcase_word,@function
Fupcase_word:                           # @Fupcase_word
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	callq	make_natnum
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	operate_on_word
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	casify_region
	movq	-32(%rbp), %rdi
	callq	set_point
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fupcase_word, .Lfunc_end10-Fupcase_word
	.cfi_endproc

	.align	16, 0x90
	.type	operate_on_word,@function
operate_on_word:                        # @operate_on_word
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
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB11_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	scan_words
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_8
# BB#4:                                 # %if.then
	cmpq	$0, -40(%rbp)
	jle	.LBB11_6
# BB#5:                                 # %cond.true.6
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false.7
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB11_7:                               # %cond.end.8
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB11_8:                               # %if.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB11_10
# BB#9:                                 # %cond.true.13
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.16
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB11_11:                              # %cond.end.17
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	operate_on_word, .Lfunc_end11-operate_on_word
	.cfi_endproc

	.globl	Fdowncase_word
	.align	16, 0x90
	.type	Fdowncase_word,@function
Fdowncase_word:                         # @Fdowncase_word
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	callq	make_natnum
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	operate_on_word
	movl	$1, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	casify_region
	movq	-32(%rbp), %rdi
	callq	set_point
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fdowncase_word, .Lfunc_end12-Fdowncase_word
	.cfi_endproc

	.globl	Fcapitalize_word
	.align	16, 0x90
	.type	Fcapitalize_word,@function
Fcapitalize_word:                       # @Fcapitalize_word
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	callq	make_natnum
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	operate_on_word
	movl	$2, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	casify_region
	movq	-32(%rbp), %rdi
	callq	set_point
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fcapitalize_word, .Lfunc_end13-Fcapitalize_word
	.cfi_endproc

	.globl	syms_of_casefiddle
	.align	16, 0x90
	.type	syms_of_casefiddle,@function
syms_of_casefiddle:                     # @syms_of_casefiddle
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
	movabsq	$Supcase, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdowncase, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scapitalize, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Supcase_initials, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Supcase_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdowncase_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scapitalize_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Supcase_initials_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Supcase_word, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdowncase_word, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scapitalize_word, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end14:
	.size	syms_of_casefiddle, .Lfunc_end14-syms_of_casefiddle
	.cfi_endproc

	.globl	keys_of_casefiddle
	.align	16, 0x90
	.type	keys_of_casefiddle,@function
keys_of_casefiddle:                     # @keys_of_casefiddle
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
	subq	$48, %rsp
	movl	$21, %esi
	movabsq	$.L.str.2, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	movabsq	$.L.str.2, %rdi
	callq	intern
	movl	$343, %edi              # imm = 0x157
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$12, %esi
	movabsq	$.L.str.3, %rdx
	movq	control_x_map, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	initial_define_key
	movabsq	$.L.str.3, %rdi
	callq	intern
	movl	$343, %edi              # imm = 0x157
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$117, %esi
	movabsq	$.L.str.4, %rdx
	movq	meta_map, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	initial_define_key
	movl	$108, %esi
	movabsq	$.L.str.5, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	movl	$99, %esi
	movabsq	$.L.str.6, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	keys_of_casefiddle, .Lfunc_end15-keys_of_casefiddle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"region-extract-function"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"bounds"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"upcase-region"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"downcase-region"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"upcase-word"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"downcase-word"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"capitalize-word"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"upcase"
	.size	.L.str.7, 7

	.type	Supcase,@object         # @Supcase
	.data
	.align	8
Supcase:
	.quad	167772160               # 0xa000000
	.quad	Fupcase
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Supcase, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"downcase"
	.size	.L.str.8, 9

	.type	Sdowncase,@object       # @Sdowncase
	.data
	.align	8
Sdowncase:
	.quad	167772160               # 0xa000000
	.quad	Fdowncase
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sdowncase, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"capitalize"
	.size	.L.str.9, 11

	.type	Scapitalize,@object     # @Scapitalize
	.data
	.align	8
Scapitalize:
	.quad	167772160               # 0xa000000
	.quad	Fcapitalize
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Scapitalize, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"upcase-initials"
	.size	.L.str.10, 16

	.type	Supcase_initials,@object # @Supcase_initials
	.data
	.align	8
Supcase_initials:
	.quad	167772160               # 0xa000000
	.quad	Fupcase_initials
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Supcase_initials, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	Supcase_region,@object  # @Supcase_region
	.data
	.align	8
Supcase_region:
	.quad	167772160               # 0xa000000
	.quad	Fupcase_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.quad	0
	.size	Supcase_region, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"(list (region-beginning) (region-end) (region-noncontiguous-p))"
	.size	.L.str.12, 64

	.type	Sdowncase_region,@object # @Sdowncase_region
	.data
	.align	8
Sdowncase_region:
	.quad	167772160               # 0xa000000
	.quad	Fdowncase_region
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.12
	.quad	0
	.size	Sdowncase_region, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"capitalize-region"
	.size	.L.str.13, 18

	.type	Scapitalize_region,@object # @Scapitalize_region
	.data
	.align	8
Scapitalize_region:
	.quad	167772160               # 0xa000000
	.quad	Fcapitalize_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.11
	.quad	0
	.size	Scapitalize_region, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"upcase-initials-region"
	.size	.L.str.14, 23

	.type	Supcase_initials_region,@object # @Supcase_initials_region
	.data
	.align	8
Supcase_initials_region:
	.quad	167772160               # 0xa000000
	.quad	Fupcase_initials_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.11
	.quad	0
	.size	Supcase_initials_region, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"p"
	.size	.L.str.15, 2

	.type	Supcase_word,@object    # @Supcase_word
	.data
	.align	8
Supcase_word:
	.quad	167772160               # 0xa000000
	.quad	Fupcase_word
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.15
	.quad	0
	.size	Supcase_word, 48

	.type	Sdowncase_word,@object  # @Sdowncase_word
	.align	8
Sdowncase_word:
	.quad	167772160               # 0xa000000
	.quad	Fdowncase_word
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.15
	.quad	0
	.size	Sdowncase_word, 48

	.type	Scapitalize_word,@object # @Scapitalize_word
	.align	8
Scapitalize_word:
	.quad	167772160               # 0xa000000
	.quad	Fcapitalize_word
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.15
	.quad	0
	.size	Scapitalize_word, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
