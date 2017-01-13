	.text
	.file	"mark.bc"
	.align	16, 0x90
	.type	MarkProcess,@function
MarkProcess:                            # @MarkProcess
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -64(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, markdata
	movq	markdata, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, fore
	movq	markdata, %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	MarkAbort
	jmp	.LBB0_252
.LBB0_2:                                # %if.end
	movq	flayer, %rdi
	movq	markdata, %rax
	movl	16(%rax), %esi
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movl	%ecx, %edx
	callq	LGotoPos
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -72(%rbp)
.LBB0_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_215 Depth 2
                                        #     Child Loop BB0_219 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -72(%rbp)
	movb	%cl, -133(%rbp)         # 1-byte Spill
	je	.LBB0_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -133(%rbp)         # 1-byte Spill
.LBB0_5:                                # %land.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_249
.LBB0_6:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -89(%rbp)
	movl	-36(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -36(%rbp)
	movq	flayer, %rax
	cmpl	$0, 80(%rax)
	je	.LBB0_14
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	flayer, %rdi
	movzbl	-89(%rbp), %esi
	callq	LayProcessMouse
	movl	%eax, -96(%rbp)
	cmpl	$-1, -96(%rbp)
	jne	.LBB0_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
	jmp	.LBB0_13
.LBB0_9:                                # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -96(%rbp)
	je	.LBB0_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$-110, -89(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.11
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_12:                               # %if.end.12
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.13
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.14
                                        #   in Loop: Header=BB0_3 Depth=1
	movzbl	-89(%rbp), %eax
	movslq	%eax, %rcx
	movzbl	mark_key_tab(,%rcx), %eax
	movl	%eax, -68(%rbp)
	movq	markdata, %rcx
	movl	48(%rcx), %eax
	movl	%eax, -76(%rbp)
	cmpl	$48, -68(%rbp)
	jl	.LBB0_22
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$57, -68(%rbp)
	jg	.LBB0_22
# BB#16:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 384(%rax)
	jne	.LBB0_22
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$1001, -76(%rbp)        # imm = 0x3E9
	jge	.LBB0_21
# BB#18:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$48, -68(%rbp)
	jne	.LBB0_20
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB0_21
.LBB0_20:                               # %if.then.31
                                        #   in Loop: Header=BB0_3 Depth=1
	imull	$10, -76(%rbp), %eax
	addl	-68(%rbp), %eax
	subl	$48, %eax
	movq	markdata, %rcx
	movl	%eax, 48(%rcx)
	jmp	.LBB0_3
.LBB0_21:                               # %if.end.34
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               # %if.end.35
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	markdata, %rax
	cmpl	$0, 384(%rax)
	je	.LBB0_31
# BB#23:                                # %if.then.41
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %do.body
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %do.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$0, 384(%rax)
	movq	markdata, %rax
	movl	$0, 48(%rax)
	movslq	-68(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$32768, %edx            # imm = 0x8000
	cmpl	$0, %edx
	je	.LBB0_30
# BB#26:                                # %if.then.50
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-68(%rbp), %eax
	movq	markdata, %rcx
	movl	%eax, 388(%rcx)
	cmpl	$0, -76(%rbp)
	je	.LBB0_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_29
.LBB0_29:                               # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	movl	%eax, -76(%rbp)
	movq	markdata, %rcx
	movl	392(%rcx), %edx
	movl	-68(%rbp), %eax
	movb	%al, %r8b
	movl	-76(%rbp), %eax
	movsbl	%r8b, %ecx
	movl	%eax, %r8d
	callq	nextchar
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	revto
	jmp	.LBB0_3
.LBB0_30:                               # %if.end.56
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.57
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               # %processchar
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$145, %eax
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	ja	.LBB0_245
# BB#253:                               # %processchar
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_33:                               # %sw.bb
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$1, 384(%rax)
	movl	-68(%rbp), %ecx
	movq	markdata, %rax
	movl	%ecx, 392(%rax)
# BB#34:                                # %do.body.62
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.63
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_36:                               # %sw.bb.64
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 388(%rax)
	jne	.LBB0_38
# BB#37:                                # %if.then.68
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_38:                               # %if.end.69
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.71
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_40:                               # %if.end.72
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$59, -68(%rbp)
	jne	.LBB0_42
# BB#41:                                # %cond.true.75
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	392(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false.78
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	392(%rax), %ecx
	xorl	$32, %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB0_43:                               # %cond.end.81
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	movq	markdata, %rcx
	movl	388(%rcx), %edx
	movb	%dl, %r8b
	movl	-76(%rbp), %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movsbl	%r8b, %ecx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	nextchar
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	revto
	jmp	.LBB0_246
.LBB0_44:                               # %sw.bb.87
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB0_46
# BB#45:                                # %if.then.89
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_46:                               # %if.end.90
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	24(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 16(%rax)
	movq	markdata, %rax
	movl	28(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 20(%rax)
	movl	-40(%rbp), %ecx
	movq	markdata, %rax
	movl	%ecx, 24(%rax)
	movl	-44(%rbp), %ecx
	movq	markdata, %rax
	movl	%ecx, 28(%rax)
	movq	markdata, %rax
	movl	16(%rax), %edi
	movq	markdata, %rax
	movl	20(%rax), %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_47:                               # %sw.bb.97
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	callq	Redisplay
	movq	flayer, %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
	jmp	.LBB0_246
.LBB0_48:                               # %sw.bb.100
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_50
# BB#49:                                # %if.then.103
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_50:                               # %if.end.104
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_51:                               # %sw.bb.106
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_53
# BB#52:                                # %if.then.109
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_53:                               # %if.end.110
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_54:                               # %sw.bb.112
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_56
# BB#55:                                # %if.then.115
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_56:                               # %if.end.116
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	fore, %rcx
	movl	10860(%rcx), %edx
	movq	fore, %rcx
	addl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB0_58
# BB#57:                                # %if.then.122
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	fore, %rax
	addl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -56(%rbp)
.LBB0_58:                               # %if.end.128
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-56(%rbp), %edi
	callq	linestart
	movl	-56(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_59:                               # %sw.bb.130
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_61
# BB#60:                                # %if.then.133
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_61:                               # %if.end.134
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB0_63
# BB#62:                                # %if.then.138
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -44(%rbp)
.LBB0_63:                               # %if.end.139
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %edi
	callq	linestart
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_64:                               # %sw.bb.141
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %edi
	callq	linestart
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_65:                               # %sw.bb.143
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %edi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_66:                               # %sw.bb.145
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_68
# BB#67:                                # %if.then.148
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_68:                               # %if.end.149
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_69:                               # %sw.bb.151
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_71
# BB#70:                                # %if.then.154
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_71:                               # %if.end.155
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_72:                               # %sw.bb.157
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %edi
	movl	-44(%rbp), %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_73:                               # %sw.bb.159
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_75
# BB#74:                                # %if.then.162
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -76(%rbp)
.LBB0_75:                               # %if.end.166
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-44(%rbp), %ecx
	movq	markdata, %rdx
	subl	60(%rdx), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	revto_line
	jmp	.LBB0_246
.LBB0_76:                               # %sw.bb.170
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %edi
	callq	lineend
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_77:                               # %sw.bb.172
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	ISearch
	movl	$0, -72(%rbp)
	jmp	.LBB0_246
.LBB0_78:                               # %sw.bb.173
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %edi
	callq	ISearch
	movl	$0, -72(%rbp)
	jmp	.LBB0_246
.LBB0_79:                               # %sw.bb.174
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_81
# BB#80:                                # %if.then.177
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -76(%rbp)
.LBB0_81:                               # %if.end.182
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	-44(%rbp), %ecx
	movq	markdata, %rdx
	subl	60(%rdx), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	revto_line
	jmp	.LBB0_246
.LBB0_82:                               # %sw.bb.186
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 36(%rax)
	jne	.LBB0_85
# BB#83:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	40(%rax), %ecx
	movq	fore, %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB0_85
# BB#84:                                # %if.then.195
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	-44(%rbp), %ecx
	movq	markdata, %rdx
	subl	60(%rdx), %ecx
	addl	$1, %ecx
	movq	markdata, %rdx
	movl	60(%rdx), %r8d
	movl	%eax, %edx
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_86
.LBB0_85:                               # %if.else.201
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movq	markdata, %rcx
	movl	36(%rcx), %edx
	addl	$1, %edx
	movq	markdata, %rcx
	movl	40(%rcx), %r8d
	addl	$1, %r8d
	movl	-44(%rbp), %r9d
	movq	markdata, %rcx
	subl	60(%rcx), %r9d
	addl	$1, %r9d
	movq	markdata, %rcx
	movl	60(%rcx), %r10d
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	LMsg
.LBB0_86:                               # %if.end.211
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_87:                               # %sw.bb.212
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_89
# BB#88:                                # %if.then.215
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_89:                               # %if.end.216
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	36(%rax), %ecx
	imull	-76(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_90:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_92
# BB#91:                                # %if.then.224
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_92:                               # %if.end.225
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	36(%rax), %ecx
	imull	-76(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_93:                               # %sw.bb.230
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_95
# BB#94:                                # %if.then.233
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_95:                               # %if.end.234
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %edi
	callq	MarkScrollUpDisplay
	movl	%eax, -76(%rbp)
	movl	-44(%rbp), %eax
	movq	markdata, %rcx
	movl	60(%rcx), %edi
	addl	$0, %edi
	cmpl	%edi, %eax
	jge	.LBB0_97
# BB#96:                                # %if.then.240
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movq	markdata, %rax
	movl	60(%rax), %ecx
	addl	$0, %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_98
.LBB0_97:                               # %if.else.243
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	flayer, %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
.LBB0_98:                               # %if.end.246
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_99:                               # %sw.bb.247
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_101
# BB#100:                               # %if.then.250
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_101:                              # %if.end.251
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %edi
	callq	MarkScrollDownDisplay
	movl	%eax, -76(%rbp)
	movl	-44(%rbp), %eax
	movq	fore, %rcx
	movl	36(%rcx), %edi
	subl	$1, %edi
	movq	markdata, %rcx
	addl	60(%rcx), %edi
	cmpl	%edi, %eax
	jle	.LBB0_103
# BB#102:                               # %if.then.260
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movq	fore, %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_104
.LBB0_103:                              # %if.else.266
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	flayer, %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
.LBB0_104:                              # %if.end.269
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_105:                              # %sw.bb.270
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_106:                              # %sw.bb.271
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB0_108
# BB#107:                               # %if.then.275
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -76(%rbp)
.LBB0_108:                              # %if.end.276
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$100, -76(%rbp)
	jle	.LBB0_110
# BB#109:                               # %if.then.279
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$100, -76(%rbp)
.LBB0_110:                              # %if.end.280
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %eax
	movl	$100, %ecx
	movq	markdata, %rdx
	movl	36(%rdx), %edi
	movl	-76(%rbp), %esi
	movq	fore, %rdx
	movl	10860(%rdx), %r8d
	movq	fore, %rdx
	addl	36(%rdx), %r8d
	imull	%r8d, %esi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movq	fore, %r9
	movl	36(%r9), %ecx
	subl	$1, %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-184(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	revto_line
	jmp	.LBB0_246
.LBB0_111:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_112:                              # %sw.bb.292
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_114
# BB#113:                               # %if.then.295
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	fore, %rax
	addl	36(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB0_114:                              # %if.end.300
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %eax
	movq	markdata, %rcx
	movl	36(%rcx), %edi
	movl	-76(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -76(%rbp)
	movq	fore, %rcx
	movl	36(%rcx), %esi
	subl	$1, %esi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -196(%rbp)        # 4-byte Spill
	cltd
	movl	-192(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-196(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	revto_line
	jmp	.LBB0_246
.LBB0_115:                              # %sw.bb.307
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %edi
	movq	markdata, %rax
	movl	60(%rax), %ecx
	addl	$0, %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_116:                              # %sw.bb.311
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %eax
	movq	markdata, %rcx
	movl	36(%rcx), %edi
	movq	fore, %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-200(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	markdata, %rcx
	addl	60(%rcx), %eax
	movl	%eax, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_117:                              # %sw.bb.319
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %edi
	movq	fore, %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_118:                              # %sw.bb.326
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	jmp	.LBB0_246
.LBB0_119:                              # %sw.bb.328
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_121
# BB#120:                               # %if.then.331
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_121:                              # %if.end.332
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	movl	-76(%rbp), %ecx
	callq	nextword
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_122:                              # %sw.bb.333
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_124
# BB#123:                               # %if.then.336
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_124:                              # %if.end.337
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	xorl	%eax, %eax
	movl	$8, %ecx
	cmpl	$69, -68(%rbp)
	cmovel	%ecx, %eax
	orl	$6, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, %edx
	callq	nextword
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_125:                              # %sw.bb.341
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_127
# BB#126:                               # %if.then.344
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_127:                              # %if.end.345
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	xorl	%eax, %eax
	movl	$8, %ecx
	cmpl	$66, -68(%rbp)
	cmovel	%ecx, %eax
	orl	$7, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, %edx
	callq	nextword
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	jmp	.LBB0_246
.LBB0_128:                              # %sw.bb.350
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movq	markdata, %rcx
	subl	52(%rcx), %eax
	movq	markdata, %rcx
	movl	%eax, 52(%rcx)
# BB#129:                               # %do.body.353
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_130
.LBB0_130:                              # %do.end.354
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.4, %rcx
	movq	markdata, %rdx
	cmpl	$0, 52(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_246
.LBB0_131:                              # %sw.bb.358
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$8, 36(%rax)
	jne	.LBB0_133
# BB#132:                               # %if.then.362
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
	jmp	.LBB0_134
.LBB0_133:                              # %if.else.363
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$9, -76(%rbp)
.LBB0_134:                              # %if.end.364
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_135
.LBB0_135:                              # %sw.bb.365
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_137
# BB#136:                               # %if.then.368
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	markdata, %rcx
	movl	24(%rcx), %edi
	movq	markdata, %rcx
	movl	28(%rcx), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	fore, %r10
	movl	36(%r10), %eax
	subl	$1, %eax
	movl	%eax, (%rsp)
	callq	rem
	movq	markdata, %r9
	movl	$1, 32(%r9)
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB0_137:                              # %if.end.376
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB0_139
# BB#138:                               # %if.then.380
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB0_139:                              # %if.end.381
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$67, -68(%rbp)
	je	.LBB0_143
# BB#140:                               # %if.then.384
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	movq	markdata, %rcx
	movl	%eax, 36(%rcx)
	movq	markdata, %rcx
	movl	36(%rcx), %eax
	movq	markdata, %rcx
	cmpl	40(%rcx), %eax
	jle	.LBB0_142
# BB#141:                               # %if.then.390
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	40(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 36(%rax)
.LBB0_142:                              # %if.end.393
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_146
.LBB0_143:                              # %if.else.394
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	movq	markdata, %rcx
	movl	%eax, 40(%rcx)
	movq	markdata, %rcx
	movl	36(%rcx), %eax
	movq	markdata, %rcx
	cmpl	40(%rcx), %eax
	jle	.LBB0_145
# BB#144:                               # %if.then.400
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 40(%rax)
.LBB0_145:                              # %if.end.403
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_146
.LBB0_146:                              # %if.end.404
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_148
# BB#147:                               # %if.then.407
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	24(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 16(%rax)
	movq	markdata, %rax
	movl	28(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 20(%rax)
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
.LBB0_148:                              # %if.end.412
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$118, -68(%rbp)
	je	.LBB0_150
# BB#149:                               # %lor.lhs.false.415
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$86, -68(%rbp)
	jne	.LBB0_151
.LBB0_150:                              # %if.then.418
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.6, %rcx
	movq	markdata, %rdx
	cmpl	$8, 36(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	LMsg
.LBB0_151:                              # %if.end.423
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_152:                              # %sw.bb.424
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata(%rip), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	incl	%edx
	movl	%ecx, %esi
	sarl	$31, %edx
	shrl	$30, %edx
	movl	%edx, %edi
	leal	1(%rsi,%rdi), %ecx
	andl	$-4, %ecx
	negl	%ecx
	movl	%ecx, %edi
	leal	1(%rsi,%rdi), %ecx
	movl	%ecx, 44(%rax)
	movq	markdata(%rip), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	ja	.LBB0_160
# BB#255:                               # %sw.bb.424
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_153:                              # %sw.bb.428
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, join_with_cr
	je	.LBB0_155
# BB#154:                               # %if.then.430
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.8, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_156
.LBB0_155:                              # %if.else.431
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.9, %rsi
	movb	$0, %al
	callq	LMsg
.LBB0_156:                              # %if.end.432
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_160
.LBB0_157:                              # %sw.bb.433
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.10, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_160
.LBB0_158:                              # %sw.bb.434
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.11, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_160
.LBB0_159:                              # %sw.bb.435
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	movb	$0, %al
	callq	LMsg
.LBB0_160:                              # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_161:                              # %sw.bb.436
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %edi
	callq	Search
	movl	$0, -72(%rbp)
	jmp	.LBB0_246
.LBB0_162:                              # %sw.bb.437
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Search
	movl	$0, -72(%rbp)
	jmp	.LBB0_246
.LBB0_163:                              # %sw.bb.438
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	callq	Search
	jmp	.LBB0_246
.LBB0_164:                              # %sw.bb.439
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movq	markdata, %rcx
	movl	%eax, %edx
	subl	372(%rcx), %edx
	movq	markdata, %rcx
	movl	%edx, 372(%rcx)
	movl	%eax, %edi
	callq	Search
	xorl	%eax, %eax
	movq	markdata, %rcx
	subl	372(%rcx), %eax
	movq	markdata, %rcx
	movl	%eax, 372(%rcx)
	jmp	.LBB0_246
.LBB0_165:                              # %sw.bb.445
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB0_167
# BB#166:                               # %if.then.449
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %edi
	callq	linestart
	movl	-44(%rbp), %esi
	movl	%eax, %edi
	callq	revto
	movq	markdata, %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 32(%rcx)
	movq	markdata, %rcx
	movl	16(%rcx), %eax
	movq	markdata, %rcx
	movl	%eax, 24(%rcx)
	movl	%eax, -40(%rbp)
	movq	markdata, %rcx
	movl	20(%rcx), %eax
	movq	markdata, %rcx
	movl	%eax, 28(%rcx)
	movl	%eax, -44(%rbp)
.LBB0_167:                              # %if.end.456
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_169
# BB#168:                               # %if.then.460
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, %esi
	callq	revto
.LBB0_169:                              # %if.end.462
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	20(%rax), %edi
	callq	lineend
	movq	markdata, %rcx
	movl	20(%rcx), %esi
	movl	%eax, %edi
	callq	revto
	cmpl	$121, -68(%rbp)
	jne	.LBB0_171
# BB#170:                               # %if.then.468
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_171:                              # %if.end.469
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_172
.LBB0_172:                              # %sw.bb.470
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$87, -68(%rbp)
	jne	.LBB0_178
# BB#173:                               # %if.then.473
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_175
# BB#174:                               # %if.then.476
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -76(%rbp)
.LBB0_175:                              # %if.end.477
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB0_177
# BB#176:                               # %if.then.480
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	movl	$3, %edx
	movl	$1, %ecx
	callq	nextword
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	movq	markdata, %rax
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
	movq	markdata, %rax
	movl	16(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 24(%rax)
	movl	%ecx, -40(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 28(%rax)
	movl	%ecx, -44(%rbp)
.LBB0_177:                              # %if.end.487
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	movl	$2, %edx
	movl	-76(%rbp), %ecx
	callq	nextword
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
.LBB0_178:                              # %if.end.488
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB0_179:                              # %sw.bb.491
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$65, -68(%rbp)
	jne	.LBB0_181
# BB#180:                               # %if.then.494
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$1, 52(%rax)
.LBB0_181:                              # %if.end.496
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_182
.LBB0_182:                              # %sw.bb.497
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$62, -68(%rbp)
	jne	.LBB0_184
# BB#183:                               # %if.then.500
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$1, 56(%rax)
.LBB0_184:                              # %if.end.501
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_185
.LBB0_185:                              # %sw.bb.502
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB0_187
# BB#186:                               # %if.then.505
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
	movl	-40(%rbp), %ecx
	movq	markdata, %rax
	movl	%ecx, 24(%rax)
	movl	-44(%rbp), %ecx
	movq	markdata, %rax
	movl	%ecx, 28(%rax)
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	xorl	%edi, %edi
	movabsq	$.L.str.13, %rsi
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	-44(%rbp), %edx
	movq	markdata, %rax
	subl	60(%rax), %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_246
.LBB0_187:                              # %if.else.514
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	movq	markdata, %rcx
	movl	52(%rcx), %edx
	movl	%edx, -100(%rbp)
	movq	markdata, %rcx
	movl	56(%rcx), %edx
	movl	%edx, -104(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, -48(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, -52(%rbp)
	movq	markdata, %rcx
	movl	24(%rcx), %edi
	movq	markdata, %rcx
	movl	28(%rcx), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	$0, (%rsp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	rem
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %r9
	cmpq	$0, 304(%r9)
	je	.LBB0_190
# BB#188:                               # %land.lhs.true.523
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -100(%rbp)
	jne	.LBB0_190
# BB#189:                               # %if.then.525
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB0_190:                              # %if.end.527
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	fore, %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movq	fore, %rax
	cmpl	36(%rax), %ecx
	jge	.LBB0_192
# BB#191:                               # %if.then.538
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$0, 32(%rax)
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movl	%ecx, %edi
	callq	MarkScrollUpDisplay
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
.LBB0_192:                              # %if.end.545
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -64(%rbp)
	jle	.LBB0_208
# BB#193:                               # %if.then.548
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB0_195
# BB#194:                               # %if.then.552
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-88(%rbp), %rax
	movl	312(%rax), %ecx
	addl	-64(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	callq	realloc
	movq	-88(%rbp), %rsi
	movq	%rax, 304(%rsi)
	jmp	.LBB0_196
.LBB0_195:                              # %if.else.562
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movl	$0, 312(%rax)
	movl	-64(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	malloc
	movq	-88(%rbp), %rdi
	movq	%rax, 304(%rdi)
.LBB0_196:                              # %if.end.570
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	jne	.LBB0_198
# BB#197:                               # %if.then.574
                                        #   in Loop: Header=BB0_3 Depth=1
	callq	MarkAbort
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movl	$0, -72(%rbp)
	movb	$0, %al
	callq	LMsg
	movq	-88(%rbp), %rsi
	movl	$0, 312(%rsi)
	movq	-88(%rbp), %rsi
	movq	$0, 304(%rsi)
	jmp	.LBB0_246
.LBB0_198:                              # %if.end.579
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -100(%rbp)
	je	.LBB0_207
# BB#199:                               # %if.then.581
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata(%rip), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	ja	.LBB0_206
# BB#254:                               # %if.then.581
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_200:                              # %sw.bb.583
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, join_with_cr
	je	.LBB0_202
# BB#201:                               # %if.then.585
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movslq	312(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	304(%rcx), %rcx
	movb	$13, (%rcx,%rax)
	movq	-88(%rbp), %rax
	movl	312(%rax), %edx
	addl	$1, %edx
	movl	%edx, 312(%rax)
.LBB0_202:                              # %if.end.595
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movslq	312(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	304(%rcx), %rcx
	movb	$10, (%rcx,%rax)
	movq	-88(%rbp), %rax
	movl	312(%rax), %edx
	addl	$1, %edx
	movl	%edx, 312(%rax)
	jmp	.LBB0_206
.LBB0_203:                              # %sw.bb.605
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_206
.LBB0_204:                              # %sw.bb.606
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movslq	312(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	304(%rcx), %rcx
	movb	$32, (%rcx,%rax)
	movq	-88(%rbp), %rax
	movl	312(%rax), %edx
	addl	$1, %edx
	movl	%edx, 312(%rax)
	jmp	.LBB0_206
.LBB0_205:                              # %sw.bb.616
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movslq	312(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	304(%rcx), %rcx
	movb	$44, (%rcx,%rax)
	movq	-88(%rbp), %rax
	movl	312(%rax), %edx
	addl	$1, %edx
	movl	%edx, 312(%rax)
.LBB0_206:                              # %sw.epilog.626
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_207
.LBB0_207:                              # %if.end.627
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	24(%rax), %edi
	movq	markdata, %rax
	movl	28(%rax), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	markdata, %rax
	movl	60(%rax), %r8d
	movq	fore, %rax
	cmpl	10860(%rax), %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movq	-88(%rbp), %rax
	movq	304(%rax), %rax
	movq	-88(%rbp), %r10
	movslq	312(%r10), %r10
	addq	%r10, %rax
	movl	-60(%rbp), %r11d
	movq	%rax, %r9
	movl	%r11d, (%rsp)
	callq	rem
	movq	-88(%rbp), %r9
	addl	312(%r9), %eax
	movl	%eax, 312(%r9)
	movq	fore, %r9
	movl	48(%r9), %eax
	movq	-88(%rbp), %r9
	movl	%eax, 316(%r9)
.LBB0_208:                              # %if.end.644
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	60(%rax), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	je	.LBB0_224
# BB#209:                               # %if.then.649
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_210
.LBB0_210:                              # %do.body.650
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	flayer, %rax
	movq	%rax, -112(%rbp)
# BB#211:                               # %do.body.651
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_212
.LBB0_212:                              # %do.end.652
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
# BB#213:                               # %do.body.653
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_214
.LBB0_214:                              # %do.end.654
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB0_215:                              # %for.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB0_218
# BB#216:                               # %for.body
                                        #   in Loop: Header=BB0_215 Depth=2
	movq	flayer, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#217:                               # %for.inc
                                        #   in Loop: Header=BB0_215 Depth=2
	movq	-128(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB0_215
.LBB0_218:                              # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-112(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -128(%rbp)
.LBB0_219:                              # %for.cond.660
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -128(%rbp)
	je	.LBB0_222
# BB#220:                               # %for.body.662
                                        #   in Loop: Header=BB0_219 Depth=2
	movq	flayer, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#221:                               # %for.inc.664
                                        #   in Loop: Header=BB0_219 Depth=2
	movq	-128(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB0_219
.LBB0_222:                              # %for.end.666
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-120(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#223:                               # %do.end.669
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_224
.LBB0_224:                              # %if.end.670
                                        #   in Loop: Header=BB0_3 Depth=1
	callq	ExitOverlayPage
	movl	$80, %esi
	movq	fore, %rdi
	callq	WindowChanged
	cmpl	$0, -100(%rbp)
	je	.LBB0_226
# BB#225:                               # %if.then.672
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.14, %rsi
	movl	-64(%rbp), %edx
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_227
.LBB0_226:                              # %if.else.673
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.15, %rsi
	movq	-88(%rbp), %rax
	movl	312(%rax), %edx
	movb	$0, %al
	callq	LMsg
.LBB0_227:                              # %if.end.676
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -104(%rbp)
	je	.LBB0_229
# BB#228:                               # %if.then.678
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-88(%rbp), %rdi
	callq	WriteFile
.LBB0_229:                              # %if.end.679
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -72(%rbp)
	jmp	.LBB0_246
.LBB0_230:                              # %sw.bb.680
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	flayer, %rax
	cmpl	$0, 80(%rax)
	je	.LBB0_243
# BB#231:                               # %if.then.684
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	flayer, %rax
	movzbl	72(%rax), %ecx
	movl	%ecx, -132(%rbp)
	cmpl	$97, -132(%rbp)
	jne	.LBB0_233
# BB#232:                               # %if.then.690
                                        #   in Loop: Header=BB0_32 Depth=2
	movl	$106, -68(%rbp)
	jmp	.LBB0_240
.LBB0_233:                              # %if.else.691
                                        #   in Loop: Header=BB0_32 Depth=2
	cmpl	$96, -132(%rbp)
	jne	.LBB0_235
# BB#234:                               # %if.then.694
                                        #   in Loop: Header=BB0_32 Depth=2
	movl	$107, -68(%rbp)
	jmp	.LBB0_239
.LBB0_235:                              # %if.else.695
                                        #   in Loop: Header=BB0_32 Depth=2
	cmpl	$32, -132(%rbp)
	jne	.LBB0_237
# BB#236:                               # %if.then.698
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	flayer, %rax
	movzbl	73(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	flayer, %rax
	movzbl	74(%rax), %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	revto
	movl	$32, -68(%rbp)
	jmp	.LBB0_238
.LBB0_237:                              # %if.else.709
                                        #   in Loop: Header=BB0_32 Depth=2
	movl	$0, -68(%rbp)
.LBB0_238:                              # %if.end.710
                                        #   in Loop: Header=BB0_32 Depth=2
	jmp	.LBB0_239
.LBB0_239:                              # %if.end.711
                                        #   in Loop: Header=BB0_32 Depth=2
	jmp	.LBB0_240
.LBB0_240:                              # %if.end.712
                                        #   in Loop: Header=BB0_32 Depth=2
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
	cmpl	$0, -68(%rbp)
	je	.LBB0_242
# BB#241:                               # %if.then.714
                                        #   in Loop: Header=BB0_32 Depth=2
	jmp	.LBB0_32
.LBB0_242:                              # %if.end.715
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_244
.LBB0_243:                              # %if.else.716
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
.LBB0_244:                              # %if.end.717
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_246
.LBB0_245:                              # %sw.default
                                        #   in Loop: Header=BB0_3 Depth=1
	callq	MarkAbort
	xorl	%edi, %edi
	movabsq	$.L.str.16, %rsi
	movb	$0, %al
	callq	LMsg
	movl	$0, -72(%rbp)
.LBB0_246:                              # %sw.epilog.718
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB0_248
# BB#247:                               # %if.then.720
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	markdata, %rax
	movl	$0, 48(%rax)
.LBB0_248:                              # %if.end.722
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_249:                              # %while.end
	cmpl	$0, -72(%rbp)
	je	.LBB0_251
# BB#250:                               # %if.then.724
	movq	markdata, %rax
	movl	16(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 16(%rax)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 20(%rax)
.LBB0_251:                              # %if.end.729
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.LBB0_252:                              # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	MarkProcess, .Lfunc_end0-MarkProcess
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_72
	.quad	.LBB0_87
	.quad	.LBB0_245
	.quad	.LBB0_73
	.quad	.LBB0_93
	.quad	.LBB0_90
	.quad	.LBB0_82
	.quad	.LBB0_48
	.quad	.LBB0_245
	.quad	.LBB0_65
	.quad	.LBB0_245
	.quad	.LBB0_47
	.quad	.LBB0_185
	.quad	.LBB0_51
	.quad	.LBB0_245
	.quad	.LBB0_66
	.quad	.LBB0_245
	.quad	.LBB0_77
	.quad	.LBB0_78
	.quad	.LBB0_245
	.quad	.LBB0_79
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_99
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_185
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_76
	.quad	.LBB0_106
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_54
	.quad	.LBB0_36
	.quad	.LBB0_59
	.quad	.LBB0_245
	.quad	.LBB0_161
	.quad	.LBB0_72
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_36
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_182
	.quad	.LBB0_162
	.quad	.LBB0_105
	.quad	.LBB0_179
	.quad	.LBB0_125
	.quad	.LBB0_135
	.quad	.LBB0_245
	.quad	.LBB0_122
	.quad	.LBB0_33
	.quad	.LBB0_112
	.quad	.LBB0_115
	.quad	.LBB0_245
	.quad	.LBB0_152
	.quad	.LBB0_245
	.quad	.LBB0_117
	.quad	.LBB0_116
	.quad	.LBB0_164
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_33
	.quad	.LBB0_245
	.quad	.LBB0_131
	.quad	.LBB0_172
	.quad	.LBB0_245
	.quad	.LBB0_165
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_64
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_128
	.quad	.LBB0_125
	.quad	.LBB0_135
	.quad	.LBB0_245
	.quad	.LBB0_122
	.quad	.LBB0_33
	.quad	.LBB0_111
	.quad	.LBB0_48
	.quad	.LBB0_245
	.quad	.LBB0_51
	.quad	.LBB0_66
	.quad	.LBB0_69
	.quad	.LBB0_245
	.quad	.LBB0_163
	.quad	.LBB0_44
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_33
	.quad	.LBB0_245
	.quad	.LBB0_131
	.quad	.LBB0_119
	.quad	.LBB0_44
	.quad	.LBB0_165
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_118
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_111
	.quad	.LBB0_48
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_112
	.quad	.LBB0_69
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_245
	.quad	.LBB0_51
	.quad	.LBB0_245
	.quad	.LBB0_66
	.quad	.LBB0_245
	.quad	.LBB0_230
.LJTI0_1:
	.quad	.LBB0_200
	.quad	.LBB0_203
	.quad	.LBB0_204
	.quad	.LBB0_205
.LJTI0_2:
	.quad	.LBB0_153
	.quad	.LBB0_157
	.quad	.LBB0_158
	.quad	.LBB0_159

	.text
	.align	16, 0x90
	.type	MarkAbort,@function
MarkAbort:                              # @MarkAbort
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
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, markdata
	movq	markdata, %rax
	movq	(%rax), %rax
	movq	%rax, fore
	movq	fore, %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
	movq	markdata, %rax
	movl	32(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movq	fore, %rax
	cmpl	36(%rax), %ecx
	jge	.LBB1_4
# BB#3:                                 # %if.then
	movq	markdata, %rax
	movl	$0, 32(%rax)
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movl	%ecx, %edi
	callq	MarkScrollUpDisplay
	movl	-4(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB1_4:                                # %if.end
	movq	markdata, %rax
	movl	60(%rax), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	je	.LBB1_20
# BB#5:                                 # %if.then.12
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.13
	movq	flayer, %rax
	movq	%rax, -16(%rbp)
# BB#7:                                 # %do.body.14
	jmp	.LBB1_8
.LBB1_8:                                # %do.end.15
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#9:                                 # %do.body.16
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB1_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	flayer, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-16(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB1_15:                               # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_18
# BB#16:                                # %for.body.24
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	flayer, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#17:                                # %for.inc.26
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.LBB1_18:                               # %for.end.28
	movq	-24(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#19:                                # %do.end.31
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	markdata, %rcx
	movl	24(%rcx), %edi
	movq	markdata, %rcx
	movl	28(%rcx), %esi
	movq	markdata, %rcx
	movl	16(%rcx), %edx
	movq	markdata, %rcx
	movl	20(%rcx), %ecx
	movl	-8(%rbp), %r8d
	movl	-4(%rbp), %eax
	movl	%eax, (%rsp)
	callq	rem
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_21:                               # %if.end.33
	callq	ExitOverlayPage
	movl	$80, %esi
	movq	fore, %rdi
	callq	WindowChanged
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	MarkAbort, .Lfunc_end1-MarkAbort
	.cfi_endproc

	.align	16, 0x90
	.type	MarkRedisplayLine,@function
MarkRedisplayLine:                      # @MarkRedisplayLine
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_76
.LBB2_2:                                # %if.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, markdata
	movq	markdata, %rax
	movq	(%rax), %rax
	movq	%rax, fore
	movl	mchar_so, %ecx
	movl	%ecx, -72(%rbp)
	movw	mchar_so+4, %dx
	movw	%dx, -68(%rbp)
	movl	-4(%rbp), %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	jge	.LBB2_4
# BB#3:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-20(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-80(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	movl	-20(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB2_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB2_29
# BB#6:                                 # %if.then.8
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB2_9
# BB#7:                                 # %cond.true.10
	movslq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB2_12
# BB#8:                                 # %land.lhs.true
	movslq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB2_10
	jmp	.LBB2_12
.LBB2_9:                                # %cond.false.20
	movslq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB2_12
.LBB2_10:                               # %land.lhs.true.27
	cmpl	$0, -8(%rbp)
	jle	.LBB2_12
# BB#11:                                # %if.then.30
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
.LBB2_12:                               # %if.end.31
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB2_15
# BB#13:                                # %cond.true.36
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB2_19
# BB#14:                                # %land.lhs.true.44
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB2_17
	jmp	.LBB2_19
.LBB2_15:                               # %cond.false.52
	movslq	-12(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB2_19
# BB#16:                                # %land.lhs.true.60
	movslq	-12(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB2_19
.LBB2_17:                               # %land.lhs.true.68
	movl	-12(%rbp), %eax
	movq	fore, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB2_19
# BB#18:                                # %if.then.73
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB2_19:                               # %if.end.74
	cmpl	$0, -8(%rbp)
	jne	.LBB2_27
# BB#20:                                # %land.lhs.true.77
	cmpl	$0, -4(%rbp)
	jle	.LBB2_27
# BB#21:                                # %land.lhs.true.80
	cmpl	$0, -20(%rbp)
	jle	.LBB2_27
# BB#22:                                # %land.lhs.true.83
	movq	flayer, %rax
	movslq	8(%rax), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movq	fore, %rdx
	cmpl	10860(%rdx), %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jge	.LBB2_24
# BB#23:                                # %cond.true.90
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movq	fore, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-104(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.99
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB2_25:                               # %cond.end.106
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	jne	.LBB2_27
# BB#26:                                # %if.then.113
	movq	flayer, %rdi
	movq	-64(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	callq	LCDisplayLineWrap
	jmp	.LBB2_28
.LBB2_27:                               # %if.else
	movq	flayer, %rdi
	movq	-64(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	callq	LCDisplayLine
.LBB2_28:                               # %if.end.114
	jmp	.LBB2_76
.LBB2_29:                               # %if.end.115
	movq	markdata, %rax
	movl	28(%rax), %ecx
	movq	fore, %rax
	imull	32(%rax), %ecx
	movq	markdata, %rax
	addl	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movq	fore, %rax
	imull	32(%rax), %ecx
	movq	markdata, %rax
	addl	16(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jle	.LBB2_31
# BB#30:                                # %if.then.125
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB2_31:                               # %if.end.126
	movl	-20(%rbp), %eax
	movq	fore, %rcx
	imull	32(%rcx), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	markdata, %rcx
	movl	40(%rcx), %eax
	movl	%eax, -32(%rbp)
	movq	fore, %rcx
	movl	32(%rcx), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	fore, %rdx
	movslq	32(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
.LBB2_32:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jl	.LBB2_37
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB2_35
# BB#34:                                # %if.then.141
	jmp	.LBB2_37
.LBB2_35:                               # %if.end.142
                                        #   in Loop: Header=BB2_32 Depth=1
	jmp	.LBB2_36
.LBB2_36:                               # %for.inc
                                        #   in Loop: Header=BB2_32 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB2_32
.LBB2_37:                               # %for.end
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB2_39
# BB#38:                                # %if.then.146
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_39:                               # %if.end.147
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB2_40:                               # %for.cond.148
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB2_46
# BB#41:                                # %for.body.151
                                        #   in Loop: Header=BB2_40 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB2_44
# BB#42:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB2_40 Depth=1
	movl	-24(%rbp), %eax
	movq	markdata, %rcx
	cmpl	36(%rcx), %eax
	jl	.LBB2_44
# BB#43:                                # %if.then.157
	jmp	.LBB2_46
.LBB2_44:                               # %if.end.158
                                        #   in Loop: Header=BB2_40 Depth=1
	jmp	.LBB2_45
.LBB2_45:                               # %for.inc.159
                                        #   in Loop: Header=BB2_40 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_40
.LBB2_46:                               # %for.end.162
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB2_49
# BB#47:                                # %cond.true.167
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB2_51
# BB#48:                                # %land.lhs.true.174
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB2_50
	jmp	.LBB2_51
.LBB2_49:                               # %cond.false.181
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB2_51
.LBB2_50:                               # %if.then.189
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
.LBB2_51:                               # %if.end.191
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB2_53
# BB#52:                                # %if.then.194
	movq	flayer, %rdi
	movq	-64(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %r9d
	movl	%eax, %r8d
	callq	LCDisplayLine
.LBB2_53:                               # %if.end.196
	jmp	.LBB2_54
.LBB2_54:                               # %for.cond.197
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB2_74
# BB#55:                                # %for.body.200
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB2_57
# BB#56:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB2_58
.LBB2_57:                               # %if.then.205
	jmp	.LBB2_74
.LBB2_58:                               # %if.end.206
                                        #   in Loop: Header=BB2_54 Depth=1
	cmpl	$0, pastefont
	je	.LBB2_60
# BB#59:                                # %if.then.207
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -70(%rbp)
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -69(%rbp)
.LBB2_60:                               # %if.end.215
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -72(%rbp)
	movb	$0, -67(%rbp)
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB2_63
# BB#61:                                # %cond.true.224
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB2_66
# BB#62:                                # %land.lhs.true.232
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB2_65
	jmp	.LBB2_66
.LBB2_63:                               # %cond.false.240
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB2_66
# BB#64:                                # %land.lhs.true.248
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB2_66
.LBB2_65:                               # %if.then.256
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -67(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB2_66:                               # %if.end.263
                                        #   in Loop: Header=BB2_54 Depth=1
	leaq	-72(%rbp), %rsi
	movq	flayer, %rdi
	movl	-24(%rbp), %edx
	movl	-4(%rbp), %ecx
	callq	LPutChar
	movq	fore, %rsi
	cmpl	$8, 48(%rsi)
	jne	.LBB2_69
# BB#67:                                # %cond.true.268
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB2_72
# BB#68:                                # %land.lhs.true.276
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB2_71
	jmp	.LBB2_72
.LBB2_69:                               # %cond.false.284
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB2_72
# BB#70:                                # %land.lhs.true.292
                                        #   in Loop: Header=BB2_54 Depth=1
	movslq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB2_72
.LBB2_71:                               # %if.then.300
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB2_72:                               # %if.end.302
                                        #   in Loop: Header=BB2_54 Depth=1
	jmp	.LBB2_73
.LBB2_73:                               # %for.inc.303
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_54
.LBB2_74:                               # %for.end.306
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB2_76
# BB#75:                                # %if.then.309
	movq	flayer, %rdi
	movq	-64(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	callq	LCDisplayLine
.LBB2_76:                               # %if.end.310
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	MarkRedisplayLine, .Lfunc_end2-MarkRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	MarkRewrite,@function
MarkRewrite:                            # @MarkRewrite
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
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	mchar_so, %edx
	movl	%edx, -80(%rbp)
	movw	mchar_so+4, %ax
	movw	%ax, -76(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, markdata
	movq	markdata, %rax
	movq	(%rax), %rax
	movq	%rax, fore
	movl	-8(%rbp), %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	jge	.LBB3_4
# BB#3:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-40(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-88(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	movl	-40(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB3_5:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	fore, %rax
	cmpl	$0, 48(%rax)
	je	.LBB3_10
# BB#6:                                 # %land.lhs.true
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	je	.LBB3_10
# BB#7:                                 # %land.lhs.true.9
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB3_10
# BB#8:                                 # %land.lhs.true.11
	movq	-72(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	fore, %rax
	movl	48(%rax), %ecx
	callq	ContainsSpecialDeffont
	cmpl	$0, %eax
	je	.LBB3_10
# BB#9:                                 # %if.then
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB3_52
.LBB3_10:                               # %if.end
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB3_15
# BB#11:                                # %if.then.18
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB3_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB3_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %edi
	callq	PUTCHAR
	jmp	.LBB3_12
.LBB3_14:                               # %while.end
	movl	$0, -4(%rbp)
	jmp	.LBB3_52
.LBB3_15:                               # %if.end.20
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB3_17
# BB#16:                                # %if.then.23
	movl	$-1, -48(%rbp)
	movl	$-1, -44(%rbp)
	jmp	.LBB3_20
.LBB3_17:                               # %if.else
	movq	markdata, %rax
	movl	28(%rax), %ecx
	movq	fore, %rax
	imull	32(%rax), %ecx
	movq	markdata, %rax
	addl	24(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movq	fore, %rax
	imull	32(%rax), %ecx
	movq	markdata, %rax
	addl	16(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	jle	.LBB3_19
# BB#18:                                # %if.then.32
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB3_19:                               # %if.end.33
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.34
	movl	-40(%rbp), %eax
	movq	fore, %rcx
	imull	32(%rcx), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	fore, %rcx
	movl	32(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	fore, %rdx
	movslq	32(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
.LBB3_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB3_26
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %edx
	cmpl	$32, %edx
	je	.LBB3_24
# BB#23:                                # %if.then.52
	jmp	.LBB3_26
.LBB3_24:                               # %if.end.53
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_25
.LBB3_25:                               # %for.inc
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_21
.LBB3_26:                               # %for.end
	movl	-56(%rbp), %eax
	movq	markdata, %rcx
	cmpl	40(%rcx), %eax
	jle	.LBB3_28
# BB#27:                                # %if.then.57
	movq	markdata, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB3_28:                               # %if.end.59
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB3_29:                               # %while.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, %eax
	je	.LBB3_51
# BB#30:                                # %while.body.63
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB3_43
# BB#31:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB3_43
# BB#32:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-36(%rbp), %eax
	movq	markdata, %rcx
	cmpl	36(%rcx), %eax
	jl	.LBB3_43
# BB#33:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB3_43
# BB#34:                                # %if.then.75
                                        #   in Loop: Header=BB3_29 Depth=1
	cmpl	$0, pastefont
	je	.LBB3_36
# BB#35:                                # %if.then.77
                                        #   in Loop: Header=BB3_29 Depth=1
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -78(%rbp)
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -77(%rbp)
.LBB3_36:                               # %if.end.84
                                        #   in Loop: Header=BB3_29 Depth=1
	movb	-80(%rbp), %al
	movq	-24(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	movzbl	-80(%rbp), %esi
	cmpl	%esi, %edx
	jne	.LBB3_41
# BB#37:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movzbl	-79(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_41
# BB#38:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	-78(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_41
# BB#39:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movzbl	-77(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_41
# BB#40:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %ecx
	movzbl	-76(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB3_42
.LBB3_41:                               # %if.then.119
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB3_52
.LBB3_42:                               # %if.end.120
                                        #   in Loop: Header=BB3_29 Depth=1
	jmp	.LBB3_50
.LBB3_43:                               # %if.else.121
                                        #   in Loop: Header=BB3_29 Depth=1
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %esi
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	cmpl	%edi, %esi
	jne	.LBB3_48
# BB#44:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB3_48
# BB#45:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB3_48
# BB#46:                                # %land.lhs.true.152
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB3_48
# BB#47:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB3_49
.LBB3_48:                               # %if.then.170
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB3_52
.LBB3_49:                               # %if.end.171
                                        #   in Loop: Header=BB3_29 Depth=1
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.172
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_29
.LBB3_51:                               # %while.end.173
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB3_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	MarkRewrite, .Lfunc_end3-MarkRewrite
	.cfi_endproc

	.globl	GetHistory
	.align	16, 0x90
	.type	GetHistory,@function
GetHistory:                             # @GetHistory
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
	subq	$96, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	movq	fore, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movq	fore, %rax
	cmpl	32(%rax), %ecx
	jl	.LBB4_4
# BB#3:                                 # %if.then
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -24(%rbp)
.LBB4_4:                                # %if.end
	movq	fore, %rax
	movl	44(%rax), %ecx
	movq	fore, %rax
	addl	10860(%rax), %ecx
	movl	%ecx, -28(%rbp)
# BB#5:                                 # %do.body.5
	jmp	.LBB4_6
.LBB4_6:                                # %do.end.6
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB4_8
# BB#7:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-28(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-56(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB4_9:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movslq	-16(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jl	.LBB4_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	cmpl	$32, %edx
	je	.LBB4_13
# BB#12:                                # %if.then.19
	jmp	.LBB4_15
.LBB4_13:                               # %if.end.20
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_10
.LBB4_15:                               # %for.end
	jmp	.LBB4_16
.LBB4_16:                               # %do.body.21
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.22
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB4_18:                               # %for.cond.24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
	cmpl	$0, -20(%rbp)
	jl	.LBB4_35
# BB#19:                                # %for.body.27
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-20(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB4_21
# BB#20:                                # %cond.true.31
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-20(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-72(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_22
.LBB4_21:                               # %cond.false.39
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-20(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB4_22:                               # %cond.end.45
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB4_24
# BB#23:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_18 Depth=1
	movslq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	movl	-12(%rbp), %esi
	callq	eq
	cmpl	$0, %eax
	je	.LBB4_33
.LBB4_24:                               # %if.then.53
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -8(%rbp)
	movl	-8(%rbp), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.LBB4_25:                               # %for.cond.59
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB4_30
# BB#26:                                # %for.body.62
                                        #   in Loop: Header=BB4_25 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %edx
	cmpl	$32, %edx
	je	.LBB4_28
# BB#27:                                # %if.then.67
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_30
.LBB4_28:                               # %if.end.68
                                        #   in Loop: Header=BB4_25 Depth=2
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc.69
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_25
.LBB4_30:                               # %for.end.71
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB4_32
# BB#31:                                # %if.then.74
	jmp	.LBB4_35
.LBB4_32:                               # %if.end.75
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.76
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc.77
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_18
.LBB4_35:                               # %for.end.79
	cmpl	$0, -20(%rbp)
	jge	.LBB4_37
# BB#36:                                # %if.then.82
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_37:                               # %if.end.83
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	$0, 304(%rax)
	je	.LBB4_39
# BB#38:                                # %if.then.85
	movq	display, %rax
	movq	8(%rax), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB4_39:                               # %if.end.88
	movl	-8(%rbp), %eax
	subl	-24(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc
	movq	display, %rdi
	movq	8(%rdi), %rdi
	movq	%rax, 304(%rdi)
	cmpq	$0, %rax
	jne	.LBB4_41
# BB#40:                                # %if.then.98
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	LMsg
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_41:                               # %if.end.99
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movslq	-8(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rdx
	addq	$1, %rdx
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movq	304(%rcx), %rsi
	movl	-8(%rbp), %eax
	subl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	bcopy
	movl	-8(%rbp), %eax
	subl	-24(%rbp), %eax
	addl	$1, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 312(%rcx)
	movq	fore, %rcx
	movl	48(%rcx), %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 316(%rcx)
	movl	$1, -4(%rbp)
.LBB4_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	GetHistory, .Lfunc_end4-GetHistory
	.cfi_endproc

	.align	16, 0x90
	.type	eq,@function
eq:                                     # @eq
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_11
.LBB5_2:                                # %if.end
	cmpl	$0, -8(%rbp)
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB5_5
.LBB5_4:                                # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB5_11
.LBB5_5:                                # %if.end.4
	cmpl	$57, -8(%rbp)
	jg	.LBB5_10
# BB#6:                                 # %land.lhs.true
	cmpl	$48, -8(%rbp)
	jl	.LBB5_10
# BB#7:                                 # %land.lhs.true.7
	cmpl	$57, -12(%rbp)
	jg	.LBB5_10
# BB#8:                                 # %land.lhs.true.9
	cmpl	$48, -12(%rbp)
	jl	.LBB5_10
# BB#9:                                 # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB5_11
.LBB5_10:                               # %if.end.12
	movl	$0, -4(%rbp)
.LBB5_11:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	eq, .Lfunc_end5-eq
	.cfi_endproc

	.globl	MarkRoutine
	.align	16, 0x90
	.type	MarkRoutine,@function
MarkRoutine:                            # @MarkRoutine
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
# BB#1:                                 # %do.body
	jmp	.LBB6_2
.LBB6_2:                                # %do.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body.1
	jmp	.LBB6_4
.LBB6_4:                                # %do.end.2
	movl	$400, %edi              # imm = 0x190
	movabsq	$MarkLf, %rsi
	movl	$1, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then
	jmp	.LBB6_9
.LBB6_6:                                # %if.end
	movq	fore, %rax
	movl	48(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 24(%rax)
	movq	flayer, %rax
	movl	$1, 68(%rax)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, markdata
	movq	display, %rax
	movq	8(%rax), %rax
	movq	markdata, %rdx
	movq	%rax, 8(%rdx)
	movq	fore, %rax
	movq	markdata, %rdx
	movq	%rax, (%rdx)
	movq	markdata, %rax
	movl	$0, 32(%rax)
	movq	markdata, %rax
	movl	$0, 48(%rax)
	movq	markdata, %rax
	movl	$0, 52(%rax)
	movq	markdata, %rax
	movl	$0, 56(%rax)
	movq	markdata, %rax
	movl	$0, 44(%rax)
	movq	markdata, %rax
	movl	$0, 36(%rax)
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movq	markdata, %rax
	movl	%ecx, 40(%rax)
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	movl	%ecx, 60(%rax)
	movq	fore, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	fore, %rax
	movl	44(%rax), %ecx
	movq	markdata, %rax
	addl	60(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %ecx
	movq	fore, %rax
	cmpl	32(%rax), %ecx
	jl	.LBB6_8
# BB#7:                                 # %if.then.10
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB6_8:                                # %if.end.14
	movq	flayer, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	-8(%rbp), %edx
	addl	$1, %edx
	movq	markdata, %rcx
	subl	60(%rcx), %edx
	movq	fore, %rcx
	movl	10860(%rcx), %r8d
	movq	fore, %rcx
	movl	32(%rcx), %r9d
	movq	fore, %rcx
	movl	36(%rcx), %r10d
	movl	%edx, -12(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-12(%rbp), %ecx         # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	LMsg
	movl	-4(%rbp), %ecx
	movq	markdata, %rsi
	movl	%ecx, 24(%rsi)
	movq	markdata, %rsi
	movl	%ecx, 16(%rsi)
	movl	-8(%rbp), %ecx
	movq	markdata, %rsi
	movl	%ecx, 28(%rsi)
	movq	markdata, %rsi
	movl	%ecx, 20(%rsi)
	movl	-4(%rbp), %ecx
	movq	flayer, %rsi
	movl	%ecx, 16(%rsi)
	movl	-8(%rbp), %ecx
	movq	markdata, %rsi
	subl	60(%rsi), %ecx
	movq	flayer, %rsi
	movl	%ecx, 20(%rsi)
.LBB6_9:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	MarkRoutine, .Lfunc_end6-MarkRoutine
	.cfi_endproc

	.globl	revto
	.align	16, 0x90
	.type	revto,@function
revto:                                  # @revto
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
	subq	$16, %rsp
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	revto_line
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	revto, .Lfunc_end7-revto
	.cfi_endproc

	.globl	revto_line
	.align	16, 0x90
	.type	revto_line,@function
revto_line:                             # @revto_line
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
	subq	$160, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	fore, %rax
	movl	36(%rax), %edx
	subl	$1, %edx
	movl	%edx, -72(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.else
	movl	-4(%rbp), %eax
	movq	fore, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB8_4
# BB#3:                                 # %if.then.4
	movq	fore, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.8
	cmpl	$0, -8(%rbp)
	jge	.LBB8_7
# BB#6:                                 # %if.then.10
	movl	$0, -8(%rbp)
	jmp	.LBB8_10
.LBB8_7:                                # %if.else.11
	movl	-8(%rbp), %eax
	movq	fore, %rcx
	movl	10860(%rcx), %edx
	movq	fore, %rcx
	addl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB8_9
# BB#8:                                 # %if.then.16
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	fore, %rax
	addl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -8(%rbp)
.LBB8_9:                                # %if.end.22
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.23
	movq	markdata, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	markdata, %rax
	movl	20(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	-8(%rbp), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	jge	.LBB8_12
# BB#11:                                # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-8(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false
	movl	-8(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB8_13:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movl	-8(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB8_21
# BB#14:                                # %land.lhs.true
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB8_21
# BB#15:                                # %land.lhs.true.35
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB8_18
# BB#16:                                # %cond.true.38
	movslq	-4(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB8_21
# BB#17:                                # %land.lhs.true.43
	movslq	-4(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB8_19
	jmp	.LBB8_21
.LBB8_18:                               # %cond.false.49
	movslq	-4(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB8_21
.LBB8_19:                               # %land.lhs.true.56
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_21
# BB#20:                                # %if.then.60
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB8_21:                               # %if.end.61
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB8_29
# BB#22:                                # %land.lhs.true.64
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB8_29
# BB#23:                                # %land.lhs.true.68
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB8_26
# BB#24:                                # %cond.true.73
	movslq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB8_29
# BB#25:                                # %land.lhs.true.80
	movslq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB8_27
	jmp	.LBB8_29
.LBB8_26:                               # %cond.false.87
	movslq	-16(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB8_29
.LBB8_27:                               # %land.lhs.true.95
	cmpl	$0, -4(%rbp)
	je	.LBB8_29
# BB#28:                                # %if.then.96
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
.LBB8_29:                               # %if.end.97
	movl	-4(%rbp), %eax
	movq	markdata, %rcx
	movl	%eax, 16(%rcx)
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	movl	%eax, 20(%rcx)
	movl	$0, -76(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB8_32
# BB#30:                                # %land.lhs.true.102
	movl	-12(%rbp), %eax
	movq	fore, %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB8_32
# BB#31:                                # %if.then.107
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB8_38
.LBB8_32:                               # %if.else.110
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	cmpl	60(%rcx), %eax
	jge	.LBB8_34
# BB#33:                                # %if.then.114
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB8_37
.LBB8_34:                               # %if.else.117
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	movl	60(%rcx), %edx
	movq	fore, %rcx
	movl	36(%rcx), %esi
	subl	$1, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB8_36
# BB#35:                                # %if.then.125
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movq	fore, %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -76(%rbp)
.LBB8_36:                               # %if.end.132
	jmp	.LBB8_37
.LBB8_37:                               # %if.end.133
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.134
	cmpl	$0, -76(%rbp)
	jle	.LBB8_40
# BB#39:                                # %if.then.137
	movl	-76(%rbp), %edi
	callq	MarkScrollUpDisplay
	movl	-72(%rbp), %edi
	subl	%eax, %edi
	movl	%edi, -72(%rbp)
	jmp	.LBB8_43
.LBB8_40:                               # %if.else.139
	cmpl	$0, -76(%rbp)
	jge	.LBB8_42
# BB#41:                                # %if.then.142
	xorl	%eax, %eax
	subl	-76(%rbp), %eax
	movl	%eax, %edi
	callq	MarkScrollDownDisplay
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB8_42:                               # %if.end.146
	jmp	.LBB8_43
.LBB8_43:                               # %if.end.147
	movq	markdata, %rax
	cmpl	$0, 32(%rax)
	jne	.LBB8_45
# BB#44:                                # %if.then.150
	movl	-4(%rbp), %eax
	movq	flayer, %rcx
	movl	%eax, 16(%rcx)
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movq	flayer, %rcx
	movl	%eax, 20(%rcx)
	movq	flayer, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
	jmp	.LBB8_112
.LBB8_45:                               # %if.end.155
	movq	markdata, %rax
	movl	24(%rax), %ecx
	movq	markdata, %rax
	movl	28(%rax), %edx
	movq	fore, %rax
	imull	32(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	fore, %rax
	imull	32(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	fore, %rax
	imull	32(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movl	-48(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	jle	.LBB8_47
# BB#46:                                # %if.then.169
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_48
.LBB8_47:                               # %if.else.170
	movl	-48(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_48:                               # %if.end.171
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB8_50
# BB#49:                                # %if.then.174
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB8_50:                               # %if.end.177
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_52
# BB#51:                                # %if.then.180
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB8_52:                               # %if.end.182
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB8_54
# BB#53:                                # %if.then.185
	movl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_55
.LBB8_54:                               # %if.else.186
	movl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB8_55:                               # %if.end.187
	movl	-28(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB8_57
# BB#56:                                # %if.then.192
	movl	-68(%rbp), %eax
	subl	-80(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	imull	32(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB8_57:                               # %if.end.198
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_59
# BB#58:                                # %cond.true.202
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-28(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-128(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_60
.LBB8_59:                               # %cond.false.210
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB8_60:                               # %cond.end.216
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -32(%rbp)
.LBB8_61:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_72 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB8_111
# BB#62:                                # %for.body
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	movq	fore, %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB8_67
# BB#63:                                # %if.then.224
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	$0, -24(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_65
# BB#64:                                # %cond.true.230
                                        #   in Loop: Header=BB8_61 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-28(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-144(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	jmp	.LBB8_66
.LBB8_65:                               # %cond.false.238
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-28(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB8_66:                               # %cond.end.244
                                        #   in Loop: Header=BB8_61 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
.LBB8_67:                               # %if.end.246
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB8_69
# BB#68:                                # %if.then.249
	jmp	.LBB8_111
.LBB8_69:                               # %if.end.250
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB8_71
# BB#70:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_61 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB8_78
.LBB8_71:                               # %if.then.255
                                        #   in Loop: Header=BB8_61 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	fore, %rcx
	movslq	32(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	fore, %rax
	movl	32(%rax), %edx
	movl	%edx, -64(%rbp)
.LBB8_72:                               # %for.cond.261
                                        #   Parent Loop BB8_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -64(%rbp)
	jl	.LBB8_77
# BB#73:                                # %for.body.264
                                        #   in Loop: Header=BB8_72 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB8_75
# BB#74:                                # %if.then.268
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_77
.LBB8_75:                               # %if.end.269
                                        #   in Loop: Header=BB8_72 Depth=2
	jmp	.LBB8_76
.LBB8_76:                               # %for.inc
                                        #   in Loop: Header=BB8_72 Depth=2
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB8_72
.LBB8_77:                               # %for.end
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_78
.LBB8_78:                               # %if.end.271
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB8_109
# BB#79:                                # %land.lhs.true.274
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	movq	markdata, %rcx
	cmpl	36(%rcx), %eax
	jl	.LBB8_109
# BB#80:                                # %land.lhs.true.277
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	movq	markdata, %rcx
	cmpl	40(%rcx), %eax
	jg	.LBB8_109
# BB#81:                                # %if.then.280
                                        #   in Loop: Header=BB8_61 Depth=1
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB8_84
# BB#82:                                # %cond.true.285
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB8_88
# BB#83:                                # %land.lhs.true.292
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB8_85
	jmp	.LBB8_88
.LBB8_84:                               # %cond.false.299
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB8_88
.LBB8_85:                               # %if.then.307
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB8_87
# BB#86:                                # %if.then.310
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
.LBB8_87:                               # %if.end.312
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
.LBB8_88:                               # %if.end.315
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB8_93
# BB#89:                                # %land.lhs.true.318
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB8_93
# BB#90:                                # %if.then.321
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	mchar_so, %eax
	movl	%eax, -104(%rbp)
	movw	mchar_so+4, %cx
	movw	%cx, -100(%rbp)
	cmpl	$0, pastefont
	je	.LBB8_92
# BB#91:                                # %if.then.323
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -102(%rbp)
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -101(%rbp)
.LBB8_92:                               # %if.end.331
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -104(%rbp)
	jmp	.LBB8_96
.LBB8_93:                               # %if.else.336
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_94
.LBB8_94:                               # %do.body
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -104(%rbp)
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -103(%rbp)
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -102(%rbp)
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -101(%rbp)
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -100(%rbp)
	movb	$0, -99(%rbp)
# BB#95:                                # %do.end
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_96
.LBB8_96:                               # %if.end.355
                                        #   in Loop: Header=BB8_61 Depth=1
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB8_99
# BB#97:                                # %cond.true.360
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB8_102
# BB#98:                                # %land.lhs.true.368
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB8_101
	jmp	.LBB8_102
.LBB8_99:                               # %cond.false.376
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB8_102
# BB#100:                               # %land.lhs.true.384
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB8_102
.LBB8_101:                              # %if.then.392
                                        #   in Loop: Header=BB8_61 Depth=1
	leaq	-104(%rbp), %rsi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	(%rdx,%rcx), %dil
	movb	%dil, -99(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %ecx
	callq	LPutChar
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB8_102:                              # %if.end.401
                                        #   in Loop: Header=BB8_61 Depth=1
	leaq	-104(%rbp), %rsi
	movq	flayer, %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %ecx
	callq	LPutChar
	movq	fore, %rsi
	cmpl	$8, 48(%rsi)
	jne	.LBB8_105
# BB#103:                               # %cond.true.408
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB8_108
# BB#104:                               # %land.lhs.true.416
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB8_107
	jmp	.LBB8_108
.LBB8_105:                              # %cond.false.424
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB8_108
# BB#106:                               # %land.lhs.true.432
                                        #   in Loop: Header=BB8_61 Depth=1
	movslq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB8_108
.LBB8_107:                              # %if.then.440
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB8_108:                              # %if.end.442
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_109
.LBB8_109:                              # %if.end.443
                                        #   in Loop: Header=BB8_61 Depth=1
	jmp	.LBB8_110
.LBB8_110:                              # %for.inc.444
                                        #   in Loop: Header=BB8_61 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_61
.LBB8_111:                              # %for.end.447
	movl	-4(%rbp), %eax
	movq	flayer, %rcx
	movl	%eax, 16(%rcx)
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movq	flayer, %rcx
	movl	%eax, 20(%rcx)
	movq	flayer, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
.LBB8_112:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	revto_line, .Lfunc_end8-revto_line
	.cfi_endproc

	.align	16, 0x90
	.type	MarkScrollUpDisplay,@function
MarkScrollUpDisplay:                    # @MarkScrollUpDisplay
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
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB9_2
.LBB9_2:                                # %do.end
	cmpl	$0, -8(%rbp)
	jg	.LBB9_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_4:                                # %if.end
	movl	-8(%rbp), %eax
	movq	fore, %rcx
	movl	10860(%rcx), %edx
	movq	markdata, %rcx
	subl	60(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB9_6
# BB#5:                                 # %if.then.2
	movq	fore, %rax
	movl	10860(%rax), %ecx
	movq	markdata, %rax
	subl	60(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB9_6:                                # %if.end.6
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	addl	60(%rcx), %eax
	movl	%eax, 60(%rcx)
	movl	-8(%rbp), %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB9_8
# BB#7:                                 # %cond.true
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
	movq	flayer, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
.LBB9_9:                                # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)
	movq	flayer, %rdi
	movl	-12(%rbp), %esi
	movq	flayer, %rdx
	movl	12(%rdx), %eax
	subl	$1, %eax
	movl	%ecx, %edx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-20(%rbp), %r8d         # 4-byte Reload
	callq	LScrollV
.LBB9_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB9_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	-12(%rbp), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	8(%rax), %edi
	subl	$1, %edi
	movl	%edi, -24(%rbp)         # 4-byte Spill
	movl	%edx, %edi
	movl	-24(%rbp), %edx         # 4-byte Reload
	callq	MarkRedisplayLine
	jmp	.LBB9_10
.LBB9_12:                               # %while.end
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	MarkScrollUpDisplay, .Lfunc_end9-MarkScrollUpDisplay
	.cfi_endproc

	.align	16, 0x90
	.type	MarkScrollDownDisplay,@function
MarkScrollDownDisplay:                  # @MarkScrollDownDisplay
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
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB10_2
.LBB10_2:                               # %do.end
	cmpl	$0, -8(%rbp)
	jg	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_4:                               # %if.end
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	cmpl	60(%rcx), %eax
	jle	.LBB10_6
# BB#5:                                 # %if.then.2
	movq	markdata, %rax
	movl	60(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB10_6:                               # %if.end.4
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	movl	60(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 60(%rcx)
	movl	-8(%rbp), %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB10_8
# BB#7:                                 # %cond.true
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false
	movq	flayer, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
.LBB10_9:                               # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)
	movq	flayer, %rdi
	movl	%ecx, %eax
	subl	-12(%rbp), %eax
	movq	fore, %rdx
	movl	36(%rdx), %esi
	subl	$1, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-24(%rbp), %r8d         # 4-byte Reload
	callq	LScrollV
.LBB10_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB10_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB10_10 Depth=1
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	-12(%rbp), %edi
	movq	flayer, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	callq	MarkRedisplayLine
	jmp	.LBB10_10
.LBB10_12:                              # %while.end
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	MarkScrollDownDisplay, .Lfunc_end10-MarkScrollDownDisplay
	.cfi_endproc

	.globl	MakePaster
	.align	16, 0x90
	.type	MakePaster,@function
MakePaster:                             # @MakePaster
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	FreePaster
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 16(%rsi)
	cmpl	$0, -24(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_2:                               # %if.end
	movq	flayer, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	DoProcess
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	MakePaster, .Lfunc_end11-MakePaster
	.cfi_endproc

	.globl	FreePaster
	.align	16, 0x90
	.type	FreePaster,@function
FreePaster:                             # @FreePaster
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	evdeq
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	FreePaster, .Lfunc_end12-FreePaster
	.cfi_endproc

	.align	16, 0x90
	.type	nextchar,@function
nextchar:                               # @nextchar
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
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movb	%al, -29(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB13_2
.LBB13_2:                               # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	fore, %rax
	movl	32(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	jge	.LBB13_4
# BB#3:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movq	fore, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-72(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	fore, %rax
	subl	10860(%rax), %ecx
	movslq	%ecx, %rax
	movq	fore, %rdx
	imulq	$40, %rax, %rax
	addq	9864(%rdx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB13_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	subl	$70, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	je	.LBB13_9
	jmp	.LBB13_31
.LBB13_31:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB13_8
	jmp	.LBB13_32
.LBB13_32:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB13_7
	jmp	.LBB13_33
.LBB13_33:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jne	.LBB13_10
	jmp	.LBB13_6
.LBB13_6:                               # %sw.bb
	movl	$-1, -52(%rbp)
.LBB13_7:                               # %sw.bb.5
	movl	$1, -48(%rbp)
	jmp	.LBB13_13
.LBB13_8:                               # %sw.bb.6
	movl	$1, -52(%rbp)
.LBB13_9:                               # %sw.bb.7
	movl	$-1, -48(%rbp)
	jmp	.LBB13_13
.LBB13_10:                              # %sw.default
	jmp	.LBB13_11
.LBB13_11:                              # %do.body.8
	jmp	.LBB13_12
.LBB13_12:                              # %do.end.9
	jmp	.LBB13_13
.LBB13_13:                              # %sw.epilog
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
# BB#14:                                # %do.body.11
	jmp	.LBB13_15
.LBB13_15:                              # %do.end.12
	jmp	.LBB13_16
.LBB13_16:                              # %do.body.13
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.14
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.15
	jmp	.LBB13_19
.LBB13_19:                              # %do.end.16
	jmp	.LBB13_20
.LBB13_20:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -101(%rbp)         # 1-byte Spill
	jl	.LBB13_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	setle	%cl
	movb	%cl, -101(%rbp)         # 1-byte Spill
.LBB13_22:                              # %land.end
                                        #   in Loop: Header=BB13_20 Depth=1
	movb	-101(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_23
	jmp	.LBB13_29
.LBB13_23:                              # %for.body
                                        #   in Loop: Header=BB13_20 Depth=1
	movslq	-44(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movsbl	-29(%rbp), %esi
	cmpl	%esi, %edx
	jne	.LBB13_27
# BB#24:                                # %if.then
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jne	.LBB13_26
# BB#25:                                # %if.then.26
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB13_30
.LBB13_26:                              # %if.end
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_27
.LBB13_27:                              # %if.end.28
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_28
.LBB13_28:                              # %for.inc
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_20
.LBB13_29:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB13_30:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	nextchar, .Lfunc_end13-nextchar
	.cfi_endproc

	.align	16, 0x90
	.type	linestart,@function
linestart:                              # @linestart
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
	movl	%edi, -4(%rbp)
	movq	markdata, %rax
	movl	36(%rax), %edi
	movl	%edi, -8(%rbp)
	movl	-4(%rbp), %edi
	movq	fore, %rax
	cmpl	10860(%rax), %edi
	jge	.LBB14_2
# BB#1:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-4(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-24(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movl	-4(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	-8(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movq	fore, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB14_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	cmpl	$32, %edx
	je	.LBB14_7
# BB#6:                                 # %if.then
	jmp	.LBB14_9
.LBB14_7:                               # %if.end
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_8
.LBB14_8:                               # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB14_4
.LBB14_9:                               # %for.end
	movl	-8(%rbp), %eax
	movq	fore, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB14_11
# BB#10:                                # %if.then.14
	movq	markdata, %rax
	movl	36(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB14_11:                              # %if.end.16
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	linestart, .Lfunc_end14-linestart
	.cfi_endproc

	.align	16, 0x90
	.type	lineend,@function
lineend:                                # @lineend
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
	movl	%edi, -4(%rbp)
	movq	markdata, %rax
	movl	40(%rax), %edi
	movl	%edi, -8(%rbp)
	movl	-4(%rbp), %edi
	movq	fore, %rax
	cmpl	10860(%rax), %edi
	jge	.LBB15_2
# BB#1:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-4(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-24(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	movl	-4(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB15_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	-8(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	.LBB15_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	cmpl	$32, %edx
	je	.LBB15_7
# BB#6:                                 # %if.then
	jmp	.LBB15_9
.LBB15_7:                               # %if.end
                                        #   in Loop: Header=BB15_4 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB15_4
.LBB15_9:                               # %for.end
	cmpl	$0, -8(%rbp)
	jge	.LBB15_11
# BB#10:                                # %if.then.10
	movq	markdata, %rax
	movl	36(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB15_11:                              # %if.end.11
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	lineend, .Lfunc_end15-lineend
	.cfi_endproc

	.align	16, 0x90
	.type	nextword,@function
nextword:                               # @nextword
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
	subq	$112, %rsp
	movl	$1, %eax
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	fore, %rsi
	movl	32(%rsi), %ecx
	movl	%ecx, -28(%rbp)
	movq	fore, %rsi
	movl	10860(%rsi), %ecx
	movq	fore, %rsi
	addl	36(%rsi), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, -52(%rbp)
	movl	-20(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	cmovnel	%r8d, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB16_3:                               # %if.end
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB16_5
# BB#4:                                 # %cond.true
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-52(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-72(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB16_6:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movl	$-1, -40(%rbp)
.LBB16_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB16_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB16_10
.LBB16_9:                               # %if.then.16
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB16_14
.LBB16_10:                              # %if.else
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB16_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB16_7 Depth=1
	movslq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB16_13
.LBB16_12:                              # %if.else.24
                                        #   in Loop: Header=BB16_7 Depth=1
	movslq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	is_letter
	movl	%eax, -44(%rbp)
.LBB16_13:                              # %if.end.29
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_14
.LBB16_14:                              # %if.end.30
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -40(%rbp)
	jl	.LBB16_28
# BB#15:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB16_28
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB16_18
# BB#17:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB16_19
.LBB16_18:                              # %if.then.42
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB16_20
.LBB16_19:                              # %if.else.43
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB16_20:                              # %if.end.45
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB16_22
# BB#21:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB16_24
.LBB16_22:                              # %lor.lhs.false.50
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB16_27
# BB#23:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB16_27
.LBB16_24:                              # %if.then.55
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jg	.LBB16_26
# BB#25:                                # %if.then.58
	jmp	.LBB16_45
.LBB16_26:                              # %if.end.59
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_27
.LBB16_27:                              # %if.end.60
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_28
.LBB16_28:                              # %if.end.61
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB16_35
# BB#29:                                # %if.then.64
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	$-1, -48(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	-32(%rbp), %eax
	jl	.LBB16_31
# BB#30:                                # %if.then.67
	jmp	.LBB16_45
.LBB16_31:                              # %if.end.68
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB16_33
# BB#32:                                # %cond.true.72
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-52(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-88(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jmp	.LBB16_34
.LBB16_33:                              # %cond.false.80
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB16_34:                              # %cond.end.86
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB16_43
.LBB16_35:                              # %if.else.88
                                        #   in Loop: Header=BB16_7 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB16_42
# BB#36:                                # %if.then.91
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jge	.LBB16_38
# BB#37:                                # %if.then.95
	jmp	.LBB16_45
.LBB16_38:                              # %if.end.96
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB16_40
# BB#39:                                # %cond.true.100
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-52(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-104(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_41
.LBB16_40:                              # %cond.false.108
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB16_41:                              # %cond.end.114
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB16_42:                              # %if.end.116
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_43
.LBB16_43:                              # %if.end.117
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_44
.LBB16_44:                              # %for.inc
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB16_7
.LBB16_45:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	nextword, .Lfunc_end16-nextword
	.cfi_endproc

	.align	16, 0x90
	.type	rem,@function
rem:                                    # @rem
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
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	$0, -64(%rbp)
	movq	markdata, %r9
	movl	$0, 32(%r9)
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB17_3
# BB#1:                                 # %lor.lhs.false
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB17_4
# BB#2:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB17_4
.LBB17_3:                               # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_4:                               # %if.end
	movl	-8(%rbp), %eax
	movq	markdata, %rcx
	subl	60(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB17_8
# BB#5:                                 # %land.lhs.true.4
	cmpq	$0, -32(%rbp)
	jne	.LBB17_8
# BB#6:                                 # %land.lhs.true.6
	cmpl	$0, -56(%rbp)
	jge	.LBB17_8
# BB#7:                                 # %if.then.8
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -56(%rbp)
.LBB17_8:                               # %if.end.10
	jmp	.LBB17_9
.LBB17_9:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_23 Depth 2
                                        #     Child Loop BB17_47 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB17_91
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$2, -20(%rbp)
	je	.LBB17_14
# BB#11:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB17_14
# BB#12:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB17_14
# BB#13:                                # %if.then.17
	jmp	.LBB17_91
.LBB17_14:                              # %if.end.18
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB17_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-40(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-120(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_17
.LBB17_16:                              # %cond.false
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB17_17:                              # %cond.end
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB17_19
# BB#18:                                # %cond.true.26
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB17_20
.LBB17_19:                              # %cond.false.27
                                        #   in Loop: Header=BB17_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB17_20
.LBB17_20:                              # %cond.end.28
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	markdata, %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB17_22
# BB#21:                                # %if.then.31
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	markdata, %rax
	movl	36(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB17_22:                              # %if.end.33
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	fore, %rax
	movl	32(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
.LBB17_23:                              # %for.cond.34
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -52(%rbp)
	jl	.LBB17_28
# BB#24:                                # %for.body.36
                                        #   in Loop: Header=BB17_23 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	cmpl	$32, %edx
	je	.LBB17_26
# BB#25:                                # %if.then.39
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_28
.LBB17_26:                              # %if.end.40
                                        #   in Loop: Header=BB17_23 Depth=2
	jmp	.LBB17_27
.LBB17_27:                              # %for.inc
                                        #   in Loop: Header=BB17_23 Depth=2
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_23
.LBB17_28:                              # %for.end
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB17_31
# BB#29:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB17_31
# BB#30:                                # %if.then.46
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB17_31:                              # %if.end.47
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-52(%rbp), %eax
	movq	markdata, %rcx
	cmpl	40(%rcx), %eax
	jle	.LBB17_33
# BB#32:                                # %if.then.50
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	markdata, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB17_33:                              # %if.end.52
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$1, -20(%rbp)
	jne	.LBB17_38
# BB#34:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB17_38
# BB#35:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB17_38
# BB#36:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB17_38
# BB#37:                                # %if.then.64
                                        #   in Loop: Header=BB17_9 Depth=1
	xorl	%ecx, %ecx
	movl	-56(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	MarkRedisplayLine
.LBB17_38:                              # %if.end.65
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$2, -20(%rbp)
	je	.LBB17_41
# BB#39:                                # %land.lhs.true.68
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB17_41
# BB#40:                                # %if.then.71
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_90
.LBB17_41:                              # %if.end.72
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	fore, %rcx
	cmpl	$8, 48(%rcx)
	jne	.LBB17_44
# BB#42:                                # %cond.true.76
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB17_46
# BB#43:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB17_45
	jmp	.LBB17_46
.LBB17_44:                              # %cond.false.90
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB17_46
.LBB17_45:                              # %if.then.97
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
.LBB17_46:                              # %if.end.99
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movl	$0, -92(%rbp)
.LBB17_47:                              # %for.cond.108
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB17_65
# BB#48:                                # %for.body.111
                                        #   in Loop: Header=BB17_47 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -84(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -88(%rbp)
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB17_54
# BB#49:                                # %if.then.122
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-84(%rbp), %eax
	shll	$8, %eax
	movl	-88(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$65535, -60(%rbp)       # imm = 0xFFFF
	jne	.LBB17_51
# BB#50:                                # %if.then.127
                                        #   in Loop: Header=BB17_47 Depth=2
	jmp	.LBB17_64
.LBB17_51:                              # %if.end.128
                                        #   in Loop: Header=BB17_47 Depth=2
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	ToUtf8_comb
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_53
# BB#52:                                # %if.then.130
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
.LBB17_53:                              # %if.end.133
                                        #   in Loop: Header=BB17_47 Depth=2
	jmp	.LBB17_64
.LBB17_54:                              # %if.end.134
                                        #   in Loop: Header=BB17_47 Depth=2
	cmpl	$0, -84(%rbp)
	je	.LBB17_57
# BB#55:                                # %land.lhs.true.136
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-84(%rbp), %eax
	andl	$96, %eax
	cmpl	$0, %eax
	jne	.LBB17_57
# BB#56:                                # %if.then.140
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rcx), %esi
	orl	%esi, %eax
	movl	%eax, -60(%rbp)
	movq	-104(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB17_57:                              # %if.end.146
                                        #   in Loop: Header=BB17_47 Depth=2
	cmpl	$0, pastefont
	je	.LBB17_61
# BB#58:                                # %if.then.148
                                        #   in Loop: Header=BB17_47 Depth=2
	leaq	-92(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	-84(%rbp), %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	fore, %rsi
	movl	48(%rsi), %edx
	movl	%eax, %esi
	callq	EncodeChar
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_60
# BB#59:                                # %if.then.156
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
.LBB17_60:                              # %if.end.159
                                        #   in Loop: Header=BB17_47 Depth=2
	jmp	.LBB17_64
.LBB17_61:                              # %if.end.160
                                        #   in Loop: Header=BB17_47 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB17_63
# BB#62:                                # %if.then.162
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
.LBB17_63:                              # %if.end.165
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB17_64:                              # %for.inc.167
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_47
.LBB17_65:                              # %for.end.169
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$0, pastefont
	je	.LBB17_70
# BB#66:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB17_70
# BB#67:                                # %if.then.174
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_69
# BB#68:                                # %if.then.176
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-32(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -32(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB17_69:                              # %if.end.179
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -64(%rbp)
.LBB17_70:                              # %if.end.181
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB17_89
# BB#71:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-52(%rbp), %eax
	movq	fore, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB17_73
# BB#72:                                # %lor.lhs.false.190
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$32, %eax
	jne	.LBB17_89
.LBB17_73:                              # %if.then.198
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	markdata(%rip), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	ja	.LBB17_88
# BB#92:                                # %if.then.198
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_74:                              # %sw.bb
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_76
# BB#75:                                # %if.then.200
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$13, (%rax)
.LBB17_76:                              # %if.end.202
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, join_with_cr
	je	.LBB17_80
# BB#77:                                # %if.then.205
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_79
# BB#78:                                # %if.then.207
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$10, (%rax)
.LBB17_79:                              # %if.end.209
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB17_80:                              # %if.end.211
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_88
.LBB17_81:                              # %sw.bb.212
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_88
.LBB17_82:                              # %sw.bb.213
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_84
# BB#83:                                # %if.then.215
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$32, (%rax)
.LBB17_84:                              # %if.end.217
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB17_88
.LBB17_85:                              # %sw.bb.219
                                        #   in Loop: Header=BB17_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_87
# BB#86:                                # %if.then.221
                                        #   in Loop: Header=BB17_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$44, (%rax)
.LBB17_87:                              # %if.end.223
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB17_88:                              # %sw.epilog
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_89
.LBB17_89:                              # %if.end.225
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_90
.LBB17_90:                              # %for.inc.226
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_9
.LBB17_91:                              # %for.end.229
	movl	-64(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rem, .Lfunc_end17-rem
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_74
	.quad	.LBB17_81
	.quad	.LBB17_82
	.quad	.LBB17_85

	.text
	.align	16, 0x90
	.type	is_letter,@function
is_letter:                              # @is_letter
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
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %edi
	cmpl	$97, %edi
	jl	.LBB18_2
# BB#1:                                 # %land.lhs.true
	movsbl	-5(%rbp), %eax
	cmpl	$122, %eax
	jle	.LBB18_14
.LBB18_2:                               # %lor.lhs.false
	movsbl	-5(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB18_4
# BB#3:                                 # %land.lhs.true.8
	movsbl	-5(%rbp), %eax
	cmpl	$90, %eax
	jle	.LBB18_14
.LBB18_4:                               # %lor.lhs.false.12
	movsbl	-5(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB18_6
# BB#5:                                 # %land.lhs.true.16
	movsbl	-5(%rbp), %eax
	cmpl	$57, %eax
	jle	.LBB18_14
.LBB18_6:                               # %lor.lhs.false.20
	movsbl	-5(%rbp), %eax
	cmpl	$95, %eax
	je	.LBB18_14
# BB#7:                                 # %lor.lhs.false.24
	movsbl	-5(%rbp), %eax
	cmpl	$46, %eax
	je	.LBB18_14
# BB#8:                                 # %lor.lhs.false.28
	movsbl	-5(%rbp), %eax
	cmpl	$64, %eax
	je	.LBB18_14
# BB#9:                                 # %lor.lhs.false.32
	movsbl	-5(%rbp), %eax
	cmpl	$58, %eax
	je	.LBB18_14
# BB#10:                                # %lor.lhs.false.36
	movsbl	-5(%rbp), %eax
	cmpl	$37, %eax
	je	.LBB18_14
# BB#11:                                # %lor.lhs.false.40
	movsbl	-5(%rbp), %eax
	cmpl	$33, %eax
	je	.LBB18_14
# BB#12:                                # %lor.lhs.false.44
	movsbl	-5(%rbp), %eax
	cmpl	$45, %eax
	je	.LBB18_14
# BB#13:                                # %lor.lhs.false.48
	movsbl	-5(%rbp), %eax
	cmpl	$43, %eax
	jne	.LBB18_15
.LBB18_14:                              # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB18_19
.LBB18_15:                              # %if.else
	movsbl	-5(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB18_17
# BB#16:                                # %if.then.55
	movl	$2, -4(%rbp)
	jmp	.LBB18_19
.LBB18_17:                              # %if.end
	jmp	.LBB18_18
.LBB18_18:                              # %if.end.56
	movl	$0, -4(%rbp)
.LBB18_19:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	is_letter, .Lfunc_end18-is_letter
	.cfi_endproc

	.type	pastefont,@object       # @pastefont
	.data
	.globl	pastefont
	.align	4
pastefont:
	.long	1                       # 0x1
	.size	pastefont, 4

	.type	MarkLf,@object          # @MarkLf
	.globl	MarkLf
	.align	8
MarkLf:
	.quad	MarkProcess
	.quad	MarkAbort
	.quad	MarkRedisplayLine
	.quad	DefClearLine
	.quad	MarkRewrite
	.quad	DefResize
	.quad	DefRestore
	.quad	0
	.size	MarkLf, 64

	.type	join_with_cr,@object    # @join_with_cr
	.bss
	.globl	join_with_cr
	.align	4
join_with_cr:
	.long	0                       # 0x0
	.size	join_with_cr, 4

	.type	compacthist,@object     # @compacthist
	.globl	compacthist
	.align	4
compacthist:
	.long	0                       # 0x0
	.size	compacthist, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Not enough memory... Sorry."
	.size	.L.str, 28

	.type	markdata,@object        # @markdata
	.local	markdata
	.comm	markdata,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Copy mode - Column %d Line %d(+%d) (%d,%d)"
	.size	.L.str.1, 43

	.type	mark_key_tab,@object    # @mark_key_tab
	.comm	mark_key_tab,256,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Column %d Line %d(+%d)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Column %d(%d..%d) Line %d(+%d)"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	":set append"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	":set noappend"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	":set nonu"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	":set nu"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Multiple lines (CR/LF)"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Multiple lines (LF)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Lines joined"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Lines joined with blanks"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Lines joined with comma"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"First mark set - Column %d Line %d"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Appended %d characters to buffer"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Copied %d characters into buffer"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Copy mode aborted"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033(B"
	.size	.L.str.17, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
