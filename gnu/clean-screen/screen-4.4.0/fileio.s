	.text
	.file	"fileio.bc"
	.globl	StartRc
	.align	16, 0x90
	.type	StartRc,@function
StartRc:                                # @StartRc
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
	subq	$2912, %rsp             # imm = 0xB60
	movabsq	$.L.str.1, %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	rc_name, %rdi
	movq	%rdi, -2880(%rbp)
	movq	extra_incap, %rsi
	movq	%rax, %rdi
	callq	CatExtra
	movq	%rax, extra_incap
	cmpq	$0, display
	je	.LBB0_4
# BB#1:                                 # %land.lhs.true
	movabsq	$.L.str.2, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	display, %rcx
	addq	$396, %rcx              # imm = 0x18C
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %lor.lhs.false
	movabsq	$.L.str.3, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	display, %rcx
	addq	$396, %rcx              # imm = 0x18C
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_4
.LBB0_3:                                # %if.then
	movabsq	$.L.str.4, %rdi
	movq	extra_incap, %rsi
	callq	CatExtra
	movq	%rax, extra_incap
.LBB0_4:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	findrcfile
	movq	%rax, rc_name
	cmpq	$0, rc_name
	je	.LBB0_6
# BB#5:                                 # %lor.lhs.false.9
	movabsq	$.L.str.5, %rsi
	movq	rc_name, %rdi
	callq	secfopen
	movq	%rax, -2872(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_25
.LBB0_6:                                # %if.then.12
	cmpq	$0, rc_name
	je	.LBB0_8
# BB#7:                                 # %cond.true
	movq	rc_name, %rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
.LBB0_9:                                # %cond.end
	movq	-2896(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2888(%rbp)
	cmpl	$0, rc_recursion
	jne	.LBB0_17
# BB#10:                                # %land.lhs.true.15
	cmpq	$0, RcFileName
	je	.LBB0_17
# BB#11:                                # %land.lhs.true.17
	movq	RcFileName, %rdi
	movq	-2888(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_17
# BB#12:                                # %if.then.20
	jmp	.LBB0_13
.LBB0_13:                               # %do.body
	jmp	.LBB0_14
.LBB0_14:                               # %do.end
	cmpl	$0, -20(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.22
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movq	-2888(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_16:                               # %if.end.23
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.24
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.25
	jmp	.LBB0_19
.LBB0_19:                               # %do.end.26
	cmpq	$0, rc_name
	je	.LBB0_24
# BB#20:                                # %if.then.28
	cmpq	$0, rc_name
	jne	.LBB0_22
# BB#21:                                # %if.then.30
	callq	abort
.LBB0_22:                               # %if.else
	movq	rc_name, %rdi
	callq	free
# BB#23:                                # %if.end.31
	movq	$0, rc_name
.LBB0_24:                               # %if.end.32
	movq	-2880(%rbp), %rax
	movq	%rax, rc_name
	movl	$1, -4(%rbp)
	jmp	.LBB0_91
.LBB0_25:                               # %if.end.33
	jmp	.LBB0_26
.LBB0_26:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
	movl	$2048, %esi             # imm = 0x800
	leaq	-2096(%rbp), %rdi
	movq	-2872(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB0_87
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$10, %esi
	leaq	-2096(%rbp), %rdi
	callq	rindex
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBB0_29:                               # %if.end.41
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$2048, %esi             # imm = 0x800
	leaq	-2864(%rbp), %rcx
	leaq	-2608(%rbp), %rdx
	leaq	-2096(%rbp), %rdi
	callq	Parse
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_31
# BB#30:                                # %if.then.47
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_31:                               # %if.end.48
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2608(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_42
# BB#32:                                # %if.then.51
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, display
	jne	.LBB0_34
# BB#33:                                # %if.then.53
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_34:                               # %if.end.54
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$2, -24(%rbp)
	jl	.LBB0_38
# BB#35:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$3, -24(%rbp)
	jne	.LBB0_37
# BB#36:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2600(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_38
.LBB0_37:                               # %lor.lhs.false.62
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$3, -24(%rbp)
	jle	.LBB0_39
.LBB0_38:                               # %if.then.64
                                        #   in Loop: Header=BB0_26 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.9, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_26
.LBB0_39:                               # %if.end.65
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-2608(%rbp,%rcx,8), %rdi
	callq	AddStr
	cmpl	$3, -24(%rbp)
	je	.LBB0_41
# BB#40:                                # %if.then.68
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.10, %rdi
	callq	AddStr
	xorl	%edi, %edi
	callq	Flush
.LBB0_41:                               # %if.end.69
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_86
.LBB0_42:                               # %if.else.70
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2608(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_50
# BB#43:                                # %if.then.74
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, display
	jne	.LBB0_45
# BB#44:                                # %if.then.76
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_45:                               # %if.end.77
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_46
.LBB0_46:                               # %do.body.78
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.79
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$2, -24(%rbp)
	je	.LBB0_49
# BB#48:                                # %if.then.81
                                        #   in Loop: Header=BB0_26 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_26
.LBB0_49:                               # %if.end.82
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2600(%rbp), %rdi
	callq	atoi
	movl	$1, %esi
	imull	$1000, %eax, %edi       # imm = 0x3E8
	callq	DisplaySleep1000
	jmp	.LBB0_85
.LBB0_50:                               # %if.else.85
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2608(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_52
# BB#51:                                # %lor.lhs.false.89
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2608(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_79
.LBB0_52:                               # %if.then.93
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, display
	jne	.LBB0_54
# BB#53:                                # %if.then.95
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_54:                               # %if.end.96
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$3, -24(%rbp)
	jl	.LBB0_56
# BB#55:                                # %lor.lhs.false.98
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$4, -24(%rbp)
	jle	.LBB0_57
.LBB0_56:                               # %if.then.100
                                        #   in Loop: Header=BB0_26 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.15, %rsi
	movq	rc_name, %rdx
	movq	-2608(%rbp), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_26
.LBB0_57:                               # %if.end.102
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2600(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_58:                               # %for.cond
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -2897(%rbp)        # 1-byte Spill
	je	.LBB0_60
# BB#59:                                # %land.rhs
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -2897(%rbp)        # 1-byte Spill
.LBB0_60:                               # %land.end
                                        #   in Loop: Header=BB0_58 Depth=2
	movb	-2897(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_61
	jmp	.LBB0_73
.LBB0_61:                               # %for.body
                                        #   in Loop: Header=BB0_58 Depth=2
	movl	$124, %esi
	movq	-40(%rbp), %rdi
	callq	index
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB0_63
# BB#62:                                # %if.then.109
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$0, (%rax)
.LBB0_63:                               # %if.end.110
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-40(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB0_68
# BB#64:                                # %if.then.119
                                        #   in Loop: Header=BB0_58 Depth=2
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_66
# BB#65:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-40(%rbp), %rdi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_67
.LBB0_66:                               # %if.then.129
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_73
.LBB0_67:                               # %if.end.130
                                        #   in Loop: Header=BB0_58 Depth=2
	jmp	.LBB0_71
.LBB0_68:                               # %if.else.131
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-40(%rbp), %rdi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_70
# BB#69:                                # %if.then.136
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_73
.LBB0_70:                               # %if.end.137
                                        #   in Loop: Header=BB0_58 Depth=2
	jmp	.LBB0_71
.LBB0_71:                               # %if.end.138
                                        #   in Loop: Header=BB0_58 Depth=2
	jmp	.LBB0_72
.LBB0_72:                               # %for.inc
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_58
.LBB0_73:                               # %for.end
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_75
# BB#74:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_76
.LBB0_75:                               # %if.then.143
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_76:                               # %if.end.144
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2592(%rbp), %rdi
	movq	extra_incap, %rsi
	callq	CatExtra
	movq	%rax, extra_incap
	cmpl	$4, -24(%rbp)
	jne	.LBB0_78
# BB#77:                                # %if.then.149
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2584(%rbp), %rdi
	movq	extra_outcap, %rsi
	callq	CatExtra
	movq	%rax, extra_outcap
.LBB0_78:                               # %if.end.152
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_84
.LBB0_79:                               # %if.else.153
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-2608(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_83
# BB#80:                                # %if.then.157
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$10, rc_recursion
	jg	.LBB0_82
# BB#81:                                # %if.then.160
                                        #   in Loop: Header=BB0_26 Depth=1
	xorl	%esi, %esi
	movl	rc_recursion, %eax
	addl	$1, %eax
	movl	%eax, rc_recursion
	movq	-2600(%rbp), %rdi
	callq	StartRc
	movl	rc_recursion, %esi
	addl	$-1, %esi
	movl	%esi, rc_recursion
	movl	%eax, -2904(%rbp)       # 4-byte Spill
.LBB0_82:                               # %if.end.163
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_83
.LBB0_83:                               # %if.end.164
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_84
.LBB0_84:                               # %if.end.165
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_85
.LBB0_85:                               # %if.end.166
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.167
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_87:                               # %while.end
	movq	-2872(%rbp), %rdi
	callq	fclose
	cmpq	$0, rc_name
	movl	%eax, -2908(%rbp)       # 4-byte Spill
	jne	.LBB0_89
# BB#88:                                # %if.then.171
	callq	abort
.LBB0_89:                               # %if.else.172
	movq	rc_name, %rdi
	callq	free
# BB#90:                                # %if.end.173
	movq	$0, rc_name
	movq	-2880(%rbp), %rax
	movq	%rax, rc_name
	movl	$0, -4(%rbp)
.LBB0_91:                               # %return
	movl	-4(%rbp), %eax
	addq	$2912, %rsp             # imm = 0xB60
	popq	%rbp
	retq
.Lfunc_end0:
	.size	StartRc, .Lfunc_end0-StartRc
	.cfi_endproc

	.align	16, 0x90
	.type	CatExtra,@function
CatExtra:                               # @CatExtra
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$58, %eax
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %ecx
	addl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	callq	realloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.14
	xorl	%edi, %edi
	movabsq	$.L.str.35, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB1_5:                                # %if.end.15
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	bcopy
	jmp	.LBB1_9
.LBB1_6:                                # %if.else
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_8
# BB#7:                                 # %if.then.26
	xorl	%edi, %edi
	movabsq	$.L.str.35, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB1_8:                                # %if.end.27
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB1_9:                                # %if.end.31
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	bcopy
	cmpl	$0, -44(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.34
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$58, (%rcx,%rax)
.LBB1_11:                               # %if.end.37
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	CatExtra, .Lfunc_end1-CatExtra
	.cfi_endproc

	.align	16, 0x90
	.type	findrcfile,@function
findrcfile:                             # @findrcfile
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_13
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB2_13
# BB#2:                                 # %if.then
	movl	$47, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jne	.LBB2_6
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.51, %rdi
	callq	getenv
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB2_5
# BB#4:                                 # %if.then.7
	xorl	%edi, %edi
	movabsq	$.L.str.52, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB2_35
.LBB2_5:                                # %if.end
	movabsq	$findrcfile.rcfilename_tilde_exp, %rdi
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %esi
	movabsq	$.L.str.53, %rdx
	movq	-296(%rbp), %rcx
	movq	-16(%rbp), %r8
	addq	$2, %r8
	movb	$0, %al
	callq	snprintf
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB2_12
.LBB2_6:                                # %if.else
	cmpq	$0, -288(%rbp)
	je	.LBB2_10
# BB#7:                                 # %if.then.11
	movq	-288(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	getpwnam
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %if.then.16
	xorl	%edi, %edi
	movabsq	$.L.str.54, %rsi
	movq	rc_name, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB2_35
.LBB2_9:                                # %if.end.18
	movabsq	$findrcfile.rcfilename_tilde_exp, %rdi
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %esi
	movabsq	$.L.str.53, %rdx
	movq	-304(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-288(%rbp), %r8
	addq	$1, %r8
	movb	$0, %al
	callq	snprintf
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.21
	xorl	%edi, %edi
	movabsq	$.L.str.55, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB2_35
.LBB2_11:                               # %if.end.22
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.23
	movabsq	$findrcfile.rcfilename_tilde_exp, %rax
	movq	%rax, -16(%rbp)
.LBB2_13:                               # %if.end.24
	cmpq	$0, -16(%rbp)
	je	.LBB2_23
# BB#14:                                # %if.then.26
	movl	$47, %esi
	movq	rc_name, %rdi
	callq	rindex
	movq	%rax, -312(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	$47, %esi
	je	.LBB2_20
# BB#15:                                # %land.lhs.true.31
	cmpq	$0, -312(%rbp)
	je	.LBB2_20
# BB#16:                                # %land.lhs.true.33
	movq	-312(%rbp), %rax
	movq	rc_name, %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-328(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$2, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jae	.LBB2_20
# BB#17:                                # %if.then.38
	leaq	-272(%rbp), %rdi
	movq	rc_name, %rsi
	movq	-312(%rbp), %rax
	movq	rc_name, %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	strncpy
	movl	$4, %esi
	leaq	-272(%rbp), %rcx
	movq	-312(%rbp), %rdx
	movq	rc_name, %rdi
	subq	%rdi, %rdx
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	$1, %rdi
	movq	-16(%rbp), %rdx
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	strcpy
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	access
	cmpl	$0, %eax
	jne	.LBB2_19
# BB#18:                                # %if.then.55
	leaq	-272(%rbp), %rdi
	callq	SaveStr
	movq	%rax, -8(%rbp)
	jmp	.LBB2_35
.LBB2_19:                               # %if.end.58
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.59
	jmp	.LBB2_21
.LBB2_21:                               # %do.body
	jmp	.LBB2_22
.LBB2_22:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	SaveStr
	movq	%rax, -8(%rbp)
	jmp	.LBB2_35
.LBB2_23:                               # %if.end.61
	jmp	.LBB2_24
.LBB2_24:                               # %do.body.62
	jmp	.LBB2_25
.LBB2_25:                               # %do.end.63
	movabsq	$.L.str.56, %rdi
	callq	getenv
	movq	%rax, -280(%rbp)
	cmpq	$0, %rax
	je	.LBB2_30
# BB#26:                                # %land.lhs.true.67
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_30
# BB#27:                                # %if.then.71
	jmp	.LBB2_28
.LBB2_28:                               # %do.body.72
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.73
	movq	-280(%rbp), %rdi
	callq	SaveStr
	movq	%rax, -8(%rbp)
	jmp	.LBB2_35
.LBB2_30:                               # %if.else.75
	jmp	.LBB2_31
.LBB2_31:                               # %do.body.76
	jmp	.LBB2_32
.LBB2_32:                               # %do.end.77
	movq	home, %rdi
	callq	strlen
	cmpq	$244, %rax
	jbe	.LBB2_34
# BB#33:                                # %if.then.81
	xorl	%edi, %edi
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	Panic
.LBB2_34:                               # %if.end.82
	movabsq	$.L.str.58, %rsi
	leaq	-272(%rbp), %rdi
	movq	home, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-272(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	SaveStr
	movq	%rax, -8(%rbp)
.LBB2_35:                               # %return
	movq	-8(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end2:
	.size	findrcfile, .Lfunc_end2-findrcfile
	.cfi_endproc

	.globl	secfopen
	.align	16, 0x90
	.type	secfopen,@function
secfopen:                               # @secfopen
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	secfopen, .Lfunc_end3-secfopen
	.cfi_endproc

	.globl	FinishRc
	.align	16, 0x90
	.type	FinishRc,@function
FinishRc:                               # @FinishRc
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
	subq	$2112, %rsp             # imm = 0x840
	movq	%rdi, -8(%rbp)
	movq	rc_name, %rdi
	movq	%rdi, -2080(%rbp)
	movq	-8(%rbp), %rdi
	callq	findrcfile
	movq	%rax, rc_name
	cmpq	$0, rc_name
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$.L.str.5, %rsi
	movq	rc_name, %rdi
	callq	secfopen
	movq	%rax, -2072(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_21
.LBB4_2:                                # %if.then
	cmpq	$0, rc_name
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	rc_name, %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
.LBB4_5:                                # %cond.end
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2088(%rbp)
	cmpl	$0, rc_recursion
	je	.LBB4_7
# BB#6:                                 # %if.then.4
	callq	__errno_location
	movabsq	$.L.str.17, %rsi
	movl	(%rax), %edi
	movq	-2080(%rbp), %rdx
	movq	-2088(%rbp), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB4_13
.LBB4_7:                                # %if.else
	cmpq	$0, RcFileName
	je	.LBB4_12
# BB#8:                                 # %land.lhs.true
	movq	RcFileName, %rdi
	movq	-2088(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_12
# BB#9:                                 # %if.then.9
	jmp	.LBB4_10
.LBB4_10:                               # %do.body
	jmp	.LBB4_11
.LBB4_11:                               # %do.end
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movq	-2088(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB4_12:                               # %if.end
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.10
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	cmpq	$0, rc_name
	je	.LBB4_20
# BB#16:                                # %if.then.14
	cmpq	$0, rc_name
	jne	.LBB4_18
# BB#17:                                # %if.then.16
	callq	abort
.LBB4_18:                               # %if.else.17
	movq	rc_name, %rdi
	callq	free
# BB#19:                                # %if.end.18
	movq	$0, rc_name
.LBB4_20:                               # %if.end.19
	movq	-2080(%rbp), %rax
	movq	%rax, rc_name
	jmp	.LBB4_30
.LBB4_21:                               # %if.end.20
	jmp	.LBB4_22
.LBB4_22:                               # %do.body.21
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.22
	jmp	.LBB4_24
.LBB4_24:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$2048, %esi             # imm = 0x800
	leaq	-2064(%rbp), %rdi
	movq	-2072(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB4_26
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	$2048, %esi             # imm = 0x800
	leaq	-2064(%rbp), %rdi
	callq	RcLine
	jmp	.LBB4_24
.LBB4_26:                               # %while.end
	movq	-2072(%rbp), %rdi
	callq	fclose
	cmpq	$0, rc_name
	movl	%eax, -2100(%rbp)       # 4-byte Spill
	jne	.LBB4_28
# BB#27:                                # %if.then.28
	callq	abort
.LBB4_28:                               # %if.else.29
	movq	rc_name, %rdi
	callq	free
# BB#29:                                # %if.end.30
	movq	$0, rc_name
	movq	-2080(%rbp), %rax
	movq	%rax, rc_name
.LBB4_30:                               # %return
	addq	$2112, %rsp             # imm = 0x840
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FinishRc, .Lfunc_end4-FinishRc
	.cfi_endproc

	.globl	RcLine
	.align	16, 0x90
	.type	RcLine,@function
RcLine:                                 # @RcLine
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
	subq	$800, %rsp              # imm = 0x320
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, display
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	cmpq	$0, fore
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	fore, %rax
	movq	152(%rax), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, flayer
.LBB5_6:                                # %if.end
	leaq	-784(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	Parse
	cmpl	$0, %eax
	jg	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_13
.LBB5_8:                                # %if.end.4
	cmpq	$0, display
	jne	.LBB5_12
# BB#9:                                 # %if.then.6
	movq	users, %rax
	movq	%rax, EffectiveAclUser
# BB#10:                                # %do.body
	jmp	.LBB5_11
.LBB5_11:                               # %do.end
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.7
	leaq	-784(%rbp), %rsi
	leaq	-528(%rbp), %rdi
	callq	DoCommand
	movq	$0, EffectiveAclUser
.LBB5_13:                               # %return
	addq	$800, %rsp              # imm = 0x320
	popq	%rbp
	retq
.Lfunc_end5:
	.size	RcLine, .Lfunc_end5-RcLine
	.cfi_endproc

	.globl	do_source
	.align	16, 0x90
	.type	do_source,@function
do_source:                              # @do_source
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
	movq	%rdi, -8(%rbp)
	cmpl	$10, rc_recursion
	jle	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.18, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movl	rc_recursion, %eax
	addl	$1, %eax
	movl	%eax, rc_recursion
	movq	-8(%rbp), %rdi
	callq	FinishRc
	movl	rc_recursion, %eax
	addl	$-1, %eax
	movl	%eax, rc_recursion
.LBB6_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	do_source, .Lfunc_end6-do_source
	.cfi_endproc

	.globl	WriteFile
	.align	16, 0x90
	.type	WriteFile,@function
WriteFile:                              # @WriteFile
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
	subq	$1584, %rsp             # imm = 0x630
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$.L.str.19, -1080(%rbp)
	movl	$0, -1084(%rbp)
	movl	$0, -1384(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rsi, %rdi
	subq	$3, %rdi
	movq	%rsi, -1392(%rbp)       # 8-byte Spill
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	ja	.LBB7_27
# BB#122:                               # %entry
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	cmpq	$0, -16(%rbp)
	jne	.LBB7_5
# BB#2:                                 # %if.then
	movabsq	$SockPath, %rax
	movq	SockName, %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -24(%rbp)
	cmpl	$1015, -24(%rbp)        # imm = 0x3F7
	jle	.LBB7_4
# BB#3:                                 # %if.then.3
	movl	$0, -24(%rbp)
.LBB7_4:                                # %if.end
	movabsq	$SockPath, %rsi
	leaq	-1072(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	callq	strncpy
	leaq	-1072(%rbp), %rdx
	movslq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
	callq	strcpy
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -16(%rbp)
	movq	%rax, -1424(%rbp)       # 8-byte Spill
.LBB7_5:                                # %if.end.8
	jmp	.LBB7_27
.LBB7_6:                                # %sw.bb.9
	cmpq	$0, -16(%rbp)
	jne	.LBB7_15
# BB#7:                                 # %if.then.12
	cmpq	$0, fore
	jne	.LBB7_9
# BB#8:                                 # %if.then.15
	jmp	.LBB7_121
.LBB7_9:                                # %if.end.16
	cmpq	$0, hardcopydir
	je	.LBB7_13
# BB#10:                                # %land.lhs.true
	movq	hardcopydir, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_13
# BB#11:                                # %land.lhs.true.19
	movq	hardcopydir, %rdi
	callq	strlen
	cmpq	$1003, %rax             # imm = 0x3EB
	jae	.LBB7_13
# BB#12:                                # %if.then.23
	movabsq	$.L.str.21, %rsi
	leaq	-1072(%rbp), %rdi
	movq	hardcopydir, %rdx
	movq	fore, %rax
	movl	192(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1428(%rbp)       # 4-byte Spill
	jmp	.LBB7_14
.LBB7_13:                               # %if.else
	movabsq	$.L.str.22, %rsi
	leaq	-1072(%rbp), %rdi
	movq	fore, %rax
	movl	192(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1432(%rbp)       # 4-byte Spill
.LBB7_14:                               # %if.end.29
	leaq	-1072(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB7_15:                               # %if.end.31
	cmpl	$0, hardcopy_append
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.33
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	jne	.LBB7_18
# BB#17:                                # %if.then.36
	movabsq	$.L.str.23, %rax
	movq	%rax, -1080(%rbp)
.LBB7_18:                               # %if.end.37
	jmp	.LBB7_27
.LBB7_19:                               # %sw.bb.38
	cmpq	$0, -16(%rbp)
	jne	.LBB7_21
# BB#20:                                # %if.then.41
	movl	$1023, %eax             # imm = 0x3FF
	movl	%eax, %edx
	leaq	-1072(%rbp), %rdi
	movq	BufferFile, %rsi
	callq	strncpy
	leaq	-1072(%rbp), %rdx
	movb	$0, -49(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -1440(%rbp)       # 8-byte Spill
.LBB7_21:                               # %if.end.45
	leaq	-1232(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %ecx
	movq	%rsi, -1448(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	callq	strcmp
	cmpl	$0, %eax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -1084(%rbp)
	movq	-16(%rbp), %rdi
	movq	-1448(%rbp), %rsi       # 8-byte Reload
	callq	lstat
	cmpl	$0, %eax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -1384(%rbp)
	cmpl	$0, -1084(%rbp)
	je	.LBB7_26
# BB#22:                                # %land.lhs.true.53
	cmpl	$0, -1384(%rbp)
	je	.LBB7_26
# BB#23:                                # %land.lhs.true.55
	movl	-1208(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$40960, %eax            # imm = 0xA000
	je	.LBB7_25
# BB#24:                                # %lor.lhs.false
	cmpq	$1, -1216(%rbp)
	jbe	.LBB7_26
.LBB7_25:                               # %if.then.60
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_121
.LBB7_26:                               # %if.end.61
	jmp	.LBB7_27
.LBB7_27:                               # %sw.epilog
	jmp	.LBB7_28
.LBB7_28:                               # %do.body
	jmp	.LBB7_29
.LBB7_29:                               # %do.end
	callq	UserContext
	cmpl	$0, %eax
	jle	.LBB7_111
# BB#30:                                # %if.then.65
	jmp	.LBB7_31
.LBB7_31:                               # %do.body.66
	jmp	.LBB7_32
.LBB7_32:                               # %do.end.67
	cmpl	$2, -20(%rbp)
	jne	.LBB7_48
# BB#33:                                # %land.lhs.true.70
	cmpl	$0, -1084(%rbp)
	je	.LBB7_48
# BB#34:                                # %if.then.72
	cmpl	$0, -1384(%rbp)
	je	.LBB7_43
# BB#35:                                # %if.then.74
	movl	$1, %esi
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -1380(%rbp)
	cmpl	$0, %eax
	jl	.LBB7_42
# BB#36:                                # %if.then.78
	leaq	-1376(%rbp), %rsi
	movl	-1380(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB7_40
# BB#37:                                # %land.lhs.true.82
	movq	-1232(%rbp), %rax
	cmpq	-1376(%rbp), %rax
	jne	.LBB7_40
# BB#38:                                # %land.lhs.true.86
	movq	-1224(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jne	.LBB7_40
# BB#39:                                # %if.then.90
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-1380(%rbp), %edi
	callq	ftruncate
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %if.else.92
	movl	-1380(%rbp), %edi
	callq	close
	movl	$-1, -1380(%rbp)
	movl	%eax, -1456(%rbp)       # 4-byte Spill
.LBB7_41:                               # %if.end.94
	jmp	.LBB7_42
.LBB7_42:                               # %if.end.95
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.96
	movl	$193, %esi
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -1380(%rbp)
.LBB7_44:                               # %if.end.98
	cmpl	$0, -1380(%rbp)
	jl	.LBB7_46
# BB#45:                                # %cond.true
	movl	-1380(%rbp), %edi
	movq	-1080(%rbp), %rsi
	callq	fdopen
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB7_47
.LBB7_46:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB7_47
.LBB7_47:                               # %cond.end
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB7_49
.LBB7_48:                               # %if.else.102
	movq	-16(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
.LBB7_49:                               # %if.end.104
	cmpq	$0, -48(%rbp)
	jne	.LBB7_53
# BB#50:                                # %if.then.107
	jmp	.LBB7_51
.LBB7_51:                               # %do.body.108
	jmp	.LBB7_52
.LBB7_52:                               # %do.end.109
	xorl	%edi, %edi
	callq	UserReturn
	jmp	.LBB7_110
.LBB7_53:                               # %if.else.110
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	movq	%rdx, -1480(%rbp)       # 8-byte Spill
	ja	.LBB7_109
# BB#123:                               # %if.else.110
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_54:                               # %sw.bb.111
	cmpq	$0, fore
	jne	.LBB7_56
# BB#55:                                # %if.then.113
	jmp	.LBB7_109
.LBB7_56:                               # %if.end.114
	movq	-1080(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB7_62
# BB#57:                                # %if.then.118
	movl	$62, %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movq	fore, %rsi
	movl	32(%rsi), %edi
	subl	$2, %edi
	movl	%edi, -28(%rbp)
	movl	%eax, -1484(%rbp)       # 4-byte Spill
.LBB7_58:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jle	.LBB7_61
# BB#59:                                # %for.body
                                        #   in Loop: Header=BB7_58 Depth=1
	movl	$61, %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1488(%rbp)       # 4-byte Spill
# BB#60:                                # %for.inc
                                        #   in Loop: Header=BB7_58 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_58
.LBB7_61:                               # %for.end
	movabsq	$.L.str.26, %rdi
	movq	-48(%rbp), %rsi
	callq	fputs
	movl	%eax, -1492(%rbp)       # 4-byte Spill
.LBB7_62:                               # %if.end.124
	cmpl	$3, -20(%rbp)
	jne	.LBB7_81
# BB#63:                                # %if.then.127
	movl	$0, -24(%rbp)
.LBB7_64:                               # %for.cond.128
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_69 Depth 2
                                        #     Child Loop BB7_75 Depth 2
	movl	-24(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB7_80
# BB#65:                                # %for.body.131
                                        #   in Loop: Header=BB7_64 Depth=1
	movl	-24(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB7_67
# BB#66:                                # %cond.true.135
                                        #   in Loop: Header=BB7_64 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-24(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-1504(%rbp), %rsi       # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB7_68
.LBB7_67:                               # %cond.false.138
                                        #   in Loop: Header=BB7_64 Depth=1
	movl	-24(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
.LBB7_68:                               # %cond.end.143
                                        #   in Loop: Header=BB7_64 Depth=1
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -32(%rbp)
.LBB7_69:                               # %for.cond.148
                                        #   Parent Loop BB7_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -32(%rbp)
	movb	%cl, -1513(%rbp)        # 1-byte Spill
	jl	.LBB7_71
# BB#70:                                # %land.rhs
                                        #   in Loop: Header=BB7_69 Depth=2
	movslq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -1513(%rbp)       # 1-byte Spill
.LBB7_71:                               # %land.end
                                        #   in Loop: Header=BB7_69 Depth=2
	movb	-1513(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_72
	jmp	.LBB7_74
.LBB7_72:                               # %for.body.156
                                        #   in Loop: Header=BB7_69 Depth=2
	jmp	.LBB7_73
.LBB7_73:                               # %for.inc.157
                                        #   in Loop: Header=BB7_69 Depth=2
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_69
.LBB7_74:                               # %for.end.159
                                        #   in Loop: Header=BB7_64 Depth=1
	movl	$0, -28(%rbp)
.LBB7_75:                               # %for.cond.160
                                        #   Parent Loop BB7_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB7_78
# BB#76:                                # %for.body.163
                                        #   in Loop: Header=BB7_75 Depth=2
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1520(%rbp)       # 4-byte Spill
# BB#77:                                # %for.inc.168
                                        #   in Loop: Header=BB7_75 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_75
.LBB7_78:                               # %for.end.169
                                        #   in Loop: Header=BB7_64 Depth=1
	movl	$10, %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1524(%rbp)       # 4-byte Spill
# BB#79:                                # %for.inc.171
                                        #   in Loop: Header=BB7_64 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_64
.LBB7_80:                               # %for.end.173
	jmp	.LBB7_81
.LBB7_81:                               # %if.end.174
	movl	$0, -24(%rbp)
.LBB7_82:                               # %for.cond.175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_84 Depth 2
                                        #     Child Loop BB7_90 Depth 2
	movl	-24(%rbp), %eax
	movq	fore, %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB7_95
# BB#83:                                # %for.body.179
                                        #   in Loop: Header=BB7_82 Depth=1
	movslq	-24(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	fore, %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, -32(%rbp)
.LBB7_84:                               # %for.cond.187
                                        #   Parent Loop BB7_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -32(%rbp)
	movb	%cl, -1525(%rbp)        # 1-byte Spill
	jl	.LBB7_86
# BB#85:                                # %land.rhs.190
                                        #   in Loop: Header=BB7_84 Depth=2
	movslq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -1525(%rbp)       # 1-byte Spill
.LBB7_86:                               # %land.end.196
                                        #   in Loop: Header=BB7_84 Depth=2
	movb	-1525(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_87
	jmp	.LBB7_89
.LBB7_87:                               # %for.body.197
                                        #   in Loop: Header=BB7_84 Depth=2
	jmp	.LBB7_88
.LBB7_88:                               # %for.inc.198
                                        #   in Loop: Header=BB7_84 Depth=2
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_84
.LBB7_89:                               # %for.end.200
                                        #   in Loop: Header=BB7_82 Depth=1
	movl	$0, -28(%rbp)
.LBB7_90:                               # %for.cond.201
                                        #   Parent Loop BB7_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB7_93
# BB#91:                                # %for.body.204
                                        #   in Loop: Header=BB7_90 Depth=2
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1532(%rbp)       # 4-byte Spill
# BB#92:                                # %for.inc.209
                                        #   in Loop: Header=BB7_90 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_90
.LBB7_93:                               # %for.end.211
                                        #   in Loop: Header=BB7_82 Depth=1
	movl	$10, %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1536(%rbp)       # 4-byte Spill
# BB#94:                                # %for.inc.213
                                        #   in Loop: Header=BB7_82 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_82
.LBB7_95:                               # %for.end.215
	jmp	.LBB7_109
.LBB7_96:                               # %sw.bb.216
	movq	fore, %rax
	movl	8728(%rax), %edi
	callq	MakeTermcap
	movl	$61, %esi
	movq	%rax, %rdi
	callq	index
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB7_98
# BB#97:                                # %if.then.221
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -1540(%rbp)       # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -1544(%rbp)       # 4-byte Spill
.LBB7_98:                               # %if.end.224
	jmp	.LBB7_109
.LBB7_99:                               # %sw.bb.225
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB7_100:                              # %for.cond.227
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_108
# BB#101:                               # %for.body.231
                                        #   in Loop: Header=BB7_100 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB7_105
# BB#102:                               # %land.lhs.true.235
                                        #   in Loop: Header=BB7_100 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB7_104
# BB#103:                               # %lor.lhs.false.238
                                        #   in Loop: Header=BB7_100 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB7_105
.LBB7_104:                              # %if.then.243
                                        #   in Loop: Header=BB7_100 Depth=1
	movl	$10, %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1548(%rbp)       # 4-byte Spill
	jmp	.LBB7_106
.LBB7_105:                              # %if.else.245
                                        #   in Loop: Header=BB7_100 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edi
	movq	-48(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -1552(%rbp)       # 4-byte Spill
.LBB7_106:                              # %if.end.248
                                        #   in Loop: Header=BB7_100 Depth=1
	jmp	.LBB7_107
.LBB7_107:                              # %for.inc.249
                                        #   in Loop: Header=BB7_100 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_100
.LBB7_108:                              # %for.end.251
	jmp	.LBB7_109
.LBB7_109:                              # %sw.epilog.252
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$1, %edi
	movl	%eax, -1556(%rbp)       # 4-byte Spill
	callq	UserReturn
.LBB7_110:                              # %if.end.254
	jmp	.LBB7_111
.LBB7_111:                              # %if.end.255
	callq	UserStatus
	cmpl	$0, %eax
	jg	.LBB7_113
# BB#112:                               # %if.then.259
	xorl	%edi, %edi
	movabsq	$.L.str.27, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_121
.LBB7_113:                              # %if.else.260
	cmpq	$0, display
	je	.LBB7_120
# BB#114:                               # %land.lhs.true.262
	movq	rc_name, %rax
	cmpb	$0, (%rax)
	jne	.LBB7_120
# BB#115:                               # %if.then.264
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
	movq	%rdx, -1576(%rbp)       # 8-byte Spill
	ja	.LBB7_119
# BB#124:                               # %if.then.264
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movq	.LJTI7_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_116:                              # %sw.bb.265
	xorl	%edi, %edi
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_119
.LBB7_117:                              # %sw.bb.266
	xorl	%edi, %edi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.30, %rcx
	movq	-1080(%rbp), %rdx
	movsbl	(%rdx), %r8d
	cmpl	$97, %r8d
	cmoveq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_119
.LBB7_118:                              # %sw.bb.271
	xorl	%edi, %edi
	movabsq	$.L.str.32, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB7_119:                              # %sw.epilog.272
	jmp	.LBB7_120
.LBB7_120:                              # %if.end.273
	jmp	.LBB7_121
.LBB7_121:                              # %if.end.274
	addq	$1584, %rsp             # imm = 0x630
	popq	%rbp
	retq
.Lfunc_end7:
	.size	WriteFile, .Lfunc_end7-WriteFile
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_6
	.quad	.LBB7_19
	.quad	.LBB7_6
.LJTI7_1:
	.quad	.LBB7_96
	.quad	.LBB7_54
	.quad	.LBB7_99
	.quad	.LBB7_54
.LJTI7_2:
	.quad	.LBB7_116
	.quad	.LBB7_117
	.quad	.LBB7_118
	.quad	.LBB7_117

	.text
	.globl	ReadFile
	.align	16, 0x90
	.type	ReadFile,@function
ReadFile:                               # @ReadFile
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.end
	jmp	.LBB8_3
.LBB8_3:                                # %do.body.1
	jmp	.LBB8_4
.LBB8_4:                                # %do.end.2
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	secopen
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB8_6
# BB#5:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.33, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB8_27
.LBB8_6:                                # %if.end
	leaq	-200(%rbp), %rsi
	movl	-28(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.5
	callq	__errno_location
	movabsq	$.L.str.34, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	-28(%rbp), %edi
	callq	close
	movq	$0, -8(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB8_27
.LBB8_8:                                # %if.end.8
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_10
# BB#9:                                 # %if.then.13
	movl	-28(%rbp), %edi
	callq	close
	xorl	%edi, %edi
	movabsq	$.L.str.35, %rsi
	movabsq	$strnomem, %rdx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB8_27
.LBB8_10:                               # %if.end.15
	callq	__errno_location
	movl	$0, (%rax)
	movl	-28(%rbp), %edi
	movq	-56(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -32(%rbp)
	cmpl	-36(%rbp), %edi
	je	.LBB8_14
# BB#11:                                # %if.then.22
	cmpl	$0, -32(%rbp)
	jge	.LBB8_13
# BB#12:                                # %if.then.25
	movl	$0, -32(%rbp)
.LBB8_13:                               # %if.end.26
	callq	__errno_location
	movabsq	$.L.str.36, %rsi
	movl	(%rax), %edi
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB8_18
.LBB8_14:                               # %if.else
	leaq	-37(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %edi
	callq	read
	cmpq	$0, %rax
	jle	.LBB8_16
# BB#15:                                # %if.then.31
	xorl	%edi, %edi
	movabsq	$.L.str.37, %rsi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movb	$0, %al
	callq	Msg
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.32
	xorl	%edi, %edi
	movabsq	$.L.str.38, %rsi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	Msg
.LBB8_17:                               # %if.end.33
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.34
	movl	-28(%rbp), %edi
	callq	close
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	%edi, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB8_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_26
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB8_24
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-48(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$13, %ecx
	je	.LBB8_24
.LBB8_23:                               # %if.then.46
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-48(%rbp), %rax
	movb	$13, (%rax)
.LBB8_24:                               # %if.end.47
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_25
.LBB8_25:                               # %for.inc
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_19
.LBB8_26:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ReadFile, .Lfunc_end8-ReadFile
	.cfi_endproc

	.globl	secopen
	.align	16, 0x90
	.type	secopen,@function
secopen:                                # @secopen
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB9_2
.LBB9_2:                                # %do.end
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	open
	movl	%eax, -20(%rbp)
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	secopen, .Lfunc_end9-secopen
	.cfi_endproc

	.globl	KillBuffers
	.align	16, 0x90
	.type	KillBuffers,@function
KillBuffers:                            # @KillBuffers
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
	callq	UserContext
	cmpl	$0, %eax
	jle	.LBB10_5
# BB#1:                                 # %if.then
	movq	BufferFile, %rdi
	callq	unlink
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %cond.true
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)          # 4-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB10_4
.LBB10_4:                               # %cond.end
	movl	-4(%rbp), %eax          # 4-byte Reload
	movl	%eax, %edi
	callq	UserReturn
.LBB10_5:                               # %if.end
	callq	UserStatus
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	__errno_location
	movl	-8(%rbp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
	callq	__errno_location
	movl	(%rax), %edi
	movq	BufferFile, %rdx
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str, %rdx
	movabsq	$.L.str.40, %r8
	cmpl	$0, (%rax)
	cmovneq	%r8, %rdx
	movl	-12(%rbp), %edi         # 4-byte Reload
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	Msg
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	KillBuffers, .Lfunc_end10-KillBuffers
	.cfi_endproc

	.globl	printpipe
	.align	16, 0x90
	.type	printpipe,@function
printpipe:                              # @printpipe
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
	subq	$80, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	pipe
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.41, %rdx
	movl	(%rax), %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	WMsg
	movl	$-1, -4(%rbp)
	jmp	.LBB11_10
.LBB11_2:                               # %if.end
	callq	fork
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_11
.LBB11_11:                              # %if.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB11_4
	jmp	.LBB11_8
.LBB11_3:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.42, %rdx
	movl	(%rax), %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	WMsg
	movl	$-1, -4(%rbp)
	jmp	.LBB11_10
.LBB11_4:                               # %sw.bb.4
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, display
	movq	$0, displays
	callq	close
	movl	-32(%rbp), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	dup
	xorl	%edi, %edi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	closeallfiles
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %lor.lhs.false
	movl	real_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB11_7
.LBB11_6:                               # %if.then.11
	callq	__errno_location
	movabsq	$.L.str.43, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB11_7:                               # %if.end.13
	movl	$13, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-24(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	execl
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.44, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB11_8:                               # %sw.default
	jmp	.LBB11_9
.LBB11_9:                               # %sw.epilog
	movl	-32(%rbp), %edi
	callq	close
	movl	-28(%rbp), %edi
	movl	%edi, -4(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB11_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	printpipe, .Lfunc_end11-printpipe
	.cfi_endproc

	.globl	readpipe
	.align	16, 0x90
	.type	readpipe,@function
readpipe:                               # @readpipe
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
	subq	$80, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	pipe
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.47, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB12_12
.LBB12_2:                               # %if.end
	callq	fork
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_13
.LBB12_13:                              # %if.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB12_4
	jmp	.LBB12_10
.LBB12_3:                               # %sw.bb
	callq	__errno_location
	movabsq	$.L.str.48, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB12_12
.LBB12_4:                               # %sw.bb.4
	movl	$1, %edi
	movq	$0, displays
	callq	close
	movl	-20(%rbp), %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	dup
	cmpl	$1, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.7
	movl	-20(%rbp), %edi
	callq	close
	xorl	%edi, %edi
	movabsq	$.L.str.49, %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	Panic
.LBB12_6:                               # %if.end.10
	movl	$1, %edi
	callq	closeallfiles
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	jne	.LBB12_8
# BB#7:                                 # %lor.lhs.false
	movl	real_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB12_9
.LBB12_8:                               # %if.then.15
	movl	$1, %edi
	callq	close
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.50, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB12_9:                               # %if.end.18
	movl	$13, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	execvp
	movl	$1, %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	close
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.35, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	Panic
.LBB12_10:                              # %sw.default
	jmp	.LBB12_11
.LBB12_11:                              # %sw.epilog
	movl	-20(%rbp), %edi
	callq	close
	movl	-24(%rbp), %edi
	movl	%edi, -4(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB12_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	readpipe, .Lfunc_end12-readpipe
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	rc_name,@object         # @rc_name
	.data
	.globl	rc_name
	.align	8
rc_name:
	.quad	.L.str
	.size	rc_name, 8

	.type	rc_recursion,@object    # @rc_recursion
	.bss
	.globl	rc_recursion
	.align	4
rc_recursion:
	.long	0                       # 0x0
	.size	rc_recursion, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"TF"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vt"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"xterm"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"xn:f0=\033Op:f1=\033Oq:f2=\033Or:f3=\033Os:f4=\033Ot:f5=\033Ou:f6=\033Ov:f7=\033Ow:f8=\033Ox:f9=\033Oy:f.=\033On:f,=\033Ol:fe=\033OM:f+=\033Ok:f-=\033Om:f*=\033Oj:f/=\033Oo:fq=\033OX"
	.size	.L.str.4, 129

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unable to open \"%s\"."
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"echo"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: 'echo [-n] \"string\"' expected."
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\r\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"sleep"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: sleep: one numeric argument expected."
	.size	.L.str.12, 42

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"termcapinfo"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"terminfo"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: %s: incorrect number of arguments."
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"source"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: source %s"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: source: recursion limit reached"
	.size	.L.str.18, 36

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	".termcap"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s/hardcopy.%d"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"hardcopy.%d"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"a"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/tmp/screen-exchange"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"No write to links, please."
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<\n"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Cannot open \"%s\""
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Termcap entry written to \"%s\"."
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Screen image %s to \"%s\"."
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"appended"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"written"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Copybuffer written to \"%s\"."
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"no %s -- no slurp"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"no good %s -- no slurp"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Got only %d bytes from %s"
	.size	.L.str.36, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Slurped only %d characters (of %d) into buffer - try again"
	.size	.L.str.37, 59

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Slurped %d characters into buffer"
	.size	.L.str.38, 34

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s %sremoved"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"not "
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"printing pipe"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"printing fork"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"printpipe setuid"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/bin/sh"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"sh"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"-c"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"pipe"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"fork"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"dup"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"setuid/setgid"
	.size	.L.str.50, 14

	.type	findrcfile.rcfilename_tilde_exp,@object # @findrcfile.rcfilename_tilde_exp
	.local	findrcfile.rcfilename_tilde_exp
	.comm	findrcfile.rcfilename_tilde_exp,4097,16
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"HOME"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s: source: tilde expansion failed"
	.size	.L.str.52, 35

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s/%s"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s: source: tilde expansion failed for user %s"
	.size	.L.str.54, 47

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s: source: illegal tilde expression."
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"SCREENRC"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Rc: home too large"
	.size	.L.str.57, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%s/.screenrc"
	.size	.L.str.58, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
