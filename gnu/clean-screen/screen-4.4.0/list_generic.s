	.text
	.file	"list_generic.bc"
	.align	16, 0x90
	.type	ListProcess,@function
ListProcess:                            # @ListProcess
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_42 Depth 2
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB0_96
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	flayer, %rax
	cmpl	$0, 80(%rax)
	jne	.LBB0_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true.2
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	addl	$-1, %esi
	movl	%esi, (%rax)
	movq	flayer, %rax
	cmpl	$0, 80(%rax)
	je	.LBB0_14
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	flayer, %rdi
	movzbl	-41(%rbp), %esi
	callq	LayProcessMouse
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB0_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
	jmp	.LBB0_1
.LBB0_9:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB0_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$-110, -41(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.15
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_12:                               # %if.end.16
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.17
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.18
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_16
# BB#15:                                # %if.then.20
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB0_96
.LBB0_16:                               # %if.end.21
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_17:                               # %processchar
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_72 Depth 3
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_97
.LBB0_97:                               # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB0_41
	jmp	.LBB0_98
.LBB0_98:                               # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB0_34
	jmp	.LBB0_99
.LBB0_99:                               # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_100
.LBB0_100:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB0_34
	jmp	.LBB0_101
.LBB0_101:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_102
.LBB0_102:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_103
.LBB0_103:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_104
.LBB0_104:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_105
.LBB0_105:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB0_20
	jmp	.LBB0_106
.LBB0_106:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$21, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB0_41
	jmp	.LBB0_107
.LBB0_107:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$27, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_108
.LBB0_108:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB0_18
	jmp	.LBB0_109
.LBB0_109:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB0_48
	jmp	.LBB0_110
.LBB0_110:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB0_61
	jmp	.LBB0_111
.LBB0_111:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$106, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_112
.LBB0_112:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB0_20
	jmp	.LBB0_113
.LBB0_113:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB0_57
	jmp	.LBB0_114
.LBB0_114:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$129, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_115
.LBB0_115:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$133, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_116
.LBB0_116:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$142, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_117
.LBB0_117:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$144, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB0_20
	jmp	.LBB0_118
.LBB0_118:                              # %processchar
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$146, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB0_65
	jmp	.LBB0_90
.LBB0_18:                               # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_19:                               # %sw.bb.23
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_20:                               # %sw.bb.24
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_22
# BB#21:                                # %if.then.27
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_22:                               # %if.end.28
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_90
.LBB0_23:                               # %sw.bb.31
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_25
# BB#24:                                # %if.then.34
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_25:                               # %if.end.35
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_90
.LBB0_26:                               # %sw.bb.38
	callq	ListAbort
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB0_96
.LBB0_27:                               # %sw.bb.39
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_90
.LBB0_28:                               # %sw.bb.41
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               # %while.cond.42
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_31
# BB#30:                                # %while.body.46
                                        #   in Loop: Header=BB0_29 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_29
.LBB0_31:                               # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, 24(%rax)
	je	.LBB0_33
# BB#32:                                # %if.then.53
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.54
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_34:                               # %sw.bb.55
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$4, %ecx
	movzbl	-41(%rbp), %edx
	cmpl	$4, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-188(%rbp), %edx        # 4-byte Reload
	sarl	%cl, %edx
	movl	%edx, -28(%rbp)
.LBB0_35:                               # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	$0, 8(%rdx)
	movb	%cl, -189(%rbp)         # 1-byte Spill
	je	.LBB0_37
# BB#36:                                # %land.rhs
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -189(%rbp)         # 1-byte Spill
.LBB0_37:                               # %land.end
                                        #   in Loop: Header=BB0_35 Depth=2
	movb	-189(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_38
	jmp	.LBB0_40
.LBB0_38:                               # %for.body
                                        #   in Loop: Header=BB0_35 Depth=2
	jmp	.LBB0_39
.LBB0_39:                               # %for.inc
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_35
.LBB0_40:                               # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_41:                               # %sw.bb.67
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$4, %ecx
	movzbl	-41(%rbp), %edx
	cmpl	$21, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-196(%rbp), %edx        # 4-byte Reload
	sarl	%cl, %edx
	movl	%edx, -28(%rbp)
.LBB0_42:                               # %for.cond.74
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	$0, 16(%rdx)
	movb	%cl, -197(%rbp)         # 1-byte Spill
	je	.LBB0_44
# BB#43:                                # %land.rhs.78
                                        #   in Loop: Header=BB0_42 Depth=2
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -197(%rbp)         # 1-byte Spill
.LBB0_44:                               # %land.end.81
                                        #   in Loop: Header=BB0_42 Depth=2
	movb	-197(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_45
	jmp	.LBB0_47
.LBB0_45:                               # %for.body.82
                                        #   in Loop: Header=BB0_42 Depth=2
	jmp	.LBB0_46
.LBB0_46:                               # %for.inc.83
                                        #   in Loop: Header=BB0_42 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_42
.LBB0_47:                               # %for.end.87
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_48:                               # %sw.bb.88
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_56
# BB#49:                                # %if.then.91
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movl	$80, %esi
	xorl	%eax, %eax
	movabsq	$glist_search, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	Input
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, %rcx
	je	.LBB0_55
# BB#50:                                # %if.then.93
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_51
.LBB0_51:                               # %for.cond.94
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_54
# BB#52:                                # %for.body.96
                                        #   in Loop: Header=BB0_51 Depth=2
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -68(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
# BB#53:                                # %for.inc.97
                                        #   in Loop: Header=BB0_51 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_51
.LBB0_54:                               # %for.end.99
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %if.end.100
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_56
.LBB0_56:                               # %if.end.101
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_57:                               # %sw.bb.102
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_60
# BB#58:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_60
# BB#59:                                # %if.then.109
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	glist_search_dir
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB0_60:                               # %if.end.113
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_61:                               # %sw.bb.114
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_64
# BB#62:                                # %land.lhs.true.118
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_64
# BB#63:                                # %if.then.121
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	glist_search_dir
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB0_64:                               # %if.end.125
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_65:                               # %sw.bb.126
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	flayer, %rax
	cmpl	$0, 80(%rax)
	je	.LBB0_88
# BB#66:                                # %if.then.130
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	flayer, %rax
	movzbl	72(%rax), %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$97, -72(%rbp)
	jne	.LBB0_68
# BB#67:                                # %if.then.135
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	$106, -41(%rbp)
	jmp	.LBB0_85
.LBB0_68:                               # %if.else.136
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpl	$96, -72(%rbp)
	jne	.LBB0_70
# BB#69:                                # %if.then.139
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	$107, -41(%rbp)
	jmp	.LBB0_84
.LBB0_70:                               # %if.else.140
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpl	$32, -72(%rbp)
	jne	.LBB0_82
# BB#71:                                # %if.then.143
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	flayer, %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB0_72:                               # %for.cond.151
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -88(%rbp)
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB0_75
# BB#73:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB0_72 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpl	$-1, 24(%rdx)
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB0_75
# BB#74:                                # %land.rhs.157
                                        #   in Loop: Header=BB0_72 Depth=3
	movq	-88(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-76(%rbp), %ecx
	setne	%dl
	movb	%dl, -209(%rbp)         # 1-byte Spill
.LBB0_75:                               # %land.end.161
                                        #   in Loop: Header=BB0_72 Depth=3
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_76
	jmp	.LBB0_78
.LBB0_76:                               # %for.body.162
                                        #   in Loop: Header=BB0_72 Depth=3
	jmp	.LBB0_77
.LBB0_77:                               # %for.inc.163
                                        #   in Loop: Header=BB0_72 Depth=3
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_72
.LBB0_78:                               # %for.end.165
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpq	$0, -88(%rbp)
	je	.LBB0_81
# BB#79:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	-88(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-76(%rbp), %ecx
	jne	.LBB0_81
# BB#80:                                # %if.then.171
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB0_81:                               # %if.end.173
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	$0, -41(%rbp)
	jmp	.LBB0_83
.LBB0_82:                               # %if.else.174
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	$0, -41(%rbp)
.LBB0_83:                               # %if.end.175
                                        #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_84
.LBB0_84:                               # %if.end.176
                                        #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_85
.LBB0_85:                               # %if.end.177
                                        #   in Loop: Header=BB0_17 Depth=2
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
	cmpb	$0, -41(%rbp)
	je	.LBB0_87
# BB#86:                                # %if.then.179
                                        #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_17
.LBB0_87:                               # %if.end.180
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_89
.LBB0_88:                               # %if.else.181
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %esi
	movq	flayer, %rdi
	callq	LayProcessMouseSwitch
.LBB0_89:                               # %if.end.182
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_90
.LBB0_90:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB0_92
# BB#91:                                # %if.then.186
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_92:                               # %if.end.187
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, 24(%rax)
	jne	.LBB0_94
# BB#93:                                # %if.then.192
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	glist_decide_top
	movq	-24(%rbp), %rdi
	callq	glist_display_all
	jmp	.LBB0_95
.LBB0_94:                               # %if.else.193
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	*%rcx
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	24(%rcx), %edx
	movq	flayer, %rcx
	movl	%edx, 20(%rcx)
	movq	flayer, %rdi
	movq	flayer, %rcx
	movl	16(%rcx), %esi
	movq	flayer, %rcx
	movl	20(%rcx), %edx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	LGotoPos
.LBB0_95:                               # %if.end.203
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_96:                               # %while.end.204
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ListProcess, .Lfunc_end0-ListProcess
	.cfi_endproc

	.align	16, 0x90
	.type	ListAbort,@function
ListAbort:                              # @ListAbort
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
# BB#1:                                 # %do.body
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
# BB#2:                                 # %do.body.1
	jmp	.LBB1_3
.LBB1_3:                                # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body.2
	jmp	.LBB1_5
.LBB1_5:                                # %do.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_6
.LBB1_9:                                # %for.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-8(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB1_10:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_13
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#12:                                # %for.inc.12
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_10
.LBB1_13:                               # %for.end.14
	movq	-16(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#14:                                # %do.end.17
	callq	ExitOverlayPage
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ListAbort, .Lfunc_end1-ListAbort
	.cfi_endproc

	.align	16, 0x90
	.type	ListRedisplayLine,@function
ListRedisplayLine:                      # @ListRedisplayLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB2_2
.LBB2_2:                                # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB2_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	glist_display_all
	jmp	.LBB2_21
.LBB2_4:                                # %if.end
	cmpl	$0, -16(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.1
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	$0, (%rsp)
	callq	LClearArea
.LBB2_6:                                # %if.end.2
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB2_9
# BB#8:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB2_21
.LBB2_9:                                # %if.else
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB2_11
# BB#10:                                # %if.then.9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB2_20
.LBB2_11:                               # %if.else.12
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB2_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB2_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$-1, 24(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB2_14:                               # %land.end
                                        #   in Loop: Header=BB2_12 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_15
	jmp	.LBB2_19
.LBB2_15:                               # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB2_17
# BB#16:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB2_19
.LBB2_17:                               # %if.end.22
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_18
.LBB2_18:                               # %for.inc
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_12
.LBB2_19:                               # %for.end
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.23
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ListRedisplayLine, .Lfunc_end2-ListRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	ListClearLine,@function
ListClearLine:                          # @ListClearLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	DefClearLine
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ListClearLine, .Lfunc_end3-ListClearLine
	.cfi_endproc

	.align	16, 0x90
	.type	ListRewrite,@function
ListRewrite:                            # @ListRewrite
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
	movl	$1000, %eax             # imm = 0x3E8
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ListRewrite, .Lfunc_end4-ListRewrite
	.cfi_endproc

	.align	16, 0x90
	.type	ListResize,@function
ListResize:                             # @ListResize
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
	cmpl	$10, -8(%rbp)
	jl	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$5, -12(%rbp)
	jge	.LBB5_3
.LBB5_2:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.end
	movl	-8(%rbp), %eax
	movq	flayer, %rcx
	movl	%eax, 8(%rcx)
	movl	-12(%rbp), %eax
	movq	flayer, %rcx
	movl	%eax, 12(%rcx)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movq	flayer, %rcx
	movl	%eax, 20(%rcx)
	movl	$0, -4(%rbp)
.LBB5_4:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ListResize, .Lfunc_end5-ListResize
	.cfi_endproc

	.align	16, 0x90
	.type	ListRestore,@function
ListRestore:                            # @ListRestore
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
	callq	DefRestore
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ListRestore, .Lfunc_end6-ListRestore
	.cfi_endproc

	.align	16, 0x90
	.type	ListFree,@function
ListFree:                               # @ListFree
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_7
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB7_5
# BB#4:                                 # %if.then.6
	callq	abort
.LBB7_5:                                # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
# BB#6:                                 # %if.end.8
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB7_7:                                # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ListFree, .Lfunc_end7-ListFree
	.cfi_endproc

	.globl	glist_display
	.align	16, 0x90
	.type	glist_display,@function
glist_display:                          # @glist_display
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
	subq	$32, %rsp
	movl	$56, %eax
	movabsq	$ListLf, %rcx
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	flayer, %rax
	movl	$1, 68(%rax)
	movq	flayer, %rax
	movl	$0, 16(%rax)
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	glist_display, .Lfunc_end8-glist_display
	.cfi_endproc

	.globl	glist_add_row
	.align	16, 0x90
	.type	glist_add_row,@function
glist_add_row:                          # @glist_add_row
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$32, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	calloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -24(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB9_3:                                # %if.end
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB9_6:                                # %if.end.15
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB9_7:                                # %if.end.17
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	glist_add_row, .Lfunc_end9-glist_add_row
	.cfi_endproc

	.globl	glist_remove_rows
	.align	16, 0x90
	.type	glist_remove_rows,@function
glist_remove_rows:                      # @glist_remove_rows
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
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	free
	jmp	.LBB10_1
.LBB10_3:                               # %for.end
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	glist_remove_rows, .Lfunc_end10-glist_remove_rows
	.cfi_endproc

	.globl	glist_display_all
	.align	16, 0x90
	.type	glist_display_all,@function
glist_display_all:                      # @glist_display_all
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
	subq	$48, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	flayer, %rdi
	callq	LClearAll
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB11_4:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB11_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB11_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-24(%rbp), %rax
	movl	$-1, 24(%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               # %for.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB11_9:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_16
# BB#10:                                # %for.body.13
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rdx
	cmpl	$0, %eax
	jne	.LBB11_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-24(%rbp), %rax
	movl	$-1, 24(%rax)
	movl	-12(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
.LBB11_12:                              # %if.end.20
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB11_14
# BB#13:                                # %if.then.22
	jmp	.LBB11_16
.LBB11_14:                              # %if.end.23
                                        #   in Loop: Header=BB11_9 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc.24
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_9
.LBB11_16:                              # %for.end.26
	jmp	.LBB11_17
.LBB11_17:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_20
# BB#18:                                # %for.body.29
                                        #   in Loop: Header=BB11_17 Depth=1
	movq	-24(%rbp), %rax
	movl	$-1, 24(%rax)
# BB#19:                                # %for.inc.31
                                        #   in Loop: Header=BB11_17 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_17
.LBB11_20:                              # %for.end.33
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB11_23
# BB#21:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, 24(%rax)
	je	.LBB11_23
# BB#22:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 20(%rax)
	jmp	.LBB11_24
.LBB11_23:                              # %if.else
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movq	flayer, %rax
	movl	%ecx, 20(%rax)
.LBB11_24:                              # %if.end.46
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	glist_display_all, .Lfunc_end11-glist_display_all
	.cfi_endproc

	.globl	glist_abort
	.align	16, 0x90
	.type	glist_abort,@function
glist_abort:                            # @glist_abort
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
	callq	ListAbort
	popq	%rbp
	retq
.Lfunc_end12:
	.size	glist_abort, .Lfunc_end12-glist_abort
	.cfi_endproc

	.align	16, 0x90
	.type	glist_search,@function
glist_search:                           # @glist_search
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, 40(%rdx)
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB13_3
# BB#2:                                 # %if.then.2
	callq	abort
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
# BB#4:                                 # %if.end
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
.LBB13_5:                               # %if.end.5
	cmpl	$0, -12(%rbp)
	jle	.LBB13_7
# BB#6:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.9
	jmp	.LBB13_27
.LBB13_8:                               # %if.end.10
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB13_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB13_12
# BB#11:                                # %if.then.15
	jmp	.LBB13_14
.LBB13_12:                              # %if.end.16
                                        #   in Loop: Header=BB13_9 Depth=1
	jmp	.LBB13_13
.LBB13_13:                              # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_9
.LBB13_14:                              # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB13_22
# BB#15:                                # %if.then.18
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB13_16:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB13_21
# BB#17:                                # %for.body.22
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB13_19
# BB#18:                                # %if.then.28
	jmp	.LBB13_21
.LBB13_19:                              # %if.end.29
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %for.inc.30
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_16
.LBB13_21:                              # %for.end.32
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.33
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB13_24
# BB#23:                                # %if.then.36
	jmp	.LBB13_27
.LBB13_24:                              # %if.end.37
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, 24(%rax)
	jne	.LBB13_26
# BB#25:                                # %if.then.41
	movq	-32(%rbp), %rdi
	callq	glist_decide_top
.LBB13_26:                              # %if.end.42
	movq	-32(%rbp), %rdi
	callq	glist_display_all
.LBB13_27:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	glist_search, .Lfunc_end13-glist_search
	.cfi_endproc

	.align	16, 0x90
	.type	glist_search_dir,@function
glist_search_dir:                       # @glist_search_dir
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
	movl	%edx, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB14_7
# BB#6:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_32
.LBB14_7:                               # %if.end
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_8
.LBB14_8:                               # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB14_10
# BB#9:                                 # %cond.true.3
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.5
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB14_11:                              # %cond.end.7
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_4
.LBB14_12:                              # %for.end
	cmpl	$1, -28(%rbp)
	jne	.LBB14_14
# BB#13:                                # %if.then.10
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_22
.LBB14_14:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB14_16
# BB#15:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_21
.LBB14_16:                              # %if.else.14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB14_17:                              # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB14_20
# BB#18:                                # %for.body.19
                                        #   in Loop: Header=BB14_17 Depth=1
	jmp	.LBB14_19
.LBB14_19:                              # %for.inc.20
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_17
.LBB14_20:                              # %for.end.22
	jmp	.LBB14_21
.LBB14_21:                              # %if.end.23
	jmp	.LBB14_22
.LBB14_22:                              # %if.end.24
	jmp	.LBB14_23
.LBB14_23:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB14_31
# BB#24:                                # %for.body.27
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB14_26
# BB#25:                                # %if.then.33
	jmp	.LBB14_31
.LBB14_26:                              # %if.end.34
                                        #   in Loop: Header=BB14_23 Depth=1
	jmp	.LBB14_27
.LBB14_27:                              # %for.inc.35
                                        #   in Loop: Header=BB14_23 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB14_29
# BB#28:                                # %cond.true.37
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB14_30
.LBB14_29:                              # %cond.false.39
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB14_30:                              # %cond.end.41
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_23
.LBB14_31:                              # %for.end.43
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	glist_search_dir, .Lfunc_end14-glist_search_dir
	.cfi_endproc

	.align	16, 0x90
	.type	glist_decide_top,@function
glist_decide_top:                       # @glist_decide_top
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
	movq	%rdi, -8(%rbp)
	movq	flayer, %rdi
	movl	12(%rdi), %eax
	subl	$5, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB15_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	setne	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB15_3:                               # %land.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_6
.LBB15_4:                               # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_5
.LBB15_5:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB15_1
.LBB15_6:                               # %for.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	glist_decide_top, .Lfunc_end15-glist_decide_top
	.cfi_endproc

	.type	ListLf,@object          # @ListLf
	.data
	.globl	ListLf
	.align	8
ListLf:
	.quad	ListProcess
	.quad	ListAbort
	.quad	ListRedisplayLine
	.quad	ListClearLine
	.quad	ListRewrite
	.quad	ListResize
	.quad	ListRestore
	.quad	ListFree
	.size	ListLf, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Search: "
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
