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

	.globl	re_compile_fastmap
	.align	16, 0x90
	.type	re_compile_fastmap,@function
re_compile_fastmap:                     # @re_compile_fastmap
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	16(%rax), %rdi
	movq	%rdi, -80(%rbp)
	movb	$1, -81(%rbp)
	movb	$0, -82(%rbp)
# BB#1:                                 # %do.body
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$-2, -4(%rbp)
	jmp	.LBB1_111
.LBB1_3:                                # %if.end
	movl	$5, -32(%rbp)
	movl	$0, -28(%rbp)
# BB#4:                                 # %do.end
	xorl	%esi, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	memset
	movq	-16(%rbp), %rdx
	movb	56(%rdx), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 56(%rdx)
	movq	-16(%rbp), %rdx
	movb	56(%rdx), %cl
	andb	$-2, %cl
	movb	%cl, 56(%rdx)
.LBB1_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_46 Depth 2
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB1_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_10
.LBB1_7:                                # %if.then.8
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB1_5 Depth=1
	movsbl	-81(%rbp), %eax
	movq	-16(%rbp), %rcx
	movb	56(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	orl	%eax, %esi
	movb	%sil, %dl
	movb	56(%rcx), %dil
	andb	$1, %dl
	andb	$-2, %dil
	orb	%dl, %dil
	movb	%dil, 56(%rcx)
	movb	$1, -81(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB1_5
.LBB1_9:                                # %if.else
	jmp	.LBB1_109
.LBB1_10:                               # %if.end.22
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$29, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	ja	.LBB1_107
# BB#112:                               # %if.end.22
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_11:                               # %sw.bb
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 56(%rax)
	jmp	.LBB1_110
.LBB1_12:                               # %sw.bb.28
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	$1, (%rdx,%rax)
	jmp	.LBB1_108
.LBB1_13:                               # %sw.bb.32
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	shll	$3, %edx
	subl	$1, %edx
	movl	%edx, -20(%rbp)
.LBB1_14:                               # %for.cond
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -20(%rbp)
	jl	.LBB1_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	$1, %eax
	movl	$8, %ecx
	movl	-20(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-20(%rbp), %r8d
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-108(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB1_17
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB1_14 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB1_17:                               # %if.end.43
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_18
.LBB1_18:                               # %for.inc
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_14
.LBB1_19:                               # %for.end
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_108
.LBB1_20:                               # %sw.bb.45
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$3, %ecx
	movl	%ecx, -20(%rbp)
.LBB1_21:                               # %for.cond.48
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB1_24
# BB#22:                                # %for.body.51
                                        #   in Loop: Header=BB1_21 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#23:                                # %for.inc.54
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_21
.LBB1_24:                               # %for.end.55
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	shll	$3, %edx
	subl	$1, %edx
	movl	%edx, -20(%rbp)
.LBB1_25:                               # %for.cond.60
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -20(%rbp)
	jl	.LBB1_30
# BB#26:                                # %for.body.63
                                        #   in Loop: Header=BB1_25 Depth=2
	movl	$1, %eax
	movl	$8, %ecx
	movl	-20(%rbp), %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-20(%rbp), %r8d
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-116(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-120(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	jne	.LBB1_28
# BB#27:                                # %if.then.72
                                        #   in Loop: Header=BB1_25 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB1_28:                               # %if.end.75
                                        #   in Loop: Header=BB1_25 Depth=2
	jmp	.LBB1_29
.LBB1_29:                               # %for.inc.76
                                        #   in Loop: Header=BB1_25 Depth=2
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_25
.LBB1_30:                               # %for.end.78
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_108
.LBB1_31:                               # %sw.bb.79
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -20(%rbp)
.LBB1_32:                               # %for.cond.80
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB1_37
# BB#33:                                # %for.body.83
                                        #   in Loop: Header=BB1_32 Depth=2
	movslq	-20(%rbp), %rax
	movq	re_syntax_table, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$1, %edx
	jne	.LBB1_35
# BB#34:                                # %if.then.89
                                        #   in Loop: Header=BB1_32 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB1_35:                               # %if.end.92
                                        #   in Loop: Header=BB1_32 Depth=2
	jmp	.LBB1_36
.LBB1_36:                               # %for.inc.93
                                        #   in Loop: Header=BB1_32 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_32
.LBB1_37:                               # %for.end.95
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_108
.LBB1_38:                               # %sw.bb.96
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$0, -20(%rbp)
.LBB1_39:                               # %for.cond.97
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB1_44
# BB#40:                                # %for.body.100
                                        #   in Loop: Header=BB1_39 Depth=2
	movslq	-20(%rbp), %rax
	movq	re_syntax_table, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$1, %edx
	je	.LBB1_42
# BB#41:                                # %if.then.106
                                        #   in Loop: Header=BB1_39 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB1_42:                               # %if.end.109
                                        #   in Loop: Header=BB1_39 Depth=2
	jmp	.LBB1_43
.LBB1_43:                               # %for.inc.110
                                        #   in Loop: Header=BB1_39 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_39
.LBB1_44:                               # %for.end.112
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_108
.LBB1_45:                               # %sw.bb.113
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rbp), %rax
	movsbl	10(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movl	$0, -20(%rbp)
.LBB1_46:                               # %for.cond.116
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB1_49
# BB#47:                                # %for.body.119
                                        #   in Loop: Header=BB1_46 Depth=2
	movslq	-20(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#48:                                # %for.inc.122
                                        #   in Loop: Header=BB1_46 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_46
.LBB1_49:                               # %for.end.124
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	andq	$64, %rax
	cmpq	$0, %rax
	jne	.LBB1_51
# BB#50:                                # %if.then.127
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-88(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 10(%rdx)
	jmp	.LBB1_54
.LBB1_51:                               # %if.else.130
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB1_53
# BB#52:                                # %if.then.136
	jmp	.LBB1_110
.LBB1_53:                               # %if.end.137
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_54
.LBB1_54:                               # %if.end.138
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_108
.LBB1_55:                               # %sw.bb.139
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_56:                               # %sw.bb.140
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               # %do.body.141
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_58
.LBB1_58:                               # %do.body.142
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -20(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#59:                                # %do.end.148
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#60:                                # %do.end.150
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB1_62
# BB#61:                                # %if.then.154
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_62:                               # %if.end.155
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$15, %ecx
	je	.LBB1_65
# BB#63:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$21, %ecx
	je	.LBB1_65
# BB#64:                                # %if.then.162
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_65:                               # %if.end.163
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#66:                                # %do.body.165
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_67
.LBB1_67:                               # %do.body.166
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -20(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#68:                                # %do.end.173
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#69:                                # %do.end.175
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB1_72
# BB#70:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	-72(%rbp), %rcx
	jne	.LBB1_72
# BB#71:                                # %if.then.190
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
.LBB1_72:                               # %if.end.193
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_73:                               # %sw.bb.194
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_74
.LBB1_74:                               # %handle_on_failure_jump
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_75
.LBB1_75:                               # %do.body.195
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_76
.LBB1_76:                               # %do.body.196
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -20(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#77:                                # %do.end.203
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#78:                                # %do.end.205
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB1_90
# BB#79:                                # %if.then.210
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB1_87
# BB#80:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-32(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB1_82
# BB#81:                                # %cond.true
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_87
	jmp	.LBB1_86
.LBB1_82:                               # %cond.false
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_84
# BB#83:                                # %cond.true.232
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB1_85
.LBB1_84:                               # %cond.false.233
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$1, %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_85:                               # %cond.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_87
.LBB1_86:                               # %cond.true.237
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_89
	jmp	.LBB1_88
.LBB1_87:                               # %cond.false.238
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	$1, %al
	movq	-72(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-28(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -28(%rbp)
	movl	%esi, %esi
	movl	%esi, %edx
	movq	-40(%rbp), %r8
	movq	%rcx, (%r8,%rdx,8)
	testb	$1, %al
	jne	.LBB1_89
.LBB1_88:                               # %if.then.247
	movl	$-2, -4(%rbp)
	jmp	.LBB1_111
.LBB1_89:                               # %if.end.248
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_91
.LBB1_90:                               # %if.else.249
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 56(%rax)
.LBB1_91:                               # %if.end.254
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpb	$0, -82(%rbp)
	je	.LBB1_97
# BB#92:                                # %if.then.256
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_93
.LBB1_93:                               # %do.body.257
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_94
.LBB1_94:                               # %do.body.258
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -24(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
# BB#95:                                # %do.end.265
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#96:                                # %do.end.267
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	$0, -82(%rbp)
.LBB1_97:                               # %if.end.268
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_98:                               # %sw.bb.269
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#99:                                # %do.body.271
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_100
.LBB1_100:                              # %do.body.272
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -24(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
# BB#101:                               # %do.end.279
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#102:                               # %do.end.281
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB1_104
# BB#103:                               # %if.then.284
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -72(%rbp)
	movb	$1, -82(%rbp)
	jmp	.LBB1_74
.LBB1_104:                              # %if.end.286
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_105:                              # %sw.bb.287
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_106:                              # %sw.bb.289
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_107:                              # %sw.default
	callq	abort
.LBB1_108:                              # %sw.epilog
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_109:                              # %while.end
	movsbl	-81(%rbp), %eax
	movq	-16(%rbp), %rcx
	movb	56(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	orl	%eax, %esi
	movb	%sil, %dl
	movb	56(%rcx), %dil
	andb	$1, %dl
	andb	$-2, %dil
	orb	%dl, %dil
	movb	%dil, 56(%rcx)
.LBB1_110:                              # %done
	movl	$0, -4(%rbp)
.LBB1_111:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	re_compile_fastmap, .Lfunc_end1-re_compile_fastmap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_55
	.quad	.LBB1_107
	.quad	.LBB1_12
	.quad	.LBB1_45
	.quad	.LBB1_13
	.quad	.LBB1_20
	.quad	.LBB1_106
	.quad	.LBB1_106
	.quad	.LBB1_11
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_56
	.quad	.LBB1_56
	.quad	.LBB1_73
	.quad	.LBB1_73
	.quad	.LBB1_56
	.quad	.LBB1_56
	.quad	.LBB1_56
	.quad	.LBB1_55
	.quad	.LBB1_98
	.quad	.LBB1_56
	.quad	.LBB1_105
	.quad	.LBB1_31
	.quad	.LBB1_38
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55

	.text
	.globl	re_set_registers
	.align	16, 0x90
	.type	re_set_registers,@function
re_set_registers:                       # @re_set_registers
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	orb	$2, %cl
	movb	%cl, 56(%rax)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	movb	%cl, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB2_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	re_set_registers, .Lfunc_end2-re_set_registers
	.cfi_endproc

	.globl	re_search
	.align	16, 0x90
	.type	re_search,@function
re_search:                              # @re_search
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
	xorl	%eax, %eax
	movl	%eax, %r10d
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %r11d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	re_search_2
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	re_search, .Lfunc_end3-re_search
	.cfi_endproc

	.globl	re_search_2
	.align	16, 0x90
	.type	re_search_2,@function
re_search_2:                            # @re_search_2
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
	subq	$160, %rsp
	movl	32(%rbp), %eax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -48(%rbp)
	jl	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movl	-48(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB4_3
.LBB4_2:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB4_76
.LBB4_3:                                # %if.end
	cmpl	$0, -96(%rbp)
	jge	.LBB4_5
# BB#4:                                 # %if.then.6
	xorl	%eax, %eax
	subl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_8
.LBB4_5:                                # %if.else
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB4_7
# BB#6:                                 # %if.then.8
	movl	-92(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end.10
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jbe	.LBB4_17
# BB#9:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	jle	.LBB4_17
# BB#10:                                # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$11, %ecx
	je	.LBB4_13
# BB#11:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$9, %ecx
	jne	.LBB4_17
# BB#12:                                # %land.lhs.true.23
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_17
.LBB4_13:                               # %if.then.24
	cmpl	$0, -48(%rbp)
	jle	.LBB4_15
# BB#14:                                # %if.then.27
	movl	$-1, -4(%rbp)
	jmp	.LBB4_76
.LBB4_15:                               # %if.else.28
	movl	$1, -52(%rbp)
# BB#16:                                # %if.end.29
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.30
	cmpq	$0, -80(%rbp)
	je	.LBB4_22
# BB#18:                                # %land.lhs.true.32
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_22
# BB#19:                                # %if.then.37
	movq	-16(%rbp), %rdi
	callq	re_compile_fastmap
	cmpl	$-2, %eax
	jne	.LBB4_21
# BB#20:                                # %if.then.40
	movl	$-2, -4(%rbp)
	jmp	.LBB4_76
.LBB4_21:                               # %if.end.41
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.42
	jmp	.LBB4_23
.LBB4_23:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
                                        #     Child Loop BB4_41 Depth 2
	cmpq	$0, -80(%rbp)
	je	.LBB4_58
# BB#24:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB4_58
# BB#25:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_58
# BB#26:                                # %if.then.52
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB4_47
# BB#27:                                # %if.then.55
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$0, -108(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_30
# BB#28:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB4_30
# BB#29:                                # %if.then.62
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-52(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-48(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -108(%rbp)
.LBB4_30:                               # %if.end.65
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB4_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB4_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_33:                               # %cond.end
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_40
# BB#34:                                # %if.then.71
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %while.cond
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	cmpl	-108(%rbp), %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jle	.LBB4_37
# BB#36:                                # %land.rhs
                                        #   in Loop: Header=BB4_35 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	-80(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -129(%rbp)        # 1-byte Spill
.LBB4_37:                               # %land.end
                                        #   in Loop: Header=BB4_35 Depth=2
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_38
	jmp	.LBB4_39
.LBB4_38:                               # %while.body
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_35
.LBB4_39:                               # %while.end
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_46
.LBB4_40:                               # %if.else.78
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %while.cond.79
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	cmpl	-108(%rbp), %eax
	movb	%cl, -130(%rbp)         # 1-byte Spill
	jle	.LBB4_43
# BB#42:                                # %land.rhs.82
                                        #   in Loop: Header=BB4_41 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-80(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -130(%rbp)        # 1-byte Spill
.LBB4_43:                               # %land.end.88
                                        #   in Loop: Header=BB4_41 Depth=2
	movb	-130(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_44
	jmp	.LBB4_45
.LBB4_44:                               # %while.body.89
                                        #   in Loop: Header=BB4_41 Depth=2
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_41
.LBB4_45:                               # %while.end.91
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_46
.LBB4_46:                               # %if.end.92
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-112(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_57
.LBB4_47:                               # %if.else.95
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB4_49
# BB#48:                                # %lor.lhs.false.98
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB4_50
.LBB4_49:                               # %cond.true.101
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB4_51
.LBB4_50:                               # %cond.false.106
                                        #   in Loop: Header=BB4_23 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB4_51:                               # %cond.end.110
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -113(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_53
# BB#52:                                # %cond.true.114
                                        #   in Loop: Header=BB4_23 Depth=1
	movzbl	-113(%rbp), %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_54
.LBB4_53:                               # %cond.false.118
                                        #   in Loop: Header=BB4_23 Depth=1
	movsbl	-113(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB4_54:                               # %cond.end.120
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB4_56
# BB#55:                                # %if.then.126
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_68
.LBB4_56:                               # %if.end.127
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_57
.LBB4_57:                               # %if.end.128
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_58
.LBB4_58:                               # %if.end.129
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB4_63
# BB#59:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB4_63
# BB#60:                                # %land.lhs.true.135
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB4_63
# BB#61:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_63
# BB#62:                                # %if.then.143
	movl	$-1, -4(%rbp)
	jmp	.LBB4_76
.LBB4_63:                               # %if.end.144
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	re_match_2_internal
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jl	.LBB4_65
# BB#64:                                # %if.then.148
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_76
.LBB4_65:                               # %if.end.149
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$-2, -72(%rbp)
	jne	.LBB4_67
# BB#66:                                # %if.then.152
	movl	$-2, -4(%rbp)
	jmp	.LBB4_76
.LBB4_67:                               # %if.end.153
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_68
.LBB4_68:                               # %advance
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB4_70
# BB#69:                                # %if.then.155
	jmp	.LBB4_75
.LBB4_70:                               # %if.else.156
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB4_72
# BB#71:                                # %if.then.159
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_73
.LBB4_72:                               # %if.else.161
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
.LBB4_73:                               # %if.end.164
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_74
.LBB4_74:                               # %if.end.165
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_23
.LBB4_75:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB4_76:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	re_search_2, .Lfunc_end4-re_search_2
	.cfi_endproc

	.align	16, 0x90
	.type	re_match_2_internal,@function
re_match_2_internal:                    # @re_match_2_internal
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
	subq	$1088, %rsp             # imm = 0x440
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	-16(%rbp), %rsi
	addq	16(%rsi), %rcx
	movq	%rcx, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	addq	$1, %rcx
	movq	%rcx, -176(%rbp)
	movq	$257, -184(%rbp)        # imm = 0x101
	movq	$256, -192(%rbp)        # imm = 0x100
	movl	$0, -236(%rbp)
	movq	$0, -264(%rbp)
	movl	$0, -268(%rbp)
# BB#1:                                 # %do.body
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_3:                                # %if.end
	movl	$5, -160(%rbp)
	movl	$0, -156(%rbp)
# BB#4:                                 # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_36
# BB#5:                                 # %if.then.4
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -200(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -208(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -216(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -224(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -256(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -232(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -280(%rbp)
	movq	-176(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -288(%rbp)
	cmpq	$0, -200(%rbp)
	je	.LBB5_14
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -208(%rbp)
	je	.LBB5_14
# BB#7:                                 # %land.lhs.true.15
	cmpq	$0, -216(%rbp)
	je	.LBB5_14
# BB#8:                                 # %land.lhs.true.17
	cmpq	$0, -224(%rbp)
	je	.LBB5_14
# BB#9:                                 # %land.lhs.true.19
	cmpq	$0, -232(%rbp)
	je	.LBB5_14
# BB#10:                                # %land.lhs.true.21
	cmpq	$0, -248(%rbp)
	je	.LBB5_14
# BB#11:                                # %land.lhs.true.23
	cmpq	$0, -256(%rbp)
	je	.LBB5_14
# BB#12:                                # %land.lhs.true.25
	cmpq	$0, -280(%rbp)
	je	.LBB5_14
# BB#13:                                # %land.lhs.true.27
	cmpq	$0, -288(%rbp)
	jne	.LBB5_35
.LBB5_14:                               # %if.then.29
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.30
	cmpq	$0, -200(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.32
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.33
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_19
# BB#18:                                # %if.then.35
	jmp	.LBB5_19
.LBB5_19:                               # %if.end.36
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.38
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.39
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_23
# BB#22:                                # %if.then.41
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.42
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_25
# BB#24:                                # %if.then.44
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.45
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.47
	jmp	.LBB5_27
.LBB5_27:                               # %if.end.48
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_29
# BB#28:                                # %if.then.50
	jmp	.LBB5_29
.LBB5_29:                               # %if.end.51
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_31
# BB#30:                                # %if.then.53
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.54
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_33
# BB#32:                                # %if.then.56
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.57
	movq	$0, -288(%rbp)
# BB#34:                                # %do.end.58
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_35:                               # %if.end.59
	jmp	.LBB5_37
.LBB5_36:                               # %if.else
	movq	$0, -280(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -232(%rbp)
.LBB5_37:                               # %if.end.60
	cmpl	$0, -48(%rbp)
	jl	.LBB5_39
# BB#38:                                # %lor.lhs.false
	movl	-48(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_60
.LBB5_39:                               # %if.then.64
	jmp	.LBB5_40
.LBB5_40:                               # %do.body.65
	cmpq	$0, -200(%rbp)
	je	.LBB5_42
# BB#41:                                # %if.then.67
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.68
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_44
# BB#43:                                # %if.then.70
	jmp	.LBB5_44
.LBB5_44:                               # %if.end.71
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_46
# BB#45:                                # %if.then.73
	jmp	.LBB5_46
.LBB5_46:                               # %if.end.74
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_48
# BB#47:                                # %if.then.76
	jmp	.LBB5_48
.LBB5_48:                               # %if.end.77
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_50
# BB#49:                                # %if.then.79
	jmp	.LBB5_50
.LBB5_50:                               # %if.end.80
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_52
# BB#51:                                # %if.then.82
	jmp	.LBB5_52
.LBB5_52:                               # %if.end.83
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_54
# BB#53:                                # %if.then.85
	jmp	.LBB5_54
.LBB5_54:                               # %if.end.86
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_56
# BB#55:                                # %if.then.88
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.89
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_58
# BB#57:                                # %if.then.91
	jmp	.LBB5_58
.LBB5_58:                               # %if.end.92
	movq	$0, -288(%rbp)
# BB#59:                                # %do.end.93
	movl	$-1, -4(%rbp)
	jmp	.LBB5_849
.LBB5_60:                               # %if.end.94
	movl	$1, -64(%rbp)
.LBB5_61:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-176(%rbp), %rcx
	jae	.LBB5_64
# BB#62:                                # %for.body
                                        #   in Loop: Header=BB5_61 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movslq	-64(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %sil
	andb	$-4, %sil
	orb	$3, %sil
	movb	%sil, (%rcx,%rax,8)
	movslq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %sil
	andb	$-5, %sil
	movb	%sil, (%rcx,%rax,8)
	movslq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %sil
	andb	$-9, %sil
	movb	%sil, (%rcx,%rax,8)
	movslq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %sil
	andb	$-17, %sil
	movb	%sil, (%rcx,%rax,8)
# BB#63:                                # %for.inc
                                        #   in Loop: Header=BB5_61 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_61
.LBB5_64:                               # %for.end
	cmpl	$0, -44(%rbp)
	jne	.LBB5_67
# BB#65:                                # %land.lhs.true.122
	cmpq	$0, -24(%rbp)
	je	.LBB5_67
# BB#66:                                # %if.then.125
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB5_67:                               # %if.end.126
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %edx
	cmpl	-28(%rbp), %edx
	jg	.LBB5_69
# BB#68:                                # %if.then.132
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB5_70
.LBB5_69:                               # %if.else.135
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-40(%rbp), %rdx
	movslq	-60(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -104(%rbp)
.LBB5_70:                               # %if.end.140
	cmpl	$0, -28(%rbp)
	jle	.LBB5_73
# BB#71:                                # %land.lhs.true.143
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB5_73
# BB#72:                                # %if.then.146
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_74
.LBB5_73:                               # %if.else.149
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -120(%rbp)
.LBB5_74:                               # %if.end.155
	jmp	.LBB5_75
.LBB5_75:                               # %for.cond.156
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_87 Depth 2
                                        #     Child Loop BB5_773 Depth 2
                                        #     Child Loop BB5_788 Depth 2
                                        #     Child Loop BB5_751 Depth 2
                                        #     Child Loop BB5_766 Depth 2
                                        #     Child Loop BB5_617 Depth 2
                                        #     Child Loop BB5_627 Depth 2
                                        #     Child Loop BB5_600 Depth 2
                                        #     Child Loop BB5_610 Depth 2
                                        #     Child Loop BB5_515 Depth 2
                                        #     Child Loop BB5_553 Depth 2
                                        #     Child Loop BB5_565 Depth 2
                                        #     Child Loop BB5_587 Depth 2
                                        #     Child Loop BB5_463 Depth 2
                                        #     Child Loop BB5_473 Depth 2
                                        #     Child Loop BB5_484 Depth 2
                                        #     Child Loop BB5_495 Depth 2
                                        #     Child Loop BB5_505 Depth 2
                                        #     Child Loop BB5_392 Depth 2
                                        #       Child Loop BB5_393 Depth 3
                                        #       Child Loop BB5_402 Depth 3
                                        #       Child Loop BB5_415 Depth 3
                                        #     Child Loop BB5_323 Depth 2
                                        #     Child Loop BB5_350 Depth 2
                                        #     Child Loop BB5_362 Depth 2
                                        #     Child Loop BB5_372 Depth 2
                                        #     Child Loop BB5_282 Depth 2
                                        #     Child Loop BB5_297 Depth 2
                                        #     Child Loop BB5_257 Depth 2
                                        #     Child Loop BB5_275 Depth 2
                                        #     Child Loop BB5_226 Depth 2
                                        #       Child Loop BB5_227 Depth 3
                                        #     Child Loop BB5_237 Depth 2
                                        #       Child Loop BB5_238 Depth 3
                                        #     Child Loop BB5_796 Depth 2
                                        #       Child Loop BB5_800 Depth 3
                                        #     Child Loop BB5_250 Depth 2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB5_221
# BB#76:                                # %if.then.159
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB5_106
# BB#77:                                # %if.then.162
                                        #   in Loop: Header=BB5_75 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -562(%rbp)         # 1-byte Spill
	je	.LBB5_80
# BB#78:                                # %land.lhs.true.164
                                        #   in Loop: Header=BB5_75 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-264(%rbp), %rdx
	movb	%cl, -562(%rbp)         # 1-byte Spill
	ja	.LBB5_80
# BB#79:                                # %land.rhs
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-264(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	setbe	%sil
	movb	%sil, -562(%rbp)        # 1-byte Spill
.LBB5_80:                               # %land.end
                                        #   in Loop: Header=BB5_75 Depth=1
	movb	-562(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-120(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	cmpl	%esi, %ecx
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -289(%rbp)
	cmpb	$0, -289(%rbp)
	je	.LBB5_82
# BB#81:                                # %if.then.177
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-264(%rbp), %rax
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -290(%rbp)
	jmp	.LBB5_83
.LBB5_82:                               # %if.else.181
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-96(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -290(%rbp)
.LBB5_83:                               # %if.end.185
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -156(%rbp)
	je	.LBB5_92
# BB#84:                                # %if.then.189
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -236(%rbp)
	je	.LBB5_86
# BB#85:                                # %lor.lhs.false.191
                                        #   in Loop: Header=BB5_75 Depth=1
	movsbl	-290(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB5_91
.LBB5_86:                               # %if.then.194
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -236(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$1, -64(%rbp)
.LBB5_87:                               # %for.cond.195
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-176(%rbp), %rcx
	jae	.LBB5_90
# BB#88:                                # %for.body.199
                                        #   in Loop: Header=BB5_87 Depth=2
	movslq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-64(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-64(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#89:                                # %for.inc.208
                                        #   in Loop: Header=BB5_87 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_87
.LBB5_90:                               # %for.end.210
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_91
.LBB5_91:                               # %if.end.211
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_92:                               # %if.else.212
	cmpl	$0, -236(%rbp)
	je	.LBB5_104
# BB#93:                                # %land.lhs.true.214
	cmpb	$0, -290(%rbp)
	jne	.LBB5_104
# BB#94:                                # %if.then.216
	jmp	.LBB5_95
.LBB5_95:                               # %restore_best_regs
	movq	-264(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB5_98
# BB#96:                                # %land.lhs.true.219
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.LBB5_98
# BB#97:                                # %cond.true
	movq	-96(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB5_99
.LBB5_98:                               # %cond.false
	movq	-104(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB5_99:                               # %cond.end
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movl	$1, -64(%rbp)
.LBB5_100:                              # %for.cond.222
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-176(%rbp), %rcx
	jae	.LBB5_103
# BB#101:                               # %for.body.226
                                        #   in Loop: Header=BB5_100 Depth=1
	movslq	-64(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-64(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-64(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-64(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#102:                               # %for.inc.235
                                        #   in Loop: Header=BB5_100 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_100
.LBB5_103:                              # %for.end.237
	jmp	.LBB5_104
.LBB5_104:                              # %if.end.238
	jmp	.LBB5_105
.LBB5_105:                              # %if.end.239
	jmp	.LBB5_106
.LBB5_106:                              # %if.end.240
	jmp	.LBB5_107
.LBB5_107:                              # %succeed_label
	cmpq	$0, -56(%rbp)
	je	.LBB5_197
# BB#108:                               # %land.lhs.true.242
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_197
# BB#109:                               # %if.then.246
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$1, %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_137
# BB#110:                               # %if.then.253
	movl	$30, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB5_112
# BB#111:                               # %cond.true.257
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB5_113
.LBB5_112:                              # %cond.false.258
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB5_113:                              # %cond.end.260
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	-56(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_115
# BB#114:                               # %lor.lhs.false.274
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB5_136
.LBB5_115:                              # %if.then.278
	jmp	.LBB5_116
.LBB5_116:                              # %do.body.279
	cmpq	$0, -200(%rbp)
	je	.LBB5_118
# BB#117:                               # %if.then.281
	jmp	.LBB5_118
.LBB5_118:                              # %if.end.282
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_120
# BB#119:                               # %if.then.284
	jmp	.LBB5_120
.LBB5_120:                              # %if.end.285
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_122
# BB#121:                               # %if.then.287
	jmp	.LBB5_122
.LBB5_122:                              # %if.end.288
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_124
# BB#123:                               # %if.then.290
	jmp	.LBB5_124
.LBB5_124:                              # %if.end.291
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_126
# BB#125:                               # %if.then.293
	jmp	.LBB5_126
.LBB5_126:                              # %if.end.294
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_128
# BB#127:                               # %if.then.296
	jmp	.LBB5_128
.LBB5_128:                              # %if.end.297
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_130
# BB#129:                               # %if.then.299
	jmp	.LBB5_130
.LBB5_130:                              # %if.end.300
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_132
# BB#131:                               # %if.then.302
	jmp	.LBB5_132
.LBB5_132:                              # %if.end.303
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_134
# BB#133:                               # %if.then.305
	jmp	.LBB5_134
.LBB5_134:                              # %if.end.306
	movq	$0, -288(%rbp)
# BB#135:                               # %do.end.307
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_136:                              # %if.end.308
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	orb	$2, %cl
	movb	%cl, 56(%rax)
	jmp	.LBB5_166
.LBB5_137:                              # %if.else.313
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$1, %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB5_164
# BB#138:                               # %if.then.321
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-176(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jae	.LBB5_163
# BB#139:                               # %if.then.327
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_141
# BB#140:                               # %lor.lhs.false.346
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB5_162
.LBB5_141:                              # %if.then.350
	jmp	.LBB5_142
.LBB5_142:                              # %do.body.351
	cmpq	$0, -200(%rbp)
	je	.LBB5_144
# BB#143:                               # %if.then.353
	jmp	.LBB5_144
.LBB5_144:                              # %if.end.354
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_146
# BB#145:                               # %if.then.356
	jmp	.LBB5_146
.LBB5_146:                              # %if.end.357
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_148
# BB#147:                               # %if.then.359
	jmp	.LBB5_148
.LBB5_148:                              # %if.end.360
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_150
# BB#149:                               # %if.then.362
	jmp	.LBB5_150
.LBB5_150:                              # %if.end.363
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_152
# BB#151:                               # %if.then.365
	jmp	.LBB5_152
.LBB5_152:                              # %if.end.366
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_154
# BB#153:                               # %if.then.368
	jmp	.LBB5_154
.LBB5_154:                              # %if.end.369
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_156
# BB#155:                               # %if.then.371
	jmp	.LBB5_156
.LBB5_156:                              # %if.end.372
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_158
# BB#157:                               # %if.then.374
	jmp	.LBB5_158
.LBB5_158:                              # %if.end.375
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_160
# BB#159:                               # %if.then.377
	jmp	.LBB5_160
.LBB5_160:                              # %if.end.378
	movq	$0, -288(%rbp)
# BB#161:                               # %do.end.379
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_162:                              # %if.end.380
	jmp	.LBB5_163
.LBB5_163:                              # %if.end.381
	jmp	.LBB5_165
.LBB5_164:                              # %if.else.382
	jmp	.LBB5_165
.LBB5_165:                              # %if.end.383
	jmp	.LBB5_166
.LBB5_166:                              # %if.end.384
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	jbe	.LBB5_171
# BB#167:                               # %if.then.388
	movl	-48(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB5_169
# BB#168:                               # %cond.true.393
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -588(%rbp)        # 4-byte Spill
	jmp	.LBB5_170
.LBB5_169:                              # %cond.false.395
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -588(%rbp)        # 4-byte Spill
.LBB5_170:                              # %cond.end.402
	movl	-588(%rbp), %eax        # 4-byte Reload
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%eax, (%rcx)
.LBB5_171:                              # %if.end.406
	movl	$1, -64(%rbp)
.LBB5_172:                              # %for.cond.407
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, %esi
	cmpq	%rsi, %rdx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jae	.LBB5_174
# BB#173:                               # %cond.true.413
                                        #   in Loop: Header=BB5_172 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB5_175
.LBB5_174:                              # %cond.false.414
                                        #   in Loop: Header=BB5_172 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB5_175:                              # %cond.end.417
                                        #   in Loop: Header=BB5_172 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB5_192
# BB#176:                               # %for.body.421
                                        #   in Loop: Header=BB5_172 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movslq	-64(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpq	%rax, (%rdx,%rcx,8)
	je	.LBB5_178
# BB#177:                               # %lor.lhs.false.426
                                        #   in Loop: Header=BB5_172 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movslq	-64(%rbp), %rcx
	movq	-208(%rbp), %rdx
	cmpq	%rax, (%rdx,%rcx,8)
	jne	.LBB5_179
.LBB5_178:                              # %if.then.431
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	jmp	.LBB5_190
.LBB5_179:                              # %if.else.438
                                        #   in Loop: Header=BB5_172 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB5_183
# BB#180:                               # %land.lhs.true.440
                                        #   in Loop: Header=BB5_172 Depth=1
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB5_183
# BB#181:                               # %land.lhs.true.445
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_183
# BB#182:                               # %cond.true.452
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB5_184
.LBB5_183:                              # %cond.false.459
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
.LBB5_184:                              # %cond.end.468
                                        #   in Loop: Header=BB5_172 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	cmpl	$0, -28(%rbp)
	je	.LBB5_188
# BB#185:                               # %land.lhs.true.474
                                        #   in Loop: Header=BB5_172 Depth=1
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-208(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB5_188
# BB#186:                               # %land.lhs.true.479
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_188
# BB#187:                               # %cond.true.486
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -616(%rbp)        # 4-byte Spill
	jmp	.LBB5_189
.LBB5_188:                              # %cond.false.493
                                        #   in Loop: Header=BB5_172 Depth=1
	movslq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -616(%rbp)        # 4-byte Spill
.LBB5_189:                              # %cond.end.502
                                        #   in Loop: Header=BB5_172 Depth=1
	movl	-616(%rbp), %eax        # 4-byte Reload
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB5_190:                              # %if.end.507
                                        #   in Loop: Header=BB5_172 Depth=1
	jmp	.LBB5_191
.LBB5_191:                              # %for.inc.508
                                        #   in Loop: Header=BB5_172 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_172
.LBB5_192:                              # %for.end.510
	movq	-176(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
.LBB5_193:                              # %for.cond.512
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB5_196
# BB#194:                               # %for.body.516
                                        #   in Loop: Header=BB5_193 Depth=1
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
# BB#195:                               # %for.inc.523
                                        #   in Loop: Header=BB5_193 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_193
.LBB5_196:                              # %for.end.525
	jmp	.LBB5_197
.LBB5_197:                              # %if.end.526
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	-120(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	jne	.LBB5_199
# BB#198:                               # %cond.true.532
	movq	-24(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB5_200
.LBB5_199:                              # %cond.false.533
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
.LBB5_200:                              # %cond.end.537
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	-624(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -64(%rbp)
# BB#201:                               # %do.body.543
	cmpq	$0, -200(%rbp)
	je	.LBB5_203
# BB#202:                               # %if.then.545
	jmp	.LBB5_203
.LBB5_203:                              # %if.end.546
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_205
# BB#204:                               # %if.then.548
	jmp	.LBB5_205
.LBB5_205:                              # %if.end.549
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_207
# BB#206:                               # %if.then.551
	jmp	.LBB5_207
.LBB5_207:                              # %if.end.552
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_209
# BB#208:                               # %if.then.554
	jmp	.LBB5_209
.LBB5_209:                              # %if.end.555
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_211
# BB#210:                               # %if.then.557
	jmp	.LBB5_211
.LBB5_211:                              # %if.end.558
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_213
# BB#212:                               # %if.then.560
	jmp	.LBB5_213
.LBB5_213:                              # %if.end.561
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_215
# BB#214:                               # %if.then.563
	jmp	.LBB5_215
.LBB5_215:                              # %if.end.564
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_217
# BB#216:                               # %if.then.566
	jmp	.LBB5_217
.LBB5_217:                              # %if.end.567
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_219
# BB#218:                               # %if.then.569
	jmp	.LBB5_219
.LBB5_219:                              # %if.end.570
	movq	$0, -288(%rbp)
# BB#220:                               # %do.end.571
	movl	-64(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_849
.LBB5_221:                              # %if.end.572
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -128(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$29, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	ja	.LBB5_794
# BB#850:                               # %if.end.572
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_222:                              # %sw.bb
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_223:                              # %sw.bb.574
	jmp	.LBB5_107
.LBB5_224:                              # %sw.bb.575
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -64(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB5_236
# BB#225:                               # %if.then.579
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_226
.LBB5_226:                              # %do.body.580
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_227 Depth 3
	jmp	.LBB5_227
.LBB5_227:                              # %while.cond
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_231
# BB#228:                               # %while.body
                                        #   in Loop: Header=BB5_227 Depth=3
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_230
# BB#229:                               # %if.then.585
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_230:                              # %if.end.586
                                        #   in Loop: Header=BB5_227 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_227
.LBB5_231:                              # %while.end
                                        #   in Loop: Header=BB5_226 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movzbl	(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB5_233
# BB#232:                               # %if.then.595
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_233:                              # %if.end.596
                                        #   in Loop: Header=BB5_226 Depth=2
	jmp	.LBB5_234
.LBB5_234:                              # %do.cond
                                        #   in Loop: Header=BB5_226 Depth=2
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_226
# BB#235:                               # %do.end.598
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_247
.LBB5_236:                              # %if.else.599
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_237
.LBB5_237:                              # %do.body.600
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_238 Depth 3
	jmp	.LBB5_238
.LBB5_238:                              # %while.cond.601
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_237 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_242
# BB#239:                               # %while.body.604
                                        #   in Loop: Header=BB5_238 Depth=3
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_241
# BB#240:                               # %if.then.607
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_241:                              # %if.end.608
                                        #   in Loop: Header=BB5_238 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_238
.LBB5_242:                              # %while.end.609
                                        #   in Loop: Header=BB5_237 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movsbl	(%rax), %edx
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB5_244
# BB#243:                               # %if.then.616
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_244:                              # %if.end.617
                                        #   in Loop: Header=BB5_237 Depth=2
	jmp	.LBB5_245
.LBB5_245:                              # %do.cond.618
                                        #   in Loop: Header=BB5_237 Depth=2
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_237
# BB#246:                               # %do.end.621
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_247
.LBB5_247:                              # %if.end.622
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_248
.LBB5_248:                              # %do.body.623
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB5_254
# BB#249:                               # %if.then.625
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -304(%rbp)
.LBB5_250:                              # %for.cond.626
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-304(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_253
# BB#251:                               # %for.body.629
                                        #   in Loop: Header=BB5_250 Depth=2
	movq	-304(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-304(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#252:                               # %for.inc.640
                                        #   in Loop: Header=BB5_250 Depth=2
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB5_250
.LBB5_253:                              # %for.end.642
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_254
.LBB5_254:                              # %if.end.643
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_255
.LBB5_255:                              # %do.end.645
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_256:                              # %sw.bb.646
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_257
.LBB5_257:                              # %while.cond.647
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_261
# BB#258:                               # %while.body.650
                                        #   in Loop: Header=BB5_257 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_260
# BB#259:                               # %if.then.653
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_260:                              # %if.end.654
                                        #   in Loop: Header=BB5_257 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_257
.LBB5_261:                              # %while.end.655
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	andq	$64, %rax
	cmpq	$0, %rax
	jne	.LBB5_266
# BB#262:                               # %land.lhs.true.657
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB5_264
# BB#263:                               # %cond.true.659
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-152(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB5_265
.LBB5_264:                              # %cond.false.663
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
.LBB5_265:                              # %cond.end.665
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	je	.LBB5_271
.LBB5_266:                              # %lor.lhs.false.669
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB5_272
# BB#267:                               # %land.lhs.true.673
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB5_269
# BB#268:                               # %cond.true.675
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-152(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
	jmp	.LBB5_270
.LBB5_269:                              # %cond.false.679
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
.LBB5_270:                              # %cond.end.681
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-656(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_272
.LBB5_271:                              # %if.then.685
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_272:                              # %if.end.686
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_273
.LBB5_273:                              # %do.body.687
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB5_279
# BB#274:                               # %if.then.689
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -312(%rbp)
.LBB5_275:                              # %for.cond.691
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_278
# BB#276:                               # %for.body.694
                                        #   in Loop: Header=BB5_275 Depth=2
	movq	-312(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-312(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#277:                               # %for.inc.705
                                        #   in Loop: Header=BB5_275 Depth=2
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB5_275
.LBB5_278:                              # %for.end.707
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_279
.LBB5_279:                              # %if.end.708
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_280
.LBB5_280:                              # %do.end.710
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB5_795
.LBB5_281:                              # %sw.bb.712
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -314(%rbp)
.LBB5_282:                              # %while.cond.718
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_286
# BB#283:                               # %while.body.721
                                        #   in Loop: Header=BB5_282 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_285
# BB#284:                               # %if.then.724
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_285:                              # %if.end.725
                                        #   in Loop: Header=BB5_282 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_282
.LBB5_286:                              # %while.end.726
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB5_288
# BB#287:                               # %cond.true.728
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-152(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	jmp	.LBB5_289
.LBB5_288:                              # %cond.false.732
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
.LBB5_289:                              # %cond.end.734
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-660(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -313(%rbp)
	movzbl	-313(%rbp), %eax
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jae	.LBB5_292
# BB#290:                               # %land.lhs.true.742
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movzbl	-313(%rbp), %edx
	movl	%eax, -664(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movzbl	-313(%rbp), %r8d
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-664(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-668(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB5_292
# BB#291:                               # %if.then.751
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpb	$0, -314(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -314(%rbp)
.LBB5_292:                              # %if.end.756
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$1, %ecx
	movq	-128(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	cmpb	$0, -314(%rbp)
	jne	.LBB5_294
# BB#293:                               # %if.then.762
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_294:                              # %if.end.763
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_295
.LBB5_295:                              # %do.body.764
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB5_301
# BB#296:                               # %if.then.766
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -328(%rbp)
.LBB5_297:                              # %for.cond.768
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-328(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_300
# BB#298:                               # %for.body.771
                                        #   in Loop: Header=BB5_297 Depth=2
	movq	-328(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-328(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#299:                               # %for.inc.782
                                        #   in Loop: Header=BB5_297 Depth=2
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)
	jmp	.LBB5_297
.LBB5_300:                              # %for.end.784
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_301
.LBB5_301:                              # %if.end.785
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_302
.LBB5_302:                              # %do.end.787
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB5_795
.LBB5_303:                              # %sw.bb.789
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	andb	$3, %sil
	movzbl	%sil, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_305
# BB#304:                               # %if.then.798
                                        #   in Loop: Header=BB5_75 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-232(%rbp), %rdx
	callq	group_match_null_string_p
	movsbl	%al, %ecx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %r8d
	movl	%r8d, %edx
	movq	-232(%rbp), %rsi
	movb	%cl, %al
	movb	(%rsi,%rdx,8), %r9b
	andb	$3, %al
	andb	$-4, %r9b
	orb	%al, %r9b
	movb	%r9b, (%rsi,%rdx,8)
.LBB5_305:                              # %if.end.807
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	andb	$3, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	je	.LBB5_310
# BB#306:                               # %cond.true.815
                                        #   in Loop: Header=BB5_75 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-200(%rbp), %rsi
	cmpq	%rax, (%rsi,%rcx,8)
	jne	.LBB5_308
# BB#307:                               # %cond.true.820
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB5_309
.LBB5_308:                              # %cond.false.821
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-200(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB5_309:                              # %cond.end.824
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB5_311
.LBB5_310:                              # %cond.false.826
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-200(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB5_311:                              # %cond.end.829
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-216(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-112(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-200(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dil
	andb	$-5, %dil
	orb	$4, %dil
	movb	%dil, (%rcx,%rax,8)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dil
	andb	$-9, %dil
	movb	%dil, (%rcx,%rax,8)
	movl	$0, -268(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, -192(%rbp)
	cmpq	$257, -184(%rbp)        # imm = 0x101
	jne	.LBB5_313
# BB#312:                               # %if.then.849
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -184(%rbp)
.LBB5_313:                              # %if.end.851
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB5_795
.LBB5_314:                              # %sw.bb.853
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	andb	$3, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	je	.LBB5_319
# BB#315:                               # %cond.true.861
                                        #   in Loop: Header=BB5_75 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-208(%rbp), %rsi
	cmpq	%rax, (%rsi,%rcx,8)
	jne	.LBB5_317
# BB#316:                               # %cond.true.866
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB5_318
.LBB5_317:                              # %cond.false.867
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-208(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB5_318:                              # %cond.end.870
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB5_320
.LBB5_319:                              # %cond.false.872
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-208(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB5_320:                              # %cond.end.875
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-224(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-112(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-208(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dil
	andb	$-5, %dil
	movb	%dil, (%rcx,%rax,8)
	movl	$0, -268(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB5_322
# BB#321:                               # %if.then.888
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	$257, -184(%rbp)        # imm = 0x101
	movq	$256, -192(%rbp)        # imm = 0x100
	jmp	.LBB5_331
.LBB5_322:                              # %if.else.889
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -329(%rbp)
.LBB5_323:                              # %while.cond.893
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-329(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -705(%rbp)         # 1-byte Spill
	jle	.LBB5_325
# BB#324:                               # %land.rhs.897
                                        #   in Loop: Header=BB5_323 Depth=2
	movzbl	-329(%rbp), %eax
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rcx,8), %sil
	shrb	$2, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	cmpl	$0, %eax
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -705(%rbp)        # 1-byte Spill
.LBB5_325:                              # %land.end.908
                                        #   in Loop: Header=BB5_323 Depth=2
	movb	-705(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_326
	jmp	.LBB5_327
.LBB5_326:                              # %while.body.910
                                        #   in Loop: Header=BB5_323 Depth=2
	movb	-329(%rbp), %al
	addb	$-1, %al
	movb	%al, -329(%rbp)
	jmp	.LBB5_323
.LBB5_327:                              # %while.end.912
                                        #   in Loop: Header=BB5_75 Depth=1
	movzbl	-329(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_329
# BB#328:                               # %if.then.916
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	$257, -184(%rbp)        # imm = 0x101
	movq	$256, -192(%rbp)        # imm = 0x100
	jmp	.LBB5_330
.LBB5_329:                              # %if.else.917
                                        #   in Loop: Header=BB5_75 Depth=1
	movzbl	-329(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)
.LBB5_330:                              # %if.end.919
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_331
.LBB5_331:                              # %if.end.920
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	shrb	$3, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	je	.LBB5_333
# BB#332:                               # %lor.lhs.false.929
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-144(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_378
.LBB5_333:                              # %land.lhs.true.933
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB5_378
# BB#334:                               # %if.then.937
                                        #   in Loop: Header=BB5_75 Depth=1
	movb	$0, -330(%rbp)
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %esi
	subl	$13, %esi
	movl	%edx, -712(%rbp)        # 4-byte Spill
	movl	%esi, -716(%rbp)        # 4-byte Spill
	je	.LBB5_336
	jmp	.LBB5_851
.LBB5_851:                              # %if.then.937
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-712(%rbp), %eax        # 4-byte Reload
	addl	$-17, %eax
	subl	$3, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jb	.LBB5_336
	jmp	.LBB5_852
.LBB5_852:                              # %if.then.937
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-712(%rbp), %eax        # 4-byte Reload
	subl	$22, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jne	.LBB5_343
	jmp	.LBB5_335
.LBB5_335:                              # %sw.bb.941
                                        #   in Loop: Header=BB5_75 Depth=1
	movb	$1, -330(%rbp)
.LBB5_336:                              # %sw.bb.942
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_337
.LBB5_337:                              # %do.body.943
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_338
.LBB5_338:                              # %do.body.944
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#339:                               # %do.end.952
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#340:                               # %do.end.955
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpb	$0, -330(%rbp)
	je	.LBB5_342
# BB#341:                               # %if.then.957
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
.LBB5_342:                              # %if.end.959
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_344
.LBB5_343:                              # %sw.default
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_344
.LBB5_344:                              # %sw.epilog
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$0, -64(%rbp)
	jge	.LBB5_377
# BB#345:                               # %land.lhs.true.964
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB5_377
# BB#346:                               # %land.lhs.true.968
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$6, %ecx
	jne	.LBB5_377
# BB#347:                               # %land.lhs.true.973
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	4(%rax), %ecx
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB5_377
# BB#348:                               # %if.then.979
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	shrb	$4, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	je	.LBB5_356
# BB#349:                               # %if.then.988
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-232(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	andb	$-17, %sil
	movb	%sil, (%rdx,%rax,8)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -336(%rbp)
.LBB5_350:                              # %for.cond.996
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-336(%rbp), %eax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-128(%rbp), %rcx
	movzbl	1(%rcx), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jae	.LBB5_355
# BB#351:                               # %for.body.1003
                                        #   in Loop: Header=BB5_350 Depth=2
	movl	-336(%rbp), %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-336(%rbp), %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movl	-336(%rbp), %eax
	movl	%eax, %ecx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-336(%rbp), %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rsi
	cmpq	(%rsi,%rdx,8), %rcx
	jb	.LBB5_353
# BB#352:                               # %if.then.1014
                                        #   in Loop: Header=BB5_350 Depth=2
	movl	-336(%rbp), %eax
	movl	%eax, %ecx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-336(%rbp), %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
.LBB5_353:                              # %if.end.1019
                                        #   in Loop: Header=BB5_350 Depth=2
	jmp	.LBB5_354
.LBB5_354:                              # %for.inc.1020
                                        #   in Loop: Header=BB5_350 Depth=2
	movl	-336(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -336(%rbp)
	jmp	.LBB5_350
.LBB5_355:                              # %for.end.1022
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_356
.LBB5_356:                              # %if.end.1023
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#357:                               # %do.body.1025
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_358
.LBB5_358:                              # %do.body.1026
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#359:                               # %do.end.1034
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#360:                               # %do.end.1037
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_361
.LBB5_361:                              # %do.body.1038
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_362
.LBB5_362:                              # %while.cond.1039
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	subq	-184(%rbp), %rdx
	addq	$1, %rdx
	imulq	$3, %rdx, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_371
# BB#363:                               # %while.body.1050
                                        #   in Loop: Header=BB5_362 Depth=2
	movl	-160(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB5_365
# BB#364:                               # %cond.true.1055
                                        #   in Loop: Header=BB5_362 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_370
	jmp	.LBB5_369
.LBB5_365:                              # %cond.false.1056
                                        #   in Loop: Header=BB5_362 Depth=2
	movl	-160(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-736(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_367
# BB#366:                               # %cond.true.1069
                                        #   in Loop: Header=BB5_362 Depth=2
	xorl	%eax, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB5_368
.LBB5_367:                              # %cond.false.1070
                                        #   in Loop: Header=BB5_362 Depth=2
	movl	$1, %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -160(%rbp)
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB5_368:                              # %cond.end.1073
                                        #   in Loop: Header=BB5_362 Depth=2
	movl	-748(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_370
.LBB5_369:                              # %if.then.1076
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_370:                              # %if.end.1077
                                        #   in Loop: Header=BB5_362 Depth=2
	jmp	.LBB5_362
.LBB5_371:                              # %while.end.1078
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -352(%rbp)
.LBB5_372:                              # %for.cond.1079
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-352(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_375
# BB#373:                               # %for.body.1082
                                        #   in Loop: Header=BB5_372 Depth=2
	movq	-352(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-352(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	-352(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rcx,%rax,8)
# BB#374:                               # %for.inc.1102
                                        #   in Loop: Header=BB5_372 Depth=2
	movq	-352(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB5_372
.LBB5_375:                              # %for.end.1104
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-72(%rbp), %rax
	movslq	-64(%rbp), %rdi
	addq	%rdi, %rax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-168(%rbp), %r8
	movq	%rax, (%r8,%rdi,8)
	movq	-112(%rbp), %rax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-168(%rbp), %r8
	movq	%rax, (%r8,%rdi,8)
# BB#376:                               # %do.end.1133
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_377:                              # %if.end.1134
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_378
.LBB5_378:                              # %if.end.1135
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB5_795
.LBB5_379:                              # %sw.bb.1137
                                        #   in Loop: Header=BB5_75 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -372(%rbp)
	movslq	-372(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpq	%rax, (%rdx,%rcx,8)
	je	.LBB5_381
# BB#380:                               # %lor.lhs.false.1144
                                        #   in Loop: Header=BB5_75 Depth=1
	movabsq	$reg_unset_dummy, %rax
	movslq	-372(%rbp), %rcx
	movq	-208(%rbp), %rdx
	cmpq	%rax, (%rdx,%rcx,8)
	jne	.LBB5_382
.LBB5_381:                              # %if.then.1149
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_382:                              # %if.end.1150
                                        #   in Loop: Header=BB5_75 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-372(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, -360(%rbp)
	cmpl	$0, -28(%rbp)
	movb	%cl, -749(%rbp)         # 1-byte Spill
	je	.LBB5_385
# BB#383:                               # %land.lhs.true.1154
                                        #   in Loop: Header=BB5_75 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movslq	-372(%rbp), %rsi
	movq	-200(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -749(%rbp)         # 1-byte Spill
	ja	.LBB5_385
# BB#384:                               # %land.rhs.1159
                                        #   in Loop: Header=BB5_75 Depth=1
	movslq	-372(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	setbe	%sil
	movb	%sil, -749(%rbp)        # 1-byte Spill
.LBB5_385:                              # %land.end.1166
                                        #   in Loop: Header=BB5_75 Depth=1
	movb	-749(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, -28(%rbp)
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	movb	%dl, -757(%rbp)         # 1-byte Spill
	je	.LBB5_388
# BB#386:                               # %land.lhs.true.1169
                                        #   in Loop: Header=BB5_75 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movslq	-372(%rbp), %rsi
	movq	-208(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -757(%rbp)         # 1-byte Spill
	ja	.LBB5_388
# BB#387:                               # %land.rhs.1174
                                        #   in Loop: Header=BB5_75 Depth=1
	movslq	-372(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	setbe	%sil
	movb	%sil, -757(%rbp)        # 1-byte Spill
.LBB5_388:                              # %land.end.1181
                                        #   in Loop: Header=BB5_75 Depth=1
	movb	-757(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-756(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB5_390
# BB#389:                               # %cond.true.1185
                                        #   in Loop: Header=BB5_75 Depth=1
	movslq	-372(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB5_391
.LBB5_390:                              # %cond.false.1188
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB5_391:                              # %cond.end.1189
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, -368(%rbp)
.LBB5_392:                              # %for.cond.1191
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_393 Depth 3
                                        #       Child Loop BB5_402 Depth 3
                                        #       Child Loop BB5_415 Depth 3
	jmp	.LBB5_393
.LBB5_393:                              # %while.cond.1192
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-360(%rbp), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB5_399
# BB#394:                               # %while.body.1195
                                        #   in Loop: Header=BB5_393 Depth=3
	movq	-368(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_396
# BB#395:                               # %if.then.1198
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_399
.LBB5_396:                              # %if.end.1199
                                        #   in Loop: Header=BB5_393 Depth=3
	movq	-368(%rbp), %rax
	movslq	-372(%rbp), %rcx
	movq	-208(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB5_398
# BB#397:                               # %if.then.1204
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_399
.LBB5_398:                              # %if.end.1205
                                        #   in Loop: Header=BB5_393 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)
	movslq	-372(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -368(%rbp)
	jmp	.LBB5_393
.LBB5_399:                              # %while.end.1208
                                        #   in Loop: Header=BB5_392 Depth=2
	movq	-360(%rbp), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB5_401
# BB#400:                               # %if.then.1211
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_421
.LBB5_401:                              # %if.end.1212
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_402
.LBB5_402:                              # %while.cond.1213
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_406
# BB#403:                               # %while.body.1216
                                        #   in Loop: Header=BB5_402 Depth=3
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_405
# BB#404:                               # %if.then.1219
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_405:                              # %if.end.1220
                                        #   in Loop: Header=BB5_402 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_402
.LBB5_406:                              # %while.end.1221
                                        #   in Loop: Header=BB5_392 Depth=2
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -64(%rbp)
	movslq	-64(%rbp), %rax
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rsi
	subq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB5_408
# BB#407:                               # %if.then.1232
                                        #   in Loop: Header=BB5_392 Depth=2
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -64(%rbp)
.LBB5_408:                              # %if.end.1237
                                        #   in Loop: Header=BB5_392 Depth=2
	cmpq	$0, -152(%rbp)
	je	.LBB5_410
# BB#409:                               # %cond.true.1239
                                        #   in Loop: Header=BB5_392 Depth=2
	movq	-112(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movl	-64(%rbp), %edx
	movq	-152(%rbp), %rcx
	callq	bcmp_translate
	cmpl	$0, %eax
	jne	.LBB5_411
	jmp	.LBB5_412
.LBB5_410:                              # %cond.false.1242
                                        #   in Loop: Header=BB5_392 Depth=2
	movq	-112(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movslq	-64(%rbp), %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB5_412
.LBB5_411:                              # %if.then.1246
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_412:                              # %if.end.1247
                                        #   in Loop: Header=BB5_392 Depth=2
	movl	-64(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-64(%rbp), %eax
	movq	-360(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -360(%rbp)
# BB#413:                               # %do.body.1252
                                        #   in Loop: Header=BB5_392 Depth=2
	cmpl	$0, -268(%rbp)
	jne	.LBB5_419
# BB#414:                               # %if.then.1254
                                        #   in Loop: Header=BB5_392 Depth=2
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -384(%rbp)
.LBB5_415:                              # %for.cond.1256
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_392 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-384(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_418
# BB#416:                               # %for.body.1259
                                        #   in Loop: Header=BB5_415 Depth=3
	movq	-384(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-384(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#417:                               # %for.inc.1270
                                        #   in Loop: Header=BB5_415 Depth=3
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	jmp	.LBB5_415
.LBB5_418:                              # %for.end.1272
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_419
.LBB5_419:                              # %if.end.1273
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_420
.LBB5_420:                              # %do.end.1275
                                        #   in Loop: Header=BB5_392 Depth=2
	jmp	.LBB5_392
.LBB5_421:                              # %for.end.1276
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_422:                              # %sw.bb.1277
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -776(%rbp)        # 8-byte Spill
	je	.LBB5_424
# BB#423:                               # %cond.true.1279
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB5_425
.LBB5_424:                              # %cond.false.1280
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB5_425:                              # %cond.end.1281
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_427
# BB#426:                               # %lor.lhs.false.1285
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB5_430
.LBB5_427:                              # %if.then.1287
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_429
# BB#428:                               # %if.then.1293
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_429:                              # %if.end.1294
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_434
.LBB5_430:                              # %if.else.1295
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_433
# BB#431:                               # %land.lhs.true.1300
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_433
# BB#432:                               # %if.then.1305
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_433:                              # %if.end.1306
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_434
.LBB5_434:                              # %if.end.1307
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_435:                              # %sw.bb.1308
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_439
# BB#436:                               # %if.then.1311
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_438
# BB#437:                               # %if.then.1317
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_438:                              # %if.end.1318
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_446
.LBB5_439:                              # %if.else.1319
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_441
# BB#440:                               # %cond.true.1322
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	jmp	.LBB5_442
.LBB5_441:                              # %cond.false.1324
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
.LBB5_442:                              # %cond.end.1326
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-788(%rbp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	jne	.LBB5_445
# BB#443:                               # %land.lhs.true.1330
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_445
# BB#444:                               # %if.then.1336
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_445:                              # %if.end.1337
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_446
.LBB5_446:                              # %if.end.1338
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_447:                              # %sw.bb.1339
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -800(%rbp)        # 8-byte Spill
	je	.LBB5_449
# BB#448:                               # %cond.true.1341
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB5_450
.LBB5_449:                              # %cond.false.1342
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB5_450:                              # %cond.end.1343
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_452
# BB#451:                               # %lor.lhs.false.1347
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB5_453
.LBB5_452:                              # %if.then.1349
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_453:                              # %if.end.1350
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_454:                              # %sw.bb.1351
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_456
# BB#455:                               # %if.then.1354
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_456:                              # %if.end.1355
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_457:                              # %sw.bb.1356
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_458
.LBB5_458:                              # %do.body.1357
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_459
.LBB5_459:                              # %do.body.1358
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#460:                               # %do.end.1366
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#461:                               # %do.end.1369
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_462
.LBB5_462:                              # %do.body.1370
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_463
.LBB5_463:                              # %while.cond.1373
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	subq	-184(%rbp), %rdx
	addq	$1, %rdx
	imulq	$3, %rdx, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_472
# BB#464:                               # %while.body.1384
                                        #   in Loop: Header=BB5_463 Depth=2
	movl	-160(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB5_466
# BB#465:                               # %cond.true.1389
                                        #   in Loop: Header=BB5_463 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_471
	jmp	.LBB5_470
.LBB5_466:                              # %cond.false.1390
                                        #   in Loop: Header=BB5_463 Depth=2
	movl	-160(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -392(%rbp)
	movq	-392(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_468
# BB#467:                               # %cond.true.1403
                                        #   in Loop: Header=BB5_463 Depth=2
	xorl	%eax, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB5_469
.LBB5_468:                              # %cond.false.1404
                                        #   in Loop: Header=BB5_463 Depth=2
	movl	$1, %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -160(%rbp)
	movl	%eax, -828(%rbp)        # 4-byte Spill
.LBB5_469:                              # %cond.end.1407
                                        #   in Loop: Header=BB5_463 Depth=2
	movl	-828(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_471
.LBB5_470:                              # %if.then.1410
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_471:                              # %if.end.1411
                                        #   in Loop: Header=BB5_463 Depth=2
	jmp	.LBB5_463
.LBB5_472:                              # %while.end.1412
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -400(%rbp)
.LBB5_473:                              # %for.cond.1413
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-400(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_476
# BB#474:                               # %for.body.1416
                                        #   in Loop: Header=BB5_473 Depth=2
	movq	-400(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-400(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	-400(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rcx,%rax,8)
# BB#475:                               # %for.inc.1438
                                        #   in Loop: Header=BB5_473 Depth=2
	movq	-400(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)
	jmp	.LBB5_473
.LBB5_476:                              # %for.end.1440
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-128(%rbp), %rax
	movslq	-64(%rbp), %rdi
	addq	%rdi, %rax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-168(%rbp), %r8
	movq	%rax, (%r8,%rdi,8)
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdi
	movq	$0, (%rdi,%rax,8)
# BB#477:                               # %do.end.1470
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_478:                              # %sw.bb.1471
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_479
.LBB5_479:                              # %on_failure
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_480
.LBB5_480:                              # %do.body.1472
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_481
.LBB5_481:                              # %do.body.1473
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#482:                               # %do.end.1481
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#483:                               # %do.end.1484
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB5_484:                              # %while.cond.1485
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	cmpq	-136(%rbp), %rdx
	movb	%cl, -829(%rbp)         # 1-byte Spill
	jae	.LBB5_486
# BB#485:                               # %land.rhs.1488
                                        #   in Loop: Header=BB5_484 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -829(%rbp)         # 1-byte Spill
.LBB5_486:                              # %land.end.1492
                                        #   in Loop: Header=BB5_484 Depth=2
	movb	-829(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_487
	jmp	.LBB5_488
.LBB5_487:                              # %while.body.1494
                                        #   in Loop: Header=BB5_484 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB5_484
.LBB5_488:                              # %while.end.1496
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB5_493
# BB#489:                               # %land.lhs.true.1499
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$6, %ecx
	jne	.LBB5_493
# BB#490:                               # %if.then.1503
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -192(%rbp)
	cmpq	$257, -184(%rbp)        # imm = 0x101
	jne	.LBB5_492
# BB#491:                               # %if.then.1512
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -184(%rbp)
.LBB5_492:                              # %if.end.1515
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_493
.LBB5_493:                              # %if.end.1516
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_494
.LBB5_494:                              # %do.body.1517
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_495
.LBB5_495:                              # %while.cond.1520
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	subq	-184(%rbp), %rdx
	addq	$1, %rdx
	imulq	$3, %rdx, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_504
# BB#496:                               # %while.body.1531
                                        #   in Loop: Header=BB5_495 Depth=2
	movl	-160(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB5_498
# BB#497:                               # %cond.true.1536
                                        #   in Loop: Header=BB5_495 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_503
	jmp	.LBB5_502
.LBB5_498:                              # %cond.false.1537
                                        #   in Loop: Header=BB5_495 Depth=2
	movl	-160(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -408(%rbp)
	movq	-408(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -840(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-840(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-848(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_500
# BB#499:                               # %cond.true.1550
                                        #   in Loop: Header=BB5_495 Depth=2
	xorl	%eax, %eax
	movl	%eax, -852(%rbp)        # 4-byte Spill
	jmp	.LBB5_501
.LBB5_500:                              # %cond.false.1551
                                        #   in Loop: Header=BB5_495 Depth=2
	movl	$1, %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -160(%rbp)
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB5_501:                              # %cond.end.1554
                                        #   in Loop: Header=BB5_495 Depth=2
	movl	-852(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_503
.LBB5_502:                              # %if.then.1557
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_503:                              # %if.end.1558
                                        #   in Loop: Header=BB5_495 Depth=2
	jmp	.LBB5_495
.LBB5_504:                              # %while.end.1559
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -416(%rbp)
.LBB5_505:                              # %for.cond.1560
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-416(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_508
# BB#506:                               # %for.body.1563
                                        #   in Loop: Header=BB5_505 Depth=2
	movq	-416(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-416(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	-416(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rcx,%rax,8)
# BB#507:                               # %for.inc.1585
                                        #   in Loop: Header=BB5_505 Depth=2
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -416(%rbp)
	jmp	.LBB5_505
.LBB5_508:                              # %for.end.1587
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-128(%rbp), %rax
	movslq	-64(%rbp), %rdi
	addq	%rdi, %rax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-168(%rbp), %r8
	movq	%rax, (%r8,%rdi,8)
	movq	-112(%rbp), %rax
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-168(%rbp), %r8
	movq	%rax, (%r8,%rdi,8)
# BB#509:                               # %do.end.1617
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_510:                              # %sw.bb.1618
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_511
.LBB5_511:                              # %do.body.1619
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_512
.LBB5_512:                              # %do.body.1620
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#513:                               # %do.end.1628
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#514:                               # %do.end.1631
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB5_515:                              # %while.body.1633
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-424(%rbp), %rax
	addq	$2, %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB5_519
# BB#516:                               # %land.lhs.true.1637
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$7, %ecx
	je	.LBB5_518
# BB#517:                               # %lor.lhs.false.1641
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$6, %ecx
	jne	.LBB5_519
.LBB5_518:                              # %if.then.1645
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB5_524
.LBB5_519:                              # %if.else.1647
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	addq	$6, %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB5_522
# BB#520:                               # %land.lhs.true.1651
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$19, %ecx
	jne	.LBB5_522
# BB#521:                               # %if.then.1655
                                        #   in Loop: Header=BB5_515 Depth=2
	movq	-424(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB5_523
.LBB5_522:                              # %if.else.1657
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_525
.LBB5_523:                              # %if.end.1658
                                        #   in Loop: Header=BB5_515 Depth=2
	jmp	.LBB5_524
.LBB5_524:                              # %if.end.1659
                                        #   in Loop: Header=BB5_515 Depth=2
	jmp	.LBB5_515
.LBB5_525:                              # %while.end.1660
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movslq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-424(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB5_527
# BB#526:                               # %if.then.1665
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
	jmp	.LBB5_581
.LBB5_527:                              # %if.else.1667
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB5_530
# BB#528:                               # %lor.lhs.false.1671
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_546
# BB#529:                               # %land.lhs.true.1677
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_546
.LBB5_530:                              # %if.then.1681
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_532
# BB#531:                               # %cond.true.1686
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$10, %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB5_533
.LBB5_532:                              # %cond.false.1687
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
.LBB5_533:                              # %cond.end.1690
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-856(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -425(%rbp)
	movq	-72(%rbp), %rdx
	movzbl	3(%rdx), %eax
	cmpl	$2, %eax
	jne	.LBB5_536
# BB#534:                               # %land.lhs.true.1697
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %ecx
	movzbl	-425(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB5_536
# BB#535:                               # %if.then.1703
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
	jmp	.LBB5_545
.LBB5_536:                              # %if.else.1705
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$4, %ecx
	je	.LBB5_538
# BB#537:                               # %lor.lhs.false.1710
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB5_544
.LBB5_538:                              # %if.then.1715
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -432(%rbp)
	movzbl	-425(%rbp), %ecx
	movq	-72(%rbp), %rax
	movzbl	4(%rax), %esi
	shll	$3, %esi
	movb	%sil, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jge	.LBB5_541
# BB#539:                               # %land.lhs.true.1729
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movzbl	-425(%rbp), %edx
	movl	%eax, -860(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	$5, %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movzbl	-425(%rbp), %r8d
	movl	%eax, -864(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-860(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-864(%rbp), %r8d        # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB5_541
# BB#540:                               # %if.then.1741
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -432(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -432(%rbp)
.LBB5_541:                              # %if.end.1745
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -432(%rbp)
	jne	.LBB5_543
# BB#542:                               # %if.then.1747
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
.LBB5_543:                              # %if.end.1749
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_544
.LBB5_544:                              # %if.end.1750
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_545
.LBB5_545:                              # %if.end.1751
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_580
.LBB5_546:                              # %if.else.1752
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB5_579
# BB#547:                               # %if.then.1756
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB5_551
# BB#548:                               # %land.lhs.true.1761
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-424(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$3, %ecx
	movq	-72(%rbp), %rax
	movzbl	4(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_550
# BB#549:                               # %land.lhs.true.1769
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movq	-72(%rbp), %rdx
	movzbl	4(%rdx), %esi
	movl	%eax, -868(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	movslq	%eax, %rdi
	movq	-424(%rbp), %r8
	movzbl	(%r8,%rdi), %eax
	movq	-72(%rbp), %rdi
	movzbl	4(%rdi), %esi
	movl	%eax, -872(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-868(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-872(%rbp), %esi        # 4-byte Reload
	andl	%edx, %esi
	cmpl	$0, %esi
	jne	.LBB5_551
.LBB5_550:                              # %if.then.1783
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
	jmp	.LBB5_578
.LBB5_551:                              # %if.else.1785
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB5_563
# BB#552:                               # %if.then.1790
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$0, -436(%rbp)
.LBB5_553:                              # %for.cond.1791
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-436(%rbp), %eax
	movq	-424(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_560
# BB#554:                               # %for.body.1796
                                        #   in Loop: Header=BB5_553 Depth=2
	movl	-436(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB5_558
# BB#555:                               # %lor.lhs.false.1803
                                        #   in Loop: Header=BB5_553 Depth=2
	movl	-436(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_557
# BB#556:                               # %land.lhs.true.1808
                                        #   in Loop: Header=BB5_553 Depth=2
	movl	-436(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-436(%rbp), %esi
	addl	$5, %esi
	movslq	%esi, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	xorl	$-1, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB5_558
.LBB5_557:                              # %if.then.1820
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_560
.LBB5_558:                              # %if.end.1821
                                        #   in Loop: Header=BB5_553 Depth=2
	jmp	.LBB5_559
.LBB5_559:                              # %for.inc.1822
                                        #   in Loop: Header=BB5_553 Depth=2
	movl	-436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -436(%rbp)
	jmp	.LBB5_553
.LBB5_560:                              # %for.end.1824
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-436(%rbp), %eax
	movq	-424(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB5_562
# BB#561:                               # %if.then.1829
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
.LBB5_562:                              # %if.end.1831
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_577
.LBB5_563:                              # %if.else.1832
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB5_576
# BB#564:                               # %if.then.1837
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$0, -440(%rbp)
.LBB5_565:                              # %for.cond.1839
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-440(%rbp), %eax
	movq	-424(%rbp), %rdx
	movzbl	1(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -873(%rbp)         # 1-byte Spill
	jge	.LBB5_567
# BB#566:                               # %land.rhs.1844
                                        #   in Loop: Header=BB5_565 Depth=2
	movl	-440(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -873(%rbp)        # 1-byte Spill
.LBB5_567:                              # %land.end.1849
                                        #   in Loop: Header=BB5_565 Depth=2
	movb	-873(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_568
	jmp	.LBB5_572
.LBB5_568:                              # %for.body.1851
                                        #   in Loop: Header=BB5_565 Depth=2
	movl	-440(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-440(%rbp), %esi
	addl	$5, %esi
	movslq	%esi, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB5_570
# BB#569:                               # %if.then.1863
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_572
.LBB5_570:                              # %if.end.1864
                                        #   in Loop: Header=BB5_565 Depth=2
	jmp	.LBB5_571
.LBB5_571:                              # %for.inc.1865
                                        #   in Loop: Header=BB5_565 Depth=2
	movl	-440(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -440(%rbp)
	jmp	.LBB5_565
.LBB5_572:                              # %for.end.1867
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-440(%rbp), %eax
	movq	-424(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB5_574
# BB#573:                               # %lor.lhs.false.1872
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-440(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB5_575
.LBB5_574:                              # %if.then.1877
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$17, -3(%rax)
.LBB5_575:                              # %if.end.1879
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_576
.LBB5_576:                              # %if.end.1880
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_577
.LBB5_577:                              # %if.end.1881
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_578
.LBB5_578:                              # %if.end.1882
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_579
.LBB5_579:                              # %if.end.1883
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_580
.LBB5_580:                              # %if.end.1884
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_581
.LBB5_581:                              # %if.end.1885
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$17, %ecx
	je	.LBB5_583
# BB#582:                               # %if.then.1891
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$13, -1(%rax)
	jmp	.LBB5_591
.LBB5_583:                              # %if.end.1893
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_584
.LBB5_584:                              # %sw.bb.1894
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -488(%rbp)
	cmpq	$0, -488(%rbp)
	je	.LBB5_586
# BB#585:                               # %if.then.1904
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-488(%rbp), %rax
	movq	%rax, -472(%rbp)
.LBB5_586:                              # %if.end.1905
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -464(%rbp)
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movslq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -456(%rbp)
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movslq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -448(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -480(%rbp)
.LBB5_587:                              # %for.cond.1926
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-480(%rbp), %rax
	cmpq	-448(%rbp), %rax
	jb	.LBB5_590
# BB#588:                               # %for.body.1929
                                        #   in Loop: Header=BB5_587 Depth=2
	movq	-480(%rbp), %rax
	movq	-288(%rbp), %rcx
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-168(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, (%rcx,%rax,8)
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-480(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-480(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#589:                               # %for.inc.1951
                                        #   in Loop: Header=BB5_587 Depth=2
	movq	-480(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -480(%rbp)
	jmp	.LBB5_587
.LBB5_590:                              # %for.end.1953
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$0, -268(%rbp)
.LBB5_591:                              # %unconditional_jump
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_592
.LBB5_592:                              # %sw.bb.1954
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_593
.LBB5_593:                              # %do.body.1955
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_594
.LBB5_594:                              # %do.body.1956
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#595:                               # %do.end.1964
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#596:                               # %do.end.1967
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB5_795
.LBB5_597:                              # %sw.bb.1970
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_591
.LBB5_598:                              # %sw.bb.1971
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_599
.LBB5_599:                              # %do.body.1972
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_600
.LBB5_600:                              # %while.cond.1975
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	subq	-184(%rbp), %rdx
	addq	$1, %rdx
	imulq	$3, %rdx, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_609
# BB#601:                               # %while.body.1986
                                        #   in Loop: Header=BB5_600 Depth=2
	movl	-160(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB5_603
# BB#602:                               # %cond.true.1991
                                        #   in Loop: Header=BB5_600 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_608
	jmp	.LBB5_607
.LBB5_603:                              # %cond.false.1992
                                        #   in Loop: Header=BB5_600 Depth=2
	movl	-160(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -496(%rbp)
	movq	-496(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -888(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-896(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_605
# BB#604:                               # %cond.true.2005
                                        #   in Loop: Header=BB5_600 Depth=2
	xorl	%eax, %eax
	movl	%eax, -900(%rbp)        # 4-byte Spill
	jmp	.LBB5_606
.LBB5_605:                              # %cond.false.2006
                                        #   in Loop: Header=BB5_600 Depth=2
	movl	$1, %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -160(%rbp)
	movl	%eax, -900(%rbp)        # 4-byte Spill
.LBB5_606:                              # %cond.end.2009
                                        #   in Loop: Header=BB5_600 Depth=2
	movl	-900(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_608
.LBB5_607:                              # %if.then.2012
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_608:                              # %if.end.2013
                                        #   in Loop: Header=BB5_600 Depth=2
	jmp	.LBB5_600
.LBB5_609:                              # %while.end.2014
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -504(%rbp)
.LBB5_610:                              # %for.cond.2015
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-504(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_613
# BB#611:                               # %for.body.2018
                                        #   in Loop: Header=BB5_610 Depth=2
	movq	-504(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-504(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	-504(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rcx,%rax,8)
# BB#612:                               # %for.inc.2040
                                        #   in Loop: Header=BB5_610 Depth=2
	movq	-504(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)
	jmp	.LBB5_610
.LBB5_613:                              # %for.end.2042
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdi
	movq	$0, (%rdi,%rax,8)
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdi
	movq	$0, (%rdi,%rax,8)
# BB#614:                               # %do.end.2070
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_591
.LBB5_615:                              # %sw.bb.2071
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_616
.LBB5_616:                              # %do.body.2072
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_617
.LBB5_617:                              # %while.cond.2075
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	subq	-184(%rbp), %rdx
	addq	$1, %rdx
	imulq	$3, %rdx, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_626
# BB#618:                               # %while.body.2086
                                        #   in Loop: Header=BB5_617 Depth=2
	movl	-160(%rbp), %eax
	imull	$19, re_max_failures, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB5_620
# BB#619:                               # %cond.true.2091
                                        #   in Loop: Header=BB5_617 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_625
	jmp	.LBB5_624
.LBB5_620:                              # %cond.false.2092
                                        #   in Loop: Header=BB5_617 Depth=2
	movl	-160(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-160(%rbp), %eax
	movl	%eax, %esi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-912(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-920(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB5_622
# BB#621:                               # %cond.true.2105
                                        #   in Loop: Header=BB5_617 Depth=2
	xorl	%eax, %eax
	movl	%eax, -924(%rbp)        # 4-byte Spill
	jmp	.LBB5_623
.LBB5_622:                              # %cond.false.2106
                                        #   in Loop: Header=BB5_617 Depth=2
	movl	$1, %eax
	movl	-160(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -160(%rbp)
	movl	%eax, -924(%rbp)        # 4-byte Spill
.LBB5_623:                              # %cond.end.2109
                                        #   in Loop: Header=BB5_617 Depth=2
	movl	-924(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_625
.LBB5_624:                              # %if.then.2112
	movl	$-2, -4(%rbp)
	jmp	.LBB5_849
.LBB5_625:                              # %if.end.2113
                                        #   in Loop: Header=BB5_617 Depth=2
	jmp	.LBB5_617
.LBB5_626:                              # %while.end.2114
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB5_627:                              # %for.cond.2115
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-520(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_630
# BB#628:                               # %for.body.2118
                                        #   in Loop: Header=BB5_627 Depth=2
	movq	-520(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-520(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-168(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	-520(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	%rdi, (%rcx,%rax,8)
# BB#629:                               # %for.inc.2140
                                        #   in Loop: Header=BB5_627 Depth=2
	movq	-520(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)
	jmp	.LBB5_627
.LBB5_630:                              # %for.end.2142
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movq	-192(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,8)
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdi
	movq	$0, (%rdi,%rax,8)
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdi
	movq	$0, (%rdi,%rax,8)
# BB#631:                               # %do.end.2170
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_632:                              # %sw.bb.2171
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_633
.LBB5_633:                              # %do.body.2172
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	3(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#634:                               # %do.end.2182
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -64(%rbp)
	jle	.LBB5_640
# BB#635:                               # %if.then.2185
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -128(%rbp)
# BB#636:                               # %do.body.2188
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_637
.LBB5_637:                              # %do.body.2189
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-64(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#638:                               # %do.end.2196
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#639:                               # %do.end.2199
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_643
.LBB5_640:                              # %if.else.2200
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB5_642
# BB#641:                               # %if.then.2203
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-128(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB5_479
.LBB5_642:                              # %if.end.2206
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_643
.LBB5_643:                              # %if.end.2207
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_644:                              # %sw.bb.2208
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_645
.LBB5_645:                              # %do.body.2209
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	3(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#646:                               # %do.end.2219
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB5_650
# BB#647:                               # %if.then.2221
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
# BB#648:                               # %do.body.2223
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movl	-64(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movb	%cl, 3(%rdx)
# BB#649:                               # %do.end.2233
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_591
.LBB5_650:                              # %if.else.2234
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
# BB#651:                               # %if.end.2236
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_652:                              # %sw.bb.2237
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_653
.LBB5_653:                              # %do.body.2238
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_654
.LBB5_654:                              # %do.body.2239
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#655:                               # %do.end.2247
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#656:                               # %do.end.2250
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movslq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
# BB#657:                               # %do.body.2253
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_658
.LBB5_658:                              # %do.body.2254
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-128(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#659:                               # %do.end.2262
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
# BB#660:                               # %do.end.2265
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_661
.LBB5_661:                              # %do.body.2266
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-64(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-64(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#662:                               # %do.end.2274
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_663:                              # %sw.bb.2275
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -936(%rbp)        # 8-byte Spill
	je	.LBB5_665
# BB#664:                               # %cond.true.2277
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB5_666
.LBB5_665:                              # %cond.false.2278
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB5_666:                              # %cond.end.2279
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_669
# BB#667:                               # %lor.lhs.false.2283
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB5_669
# BB#668:                               # %lor.lhs.false.2285
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_670
.LBB5_669:                              # %if.then.2288
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_670:                              # %if.end.2289
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_672
# BB#671:                               # %cond.true.2293
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -948(%rbp)        # 4-byte Spill
	jmp	.LBB5_676
.LBB5_672:                              # %cond.false.2295
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_674
# BB#673:                               # %cond.true.2300
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -952(%rbp)        # 4-byte Spill
	jmp	.LBB5_675
.LBB5_674:                              # %cond.false.2303
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -952(%rbp)        # 4-byte Spill
.LBB5_675:                              # %cond.end.2306
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-952(%rbp), %eax        # 4-byte Reload
	movl	%eax, -948(%rbp)        # 4-byte Spill
.LBB5_676:                              # %cond.end.2308
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-948(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	%al, %sil
	movb	%sil, -521(%rbp)
	movq	-112(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jne	.LBB5_678
# BB#677:                               # %cond.true.2318
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -956(%rbp)        # 4-byte Spill
	jmp	.LBB5_682
.LBB5_678:                              # %cond.false.2320
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_680
# BB#679:                               # %cond.true.2324
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -960(%rbp)        # 4-byte Spill
	jmp	.LBB5_681
.LBB5_680:                              # %cond.false.2327
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -960(%rbp)        # 4-byte Spill
.LBB5_681:                              # %cond.end.2329
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-960(%rbp), %eax        # 4-byte Reload
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB5_682:                              # %cond.end.2331
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	%al, %sil
	movb	%sil, -522(%rbp)
	movsbl	-521(%rbp), %eax
	movsbl	-522(%rbp), %edi
	cmpl	%edi, %eax
	je	.LBB5_684
# BB#683:                               # %if.then.2343
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_684:                              # %if.end.2344
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_685:                              # %sw.bb.2345
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -968(%rbp)        # 8-byte Spill
	je	.LBB5_687
# BB#686:                               # %cond.true.2349
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB5_688
.LBB5_687:                              # %cond.false.2350
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB5_688:                              # %cond.end.2351
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_691
# BB#689:                               # %lor.lhs.false.2355
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB5_691
# BB#690:                               # %lor.lhs.false.2357
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_692
.LBB5_691:                              # %if.then.2360
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_692:                              # %if.end.2361
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_694
# BB#693:                               # %cond.true.2365
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	jmp	.LBB5_698
.LBB5_694:                              # %cond.false.2367
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_696
# BB#695:                               # %cond.true.2372
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -984(%rbp)        # 4-byte Spill
	jmp	.LBB5_697
.LBB5_696:                              # %cond.false.2375
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -984(%rbp)        # 4-byte Spill
.LBB5_697:                              # %cond.end.2378
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-984(%rbp), %eax        # 4-byte Reload
	movl	%eax, -980(%rbp)        # 4-byte Spill
.LBB5_698:                              # %cond.end.2380
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-980(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	%al, %sil
	movb	%sil, -523(%rbp)
	movq	-112(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jne	.LBB5_700
# BB#699:                               # %cond.true.2390
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	jmp	.LBB5_704
.LBB5_700:                              # %cond.false.2392
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_702
# BB#701:                               # %cond.true.2396
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -992(%rbp)        # 4-byte Spill
	jmp	.LBB5_703
.LBB5_702:                              # %cond.false.2399
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -992(%rbp)        # 4-byte Spill
.LBB5_703:                              # %cond.end.2401
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-992(%rbp), %eax        # 4-byte Reload
	movl	%eax, -988(%rbp)        # 4-byte Spill
.LBB5_704:                              # %cond.end.2403
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-988(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	%al, %sil
	movb	%sil, -524(%rbp)
	movsbl	-523(%rbp), %eax
	movsbl	-524(%rbp), %edi
	cmpl	%edi, %eax
	je	.LBB5_706
# BB#705:                               # %if.then.2415
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_706:                              # %if.end.2416
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_707:                              # %sw.bb.2417
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_709
# BB#708:                               # %cond.true.2420
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -996(%rbp)        # 4-byte Spill
	jmp	.LBB5_713
.LBB5_709:                              # %cond.false.2422
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_711
# BB#710:                               # %cond.true.2426
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1000(%rbp)       # 4-byte Spill
	jmp	.LBB5_712
.LBB5_711:                              # %cond.false.2429
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1000(%rbp)       # 4-byte Spill
.LBB5_712:                              # %cond.end.2431
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1000(%rbp), %eax       # 4-byte Reload
	movl	%eax, -996(%rbp)        # 4-byte Spill
.LBB5_713:                              # %cond.end.2433
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-996(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	jne	.LBB5_727
# BB#714:                               # %land.lhs.true.2440
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	je	.LBB5_716
# BB#715:                               # %cond.true.2442
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB5_717
.LBB5_716:                              # %cond.false.2443
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB5_717:                              # %cond.end.2444
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_726
# BB#718:                               # %lor.lhs.false.2448
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB5_726
# BB#719:                               # %lor.lhs.false.2450
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_721
# BB#720:                               # %cond.true.2454
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	jmp	.LBB5_725
.LBB5_721:                              # %cond.false.2456
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_723
# BB#722:                               # %cond.true.2461
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB5_724
.LBB5_723:                              # %cond.false.2464
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1024(%rbp)       # 4-byte Spill
.LBB5_724:                              # %cond.end.2467
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1024(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1020(%rbp)       # 4-byte Spill
.LBB5_725:                              # %cond.end.2469
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1020(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	je	.LBB5_727
.LBB5_726:                              # %if.then.2476
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_727:                              # %if.end.2477
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_728:                              # %sw.bb.2478
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	je	.LBB5_730
# BB#729:                               # %cond.true.2480
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB5_731
.LBB5_730:                              # %cond.false.2481
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB5_731:                              # %cond.end.2482
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_749
# BB#732:                               # %lor.lhs.false.2486
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB5_749
# BB#733:                               # %land.lhs.true.2488
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_735
# BB#734:                               # %cond.true.2492
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	jmp	.LBB5_739
.LBB5_735:                              # %cond.false.2494
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_737
# BB#736:                               # %cond.true.2499
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
	jmp	.LBB5_738
.LBB5_737:                              # %cond.false.2502
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
.LBB5_738:                              # %cond.end.2505
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1048(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1044(%rbp)       # 4-byte Spill
.LBB5_739:                              # %cond.end.2507
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	jne	.LBB5_749
# BB#740:                               # %land.lhs.true.2514
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_742
# BB#741:                               # %cond.true.2517
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB5_746
.LBB5_742:                              # %cond.false.2519
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_744
# BB#743:                               # %cond.true.2523
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
	jmp	.LBB5_745
.LBB5_744:                              # %cond.false.2526
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
.LBB5_745:                              # %cond.end.2528
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1056(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB5_746:                              # %cond.end.2530
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	jne	.LBB5_748
# BB#747:                               # %lor.lhs.false.2537
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_749
.LBB5_748:                              # %if.then.2540
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_795
.LBB5_749:                              # %if.end.2541
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_750:                              # %sw.bb.2542
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_751
.LBB5_751:                              # %while.cond.2543
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_755
# BB#752:                               # %while.body.2546
                                        #   in Loop: Header=BB5_751 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_754
# BB#753:                               # %if.then.2549
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_754:                              # %if.end.2550
                                        #   in Loop: Header=BB5_751 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_751
.LBB5_755:                              # %while.end.2551
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_757
# BB#756:                               # %cond.true.2554
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB5_761
.LBB5_757:                              # %cond.false.2556
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_759
# BB#758:                               # %cond.true.2560
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1064(%rbp)       # 4-byte Spill
	jmp	.LBB5_760
.LBB5_759:                              # %cond.false.2563
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1064(%rbp)       # 4-byte Spill
.LBB5_760:                              # %cond.end.2565
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1064(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1060(%rbp)       # 4-byte Spill
.LBB5_761:                              # %cond.end.2567
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	je	.LBB5_763
# BB#762:                               # %if.then.2574
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_763:                              # %if.end.2575
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_764
.LBB5_764:                              # %do.body.2576
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB5_770
# BB#765:                               # %if.then.2578
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -536(%rbp)
.LBB5_766:                              # %for.cond.2580
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-536(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_769
# BB#767:                               # %for.body.2583
                                        #   in Loop: Header=BB5_766 Depth=2
	movq	-536(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-536(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#768:                               # %for.inc.2594
                                        #   in Loop: Header=BB5_766 Depth=2
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)
	jmp	.LBB5_766
.LBB5_769:                              # %for.end.2596
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_770
.LBB5_770:                              # %if.end.2597
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_771
.LBB5_771:                              # %do.end.2599
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB5_795
.LBB5_772:                              # %sw.bb.2601
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_773
.LBB5_773:                              # %while.cond.2602
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_777
# BB#774:                               # %while.body.2605
                                        #   in Loop: Header=BB5_773 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_776
# BB#775:                               # %if.then.2608
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_776:                              # %if.end.2609
                                        #   in Loop: Header=BB5_773 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB5_773
.LBB5_777:                              # %while.end.2610
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_779
# BB#778:                               # %cond.true.2613
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB5_783
.LBB5_779:                              # %cond.false.2615
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_781
# BB#780:                               # %cond.true.2619
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
	jmp	.LBB5_782
.LBB5_781:                              # %cond.false.2622
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
.LBB5_782:                              # %cond.end.2624
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1072(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1068(%rbp)       # 4-byte Spill
.LBB5_783:                              # %cond.end.2626
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	re_syntax_table, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$1, %eax
	jne	.LBB5_785
# BB#784:                               # %if.then.2633
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_796
.LBB5_785:                              # %if.end.2634
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_786
.LBB5_786:                              # %do.body.2635
                                        #   in Loop: Header=BB5_75 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB5_792
# BB#787:                               # %if.then.2637
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	$1, -268(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -544(%rbp)
.LBB5_788:                              # %for.cond.2639
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-544(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.LBB5_791
# BB#789:                               # %for.body.2642
                                        #   in Loop: Header=BB5_788 Depth=2
	movq	-544(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-17, %dl
	orb	$16, %dl
	movb	%dl, (%rcx,%rax,8)
	movq	-544(%rbp), %rax
	movq	-232(%rbp), %rcx
	movb	(%rcx,%rax,8), %dl
	andb	$-9, %dl
	orb	$8, %dl
	movb	%dl, (%rcx,%rax,8)
# BB#790:                               # %for.inc.2653
                                        #   in Loop: Header=BB5_788 Depth=2
	movq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)
	jmp	.LBB5_788
.LBB5_791:                              # %for.end.2655
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_792
.LBB5_792:                              # %if.end.2656
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_793
.LBB5_793:                              # %do.end.2658
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB5_795
.LBB5_794:                              # %sw.default.2660
	callq	abort
.LBB5_795:                              # %sw.epilog.2661
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_75
.LBB5_796:                              # %fail
                                        #   Parent Loop BB5_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_800 Depth 3
	cmpl	$0, -156(%rbp)
	je	.LBB5_824
# BB#797:                               # %if.then.2665
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -560(%rbp)
	cmpq	$0, -560(%rbp)
	je	.LBB5_799
# BB#798:                               # %if.then.2676
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-560(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB5_799:                              # %if.end.2677
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -128(%rbp)
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movslq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -192(%rbp)
	movl	-156(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -156(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movslq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -184(%rbp)
	movq	-192(%rbp), %rcx
	movq	%rcx, -552(%rbp)
.LBB5_800:                              # %for.cond.2698
                                        #   Parent Loop BB5_75 Depth=1
                                        #     Parent Loop BB5_796 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-552(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jb	.LBB5_803
# BB#801:                               # %for.body.2701
                                        #   in Loop: Header=BB5_800 Depth=3
	movq	-552(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-168(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, (%rcx,%rax,8)
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-552(%rbp), %rcx
	movq	-208(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movl	-156(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -156(%rbp)
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-168(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-552(%rbp), %rcx
	movq	-200(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#802:                               # %for.inc.2723
                                        #   in Loop: Header=BB5_800 Depth=3
	movq	-552(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -552(%rbp)
	jmp	.LBB5_800
.LBB5_803:                              # %for.end.2725
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	$0, -268(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB5_805
# BB#804:                               # %if.then.2727
                                        #   in Loop: Header=BB5_796 Depth=2
	jmp	.LBB5_796
.LBB5_805:                              # %if.end.2728
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB5_820
# BB#806:                               # %if.then.2731
                                        #   in Loop: Header=BB5_796 Depth=2
	movb	$0, -561(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$13, %edx
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movl	%edx, -1080(%rbp)       # 4-byte Spill
	je	.LBB5_808
	jmp	.LBB5_853
.LBB5_853:                              # %if.then.2731
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	-1076(%rbp), %eax       # 4-byte Reload
	addl	$-17, %eax
	subl	$2, %eax
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	jb	.LBB5_808
	jmp	.LBB5_854
.LBB5_854:                              # %if.then.2731
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	-1076(%rbp), %eax       # 4-byte Reload
	subl	$22, %eax
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	jne	.LBB5_818
	jmp	.LBB5_807
.LBB5_807:                              # %sw.bb.2734
                                        #   in Loop: Header=BB5_796 Depth=2
	movb	$1, -561(%rbp)
.LBB5_808:                              # %sw.bb.2735
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#809:                               # %do.body.2737
                                        #   in Loop: Header=BB5_796 Depth=2
	jmp	.LBB5_810
.LBB5_810:                              # %do.body.2738
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -64(%rbp)
	movq	-72(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#811:                               # %do.end.2746
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#812:                               # %do.end.2749
                                        #   in Loop: Header=BB5_796 Depth=2
	movl	-64(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movsbl	-561(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB5_814
# BB#813:                               # %land.lhs.true.2754
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$21, %ecx
	je	.LBB5_816
.LBB5_814:                              # %lor.lhs.false.2758
                                        #   in Loop: Header=BB5_796 Depth=2
	cmpb	$0, -561(%rbp)
	jne	.LBB5_817
# BB#815:                               # %land.lhs.true.2760
                                        #   in Loop: Header=BB5_796 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB5_817
.LBB5_816:                              # %if.then.2764
                                        #   in Loop: Header=BB5_796 Depth=2
	jmp	.LBB5_796
.LBB5_817:                              # %if.end.2765
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_819
.LBB5_818:                              # %sw.default.2766
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_819
.LBB5_819:                              # %sw.epilog.2767
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_820
.LBB5_820:                              # %if.end.2768
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB5_823
# BB#821:                               # %land.lhs.true.2771
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.LBB5_823
# BB#822:                               # %if.then.2774
                                        #   in Loop: Header=BB5_75 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB5_823:                              # %if.end.2775
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_825
.LBB5_824:                              # %if.else.2776
	jmp	.LBB5_826
.LBB5_825:                              # %if.end.2777
                                        #   in Loop: Header=BB5_75 Depth=1
	jmp	.LBB5_75
.LBB5_826:                              # %for.end.2778
	cmpl	$0, -236(%rbp)
	je	.LBB5_828
# BB#827:                               # %if.then.2780
	jmp	.LBB5_95
.LBB5_828:                              # %if.end.2781
	jmp	.LBB5_829
.LBB5_829:                              # %do.body.2782
	cmpq	$0, -200(%rbp)
	je	.LBB5_831
# BB#830:                               # %if.then.2784
	jmp	.LBB5_831
.LBB5_831:                              # %if.end.2785
	movq	$0, -200(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB5_833
# BB#832:                               # %if.then.2787
	jmp	.LBB5_833
.LBB5_833:                              # %if.end.2788
	movq	$0, -208(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB5_835
# BB#834:                               # %if.then.2790
	jmp	.LBB5_835
.LBB5_835:                              # %if.end.2791
	movq	$0, -216(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_837
# BB#836:                               # %if.then.2793
	jmp	.LBB5_837
.LBB5_837:                              # %if.end.2794
	movq	$0, -224(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB5_839
# BB#838:                               # %if.then.2796
	jmp	.LBB5_839
.LBB5_839:                              # %if.end.2797
	movq	$0, -248(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB5_841
# BB#840:                               # %if.then.2799
	jmp	.LBB5_841
.LBB5_841:                              # %if.end.2800
	movq	$0, -256(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB5_843
# BB#842:                               # %if.then.2802
	jmp	.LBB5_843
.LBB5_843:                              # %if.end.2803
	movq	$0, -232(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB5_845
# BB#844:                               # %if.then.2805
	jmp	.LBB5_845
.LBB5_845:                              # %if.end.2806
	movq	$0, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB5_847
# BB#846:                               # %if.then.2808
	jmp	.LBB5_847
.LBB5_847:                              # %if.end.2809
	movq	$0, -288(%rbp)
# BB#848:                               # %do.end.2811
	movl	$-1, -4(%rbp)
.LBB5_849:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	re_match_2_internal, .Lfunc_end5-re_match_2_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_222
	.quad	.LBB5_223
	.quad	.LBB5_224
	.quad	.LBB5_256
	.quad	.LBB5_281
	.quad	.LBB5_281
	.quad	.LBB5_303
	.quad	.LBB5_314
	.quad	.LBB5_379
	.quad	.LBB5_422
	.quad	.LBB5_435
	.quad	.LBB5_447
	.quad	.LBB5_454
	.quad	.LBB5_592
	.quad	.LBB5_597
	.quad	.LBB5_478
	.quad	.LBB5_457
	.quad	.LBB5_584
	.quad	.LBB5_510
	.quad	.LBB5_598
	.quad	.LBB5_615
	.quad	.LBB5_632
	.quad	.LBB5_644
	.quad	.LBB5_652
	.quad	.LBB5_750
	.quad	.LBB5_772
	.quad	.LBB5_707
	.quad	.LBB5_728
	.quad	.LBB5_663
	.quad	.LBB5_685

	.text
	.globl	re_match
	.align	16, 0x90
	.type	re_match,@function
re_match:                               # @re_match
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
	xorl	%eax, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %r10d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	re_match_2_internal
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	re_match, .Lfunc_end6-re_match
	.cfi_endproc

	.globl	re_match_2
	.align	16, 0x90
	.type	re_match_2,@function
re_match_2:                             # @re_match_2
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
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r10, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	-48(%rbp), %r10
	movl	-52(%rbp), %eax
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	re_match_2_internal
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	re_match_2, .Lfunc_end7-re_match_2
	.cfi_endproc

	.globl	re_compile_pattern
	.align	16, 0x90
	.type	re_compile_pattern,@function
re_compile_pattern:                     # @re_compile_pattern
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	56(%rdx), %al
	andb	$-7, %al
	movb	%al, 56(%rdx)
	movq	-32(%rbp), %rdx
	movb	56(%rdx), %al
	andb	$-17, %al
	movb	%al, 56(%rdx)
	movq	-32(%rbp), %rdx
	movb	56(%rdx), %al
	andb	$127, %al
	orb	$-128, %al
	movb	%al, 56(%rdx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	re_syntax_options, %rdx
	movq	-32(%rbp), %rcx
	callq	regex_compile
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movslq	-36(%rbp), %rax
	movq	re_error_msgid(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	re_compile_pattern, .Lfunc_end8-re_compile_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	regex_compile,@function
regex_compile:                          # @regex_compile
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
	subq	$864, %rsp              # imm = 0x360
	movl	$1280, %eax             # imm = 0x500
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
	movl	$0, -148(%rbp)
	movq	%r8, %rdi
	callq	malloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_2:                                # %if.end
	movl	$32, -72(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-9, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-65, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-33, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB9_9
# BB#3:                                 # %if.then.10
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.11
	movl	$32, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	realloc
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movl	$32, %eax
	movl	%eax, %edi
	callq	malloc
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB9_6:                                # %if.end.17
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_8
# BB#7:                                 # %if.then.20
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_8:                                # %if.end.22
	movq	-40(%rbp), %rax
	movq	$32, 8(%rax)
.LBB9_9:                                # %if.end.24
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -128(%rbp)
.LBB9_10:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_23 Depth 2
                                        #     Child Loop BB9_622 Depth 2
                                        #     Child Loop BB9_644 Depth 2
                                        #     Child Loop BB9_691 Depth 2
                                        #     Child Loop BB9_711 Depth 2
                                        #     Child Loop BB9_749 Depth 2
                                        #     Child Loop BB9_845 Depth 2
                                        #     Child Loop BB9_893 Depth 2
                                        #     Child Loop BB9_773 Depth 2
                                        #     Child Loop BB9_869 Depth 2
                                        #     Child Loop BB9_821 Depth 2
                                        #     Child Loop BB9_797 Depth 2
                                        #     Child Loop BB9_945 Depth 2
                                        #     Child Loop BB9_917 Depth 2
                                        #     Child Loop BB9_223 Depth 2
                                        #     Child Loop BB9_243 Depth 2
                                        #     Child Loop BB9_266 Depth 2
                                        #     Child Loop BB9_289 Depth 2
                                        #       Child Loop BB9_348 Depth 3
                                        #       Child Loop BB9_386 Depth 3
                                        #       Child Loop BB9_424 Depth 3
                                        #     Child Loop BB9_433 Depth 2
                                        #     Child Loop BB9_200 Depth 2
                                        #     Child Loop BB9_85 Depth 2
                                        #     Child Loop BB9_119 Depth 2
                                        #     Child Loop BB9_158 Depth 2
                                        #     Child Loop BB9_178 Depth 2
                                        #     Child Loop BB9_505 Depth 2
                                        #     Child Loop BB9_535 Depth 2
                                        #     Child Loop BB9_474 Depth 2
                                        #     Child Loop BB9_50 Depth 2
                                        #     Child Loop BB9_563 Depth 2
                                        #     Child Loop BB9_584 Depth 2
                                        #     Child Loop BB9_993 Depth 2
                                        #     Child Loop BB9_1015 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB9_1036
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_12
.LBB9_12:                               # %do.body
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_14
# BB#13:                                # %if.then.28
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_14:                               # %if.end.29
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_16:                               # %if.end.32
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -460(%rbp)        # 4-byte Spill
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	je	.LBB9_444
	jmp	.LBB9_1065
.LBB9_1065:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	je	.LBB9_45
	jmp	.LBB9_1066
.LBB9_1066:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	je	.LBB9_438
	jmp	.LBB9_1067
.LBB9_1067:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	je	.LBB9_441
	jmp	.LBB9_1068
.LBB9_1068:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	je	.LBB9_77
	jmp	.LBB9_1069
.LBB9_1069:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB9_72
	jmp	.LBB9_1070
.LBB9_1070:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	je	.LBB9_198
	jmp	.LBB9_1071
.LBB9_1071:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	je	.LBB9_72
	jmp	.LBB9_1072
.LBB9_1072:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	je	.LBB9_220
	jmp	.LBB9_1073
.LBB9_1073:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	je	.LBB9_454
	jmp	.LBB9_1074
.LBB9_1074:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	je	.LBB9_18
	jmp	.LBB9_1075
.LBB9_1075:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	je	.LBB9_450
	jmp	.LBB9_1076
.LBB9_1076:                             # %do.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	je	.LBB9_447
	jmp	.LBB9_974
.LBB9_18:                               # %sw.bb
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB9_21
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB9_21
# BB#20:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_begline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB9_43
.LBB9_21:                               # %if.then.41
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               # %do.body.42
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %while.cond.43
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_41
# BB#24:                                # %while.body.48
                                        #   in Loop: Header=BB9_23 Depth=2
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.49
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_27
# BB#26:                                # %if.then.54
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_27:                               # %if.end.55
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_29
# BB#28:                                # %if.then.60
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_29:                               # %if.end.62
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_31
# BB#30:                                # %if.then.70
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_31:                               # %if.end.71
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_39
# BB#32:                                # %if.then.75
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-64(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_34
# BB#33:                                # %if.then.87
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-144(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_34:                               # %if.end.93
                                        #   in Loop: Header=BB9_23 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_36
# BB#35:                                # %if.then.95
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-120(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_36:                               # %if.end.101
                                        #   in Loop: Header=BB9_23 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_38
# BB#37:                                # %if.then.103
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	-112(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_38:                               # %if.end.109
                                        #   in Loop: Header=BB9_23 Depth=2
	jmp	.LBB9_39
.LBB9_39:                               # %if.end.110
                                        #   in Loop: Header=BB9_23 Depth=2
	jmp	.LBB9_40
.LBB9_40:                               # %do.end.111
                                        #   in Loop: Header=BB9_23 Depth=2
	jmp	.LBB9_23
.LBB9_41:                               # %while.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$9, (%rax)
# BB#42:                                # %do.end.113
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_44
.LBB9_43:                               # %if.else.114
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_44:                               # %if.end.115
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_45:                               # %sw.bb.116
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB9_48
# BB#46:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB9_48
# BB#47:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_endline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB9_70
.LBB9_48:                               # %if.then.126
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_49
.LBB9_49:                               # %do.body.127
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_50
.LBB9_50:                               # %while.cond.128
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_68
# BB#51:                                # %while.body.137
                                        #   in Loop: Header=BB9_50 Depth=2
	jmp	.LBB9_52
.LBB9_52:                               # %do.body.138
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_54
# BB#53:                                # %if.then.144
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_54:                               # %if.end.145
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_56
# BB#55:                                # %if.then.151
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_56:                               # %if.end.153
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_58
# BB#57:                                # %if.then.161
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_58:                               # %if.end.162
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_66
# BB#59:                                # %if.then.166
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-64(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_61
# BB#60:                                # %if.then.178
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_61:                               # %if.end.184
                                        #   in Loop: Header=BB9_50 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_63
# BB#62:                                # %if.then.186
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_63:                               # %if.end.192
                                        #   in Loop: Header=BB9_50 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_65
# BB#64:                                # %if.then.194
                                        #   in Loop: Header=BB9_50 Depth=2
	movq	-112(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_65:                               # %if.end.200
                                        #   in Loop: Header=BB9_50 Depth=2
	jmp	.LBB9_66
.LBB9_66:                               # %if.end.201
                                        #   in Loop: Header=BB9_50 Depth=2
	jmp	.LBB9_67
.LBB9_67:                               # %do.end.202
                                        #   in Loop: Header=BB9_50 Depth=2
	jmp	.LBB9_50
.LBB9_68:                               # %while.end.203
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$10, (%rax)
# BB#69:                                # %do.end.205
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_71
.LBB9_70:                               # %if.else.206
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_71:                               # %if.end.207
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_72:                               # %sw.bb.208
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB9_74
# BB#73:                                # %lor.lhs.false.211
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB9_75
.LBB9_74:                               # %if.then.214
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_75:                               # %if.end.215
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_76
.LBB9_76:                               # %handle_plus
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_77
.LBB9_77:                               # %sw.bb.216
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB9_84
# BB#78:                                # %if.then.218
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB9_80
# BB#79:                                # %if.then.221
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$13, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_80:                               # %if.else.223
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	jne	.LBB9_82
# BB#81:                                # %if.then.226
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_82:                               # %if.end.227
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_83
.LBB9_83:                               # %if.end.228
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_84
.LBB9_84:                               # %if.end.229
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	$0, -169(%rbp)
	movb	$0, -170(%rbp)
	movb	$0, -171(%rbp)
.LBB9_85:                               # %for.cond
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$43, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movsbl	-170(%rbp), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -170(%rbp)
	movzbl	-41(%rbp), %eax
	cmpl	$63, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movsbl	-171(%rbp), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -171(%rbp)
	movq	-88(%rbp), %rsi
	cmpq	-96(%rbp), %rsi
	jne	.LBB9_87
# BB#86:                                # %if.then.243
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_115
.LBB9_87:                               # %if.end.244
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_88
.LBB9_88:                               # %do.body.245
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_90
# BB#89:                                # %if.then.248
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_90:                               # %if.end.249
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_92
# BB#91:                                # %if.then.252
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_92:                               # %if.end.255
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_93
.LBB9_93:                               # %do.end.256
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$42, %eax
	je	.LBB9_97
# BB#94:                                # %lor.lhs.false.260
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB9_98
# BB#95:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB9_97
# BB#96:                                # %lor.lhs.false.266
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$63, %eax
	jne	.LBB9_98
.LBB9_97:                               # %if.then.270
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_114
.LBB9_98:                               # %if.else.271
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB9_112
# BB#99:                                # %land.lhs.true.274
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB9_112
# BB#100:                               # %if.then.278
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_102
# BB#101:                               # %if.then.281
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_102:                              # %if.end.283
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_103
.LBB9_103:                              # %do.body.284
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_105
# BB#104:                               # %if.then.287
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_105:                              # %if.end.288
                                        #   in Loop: Header=BB9_85 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -42(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_107
# BB#106:                               # %if.then.291
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-42(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -42(%rbp)
.LBB9_107:                              # %if.end.294
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_108
.LBB9_108:                              # %do.end.295
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-42(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB9_111
# BB#109:                               # %lor.lhs.false.299
                                        #   in Loop: Header=BB9_85 Depth=2
	movzbl	-42(%rbp), %eax
	cmpl	$63, %eax
	je	.LBB9_111
# BB#110:                               # %if.then.303
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_115
.LBB9_111:                              # %if.end.306
                                        #   in Loop: Header=BB9_85 Depth=2
	movb	-42(%rbp), %al
	movb	%al, -41(%rbp)
	jmp	.LBB9_113
.LBB9_112:                              # %if.else.307
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_115
.LBB9_113:                              # %if.end.309
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_114
.LBB9_114:                              # %if.end.310
                                        #   in Loop: Header=BB9_85 Depth=2
	jmp	.LBB9_85
.LBB9_115:                              # %for.end
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB9_117
# BB#116:                               # %if.then.312
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_117:                              # %if.end.313
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpb	$0, -171(%rbp)
	je	.LBB9_157
# BB#118:                               # %if.then.315
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_119
.LBB9_119:                              # %while.cond.316
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_137
# BB#120:                               # %while.body.325
                                        #   in Loop: Header=BB9_119 Depth=2
	jmp	.LBB9_121
.LBB9_121:                              # %do.body.326
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_123
# BB#122:                               # %if.then.332
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_123:                              # %if.end.333
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_125
# BB#124:                               # %if.then.339
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_125:                              # %if.end.341
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_127
# BB#126:                               # %if.then.349
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_127:                              # %if.end.350
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-184(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_135
# BB#128:                               # %if.then.354
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-64(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_130
# BB#129:                               # %if.then.366
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-144(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_130:                              # %if.end.372
                                        #   in Loop: Header=BB9_119 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_132
# BB#131:                               # %if.then.374
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_132:                              # %if.end.380
                                        #   in Loop: Header=BB9_119 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_134
# BB#133:                               # %if.then.382
                                        #   in Loop: Header=BB9_119 Depth=2
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_134:                              # %if.end.388
                                        #   in Loop: Header=BB9_119 Depth=2
	jmp	.LBB9_135
.LBB9_135:                              # %if.end.389
                                        #   in Loop: Header=BB9_119 Depth=2
	jmp	.LBB9_136
.LBB9_136:                              # %do.end.390
                                        #   in Loop: Header=BB9_119 Depth=2
	jmp	.LBB9_119
.LBB9_137:                              # %while.end.391
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB9_139
# BB#138:                               # %cond.true
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movzbl	-2(%rax), %ecx
	movl	%ecx, %eax
	movq	-104(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB9_140
.LBB9_139:                              # %cond.false
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	-2(%rax), %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
.LBB9_140:                              # %cond.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	cmpq	$0, -104(%rbp)
	movl	%eax, -520(%rbp)        # 4-byte Spill
	je	.LBB9_142
# BB#141:                               # %cond.true.400
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-104(%rbp), %rax
	movsbl	46(%rax), %ecx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	jmp	.LBB9_143
.LBB9_142:                              # %cond.false.403
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$46, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB9_143
.LBB9_143:                              # %cond.end.404
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	-520(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_155
# BB#144:                               # %land.lhs.true.408
                                        #   in Loop: Header=BB9_10 Depth=1
	movsbl	-170(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_155
# BB#145:                               # %land.lhs.true.411
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB9_155
# BB#146:                               # %land.lhs.true.414
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB9_148
# BB#147:                               # %cond.true.416
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-104(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	movl	%ecx, -528(%rbp)        # 4-byte Spill
	jmp	.LBB9_149
.LBB9_148:                              # %cond.false.420
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -528(%rbp)        # 4-byte Spill
.LBB9_149:                              # %cond.end.422
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-528(%rbp), %eax        # 4-byte Reload
	cmpq	$0, -104(%rbp)
	movl	%eax, -532(%rbp)        # 4-byte Spill
	je	.LBB9_151
# BB#150:                               # %cond.true.425
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-104(%rbp), %rax
	movsbl	10(%rax), %ecx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	jmp	.LBB9_152
.LBB9_151:                              # %cond.false.428
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$10, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB9_152
.LBB9_152:                              # %cond.end.429
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	-532(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_155
# BB#153:                               # %land.lhs.true.433
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$64, %rax
	cmpq	$0, %rax
	jne	.LBB9_155
# BB#154:                               # %if.then.436
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$13, %edi
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
	movb	$1, -169(%rbp)
	jmp	.LBB9_156
.LBB9_155:                              # %if.else.441
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$18, %edi
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	$-3, %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB9_156:                              # %if.end.448
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
.LBB9_157:                              # %if.end.450
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_158
.LBB9_158:                              # %while.cond.451
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_176
# BB#159:                               # %while.body.460
                                        #   in Loop: Header=BB9_158 Depth=2
	jmp	.LBB9_160
.LBB9_160:                              # %do.body.461
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_162
# BB#161:                               # %if.then.467
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_162:                              # %if.end.468
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_164
# BB#163:                               # %if.then.474
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_164:                              # %if.end.476
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_166
# BB#165:                               # %if.then.484
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_166:                              # %if.end.485
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-192(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_174
# BB#167:                               # %if.then.489
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-64(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_169
# BB#168:                               # %if.then.501
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-144(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_169:                              # %if.end.507
                                        #   in Loop: Header=BB9_158 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_171
# BB#170:                               # %if.then.509
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-120(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_171:                              # %if.end.515
                                        #   in Loop: Header=BB9_158 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_173
# BB#172:                               # %if.then.517
                                        #   in Loop: Header=BB9_158 Depth=2
	movq	-112(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_173:                              # %if.end.523
                                        #   in Loop: Header=BB9_158 Depth=2
	jmp	.LBB9_174
.LBB9_174:                              # %if.end.524
                                        #   in Loop: Header=BB9_158 Depth=2
	jmp	.LBB9_175
.LBB9_175:                              # %do.end.525
                                        #   in Loop: Header=BB9_158 Depth=2
	jmp	.LBB9_158
.LBB9_176:                              # %while.end.526
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$15, %eax
	movl	$16, %ecx
	movsbl	-169(%rbp), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdi
	addq	$3, %rdi
	movq	-120(%rbp), %r8
	subq	%r8, %rdi
	subq	$3, %rdi
	movl	%edi, %ecx
	movq	-64(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%ecx, %edx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	insert_op1
	movq	$0, -112(%rbp)
	movq	-64(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -64(%rbp)
	cmpb	$0, -170(%rbp)
	jne	.LBB9_197
# BB#177:                               # %if.then.538
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_178
.LBB9_178:                              # %while.cond.539
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_196
# BB#179:                               # %while.body.548
                                        #   in Loop: Header=BB9_178 Depth=2
	jmp	.LBB9_180
.LBB9_180:                              # %do.body.549
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_182
# BB#181:                               # %if.then.555
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_182:                              # %if.end.556
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_184
# BB#183:                               # %if.then.562
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_184:                              # %if.end.564
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_186
# BB#185:                               # %if.then.572
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_186:                              # %if.end.573
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-200(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_194
# BB#187:                               # %if.then.577
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_189
# BB#188:                               # %if.then.589
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-144(%rbp), %rax
	movq	-200(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_189:                              # %if.end.595
                                        #   in Loop: Header=BB9_178 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_191
# BB#190:                               # %if.then.597
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-120(%rbp), %rax
	movq	-200(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_191:                              # %if.end.603
                                        #   in Loop: Header=BB9_178 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_193
# BB#192:                               # %if.then.605
                                        #   in Loop: Header=BB9_178 Depth=2
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_193:                              # %if.end.611
                                        #   in Loop: Header=BB9_178 Depth=2
	jmp	.LBB9_194
.LBB9_194:                              # %if.end.612
                                        #   in Loop: Header=BB9_178 Depth=2
	jmp	.LBB9_195
.LBB9_195:                              # %do.end.613
                                        #   in Loop: Header=BB9_178 Depth=2
	jmp	.LBB9_178
.LBB9_196:                              # %while.end.614
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$19, %edi
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	callq	insert_op1
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
.LBB9_197:                              # %if.end.622
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_198:                              # %sw.bb.623
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#199:                               # %do.body.624
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_200
.LBB9_200:                              # %while.cond.625
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_218
# BB#201:                               # %while.body.634
                                        #   in Loop: Header=BB9_200 Depth=2
	jmp	.LBB9_202
.LBB9_202:                              # %do.body.635
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_204
# BB#203:                               # %if.then.641
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_204:                              # %if.end.642
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_206
# BB#205:                               # %if.then.648
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_206:                              # %if.end.650
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_208
# BB#207:                               # %if.then.658
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_208:                              # %if.end.659
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-208(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_216
# BB#209:                               # %if.then.663
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-208(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_211
# BB#210:                               # %if.then.675
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-144(%rbp), %rax
	movq	-208(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_211:                              # %if.end.681
                                        #   in Loop: Header=BB9_200 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_213
# BB#212:                               # %if.then.683
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-120(%rbp), %rax
	movq	-208(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_213:                              # %if.end.689
                                        #   in Loop: Header=BB9_200 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_215
# BB#214:                               # %if.then.691
                                        #   in Loop: Header=BB9_200 Depth=2
	movq	-112(%rbp), %rax
	movq	-208(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_215:                              # %if.end.697
                                        #   in Loop: Header=BB9_200 Depth=2
	jmp	.LBB9_216
.LBB9_216:                              # %if.end.698
                                        #   in Loop: Header=BB9_200 Depth=2
	jmp	.LBB9_217
.LBB9_217:                              # %do.end.699
                                        #   in Loop: Header=BB9_200 Depth=2
	jmp	.LBB9_200
.LBB9_218:                              # %while.end.700
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$3, (%rax)
# BB#219:                               # %do.end.702
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_220:                              # %sw.bb.703
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	$0, -209(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_222
# BB#221:                               # %if.then.706
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_222:                              # %if.end.708
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_223
.LBB9_223:                              # %while.cond.709
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$34, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_241
# BB#224:                               # %while.body.718
                                        #   in Loop: Header=BB9_223 Depth=2
	jmp	.LBB9_225
.LBB9_225:                              # %do.body.719
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_227
# BB#226:                               # %if.then.725
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_227:                              # %if.end.726
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_229
# BB#228:                               # %if.then.732
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_229:                              # %if.end.734
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_231
# BB#230:                               # %if.then.742
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_231:                              # %if.end.743
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-224(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_239
# BB#232:                               # %if.then.747
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-64(%rbp), %rax
	movq	-224(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-224(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_234
# BB#233:                               # %if.then.759
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-144(%rbp), %rax
	movq	-224(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_234:                              # %if.end.765
                                        #   in Loop: Header=BB9_223 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_236
# BB#235:                               # %if.then.767
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-120(%rbp), %rax
	movq	-224(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_236:                              # %if.end.773
                                        #   in Loop: Header=BB9_223 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_238
# BB#237:                               # %if.then.775
                                        #   in Loop: Header=BB9_223 Depth=2
	movq	-112(%rbp), %rax
	movq	-224(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_238:                              # %if.end.781
                                        #   in Loop: Header=BB9_223 Depth=2
	jmp	.LBB9_239
.LBB9_239:                              # %if.end.782
                                        #   in Loop: Header=BB9_223 Depth=2
	jmp	.LBB9_240
.LBB9_240:                              # %do.end.783
                                        #   in Loop: Header=BB9_223 Depth=2
	jmp	.LBB9_223
.LBB9_241:                              # %while.end.784
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#242:                               # %do.body.785
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_243
.LBB9_243:                              # %while.cond.786
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_261
# BB#244:                               # %while.body.795
                                        #   in Loop: Header=BB9_243 Depth=2
	jmp	.LBB9_245
.LBB9_245:                              # %do.body.796
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_247
# BB#246:                               # %if.then.802
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_247:                              # %if.end.803
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_249
# BB#248:                               # %if.then.809
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_249:                              # %if.end.811
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_251
# BB#250:                               # %if.then.819
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_251:                              # %if.end.820
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-232(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_259
# BB#252:                               # %if.then.824
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-64(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_254
# BB#253:                               # %if.then.836
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-144(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_254:                              # %if.end.842
                                        #   in Loop: Header=BB9_243 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_256
# BB#255:                               # %if.then.844
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-120(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_256:                              # %if.end.850
                                        #   in Loop: Header=BB9_243 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_258
# BB#257:                               # %if.then.852
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-112(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_258:                              # %if.end.858
                                        #   in Loop: Header=BB9_243 Depth=2
	jmp	.LBB9_259
.LBB9_259:                              # %if.end.859
                                        #   in Loop: Header=BB9_243 Depth=2
	jmp	.LBB9_260
.LBB9_260:                              # %do.end.860
                                        #   in Loop: Header=BB9_243 Depth=2
	jmp	.LBB9_243
.LBB9_261:                              # %while.end.861
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$4, %eax
	movl	$5, %ecx
	movq	-88(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$94, %esi
	cmovel	%ecx, %eax
	movb	%al, %dil
	movq	-64(%rbp), %rdx
	movq	%rdx, %r8
	addq	$1, %r8
	movq	%r8, -64(%rbp)
	movb	%dil, (%rdx)
# BB#262:                               # %do.end.868
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB9_264
# BB#263:                               # %if.then.872
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB9_264:                              # %if.end.874
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
# BB#265:                               # %do.body.875
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_266
.LBB9_266:                              # %while.cond.876
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_284
# BB#267:                               # %while.body.885
                                        #   in Loop: Header=BB9_266 Depth=2
	jmp	.LBB9_268
.LBB9_268:                              # %do.body.886
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_270
# BB#269:                               # %if.then.892
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_270:                              # %if.end.893
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_272
# BB#271:                               # %if.then.899
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_272:                              # %if.end.901
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_274
# BB#273:                               # %if.then.909
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_274:                              # %if.end.910
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-240(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_282
# BB#275:                               # %if.then.914
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-64(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_277
# BB#276:                               # %if.then.926
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-144(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_277:                              # %if.end.932
                                        #   in Loop: Header=BB9_266 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_279
# BB#278:                               # %if.then.934
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-120(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_279:                              # %if.end.940
                                        #   in Loop: Header=BB9_266 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_281
# BB#280:                               # %if.then.942
                                        #   in Loop: Header=BB9_266 Depth=2
	movq	-112(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_281:                              # %if.end.948
                                        #   in Loop: Header=BB9_266 Depth=2
	jmp	.LBB9_282
.LBB9_282:                              # %if.end.949
                                        #   in Loop: Header=BB9_266 Depth=2
	jmp	.LBB9_283
.LBB9_283:                              # %do.end.950
                                        #   in Loop: Header=BB9_266 Depth=2
	jmp	.LBB9_266
.LBB9_284:                              # %while.end.951
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$32, (%rax)
# BB#285:                               # %do.end.953
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	callq	memset
	movq	-64(%rbp), %rdx
	movzbl	-2(%rdx), %eax
	cmpl	$5, %eax
	jne	.LBB9_288
# BB#286:                               # %land.lhs.true.958
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB9_288
# BB#287:                               # %if.then.961
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %ecx
	orl	$4, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
.LBB9_288:                              # %if.end.966
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_289
.LBB9_289:                              # %for.cond.967
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_348 Depth 3
                                        #       Child Loop BB9_386 Depth 3
                                        #       Child Loop BB9_424 Depth 3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_291
# BB#290:                               # %if.then.970
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_291:                              # %if.end.972
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_292
.LBB9_292:                              # %do.body.973
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_294
# BB#293:                               # %if.then.976
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_294:                              # %if.end.977
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_296
# BB#295:                               # %if.then.980
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_296:                              # %if.end.983
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_297
.LBB9_297:                              # %do.end.984
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-32(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB9_308
# BB#298:                               # %land.lhs.true.987
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB9_308
# BB#299:                               # %if.then.991
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_301
# BB#300:                               # %if.then.994
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_301:                              # %if.end.996
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_302
.LBB9_302:                              # %do.body.997
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_304
# BB#303:                               # %if.then.1000
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_304:                              # %if.end.1001
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -42(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_306
# BB#305:                               # %if.then.1004
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-42(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -42(%rbp)
.LBB9_306:                              # %if.end.1007
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_307
.LBB9_307:                              # %do.end.1008
                                        #   in Loop: Header=BB9_289 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movzbl	-42(%rbp), %edx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-548(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-552(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movzbl	-42(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -556(%rbp)        # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-64(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-556(%rbp), %edi        # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	jmp	.LBB9_289
.LBB9_308:                              # %if.end.1017
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$93, %eax
	jne	.LBB9_311
# BB#309:                               # %land.lhs.true.1021
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB9_311
# BB#310:                               # %if.then.1025
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_432
.LBB9_311:                              # %if.end.1026
                                        #   in Loop: Header=BB9_289 Depth=2
	movsbl	-209(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_315
# BB#312:                               # %land.lhs.true.1029
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB9_315
# BB#313:                               # %land.lhs.true.1033
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB9_315
# BB#314:                               # %if.then.1037
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$11, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_315:                              # %if.end.1039
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB9_325
# BB#316:                               # %land.lhs.true.1043
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	addq	$-2, %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB9_318
# BB#317:                               # %land.lhs.true.1047
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	-2(%rax), %ecx
	cmpl	$91, %ecx
	je	.LBB9_325
.LBB9_318:                              # %land.lhs.true.1052
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	addq	$-3, %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB9_321
# BB#319:                               # %land.lhs.true.1056
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	-3(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB9_321
# BB#320:                               # %land.lhs.true.1061
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	-2(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB9_325
.LBB9_321:                              # %land.lhs.true.1066
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB9_325
# BB#322:                               # %if.then.1070
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	compile_range
	movl	%eax, -244(%rbp)
	cmpl	$0, -244(%rbp)
	je	.LBB9_324
# BB#323:                               # %if.then.1074
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	-244(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_324:                              # %if.end.1076
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_431
.LBB9_325:                              # %if.else.1077
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB9_336
# BB#326:                               # %land.lhs.true.1082
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB9_336
# BB#327:                               # %if.then.1087
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_328
.LBB9_328:                              # %do.body.1089
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_330
# BB#329:                               # %if.then.1092
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_330:                              # %if.end.1093
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -42(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_332
# BB#331:                               # %if.then.1096
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-42(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -42(%rbp)
.LBB9_332:                              # %if.end.1099
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_333
.LBB9_333:                              # %do.end.1100
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	compile_range
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB9_335
# BB#334:                               # %if.then.1104
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	-248(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_335:                              # %if.end.1106
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_430
.LBB9_336:                              # %if.else.1107
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-32(%rbp), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB9_428
# BB#337:                               # %land.lhs.true.1110
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	cmpl	$91, %eax
	jne	.LBB9_428
# BB#338:                               # %land.lhs.true.1114
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB9_428
# BB#339:                               # %if.then.1118
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_340
.LBB9_340:                              # %do.body.1119
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_342
# BB#341:                               # %if.then.1122
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_342:                              # %if.end.1123
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_344
# BB#343:                               # %if.then.1126
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_344:                              # %if.end.1129
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_345
.LBB9_345:                              # %do.end.1130
                                        #   in Loop: Header=BB9_289 Depth=2
	movb	$0, -42(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_347
# BB#346:                               # %if.then.1133
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_347:                              # %if.end.1135
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_348
.LBB9_348:                              # %for.cond.1136
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	jmp	.LBB9_349
.LBB9_349:                              # %do.body.1137
                                        #   in Loop: Header=BB9_348 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_351
# BB#350:                               # %if.then.1140
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_351:                              # %if.end.1141
                                        #   in Loop: Header=BB9_348 Depth=3
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_353
# BB#352:                               # %if.then.1144
                                        #   in Loop: Header=BB9_348 Depth=3
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_353:                              # %if.end.1147
                                        #   in Loop: Header=BB9_348 Depth=3
	jmp	.LBB9_354
.LBB9_354:                              # %do.end.1148
                                        #   in Loop: Header=BB9_348 Depth=3
	movzbl	-41(%rbp), %eax
	cmpl	$58, %eax
	jne	.LBB9_356
# BB#355:                               # %land.lhs.true.1152
                                        #   in Loop: Header=BB9_348 Depth=3
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB9_357
.LBB9_356:                              # %lor.lhs.false.1156
                                        #   in Loop: Header=BB9_348 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_358
.LBB9_357:                              # %if.then.1159
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_362
.LBB9_358:                              # %if.end.1160
                                        #   in Loop: Header=BB9_348 Depth=3
	movzbl	-42(%rbp), %eax
	cmpl	$6, %eax
	jge	.LBB9_360
# BB#359:                               # %if.then.1164
                                        #   in Loop: Header=BB9_348 Depth=3
	movb	-41(%rbp), %al
	movb	-42(%rbp), %cl
	movb	%cl, %dl
	addb	$1, %dl
	movb	%dl, -42(%rbp)
	movzbl	%cl, %esi
	movl	%esi, %edi
	movb	%al, -255(%rbp,%rdi)
	jmp	.LBB9_361
.LBB9_360:                              # %if.else.1167
                                        #   in Loop: Header=BB9_348 Depth=3
	movb	$0, -255(%rbp)
.LBB9_361:                              # %if.end.1169
                                        #   in Loop: Header=BB9_348 Depth=3
	jmp	.LBB9_348
.LBB9_362:                              # %for.end.1170
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-42(%rbp), %eax
	movl	%eax, %ecx
	movb	$0, -255(%rbp,%rcx)
	movzbl	-41(%rbp), %eax
	cmpl	$58, %eax
	jne	.LBB9_423
# BB#363:                               # %land.lhs.true.1176
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	jne	.LBB9_423
# BB#364:                               # %if.then.1180
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rax
	movl	$.L.str, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -261(%rbp)
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -262(%rbp)
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -263(%rbp)
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -264(%rbp)
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -265(%rbp)
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -266(%rbp)
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -267(%rbp)
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -268(%rbp)
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -269(%rbp)
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -270(%rbp)
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -271(%rbp)
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	%al, %dl
	movb	%dl, -272(%rbp)
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#365:                               # %lor.lhs.false.1244
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#366:                               # %lor.lhs.false.1249
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#367:                               # %lor.lhs.false.1254
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#368:                               # %lor.lhs.false.1259
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#369:                               # %lor.lhs.false.1264
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#370:                               # %lor.lhs.false.1269
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#371:                               # %lor.lhs.false.1274
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#372:                               # %lor.lhs.false.1279
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#373:                               # %lor.lhs.false.1284
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#374:                               # %lor.lhs.false.1289
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#375:                               # %lor.lhs.false.1294
                                        #   in Loop: Header=BB9_289 Depth=2
	leaq	-255(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_377
# BB#376:                               # %if.then.1299
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$4, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_377:                              # %if.end.1301
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_378
.LBB9_378:                              # %do.body.1302
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_380
# BB#379:                               # %if.then.1305
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_380:                              # %if.end.1306
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_382
# BB#381:                               # %if.then.1309
                                        #   in Loop: Header=BB9_289 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_382:                              # %if.end.1312
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_383
.LBB9_383:                              # %do.end.1313
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_385
# BB#384:                               # %if.then.1316
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_385:                              # %if.end.1318
                                        #   in Loop: Header=BB9_289 Depth=2
	movl	$0, -260(%rbp)
.LBB9_386:                              # %for.cond.1319
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$256, -260(%rbp)        # imm = 0x100
	jge	.LBB9_422
# BB#387:                               # %for.body
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-261(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_389
# BB#388:                               # %land.lhs.true.1324
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	jne	.LBB9_395
.LBB9_389:                              # %lor.lhs.false.1331
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-262(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_391
# BB#390:                               # %land.lhs.true.1334
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	jne	.LBB9_395
.LBB9_391:                              # %lor.lhs.false.1341
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-263(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_393
# BB#392:                               # %land.lhs.true.1344
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	jne	.LBB9_395
.LBB9_393:                              # %lor.lhs.false.1351
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-264(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_396
# BB#394:                               # %land.lhs.true.1354
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB9_396
.LBB9_395:                              # %if.then.1361
                                        #   in Loop: Header=BB9_386 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-260(%rbp), %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-604(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%ecx, -608(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-608(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-260(%rbp), %r8d
	movb	%r8b, %cl
	movzbl	%cl, %r8d
	movl	%r8d, %eax
	movl	%edx, -612(%rbp)        # 4-byte Spill
	cltd
	idivl	%edi
	movslq	%eax, %r9
	movq	-64(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-612(%rbp), %r8d        # 4-byte Reload
	orl	%r8d, %eax
	movb	%al, %cl
	movb	%cl, (%r10,%r9)
.LBB9_396:                              # %if.end.1374
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-265(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_398
# BB#397:                               # %land.lhs.true.1377
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB9_404
.LBB9_398:                              # %lor.lhs.false.1384
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-266(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_400
# BB#399:                               # %land.lhs.true.1387
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-632(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$32768, %edx            # imm = 0x8000
	cmpl	$0, %edx
	jne	.LBB9_404
.LBB9_400:                              # %lor.lhs.false.1394
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-267(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_402
# BB#401:                               # %land.lhs.true.1397
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$512, %edx              # imm = 0x200
	cmpl	$0, %edx
	jne	.LBB9_404
.LBB9_402:                              # %lor.lhs.false.1404
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-268(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_405
# BB#403:                               # %land.lhs.true.1407
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$16384, %edx            # imm = 0x4000
	cmpl	$0, %edx
	je	.LBB9_405
.LBB9_404:                              # %if.then.1414
                                        #   in Loop: Header=BB9_386 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-260(%rbp), %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%eax, -652(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-652(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%ecx, -656(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-656(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-260(%rbp), %r8d
	movb	%r8b, %cl
	movzbl	%cl, %r8d
	movl	%r8d, %eax
	movl	%edx, -660(%rbp)        # 4-byte Spill
	cltd
	idivl	%edi
	movslq	%eax, %r9
	movq	-64(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-660(%rbp), %r8d        # 4-byte Reload
	orl	%r8d, %eax
	movb	%al, %cl
	movb	%cl, (%r10,%r9)
.LBB9_405:                              # %if.end.1427
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-269(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_407
# BB#406:                               # %land.lhs.true.1430
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	jne	.LBB9_413
.LBB9_407:                              # %lor.lhs.false.1437
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-270(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_409
# BB#408:                               # %land.lhs.true.1440
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-680(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8192, %edx             # imm = 0x2000
	cmpl	$0, %edx
	jne	.LBB9_413
.LBB9_409:                              # %lor.lhs.false.1447
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-271(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_411
# BB#410:                               # %land.lhs.true.1450
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-688(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	jne	.LBB9_413
.LBB9_411:                              # %lor.lhs.false.1457
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-272(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_414
# BB#412:                               # %land.lhs.true.1460
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$4096, %edx             # imm = 0x1000
	cmpl	$0, %edx
	je	.LBB9_414
.LBB9_413:                              # %if.then.1467
                                        #   in Loop: Header=BB9_386 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-260(%rbp), %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%eax, -700(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-700(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%ecx, -704(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-704(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-260(%rbp), %r8d
	movb	%r8b, %cl
	movzbl	%cl, %r8d
	movl	%r8d, %eax
	movl	%edx, -708(%rbp)        # 4-byte Spill
	cltd
	idivl	%edi
	movslq	%eax, %r9
	movq	-64(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-708(%rbp), %r8d        # 4-byte Reload
	orl	%r8d, %eax
	movb	%al, %cl
	movb	%cl, (%r10,%r9)
.LBB9_414:                              # %if.end.1480
                                        #   in Loop: Header=BB9_386 Depth=3
	cmpq	$0, -104(%rbp)
	je	.LBB9_420
# BB#415:                               # %land.lhs.true.1482
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-271(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB9_417
# BB#416:                               # %lor.lhs.false.1485
                                        #   in Loop: Header=BB9_386 Depth=3
	movsbl	-267(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_420
.LBB9_417:                              # %land.lhs.true.1488
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	jne	.LBB9_419
# BB#418:                               # %lor.lhs.false.1495
                                        #   in Loop: Header=BB9_386 Depth=3
	movslq	-260(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$512, %edx              # imm = 0x200
	cmpl	$0, %edx
	je	.LBB9_420
.LBB9_419:                              # %if.then.1502
                                        #   in Loop: Header=BB9_386 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-260(%rbp), %edx
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%eax, -732(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-732(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%ecx, -736(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-736(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-260(%rbp), %r8d
	movb	%r8b, %cl
	movzbl	%cl, %r8d
	movl	%r8d, %eax
	movl	%edx, -740(%rbp)        # 4-byte Spill
	cltd
	idivl	%edi
	movslq	%eax, %r9
	movq	-64(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-740(%rbp), %r8d        # 4-byte Reload
	orl	%r8d, %eax
	movb	%al, %cl
	movb	%cl, (%r10,%r9)
.LBB9_420:                              # %if.end.1515
                                        #   in Loop: Header=BB9_386 Depth=3
	jmp	.LBB9_421
.LBB9_421:                              # %for.inc
                                        #   in Loop: Header=BB9_386 Depth=3
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB9_386
.LBB9_422:                              # %for.end.1517
                                        #   in Loop: Header=BB9_289 Depth=2
	movb	$1, -209(%rbp)
	jmp	.LBB9_427
.LBB9_423:                              # %if.else.1518
                                        #   in Loop: Header=BB9_289 Depth=2
	movb	-42(%rbp), %al
	addb	$1, %al
	movb	%al, -42(%rbp)
.LBB9_424:                              # %while.cond.1520
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-42(%rbp), %al
	movb	%al, %cl
	addb	$-1, %cl
	movb	%cl, -42(%rbp)
	cmpb	$0, %al
	je	.LBB9_426
# BB#425:                               # %while.body.1522
                                        #   in Loop: Header=BB9_424 Depth=3
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_424
.LBB9_426:                              # %while.end.1524
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	-64(%rbp), %rax
	movzbl	11(%rax), %ecx
	orl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, 11(%rax)
	movq	-64(%rbp), %rax
	movzbl	7(%rax), %ecx
	orl	$4, %ecx
	movb	%cl, %dl
	movb	%dl, 7(%rax)
	movb	$0, -209(%rbp)
.LBB9_427:                              # %if.end.1533
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_429
.LBB9_428:                              # %if.else.1534
                                        #   in Loop: Header=BB9_289 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movb	$0, -209(%rbp)
	movzbl	-41(%rbp), %edx
	movl	%eax, -744(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-744(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-748(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movzbl	-41(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -752(%rbp)        # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-64(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-752(%rbp), %edi        # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB9_429:                              # %if.end.1545
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_430
.LBB9_430:                              # %if.end.1546
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_431
.LBB9_431:                              # %if.end.1547
                                        #   in Loop: Header=BB9_289 Depth=2
	jmp	.LBB9_289
.LBB9_432:                              # %for.end.1548
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_433
.LBB9_433:                              # %while.cond.1549
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movzbl	-1(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -753(%rbp)         # 1-byte Spill
	jle	.LBB9_435
# BB#434:                               # %land.rhs
                                        #   in Loop: Header=BB9_433 Depth=2
	movq	-64(%rbp), %rax
	movzbl	-1(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$0, %ecx
	sete	%sil
	movb	%sil, -753(%rbp)        # 1-byte Spill
.LBB9_435:                              # %land.end
                                        #   in Loop: Header=BB9_433 Depth=2
	movb	-753(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_436
	jmp	.LBB9_437
.LBB9_436:                              # %while.body.1562
                                        #   in Loop: Header=BB9_433 Depth=2
	movq	-64(%rbp), %rax
	movb	-1(%rax), %cl
	addb	$-1, %cl
	movb	%cl, -1(%rax)
	jmp	.LBB9_433
.LBB9_437:                              # %while.end.1565
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_1035
.LBB9_438:                              # %sw.bb.1569
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB9_440
# BB#439:                               # %if.then.1572
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_464
.LBB9_440:                              # %if.else.1573
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_441:                              # %sw.bb.1574
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB9_443
# BB#442:                               # %if.then.1577
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_502
.LBB9_443:                              # %if.else.1578
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_444:                              # %sw.bb.1579
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$2048, %rax             # imm = 0x800
	cmpq	$0, %rax
	je	.LBB9_446
# BB#445:                               # %if.then.1582
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_560
.LBB9_446:                              # %if.else.1583
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_447:                              # %sw.bb.1584
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB9_449
# BB#448:                               # %if.then.1587
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_560
.LBB9_449:                              # %if.else.1588
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_450:                              # %sw.bb.1589
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB9_453
# BB#451:                               # %land.lhs.true.1592
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB9_453
# BB#452:                               # %if.then.1595
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_610
.LBB9_453:                              # %if.else.1596
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_454:                              # %sw.bb.1597
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_456
# BB#455:                               # %if.then.1600
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_456:                              # %if.end.1602
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_457
.LBB9_457:                              # %do.body.1603
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_459
# BB#458:                               # %if.then.1606
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_459:                              # %if.end.1607
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
# BB#460:                               # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	subl	$39, %ecx
	movl	%eax, -760(%rbp)        # 4-byte Spill
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	je	.LBB9_913
	jmp	.LBB9_1077
.LBB9_1077:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	je	.LBB9_461
	jmp	.LBB9_1078
.LBB9_1078:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -772(%rbp)        # 4-byte Spill
	je	.LBB9_495
	jmp	.LBB9_1079
.LBB9_1079:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -776(%rbp)        # 4-byte Spill
	je	.LBB9_965
	jmp	.LBB9_1080
.LBB9_1080:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jb	.LBB9_937
	jmp	.LBB9_1081
.LBB9_1081:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	je	.LBB9_793
	jmp	.LBB9_1082
.LBB9_1082:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	je	.LBB9_817
	jmp	.LBB9_1083
.LBB9_1083:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -792(%rbp)        # 4-byte Spill
	je	.LBB9_965
	jmp	.LBB9_1084
.LBB9_1084:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -796(%rbp)        # 4-byte Spill
	je	.LBB9_865
	jmp	.LBB9_1085
.LBB9_1085:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
	je	.LBB9_769
	jmp	.LBB9_1086
.LBB9_1086:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$96, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
	je	.LBB9_889
	jmp	.LBB9_1087
.LBB9_1087:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	je	.LBB9_841
	jmp	.LBB9_1088
.LBB9_1088:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	je	.LBB9_745
	jmp	.LBB9_1089
.LBB9_1089:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	je	.LBB9_603
	jmp	.LBB9_1090
.LBB9_1090:                             # %do.end.1609
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-760(%rbp), %eax        # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	je	.LBB9_556
	jmp	.LBB9_968
.LBB9_461:                              # %sw.bb.1611
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB9_463
# BB#462:                               # %if.then.1614
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_463:                              # %if.end.1615
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_464
.LBB9_464:                              # %handle_open
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movl	-148(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movl	-68(%rbp), %edx
	cmpl	-72(%rbp), %edx
	jne	.LBB9_468
# BB#465:                               # %if.then.1623
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rsi
	movq	%rax, %rdi
	callq	realloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_467
# BB#466:                               # %if.then.1633
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_467:                              # %if.end.1634
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-72(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -72(%rbp)
.LBB9_468:                              # %if.end.1637
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	-68(%rbp), %edx
	movl	%edx, %ecx
	imulq	$40, %rcx, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -144(%rbp)
	je	.LBB9_470
# BB#469:                               # %cond.true.1647
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB9_471
.LBB9_470:                              # %cond.false.1653
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB9_471
.LBB9_471:                              # %cond.end.1654
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	-148(%rbp), %ecx
	movl	-68(%rbp), %esi
	movl	%esi, %eax
	imulq	$40, %rax, %rax
	addq	-80(%rbp), %rax
	movl	%ecx, 32(%rax)
	cmpl	$255, -148(%rbp)
	ja	.LBB9_494
# BB#472:                               # %if.then.1676
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movl	-68(%rbp), %edx
	movl	%edx, %ecx
	imulq	$40, %rcx, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#473:                               # %do.body.1686
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_474
.LBB9_474:                              # %while.cond.1687
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_492
# BB#475:                               # %while.body.1696
                                        #   in Loop: Header=BB9_474 Depth=2
	jmp	.LBB9_476
.LBB9_476:                              # %do.body.1697
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_478
# BB#477:                               # %if.then.1703
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_478:                              # %if.end.1704
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_480
# BB#479:                               # %if.then.1710
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_480:                              # %if.end.1712
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_482
# BB#481:                               # %if.then.1720
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_482:                              # %if.end.1721
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-280(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_490
# BB#483:                               # %if.then.1725
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-64(%rbp), %rax
	movq	-280(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-280(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_485
# BB#484:                               # %if.then.1737
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-144(%rbp), %rax
	movq	-280(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_485:                              # %if.end.1743
                                        #   in Loop: Header=BB9_474 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_487
# BB#486:                               # %if.then.1745
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-120(%rbp), %rax
	movq	-280(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_487:                              # %if.end.1751
                                        #   in Loop: Header=BB9_474 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_489
# BB#488:                               # %if.then.1753
                                        #   in Loop: Header=BB9_474 Depth=2
	movq	-112(%rbp), %rax
	movq	-280(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_489:                              # %if.end.1759
                                        #   in Loop: Header=BB9_474 Depth=2
	jmp	.LBB9_490
.LBB9_490:                              # %if.end.1760
                                        #   in Loop: Header=BB9_474 Depth=2
	jmp	.LBB9_491
.LBB9_491:                              # %do.end.1761
                                        #   in Loop: Header=BB9_474 Depth=2
	jmp	.LBB9_474
.LBB9_492:                              # %while.end.1762
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$6, (%rax)
	movl	-148(%rbp), %edx
	movb	%dl, %sil
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%sil, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, (%rax)
# BB#493:                               # %do.end.1767
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_494
.LBB9_494:                              # %if.end.1768
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	$0, -112(%rbp)
	jmp	.LBB9_973
.LBB9_495:                              # %sw.bb.1771
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB9_497
# BB#496:                               # %if.then.1774
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_497:                              # %if.end.1775
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB9_501
# BB#498:                               # %if.then.1779
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB9_500
# BB#499:                               # %if.then.1782
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_500:                              # %if.else.1783
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$16, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_501:                              # %if.end.1785
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_502
.LBB9_502:                              # %handle_close
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB9_525
# BB#503:                               # %if.then.1787
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_504
.LBB9_504:                              # %do.body.1788
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_505
.LBB9_505:                              # %while.cond.1789
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_523
# BB#506:                               # %while.body.1798
                                        #   in Loop: Header=BB9_505 Depth=2
	jmp	.LBB9_507
.LBB9_507:                              # %do.body.1799
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_509
# BB#508:                               # %if.then.1805
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_509:                              # %if.end.1806
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_511
# BB#510:                               # %if.then.1812
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_511:                              # %if.end.1814
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_513
# BB#512:                               # %if.then.1822
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_513:                              # %if.end.1823
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-288(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_521
# BB#514:                               # %if.then.1827
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-64(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_516
# BB#515:                               # %if.then.1839
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-144(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_516:                              # %if.end.1845
                                        #   in Loop: Header=BB9_505 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_518
# BB#517:                               # %if.then.1847
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-120(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_518:                              # %if.end.1853
                                        #   in Loop: Header=BB9_505 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_520
# BB#519:                               # %if.then.1855
                                        #   in Loop: Header=BB9_505 Depth=2
	movq	-112(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_520:                              # %if.end.1861
                                        #   in Loop: Header=BB9_505 Depth=2
	jmp	.LBB9_521
.LBB9_521:                              # %if.end.1862
                                        #   in Loop: Header=BB9_505 Depth=2
	jmp	.LBB9_522
.LBB9_522:                              # %do.end.1863
                                        #   in Loop: Header=BB9_505 Depth=2
	jmp	.LBB9_505
.LBB9_523:                              # %while.end.1864
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$20, (%rax)
# BB#524:                               # %do.end.1866
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$14, %edi
	movq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB9_525:                              # %if.end.1873
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB9_529
# BB#526:                               # %if.then.1877
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB9_528
# BB#527:                               # %if.then.1880
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_528:                              # %if.else.1881
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$16, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_529:                              # %if.end.1883
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	addq	(%rdx), %rcx
	movq	%rcx, -128(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	imulq	$40, %rcx, %rcx
	addq	-80(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB9_531
# BB#530:                               # %cond.true.1899
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	addq	8(%rdx), %rax
	addq	$-1, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB9_532
.LBB9_531:                              # %cond.false.1908
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB9_532
.LBB9_532:                              # %cond.end.1909
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-840(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	addq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$40, %rax, %rax
	addq	-80(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -292(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$255, -292(%rbp)
	ja	.LBB9_555
# BB#533:                               # %if.then.1925
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$40, %rdx, %rdx
	addq	-80(%rbp), %rdx
	addq	16(%rdx), %rax
	movq	%rax, -304(%rbp)
	movl	-148(%rbp), %ecx
	subl	-292(%rbp), %ecx
	movb	%cl, %sil
	movq	-304(%rbp), %rax
	movb	%sil, (%rax)
# BB#534:                               # %do.body.1935
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_535
.LBB9_535:                              # %while.cond.1936
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_553
# BB#536:                               # %while.body.1945
                                        #   in Loop: Header=BB9_535 Depth=2
	jmp	.LBB9_537
.LBB9_537:                              # %do.body.1946
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_539
# BB#538:                               # %if.then.1952
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_539:                              # %if.end.1953
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_541
# BB#540:                               # %if.then.1959
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_541:                              # %if.end.1961
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_543
# BB#542:                               # %if.then.1969
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_543:                              # %if.end.1970
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-312(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_551
# BB#544:                               # %if.then.1974
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-64(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_546
# BB#545:                               # %if.then.1986
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-144(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_546:                              # %if.end.1992
                                        #   in Loop: Header=BB9_535 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_548
# BB#547:                               # %if.then.1994
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-120(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_548:                              # %if.end.2000
                                        #   in Loop: Header=BB9_535 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_550
# BB#549:                               # %if.then.2002
                                        #   in Loop: Header=BB9_535 Depth=2
	movq	-112(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_550:                              # %if.end.2008
                                        #   in Loop: Header=BB9_535 Depth=2
	jmp	.LBB9_551
.LBB9_551:                              # %if.end.2009
                                        #   in Loop: Header=BB9_535 Depth=2
	jmp	.LBB9_552
.LBB9_552:                              # %do.end.2010
                                        #   in Loop: Header=BB9_535 Depth=2
	jmp	.LBB9_535
.LBB9_553:                              # %while.end.2011
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$7, (%rax)
	movl	-292(%rbp), %edx
	movb	%dl, %sil
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%sil, (%rax)
	movl	-148(%rbp), %edx
	subl	-292(%rbp), %edx
	movb	%dl, %sil
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%sil, (%rax)
# BB#554:                               # %do.end.2018
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_555
.LBB9_555:                              # %if.end.2019
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_556:                              # %sw.bb.2020
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	jne	.LBB9_558
# BB#557:                               # %lor.lhs.false.2023
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB9_559
.LBB9_558:                              # %if.then.2026
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_559:                              # %if.end.2027
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_560
.LBB9_560:                              # %handle_alt
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB9_562
# BB#561:                               # %if.then.2030
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_562:                              # %if.end.2031
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_563
.LBB9_563:                              # %while.cond.2032
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_581
# BB#564:                               # %while.body.2041
                                        #   in Loop: Header=BB9_563 Depth=2
	jmp	.LBB9_565
.LBB9_565:                              # %do.body.2042
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_567
# BB#566:                               # %if.then.2048
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_567:                              # %if.end.2049
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_569
# BB#568:                               # %if.then.2055
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_569:                              # %if.end.2057
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_571
# BB#570:                               # %if.then.2065
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_571:                              # %if.end.2066
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-320(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_579
# BB#572:                               # %if.then.2070
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-64(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_574
# BB#573:                               # %if.then.2082
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-144(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_574:                              # %if.end.2088
                                        #   in Loop: Header=BB9_563 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_576
# BB#575:                               # %if.then.2090
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-120(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_576:                              # %if.end.2096
                                        #   in Loop: Header=BB9_563 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_578
# BB#577:                               # %if.then.2098
                                        #   in Loop: Header=BB9_563 Depth=2
	movq	-112(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_578:                              # %if.end.2104
                                        #   in Loop: Header=BB9_563 Depth=2
	jmp	.LBB9_579
.LBB9_579:                              # %if.end.2105
                                        #   in Loop: Header=BB9_563 Depth=2
	jmp	.LBB9_580
.LBB9_580:                              # %do.end.2106
                                        #   in Loop: Header=BB9_563 Depth=2
	jmp	.LBB9_563
.LBB9_581:                              # %while.end.2107
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$15, %edi
	movq	-128(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movq	-128(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	callq	insert_op1
	movq	$0, -112(%rbp)
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_583
# BB#582:                               # %if.then.2116
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$14, %edi
	movq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB9_583:                              # %if.end.2122
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB9_584:                              # %while.cond.2123
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_602
# BB#585:                               # %while.body.2132
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_586
.LBB9_586:                              # %do.body.2133
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_588
# BB#587:                               # %if.then.2139
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_588:                              # %if.end.2140
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_590
# BB#589:                               # %if.then.2146
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_590:                              # %if.end.2148
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_592
# BB#591:                               # %if.then.2156
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_592:                              # %if.end.2157
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-328(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_600
# BB#593:                               # %if.then.2161
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-64(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_595
# BB#594:                               # %if.then.2173
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-144(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_595:                              # %if.end.2179
                                        #   in Loop: Header=BB9_584 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_597
# BB#596:                               # %if.then.2181
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-120(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_597:                              # %if.end.2187
                                        #   in Loop: Header=BB9_584 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_599
# BB#598:                               # %if.then.2189
                                        #   in Loop: Header=BB9_584 Depth=2
	movq	-112(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_599:                              # %if.end.2195
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_600
.LBB9_600:                              # %if.end.2196
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_601
.LBB9_601:                              # %do.end.2197
                                        #   in Loop: Header=BB9_584 Depth=2
	jmp	.LBB9_584
.LBB9_602:                              # %while.end.2198
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB9_973
.LBB9_603:                              # %sw.bb.2200
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB9_608
# BB#604:                               # %lor.lhs.false.2203
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB9_606
# BB#605:                               # %land.lhs.true.2206
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB9_608
.LBB9_606:                              # %lor.lhs.false.2209
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	addq	$-2, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB9_609
# BB#607:                               # %land.lhs.true.2213
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_609
.LBB9_608:                              # %if.then.2216
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_609:                              # %if.end.2217
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_610
.LBB9_610:                              # %handle_interval
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$-1, -332(%rbp)
	movl	$-1, -336(%rbp)
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_614
# BB#611:                               # %if.then.2221
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB9_613
# BB#612:                               # %if.then.2224
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_733
.LBB9_613:                              # %if.else.2225
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_614:                              # %if.end.2227
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB9_635
# BB#615:                               # %if.then.2230
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_616
.LBB9_616:                              # %do.body.2231
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_618
# BB#617:                               # %if.then.2234
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_618:                              # %if.end.2235
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_620
# BB#619:                               # %if.then.2238
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_620:                              # %if.end.2241
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_621
.LBB9_621:                              # %do.end.2242
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_622
.LBB9_622:                              # %while.cond.2243
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-41(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-848(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB9_634
# BB#623:                               # %while.body.2251
                                        #   in Loop: Header=BB9_622 Depth=2
	cmpl	$0, -332(%rbp)
	jge	.LBB9_625
# BB#624:                               # %if.then.2254
                                        #   in Loop: Header=BB9_622 Depth=2
	movl	$0, -332(%rbp)
.LBB9_625:                              # %if.end.2255
                                        #   in Loop: Header=BB9_622 Depth=2
	imull	$10, -332(%rbp), %eax
	movzbl	-41(%rbp), %ecx
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -332(%rbp)
	movq	-88(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	jne	.LBB9_627
# BB#626:                               # %if.then.2262
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_634
.LBB9_627:                              # %if.end.2263
                                        #   in Loop: Header=BB9_622 Depth=2
	jmp	.LBB9_628
.LBB9_628:                              # %do.body.2264
                                        #   in Loop: Header=BB9_622 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_630
# BB#629:                               # %if.then.2267
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_630:                              # %if.end.2268
                                        #   in Loop: Header=BB9_622 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_632
# BB#631:                               # %if.then.2271
                                        #   in Loop: Header=BB9_622 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_632:                              # %if.end.2274
                                        #   in Loop: Header=BB9_622 Depth=2
	jmp	.LBB9_633
.LBB9_633:                              # %do.end.2275
                                        #   in Loop: Header=BB9_622 Depth=2
	jmp	.LBB9_622
.LBB9_634:                              # %while.end.2276
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_635
.LBB9_635:                              # %if.end.2277
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	cmpl	$44, %eax
	jne	.LBB9_660
# BB#636:                               # %if.then.2281
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB9_657
# BB#637:                               # %if.then.2284
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_638
.LBB9_638:                              # %do.body.2285
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_640
# BB#639:                               # %if.then.2288
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_640:                              # %if.end.2289
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_642
# BB#641:                               # %if.then.2292
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_642:                              # %if.end.2295
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_643
.LBB9_643:                              # %do.end.2296
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_644
.LBB9_644:                              # %while.cond.2297
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-41(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-856(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB9_656
# BB#645:                               # %while.body.2305
                                        #   in Loop: Header=BB9_644 Depth=2
	cmpl	$0, -336(%rbp)
	jge	.LBB9_647
# BB#646:                               # %if.then.2308
                                        #   in Loop: Header=BB9_644 Depth=2
	movl	$0, -336(%rbp)
.LBB9_647:                              # %if.end.2309
                                        #   in Loop: Header=BB9_644 Depth=2
	imull	$10, -336(%rbp), %eax
	movzbl	-41(%rbp), %ecx
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -336(%rbp)
	movq	-88(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	jne	.LBB9_649
# BB#648:                               # %if.then.2316
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_656
.LBB9_649:                              # %if.end.2317
                                        #   in Loop: Header=BB9_644 Depth=2
	jmp	.LBB9_650
.LBB9_650:                              # %do.body.2318
                                        #   in Loop: Header=BB9_644 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_652
# BB#651:                               # %if.then.2321
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_652:                              # %if.end.2322
                                        #   in Loop: Header=BB9_644 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_654
# BB#653:                               # %if.then.2325
                                        #   in Loop: Header=BB9_644 Depth=2
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_654:                              # %if.end.2328
                                        #   in Loop: Header=BB9_644 Depth=2
	jmp	.LBB9_655
.LBB9_655:                              # %do.end.2329
                                        #   in Loop: Header=BB9_644 Depth=2
	jmp	.LBB9_644
.LBB9_656:                              # %while.end.2330
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_657
.LBB9_657:                              # %if.end.2331
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, -336(%rbp)
	jge	.LBB9_659
# BB#658:                               # %if.then.2334
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$32767, -336(%rbp)      # imm = 0x7FFF
.LBB9_659:                              # %if.end.2335
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_661
.LBB9_660:                              # %if.else.2336
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
.LBB9_661:                              # %if.end.2337
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, -332(%rbp)
	jl	.LBB9_664
# BB#662:                               # %lor.lhs.false.2340
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$32767, -336(%rbp)      # imm = 0x7FFF
	jg	.LBB9_664
# BB#663:                               # %lor.lhs.false.2343
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-332(%rbp), %eax
	cmpl	-336(%rbp), %eax
	jle	.LBB9_667
.LBB9_664:                              # %if.then.2346
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB9_666
# BB#665:                               # %if.then.2349
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_733
.LBB9_666:                              # %if.else.2350
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_667:                              # %if.end.2352
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB9_677
# BB#668:                               # %if.then.2355
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	cmpl	$92, %eax
	je	.LBB9_670
# BB#669:                               # %if.then.2359
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_670:                              # %if.end.2361
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_671
.LBB9_671:                              # %do.body.2362
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_673
# BB#672:                               # %if.then.2365
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_673:                              # %if.end.2366
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_675
# BB#674:                               # %if.then.2369
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_675:                              # %if.end.2372
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_676
.LBB9_676:                              # %do.end.2373
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_677
.LBB9_677:                              # %if.end.2374
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	cmpl	$125, %eax
	je	.LBB9_681
# BB#678:                               # %if.then.2378
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB9_680
# BB#679:                               # %if.then.2381
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_733
.LBB9_680:                              # %if.else.2382
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_681:                              # %if.end.2384
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB9_689
# BB#682:                               # %if.then.2386
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB9_684
# BB#683:                               # %if.then.2389
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$13, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_684:                              # %if.else.2391
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	je	.LBB9_686
# BB#685:                               # %if.then.2394
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB9_687
.LBB9_686:                              # %if.else.2395
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_733
.LBB9_687:                              # %if.end.2396
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_688
.LBB9_688:                              # %if.end.2397
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_689
.LBB9_689:                              # %if.end.2398
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, -336(%rbp)
	jne	.LBB9_710
# BB#690:                               # %if.then.2401
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_691
.LBB9_691:                              # %while.cond.2402
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_709
# BB#692:                               # %while.body.2411
                                        #   in Loop: Header=BB9_691 Depth=2
	jmp	.LBB9_693
.LBB9_693:                              # %do.body.2412
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_695
# BB#694:                               # %if.then.2418
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_695:                              # %if.end.2419
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_697
# BB#696:                               # %if.then.2425
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_697:                              # %if.end.2427
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_699
# BB#698:                               # %if.then.2435
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_699:                              # %if.end.2436
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-344(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_707
# BB#700:                               # %if.then.2440
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-64(%rbp), %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_702
# BB#701:                               # %if.then.2452
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-144(%rbp), %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_702:                              # %if.end.2458
                                        #   in Loop: Header=BB9_691 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_704
# BB#703:                               # %if.then.2460
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-120(%rbp), %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_704:                              # %if.end.2466
                                        #   in Loop: Header=BB9_691 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_706
# BB#705:                               # %if.then.2468
                                        #   in Loop: Header=BB9_691 Depth=2
	movq	-112(%rbp), %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_706:                              # %if.end.2474
                                        #   in Loop: Header=BB9_691 Depth=2
	jmp	.LBB9_707
.LBB9_707:                              # %if.end.2475
                                        #   in Loop: Header=BB9_691 Depth=2
	jmp	.LBB9_708
.LBB9_708:                              # %do.end.2476
                                        #   in Loop: Header=BB9_691 Depth=2
	jmp	.LBB9_691
.LBB9_709:                              # %while.end.2477
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$13, %edi
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	callq	insert_op1
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_732
.LBB9_710:                              # %if.else.2485
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$1, -336(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	imull	$10, %ecx, %ecx
	addl	$10, %ecx
	movl	%ecx, -348(%rbp)
.LBB9_711:                              # %while.cond.2490
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	-348(%rbp), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_729
# BB#712:                               # %while.body.2500
                                        #   in Loop: Header=BB9_711 Depth=2
	jmp	.LBB9_713
.LBB9_713:                              # %do.body.2501
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_715
# BB#714:                               # %if.then.2507
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_715:                              # %if.end.2508
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_717
# BB#716:                               # %if.then.2514
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_717:                              # %if.end.2516
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_719
# BB#718:                               # %if.then.2524
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_719:                              # %if.end.2525
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-360(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_727
# BB#720:                               # %if.then.2529
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-64(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_722
# BB#721:                               # %if.then.2541
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-144(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_722:                              # %if.end.2547
                                        #   in Loop: Header=BB9_711 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_724
# BB#723:                               # %if.then.2549
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-120(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_724:                              # %if.end.2555
                                        #   in Loop: Header=BB9_711 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_726
# BB#725:                               # %if.then.2557
                                        #   in Loop: Header=BB9_711 Depth=2
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_726:                              # %if.end.2563
                                        #   in Loop: Header=BB9_711 Depth=2
	jmp	.LBB9_727
.LBB9_727:                              # %if.end.2564
                                        #   in Loop: Header=BB9_711 Depth=2
	jmp	.LBB9_728
.LBB9_728:                              # %do.end.2565
                                        #   in Loop: Header=BB9_711 Depth=2
	jmp	.LBB9_711
.LBB9_729:                              # %while.end.2566
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$21, %edi
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$5, %rax
	cmpl	$1, -336(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	imull	$5, %edx, %edx
	movslq	%edx, %r8
	addq	%r8, %rax
	movq	-120(%rbp), %r8
	subq	%r8, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movl	-332(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	insert_op2
	movl	$23, %edi
	movl	$5, %edx
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rsi
	movl	-332(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	insert_op2
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -64(%rbp)
	cmpl	$1, -336(%rbp)
	jle	.LBB9_731
# BB#730:                               # %if.then.2582
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	$22, %edi
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	$5, %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movl	-336(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, %ecx
	callq	store_op2
	movl	$23, %edi
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %r9
	subq	%r9, %rax
	movl	%eax, %ecx
	movl	-336(%rbp), %edx
	subl	$1, %edx
	movq	-64(%rbp), %r8
	movl	%edx, -860(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-860(%rbp), %ecx        # 4-byte Reload
	callq	insert_op2
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -64(%rbp)
.LBB9_731:                              # %if.end.2597
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_732
.LBB9_732:                              # %if.end.2598
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	$0, -112(%rbp)
	movq	$0, -136(%rbp)
	jmp	.LBB9_973
.LBB9_733:                              # %unfetch_interval
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -136(%rbp)
# BB#734:                               # %do.body.2599
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_736
# BB#735:                               # %if.then.2602
	movl	$14, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_736:                              # %if.end.2603
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_738
# BB#737:                               # %if.then.2606
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -41(%rbp)
.LBB9_738:                              # %if.end.2609
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_739
.LBB9_739:                              # %do.end.2610
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB9_744
# BB#740:                               # %if.then.2613
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB9_743
# BB#741:                               # %land.lhs.true.2616
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB9_743
# BB#742:                               # %if.then.2621
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_743:                              # %if.end.2622
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_744
.LBB9_744:                              # %if.end.2623
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_745:                              # %sw.bb.2624
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_747
# BB#746:                               # %if.then.2627
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_747:                              # %if.end.2628
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#748:                               # %do.body.2629
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_749
.LBB9_749:                              # %while.cond.2630
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_767
# BB#750:                               # %while.body.2639
                                        #   in Loop: Header=BB9_749 Depth=2
	jmp	.LBB9_751
.LBB9_751:                              # %do.body.2640
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_753
# BB#752:                               # %if.then.2646
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_753:                              # %if.end.2647
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_755
# BB#754:                               # %if.then.2653
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_755:                              # %if.end.2655
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_757
# BB#756:                               # %if.then.2663
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_757:                              # %if.end.2664
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-368(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_765
# BB#758:                               # %if.then.2668
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-64(%rbp), %rax
	movq	-368(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-368(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_760
# BB#759:                               # %if.then.2680
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-144(%rbp), %rax
	movq	-368(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_760:                              # %if.end.2686
                                        #   in Loop: Header=BB9_749 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_762
# BB#761:                               # %if.then.2688
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-120(%rbp), %rax
	movq	-368(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_762:                              # %if.end.2694
                                        #   in Loop: Header=BB9_749 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_764
# BB#763:                               # %if.then.2696
                                        #   in Loop: Header=BB9_749 Depth=2
	movq	-112(%rbp), %rax
	movq	-368(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_764:                              # %if.end.2702
                                        #   in Loop: Header=BB9_749 Depth=2
	jmp	.LBB9_765
.LBB9_765:                              # %if.end.2703
                                        #   in Loop: Header=BB9_749 Depth=2
	jmp	.LBB9_766
.LBB9_766:                              # %do.end.2704
                                        #   in Loop: Header=BB9_749 Depth=2
	jmp	.LBB9_749
.LBB9_767:                              # %while.end.2705
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$24, (%rax)
# BB#768:                               # %do.end.2707
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_769:                              # %sw.bb.2708
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_771
# BB#770:                               # %if.then.2711
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_771:                              # %if.end.2712
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#772:                               # %do.body.2713
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_773
.LBB9_773:                              # %while.cond.2714
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_791
# BB#774:                               # %while.body.2723
                                        #   in Loop: Header=BB9_773 Depth=2
	jmp	.LBB9_775
.LBB9_775:                              # %do.body.2724
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_777
# BB#776:                               # %if.then.2730
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_777:                              # %if.end.2731
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_779
# BB#778:                               # %if.then.2737
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_779:                              # %if.end.2739
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_781
# BB#780:                               # %if.then.2747
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_781:                              # %if.end.2748
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-376(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_789
# BB#782:                               # %if.then.2752
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-64(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_784
# BB#783:                               # %if.then.2764
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-144(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_784:                              # %if.end.2770
                                        #   in Loop: Header=BB9_773 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_786
# BB#785:                               # %if.then.2772
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-120(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_786:                              # %if.end.2778
                                        #   in Loop: Header=BB9_773 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_788
# BB#787:                               # %if.then.2780
                                        #   in Loop: Header=BB9_773 Depth=2
	movq	-112(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_788:                              # %if.end.2786
                                        #   in Loop: Header=BB9_773 Depth=2
	jmp	.LBB9_789
.LBB9_789:                              # %if.end.2787
                                        #   in Loop: Header=BB9_773 Depth=2
	jmp	.LBB9_790
.LBB9_790:                              # %do.end.2788
                                        #   in Loop: Header=BB9_773 Depth=2
	jmp	.LBB9_773
.LBB9_791:                              # %while.end.2789
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$25, (%rax)
# BB#792:                               # %do.end.2791
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_793:                              # %sw.bb.2792
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_795
# BB#794:                               # %if.then.2795
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_795:                              # %if.end.2796
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_796
.LBB9_796:                              # %do.body.2797
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_797
.LBB9_797:                              # %while.cond.2798
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_815
# BB#798:                               # %while.body.2807
                                        #   in Loop: Header=BB9_797 Depth=2
	jmp	.LBB9_799
.LBB9_799:                              # %do.body.2808
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_801
# BB#800:                               # %if.then.2814
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_801:                              # %if.end.2815
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_803
# BB#802:                               # %if.then.2821
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_803:                              # %if.end.2823
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_805
# BB#804:                               # %if.then.2831
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_805:                              # %if.end.2832
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-384(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_813
# BB#806:                               # %if.then.2836
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-64(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_808
# BB#807:                               # %if.then.2848
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-144(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_808:                              # %if.end.2854
                                        #   in Loop: Header=BB9_797 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_810
# BB#809:                               # %if.then.2856
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-120(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_810:                              # %if.end.2862
                                        #   in Loop: Header=BB9_797 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_812
# BB#811:                               # %if.then.2864
                                        #   in Loop: Header=BB9_797 Depth=2
	movq	-112(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_812:                              # %if.end.2870
                                        #   in Loop: Header=BB9_797 Depth=2
	jmp	.LBB9_813
.LBB9_813:                              # %if.end.2871
                                        #   in Loop: Header=BB9_797 Depth=2
	jmp	.LBB9_814
.LBB9_814:                              # %do.end.2872
                                        #   in Loop: Header=BB9_797 Depth=2
	jmp	.LBB9_797
.LBB9_815:                              # %while.end.2873
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$26, (%rax)
# BB#816:                               # %do.end.2875
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_817:                              # %sw.bb.2876
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_819
# BB#818:                               # %if.then.2879
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_819:                              # %if.end.2880
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_820
.LBB9_820:                              # %do.body.2881
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_821
.LBB9_821:                              # %while.cond.2882
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_839
# BB#822:                               # %while.body.2891
                                        #   in Loop: Header=BB9_821 Depth=2
	jmp	.LBB9_823
.LBB9_823:                              # %do.body.2892
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_825
# BB#824:                               # %if.then.2898
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_825:                              # %if.end.2899
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_827
# BB#826:                               # %if.then.2905
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_827:                              # %if.end.2907
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_829
# BB#828:                               # %if.then.2915
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_829:                              # %if.end.2916
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-392(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_837
# BB#830:                               # %if.then.2920
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-64(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_832
# BB#831:                               # %if.then.2932
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-144(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_832:                              # %if.end.2938
                                        #   in Loop: Header=BB9_821 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_834
# BB#833:                               # %if.then.2940
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-120(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_834:                              # %if.end.2946
                                        #   in Loop: Header=BB9_821 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_836
# BB#835:                               # %if.then.2948
                                        #   in Loop: Header=BB9_821 Depth=2
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_836:                              # %if.end.2954
                                        #   in Loop: Header=BB9_821 Depth=2
	jmp	.LBB9_837
.LBB9_837:                              # %if.end.2955
                                        #   in Loop: Header=BB9_821 Depth=2
	jmp	.LBB9_838
.LBB9_838:                              # %do.end.2956
                                        #   in Loop: Header=BB9_821 Depth=2
	jmp	.LBB9_821
.LBB9_839:                              # %while.end.2957
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$27, (%rax)
# BB#840:                               # %do.end.2959
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_841:                              # %sw.bb.2960
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_843
# BB#842:                               # %if.then.2963
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_843:                              # %if.end.2964
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_844
.LBB9_844:                              # %do.body.2965
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_845
.LBB9_845:                              # %while.cond.2966
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_863
# BB#846:                               # %while.body.2975
                                        #   in Loop: Header=BB9_845 Depth=2
	jmp	.LBB9_847
.LBB9_847:                              # %do.body.2976
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_849
# BB#848:                               # %if.then.2982
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_849:                              # %if.end.2983
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_851
# BB#850:                               # %if.then.2989
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_851:                              # %if.end.2991
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_853
# BB#852:                               # %if.then.2999
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_853:                              # %if.end.3000
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-400(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_861
# BB#854:                               # %if.then.3004
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-64(%rbp), %rax
	movq	-400(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-400(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_856
# BB#855:                               # %if.then.3016
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-144(%rbp), %rax
	movq	-400(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_856:                              # %if.end.3022
                                        #   in Loop: Header=BB9_845 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_858
# BB#857:                               # %if.then.3024
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-120(%rbp), %rax
	movq	-400(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_858:                              # %if.end.3030
                                        #   in Loop: Header=BB9_845 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_860
# BB#859:                               # %if.then.3032
                                        #   in Loop: Header=BB9_845 Depth=2
	movq	-112(%rbp), %rax
	movq	-400(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_860:                              # %if.end.3038
                                        #   in Loop: Header=BB9_845 Depth=2
	jmp	.LBB9_861
.LBB9_861:                              # %if.end.3039
                                        #   in Loop: Header=BB9_845 Depth=2
	jmp	.LBB9_862
.LBB9_862:                              # %do.end.3040
                                        #   in Loop: Header=BB9_845 Depth=2
	jmp	.LBB9_845
.LBB9_863:                              # %while.end.3041
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$28, (%rax)
# BB#864:                               # %do.end.3043
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_865:                              # %sw.bb.3044
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_867
# BB#866:                               # %if.then.3047
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_867:                              # %if.end.3048
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_868
.LBB9_868:                              # %do.body.3049
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_869
.LBB9_869:                              # %while.cond.3050
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_887
# BB#870:                               # %while.body.3059
                                        #   in Loop: Header=BB9_869 Depth=2
	jmp	.LBB9_871
.LBB9_871:                              # %do.body.3060
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_873
# BB#872:                               # %if.then.3066
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_873:                              # %if.end.3067
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_875
# BB#874:                               # %if.then.3073
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_875:                              # %if.end.3075
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_877
# BB#876:                               # %if.then.3083
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_877:                              # %if.end.3084
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-408(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_885
# BB#878:                               # %if.then.3088
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-64(%rbp), %rax
	movq	-408(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-408(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_880
# BB#879:                               # %if.then.3100
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-144(%rbp), %rax
	movq	-408(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_880:                              # %if.end.3106
                                        #   in Loop: Header=BB9_869 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_882
# BB#881:                               # %if.then.3108
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-120(%rbp), %rax
	movq	-408(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_882:                              # %if.end.3114
                                        #   in Loop: Header=BB9_869 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_884
# BB#883:                               # %if.then.3116
                                        #   in Loop: Header=BB9_869 Depth=2
	movq	-112(%rbp), %rax
	movq	-408(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_884:                              # %if.end.3122
                                        #   in Loop: Header=BB9_869 Depth=2
	jmp	.LBB9_885
.LBB9_885:                              # %if.end.3123
                                        #   in Loop: Header=BB9_869 Depth=2
	jmp	.LBB9_886
.LBB9_886:                              # %do.end.3124
                                        #   in Loop: Header=BB9_869 Depth=2
	jmp	.LBB9_869
.LBB9_887:                              # %while.end.3125
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$29, (%rax)
# BB#888:                               # %do.end.3127
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_889:                              # %sw.bb.3128
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_891
# BB#890:                               # %if.then.3131
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_891:                              # %if.end.3132
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_892
.LBB9_892:                              # %do.body.3133
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_893
.LBB9_893:                              # %while.cond.3134
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_911
# BB#894:                               # %while.body.3143
                                        #   in Loop: Header=BB9_893 Depth=2
	jmp	.LBB9_895
.LBB9_895:                              # %do.body.3144
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_897
# BB#896:                               # %if.then.3150
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_897:                              # %if.end.3151
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_899
# BB#898:                               # %if.then.3157
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_899:                              # %if.end.3159
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_901
# BB#900:                               # %if.then.3167
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_901:                              # %if.end.3168
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-416(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_909
# BB#902:                               # %if.then.3172
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-64(%rbp), %rax
	movq	-416(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-416(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_904
# BB#903:                               # %if.then.3184
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-144(%rbp), %rax
	movq	-416(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_904:                              # %if.end.3190
                                        #   in Loop: Header=BB9_893 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_906
# BB#905:                               # %if.then.3192
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-120(%rbp), %rax
	movq	-416(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_906:                              # %if.end.3198
                                        #   in Loop: Header=BB9_893 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_908
# BB#907:                               # %if.then.3200
                                        #   in Loop: Header=BB9_893 Depth=2
	movq	-112(%rbp), %rax
	movq	-416(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_908:                              # %if.end.3206
                                        #   in Loop: Header=BB9_893 Depth=2
	jmp	.LBB9_909
.LBB9_909:                              # %if.end.3207
                                        #   in Loop: Header=BB9_893 Depth=2
	jmp	.LBB9_910
.LBB9_910:                              # %do.end.3208
                                        #   in Loop: Header=BB9_893 Depth=2
	jmp	.LBB9_893
.LBB9_911:                              # %while.end.3209
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$11, (%rax)
# BB#912:                               # %do.end.3211
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_913:                              # %sw.bb.3212
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB9_915
# BB#914:                               # %if.then.3215
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_915:                              # %if.end.3216
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_916
.LBB9_916:                              # %do.body.3217
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_917
.LBB9_917:                              # %while.cond.3218
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_935
# BB#918:                               # %while.body.3227
                                        #   in Loop: Header=BB9_917 Depth=2
	jmp	.LBB9_919
.LBB9_919:                              # %do.body.3228
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_921
# BB#920:                               # %if.then.3234
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_921:                              # %if.end.3235
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_923
# BB#922:                               # %if.then.3241
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_923:                              # %if.end.3243
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_925
# BB#924:                               # %if.then.3251
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_925:                              # %if.end.3252
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-424(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_933
# BB#926:                               # %if.then.3256
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-64(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_928
# BB#927:                               # %if.then.3268
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-144(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_928:                              # %if.end.3274
                                        #   in Loop: Header=BB9_917 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_930
# BB#929:                               # %if.then.3276
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-120(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_930:                              # %if.end.3282
                                        #   in Loop: Header=BB9_917 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_932
# BB#931:                               # %if.then.3284
                                        #   in Loop: Header=BB9_917 Depth=2
	movq	-112(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_932:                              # %if.end.3290
                                        #   in Loop: Header=BB9_917 Depth=2
	jmp	.LBB9_933
.LBB9_933:                              # %if.end.3291
                                        #   in Loop: Header=BB9_917 Depth=2
	jmp	.LBB9_934
.LBB9_934:                              # %do.end.3292
                                        #   in Loop: Header=BB9_917 Depth=2
	jmp	.LBB9_917
.LBB9_935:                              # %while.end.3293
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$12, (%rax)
# BB#936:                               # %do.end.3295
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_937:                              # %sw.bb.3296
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$16384, %rax            # imm = 0x4000
	cmpq	$0, %rax
	je	.LBB9_939
# BB#938:                               # %if.then.3299
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_939:                              # %if.end.3300
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movb	%cl, -42(%rbp)
	movzbl	-42(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jbe	.LBB9_941
# BB#940:                               # %if.then.3307
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$6, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_941:                              # %if.end.3309
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-42(%rbp), %edx
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	group_in_compile_stack
	cmpb	$0, %al
	je	.LBB9_943
# BB#942:                               # %if.then.3313
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_943:                              # %if.end.3314
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#944:                               # %do.body.3315
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_945
.LBB9_945:                              # %while.cond.3316
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_963
# BB#946:                               # %while.body.3325
                                        #   in Loop: Header=BB9_945 Depth=2
	jmp	.LBB9_947
.LBB9_947:                              # %do.body.3326
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_949
# BB#948:                               # %if.then.3332
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_949:                              # %if.end.3333
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_951
# BB#950:                               # %if.then.3339
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_951:                              # %if.end.3341
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_953
# BB#952:                               # %if.then.3349
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_953:                              # %if.end.3350
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-432(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_961
# BB#954:                               # %if.then.3354
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-64(%rbp), %rax
	movq	-432(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-432(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_956
# BB#955:                               # %if.then.3366
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-144(%rbp), %rax
	movq	-432(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_956:                              # %if.end.3372
                                        #   in Loop: Header=BB9_945 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_958
# BB#957:                               # %if.then.3374
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-120(%rbp), %rax
	movq	-432(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_958:                              # %if.end.3380
                                        #   in Loop: Header=BB9_945 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_960
# BB#959:                               # %if.then.3382
                                        #   in Loop: Header=BB9_945 Depth=2
	movq	-112(%rbp), %rax
	movq	-432(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_960:                              # %if.end.3388
                                        #   in Loop: Header=BB9_945 Depth=2
	jmp	.LBB9_961
.LBB9_961:                              # %if.end.3389
                                        #   in Loop: Header=BB9_945 Depth=2
	jmp	.LBB9_962
.LBB9_962:                              # %do.end.3390
                                        #   in Loop: Header=BB9_945 Depth=2
	jmp	.LBB9_945
.LBB9_963:                              # %while.end.3391
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$8, (%rax)
	movb	-42(%rbp), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
# BB#964:                               # %do.end.3394
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_973
.LBB9_965:                              # %sw.bb.3395
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB9_967
# BB#966:                               # %if.then.3398
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_76
.LBB9_967:                              # %if.else.3399
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_968:                              # %sw.default
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_969
.LBB9_969:                              # %normal_backslash
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB9_971
# BB#970:                               # %cond.true.3401
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
	jmp	.LBB9_972
.LBB9_971:                              # %cond.false.3405
                                        #   in Loop: Header=BB9_10 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
.LBB9_972:                              # %cond.end.3407
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	-864(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB9_975
.LBB9_973:                              # %sw.epilog
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1035
.LBB9_974:                              # %sw.default.3410
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_975
.LBB9_975:                              # %normal_char
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB9_991
# BB#976:                               # %lor.lhs.false.3412
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-112(%rbp), %rax
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_991
# BB#977:                               # %lor.lhs.false.3419
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB9_991
# BB#978:                               # %lor.lhs.false.3423
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB9_991
# BB#979:                               # %lor.lhs.false.3427
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB9_991
# BB#980:                               # %lor.lhs.false.3431
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB9_984
# BB#981:                               # %cond.true.3434
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB9_986
# BB#982:                               # %land.lhs.true.3438
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB9_991
# BB#983:                               # %lor.lhs.false.3443
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB9_991
	jmp	.LBB9_986
.LBB9_984:                              # %cond.false.3448
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB9_991
# BB#985:                               # %lor.lhs.false.3452
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB9_991
.LBB9_986:                              # %lor.lhs.false.3456
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB9_1013
# BB#987:                               # %land.lhs.true.3459
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB9_989
# BB#988:                               # %cond.true.3462
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB9_991
	jmp	.LBB9_1013
.LBB9_989:                              # %cond.false.3466
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB9_1013
# BB#990:                               # %land.lhs.true.3471
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB9_1013
.LBB9_991:                              # %if.then.3476
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#992:                               # %do.body.3477
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_993
.LBB9_993:                              # %while.cond.3478
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_1011
# BB#994:                               # %while.body.3487
                                        #   in Loop: Header=BB9_993 Depth=2
	jmp	.LBB9_995
.LBB9_995:                              # %do.body.3488
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_997
# BB#996:                               # %if.then.3494
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_997:                              # %if.end.3495
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_999
# BB#998:                               # %if.then.3501
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_999:                              # %if.end.3503
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_1001
# BB#1000:                              # %if.then.3511
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1001:                             # %if.end.3512
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-440(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_1009
# BB#1002:                              # %if.then.3516
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-64(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_1004
# BB#1003:                              # %if.then.3528
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-144(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_1004:                             # %if.end.3534
                                        #   in Loop: Header=BB9_993 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_1006
# BB#1005:                              # %if.then.3536
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-120(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_1006:                             # %if.end.3542
                                        #   in Loop: Header=BB9_993 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_1008
# BB#1007:                              # %if.then.3544
                                        #   in Loop: Header=BB9_993 Depth=2
	movq	-112(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_1008:                             # %if.end.3550
                                        #   in Loop: Header=BB9_993 Depth=2
	jmp	.LBB9_1009
.LBB9_1009:                             # %if.end.3551
                                        #   in Loop: Header=BB9_993 Depth=2
	jmp	.LBB9_1010
.LBB9_1010:                             # %do.end.3552
                                        #   in Loop: Header=BB9_993 Depth=2
	jmp	.LBB9_993
.LBB9_1011:                             # %while.end.3553
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$2, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, (%rax)
# BB#1012:                              # %do.end.3556
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB9_1013:                             # %if.end.3558
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1014
.LBB9_1014:                             # %do.body.3559
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_1015
.LBB9_1015:                             # %while.cond.3560
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_1033
# BB#1016:                              # %while.body.3569
                                        #   in Loop: Header=BB9_1015 Depth=2
	jmp	.LBB9_1017
.LBB9_1017:                             # %do.body.3570
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_1019
# BB#1018:                              # %if.then.3576
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1019:                             # %if.end.3577
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_1021
# BB#1020:                              # %if.then.3583
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_1021:                             # %if.end.3585
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_1023
# BB#1022:                              # %if.then.3593
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1023:                             # %if.end.3594
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-448(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_1031
# BB#1024:                              # %if.then.3598
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-64(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_1026
# BB#1025:                              # %if.then.3610
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-144(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_1026:                             # %if.end.3616
                                        #   in Loop: Header=BB9_1015 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB9_1028
# BB#1027:                              # %if.then.3618
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-120(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_1028:                             # %if.end.3624
                                        #   in Loop: Header=BB9_1015 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB9_1030
# BB#1029:                              # %if.then.3626
                                        #   in Loop: Header=BB9_1015 Depth=2
	movq	-112(%rbp), %rax
	movq	-448(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_1030:                             # %if.end.3632
                                        #   in Loop: Header=BB9_1015 Depth=2
	jmp	.LBB9_1031
.LBB9_1031:                             # %if.end.3633
                                        #   in Loop: Header=BB9_1015 Depth=2
	jmp	.LBB9_1032
.LBB9_1032:                             # %do.end.3634
                                        #   in Loop: Header=BB9_1015 Depth=2
	jmp	.LBB9_1015
.LBB9_1033:                             # %while.end.3635
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	-41(%rbp), %al
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
# BB#1034:                              # %do.end.3637
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-112(%rbp), %rax
	movb	(%rax), %cl
	addb	$1, %cl
	movb	%cl, (%rax)
.LBB9_1035:                             # %sw.epilog.3639
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_10
.LBB9_1036:                             # %while.end.3640
	cmpq	$0, -144(%rbp)
	je	.LBB9_1038
# BB#1037:                              # %if.then.3642
	movl	$14, %edi
	movq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB9_1038:                             # %if.end.3648
	cmpl	$0, -68(%rbp)
	je	.LBB9_1040
# BB#1039:                              # %if.then.3652
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$8, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1040:                             # %if.end.3654
	movq	-32(%rbp), %rax
	andq	$262144, %rax           # imm = 0x40000
	cmpq	$0, %rax
	je	.LBB9_1063
# BB#1041:                              # %if.then.3657
	jmp	.LBB9_1042
.LBB9_1042:                             # %do.body.3658
	jmp	.LBB9_1043
.LBB9_1043:                             # %while.cond.3659
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB9_1061
# BB#1044:                              # %while.body.3668
                                        #   in Loop: Header=BB9_1043 Depth=1
	jmp	.LBB9_1045
.LBB9_1045:                             # %do.body.3669
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jne	.LBB9_1047
# BB#1046:                              # %if.then.3675
	movl	$15, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1047:                             # %if.end.3676
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$65536, 8(%rax)         # imm = 0x10000
	jbe	.LBB9_1049
# BB#1048:                              # %if.then.3682
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-40(%rbp), %rax
	movq	$65536, 8(%rax)         # imm = 0x10000
.LBB9_1049:                             # %if.end.3684
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	realloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_1051
# BB#1050:                              # %if.then.3692
	movl	$12, -4(%rbp)
	jmp	.LBB9_1064
.LBB9_1051:                             # %if.end.3693
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-456(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB9_1059
# BB#1052:                              # %if.then.3697
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-64(%rbp), %rax
	movq	-456(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	-456(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB9_1054
# BB#1053:                              # %if.then.3709
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-144(%rbp), %rax
	movq	-456(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -144(%rbp)
.LBB9_1054:                             # %if.end.3715
                                        #   in Loop: Header=BB9_1043 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB9_1056
# BB#1055:                              # %if.then.3717
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-120(%rbp), %rax
	movq	-456(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -120(%rbp)
.LBB9_1056:                             # %if.end.3723
                                        #   in Loop: Header=BB9_1043 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB9_1058
# BB#1057:                              # %if.then.3725
                                        #   in Loop: Header=BB9_1043 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -112(%rbp)
.LBB9_1058:                             # %if.end.3731
                                        #   in Loop: Header=BB9_1043 Depth=1
	jmp	.LBB9_1059
.LBB9_1059:                             # %if.end.3732
                                        #   in Loop: Header=BB9_1043 Depth=1
	jmp	.LBB9_1060
.LBB9_1060:                             # %do.end.3733
                                        #   in Loop: Header=BB9_1043 Depth=1
	jmp	.LBB9_1043
.LBB9_1061:                             # %while.end.3734
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$1, (%rax)
# BB#1062:                              # %do.end.3736
	jmp	.LBB9_1063
.LBB9_1063:                             # %if.end.3737
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movl	$0, -4(%rbp)
.LBB9_1064:                             # %return
	movl	-4(%rbp), %eax
	addq	$864, %rsp              # imm = 0x360
	popq	%rbp
	retq
.Lfunc_end9:
	.size	regex_compile, .Lfunc_end9-regex_compile
	.cfi_endproc

	.globl	regcomp
	.align	16, 0x90
	.type	regcomp,@function
regcomp:                                # @regcomp
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
	subq	$80, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movl	$66246, %eax            # imm = 0x102C6
	movl	%eax, %r8d
	movl	$242396, %eax           # imm = 0x3B2DC
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	cmovneq	%r9, %r8
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 8(%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	%rcx, %rdi
	callq	malloc
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-28(%rbp), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB10_11
# BB#1:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	callq	malloc
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB10_3
# BB#2:                                 # %if.then.5
	movl	$12, -4(%rbp)
	jmp	.LBB10_23
.LBB10_3:                               # %if.end
	movl	$0, -44(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jae	.LBB10_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB10_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB10_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_8:                               # %cond.end
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_4
.LBB10_10:                              # %for.end
	jmp	.LBB10_12
.LBB10_11:                              # %if.else
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB10_12:                              # %if.end.19
	movl	-28(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB10_14
# BB#13:                                # %if.then.22
	movq	-40(%rbp), %rax
	andq	$-65, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	orq	$256, %rax              # imm = 0x100
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$127, %cl
	orb	$-128, %cl
	movb	%cl, 56(%rax)
	jmp	.LBB10_15
.LBB10_14:                              # %if.else.24
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$127, %cl
	movb	%cl, 56(%rax)
.LBB10_15:                              # %if.end.28
	movl	-28(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-16(%rbp), %rdx
	movb	%al, %cl
	movb	56(%rdx), %sil
	andb	$1, %cl
	shlb	$4, %cl
	andb	$-17, %sil
	orb	%cl, %sil
	movb	%sil, 56(%rdx)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	regex_compile
	movl	%eax, -32(%rbp)
	cmpl	$16, -32(%rbp)
	jne	.LBB10_17
# BB#16:                                # %if.then.39
	movl	$8, -32(%rbp)
.LBB10_17:                              # %if.end.40
	cmpl	$0, -32(%rbp)
	jne	.LBB10_22
# BB#18:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_22
# BB#19:                                # %if.then.45
	movq	-16(%rbp), %rdi
	callq	re_compile_fastmap
	cmpl	$-2, %eax
	jne	.LBB10_21
# BB#20:                                # %if.then.49
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB10_21:                              # %if.end.52
	jmp	.LBB10_22
.LBB10_22:                              # %if.end.53
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	regcomp, .Lfunc_end10-regcomp
	.cfi_endproc

	.globl	regexec
	.align	16, 0x90
	.type	regexec,@function
regexec:                                # @regexec
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movb	%al, %r9b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-24(%rbp), %rdi
	movb	%r9b, -149(%rbp)        # 1-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movl	%r8d, -140(%rbp)
	movq	-16(%rbp), %rax
	movb	56(%rax), %r9b
	shrb	$4, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	cmpl	$0, %r8d
	movb	-149(%rbp), %r9b        # 1-byte Reload
	movb	%r9b, -150(%rbp)        # 1-byte Spill
	jne	.LBB11_2
# BB#1:                                 # %land.rhs
	cmpq	$0, -32(%rbp)
	seta	%al
	movb	%al, -150(%rbp)         # 1-byte Spill
.LBB11_2:                               # %land.end
	movb	-150(%rbp), %al         # 1-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-136(%rbp), %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -141(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movl	-44(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	-80(%rbp), %r8b
	andb	$1, %al
	shlb	$5, %al
	andb	$-33, %r8b
	orb	%al, %r8b
	movb	%r8b, -80(%rbp)
	movl	-44(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	-80(%rbp), %r8b
	andb	$1, %al
	shlb	$6, %al
	andb	$-65, %r8b
	orb	%al, %r8b
	movb	%r8b, -80(%rbp)
	movb	-80(%rbp), %al
	andb	$-7, %al
	orb	$4, %al
	movb	%al, -80(%rbp)
	cmpb	$0, -141(%rbp)
	je	.LBB11_6
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_5
# BB#4:                                 # %if.then.29
	movl	$1, -4(%rbp)
	jmp	.LBB11_18
.LBB11_5:                               # %if.end
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB11_6:                               # %if.end.31
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-140(%rbp), %r8d
	movsbl	-141(%rbp), %eax
	cmpl	$0, %eax
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	je	.LBB11_8
# BB#7:                                 # %cond.true
	leaq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_9
.LBB11_9:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	-172(%rbp), %edx        # 4-byte Reload
	movl	-176(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	re_search
	movl	%eax, -48(%rbp)
	cmpb	$0, -141(%rbp)
	je	.LBB11_17
# BB#10:                                # %if.then.36
	cmpl	$0, -48(%rbp)
	jl	.LBB11_16
# BB#11:                                # %if.then.39
	movl	$0, -148(%rbp)
.LBB11_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB11_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-148(%rbp), %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,8)
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-148(%rbp), %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rdx
	movl	%eax, 4(%rdx,%rcx,8)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB11_12
.LBB11_15:                              # %for.end
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.51
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB11_17:                              # %if.end.53
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -48(%rbp)
	cmovgel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB11_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	regexec, .Lfunc_end11-regexec
	.cfi_endproc

	.globl	regerror
	.align	16, 0x90
	.type	regerror,@function
regerror:                               # @regerror
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$17, -4(%rbp)
	jl	.LBB12_3
.LBB12_2:                               # %if.then
	callq	abort
.LBB12_3:                               # %if.end
	movslq	-4(%rbp), %rax
	movq	re_error_msgid(,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_8
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB12_6
# BB#5:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	memcpy
.LBB12_7:                               # %if.end.8
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.9
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	regerror, .Lfunc_end12-regerror
	.cfi_endproc

	.globl	regfree
	.align	16, 0x90
	.type	regfree,@function
regfree:                                # @regfree
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
.LBB13_4:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-9, %cl
	movb	%cl, 56(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
.LBB13_6:                               # %if.end.11
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	regfree, .Lfunc_end13-regfree
	.cfi_endproc

	.align	16, 0x90
	.type	group_match_null_string_p,@function
group_match_null_string_p:              # @group_match_null_string_p
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$2, %rdx
	movq	%rdx, -48(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB14_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$7, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB14_27
	jmp	.LBB14_34
.LBB14_34:                              # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB14_28
	jmp	.LBB14_3
.LBB14_3:                               # %sw.bb
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_5:                               # %do.body.1
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %do.end.6
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB14_26
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_9
.LBB14_9:                               # %while.cond.9
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$14, %eax
	jne	.LBB14_21
# BB#10:                                # %while.body.13
                                        #   in Loop: Header=BB14_9 Depth=2
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	alt_match_null_string_p
	cmpb	$0, %al
	jne	.LBB14_12
# BB#11:                                # %if.then.16
	movb	$0, -1(%rbp)
	jmp	.LBB14_33
.LBB14_12:                              # %if.end
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %eax
	cmpl	$15, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.22
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_21
.LBB14_14:                              # %if.end.23
                                        #   in Loop: Header=BB14_9 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#15:                                # %do.body.25
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_16
.LBB14_16:                              # %do.body.26
                                        #   in Loop: Header=BB14_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#17:                                # %do.end.33
                                        #   in Loop: Header=BB14_9 Depth=2
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
# BB#18:                                # %do.end.35
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$14, %eax
	je	.LBB14_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$-3, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              # %if.end.44
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_9
.LBB14_21:                              # %while.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_22
.LBB14_22:                              # %do.body.45
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	-2(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rax
	movsbl	-1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#23:                                # %do.end.54
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	alt_match_null_string_p
	cmpb	$0, %al
	jne	.LBB14_25
# BB#24:                                # %if.then.59
	movb	$0, -1(%rbp)
	jmp	.LBB14_33
.LBB14_25:                              # %if.end.60
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
.LBB14_26:                              # %if.end.63
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_31
.LBB14_27:                              # %sw.bb.64
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$1, -1(%rbp)
	jmp	.LBB14_33
.LBB14_28:                              # %sw.default
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	common_op_match_null_string_p
	cmpb	$0, %al
	jne	.LBB14_30
# BB#29:                                # %if.then.68
	movb	$0, -1(%rbp)
	jmp	.LBB14_33
.LBB14_30:                              # %if.end.69
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_31
.LBB14_31:                              # %sw.epilog
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_1
.LBB14_32:                              # %while.end.70
	movb	$0, -1(%rbp)
.LBB14_33:                              # %return
	movsbl	-1(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	group_match_null_string_p, .Lfunc_end14-group_match_null_string_p
	.cfi_endproc

	.align	16, 0x90
	.type	bcmp_translate,@function
bcmp_translate:                         # @bcmp_translate
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB15_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %esi
	movl	%esi, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB15_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_6
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_1
.LBB15_5:                               # %while.end
	movl	$0, -4(%rbp)
.LBB15_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bcmp_translate, .Lfunc_end15-bcmp_translate
	.cfi_endproc

	.align	16, 0x90
	.type	alt_match_null_string_p,@function
alt_match_null_string_p:                # @alt_match_null_string_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB16_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$15, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jne	.LBB16_8
	jmp	.LBB16_3
.LBB16_3:                               # %sw.bb
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %do.body.1
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %do.end.5
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB16_11
.LBB16_8:                               # %sw.default
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	common_op_match_null_string_p
	cmpb	$0, %al
	jne	.LBB16_10
# BB#9:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB16_13
.LBB16_10:                              # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_11
.LBB16_11:                              # %sw.epilog
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_1
.LBB16_12:                              # %while.end
	movb	$1, -1(%rbp)
.LBB16_13:                              # %return
	movsbl	-1(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	alt_match_null_string_p, .Lfunc_end16-alt_match_null_string_p
	.cfi_endproc

	.align	16, 0x90
	.type	common_op_match_null_string_p,@function
common_op_match_null_string_p:          # @common_op_match_null_string_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$29, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	ja	.LBB17_31
# BB#34:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	jmp	.LBB17_32
.LBB17_2:                               # %sw.bb.1
	leaq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	group_match_null_string_p
	movb	%al, -37(%rbp)
	movslq	-44(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rdx,8), %al
	andb	$3, %al
	movzbl	%al, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movsbl	-37(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	%al, %sil
	movb	(%rdx,%rcx,8), %dil
	andb	$3, %sil
	andb	$-4, %dil
	orb	%sil, %dil
	movb	%dil, (%rdx,%rcx,8)
.LBB17_4:                               # %if.end
	cmpb	$0, -37(%rbp)
	jne	.LBB17_6
# BB#5:                                 # %if.then.10
	movb	$0, -1(%rbp)
	jmp	.LBB17_33
.LBB17_6:                               # %if.end.11
	jmp	.LBB17_32
.LBB17_7:                               # %sw.bb.12
	jmp	.LBB17_8
.LBB17_8:                               # %do.body
	jmp	.LBB17_9
.LBB17_9:                               # %do.body.13
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#10:                                # %do.end
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#11:                                # %do.end.17
	cmpl	$0, -36(%rbp)
	jl	.LBB17_13
# BB#12:                                # %if.then.20
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB17_14
.LBB17_13:                              # %if.else
	movb	$0, -1(%rbp)
	jmp	.LBB17_33
.LBB17_14:                              # %if.end.22
	jmp	.LBB17_32
.LBB17_15:                              # %sw.bb.23
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#16:                                # %do.body.25
	jmp	.LBB17_17
.LBB17_17:                              # %do.body.26
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#18:                                # %do.end.33
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#19:                                # %do.end.35
	cmpl	$0, -36(%rbp)
	jne	.LBB17_25
# BB#20:                                # %if.then.38
	movq	-56(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -56(%rbp)
# BB#21:                                # %do.body.40
	jmp	.LBB17_22
.LBB17_22:                              # %do.body.41
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	shll	$8, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#23:                                # %do.end.48
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#24:                                # %do.end.50
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB17_26
.LBB17_25:                              # %if.else.53
	movb	$0, -1(%rbp)
	jmp	.LBB17_33
.LBB17_26:                              # %if.end.54
	jmp	.LBB17_32
.LBB17_27:                              # %sw.bb.55
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rax,8), %sil
	andb	$3, %sil
	movzbl	%sil, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_29
# BB#28:                                # %if.then.63
	movb	$0, -1(%rbp)
	jmp	.LBB17_33
.LBB17_29:                              # %if.end.64
	jmp	.LBB17_32
.LBB17_30:                              # %sw.bb.65
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
.LBB17_31:                              # %sw.default
	movb	$0, -1(%rbp)
	jmp	.LBB17_33
.LBB17_32:                              # %sw.epilog
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$1, -1(%rbp)
.LBB17_33:                              # %return
	movsbl	-1(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	common_op_match_null_string_p, .Lfunc_end17-common_op_match_null_string_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_1
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_2
	.quad	.LBB17_31
	.quad	.LBB17_27
	.quad	.LBB17_1
	.quad	.LBB17_1
	.quad	.LBB17_1
	.quad	.LBB17_1
	.quad	.LBB17_7
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_15
	.quad	.LBB17_31
	.quad	.LBB17_30
	.quad	.LBB17_31
	.quad	.LBB17_31
	.quad	.LBB17_1
	.quad	.LBB17_1
	.quad	.LBB17_1
	.quad	.LBB17_1

	.text
	.align	16, 0x90
	.type	at_begline_loc_p,@function
at_begline_loc_p:                       # @at_begline_loc_p
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	addq	$-2, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	-8(%rbp), %rdx
	movb	%cl, -34(%rbp)          # 1-byte Spill
	jbe	.LBB18_2
# BB#1:                                 # %land.rhs
	movq	-32(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	sete	%dl
	movb	%dl, -34(%rbp)          # 1-byte Spill
.LBB18_2:                               # %land.end
	movb	-34(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -33(%rbp)
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %ecx
	cmpl	$40, %ecx
	jne	.LBB18_5
# BB#3:                                 # %land.lhs.true
	movb	$1, %al
	movq	-24(%rbp), %rcx
	andq	$8192, %rcx             # imm = 0x2000
	cmpq	$0, %rcx
	movb	%al, -35(%rbp)          # 1-byte Spill
	jne	.LBB18_10
# BB#4:                                 # %lor.lhs.false
	movb	$1, %al
	movsbl	-33(%rbp), %ecx
	cmpl	$0, %ecx
	movb	%al, -35(%rbp)          # 1-byte Spill
	jne	.LBB18_10
.LBB18_5:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$124, %eax
	movb	%cl, -36(%rbp)          # 1-byte Spill
	jne	.LBB18_9
# BB#6:                                 # %land.rhs.12
	movb	$1, %al
	movq	-24(%rbp), %rcx
	andq	$32768, %rcx            # imm = 0x8000
	cmpq	$0, %rcx
	movb	%al, -37(%rbp)          # 1-byte Spill
	jne	.LBB18_8
# BB#7:                                 # %lor.rhs.15
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -37(%rbp)          # 1-byte Spill
.LBB18_8:                               # %lor.end
	movb	-37(%rbp), %al          # 1-byte Reload
	movb	%al, -36(%rbp)          # 1-byte Spill
.LBB18_9:                               # %land.end.18
	movb	-36(%rbp), %al          # 1-byte Reload
	movb	%al, -35(%rbp)          # 1-byte Spill
.LBB18_10:                              # %lor.end.20
	movb	-35(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	at_begline_loc_p, .Lfunc_end18-at_begline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	at_endline_loc_p,@function
at_endline_loc_p:                       # @at_endline_loc_p
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$92, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -33(%rbp)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	-16(%rbp), %rdx
	jae	.LBB19_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_3
.LBB19_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB19_5
# BB#4:                                 # %cond.true.6
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB19_15
	jmp	.LBB19_8
.LBB19_5:                               # %cond.false.10
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB19_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB19_8
# BB#7:                                 # %land.lhs.true.14
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB19_15
.LBB19_8:                               # %lor.rhs
	movq	-24(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB19_10
# BB#9:                                 # %cond.true.20
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB19_14
.LBB19_10:                              # %cond.false.24
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB19_13
# BB#11:                                # %land.lhs.true.27
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB19_13
# BB#12:                                # %land.rhs
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB19_13:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB19_14:                              # %cond.end.32
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB19_15:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	at_endline_loc_p, .Lfunc_end19-at_endline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	store_op1,@function
store_op1:                              # @store_op1
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
.Lfunc_end20:
	.size	store_op1, .Lfunc_end20-store_op1
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op1,@function
insert_op1:                             # @insert_op1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
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
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB21_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
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
	jmp	.LBB21_1
.LBB21_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	store_op1
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	insert_op1, .Lfunc_end21-insert_op1
	.cfi_endproc

	.align	16, 0x90
	.type	compile_range,@function
compile_range:                          # @compile_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$11, -4(%rbp)
	jmp	.LBB22_15
.LBB22_2:                               # %if.end
	movq	-64(%rbp), %rax
	movzbl	-2(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movl	-68(%rbp), %ecx
	cmpl	-72(%rbp), %ecx
	jbe	.LBB22_4
# BB#3:                                 # %if.then.5
	xorl	%eax, %eax
	movl	$11, %ecx
	movq	-40(%rbp), %rdx
	andq	$65536, %rdx            # imm = 0x10000
	cmpq	$0, %rdx
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_15
.LBB22_4:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB22_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-72(%rbp), %eax
	ja	.LBB22_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB22_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB22_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB22_9
.LBB22_8:                               # %cond.false
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB22_9:                               # %cond.end
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	$8, %edx
	movb	%al, %sil
	movzbl	%sil, %eax
	movl	%edx, -80(%rbp)         # 4-byte Spill
	cltd
	movl	-80(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-84(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	cmpq	$0, -32(%rbp)
	movl	%edx, -88(%rbp)         # 4-byte Spill
	je	.LBB22_11
# BB#10:                                # %cond.true.17
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB22_12
.LBB22_11:                              # %cond.false.22
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB22_12:                              # %cond.end.23
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	movb	%al, %dl
	movzbl	%dl, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-88(%rbp), %ecx         # 4-byte Reload
	orl	%ecx, %eax
	movb	%al, %r8b
	movb	%r8b, (%rdi,%rsi)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB22_5
.LBB22_14:                              # %for.end
	movl	$0, -4(%rbp)
.LBB22_15:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	compile_range, .Lfunc_end22-compile_range
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op2,@function
insert_op2:                             # @insert_op2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
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
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB23_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
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
	jmp	.LBB23_1
.LBB23_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	store_op2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	insert_op2, .Lfunc_end23-insert_op2
	.cfi_endproc

	.align	16, 0x90
	.type	store_op2,@function
store_op2:                              # @store_op2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
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
	jmp	.LBB24_3
.LBB24_3:                               # %do.body.5
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
.Lfunc_end24:
	.size	store_op2, .Lfunc_end24-store_op2
	.cfi_endproc

	.align	16, 0x90
	.type	group_in_compile_stack,@function
group_in_compile_stack:                 # @group_in_compile_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -28(%rbp)
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -32(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -32(%rbp)
	jl	.LBB25_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-32(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB25_4
# BB#3:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB25_7
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
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

	.type	re_syntax_options,@object # @re_syntax_options
	.comm	re_syntax_options,8,8
	.type	re_max_failures,@object # @re_max_failures
	.data
	.globl	re_max_failures
	.align	4
re_max_failures:
	.long	20000                   # 0x4e20
	.size	re_max_failures, 4

	.type	re_error_msgid,@object  # @re_error_msgid
	.align	16
re_error_msgid:
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
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
	.size	re_error_msgid, 136

	.type	reg_unset_dummy,@object # @reg_unset_dummy
	.local	reg_unset_dummy
	.comm	reg_unset_dummy,1,1
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
	.asciz	"blank"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cntrl"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"digit"
	.size	.L.str.4, 6

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
	.asciz	"xdigit"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Success"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"No match"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Invalid regular expression"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Invalid collation character"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Invalid character class name"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Trailing backslash"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invalid back reference"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Unmatched [ or [^"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Unmatched ( or \\("
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Unmatched \\{"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid content of \\{\\}"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Invalid range end"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Memory exhausted"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Invalid preceding regular expression"
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Premature end of regular expression"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Regular expression too big"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unmatched ) or \\)"
	.size	.L.str.28, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
