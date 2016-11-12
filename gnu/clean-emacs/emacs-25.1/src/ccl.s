	.text
	.file	"ccl.bc"
	.globl	ccl_driver
	.align	16, 0x90
	.type	ccl_driver,@function
ccl_driver:                             # @ccl_driver
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
	subq	$1744, %rsp             # imm = 0x6D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -88(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -104(%rbp)
	movl	$0, -112(%rbp)
	movq	-8(%rbp), %rdx
	movl	72(%rdx), %ecx
	movl	%ecx, -124(%rbp)
	movl	$0, -128(%rbp)
	movq	-8(%rbp), %rdx
	movl	28(%rdx), %ecx
	movl	%ecx, -140(%rbp)
	movl	$0, -144(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 68(%rdx)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -96(%rbp)
.LBB0_2:                                # %if.end
	movabsq	$mapping_stack, %rax
	movq	%rax, mapping_stack_pointer
.LBB0_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_702 Depth 3
                                        #         Child Loop BB0_703 Depth 4
                                        #       Child Loop BB0_614 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #     Child Loop BB0_254 Depth 2
                                        #     Child Loop BB0_197 Depth 2
                                        #     Child Loop BB0_101 Depth 2
                                        #     Child Loop BB0_106 Depth 2
	jmp	.LBB0_4
.LBB0_4:                                # %ccl_repeat
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_702 Depth 3
                                        #         Child Loop BB0_703 Depth 4
                                        #       Child Loop BB0_614 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_9
# BB#6:                                 # %if.then.10
	cmpq	$0, -80(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
.LBB0_8:                                # %if.end.14
	movq	-8(%rbp), %rax
	movl	$4, 64(%rax)
	jmp	.LBB0_837
.LBB0_9:                                # %if.end.15
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)
# BB#10:                                # %do.body
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	$-134217728, %rax       # imm = 0xFFFFFFFFF8000000
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%ecx, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -152(%rbp)
	cmpq	-152(%rbp), %rax
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	cmpq	$134217727, -152(%rbp)  # imm = 0x7FFFFFF
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_13
# BB#11:                                # %if.then.20
	jmp	.LBB0_12
.LBB0_12:                               # %do.body.21
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_13:                               # %if.end.23
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
# BB#14:                                # %do.end.25
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-56(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$224, %eax
	shrl	$5, %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	andl	$31, %edx
	andl	$31, %eax
	movl	%eax, %ecx
	subl	$31, %edx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	movl	%edx, -1060(%rbp)       # 4-byte Spill
	ja	.LBB0_834
# BB#862:                               # %do.end.25
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_15:                               # %sw.bb
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_836
.LBB0_16:                               # %sw.bb.35
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_836
.LBB0_17:                               # %sw.bb.38
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_836
.LBB0_18:                               # %sw.bb.46
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -112(%rbp)
	movl	-60(%rbp), %ecx
	sarl	$3, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	-112(%rbp), %eax
	jg	.LBB0_21
# BB#19:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_21
# BB#20:                                # %if.then.56
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	addl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB0_21:                               # %if.end.63
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-116(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_22:                               # %sw.bb.65
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_23:                               # %sw.bb.67
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jne	.LBB0_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_25:                               # %if.end.73
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_26:                               # %sw.bb.74
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
# BB#27:                                # %do.body.77
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_30
# BB#28:                                # %if.then.79
	jmp	.LBB0_29
.LBB0_29:                               # %do.body.80
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_30:                               # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_32
# BB#31:                                # %if.then.85
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_34
.LBB0_32:                               # %if.else.86
	jmp	.LBB0_33
.LBB0_33:                               # %do.body.87
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_34:                               # %if.end.90
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.91
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.92
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_37:                               # %sw.bb.94
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
# BB#38:                                # %do.body.97
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -96(%rbp)
	jne	.LBB0_41
# BB#39:                                # %if.then.99
	jmp	.LBB0_40
.LBB0_40:                               # %do.body.100
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_41:                               # %if.else.103
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_43
# BB#42:                                # %if.then.106
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_45
.LBB0_43:                               # %if.else.108
	jmp	.LBB0_44
.LBB0_44:                               # %do.body.109
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_45:                               # %if.end.113
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_46
.LBB0_46:                               # %if.end.114
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.115
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
# BB#48:                                # %do.body.117
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_51
# BB#49:                                # %if.then.119
	jmp	.LBB0_50
.LBB0_50:                               # %do.body.120
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_51:                               # %if.else.123
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_53
# BB#52:                                # %if.then.126
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_57
.LBB0_53:                               # %if.else.130
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_55
# BB#54:                                # %if.then.131
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_55:                               # %if.else.135
	jmp	.LBB0_56
.LBB0_56:                               # %do.body.136
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_57:                               # %if.end.141
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.142
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %do.end.143
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_60:                               # %sw.bb.145
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -112(%rbp)
# BB#61:                                # %do.body.150
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_64
# BB#62:                                # %if.then.152
	jmp	.LBB0_63
.LBB0_63:                               # %do.body.153
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_64:                               # %if.else.156
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_66
# BB#65:                                # %if.then.159
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_68
.LBB0_66:                               # %if.else.161
	jmp	.LBB0_67
.LBB0_67:                               # %do.body.162
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_68:                               # %if.end.166
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.167
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %do.end.168
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_71:                               # %sw.bb.170
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -112(%rbp)
# BB#72:                                # %do.body.175
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -96(%rbp)
	jne	.LBB0_75
# BB#73:                                # %if.then.177
	jmp	.LBB0_74
.LBB0_74:                               # %do.body.178
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_75:                               # %if.else.181
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_77
# BB#76:                                # %if.then.184
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_79
.LBB0_77:                               # %if.else.186
	jmp	.LBB0_78
.LBB0_78:                               # %do.body.187
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_79:                               # %if.end.191
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_80
.LBB0_80:                               # %if.end.192
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_81
.LBB0_81:                               # %do.end.193
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
# BB#82:                                # %do.body.195
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_85
# BB#83:                                # %if.then.197
	jmp	.LBB0_84
.LBB0_84:                               # %do.body.198
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_85:                               # %if.else.201
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_87
# BB#86:                                # %if.then.204
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_91
.LBB0_87:                               # %if.else.208
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_89
# BB#88:                                # %if.then.213
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_89:                               # %if.else.217
	jmp	.LBB0_90
.LBB0_90:                               # %do.body.218
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_91:                               # %if.end.223
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_92
.LBB0_92:                               # %if.end.224
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_93
.LBB0_93:                               # %do.end.225
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_94:                               # %sw.bb.228
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -116(%rbp)
# BB#95:                                # %do.body.234
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_98
# BB#96:                                # %if.then.236
	jmp	.LBB0_97
.LBB0_97:                               # %do.body.237
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_98:                               # %if.else.240
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movslq	-116(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	cmpq	-104(%rbp), %rax
	ja	.LBB0_111
# BB#99:                                # %if.then.245
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	andq	$16777216, %rax         # imm = 0x1000000
	cmpq	$0, %rax
	je	.LBB0_105
# BB#100:                               # %if.then.251
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -156(%rbp)
.LBB0_101:                              # %for.cond.252
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_104
# BB#102:                               # %for.body
                                        #   in Loop: Header=BB0_101 Depth=2
	movl	-52(%rbp), %eax
	addl	-156(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	andq	$16777215, %rcx         # imm = 0xFFFFFF
	movl	%ecx, %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
# BB#103:                               # %for.inc
                                        #   in Loop: Header=BB0_101 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_101
.LBB0_104:                              # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_110
.LBB0_105:                              # %if.else.263
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -156(%rbp)
.LBB0_106:                              # %for.cond.264
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_109
# BB#107:                               # %for.body.267
                                        #   in Loop: Header=BB0_106 Depth=2
	movl	$2, %eax
	movl	$3, %ecx
	movl	-52(%rbp), %edx
	movl	-156(%rbp), %esi
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -1068(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-1068(%rbp), %esi       # 4-byte Reload
	addl	%eax, %esi
	movslq	%esi, %rdi
	movq	-72(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	sarq	$2, %rdi
	movl	-156(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-1064(%rbp), %ecx       # 4-byte Reload
	subl	%edx, %ecx
	shll	$3, %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rdi
	andq	$255, %rdi
	movl	%edi, %edx
	movq	-96(%rbp), %rdi
	movq	%rdi, %r8
	addq	$4, %r8
	movq	%r8, -96(%rbp)
	movl	%edx, (%rdi)
# BB#108:                               # %for.inc.277
                                        #   in Loop: Header=BB0_106 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_106
.LBB0_109:                              # %for.end.279
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_110
.LBB0_110:                              # %if.end.280
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_113
.LBB0_111:                              # %if.else.281
	jmp	.LBB0_112
.LBB0_112:                              # %do.body.282
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_113:                              # %if.end.286
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_114
.LBB0_114:                              # %if.end.287
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_115
.LBB0_115:                              # %do.end.288
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_116:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, -112(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %esi
	movl	%esi, -116(%rbp)
	cmpl	-112(%rbp), %eax
	jg	.LBB0_129
# BB#117:                               # %land.lhs.true.300
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_129
# BB#118:                               # %if.then.303
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	addl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -112(%rbp)
# BB#119:                               # %do.body.310
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -96(%rbp)
	jne	.LBB0_122
# BB#120:                               # %if.then.312
	jmp	.LBB0_121
.LBB0_121:                              # %do.body.313
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_122:                              # %if.else.316
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_124
# BB#123:                               # %if.then.319
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_126
.LBB0_124:                              # %if.else.321
	jmp	.LBB0_125
.LBB0_125:                              # %do.body.322
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_126:                              # %if.end.326
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_127
.LBB0_127:                              # %if.end.327
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_128
.LBB0_128:                              # %do.end.328
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_129
.LBB0_129:                              # %if.end.329
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-116(%rbp), %eax
	addl	$2, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#130:                               # %do.body.332
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_133
# BB#131:                               # %if.then.334
	jmp	.LBB0_132
.LBB0_132:                              # %do.body.335
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_133:                              # %if.else.338
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_135
# BB#134:                               # %if.then.341
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_139
.LBB0_135:                              # %if.else.345
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_137
# BB#136:                               # %if.then.350
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_137:                              # %if.else.354
	jmp	.LBB0_138
.LBB0_138:                              # %do.body.355
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_139:                              # %if.end.360
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_140
.LBB0_140:                              # %if.end.361
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_141
.LBB0_141:                              # %do.end.362
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$2, %ecx
	subl	%ecx, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_142:                              # %sw.bb.366
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_143
.LBB0_143:                              # %do.body.367
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_146
# BB#144:                               # %if.then.369
	jmp	.LBB0_145
.LBB0_145:                              # %do.body.370
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_146:                              # %if.else.373
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_148
# BB#147:                               # %if.then.376
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_152
.LBB0_148:                              # %if.else.380
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_150
# BB#149:                               # %if.then.385
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_150:                              # %if.else.389
	jmp	.LBB0_151
.LBB0_151:                              # %do.body.390
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_152:                              # %if.end.395
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_153
.LBB0_153:                              # %if.end.396
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_154
.LBB0_154:                              # %do.end.397
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_155:                              # %sw.bb.399
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_156
.LBB0_156:                              # %do.body.400
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_159
# BB#157:                               # %if.then.402
	jmp	.LBB0_158
.LBB0_158:                              # %do.body.403
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_159:                              # %if.else.406
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_161
# BB#160:                               # %if.then.409
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_165
.LBB0_161:                              # %if.else.413
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_163
# BB#162:                               # %if.then.418
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_163:                              # %if.else.422
	jmp	.LBB0_164
.LBB0_164:                              # %do.body.423
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_165:                              # %if.end.428
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_166
.LBB0_166:                              # %if.end.429
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_167
.LBB0_167:                              # %do.end.430
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_168
.LBB0_168:                              # %sw.bb.431
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jg	.LBB0_171
# BB#169:                               # %land.lhs.true.436
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-60(%rbp), %edx
	jge	.LBB0_171
# BB#170:                               # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -1072(%rbp)       # 4-byte Spill
	jmp	.LBB0_172
.LBB0_171:                              # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -1072(%rbp)       # 4-byte Spill
.LBB0_172:                              # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-1072(%rbp), %eax       # 4-byte Reload
	movl	%eax, -160(%rbp)
	movl	-52(%rbp), %eax
	addl	-160(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_173:                              # %sw.bb.449
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_174
.LBB0_174:                              # %while.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	jmp	.LBB0_175
.LBB0_175:                              # %do.body.450
                                        #   in Loop: Header=BB0_174 Depth=3
	cmpq	$0, -80(%rbp)
	jne	.LBB0_178
# BB#176:                               # %if.then.452
	jmp	.LBB0_177
.LBB0_177:                              # %do.body.453
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_178:                              # %if.else.456
                                        #   in Loop: Header=BB0_174 Depth=3
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_180
# BB#179:                               # %if.then.459
                                        #   in Loop: Header=BB0_174 Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_184
.LBB0_180:                              # %if.else.463
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_182
# BB#181:                               # %if.then.468
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_182:                              # %if.else.472
	jmp	.LBB0_183
.LBB0_183:                              # %do.body.473
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_184:                              # %if.end.478
                                        #   in Loop: Header=BB0_174 Depth=3
	jmp	.LBB0_185
.LBB0_185:                              # %if.end.479
                                        #   in Loop: Header=BB0_174 Depth=3
	jmp	.LBB0_186
.LBB0_186:                              # %do.end.480
                                        #   in Loop: Header=BB0_174 Depth=3
	cmpl	$0, -60(%rbp)
	jne	.LBB0_188
# BB#187:                               # %if.then.482
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_194
.LBB0_188:                              # %if.end.483
                                        #   in Loop: Header=BB0_174 Depth=3
	jmp	.LBB0_189
.LBB0_189:                              # %do.body.484
                                        #   in Loop: Header=BB0_174 Depth=3
	movq	$-134217728, %rax       # imm = 0xFFFFFFFFF8000000
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%ecx, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -176(%rbp)
	cmpq	-176(%rbp), %rax
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	cmpq	$134217727, -176(%rbp)  # imm = 0x7FFFFFF
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_192
# BB#190:                               # %if.then.496
	jmp	.LBB0_191
.LBB0_191:                              # %do.body.497
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_192:                              # %if.end.500
                                        #   in Loop: Header=BB0_174 Depth=3
	movq	-176(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
# BB#193:                               # %do.end.502
                                        #   in Loop: Header=BB0_174 Depth=3
	movl	-56(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	sarl	$5, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_174
.LBB0_194:                              # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_195:                              # %sw.bb.506
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$7, -64(%rbp)
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -116(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_347
.LBB0_196:                              # %sw.bb.516
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_197
.LBB0_197:                              # %while.body.517
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
# BB#198:                               # %do.body.520
                                        #   in Loop: Header=BB0_197 Depth=2
	cmpq	$0, -96(%rbp)
	jne	.LBB0_201
# BB#199:                               # %if.then.522
	jmp	.LBB0_200
.LBB0_200:                              # %do.body.523
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_201:                              # %if.else.526
                                        #   in Loop: Header=BB0_197 Depth=2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_203
# BB#202:                               # %if.then.529
                                        #   in Loop: Header=BB0_197 Depth=2
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_205
.LBB0_203:                              # %if.else.531
	jmp	.LBB0_204
.LBB0_204:                              # %do.body.532
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_205:                              # %if.end.536
                                        #   in Loop: Header=BB0_197 Depth=2
	jmp	.LBB0_206
.LBB0_206:                              # %if.end.537
                                        #   in Loop: Header=BB0_197 Depth=2
	jmp	.LBB0_207
.LBB0_207:                              # %do.end.538
                                        #   in Loop: Header=BB0_197 Depth=2
	cmpl	$0, -60(%rbp)
	jne	.LBB0_209
# BB#208:                               # %if.then.540
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_215
.LBB0_209:                              # %if.end.541
                                        #   in Loop: Header=BB0_197 Depth=2
	jmp	.LBB0_210
.LBB0_210:                              # %do.body.542
                                        #   in Loop: Header=BB0_197 Depth=2
	movq	$-134217728, %rax       # imm = 0xFFFFFFFFF8000000
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%ecx, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -184(%rbp)
	cmpq	-184(%rbp), %rax
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	cmpq	$134217727, -184(%rbp)  # imm = 0x7FFFFFF
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_213
# BB#211:                               # %if.then.554
	jmp	.LBB0_212
.LBB0_212:                              # %do.body.555
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_213:                              # %if.end.558
                                        #   in Loop: Header=BB0_197 Depth=2
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
# BB#214:                               # %do.end.560
                                        #   in Loop: Header=BB0_197 Depth=2
	movl	-56(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	sarl	$5, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_197
.LBB0_215:                              # %while.end.564
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_216:                              # %sw.bb.565
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$7, -64(%rbp)
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-60(%rbp), %eax
	sarl	$3, %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -116(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_347
.LBB0_217:                              # %sw.bb.574
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB0_219
# BB#218:                               # %if.then.576
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_220
.LBB0_219:                              # %if.else.582
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB0_220:                              # %if.end.583
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$256, -124(%rbp)        # imm = 0x100
	jge	.LBB0_225
# BB#221:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -196(%rbp)
	jl	.LBB0_225
# BB#222:                               # %lor.lhs.false.588
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-196(%rbp), %rax
	movq	Vccl_program_table, %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB0_225
# BB#223:                               # %lor.lhs.false.593
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vccl_program_table, %rdi
	movslq	-196(%rbp), %rsi
	callq	AREF
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	VECTORP
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_225
# BB#224:                               # %lor.lhs.false.597
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-192(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_229
.LBB0_225:                              # %if.then.600
	cmpl	$0, -124(%rbp)
	jle	.LBB0_227
# BB#226:                               # %if.then.603
	movq	ccl_prog_stack_struct, %rax
	movq	%rax, -72(%rbp)
	movl	ccl_prog_stack_struct+8, %ecx
	movl	%ecx, -52(%rbp)
	movl	ccl_prog_stack_struct+12, %ecx
	movl	%ecx, -140(%rbp)
.LBB0_227:                              # %if.end.604
	jmp	.LBB0_228
.LBB0_228:                              # %do.body.605
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_229:                              # %if.end.608
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movabsq	$ccl_prog_stack_struct, %rcx
	movq	-72(%rbp), %rdx
	movslq	-124(%rbp), %rdi
	shlq	$4, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%rdx, (%r8)
	movl	-52(%rbp), %eax
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	movl	%eax, 8(%rdi)
	movl	-140(%rbp), %eax
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, 12(%rcx)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movq	-192(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movl	$2, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %r9d
	movl	%r9d, -140(%rbp)
	jmp	.LBB0_836
.LBB0_230:                              # %sw.bb.625
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB0_242
# BB#231:                               # %if.then.627
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_232
.LBB0_232:                              # %do.body.628
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_235
# BB#233:                               # %if.then.630
	jmp	.LBB0_234
.LBB0_234:                              # %do.body.631
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_235:                              # %if.else.634
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_237
# BB#236:                               # %if.then.637
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_239
.LBB0_237:                              # %if.else.639
	jmp	.LBB0_238
.LBB0_238:                              # %do.body.640
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_239:                              # %if.end.644
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_240
.LBB0_240:                              # %if.end.645
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_241
.LBB0_241:                              # %do.end.646
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_264
.LBB0_242:                              # %if.else.647
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_243
.LBB0_243:                              # %do.body.648
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_246
# BB#244:                               # %if.then.651
	jmp	.LBB0_245
.LBB0_245:                              # %do.body.652
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_246:                              # %if.else.655
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	cmpq	-104(%rbp), %rax
	ja	.LBB0_259
# BB#247:                               # %if.then.660
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	andq	$16777216, %rax         # imm = 0x1000000
	cmpq	$0, %rax
	je	.LBB0_253
# BB#248:                               # %if.then.666
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -200(%rbp)
.LBB0_249:                              # %for.cond.667
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_252
# BB#250:                               # %for.body.670
                                        #   in Loop: Header=BB0_249 Depth=2
	movl	-52(%rbp), %eax
	addl	-200(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	andq	$16777215, %rcx         # imm = 0xFFFFFF
	movl	%ecx, %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
# BB#251:                               # %for.inc.678
                                        #   in Loop: Header=BB0_249 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB0_249
.LBB0_252:                              # %for.end.680
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_258
.LBB0_253:                              # %if.else.681
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -200(%rbp)
.LBB0_254:                              # %for.cond.682
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_257
# BB#255:                               # %for.body.685
                                        #   in Loop: Header=BB0_254 Depth=2
	movl	$2, %eax
	movl	$3, %ecx
	movl	-52(%rbp), %edx
	movl	-200(%rbp), %esi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -1088(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-1088(%rbp), %esi       # 4-byte Reload
	addl	%eax, %esi
	movslq	%esi, %rdi
	movq	-72(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	sarq	$2, %rdi
	movl	-200(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-1084(%rbp), %ecx       # 4-byte Reload
	subl	%edx, %ecx
	shll	$3, %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rdi
	andq	$255, %rdi
	movl	%edi, %edx
	movq	-96(%rbp), %rdi
	movq	%rdi, %r8
	addq	$4, %r8
	movq	%r8, -96(%rbp)
	movl	%edx, (%rdi)
# BB#256:                               # %for.inc.699
                                        #   in Loop: Header=BB0_254 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB0_254
.LBB0_257:                              # %for.end.701
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_258
.LBB0_258:                              # %if.end.702
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_261
.LBB0_259:                              # %if.else.703
	jmp	.LBB0_260
.LBB0_260:                              # %do.body.704
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_261:                              # %if.end.708
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_262
.LBB0_262:                              # %if.end.709
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_263
.LBB0_263:                              # %do.end.710
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$3, %eax
	movl	-60(%rbp), %ecx
	addl	$2, %ecx
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1092(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_264:                              # %if.end.714
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_265:                              # %sw.bb.715
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, -112(%rbp)
	cmpl	-112(%rbp), %eax
	jg	.LBB0_278
# BB#266:                               # %land.lhs.true.720
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_278
# BB#267:                               # %if.then.723
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	addl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -116(%rbp)
# BB#268:                               # %do.body.729
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_271
# BB#269:                               # %if.then.731
	jmp	.LBB0_270
.LBB0_270:                              # %do.body.732
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_271:                              # %if.else.735
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_273
# BB#272:                               # %if.then.738
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-116(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_275
.LBB0_273:                              # %if.else.740
	jmp	.LBB0_274
.LBB0_274:                              # %do.body.741
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_275:                              # %if.end.745
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_276
.LBB0_276:                              # %if.end.746
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_277
.LBB0_277:                              # %do.end.747
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_278
.LBB0_278:                              # %if.end.748
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_836
.LBB0_279:                              # %sw.bb.750
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -124(%rbp)
	jle	.LBB0_283
# BB#280:                               # %if.then.753
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$ccl_prog_stack_struct, %rax
	movl	-124(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %rdx
	movq	%rdx, -72(%rbp)
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -52(%rbp)
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_282
# BB#281:                               # %if.then.765
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_282:                              # %if.end.766
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_283:                              # %if.end.767
	cmpq	$0, -80(%rbp)
	je	.LBB0_285
# BB#284:                               # %if.then.769
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB0_285:                              # %if.end.770
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
# BB#286:                               # %do.body.772
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	jmp	.LBB0_858
.LBB0_287:                              # %sw.bb.775
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_289
.LBB0_288:                              # %sw.bb.782
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
.LBB0_289:                              # %ccl_expr_self
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$21, %rdx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	ja	.LBB0_309
# BB#866:                               # %ccl_expr_self
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_290:                              # %sw.bb.787
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_291:                              # %sw.bb.791
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	subl	%eax, %esi
	movl	%esi, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_292:                              # %sw.bb.795
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	imull	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_293:                              # %sw.bb.799
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	cltd
	movl	-1116(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	%eax, (%rdi,%rcx,4)
	jmp	.LBB0_311
.LBB0_294:                              # %sw.bb.803
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	cltd
	movl	-1132(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movl	%edx, (%rdi,%rcx,4)
	jmp	.LBB0_311
.LBB0_295:                              # %sw.bb.807
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	andl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_296:                              # %sw.bb.811
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	orl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_297:                              # %sw.bb.814
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	xorl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_311
.LBB0_298:                              # %sw.bb.817
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movl	%esi, (%rdx,%rax,4)
	jmp	.LBB0_311
.LBB0_299:                              # %sw.bb.820
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movl	%esi, (%rdx,%rax,4)
	jmp	.LBB0_311
.LBB0_300:                              # %sw.bb.824
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	shll	$8, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-112(%rbp), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	orl	(%rcx,%rax,4), %edx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_301:                              # %sw.bb.831
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$255, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 28(%rax)
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	sarl	$8, %edx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_302:                              # %sw.bb.839
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %eax
	cltd
	idivl	-112(%rbp)
	movq	-48(%rbp), %rcx
	movl	%edx, 28(%rcx)
	movl	-112(%rbp), %edx
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	movl	%edi, %eax
	movl	%edx, -1148(%rbp)       # 4-byte Spill
	cltd
	movl	-1148(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	movl	%eax, (%rsi,%rcx,4)
	jmp	.LBB0_311
.LBB0_303:                              # %sw.bb.847
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_304:                              # %sw.bb.854
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	setg	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_305:                              # %sw.bb.861
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_306:                              # %sw.bb.868
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	setle	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_307:                              # %sw.bb.875
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	setge	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_308:                              # %sw.bb.882
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-112(%rbp), %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_311
.LBB0_309:                              # %sw.default
	jmp	.LBB0_310
.LBB0_310:                              # %do.body.889
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_311:                              # %sw.epilog
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_312:                              # %sw.bb.892
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -116(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_347
.LBB0_313:                              # %sw.bb.902
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-60(%rbp), %eax
	sarl	$3, %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -116(%rbp)
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, -120(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_347
.LBB0_314:                              # %sw.bb.911
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_315
.LBB0_315:                              # %do.body.912
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_318
# BB#316:                               # %if.then.914
	jmp	.LBB0_317
.LBB0_317:                              # %do.body.915
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_318:                              # %if.else.918
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_320
# BB#319:                               # %if.then.921
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_324
.LBB0_320:                              # %if.else.925
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_322
# BB#321:                               # %if.then.930
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_322:                              # %if.else.934
	jmp	.LBB0_323
.LBB0_323:                              # %do.body.935
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_324:                              # %if.end.940
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_325
.LBB0_325:                              # %if.end.941
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_326
.LBB0_326:                              # %do.end.942
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_327
.LBB0_327:                              # %sw.bb.943
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
	movl	-52(%rbp), %edx
	addl	-60(%rbp), %edx
	movl	%edx, -108(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -120(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -116(%rbp)
	movl	$7, -64(%rbp)
	jmp	.LBB0_347
.LBB0_328:                              # %sw.bb.957
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_329
.LBB0_329:                              # %do.body.958
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_332
# BB#330:                               # %if.then.960
	jmp	.LBB0_331
.LBB0_331:                              # %do.body.961
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_332:                              # %if.else.964
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_334
# BB#333:                               # %if.then.967
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB0_338
.LBB0_334:                              # %if.else.971
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_336
# BB#335:                               # %if.then.976
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_336:                              # %if.else.980
	jmp	.LBB0_337
.LBB0_337:                              # %do.body.981
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_338:                              # %if.end.986
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_339
.LBB0_339:                              # %if.end.987
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_340
.LBB0_340:                              # %do.end.988
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_341
.LBB0_341:                              # %sw.bb.989
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
	movl	-52(%rbp), %edx
	addl	-60(%rbp), %edx
	movl	%edx, -108(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%edx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -120(%rbp)
# BB#342:                               # %do.body.998
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -208(%rbp)
	cmpq	-208(%rbp), %rcx
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	cmpq	$7, -208(%rbp)
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB0_345
# BB#343:                               # %if.then.1010
	jmp	.LBB0_344
.LBB0_344:                              # %do.body.1011
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_345:                              # %if.end.1014
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)
# BB#346:                               # %do.end.1016
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-116(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -116(%rbp)
	movl	$7, -64(%rbp)
.LBB0_347:                              # %ccl_set_expr
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$23, %rdx
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	ja	.LBB0_379
# BB#867:                               # %ccl_set_expr
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_3(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_348:                              # %sw.bb.1019
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	addl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_349:                              # %sw.bb.1023
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_350:                              # %sw.bb.1027
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	imull	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_351:                              # %sw.bb.1031
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
	jmp	.LBB0_381
.LBB0_352:                              # %sw.bb.1035
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	%edx, (%rsi,%rcx,4)
	jmp	.LBB0_381
.LBB0_353:                              # %sw.bb.1039
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	andl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_354:                              # %sw.bb.1043
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	orl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_355:                              # %sw.bb.1047
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	xorl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_356:                              # %sw.bb.1051
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movl	-116(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_357:                              # %sw.bb.1055
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movl	-116(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_358:                              # %sw.bb.1059
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	shll	$8, %eax
	orl	-116(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_381
.LBB0_359:                              # %sw.bb.1064
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	sarl	$8, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-112(%rbp), %eax
	andl	$255, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB0_381
.LBB0_360:                              # %sw.bb.1070
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movl	-112(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movq	-48(%rbp), %rcx
	movl	%edx, 28(%rcx)
	jmp	.LBB0_381
.LBB0_361:                              # %sw.bb.1076
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_362:                              # %sw.bb.1081
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_363:                              # %sw.bb.1086
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_364:                              # %sw.bb.1091
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_365:                              # %sw.bb.1096
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_366:                              # %sw.bb.1101
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_381
.LBB0_367:                              # %sw.bb.1106
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	shll	$8, %eax
	orl	-116(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#368:                               # %do.body.1109
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -212(%rbp)
	movl	-112(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -216(%rbp)
	cmpl	$159, -216(%rbp)
	jl	.LBB0_370
# BB#369:                               # %if.then.1114
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$224, %eax
	movl	$352, %ecx              # imm = 0x160
	movl	-212(%rbp), %edx
	shll	$1, %edx
	cmpl	$224, -212(%rbp)
	cmovgel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -220(%rbp)
	movl	-216(%rbp), %eax
	subl	$126, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB0_371
.LBB0_370:                              # %if.else.1121
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$31, %eax
	movl	$32, %ecx
	movl	$225, %edx
	movl	$353, %esi              # imm = 0x161
	movl	-212(%rbp), %edi
	shll	$1, %edi
	cmpl	$224, -212(%rbp)
	cmovgel	%esi, %edx
	subl	%edx, %edi
	movl	%edi, -220(%rbp)
	movl	-216(%rbp), %edx
	cmpl	$127, -216(%rbp)
	cmovgel	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -224(%rbp)
.LBB0_371:                              # %if.end.1131
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-220(%rbp), %eax
	shll	$8, %eax
	orl	-224(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#372:                               # %do.end.1134
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	sarl	$8, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-112(%rbp), %eax
	andl	$255, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB0_381
.LBB0_373:                              # %sw.bb.1140
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	shll	$8, %eax
	orl	-116(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#374:                               # %do.body.1143
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -236(%rbp)
	movl	-112(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -240(%rbp)
	movl	-236(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_376
# BB#375:                               # %if.then.1152
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$31, %eax
	movl	$32, %ecx
	movl	$177, %edx
	movl	$113, %esi
	movl	$2, %edi
	movl	-236(%rbp), %r8d
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -1176(%rbp)       # 4-byte Spill
	cltd
	idivl	%edi
	cmpl	$95, -236(%rbp)
	movl	-1176(%rbp), %edi       # 4-byte Reload
	cmovll	%esi, %edi
	addl	%edi, %eax
	movl	%eax, -228(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$96, -240(%rbp)
	movl	-1172(%rbp), %esi       # 4-byte Reload
	cmovgel	%ecx, %esi
	addl	%esi, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB0_377
.LBB0_376:                              # %if.else.1162
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$176, %eax
	movl	$112, %ecx
	movl	$2, %edx
	movl	-236(%rbp), %esi
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -1184(%rbp)       # 4-byte Spill
	cltd
	movl	-1184(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$95, -236(%rbp)
	movl	-1180(%rbp), %edi       # 4-byte Reload
	cmovll	%ecx, %edi
	addl	%edi, %eax
	movl	%eax, -228(%rbp)
	movl	-240(%rbp), %eax
	addl	$126, %eax
	movl	%eax, -232(%rbp)
.LBB0_377:                              # %if.end.1169
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-228(%rbp), %eax
	shll	$8, %eax
	orl	-232(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#378:                               # %do.end.1172
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	sarl	$8, %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-112(%rbp), %eax
	andl	$255, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB0_381
.LBB0_379:                              # %sw.default.1178
	jmp	.LBB0_380
.LBB0_380:                              # %do.body.1179
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_381:                              # %sw.epilog.1182
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-56(%rbp), %eax
	andl	$31, %eax
	movl	%eax, -56(%rbp)
	cmpl	$15, -56(%rbp)
	je	.LBB0_383
# BB#382:                               # %lor.lhs.false.1186
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$18, -56(%rbp)
	jne	.LBB0_394
.LBB0_383:                              # %if.then.1189
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
# BB#384:                               # %do.body.1192
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_387
# BB#385:                               # %if.then.1194
	jmp	.LBB0_386
.LBB0_386:                              # %do.body.1195
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_387:                              # %if.else.1198
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_389
# BB#388:                               # %if.then.1201
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_391
.LBB0_389:                              # %if.else.1203
	jmp	.LBB0_390
.LBB0_390:                              # %do.body.1204
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_391:                              # %if.end.1208
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_392
.LBB0_392:                              # %if.end.1209
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_393
.LBB0_393:                              # %do.end.1210
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_397
.LBB0_394:                              # %if.else.1211
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jne	.LBB0_396
# BB#395:                               # %if.then.1215
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_396:                              # %if.end.1216
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_397
.LBB0_397:                              # %if.end.1217
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_398:                              # %sw.bb.1218
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-60(%rbp), %eax
	sarl	$6, %eax
	movl	%eax, %ecx
	subl	$20, %eax
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	ja	.LBB0_831
# BB#863:                               # %sw.bb.1218
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_399:                              # %sw.bb.1220
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_402
# BB#400:                               # %if.then.1222
	jmp	.LBB0_401
.LBB0_401:                              # %do.body.1223
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_402:                              # %if.end.1226
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_403
.LBB0_403:                              # %do.body.1227
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpq	$0, -80(%rbp)
	jne	.LBB0_406
# BB#404:                               # %if.then.1229
	jmp	.LBB0_405
.LBB0_405:                              # %do.body.1230
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_406:                              # %if.else.1233
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_408
# BB#407:                               # %if.then.1236
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %edx
	movl	%edx, -112(%rbp)
	jmp	.LBB0_412
.LBB0_408:                              # %if.else.1238
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_410
# BB#409:                               # %if.then.1243
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$-1, -112(%rbp)
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB0_4
.LBB0_410:                              # %if.else.1245
	jmp	.LBB0_411
.LBB0_411:                              # %do.body.1246
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$1, 64(%rcx)
	jmp	.LBB0_858
.LBB0_412:                              # %if.end.1251
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_413
.LBB0_413:                              # %if.end.1252
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_414
.LBB0_414:                              # %do.end.1253
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_415
.LBB0_415:                              # %do.body.1254
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-244(%rbp), %rdx
	movl	-112(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_418
# BB#416:                               # %land.lhs.true.1257
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_418
# BB#417:                               # %if.then.1261
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movl	-112(%rbp), %eax
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	leaq	-244(%rbp), %rdx
	movl	-1212(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
.LBB0_418:                              # %if.end.1264
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB0_420
# BB#419:                               # %if.then.1266
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movl	-244(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
.LBB0_420:                              # %if.end.1272
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_421
.LBB0_421:                              # %do.end.1273
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_422:                              # %sw.bb.1274
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_425
# BB#423:                               # %if.then.1276
	jmp	.LBB0_424
.LBB0_424:                              # %do.body.1277
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_425:                              # %if.end.1280
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB0_427
# BB#426:                               # %cond.true.1286
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB0_454
.LBB0_427:                              # %cond.false.1290
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$1, %al
	movq	charset_table, %rcx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -136(%rbp)
	testb	$1, %al
	jne	.LBB0_428
	jmp	.LBB0_429
.LBB0_428:                              # %cond.true.1296
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB0_430
	jmp	.LBB0_432
.LBB0_429:                              # %cond.false.1302
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_432
.LBB0_430:                              # %land.lhs.true.1309
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_432
# BB#431:                               # %cond.true.1314
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB0_453
.LBB0_432:                              # %cond.false.1318
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	108(%rax), %edx
	jb	.LBB0_434
# BB#433:                               # %lor.lhs.false.1323
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	112(%rax), %edx
	jbe	.LBB0_435
.LBB0_434:                              # %cond.true.1328
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB0_452
.LBB0_435:                              # %cond.false.1329
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_437
# BB#436:                               # %cond.true.1335
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB0_451
.LBB0_437:                              # %cond.false.1340
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB0_442
# BB#438:                               # %cond.true.1343
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_440
# BB#439:                               # %cond.true.1348
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	subl	108(%rax), %edx
	movq	-136(%rbp), %rax
	addl	324(%rax), %edx
	movl	%edx, -1252(%rbp)       # 4-byte Spill
	jmp	.LBB0_441
.LBB0_440:                              # %cond.false.1354
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movl	%eax, -1252(%rbp)       # 4-byte Spill
.LBB0_441:                              # %cond.end.1358
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-1252(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB0_450
.LBB0_442:                              # %cond.false.1361
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB0_448
# BB#443:                               # %cond.true.1365
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_446
# BB#444:                               # %land.lhs.true.1371
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_445
	jmp	.LBB0_446
.LBB0_445:                              # %cond.true.1377
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movslq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	(%rdi,%rsi,4), %ecx
	movq	-136(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB0_447
.LBB0_446:                              # %cond.false.1389
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
.LBB0_447:                              # %cond.end.1394
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1272(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB0_449
.LBB0_448:                              # %cond.false.1396
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
.LBB0_449:                              # %cond.end.1401
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB0_450:                              # %cond.end.1403
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB0_451:                              # %cond.end.1405
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB0_452:                              # %cond.end.1407
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB0_453:                              # %cond.end.1409
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB0_454:                              # %cond.end.1411
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
# BB#455:                               # %do.body.1414
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB0_458
# BB#456:                               # %if.then.1416
	jmp	.LBB0_457
.LBB0_457:                              # %do.body.1417
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_458:                              # %if.else.1420
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB0_460
# BB#459:                               # %if.then.1423
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB0_462
.LBB0_460:                              # %if.else.1425
	jmp	.LBB0_461
.LBB0_461:                              # %do.body.1426
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	$2, 64(%rcx)
	jmp	.LBB0_858
.LBB0_462:                              # %if.end.1430
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_463
.LBB0_463:                              # %if.end.1431
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_464
.LBB0_464:                              # %do.end.1432
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_465:                              # %sw.bb.1433
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB0_467
# BB#466:                               # %cond.true.1439
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB0_494
.LBB0_467:                              # %cond.false.1443
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$1, %al
	movq	charset_table, %rcx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -136(%rbp)
	testb	$1, %al
	jne	.LBB0_468
	jmp	.LBB0_469
.LBB0_468:                              # %cond.true.1449
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB0_470
	jmp	.LBB0_472
.LBB0_469:                              # %cond.false.1455
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_472
.LBB0_470:                              # %land.lhs.true.1462
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_472
# BB#471:                               # %cond.true.1469
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB0_493
.LBB0_472:                              # %cond.false.1473
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	108(%rax), %edx
	jb	.LBB0_474
# BB#473:                               # %lor.lhs.false.1479
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	112(%rax), %edx
	jbe	.LBB0_475
.LBB0_474:                              # %cond.true.1485
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB0_492
.LBB0_475:                              # %cond.false.1486
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_477
# BB#476:                               # %cond.true.1493
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB0_491
.LBB0_477:                              # %cond.false.1498
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB0_482
# BB#478:                               # %cond.true.1502
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_480
# BB#479:                               # %cond.true.1508
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	subl	108(%rax), %edx
	movq	-136(%rbp), %rax
	addl	324(%rax), %edx
	movl	%edx, -1316(%rbp)       # 4-byte Spill
	jmp	.LBB0_481
.LBB0_480:                              # %cond.false.1515
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movl	%eax, -1316(%rbp)       # 4-byte Spill
.LBB0_481:                              # %cond.end.1519
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-1316(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB0_490
.LBB0_482:                              # %cond.false.1522
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB0_488
# BB#483:                               # %cond.true.1526
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_486
# BB#484:                               # %land.lhs.true.1532
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_485
	jmp	.LBB0_486
.LBB0_485:                              # %cond.true.1539
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movslq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	(%rdi,%rsi,4), %ecx
	movq	-136(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB0_487
.LBB0_486:                              # %cond.false.1551
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1336(%rbp)       # 8-byte Spill
.LBB0_487:                              # %cond.end.1556
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB0_489
.LBB0_488:                              # %cond.false.1558
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
.LBB0_489:                              # %cond.end.1563
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB0_490:                              # %cond.end.1565
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB0_491:                              # %cond.end.1567
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB0_492:                              # %cond.end.1569
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB0_493:                              # %cond.end.1571
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB0_494:                              # %cond.end.1573
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1288(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movl	-60(%rbp), %ecx
	sarl	$3, %ecx
	andl	$7, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	globals+2464, %rdi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	XVECTOR
	movq	-1352(%rbp), %rdx       # 8-byte Reload
	movq	8(%rax,%rdx,8), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movl	-112(%rbp), %esi
	callq	translate_char
	movl	%eax, -120(%rbp)
# BB#495:                               # %do.body.1586
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-248(%rbp), %rdx
	movl	-120(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_498
# BB#496:                               # %land.lhs.true.1590
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_498
# BB#497:                               # %if.then.1594
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movl	-120(%rbp), %eax
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	leaq	-248(%rbp), %rdx
	movl	-1364(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
.LBB0_498:                              # %if.end.1597
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB0_500
# BB#499:                               # %if.then.1599
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movl	-248(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
.LBB0_500:                              # %if.end.1606
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_501
.LBB0_501:                              # %do.end.1607
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_502:                              # %sw.bb.1608
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_503
.LBB0_503:                              # %do.body.1609
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -264(%rbp)
	cmpq	-264(%rbp), %rcx
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	-264(%rbp), %rcx
	movq	globals+2464, %rdi
	movl	%eax, -1368(%rbp)       # 4-byte Spill
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_504
	jmp	.LBB0_505
.LBB0_504:                              # %cond.true.1619
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	globals+2464, %rdi
	callq	ASIZE
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB0_506
.LBB0_505:                              # %cond.false.1621
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB0_506
.LBB0_506:                              # %cond.end.1622
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1384(%rbp), %rax       # 8-byte Reload
	movq	-1376(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-1368(%rbp), %edi       # 4-byte Reload
	andl	%esi, %edi
	cmpl	$0, %edi
	jne	.LBB0_509
# BB#507:                               # %if.then.1628
	jmp	.LBB0_508
.LBB0_508:                              # %do.body.1629
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_509:                              # %if.end.1632
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, -256(%rbp)
# BB#510:                               # %do.end.1633
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB0_512
# BB#511:                               # %cond.true.1639
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB0_539
.LBB0_512:                              # %cond.false.1643
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$1, %al
	movq	charset_table, %rcx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -136(%rbp)
	testb	$1, %al
	jne	.LBB0_513
	jmp	.LBB0_514
.LBB0_513:                              # %cond.true.1649
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB0_515
	jmp	.LBB0_517
.LBB0_514:                              # %cond.false.1655
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_517
.LBB0_515:                              # %land.lhs.true.1662
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_517
# BB#516:                               # %cond.true.1669
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB0_538
.LBB0_517:                              # %cond.false.1673
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	108(%rax), %edx
	jb	.LBB0_519
# BB#518:                               # %lor.lhs.false.1679
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	112(%rax), %edx
	jbe	.LBB0_520
.LBB0_519:                              # %cond.true.1685
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	jmp	.LBB0_537
.LBB0_520:                              # %cond.false.1686
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_522
# BB#521:                               # %cond.true.1693
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB0_536
.LBB0_522:                              # %cond.false.1698
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB0_527
# BB#523:                               # %cond.true.1702
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_525
# BB#524:                               # %cond.true.1708
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	subl	108(%rax), %edx
	movq	-136(%rbp), %rax
	addl	324(%rax), %edx
	movl	%edx, -1420(%rbp)       # 4-byte Spill
	jmp	.LBB0_526
.LBB0_525:                              # %cond.false.1715
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movl	%eax, -1420(%rbp)       # 4-byte Spill
.LBB0_526:                              # %cond.end.1719
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-1420(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB0_535
.LBB0_527:                              # %cond.false.1722
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB0_533
# BB#528:                               # %cond.true.1726
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_531
# BB#529:                               # %land.lhs.true.1732
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_530
	jmp	.LBB0_531
.LBB0_530:                              # %cond.true.1739
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movslq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	(%rdi,%rsi,4), %ecx
	movq	-136(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB0_532
.LBB0_531:                              # %cond.false.1751
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1440(%rbp)       # 8-byte Spill
.LBB0_532:                              # %cond.end.1756
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1440(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB0_534
.LBB0_533:                              # %cond.false.1758
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
.LBB0_534:                              # %cond.end.1763
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB0_535:                              # %cond.end.1765
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB0_536:                              # %cond.end.1767
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1408(%rbp)       # 8-byte Spill
.LBB0_537:                              # %cond.end.1769
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1408(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1400(%rbp)       # 8-byte Spill
.LBB0_538:                              # %cond.end.1771
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB0_539:                              # %cond.end.1773
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movq	-256(%rbp), %rax
	movq	globals+2464, %rdi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	XVECTOR
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	8(%rax,%rdi,8), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movl	-112(%rbp), %esi
	callq	translate_char
	movl	%eax, -120(%rbp)
# BB#540:                               # %do.body.1783
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-268(%rbp), %rdx
	movl	-120(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_543
# BB#541:                               # %land.lhs.true.1787
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1464(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_543
# BB#542:                               # %if.then.1791
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movl	-120(%rbp), %eax
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	leaq	-268(%rbp), %rdx
	movl	-1468(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -136(%rbp)
.LBB0_543:                              # %if.end.1794
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB0_545
# BB#544:                               # %if.then.1796
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movl	-268(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
.LBB0_545:                              # %if.end.1803
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_546
.LBB0_546:                              # %do.end.1804
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_547:                              # %sw.bb.1805
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_548
.LBB0_548:                              # %do.body.1807
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -296(%rbp)
	cmpq	-296(%rbp), %rcx
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	-296(%rbp), %rcx
	movq	globals+2448, %rdi
	movl	%eax, -1472(%rbp)       # 4-byte Spill
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_549
	jmp	.LBB0_550
.LBB0_549:                              # %cond.true.1817
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	globals+2448, %rdi
	callq	ASIZE
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB0_551
.LBB0_550:                              # %cond.false.1819
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB0_551
.LBB0_551:                              # %cond.end.1820
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movq	-1480(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-1472(%rbp), %edi       # 4-byte Reload
	andl	%esi, %edi
	cmpl	$0, %edi
	jne	.LBB0_554
# BB#552:                               # %if.then.1826
	jmp	.LBB0_553
.LBB0_553:                              # %do.body.1827
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_554:                              # %if.end.1830
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-296(%rbp), %rax
	movq	%rax, -280(%rbp)
# BB#555:                               # %do.end.1831
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	globals+2448, %rdi
	movq	-280(%rbp), %rsi
	callq	AREF
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rdi
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rsi
	movslq	(%rsi,%rax,4), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	hash_lookup
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jl	.LBB0_562
# BB#556:                               # %if.then.1846
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-288(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	HASH_VALUE
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movq	%rax, -304(%rbp)
	cmpq	-280(%rbp), %rsi
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpq	$2147483647, -280(%rbp) # imm = 0x7FFFFFFF
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	andl	%r8d, %edx
	cmpl	$0, %edx
	je	.LBB0_559
# BB#557:                               # %land.lhs.true.1854
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-304(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB0_558
	jmp	.LBB0_559
.LBB0_558:                              # %land.lhs.true.1857
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-304(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB0_561
.LBB0_559:                              # %if.then.1861
	jmp	.LBB0_560
.LBB0_560:                              # %do.body.1862
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_561:                              # %if.end.1865
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	charset_unicode, %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-280(%rbp), %rdx
	movl	%edx, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-48(%rbp), %rdx
	movl	$1, 28(%rdx)
	jmp	.LBB0_563
.LBB0_562:                              # %if.else.1873
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rax
	movl	$0, 28(%rax)
.LBB0_563:                              # %if.end.1875
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_564:                              # %sw.bb.1876
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_565
.LBB0_565:                              # %do.body.1879
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	movq	%rsi, -328(%rbp)
	cmpq	-328(%rbp), %rcx
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	-328(%rbp), %rcx
	movq	globals+2448, %rdi
	movl	%eax, -1492(%rbp)       # 4-byte Spill
	movq	%rcx, -1504(%rbp)       # 8-byte Spill
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_566
	jmp	.LBB0_567
.LBB0_566:                              # %cond.true.1889
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	globals+2448, %rdi
	callq	ASIZE
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB0_568
.LBB0_567:                              # %cond.false.1891
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB0_568
.LBB0_568:                              # %cond.end.1892
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-1492(%rbp), %edi       # 4-byte Reload
	andl	%esi, %edi
	cmpl	$0, %edi
	jne	.LBB0_571
# BB#569:                               # %if.then.1898
	jmp	.LBB0_570
.LBB0_570:                              # %do.body.1899
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_571:                              # %if.end.1902
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, -312(%rbp)
# BB#572:                               # %do.end.1903
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB0_574
# BB#573:                               # %cond.true.1909
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB0_601
.LBB0_574:                              # %cond.false.1913
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$1, %al
	movq	charset_table, %rcx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -136(%rbp)
	testb	$1, %al
	jne	.LBB0_575
	jmp	.LBB0_576
.LBB0_575:                              # %cond.true.1919
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB0_577
	jmp	.LBB0_579
.LBB0_576:                              # %cond.false.1925
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_579
.LBB0_577:                              # %land.lhs.true.1932
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_579
# BB#578:                               # %cond.true.1939
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB0_600
.LBB0_579:                              # %cond.false.1943
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	108(%rax), %edx
	jb	.LBB0_581
# BB#580:                               # %lor.lhs.false.1949
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	cmpl	112(%rax), %edx
	jbe	.LBB0_582
.LBB0_581:                              # %cond.true.1955
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-1, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB0_599
.LBB0_582:                              # %cond.false.1956
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_584
# BB#583:                               # %cond.true.1963
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB0_598
.LBB0_584:                              # %cond.false.1968
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB0_589
# BB#585:                               # %cond.true.1972
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_587
# BB#586:                               # %cond.true.1978
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-136(%rbp), %rax
	subl	108(%rax), %edx
	movq	-136(%rbp), %rax
	addl	324(%rax), %edx
	movl	%edx, -1548(%rbp)       # 4-byte Spill
	jmp	.LBB0_588
.LBB0_587:                              # %cond.false.1985
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movl	%eax, -1548(%rbp)       # 4-byte Spill
.LBB0_588:                              # %cond.end.1989
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-1548(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1560(%rbp)       # 8-byte Spill
	jmp	.LBB0_597
.LBB0_589:                              # %cond.false.1992
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB0_595
# BB#590:                               # %cond.true.1996
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_593
# BB#591:                               # %land.lhs.true.2002
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_592
	jmp	.LBB0_593
.LBB0_592:                              # %cond.true.2009
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-136(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movslq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	(%rdi,%rsi,4), %ecx
	movq	-136(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB0_594
.LBB0_593:                              # %cond.false.2021
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
.LBB0_594:                              # %cond.end.2026
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB0_596
.LBB0_595:                              # %cond.false.2028
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	decode_char
	movslq	%eax, %rcx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
.LBB0_596:                              # %cond.end.2033
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1560(%rbp)       # 8-byte Spill
.LBB0_597:                              # %cond.end.2035
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1560(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB0_598:                              # %cond.end.2037
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1544(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB0_599:                              # %cond.end.2039
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1528(%rbp)       # 8-byte Spill
.LBB0_600:                              # %cond.end.2041
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1528(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB0_601:                              # %cond.end.2043
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movq	globals+2448, %rdi
	movq	-312(%rbp), %rsi
	callq	AREF
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rdi
	movslq	-112(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	hash_lookup
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jl	.LBB0_607
# BB#602:                               # %if.then.2057
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-320(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_604
# BB#603:                               # %land.lhs.true.2065
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-336(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-336(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB0_606
.LBB0_604:                              # %if.then.2074
	jmp	.LBB0_605
.LBB0_605:                              # %do.body.2075
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_606:                              # %if.end.2078
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-336(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movq	-48(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.LBB0_608
.LBB0_607:                              # %if.else.2085
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rax
	movl	$0, 28(%rax)
.LBB0_608:                              # %if.end.2087
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_609:                              # %sw.bb.2088
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -116(%rbp)
	movl	-52(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -388(%rbp)
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	cmpl	(%rsi,%rdx,4), %eax
	jle	.LBB0_612
# BB#610:                               # %land.lhs.true.2102
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$0, -116(%rbp)
	jl	.LBB0_612
# BB#611:                               # %if.then.2105
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_613
.LBB0_612:                              # %if.else.2113
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	movl	-388(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_833
.LBB0_613:                              # %if.end.2117
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_614
.LBB0_614:                              # %for.cond.2118
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_669
# BB#615:                               # %for.body.2121
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	globals+256, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_617
# BB#616:                               # %if.then.2123
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_617:                              # %if.end.2124
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	globals+256, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -384(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%ecx, %rax
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -376(%rbp)
	cmpq	-376(%rbp), %rdi
	jg	.LBB0_619
# BB#618:                               # %land.lhs.true.2132
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-376(%rbp), %rax
	cmpq	-384(%rbp), %rax
	jl	.LBB0_620
.LBB0_619:                              # %if.then.2135
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_620:                              # %if.end.2136
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	globals+256, %rdi
	movq	-376(%rbp), %rsi
	callq	AREF
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB0_622
# BB#621:                               # %if.then.2142
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_622:                              # %if.end.2143
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-344(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_624
# BB#623:                               # %if.then.2148
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_624:                              # %if.end.2149
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-344(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -384(%rbp)
	cmpq	$1, -384(%rbp)
	jg	.LBB0_626
# BB#625:                               # %if.then.2153
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_626:                              # %if.end.2154
                                        #   in Loop: Header=BB0_614 Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rdi
	callq	AREF
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_631
# BB#627:                               # %if.then.2161
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-352(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movslq	-120(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_629
# BB#628:                               # %land.lhs.true.2166
                                        #   in Loop: Header=BB0_614 Depth=3
	movslq	-120(%rbp), %rax
	subq	-376(%rbp), %rax
	addq	$1, %rax
	cmpq	-384(%rbp), %rax
	jl	.LBB0_630
.LBB0_629:                              # %if.then.2172
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_630:                              # %if.end.2173
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-344(%rbp), %rdi
	movslq	-120(%rbp), %rax
	subq	-376(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -352(%rbp)
	jmp	.LBB0_643
.LBB0_631:                              # %if.else.2178
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$901, %edi              # imm = 0x385
	movq	-352(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1584(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_641
# BB#632:                               # %if.then.2182
                                        #   in Loop: Header=BB0_614 Depth=3
	cmpq	$4, -384(%rbp)
	je	.LBB0_634
# BB#633:                               # %if.then.2185
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_634:                              # %if.end.2186
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$2, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_639
# BB#635:                               # %land.lhs.true.2193
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$2, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-120(%rbp), %rsi
	cmpq	%rsi, %rax
	jg	.LBB0_639
# BB#636:                               # %land.lhs.true.2199
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$3, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_639
# BB#637:                               # %land.lhs.true.2206
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$3, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rcx
	movq	-344(%rbp), %rdi
	movq	%rcx, -1592(%rbp)       # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-1592(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB0_639
# BB#638:                               # %if.then.2212
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movq	-344(%rbp), %rdi
	callq	AREF
	movq	%rax, -352(%rbp)
	jmp	.LBB0_640
.LBB0_639:                              # %if.else.2214
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_640:                              # %if.end.2215
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_642
.LBB0_641:                              # %if.else.2216
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_642:                              # %if.end.2217
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_643
.LBB0_643:                              # %if.end.2218
                                        #   in Loop: Header=BB0_614 Depth=3
	xorl	%edi, %edi
	movq	-352(%rbp), %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_645
# BB#644:                               # %if.then.2222
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_645:                              # %if.else.2223
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_648
# BB#646:                               # %land.lhs.true.2229
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-352(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-352(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	je	.LBB0_648
# BB#647:                               # %if.then.2238
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-352(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_669
.LBB0_648:                              # %if.else.2246
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$901, %edi              # imm = 0x385
	movq	-352(%rbp), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1608(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_650
# BB#649:                               # %lor.lhs.false.2250
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	$598, %edi              # imm = 0x256
	movq	-352(%rbp), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1616(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_651
.LBB0_650:                              # %if.then.2254
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_669
.LBB0_651:                              # %if.else.2258
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_657
# BB#652:                               # %if.then.2263
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-352(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-360(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_655
# BB#653:                               # %land.lhs.true.2273
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	-368(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_655
# BB#654:                               # %land.lhs.true.2279
                                        #   in Loop: Header=BB0_614 Depth=3
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-368(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-368(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB0_656
.LBB0_655:                              # %if.then.2288
                                        #   in Loop: Header=BB0_614 Depth=3
	jmp	.LBB0_668
.LBB0_656:                              # %if.end.2289
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-368(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	jmp	.LBB0_669
.LBB0_657:                              # %if.else.2297
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_666
# BB#658:                               # %if.then.2302
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_659
.LBB0_659:                              # %do.body.2303
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$256, -124(%rbp)        # imm = 0x100
	jge	.LBB0_661
# BB#660:                               # %lor.lhs.false.2306
                                        #   in Loop: Header=BB0_4 Depth=2
	leaq	-480(%rbp), %rdi
	movq	-352(%rbp), %rsi
	callq	setup_ccl_program
	testb	$1, %al
	jne	.LBB0_665
.LBB0_661:                              # %if.then.2308
	cmpl	$0, -124(%rbp)
	jle	.LBB0_663
# BB#662:                               # %if.then.2311
	movq	ccl_prog_stack_struct, %rax
	movq	%rax, -72(%rbp)
	movl	ccl_prog_stack_struct+8, %ecx
	movl	%ecx, -52(%rbp)
	movl	ccl_prog_stack_struct+12, %ecx
	movl	%ecx, -140(%rbp)
.LBB0_663:                              # %if.end.2312
	jmp	.LBB0_664
.LBB0_664:                              # %do.body.2313
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_665:                              # %if.end.2316
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$ccl_prog_stack_struct, %rax
	movq	-72(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movl	-388(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	%edi, 8(%rdx)
	movl	-140(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	%edi, 12(%rax)
	movl	-124(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$2, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edi
	movl	%edi, -140(%rbp)
	jmp	.LBB0_4
.LBB0_666:                              # %if.else.2332
	jmp	.LBB0_667
.LBB0_667:                              # %do.body.2333
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_668:                              # %for.inc.2341
                                        #   in Loop: Header=BB0_614 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_614
.LBB0_669:                              # %for.end.2343
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jne	.LBB0_671
# BB#670:                               # %if.then.2346
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
.LBB0_671:                              # %if.end.2350
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-388(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_833
.LBB0_672:                              # %sw.bb.2351
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-128(%rbp), %eax
	movl	%eax, -548(%rbp)
	cmpl	$0, stack_idx_of_map_multiple
	jle	.LBB0_677
# BB#673:                               # %if.then.2361
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	stack_idx_of_map_multiple, %eax
	cmpl	-124(%rbp), %eax
	jg	.LBB0_676
# BB#674:                               # %if.then.2364
	movabsq	$mapping_stack, %rax
	movl	$0, stack_idx_of_map_multiple
	movq	%rax, mapping_stack_pointer
# BB#675:                               # %do.body.2365
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_676:                              # %if.end.2368
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_678
.LBB0_677:                              # %if.else.2369
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$mapping_stack, %rax
	movq	%rax, mapping_stack_pointer
.LBB0_678:                              # %if.end.2370
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$0, stack_idx_of_map_multiple
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -540(%rbp)
	movl	-52(%rbp), %eax
	addl	-540(%rbp), %eax
	movl	%eax, -544(%rbp)
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -120(%rbp)
	movl	-540(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	cmpl	(%rsi,%rdx,4), %eax
	jle	.LBB0_681
# BB#679:                               # %land.lhs.true.2384
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jl	.LBB0_681
# BB#680:                               # %if.then.2390
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movl	-540(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -540(%rbp)
	jmp	.LBB0_682
.LBB0_681:                              # %if.else.2399
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$mapping_stack, %rax
	movl	-544(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	$-1, (%rsi,%rdx,4)
	movq	%rax, mapping_stack_pointer
	jmp	.LBB0_833
.LBB0_682:                              # %if.end.2403
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$mapping_stack, %rax
	addq	$8, %rax
	cmpq	%rax, mapping_stack_pointer
	ja	.LBB0_686
# BB#683:                               # %if.then.2406
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$mapping_stack, %rax
	movq	%rax, mapping_stack_pointer
# BB#684:                               # %do.body.2407
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	mapping_stack_pointer, %rax
	movl	$0, (%rax)
	movl	-120(%rbp), %ecx
	movq	mapping_stack_pointer, %rax
	movl	%ecx, 4(%rax)
	movq	mapping_stack_pointer, %rax
	addq	$8, %rax
	movq	%rax, mapping_stack_pointer
# BB#685:                               # %do.end.2409
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	jmp	.LBB0_698
.LBB0_686:                              # %if.else.2413
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_687
.LBB0_687:                              # %do.body.2414
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movl	%ecx, -552(%rbp)
# BB#688:                               # %do.end.2418
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_689
.LBB0_689:                              # %do.body.2419
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#690:                               # %do.end.2425
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	subl	$-3, %ecx
	movl	%eax, -1620(%rbp)       # 4-byte Spill
	movl	%ecx, -1624(%rbp)       # 4-byte Spill
	je	.LBB0_693
	jmp	.LBB0_864
.LBB0_864:                              # %do.end.2425
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-1620(%rbp), %eax       # 4-byte Reload
	subl	$-2, %eax
	movl	%eax, -1628(%rbp)       # 4-byte Spill
	je	.LBB0_692
	jmp	.LBB0_865
.LBB0_865:                              # %do.end.2425
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-1620(%rbp), %eax       # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -1632(%rbp)       # 4-byte Spill
	jne	.LBB0_694
	jmp	.LBB0_691
.LBB0_691:                              # %sw.bb.2426
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-552(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-540(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_697
.LBB0_692:                              # %sw.bb.2430
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -120(%rbp)
	movl	-112(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -112(%rbp)
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movl	-540(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -540(%rbp)
	jmp	.LBB0_697
.LBB0_693:                              # %sw.bb.2436
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-552(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-540(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-540(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -540(%rbp)
	jmp	.LBB0_697
.LBB0_694:                              # %sw.default.2439
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-540(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-540(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#695:                               # %do.body.2442
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#696:                               # %do.end.2448
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_697
.LBB0_697:                              # %sw.epilog.2449
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_698
.LBB0_698:                              # %if.end.2450
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	globals+256, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_701
# BB#699:                               # %if.then.2452
	jmp	.LBB0_700
.LBB0_700:                              # %do.body.2453
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_701:                              # %if.end.2456
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	globals+256, %rdi
	callq	ASIZE
	movq	%rax, -536(%rbp)
.LBB0_702:                              # %do.body.2458
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_703 Depth 4
	jmp	.LBB0_703
.LBB0_703:                              # %for.cond.2459
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_702 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$0, -540(%rbp)
	jle	.LBB0_777
# BB#704:                               # %for.body.2462
                                        #   in Loop: Header=BB0_703 Depth=4
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -520(%rbp)
	cmpq	$0, -520(%rbp)
	jge	.LBB0_711
# BB#705:                               # %if.then.2468
                                        #   in Loop: Header=BB0_703 Depth=4
	movabsq	$mapping_stack, %rax
	addq	$240, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	subq	-520(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -520(%rbp)
	cmpq	%rax, mapping_stack_pointer
	jb	.LBB0_708
# BB#706:                               # %if.then.2473
	jmp	.LBB0_707
.LBB0_707:                              # %do.body.2474
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_708:                              # %if.end.2477
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_709
.LBB0_709:                              # %do.body.2478
                                        #   in Loop: Header=BB0_703 Depth=4
	movslq	-540(%rbp), %rax
	subq	-520(%rbp), %rax
	movl	%eax, %ecx
	movq	mapping_stack_pointer, %rax
	movl	%ecx, (%rax)
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movq	mapping_stack_pointer, %rax
	movl	%ecx, 4(%rax)
	movq	mapping_stack_pointer, %rax
	addq	$8, %rax
	movq	%rax, mapping_stack_pointer
# BB#710:                               # %do.end.2487
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-520(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -540(%rbp)
	movl	-120(%rbp), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	jmp	.LBB0_776
.LBB0_711:                              # %if.end.2491
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-520(%rbp), %rax
	cmpq	-536(%rbp), %rax
	jl	.LBB0_713
# BB#712:                               # %if.then.2494
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_713:                              # %if.end.2495
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	globals+256, %rdi
	movq	-520(%rbp), %rsi
	callq	AREF
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB0_715
# BB#714:                               # %if.then.2501
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_715:                              # %if.end.2502
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_717
# BB#716:                               # %if.then.2507
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_717:                              # %if.end.2508
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-488(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -528(%rbp)
	cmpq	$1, -528(%rbp)
	jg	.LBB0_719
# BB#718:                               # %if.then.2512
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_719:                              # %if.end.2513
                                        #   in Loop: Header=BB0_703 Depth=4
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-488(%rbp), %rdi
	callq	AREF
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_724
# BB#720:                               # %if.then.2520
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-496(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movslq	-120(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_722
# BB#721:                               # %land.lhs.true.2525
                                        #   in Loop: Header=BB0_703 Depth=4
	movslq	-120(%rbp), %rax
	subq	-520(%rbp), %rax
	addq	$1, %rax
	cmpq	-528(%rbp), %rax
	jl	.LBB0_723
.LBB0_722:                              # %if.then.2531
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_723:                              # %if.end.2532
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-488(%rbp), %rdi
	movslq	-120(%rbp), %rax
	subq	-520(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -496(%rbp)
	jmp	.LBB0_736
.LBB0_724:                              # %if.else.2537
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$901, %edi              # imm = 0x385
	movq	-496(%rbp), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1640(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_734
# BB#725:                               # %if.then.2541
                                        #   in Loop: Header=BB0_703 Depth=4
	cmpq	$4, -528(%rbp)
	je	.LBB0_727
# BB#726:                               # %if.then.2544
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_727:                              # %if.end.2545
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$2, %eax
	movl	%eax, %esi
	movq	-488(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_732
# BB#728:                               # %land.lhs.true.2552
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$2, %eax
	movl	%eax, %esi
	movq	-488(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-120(%rbp), %rsi
	cmpq	%rsi, %rax
	jg	.LBB0_732
# BB#729:                               # %land.lhs.true.2558
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$3, %eax
	movl	%eax, %esi
	movq	-488(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_732
# BB#730:                               # %land.lhs.true.2565
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$3, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rcx
	movq	-488(%rbp), %rdi
	movq	%rcx, -1648(%rbp)       # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB0_732
# BB#731:                               # %if.then.2571
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$1, %eax
	movl	%eax, %esi
	movq	-488(%rbp), %rdi
	callq	AREF
	movq	%rax, -496(%rbp)
	jmp	.LBB0_733
.LBB0_732:                              # %if.else.2573
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_733:                              # %if.end.2574
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_735
.LBB0_734:                              # %if.else.2575
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_735:                              # %if.end.2576
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_736
.LBB0_736:                              # %if.end.2577
                                        #   in Loop: Header=BB0_703 Depth=4
	xorl	%edi, %edi
	movq	-496(%rbp), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1656(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_738
# BB#737:                               # %if.then.2581
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_738:                              # %if.end.2582
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	-112(%rbp), %eax
	movl	-60(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-496(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB0_743
# BB#739:                               # %land.lhs.true.2591
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-496(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-496(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	je	.LBB0_743
# BB#740:                               # %if.then.2600
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-496(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movl	-540(%rbp), %ecx
	subl	$1, %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-540(%rbp), %ecx
	subl	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
# BB#741:                               # %do.body.2607
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#742:                               # %do.end.2613
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_775
.LBB0_743:                              # %if.else.2615
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-496(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_751
# BB#744:                               # %if.then.2620
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-496(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_747
# BB#745:                               # %land.lhs.true.2631
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-512(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_747
# BB#746:                               # %land.lhs.true.2637
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-512(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-512(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB0_748
.LBB0_747:                              # %if.then.2646
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_748:                              # %if.end.2647
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	-512(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movl	-540(%rbp), %ecx
	subl	$1, %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-540(%rbp), %ecx
	subl	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
# BB#749:                               # %do.body.2654
                                        #   in Loop: Header=BB0_703 Depth=4
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#750:                               # %do.end.2660
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_774
.LBB0_751:                              # %if.else.2662
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	$901, %edi              # imm = 0x385
	movq	-496(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_753
# BB#752:                               # %if.then.2666
                                        #   in Loop: Header=BB0_703 Depth=4
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -120(%rbp)
	jmp	.LBB0_773
.LBB0_753:                              # %if.else.2669
                                        #   in Loop: Header=BB0_702 Depth=3
	movl	$598, %edi              # imm = 0x256
	movq	-496(%rbp), %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1672(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_755
# BB#754:                               # %if.then.2673
                                        #   in Loop: Header=BB0_702 Depth=3
	movl	-540(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-540(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_777
.LBB0_755:                              # %if.else.2676
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-496(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_771
# BB#756:                               # %if.then.2681
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$mapping_stack, %rax
	addq	$240, %rax
	cmpq	%rax, mapping_stack_pointer
	jb	.LBB0_759
# BB#757:                               # %if.then.2684
	jmp	.LBB0_758
.LBB0_758:                              # %do.body.2685
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_759:                              # %if.end.2688
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_760
.LBB0_760:                              # %do.body.2689
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-540(%rbp), %eax
	movq	mapping_stack_pointer, %rcx
	movl	%eax, (%rcx)
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movq	mapping_stack_pointer, %rcx
	movl	%eax, 4(%rcx)
	movq	mapping_stack_pointer, %rcx
	addq	$8, %rcx
	movq	%rcx, mapping_stack_pointer
# BB#761:                               # %do.end.2695
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_762
.LBB0_762:                              # %do.body.2696
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-540(%rbp), %eax
	movq	mapping_stack_pointer, %rcx
	movl	%eax, (%rcx)
	movl	-120(%rbp), %eax
	movq	mapping_stack_pointer, %rcx
	movl	%eax, 4(%rcx)
	movq	mapping_stack_pointer, %rcx
	addq	$8, %rcx
	movq	%rcx, mapping_stack_pointer
# BB#763:                               # %do.end.2700
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, stack_idx_of_map_multiple
# BB#764:                               # %do.body.2702
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$256, -124(%rbp)        # imm = 0x100
	jge	.LBB0_766
# BB#765:                               # %lor.lhs.false.2706
                                        #   in Loop: Header=BB0_4 Depth=2
	leaq	-640(%rbp), %rdi
	movq	-496(%rbp), %rsi
	callq	setup_ccl_program
	testb	$1, %al
	jne	.LBB0_770
.LBB0_766:                              # %if.then.2708
	cmpl	$0, -124(%rbp)
	jle	.LBB0_768
# BB#767:                               # %if.then.2711
	movq	ccl_prog_stack_struct, %rax
	movq	%rax, -72(%rbp)
	movl	ccl_prog_stack_struct+8, %ecx
	movl	%ecx, -52(%rbp)
	movl	ccl_prog_stack_struct+12, %ecx
	movl	%ecx, -140(%rbp)
.LBB0_768:                              # %if.end.2712
	jmp	.LBB0_769
.LBB0_769:                              # %do.body.2713
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_770:                              # %if.end.2716
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$ccl_prog_stack_struct, %rax
	movq	-72(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movl	-548(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	%edi, 8(%rdx)
	movl	-140(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	%edi, 12(%rax)
	movl	-124(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$2, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edi
	movl	%edi, -140(%rbp)
	jmp	.LBB0_4
.LBB0_771:                              # %if.else.2732
	jmp	.LBB0_772
.LBB0_772:                              # %do.body.2733
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_773:                              # %if.end.2738
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_774
.LBB0_774:                              # %if.end.2739
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_775
.LBB0_775:                              # %if.end.2740
                                        #   in Loop: Header=BB0_703 Depth=4
	jmp	.LBB0_776
.LBB0_776:                              # %for.inc.2741
                                        #   in Loop: Header=BB0_703 Depth=4
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-540(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_703
.LBB0_777:                              # %for.end.2745
                                        #   in Loop: Header=BB0_702 Depth=3
	movabsq	$mapping_stack, %rax
	addq	$8, %rax
	cmpq	%rax, mapping_stack_pointer
	ja	.LBB0_779
# BB#778:                               # %if.then.2748
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_785
.LBB0_779:                              # %if.end.2749
                                        #   in Loop: Header=BB0_702 Depth=3
	jmp	.LBB0_780
.LBB0_780:                              # %do.body.2750
                                        #   in Loop: Header=BB0_702 Depth=3
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#781:                               # %do.end.2756
                                        #   in Loop: Header=BB0_702 Depth=3
	movl	-540(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-540(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#782:                               # %do.body.2759
                                        #   in Loop: Header=BB0_702 Depth=3
	movq	mapping_stack_pointer, %rax
	addq	$-8, %rax
	movq	%rax, mapping_stack_pointer
	movq	mapping_stack_pointer, %rax
	movl	(%rax), %ecx
	movl	%ecx, -540(%rbp)
	movq	mapping_stack_pointer, %rax
	movl	4(%rax), %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#783:                               # %do.end.2765
                                        #   in Loop: Header=BB0_702 Depth=3
	jmp	.LBB0_784
.LBB0_784:                              # %do.cond
                                        #   in Loop: Header=BB0_702 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_702
	jmp	.LBB0_785
.LBB0_785:                              # %do.end.2766
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-544(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-120(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB0_833
.LBB0_786:                              # %sw.bb.2769
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	movl	%edx, %eax
	movl	%eax, -116(%rbp)
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -120(%rbp)
	movq	globals+256, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_787
	jmp	.LBB0_788
.LBB0_787:                              # %land.lhs.true.2784
                                        #   in Loop: Header=BB0_4 Depth=2
	movslq	-116(%rbp), %rax
	movq	globals+256, %rdi
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB0_789
.LBB0_788:                              # %if.then.2789
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	jmp	.LBB0_833
.LBB0_789:                              # %if.end.2793
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	globals+256, %rdi
	movslq	-116(%rbp), %rsi
	callq	AREF
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB0_791
# BB#790:                               # %if.then.2800
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	jmp	.LBB0_833
.LBB0_791:                              # %if.end.2804
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-648(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_792
	jmp	.LBB0_796
.LBB0_792:                              # %land.lhs.true.2810
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-648(%rbp), %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jge	.LBB0_796
# BB#793:                               # %land.lhs.true.2814
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-648(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_796
# BB#794:                               # %land.lhs.true.2821
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-648(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-120(%rbp), %rsi
	cmpq	%rsi, %rax
	jg	.LBB0_796
# BB#795:                               # %land.lhs.true.2827
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rcx
	movq	-648(%rbp), %rdi
	movq	%rcx, -1688(%rbp)       # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-1688(%rbp), %rcx       # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	-648(%rbp), %rdi
	movq	%rcx, -1696(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB0_797
.LBB0_796:                              # %if.then.2836
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	jmp	.LBB0_833
.LBB0_797:                              # %if.end.2840
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rcx
	movq	-648(%rbp), %rdi
	movq	%rcx, -1704(%rbp)       # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-1704(%rbp), %rcx       # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	movl	%edx, -676(%rbp)
	movl	-60(%rbp), %edx
	andl	$7, %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
	movq	-648(%rbp), %rdi
	movslq	-676(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1712(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_799
# BB#798:                               # %if.then.2855
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	jmp	.LBB0_830
.LBB0_799:                              # %if.else.2859
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-672(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_805
# BB#800:                               # %land.lhs.true.2865
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB0_802
	jmp	.LBB0_801
.LBB0_801:                              # %cond.true.2866
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-672(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_803
	jmp	.LBB0_805
.LBB0_802:                              # %cond.false.2870
                                        #   in Loop: Header=BB0_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-672(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB0_805
.LBB0_803:                              # %land.lhs.true.2874
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-672(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB0_805
# BB#804:                               # %if.then.2878
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-672(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	jmp	.LBB0_829
.LBB0_805:                              # %if.else.2883
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-672(%rbp), %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1720(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_807
# BB#806:                               # %if.then.2887
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_828
.LBB0_807:                              # %if.else.2888
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-672(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_816
# BB#808:                               # %if.then.2893
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-672(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-672(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_814
# BB#809:                               # %lor.lhs.false.2904
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-664(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_814
# BB#810:                               # %land.lhs.true.2910
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB0_812
	jmp	.LBB0_811
.LBB0_811:                              # %cond.true.2911
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-664(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_813
	jmp	.LBB0_814
.LBB0_812:                              # %cond.false.2915
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-664(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB0_814
.LBB0_813:                              # %land.lhs.true.2919
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-664(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB0_815
.LBB0_814:                              # %if.then.2923
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_815:                              # %if.end.2924
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-664(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	jmp	.LBB0_833
.LBB0_816:                              # %if.else.2929
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	-672(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_825
# BB#817:                               # %if.then.2934
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_818
.LBB0_818:                              # %do.body.2935
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$256, -124(%rbp)        # imm = 0x100
	jge	.LBB0_820
# BB#819:                               # %lor.lhs.false.2939
                                        #   in Loop: Header=BB0_4 Depth=2
	leaq	-768(%rbp), %rdi
	movq	-672(%rbp), %rsi
	callq	setup_ccl_program
	testb	$1, %al
	jne	.LBB0_824
.LBB0_820:                              # %if.then.2941
	cmpl	$0, -124(%rbp)
	jle	.LBB0_822
# BB#821:                               # %if.then.2944
	movq	ccl_prog_stack_struct, %rax
	movq	%rax, -72(%rbp)
	movl	ccl_prog_stack_struct+8, %ecx
	movl	%ecx, -52(%rbp)
	movl	ccl_prog_stack_struct+12, %ecx
	movl	%ecx, -140(%rbp)
.LBB0_822:                              # %if.end.2945
	jmp	.LBB0_823
.LBB0_823:                              # %do.body.2946
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_824:                              # %if.end.2950
                                        #   in Loop: Header=BB0_4 Depth=2
	movabsq	$ccl_prog_stack_struct, %rax
	movq	-72(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movl	-52(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	%edi, 8(%rdx)
	movl	-140(%rbp), %edi
	movslq	-124(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	%edi, 12(%rax)
	movl	-124(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movq	-752(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$2, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edi
	movl	%edi, -140(%rbp)
	jmp	.LBB0_4
.LBB0_825:                              # %if.else.2967
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	andl	$7, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
# BB#826:                               # %if.end.2971
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_827
.LBB0_827:                              # %if.end.2972
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_828
.LBB0_828:                              # %if.end.2973
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_829
.LBB0_829:                              # %if.end.2974
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_830
.LBB0_830:                              # %if.end.2975
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_833
.LBB0_831:                              # %sw.default.2976
	jmp	.LBB0_832
.LBB0_832:                              # %do.body.2977
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_833:                              # %sw.epilog.2981
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_836
.LBB0_834:                              # %sw.default.2982
	jmp	.LBB0_835
.LBB0_835:                              # %do.body.2983
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	jmp	.LBB0_838
.LBB0_836:                              # %sw.epilog.2987
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_837:                              # %for.end.2988
	jmp	.LBB0_838
.LBB0_838:                              # %ccl_error_handler
	cmpq	$0, -24(%rbp)
	je	.LBB0_857
# BB#839:                               # %if.then.2990
	cmpq	$0, -96(%rbp)
	jne	.LBB0_841
# BB#840:                               # %if.then.2992
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_841:                              # %if.end.2993
	movq	-8(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -1724(%rbp)       # 4-byte Spill
	movl	%edx, -1728(%rbp)       # 4-byte Spill
	je	.LBB0_842
	jmp	.LBB0_868
.LBB0_868:                              # %if.end.2993
	movl	-1724(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1732(%rbp)       # 4-byte Spill
	je	.LBB0_843
	jmp	.LBB0_847
.LBB0_842:                              # %sw.bb.2995
	movabsq	$.L.str, %rsi
	leaq	-1024(%rbp), %rdi
	movl	-56(%rbp), %eax
	andl	$31, %eax
	movl	-56(%rbp), %ecx
	addl	$0, %ecx
	movl	-128(%rbp), %r8d
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1028(%rbp)
	jmp	.LBB0_848
.LBB0_843:                              # %sw.bb.3000
	movq	-8(%rbp), %rax
	movb	84(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB0_845
# BB#844:                               # %cond.true.3006
	xorl	%eax, %eax
	movl	%eax, -1736(%rbp)       # 4-byte Spill
	jmp	.LBB0_846
.LBB0_845:                              # %cond.false.3007
	movabsq	$.L.str.1, %rsi
	leaq	-1024(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1736(%rbp)       # 4-byte Spill
.LBB0_846:                              # %cond.end.3010
	movl	-1736(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1028(%rbp)
	jmp	.LBB0_848
.LBB0_847:                              # %sw.default.3012
	movabsq	$.L.str.2, %rsi
	leaq	-1024(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	64(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1028(%rbp)
.LBB0_848:                              # %sw.epilog.3016
	movslq	-1028(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_854
# BB#849:                               # %if.then.3020
	movl	$0, -112(%rbp)
.LBB0_850:                              # %for.cond.3021
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-1028(%rbp), %eax
	jge	.LBB0_853
# BB#851:                               # %for.body.3024
                                        #   in Loop: Header=BB0_850 Depth=1
	movslq	-112(%rbp), %rax
	movsbl	-1024(%rbp,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%ecx, (%rax)
# BB#852:                               # %for.inc.3029
                                        #   in Loop: Header=BB0_850 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_850
.LBB0_853:                              # %for.end.3031
	jmp	.LBB0_854
.LBB0_854:                              # %if.end.3032
	movq	-8(%rbp), %rax
	cmpl	$3, 64(%rax)
	jne	.LBB0_856
# BB#855:                               # %if.then.3036
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB0_856:                              # %if.end.3037
	jmp	.LBB0_857
.LBB0_857:                              # %if.end.3038
	jmp	.LBB0_858
.LBB0_858:                              # %ccl_finish
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-124(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 76(%rcx)
	cmpq	$0, -96(%rbp)
	je	.LBB0_860
# BB#859:                               # %if.then.3049
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 80(%rax)
	jmp	.LBB0_861
.LBB0_860:                              # %if.else.3055
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
.LBB0_861:                              # %if.end.3057
	addq	$1744, %rsp             # imm = 0x6D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ccl_driver, .Lfunc_end0-ccl_driver
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_26
	.quad	.LBB0_37
	.quad	.LBB0_60
	.quad	.LBB0_71
	.quad	.LBB0_94
	.quad	.LBB0_116
	.quad	.LBB0_142
	.quad	.LBB0_168
	.quad	.LBB0_173
	.quad	.LBB0_195
	.quad	.LBB0_155
	.quad	.LBB0_196
	.quad	.LBB0_216
	.quad	.LBB0_217
	.quad	.LBB0_230
	.quad	.LBB0_265
	.quad	.LBB0_279
	.quad	.LBB0_287
	.quad	.LBB0_288
	.quad	.LBB0_312
	.quad	.LBB0_313
	.quad	.LBB0_327
	.quad	.LBB0_341
	.quad	.LBB0_314
	.quad	.LBB0_328
	.quad	.LBB0_398
.LJTI0_1:
	.quad	.LBB0_399
	.quad	.LBB0_422
	.quad	.LBB0_465
	.quad	.LBB0_502
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_831
	.quad	.LBB0_609
	.quad	.LBB0_672
	.quad	.LBB0_786
	.quad	.LBB0_547
	.quad	.LBB0_564
.LJTI0_2:
	.quad	.LBB0_290
	.quad	.LBB0_291
	.quad	.LBB0_292
	.quad	.LBB0_293
	.quad	.LBB0_294
	.quad	.LBB0_295
	.quad	.LBB0_296
	.quad	.LBB0_297
	.quad	.LBB0_298
	.quad	.LBB0_299
	.quad	.LBB0_300
	.quad	.LBB0_301
	.quad	.LBB0_302
	.quad	.LBB0_309
	.quad	.LBB0_309
	.quad	.LBB0_309
	.quad	.LBB0_303
	.quad	.LBB0_304
	.quad	.LBB0_305
	.quad	.LBB0_306
	.quad	.LBB0_307
	.quad	.LBB0_308
.LJTI0_3:
	.quad	.LBB0_348
	.quad	.LBB0_349
	.quad	.LBB0_350
	.quad	.LBB0_351
	.quad	.LBB0_352
	.quad	.LBB0_353
	.quad	.LBB0_354
	.quad	.LBB0_355
	.quad	.LBB0_356
	.quad	.LBB0_357
	.quad	.LBB0_358
	.quad	.LBB0_359
	.quad	.LBB0_360
	.quad	.LBB0_379
	.quad	.LBB0_379
	.quad	.LBB0_379
	.quad	.LBB0_361
	.quad	.LBB0_362
	.quad	.LBB0_363
	.quad	.LBB0_364
	.quad	.LBB0_365
	.quad	.LBB0_366
	.quad	.LBB0_367
	.quad	.LBB0_373

	.text
	.globl	setup_ccl_program
	.align	16, 0x90
	.type	setup_ccl_program,@function
setup_ccl_program:                      # @setup_ccl_program
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ccl_get_compiled_code
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB1_3
# BB#2:                                 # %if.then.3
	movb	$0, -1(%rbp)
	jmp	.LBB1_11
.LBB1_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 68(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jl	.LBB1_5
# BB#4:                                 # %if.then.15
	movq	Vccl_program_table, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
	movl	%edi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB1_5:                                # %if.end.19
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.20
	movq	-16(%rbp), %rax
	movl	$2, 24(%rax)
	movl	$0, -28(%rbp)
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -28(%rbp)
	jge	.LBB1_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB1_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, 32(%rcx,%rax,4)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               # %for.end
	movq	-16(%rbp), %rax
	movb	84(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 84(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movb	84(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 84(%rax)
	movb	$1, -1(%rbp)
.LBB1_11:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	setup_ccl_program, .Lfunc_end1-setup_ccl_program
	.cfi_endproc

	.align	16, 0x90
	.type	ccl_get_compiled_code,@function
ccl_get_compiled_code:                  # @ccl_get_compiled_code
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_5
.LBB2_1:                                # %if.then
	movq	-16(%rbp), %rdi
	callq	resolve_symbol_ccl_program
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$-1, (%rax)
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_2
	jmp	.LBB2_3
.LBB2_2:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB2_4:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_5:                                # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB2_7
# BB#6:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_7:                                # %if.end.7
	movl	$247, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_8:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	Vccl_program_table, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_10
.LBB2_9:                                # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_10:                               # %if.end.16
	movq	Vccl_program_table, %rdi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_11
	jmp	.LBB2_13
.LBB2_11:                               # %lor.lhs.false.20
	movq	-40(%rbp), %rdi
	callq	ASIZE
	cmpq	$4, %rax
	jne	.LBB2_13
# BB#12:                                # %lor.lhs.false.24
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_14
.LBB2_13:                               # %if.then.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_14:                               # %if.end.29
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-40(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_18
# BB#15:                                # %if.then.35
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	resolve_symbol_ccl_program
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_17
# BB#16:                                # %if.then.39
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_17:                               # %if.end.41
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB2_18:                               # %if.end.43
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	movq	%rax, -8(%rbp)
.LBB2_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ccl_get_compiled_code, .Lfunc_end2-ccl_get_compiled_code
	.cfi_endproc

	.globl	Fccl_program_p
	.align	16, 0x90
	.type	Fccl_program_p,@function
Fccl_program_p:                         # @Fccl_program_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_5
.LBB3_1:                                # %if.then
	movq	-16(%rbp), %rdi
	callq	resolve_symbol_ccl_program
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_2
	jmp	.LBB3_3
.LBB3_2:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB3_4:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB3_12
.LBB3_5:                                # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB3_7
# BB#6:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_12
.LBB3_7:                                # %if.end.8
	movl	$247, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_8:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	Vccl_program_table, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB3_10
.LBB3_9:                                # %cond.true.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false.17
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB3_11:                               # %cond.end.19
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB3_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fccl_program_p, .Lfunc_end3-Fccl_program_p
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_symbol_ccl_program,@function
resolve_symbol_ccl_program:             # @resolve_symbol_ccl_program
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jge	.LBB4_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB4_3
.LBB4_2:                                # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_40
.LBB4_3:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_33
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_11
# BB#6:                                 # %land.lhs.true.14
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB4_8
	jmp	.LBB4_7
.LBB4_7:                                # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB4_9
	jmp	.LBB4_11
.LBB4_8:                                # %cond.false
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB4_11
.LBB4_9:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB4_11
# BB#10:                                # %if.then.24
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_32
.LBB4_11:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_18
# BB#12:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_18
# BB#13:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_18
# BB#14:                                # %if.then.40
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fget
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB4_15
	jmp	.LBB4_16
.LBB4_15:                               # %if.then.48
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.50
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$1, -28(%rbp)
.LBB4_17:                               # %if.end.51
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_32
.LBB4_18:                               # %if.else.52
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_29
# BB#19:                                # %if.then.57
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$935, %edi              # imm = 0x3A7
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB4_20
	jmp	.LBB4_21
.LBB4_20:                               # %if.then.61
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	jmp	.LBB4_28
.LBB4_21:                               # %if.else.63
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$275, %edi              # imm = 0x113
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB4_22
	jmp	.LBB4_23
.LBB4_22:                               # %if.then.67
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	jmp	.LBB4_27
.LBB4_23:                               # %if.else.69
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$247, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB4_24
	jmp	.LBB4_25
.LBB4_24:                               # %if.then.73
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.75
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$1, -28(%rbp)
.LBB4_26:                               # %if.end.76
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %if.end.77
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.78
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_32
.LBB4_29:                               # %if.end.79
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.80
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.81
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_40
.LBB4_32:                               # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_4
.LBB4_33:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jg	.LBB4_35
# BB#34:                                # %land.lhs.true.87
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	sarq	$2, %rax
	cmpq	%rax, %rdi
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-84(%rbp), %r8d         # 4-byte Reload
	andl	%ecx, %r8d
	cmpl	$0, %r8d
	jne	.LBB4_36
.LBB4_35:                               # %if.then.98
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_40
.LBB4_36:                               # %if.end.100
	cmpl	$0, -28(%rbp)
	je	.LBB4_38
# BB#37:                                # %cond.true.102
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.104
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB4_39:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB4_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	resolve_symbol_ccl_program, .Lfunc_end4-resolve_symbol_ccl_program
	.cfi_endproc

	.globl	Fccl_execute
	.align	16, 0x90
	.type	Fccl_execute,@function
Fccl_execute:                           # @Fccl_execute
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
	subq	$144, %rsp
	leaq	-104(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	setup_ccl_program
	testb	$1, %al
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$8, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB5_4:                                # %if.end.3
	movl	$0, -108(%rbp)
.LBB5_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -108(%rbp)
	jge	.LBB5_15
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_12
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB5_9
	jmp	.LBB5_8
.LBB5_8:                                # %cond.true
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jle	.LBB5_10
	jmp	.LBB5_12
.LBB5_9:                                # %cond.false
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jg	.LBB5_12
.LBB5_10:                               # %land.lhs.true.19
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB5_12
# BB#11:                                # %cond.true.25
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.29
                                        #   in Loop: Header=BB5_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %cond.end
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movslq	-108(%rbp), %rax
	movl	%ecx, -72(%rbp,%rax,4)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB5_5
.LBB5_15:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	ccl_driver
# BB#16:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.36
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_19
# BB#18:                                # %if.then.40
	callq	process_quit_flag
	jmp	.LBB5_22
.LBB5_19:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB5_21
# BB#20:                                # %if.then.41
	callq	process_pending_signals
.LBB5_21:                               # %if.end.42
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.43
	jmp	.LBB5_23
.LBB5_23:                               # %do.end
	cmpl	$0, -40(%rbp)
	je	.LBB5_25
# BB#24:                                # %if.then.46
	movabsq	$.L.str.5, %rdi
	movl	-80(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB5_25:                               # %if.end.47
	movl	$0, -108(%rbp)
.LBB5_26:                               # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -108(%rbp)
	jge	.LBB5_29
# BB#27:                                # %for.body.51
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	movslq	-108(%rbp), %rax
	movslq	-72(%rbp,%rax,4), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#28:                                # %for.inc.57
                                        #   in Loop: Header=BB5_26 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB5_26
.LBB5_29:                               # %for.end.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fccl_execute, .Lfunc_end5-Fccl_execute
	.cfi_endproc

	.globl	Fccl_execute_on_string
	.align	16, 0x90
	.type	Fccl_execute_on_string,@function
Fccl_execute_on_string:                 # @Fccl_execute_on_string
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
	subq	$9536, %rsp             # imm = 0x2540
	leaq	-136(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	setup_ccl_program
	testb	$1, %al
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$9, %rax
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB6_4:                                # %if.end.3
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -184(%rbp)
	movl	$0, -140(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -140(%rbp)
	jge	.LBB6_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -8480(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8480(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	ASET
.LBB6_8:                                # %if.end.13
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_14
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_11
	jmp	.LBB6_10
.LBB6_10:                               # %cond.true
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jle	.LBB6_12
	jmp	.LBB6_14
.LBB6_11:                               # %cond.false
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jg	.LBB6_14
.LBB6_12:                               # %land.lhs.true.29
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB6_14
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movslq	-140(%rbp), %rax
	movl	%ecx, -104(%rbp,%rax,4)
.LBB6_14:                               # %if.end.40
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB6_5
.LBB6_16:                               # %for.end
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_21
# BB#17:                                # %if.then.48
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	movl	-112(%rbp), %ecx
	cmpl	-140(%rbp), %ecx
	jge	.LBB6_20
# BB#18:                                # %land.lhs.true.54
	movl	-140(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB6_20
# BB#19:                                # %if.then.57
	movl	-140(%rbp), %eax
	movl	%eax, -112(%rbp)
.LBB6_20:                               # %if.end.59
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.60
	cmpl	$0, -68(%rbp)
	je	.LBB6_23
# BB#22:                                # %cond.true.62
	movl	-68(%rbp), %eax
	movl	%eax, -8484(%rbp)       # 4-byte Spill
	jmp	.LBB6_24
.LBB6_23:                               # %cond.false.64
	movl	$1, %eax
	movl	%eax, -8484(%rbp)       # 4-byte Spill
	jmp	.LBB6_24
.LBB6_24:                               # %cond.end
	movl	-8484(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -8412(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_25
	jmp	.LBB6_110
.LBB6_25:                               # %cond.true.65
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_26
	jmp	.LBB6_68
.LBB6_26:                               # %cond.true.66
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_28
# BB#27:                                # %cond.true.74
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8488(%rbp)       # 4-byte Spill
	jmp	.LBB6_29
.LBB6_28:                               # %cond.false.98
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8488(%rbp)       # 4-byte Spill
.LBB6_29:                               # %cond.end.107
	movl	-8488(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_34
# BB#30:                                # %land.lhs.true.111
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB6_32
# BB#31:                                # %land.lhs.true.116
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB6_60
.LBB6_32:                               # %lor.lhs.false
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB6_34
# BB#33:                                # %land.lhs.true.125
	xorl	%eax, %eax
	movl	-8412(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB6_60
.LBB6_34:                               # %lor.lhs.false.130
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB6_46
# BB#35:                                # %cond.true.135
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB6_40
# BB#36:                                # %cond.true.140
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, -8492(%rbp)       # 4-byte Spill
	jge	.LBB6_38
# BB#37:                                # %cond.true.153
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8496(%rbp)       # 4-byte Spill
	jmp	.LBB6_39
.LBB6_38:                               # %cond.false.166
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8496(%rbp)       # 4-byte Spill
.LBB6_39:                               # %cond.end.175
	movl	-8496(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-8492(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB6_60
	jmp	.LBB6_57
.LBB6_40:                               # %cond.false.181
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$-1, %edx
	jne	.LBB6_42
# BB#41:                                # %cond.true.186
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_60
	jmp	.LBB6_57
.LBB6_42:                               # %cond.false.187
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_44
# BB#43:                                # %cond.true.198
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8500(%rbp)       # 4-byte Spill
	jmp	.LBB6_45
.LBB6_44:                               # %cond.false.224
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8500(%rbp)       # 4-byte Spill
.LBB6_45:                               # %cond.end.233
	movl	-8500(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-8412(%rbp), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB6_60
	jmp	.LBB6_57
.LBB6_46:                               # %cond.false.242
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB6_48
# BB#47:                                # %cond.true.247
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_60
	jmp	.LBB6_57
.LBB6_48:                               # %cond.false.248
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB6_53
# BB#49:                                # %cond.true.253
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, -8504(%rbp)       # 4-byte Spill
	jge	.LBB6_51
# BB#50:                                # %cond.true.266
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8508(%rbp)       # 4-byte Spill
	jmp	.LBB6_52
.LBB6_51:                               # %cond.false.292
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8508(%rbp)       # 4-byte Spill
.LBB6_52:                               # %cond.end.301
	movl	-8508(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-8504(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB6_60
	jmp	.LBB6_57
.LBB6_53:                               # %cond.false.308
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_55
# BB#54:                                # %cond.true.319
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8512(%rbp)       # 4-byte Spill
	jmp	.LBB6_56
.LBB6_55:                               # %cond.false.332
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8512(%rbp)       # 4-byte Spill
.LBB6_56:                               # %cond.end.341
	movl	-8512(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-8412(%rbp), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB6_60
.LBB6_57:                               # %lor.lhs.false.350
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	imull	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB6_59
# BB#58:                                # %land.lhs.true.360
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	imull	%esi, %eax
	cmpl	$-128, %eax
	jl	.LBB6_60
.LBB6_59:                               # %lor.lhs.false.368
	movl	$127, %eax
	movl	-8412(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-152(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	imull	%edi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_64
.LBB6_60:                               # %cond.true.376
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	cmpl	$127, %eax
	jg	.LBB6_62
# BB#61:                                # %cond.true.384
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -8516(%rbp)       # 4-byte Spill
	jmp	.LBB6_63
.LBB6_62:                               # %cond.false.392
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -8516(%rbp)       # 4-byte Spill
.LBB6_63:                               # %cond.end.402
	movl	-8516(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_64:                               # %cond.false.405
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	cmpl	$127, %eax
	jg	.LBB6_66
# BB#65:                                # %cond.true.413
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -8520(%rbp)       # 4-byte Spill
	jmp	.LBB6_67
.LBB6_66:                               # %cond.false.421
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -8520(%rbp)       # 4-byte Spill
.LBB6_67:                               # %cond.end.431
	movl	-8520(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_68:                               # %cond.false.434
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_70
# BB#69:                                # %cond.true.442
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8528(%rbp)       # 8-byte Spill
	jmp	.LBB6_71
.LBB6_70:                               # %cond.false.463
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8528(%rbp)       # 8-byte Spill
.LBB6_71:                               # %cond.end.469
	movq	-8528(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_76
# BB#72:                                # %land.lhs.true.473
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_74
# BB#73:                                # %land.lhs.true.476
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_102
.LBB6_74:                               # %lor.lhs.false.479
	cmpq	$0, -152(%rbp)
	jge	.LBB6_76
# BB#75:                                # %land.lhs.true.482
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_102
.LBB6_76:                               # %lor.lhs.false.485
	cmpq	$0, -152(%rbp)
	jge	.LBB6_88
# BB#77:                                # %cond.true.488
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_82
# BB#78:                                # %cond.true.491
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8536(%rbp)       # 8-byte Spill
	jge	.LBB6_80
# BB#79:                                # %cond.true.500
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8544(%rbp)       # 8-byte Spill
	jmp	.LBB6_81
.LBB6_80:                               # %cond.false.510
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8544(%rbp)       # 8-byte Spill
.LBB6_81:                               # %cond.end.516
	movq	-8544(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8536(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_102
	jmp	.LBB6_99
.LBB6_82:                               # %cond.false.521
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_84
# BB#83:                                # %cond.true.524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_102
	jmp	.LBB6_99
.LBB6_84:                               # %cond.false.525
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_86
# BB#85:                                # %cond.true.533
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8552(%rbp)       # 8-byte Spill
	jmp	.LBB6_87
.LBB6_86:                               # %cond.false.554
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8552(%rbp)       # 8-byte Spill
.LBB6_87:                               # %cond.end.560
	movq	-8552(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_102
	jmp	.LBB6_99
.LBB6_88:                               # %cond.false.566
	cmpq	$0, -152(%rbp)
	jne	.LBB6_90
# BB#89:                                # %cond.true.569
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_102
	jmp	.LBB6_99
.LBB6_90:                               # %cond.false.570
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_95
# BB#91:                                # %cond.true.573
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8560(%rbp)       # 8-byte Spill
	jge	.LBB6_93
# BB#92:                                # %cond.true.582
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8568(%rbp)       # 8-byte Spill
	jmp	.LBB6_94
.LBB6_93:                               # %cond.false.603
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8568(%rbp)       # 8-byte Spill
.LBB6_94:                               # %cond.end.609
	movq	-8568(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_102
	jmp	.LBB6_99
.LBB6_95:                               # %cond.false.614
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_97
# BB#96:                                # %cond.true.622
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8576(%rbp)       # 8-byte Spill
	jmp	.LBB6_98
.LBB6_97:                               # %cond.false.632
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8576(%rbp)       # 8-byte Spill
.LBB6_98:                               # %cond.end.638
	movq	-8576(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_102
.LBB6_99:                               # %lor.lhs.false.644
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_101
# BB#100:                               # %land.lhs.true.651
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB6_102
.LBB6_101:                              # %lor.lhs.false.656
	movl	$127, %eax
	movl	%eax, %ecx
	movslq	-8412(%rbp), %rdx
	imulq	-152(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB6_106
.LBB6_102:                              # %cond.true.661
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	cmpl	$127, %eax
	jg	.LBB6_104
# BB#103:                               # %cond.true.669
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -8580(%rbp)       # 4-byte Spill
	jmp	.LBB6_105
.LBB6_104:                              # %cond.false.677
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -8580(%rbp)       # 4-byte Spill
.LBB6_105:                              # %cond.end.687
	movl	-8580(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_106:                              # %cond.false.690
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	cmpl	$127, %eax
	jg	.LBB6_108
# BB#107:                               # %cond.true.698
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -8584(%rbp)       # 4-byte Spill
	jmp	.LBB6_109
.LBB6_108:                              # %cond.false.706
	movl	-8412(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-152(%rbp), %rdx
	movb	%dl, %cl
	movzbl	%cl, %esi
	imull	%esi, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -8584(%rbp)       # 4-byte Spill
.LBB6_109:                              # %cond.end.716
	movl	-8584(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_110:                              # %cond.false.719
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_111
	jmp	.LBB6_196
.LBB6_111:                              # %cond.true.720
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_112
	jmp	.LBB6_154
.LBB6_112:                              # %cond.true.721
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_114
# BB#113:                               # %cond.true.732
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8588(%rbp)       # 4-byte Spill
	jmp	.LBB6_115
.LBB6_114:                              # %cond.false.758
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8588(%rbp)       # 4-byte Spill
.LBB6_115:                              # %cond.end.767
	movl	-8588(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_120
# BB#116:                               # %land.lhs.true.771
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB6_118
# BB#117:                               # %land.lhs.true.776
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB6_146
.LBB6_118:                              # %lor.lhs.false.781
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB6_120
# BB#119:                               # %land.lhs.true.786
	xorl	%eax, %eax
	movl	-8412(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB6_146
.LBB6_120:                              # %lor.lhs.false.791
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB6_132
# BB#121:                               # %cond.true.796
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB6_126
# BB#122:                               # %cond.true.801
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, -8592(%rbp)       # 4-byte Spill
	jge	.LBB6_124
# BB#123:                               # %cond.true.814
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8596(%rbp)       # 4-byte Spill
	jmp	.LBB6_125
.LBB6_124:                              # %cond.false.827
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8596(%rbp)       # 4-byte Spill
.LBB6_125:                              # %cond.end.836
	movl	-8596(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-8592(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB6_146
	jmp	.LBB6_143
.LBB6_126:                              # %cond.false.843
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$-1, %edx
	jne	.LBB6_128
# BB#127:                               # %cond.true.848
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_146
	jmp	.LBB6_143
.LBB6_128:                              # %cond.false.849
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_130
# BB#129:                               # %cond.true.860
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8600(%rbp)       # 4-byte Spill
	jmp	.LBB6_131
.LBB6_130:                              # %cond.false.886
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8600(%rbp)       # 4-byte Spill
.LBB6_131:                              # %cond.end.895
	movl	-8600(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-8412(%rbp), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB6_146
	jmp	.LBB6_143
.LBB6_132:                              # %cond.false.904
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB6_134
# BB#133:                               # %cond.true.909
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_146
	jmp	.LBB6_143
.LBB6_134:                              # %cond.false.910
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB6_139
# BB#135:                               # %cond.true.915
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, -8604(%rbp)       # 4-byte Spill
	jge	.LBB6_137
# BB#136:                               # %cond.true.928
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movl	-8412(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8608(%rbp)       # 4-byte Spill
	jmp	.LBB6_138
.LBB6_137:                              # %cond.false.954
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8608(%rbp)       # 4-byte Spill
.LBB6_138:                              # %cond.end.963
	movl	-8608(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-8604(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB6_146
	jmp	.LBB6_143
.LBB6_139:                              # %cond.false.970
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_141
# BB#140:                               # %cond.true.981
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8612(%rbp)       # 4-byte Spill
	jmp	.LBB6_142
.LBB6_141:                              # %cond.false.994
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-8412(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8612(%rbp)       # 4-byte Spill
.LBB6_142:                              # %cond.end.1003
	movl	-8612(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-8412(%rbp), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB6_146
.LBB6_143:                              # %lor.lhs.false.1012
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	imull	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB6_145
# BB#144:                               # %land.lhs.true.1022
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	imull	%esi, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB6_146
.LBB6_145:                              # %lor.lhs.false.1030
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-8412(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-152(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	imull	%edi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_150
.LBB6_146:                              # %cond.true.1038
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB6_148
# BB#147:                               # %cond.true.1046
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -8616(%rbp)       # 4-byte Spill
	jmp	.LBB6_149
.LBB6_148:                              # %cond.false.1054
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -8616(%rbp)       # 4-byte Spill
.LBB6_149:                              # %cond.end.1064
	movl	-8616(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_150:                              # %cond.false.1067
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB6_152
# BB#151:                               # %cond.true.1075
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -8620(%rbp)       # 4-byte Spill
	jmp	.LBB6_153
.LBB6_152:                              # %cond.false.1083
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -8620(%rbp)       # 4-byte Spill
.LBB6_153:                              # %cond.end.1093
	movl	-8620(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_154:                              # %cond.false.1096
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_156
# BB#155:                               # %cond.true.1104
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8632(%rbp)       # 8-byte Spill
	jmp	.LBB6_157
.LBB6_156:                              # %cond.false.1125
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8632(%rbp)       # 8-byte Spill
.LBB6_157:                              # %cond.end.1131
	movq	-8632(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_162
# BB#158:                               # %land.lhs.true.1135
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_160
# BB#159:                               # %land.lhs.true.1138
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_188
.LBB6_160:                              # %lor.lhs.false.1141
	cmpq	$0, -152(%rbp)
	jge	.LBB6_162
# BB#161:                               # %land.lhs.true.1144
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_188
.LBB6_162:                              # %lor.lhs.false.1147
	cmpq	$0, -152(%rbp)
	jge	.LBB6_174
# BB#163:                               # %cond.true.1150
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_168
# BB#164:                               # %cond.true.1153
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8640(%rbp)       # 8-byte Spill
	jge	.LBB6_166
# BB#165:                               # %cond.true.1162
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8648(%rbp)       # 8-byte Spill
	jmp	.LBB6_167
.LBB6_166:                              # %cond.false.1172
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8648(%rbp)       # 8-byte Spill
.LBB6_167:                              # %cond.end.1178
	movq	-8648(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8640(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_188
	jmp	.LBB6_185
.LBB6_168:                              # %cond.false.1183
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_170
# BB#169:                               # %cond.true.1186
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_188
	jmp	.LBB6_185
.LBB6_170:                              # %cond.false.1187
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_172
# BB#171:                               # %cond.true.1195
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8656(%rbp)       # 8-byte Spill
	jmp	.LBB6_173
.LBB6_172:                              # %cond.false.1216
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8656(%rbp)       # 8-byte Spill
.LBB6_173:                              # %cond.end.1222
	movq	-8656(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_188
	jmp	.LBB6_185
.LBB6_174:                              # %cond.false.1228
	cmpq	$0, -152(%rbp)
	jne	.LBB6_176
# BB#175:                               # %cond.true.1231
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_188
	jmp	.LBB6_185
.LBB6_176:                              # %cond.false.1232
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_181
# BB#177:                               # %cond.true.1235
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8664(%rbp)       # 8-byte Spill
	jge	.LBB6_179
# BB#178:                               # %cond.true.1244
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8672(%rbp)       # 8-byte Spill
	jmp	.LBB6_180
.LBB6_179:                              # %cond.false.1265
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8672(%rbp)       # 8-byte Spill
.LBB6_180:                              # %cond.end.1271
	movq	-8672(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_188
	jmp	.LBB6_185
.LBB6_181:                              # %cond.false.1276
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_183
# BB#182:                               # %cond.true.1284
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8680(%rbp)       # 8-byte Spill
	jmp	.LBB6_184
.LBB6_183:                              # %cond.false.1294
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8680(%rbp)       # 8-byte Spill
.LBB6_184:                              # %cond.end.1300
	movq	-8680(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_188
.LBB6_185:                              # %lor.lhs.false.1306
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_187
# BB#186:                               # %land.lhs.true.1313
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB6_188
.LBB6_187:                              # %lor.lhs.false.1318
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movslq	-8412(%rbp), %rdx
	imulq	-152(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB6_192
.LBB6_188:                              # %cond.true.1323
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB6_190
# BB#189:                               # %cond.true.1331
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -8684(%rbp)       # 4-byte Spill
	jmp	.LBB6_191
.LBB6_190:                              # %cond.false.1339
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -8684(%rbp)       # 4-byte Spill
.LBB6_191:                              # %cond.end.1349
	movl	-8684(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_192:                              # %cond.false.1352
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB6_194
# BB#193:                               # %cond.true.1360
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -8688(%rbp)       # 4-byte Spill
	jmp	.LBB6_195
.LBB6_194:                              # %cond.false.1368
	movl	-8412(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movq	-152(%rbp), %rdx
	movw	%dx, %cx
	movzwl	%cx, %esi
	imull	%esi, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -8688(%rbp)       # 4-byte Spill
.LBB6_195:                              # %cond.end.1378
	movl	-8688(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_196:                              # %cond.false.1381
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_197
	jmp	.LBB6_282
.LBB6_197:                              # %cond.true.1382
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_198
	jmp	.LBB6_240
.LBB6_198:                              # %cond.true.1383
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_200
# BB#199:                               # %cond.true.1391
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8692(%rbp)       # 4-byte Spill
	jmp	.LBB6_201
.LBB6_200:                              # %cond.false.1411
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8692(%rbp)       # 4-byte Spill
.LBB6_201:                              # %cond.end.1417
	movl	-8692(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_206
# BB#202:                               # %land.lhs.true.1421
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_204
# BB#203:                               # %land.lhs.true.1424
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB6_232
.LBB6_204:                              # %lor.lhs.false.1428
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_206
# BB#205:                               # %land.lhs.true.1432
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_232
.LBB6_206:                              # %lor.lhs.false.1435
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_218
# BB#207:                               # %cond.true.1439
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_212
# BB#208:                               # %cond.true.1442
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -8696(%rbp)       # 4-byte Spill
	jge	.LBB6_210
# BB#209:                               # %cond.true.1450
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -8700(%rbp)       # 4-byte Spill
	jmp	.LBB6_211
.LBB6_210:                              # %cond.false.1460
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -8700(%rbp)       # 4-byte Spill
.LBB6_211:                              # %cond.end.1466
	movl	-8700(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -8704(%rbp)       # 4-byte Spill
	cltd
	movl	-8704(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8696(%rbp), %edi       # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB6_232
	jmp	.LBB6_229
.LBB6_212:                              # %cond.false.1472
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jne	.LBB6_214
# BB#213:                               # %cond.true.1476
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_232
	jmp	.LBB6_229
.LBB6_214:                              # %cond.false.1477
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_216
# BB#215:                               # %cond.true.1485
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8708(%rbp)       # 4-byte Spill
	jmp	.LBB6_217
.LBB6_216:                              # %cond.false.1505
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8708(%rbp)       # 4-byte Spill
.LBB6_217:                              # %cond.end.1511
	movl	-8708(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -8712(%rbp)       # 4-byte Spill
	cltd
	movl	-8712(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_232
	jmp	.LBB6_229
.LBB6_218:                              # %cond.false.1517
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_220
# BB#219:                               # %cond.true.1521
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_232
	jmp	.LBB6_229
.LBB6_220:                              # %cond.false.1522
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_225
# BB#221:                               # %cond.true.1525
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -8716(%rbp)       # 4-byte Spill
	jge	.LBB6_223
# BB#222:                               # %cond.true.1533
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	-8412(%rbp), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8720(%rbp)       # 4-byte Spill
	jmp	.LBB6_224
.LBB6_223:                              # %cond.false.1553
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8720(%rbp)       # 4-byte Spill
.LBB6_224:                              # %cond.end.1559
	movl	-8720(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -8724(%rbp)       # 4-byte Spill
	cltd
	movl	-8724(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-8716(%rbp), %edi       # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB6_232
	jmp	.LBB6_229
.LBB6_225:                              # %cond.false.1565
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_227
# BB#226:                               # %cond.true.1573
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -8728(%rbp)       # 4-byte Spill
	jmp	.LBB6_228
.LBB6_227:                              # %cond.false.1583
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	-8412(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -8728(%rbp)       # 4-byte Spill
.LBB6_228:                              # %cond.end.1589
	movl	-8728(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -8732(%rbp)       # 4-byte Spill
	cltd
	movl	-8732(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_232
.LBB6_229:                              # %lor.lhs.false.1595
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB6_231
# BB#230:                               # %land.lhs.true.1602
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB6_232
.LBB6_231:                              # %lor.lhs.false.1607
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-8412(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movl	%edx, %esi
	imull	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_236
.LBB6_232:                              # %cond.true.1612
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB6_234
# BB#233:                               # %cond.true.1617
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, -8736(%rbp)       # 4-byte Spill
	jmp	.LBB6_235
.LBB6_234:                              # %cond.false.1620
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -8736(%rbp)       # 4-byte Spill
.LBB6_235:                              # %cond.end.1625
	movl	-8736(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_236:                              # %cond.false.1628
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB6_238
# BB#237:                               # %cond.true.1633
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, -8740(%rbp)       # 4-byte Spill
	jmp	.LBB6_239
.LBB6_238:                              # %cond.false.1636
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -8740(%rbp)       # 4-byte Spill
.LBB6_239:                              # %cond.end.1641
	movl	-8740(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_240:                              # %cond.false.1644
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_242
# BB#241:                               # %cond.true.1652
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8752(%rbp)       # 8-byte Spill
	jmp	.LBB6_243
.LBB6_242:                              # %cond.false.1673
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8752(%rbp)       # 8-byte Spill
.LBB6_243:                              # %cond.end.1679
	movq	-8752(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_248
# BB#244:                               # %land.lhs.true.1683
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_246
# BB#245:                               # %land.lhs.true.1686
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_274
.LBB6_246:                              # %lor.lhs.false.1689
	cmpq	$0, -152(%rbp)
	jge	.LBB6_248
# BB#247:                               # %land.lhs.true.1692
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_274
.LBB6_248:                              # %lor.lhs.false.1695
	cmpq	$0, -152(%rbp)
	jge	.LBB6_260
# BB#249:                               # %cond.true.1698
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_254
# BB#250:                               # %cond.true.1701
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8760(%rbp)       # 8-byte Spill
	jge	.LBB6_252
# BB#251:                               # %cond.true.1710
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8768(%rbp)       # 8-byte Spill
	jmp	.LBB6_253
.LBB6_252:                              # %cond.false.1720
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8768(%rbp)       # 8-byte Spill
.LBB6_253:                              # %cond.end.1726
	movq	-8768(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8760(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_274
	jmp	.LBB6_271
.LBB6_254:                              # %cond.false.1731
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_256
# BB#255:                               # %cond.true.1734
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_274
	jmp	.LBB6_271
.LBB6_256:                              # %cond.false.1735
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_258
# BB#257:                               # %cond.true.1743
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8776(%rbp)       # 8-byte Spill
	jmp	.LBB6_259
.LBB6_258:                              # %cond.false.1764
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8776(%rbp)       # 8-byte Spill
.LBB6_259:                              # %cond.end.1770
	movq	-8776(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_274
	jmp	.LBB6_271
.LBB6_260:                              # %cond.false.1776
	cmpq	$0, -152(%rbp)
	jne	.LBB6_262
# BB#261:                               # %cond.true.1779
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_274
	jmp	.LBB6_271
.LBB6_262:                              # %cond.false.1780
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_267
# BB#263:                               # %cond.true.1783
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8784(%rbp)       # 8-byte Spill
	jge	.LBB6_265
# BB#264:                               # %cond.true.1792
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8792(%rbp)       # 8-byte Spill
	jmp	.LBB6_266
.LBB6_265:                              # %cond.false.1813
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8792(%rbp)       # 8-byte Spill
.LBB6_266:                              # %cond.end.1819
	movq	-8792(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8784(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_274
	jmp	.LBB6_271
.LBB6_267:                              # %cond.false.1824
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_269
# BB#268:                               # %cond.true.1832
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8800(%rbp)       # 8-byte Spill
	jmp	.LBB6_270
.LBB6_269:                              # %cond.false.1842
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8800(%rbp)       # 8-byte Spill
.LBB6_270:                              # %cond.end.1848
	movq	-8800(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_274
.LBB6_271:                              # %lor.lhs.false.1854
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_273
# BB#272:                               # %land.lhs.true.1861
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB6_274
.LBB6_273:                              # %lor.lhs.false.1866
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movslq	-8412(%rbp), %rdx
	imulq	-152(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB6_278
.LBB6_274:                              # %cond.true.1871
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB6_276
# BB#275:                               # %cond.true.1876
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, -8804(%rbp)       # 4-byte Spill
	jmp	.LBB6_277
.LBB6_276:                              # %cond.false.1879
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -8804(%rbp)       # 4-byte Spill
.LBB6_277:                              # %cond.end.1884
	movl	-8804(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_278:                              # %cond.false.1887
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB6_280
# BB#279:                               # %cond.true.1892
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, -8808(%rbp)       # 4-byte Spill
	jmp	.LBB6_281
.LBB6_280:                              # %cond.false.1895
	movl	-8412(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	%edx, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -8808(%rbp)       # 4-byte Spill
.LBB6_281:                              # %cond.end.1900
	movl	-8808(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_282:                              # %cond.false.1903
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_283
	jmp	.LBB6_368
.LBB6_283:                              # %cond.true.1904
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_284
	jmp	.LBB6_326
.LBB6_284:                              # %cond.true.1905
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_286
# BB#285:                               # %cond.true.1913
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8816(%rbp)       # 8-byte Spill
	jmp	.LBB6_287
.LBB6_286:                              # %cond.false.1934
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8816(%rbp)       # 8-byte Spill
.LBB6_287:                              # %cond.end.1940
	movq	-8816(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_292
# BB#288:                               # %land.lhs.true.1944
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_290
# BB#289:                               # %land.lhs.true.1948
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_318
.LBB6_290:                              # %lor.lhs.false.1951
	cmpq	$0, -152(%rbp)
	jge	.LBB6_292
# BB#291:                               # %land.lhs.true.1954
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-8412(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB6_318
.LBB6_292:                              # %lor.lhs.false.1958
	cmpq	$0, -152(%rbp)
	jge	.LBB6_304
# BB#293:                               # %cond.true.1961
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_298
# BB#294:                               # %cond.true.1965
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8824(%rbp)       # 8-byte Spill
	jge	.LBB6_296
# BB#295:                               # %cond.true.1974
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8832(%rbp)       # 8-byte Spill
	jmp	.LBB6_297
.LBB6_296:                              # %cond.false.1984
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8832(%rbp)       # 8-byte Spill
.LBB6_297:                              # %cond.end.1990
	movq	-8832(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8824(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_318
	jmp	.LBB6_315
.LBB6_298:                              # %cond.false.1995
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_300
# BB#299:                               # %cond.true.1998
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_318
	jmp	.LBB6_315
.LBB6_300:                              # %cond.false.1999
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_302
# BB#301:                               # %cond.true.2007
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8840(%rbp)       # 8-byte Spill
	jmp	.LBB6_303
.LBB6_302:                              # %cond.false.2028
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8840(%rbp)       # 8-byte Spill
.LBB6_303:                              # %cond.end.2034
	movq	-8840(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_318
	jmp	.LBB6_315
.LBB6_304:                              # %cond.false.2040
	cmpq	$0, -152(%rbp)
	jne	.LBB6_306
# BB#305:                               # %cond.true.2043
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_318
	jmp	.LBB6_315
.LBB6_306:                              # %cond.false.2044
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_311
# BB#307:                               # %cond.true.2048
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8848(%rbp)       # 8-byte Spill
	jge	.LBB6_309
# BB#308:                               # %cond.true.2057
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8856(%rbp)       # 8-byte Spill
	jmp	.LBB6_310
.LBB6_309:                              # %cond.false.2078
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8856(%rbp)       # 8-byte Spill
.LBB6_310:                              # %cond.end.2084
	movq	-8856(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8848(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_318
	jmp	.LBB6_315
.LBB6_311:                              # %cond.false.2089
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_313
# BB#312:                               # %cond.true.2097
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8864(%rbp)       # 8-byte Spill
	jmp	.LBB6_314
.LBB6_313:                              # %cond.false.2107
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8864(%rbp)       # 8-byte Spill
.LBB6_314:                              # %cond.end.2113
	movq	-8864(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_318
.LBB6_315:                              # %lor.lhs.false.2119
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_317
# BB#316:                               # %land.lhs.true.2126
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB6_318
.LBB6_317:                              # %lor.lhs.false.2131
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_322
.LBB6_318:                              # %cond.true.2136
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_320
# BB#319:                               # %cond.true.2141
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -8872(%rbp)       # 8-byte Spill
	jmp	.LBB6_321
.LBB6_320:                              # %cond.false.2144
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8872(%rbp)       # 8-byte Spill
.LBB6_321:                              # %cond.end.2149
	movq	-8872(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_322:                              # %cond.false.2151
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_324
# BB#323:                               # %cond.true.2156
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -8880(%rbp)       # 8-byte Spill
	jmp	.LBB6_325
.LBB6_324:                              # %cond.false.2159
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8880(%rbp)       # 8-byte Spill
.LBB6_325:                              # %cond.end.2164
	movq	-8880(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_326:                              # %cond.false.2166
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_328
# BB#327:                               # %cond.true.2174
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8888(%rbp)       # 8-byte Spill
	jmp	.LBB6_329
.LBB6_328:                              # %cond.false.2195
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8888(%rbp)       # 8-byte Spill
.LBB6_329:                              # %cond.end.2201
	movq	-8888(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_334
# BB#330:                               # %land.lhs.true.2205
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_332
# BB#331:                               # %land.lhs.true.2208
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_360
.LBB6_332:                              # %lor.lhs.false.2211
	cmpq	$0, -152(%rbp)
	jge	.LBB6_334
# BB#333:                               # %land.lhs.true.2214
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_360
.LBB6_334:                              # %lor.lhs.false.2217
	cmpq	$0, -152(%rbp)
	jge	.LBB6_346
# BB#335:                               # %cond.true.2220
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_340
# BB#336:                               # %cond.true.2223
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8896(%rbp)       # 8-byte Spill
	jge	.LBB6_338
# BB#337:                               # %cond.true.2232
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8904(%rbp)       # 8-byte Spill
	jmp	.LBB6_339
.LBB6_338:                              # %cond.false.2242
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8904(%rbp)       # 8-byte Spill
.LBB6_339:                              # %cond.end.2248
	movq	-8904(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8896(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_360
	jmp	.LBB6_357
.LBB6_340:                              # %cond.false.2253
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_342
# BB#341:                               # %cond.true.2256
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_360
	jmp	.LBB6_357
.LBB6_342:                              # %cond.false.2257
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_344
# BB#343:                               # %cond.true.2265
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8912(%rbp)       # 8-byte Spill
	jmp	.LBB6_345
.LBB6_344:                              # %cond.false.2286
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8912(%rbp)       # 8-byte Spill
.LBB6_345:                              # %cond.end.2292
	movq	-8912(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_360
	jmp	.LBB6_357
.LBB6_346:                              # %cond.false.2298
	cmpq	$0, -152(%rbp)
	jne	.LBB6_348
# BB#347:                               # %cond.true.2301
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_360
	jmp	.LBB6_357
.LBB6_348:                              # %cond.false.2302
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_353
# BB#349:                               # %cond.true.2305
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8920(%rbp)       # 8-byte Spill
	jge	.LBB6_351
# BB#350:                               # %cond.true.2314
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8928(%rbp)       # 8-byte Spill
	jmp	.LBB6_352
.LBB6_351:                              # %cond.false.2335
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8928(%rbp)       # 8-byte Spill
.LBB6_352:                              # %cond.end.2341
	movq	-8928(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8920(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_360
	jmp	.LBB6_357
.LBB6_353:                              # %cond.false.2346
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_355
# BB#354:                               # %cond.true.2354
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8936(%rbp)       # 8-byte Spill
	jmp	.LBB6_356
.LBB6_355:                              # %cond.false.2364
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8936(%rbp)       # 8-byte Spill
.LBB6_356:                              # %cond.end.2370
	movq	-8936(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_360
.LBB6_357:                              # %lor.lhs.false.2376
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_359
# BB#358:                               # %land.lhs.true.2383
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB6_360
.LBB6_359:                              # %lor.lhs.false.2388
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_364
.LBB6_360:                              # %cond.true.2393
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_362
# BB#361:                               # %cond.true.2398
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -8944(%rbp)       # 8-byte Spill
	jmp	.LBB6_363
.LBB6_362:                              # %cond.false.2401
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8944(%rbp)       # 8-byte Spill
.LBB6_363:                              # %cond.end.2406
	movq	-8944(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_364:                              # %cond.false.2408
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_366
# BB#365:                               # %cond.true.2413
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -8952(%rbp)       # 8-byte Spill
	jmp	.LBB6_367
.LBB6_366:                              # %cond.false.2416
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8952(%rbp)       # 8-byte Spill
.LBB6_367:                              # %cond.end.2421
	movq	-8952(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_368:                              # %cond.false.2423
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_369
	jmp	.LBB6_411
.LBB6_369:                              # %cond.true.2424
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_371
# BB#370:                               # %cond.true.2432
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8960(%rbp)       # 8-byte Spill
	jmp	.LBB6_372
.LBB6_371:                              # %cond.false.2453
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8960(%rbp)       # 8-byte Spill
.LBB6_372:                              # %cond.end.2459
	movq	-8960(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_377
# BB#373:                               # %land.lhs.true.2463
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_375
# BB#374:                               # %land.lhs.true.2467
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_403
.LBB6_375:                              # %lor.lhs.false.2470
	cmpq	$0, -152(%rbp)
	jge	.LBB6_377
# BB#376:                               # %land.lhs.true.2473
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-8412(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB6_403
.LBB6_377:                              # %lor.lhs.false.2477
	cmpq	$0, -152(%rbp)
	jge	.LBB6_389
# BB#378:                               # %cond.true.2480
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_383
# BB#379:                               # %cond.true.2484
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8968(%rbp)       # 8-byte Spill
	jge	.LBB6_381
# BB#380:                               # %cond.true.2493
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8976(%rbp)       # 8-byte Spill
	jmp	.LBB6_382
.LBB6_381:                              # %cond.false.2503
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8976(%rbp)       # 8-byte Spill
.LBB6_382:                              # %cond.end.2509
	movq	-8976(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8968(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_403
	jmp	.LBB6_400
.LBB6_383:                              # %cond.false.2514
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_385
# BB#384:                               # %cond.true.2517
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_403
	jmp	.LBB6_400
.LBB6_385:                              # %cond.false.2518
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_387
# BB#386:                               # %cond.true.2526
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -8984(%rbp)       # 8-byte Spill
	jmp	.LBB6_388
.LBB6_387:                              # %cond.false.2547
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8984(%rbp)       # 8-byte Spill
.LBB6_388:                              # %cond.end.2553
	movq	-8984(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_403
	jmp	.LBB6_400
.LBB6_389:                              # %cond.false.2559
	cmpq	$0, -152(%rbp)
	jne	.LBB6_391
# BB#390:                               # %cond.true.2562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_403
	jmp	.LBB6_400
.LBB6_391:                              # %cond.false.2563
	movslq	-8412(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB6_396
# BB#392:                               # %cond.true.2567
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8992(%rbp)       # 8-byte Spill
	jge	.LBB6_394
# BB#393:                               # %cond.true.2576
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -9000(%rbp)       # 8-byte Spill
	jmp	.LBB6_395
.LBB6_394:                              # %cond.false.2597
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9000(%rbp)       # 8-byte Spill
.LBB6_395:                              # %cond.end.2603
	movq	-9000(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-8992(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_403
	jmp	.LBB6_400
.LBB6_396:                              # %cond.false.2608
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_398
# BB#397:                               # %cond.true.2616
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9008(%rbp)       # 8-byte Spill
	jmp	.LBB6_399
.LBB6_398:                              # %cond.false.2626
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9008(%rbp)       # 8-byte Spill
.LBB6_399:                              # %cond.end.2632
	movq	-9008(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_403
.LBB6_400:                              # %lor.lhs.false.2638
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_402
# BB#401:                               # %land.lhs.true.2645
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB6_403
.LBB6_402:                              # %lor.lhs.false.2650
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_407
.LBB6_403:                              # %cond.true.2655
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_405
# BB#404:                               # %cond.true.2660
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -9016(%rbp)       # 8-byte Spill
	jmp	.LBB6_406
.LBB6_405:                              # %cond.false.2663
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9016(%rbp)       # 8-byte Spill
.LBB6_406:                              # %cond.end.2668
	movq	-9016(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_407:                              # %cond.false.2670
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_409
# BB#408:                               # %cond.true.2675
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -9024(%rbp)       # 8-byte Spill
	jmp	.LBB6_410
.LBB6_409:                              # %cond.false.2678
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9024(%rbp)       # 8-byte Spill
.LBB6_410:                              # %cond.end.2683
	movq	-9024(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_411:                              # %cond.false.2685
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_413
# BB#412:                               # %cond.true.2693
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -9032(%rbp)       # 8-byte Spill
	jmp	.LBB6_414
.LBB6_413:                              # %cond.false.2714
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9032(%rbp)       # 8-byte Spill
.LBB6_414:                              # %cond.end.2720
	movq	-9032(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB6_419
# BB#415:                               # %land.lhs.true.2724
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_417
# BB#416:                               # %land.lhs.true.2727
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-152(%rbp), %rcx
	jl	.LBB6_445
.LBB6_417:                              # %lor.lhs.false.2730
	cmpq	$0, -152(%rbp)
	jge	.LBB6_419
# BB#418:                               # %land.lhs.true.2733
	xorl	%eax, %eax
	cmpl	-8412(%rbp), %eax
	jl	.LBB6_445
.LBB6_419:                              # %lor.lhs.false.2736
	cmpq	$0, -152(%rbp)
	jge	.LBB6_431
# BB#420:                               # %cond.true.2739
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_425
# BB#421:                               # %cond.true.2742
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -9040(%rbp)       # 8-byte Spill
	jge	.LBB6_423
# BB#422:                               # %cond.true.2751
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9048(%rbp)       # 8-byte Spill
	jmp	.LBB6_424
.LBB6_423:                              # %cond.false.2761
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9048(%rbp)       # 8-byte Spill
.LBB6_424:                              # %cond.end.2767
	movq	-9048(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-9040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_445
	jmp	.LBB6_442
.LBB6_425:                              # %cond.false.2772
	cmpq	$-1, -152(%rbp)
	jne	.LBB6_427
# BB#426:                               # %cond.true.2775
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_445
	jmp	.LBB6_442
.LBB6_427:                              # %cond.false.2776
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_429
# BB#428:                               # %cond.true.2784
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -9056(%rbp)       # 8-byte Spill
	jmp	.LBB6_430
.LBB6_429:                              # %cond.false.2805
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9056(%rbp)       # 8-byte Spill
.LBB6_430:                              # %cond.end.2811
	movq	-9056(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_445
	jmp	.LBB6_442
.LBB6_431:                              # %cond.false.2817
	cmpq	$0, -152(%rbp)
	jne	.LBB6_433
# BB#432:                               # %cond.true.2820
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_445
	jmp	.LBB6_442
.LBB6_433:                              # %cond.false.2821
	cmpl	$0, -8412(%rbp)
	jge	.LBB6_438
# BB#434:                               # %cond.true.2824
	movslq	-8412(%rbp), %rax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -9064(%rbp)       # 8-byte Spill
	jge	.LBB6_436
# BB#435:                               # %cond.true.2833
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	movslq	-8412(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdx
	movslq	-8412(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -9072(%rbp)       # 8-byte Spill
	jmp	.LBB6_437
.LBB6_436:                              # %cond.false.2854
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9072(%rbp)       # 8-byte Spill
.LBB6_437:                              # %cond.end.2860
	movq	-9072(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movq	-9064(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_445
	jmp	.LBB6_442
.LBB6_438:                              # %cond.false.2865
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_440
# BB#439:                               # %cond.true.2873
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9080(%rbp)       # 8-byte Spill
	jmp	.LBB6_441
.LBB6_440:                              # %cond.false.2883
	imulq	$0, -152(%rbp), %rax
	movslq	-8412(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9080(%rbp)       # 8-byte Spill
.LBB6_441:                              # %cond.end.2889
	movq	-9080(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-152(%rbp)
	movslq	-8412(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB6_445
.LBB6_442:                              # %lor.lhs.false.2895
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_444
# BB#443:                               # %land.lhs.true.2902
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB6_445
.LBB6_444:                              # %lor.lhs.false.2907
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_449
.LBB6_445:                              # %cond.true.2912
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_447
# BB#446:                               # %cond.true.2917
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -9088(%rbp)       # 8-byte Spill
	jmp	.LBB6_448
.LBB6_447:                              # %cond.false.2920
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9088(%rbp)       # 8-byte Spill
.LBB6_448:                              # %cond.end.2925
	movq	-9088(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_453
.LBB6_449:                              # %cond.false.2927
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-8412(%rbp), %rcx
	imulq	-152(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB6_451
# BB#450:                               # %cond.true.2932
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -9096(%rbp)       # 8-byte Spill
	jmp	.LBB6_452
.LBB6_451:                              # %cond.false.2935
	movslq	-8412(%rbp), %rax
	imulq	-152(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9096(%rbp)       # 8-byte Spill
.LBB6_452:                              # %cond.end.2940
	movq	-9096(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
.LBB6_453:                              # %lor.lhs.false.2942
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_454
	jmp	.LBB6_513
.LBB6_454:                              # %cond.true.2943
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_455
	jmp	.LBB6_484
.LBB6_455:                              # %cond.true.2944
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_457
# BB#456:                               # %cond.true.2953
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -9100(%rbp)       # 4-byte Spill
	jmp	.LBB6_458
.LBB6_457:                              # %cond.false.2975
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -9100(%rbp)       # 4-byte Spill
.LBB6_458:                              # %cond.end.2982
	movl	-9100(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB6_468
# BB#459:                               # %cond.true.2986
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB6_464
# BB#460:                               # %cond.true.2991
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_462
# BB#461:                               # %cond.true.3000
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -9104(%rbp)       # 4-byte Spill
	jmp	.LBB6_463
.LBB6_462:                              # %cond.false.3022
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -9104(%rbp)       # 4-byte Spill
.LBB6_463:                              # %cond.end.3029
	movl	-9104(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rdx
	movb	%dl, %sil
	movsbl	%sil, %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB6_476
	jmp	.LBB6_473
.LBB6_464:                              # %cond.false.3036
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_466
# BB#465:                               # %cond.true.3045
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -9108(%rbp)       # 4-byte Spill
	jmp	.LBB6_467
.LBB6_466:                              # %cond.false.3056
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -9108(%rbp)       # 4-byte Spill
.LBB6_467:                              # %cond.end.3063
	movl	-9108(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	cmpl	$0, %eax
	jl	.LBB6_476
	jmp	.LBB6_473
.LBB6_468:                              # %cond.false.3070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_469
	jmp	.LBB6_470
.LBB6_469:                              # %cond.true.3071
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	cmpl	%esi, %edx
	jle	.LBB6_476
	jmp	.LBB6_473
.LBB6_470:                              # %cond.false.3079
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB6_472
# BB#471:                               # %cond.true.3084
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	cmpl	%esi, %eax
	jle	.LBB6_476
	jmp	.LBB6_473
.LBB6_472:                              # %cond.false.3090
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB6_476
.LBB6_473:                              # %lor.lhs.false.3098
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_475
# BB#474:                               # %land.lhs.true.3106
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	cmpl	$-128, %edx
	jl	.LBB6_476
.LBB6_475:                              # %lor.lhs.false.3112
	movl	$127, %eax
	movq	-152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	cmpl	%esi, %eax
	jge	.LBB6_480
.LBB6_476:                              # %cond.true.3118
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	cmpl	$127, %edx
	jg	.LBB6_478
# BB#477:                               # %cond.true.3124
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9112(%rbp)       # 4-byte Spill
	jmp	.LBB6_479
.LBB6_478:                              # %cond.false.3130
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9112(%rbp)       # 4-byte Spill
.LBB6_479:                              # %cond.end.3138
	movl	-9112(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_480:                              # %cond.false.3141
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	cmpl	$127, %edx
	jg	.LBB6_482
# BB#481:                               # %cond.true.3147
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9116(%rbp)       # 4-byte Spill
	jmp	.LBB6_483
.LBB6_482:                              # %cond.false.3153
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9116(%rbp)       # 4-byte Spill
.LBB6_483:                              # %cond.end.3161
	movl	-9116(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_484:                              # %cond.false.3164
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_486
# BB#485:                               # %cond.true.3171
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9128(%rbp)       # 8-byte Spill
	jmp	.LBB6_487
.LBB6_486:                              # %cond.false.3190
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9128(%rbp)       # 8-byte Spill
.LBB6_487:                              # %cond.end.3195
	movq	-9128(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_497
# BB#488:                               # %cond.true.3199
	cmpq	$0, -152(%rbp)
	jge	.LBB6_493
# BB#489:                               # %cond.true.3202
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_491
# BB#490:                               # %cond.true.3209
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9136(%rbp)       # 8-byte Spill
	jmp	.LBB6_492
.LBB6_491:                              # %cond.false.3228
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9136(%rbp)       # 8-byte Spill
.LBB6_492:                              # %cond.end.3233
	movq	-9136(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_505
	jmp	.LBB6_502
.LBB6_493:                              # %cond.false.3238
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_495
# BB#494:                               # %cond.true.3245
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9144(%rbp)       # 8-byte Spill
	jmp	.LBB6_496
.LBB6_495:                              # %cond.false.3254
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9144(%rbp)       # 8-byte Spill
.LBB6_496:                              # %cond.end.3259
	movq	-9144(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_505
	jmp	.LBB6_502
.LBB6_497:                              # %cond.false.3264
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_498
	jmp	.LBB6_499
.LBB6_498:                              # %cond.true.3265
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_505
	jmp	.LBB6_502
.LBB6_499:                              # %cond.false.3269
	cmpq	$0, -152(%rbp)
	jge	.LBB6_501
# BB#500:                               # %cond.true.3272
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_505
	jmp	.LBB6_502
.LBB6_501:                              # %cond.false.3276
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_505
.LBB6_502:                              # %lor.lhs.false.3280
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_504
# BB#503:                               # %land.lhs.true.3286
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	$-128, %rax
	jl	.LBB6_505
.LBB6_504:                              # %lor.lhs.false.3290
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jge	.LBB6_509
.LBB6_505:                              # %cond.true.3294
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	cmpl	$127, %edx
	jg	.LBB6_507
# BB#506:                               # %cond.true.3300
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9148(%rbp)       # 4-byte Spill
	jmp	.LBB6_508
.LBB6_507:                              # %cond.false.3306
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9148(%rbp)       # 4-byte Spill
.LBB6_508:                              # %cond.end.3314
	movl	-9148(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_509:                              # %cond.false.3317
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	cmpl	$127, %edx
	jg	.LBB6_511
# BB#510:                               # %cond.true.3323
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9152(%rbp)       # 4-byte Spill
	jmp	.LBB6_512
.LBB6_511:                              # %cond.false.3329
	movq	-152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$0, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9152(%rbp)       # 4-byte Spill
.LBB6_512:                              # %cond.end.3337
	movl	-9152(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_513:                              # %cond.false.3340
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_514
	jmp	.LBB6_573
.LBB6_514:                              # %cond.true.3341
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_515
	jmp	.LBB6_544
.LBB6_515:                              # %cond.true.3342
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_517
# BB#516:                               # %cond.true.3351
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$256, %esi              # imm = 0x100
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$256, %esi              # imm = 0x100
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -9156(%rbp)       # 4-byte Spill
	jmp	.LBB6_518
.LBB6_517:                              # %cond.false.3373
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -9156(%rbp)       # 4-byte Spill
.LBB6_518:                              # %cond.end.3380
	movl	-9156(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB6_528
# BB#519:                               # %cond.true.3384
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB6_524
# BB#520:                               # %cond.true.3389
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_522
# BB#521:                               # %cond.true.3398
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$256, %esi              # imm = 0x100
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$256, %esi              # imm = 0x100
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -9160(%rbp)       # 4-byte Spill
	jmp	.LBB6_523
.LBB6_522:                              # %cond.false.3420
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -9160(%rbp)       # 4-byte Spill
.LBB6_523:                              # %cond.end.3427
	movl	-9160(%rbp), %eax       # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movq	-152(%rbp), %rdx
	movw	%dx, %si
	movswl	%si, %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB6_536
	jmp	.LBB6_533
.LBB6_524:                              # %cond.false.3434
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_526
# BB#525:                               # %cond.true.3443
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -9164(%rbp)       # 4-byte Spill
	jmp	.LBB6_527
.LBB6_526:                              # %cond.false.3454
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -9164(%rbp)       # 4-byte Spill
.LBB6_527:                              # %cond.end.3461
	movl	-9164(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB6_536
	jmp	.LBB6_533
.LBB6_528:                              # %cond.false.3468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_529
	jmp	.LBB6_530
.LBB6_529:                              # %cond.true.3469
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$256, %esi              # imm = 0x100
	cmpl	%esi, %edx
	jle	.LBB6_536
	jmp	.LBB6_533
.LBB6_530:                              # %cond.false.3477
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB6_532
# BB#531:                               # %cond.true.3482
	movl	$256, %eax              # imm = 0x100
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$256, %esi              # imm = 0x100
	cmpl	%esi, %eax
	jle	.LBB6_536
	jmp	.LBB6_533
.LBB6_532:                              # %cond.false.3488
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB6_536
.LBB6_533:                              # %lor.lhs.false.3496
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB6_535
# BB#534:                               # %land.lhs.true.3504
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB6_536
.LBB6_535:                              # %lor.lhs.false.3510
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$256, %esi              # imm = 0x100
	cmpl	%esi, %eax
	jge	.LBB6_540
.LBB6_536:                              # %cond.true.3516
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB6_538
# BB#537:                               # %cond.true.3522
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9168(%rbp)       # 4-byte Spill
	jmp	.LBB6_539
.LBB6_538:                              # %cond.false.3528
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9168(%rbp)       # 4-byte Spill
.LBB6_539:                              # %cond.end.3536
	movl	-9168(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_540:                              # %cond.false.3539
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB6_542
# BB#541:                               # %cond.true.3545
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9172(%rbp)       # 4-byte Spill
	jmp	.LBB6_543
.LBB6_542:                              # %cond.false.3551
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9172(%rbp)       # 4-byte Spill
.LBB6_543:                              # %cond.end.3559
	movl	-9172(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_544:                              # %cond.false.3562
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_546
# BB#545:                               # %cond.true.3569
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9184(%rbp)       # 8-byte Spill
	jmp	.LBB6_547
.LBB6_546:                              # %cond.false.3588
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9184(%rbp)       # 8-byte Spill
.LBB6_547:                              # %cond.end.3593
	movq	-9184(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_557
# BB#548:                               # %cond.true.3597
	cmpq	$0, -152(%rbp)
	jge	.LBB6_553
# BB#549:                               # %cond.true.3600
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_551
# BB#550:                               # %cond.true.3607
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9192(%rbp)       # 8-byte Spill
	jmp	.LBB6_552
.LBB6_551:                              # %cond.false.3626
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9192(%rbp)       # 8-byte Spill
.LBB6_552:                              # %cond.end.3631
	movq	-9192(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_565
	jmp	.LBB6_562
.LBB6_553:                              # %cond.false.3636
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_555
# BB#554:                               # %cond.true.3643
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9200(%rbp)       # 8-byte Spill
	jmp	.LBB6_556
.LBB6_555:                              # %cond.false.3652
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9200(%rbp)       # 8-byte Spill
.LBB6_556:                              # %cond.end.3657
	movq	-9200(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_565
	jmp	.LBB6_562
.LBB6_557:                              # %cond.false.3662
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_558
	jmp	.LBB6_559
.LBB6_558:                              # %cond.true.3663
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_565
	jmp	.LBB6_562
.LBB6_559:                              # %cond.false.3667
	cmpq	$0, -152(%rbp)
	jge	.LBB6_561
# BB#560:                               # %cond.true.3670
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_565
	jmp	.LBB6_562
.LBB6_561:                              # %cond.false.3674
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_565
.LBB6_562:                              # %lor.lhs.false.3678
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_564
# BB#563:                               # %land.lhs.true.3684
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB6_565
.LBB6_564:                              # %lor.lhs.false.3688
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jge	.LBB6_569
.LBB6_565:                              # %cond.true.3692
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB6_567
# BB#566:                               # %cond.true.3698
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9204(%rbp)       # 4-byte Spill
	jmp	.LBB6_568
.LBB6_567:                              # %cond.false.3704
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9204(%rbp)       # 4-byte Spill
.LBB6_568:                              # %cond.end.3712
	movl	-9204(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_569:                              # %cond.false.3715
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB6_571
# BB#570:                               # %cond.true.3721
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9208(%rbp)       # 4-byte Spill
	jmp	.LBB6_572
.LBB6_571:                              # %cond.false.3727
	movq	-152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$256, %edx              # imm = 0x100
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9208(%rbp)       # 4-byte Spill
.LBB6_572:                              # %cond.end.3735
	movl	-9208(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_573:                              # %cond.false.3738
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_574
	jmp	.LBB6_633
.LBB6_574:                              # %cond.true.3739
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_575
	jmp	.LBB6_604
.LBB6_575:                              # %cond.true.3740
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_577
# BB#576:                               # %cond.true.3748
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -9212(%rbp)       # 4-byte Spill
	jmp	.LBB6_578
.LBB6_577:                              # %cond.false.3768
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -9212(%rbp)       # 4-byte Spill
.LBB6_578:                              # %cond.end.3774
	movl	-9212(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB6_588
# BB#579:                               # %cond.true.3778
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_584
# BB#580:                               # %cond.true.3782
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_582
# BB#581:                               # %cond.true.3790
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$256, %edx              # imm = 0x100
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -9216(%rbp)       # 4-byte Spill
	jmp	.LBB6_583
.LBB6_582:                              # %cond.false.3810
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -9216(%rbp)       # 4-byte Spill
.LBB6_583:                              # %cond.end.3816
	movl	-9216(%rbp), %eax       # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movq	-152(%rbp), %rdx
	movl	%edx, %esi
	subl	%esi, %eax
	cmpl	%eax, %ecx
	jl	.LBB6_596
	jmp	.LBB6_593
.LBB6_584:                              # %cond.false.3822
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_586
# BB#585:                               # %cond.true.3830
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -9220(%rbp)       # 4-byte Spill
	jmp	.LBB6_587
.LBB6_586:                              # %cond.false.3840
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -9220(%rbp)       # 4-byte Spill
.LBB6_587:                              # %cond.end.3846
	movl	-9220(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB6_596
	jmp	.LBB6_593
.LBB6_588:                              # %cond.false.3852
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_589
	jmp	.LBB6_590
.LBB6_589:                              # %cond.true.3853
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	%edx, %ecx
	jle	.LBB6_596
	jmp	.LBB6_593
.LBB6_590:                              # %cond.false.3859
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_592
# BB#591:                               # %cond.true.3863
	movl	$256, %eax              # imm = 0x100
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	%edx, %eax
	jle	.LBB6_596
	jmp	.LBB6_593
.LBB6_592:                              # %cond.false.3868
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB6_596
.LBB6_593:                              # %lor.lhs.false.3874
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB6_595
# BB#594:                               # %land.lhs.true.3881
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB6_596
.LBB6_595:                              # %lor.lhs.false.3886
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-152(%rbp), %rcx
	movl	%ecx, %edx
	addl	$256, %edx              # imm = 0x100
	cmpl	%edx, %eax
	jge	.LBB6_600
.LBB6_596:                              # %cond.true.3891
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB6_598
# BB#597:                               # %cond.true.3896
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, -9224(%rbp)       # 4-byte Spill
	jmp	.LBB6_599
.LBB6_598:                              # %cond.false.3899
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9224(%rbp)       # 4-byte Spill
.LBB6_599:                              # %cond.end.3904
	movl	-9224(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_600:                              # %cond.false.3907
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB6_602
# BB#601:                               # %cond.true.3912
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, -9228(%rbp)       # 4-byte Spill
	jmp	.LBB6_603
.LBB6_602:                              # %cond.false.3915
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9228(%rbp)       # 4-byte Spill
.LBB6_603:                              # %cond.end.3920
	movl	-9228(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_604:                              # %cond.false.3923
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_606
# BB#605:                               # %cond.true.3930
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9240(%rbp)       # 8-byte Spill
	jmp	.LBB6_607
.LBB6_606:                              # %cond.false.3949
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9240(%rbp)       # 8-byte Spill
.LBB6_607:                              # %cond.end.3954
	movq	-9240(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_617
# BB#608:                               # %cond.true.3958
	cmpq	$0, -152(%rbp)
	jge	.LBB6_613
# BB#609:                               # %cond.true.3961
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_611
# BB#610:                               # %cond.true.3968
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9248(%rbp)       # 8-byte Spill
	jmp	.LBB6_612
.LBB6_611:                              # %cond.false.3987
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9248(%rbp)       # 8-byte Spill
.LBB6_612:                              # %cond.end.3992
	movq	-9248(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_625
	jmp	.LBB6_622
.LBB6_613:                              # %cond.false.3997
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_615
# BB#614:                               # %cond.true.4004
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9256(%rbp)       # 8-byte Spill
	jmp	.LBB6_616
.LBB6_615:                              # %cond.false.4013
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9256(%rbp)       # 8-byte Spill
.LBB6_616:                              # %cond.end.4018
	movq	-9256(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_625
	jmp	.LBB6_622
.LBB6_617:                              # %cond.false.4023
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_618
	jmp	.LBB6_619
.LBB6_618:                              # %cond.true.4024
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_625
	jmp	.LBB6_622
.LBB6_619:                              # %cond.false.4028
	cmpq	$0, -152(%rbp)
	jge	.LBB6_621
# BB#620:                               # %cond.true.4031
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_625
	jmp	.LBB6_622
.LBB6_621:                              # %cond.false.4035
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_625
.LBB6_622:                              # %lor.lhs.false.4039
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_624
# BB#623:                               # %land.lhs.true.4045
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB6_625
.LBB6_624:                              # %lor.lhs.false.4049
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jge	.LBB6_629
.LBB6_625:                              # %cond.true.4053
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB6_627
# BB#626:                               # %cond.true.4058
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, -9260(%rbp)       # 4-byte Spill
	jmp	.LBB6_628
.LBB6_627:                              # %cond.false.4061
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9260(%rbp)       # 4-byte Spill
.LBB6_628:                              # %cond.end.4066
	movl	-9260(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_629:                              # %cond.false.4069
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB6_631
# BB#630:                               # %cond.true.4074
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, -9264(%rbp)       # 4-byte Spill
	jmp	.LBB6_632
.LBB6_631:                              # %cond.false.4077
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	addl	$256, %ecx              # imm = 0x100
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9264(%rbp)       # 4-byte Spill
.LBB6_632:                              # %cond.end.4082
	movl	-9264(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_633:                              # %cond.false.4085
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_634
	jmp	.LBB6_693
.LBB6_634:                              # %cond.true.4086
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_635
	jmp	.LBB6_664
.LBB6_635:                              # %cond.true.4087
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_637
# BB#636:                               # %cond.true.4094
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9272(%rbp)       # 8-byte Spill
	jmp	.LBB6_638
.LBB6_637:                              # %cond.false.4113
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9272(%rbp)       # 8-byte Spill
.LBB6_638:                              # %cond.end.4118
	movq	-9272(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_648
# BB#639:                               # %cond.true.4122
	cmpq	$0, -152(%rbp)
	jge	.LBB6_644
# BB#640:                               # %cond.true.4125
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_642
# BB#641:                               # %cond.true.4132
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9280(%rbp)       # 8-byte Spill
	jmp	.LBB6_643
.LBB6_642:                              # %cond.false.4151
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9280(%rbp)       # 8-byte Spill
.LBB6_643:                              # %cond.end.4156
	movq	-9280(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_656
	jmp	.LBB6_653
.LBB6_644:                              # %cond.false.4161
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_646
# BB#645:                               # %cond.true.4168
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9288(%rbp)       # 8-byte Spill
	jmp	.LBB6_647
.LBB6_646:                              # %cond.false.4177
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9288(%rbp)       # 8-byte Spill
.LBB6_647:                              # %cond.end.4182
	movq	-9288(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_656
	jmp	.LBB6_653
.LBB6_648:                              # %cond.false.4187
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_649
	jmp	.LBB6_650
.LBB6_649:                              # %cond.true.4188
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_656
	jmp	.LBB6_653
.LBB6_650:                              # %cond.false.4192
	cmpq	$0, -152(%rbp)
	jge	.LBB6_652
# BB#651:                               # %cond.true.4195
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_656
	jmp	.LBB6_653
.LBB6_652:                              # %cond.false.4199
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_656
.LBB6_653:                              # %lor.lhs.false.4203
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_655
# BB#654:                               # %land.lhs.true.4209
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	jl	.LBB6_656
.LBB6_655:                              # %lor.lhs.false.4213
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jge	.LBB6_660
.LBB6_656:                              # %cond.true.4217
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_658
# BB#657:                               # %cond.true.4221
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9296(%rbp)       # 8-byte Spill
	jmp	.LBB6_659
.LBB6_658:                              # %cond.false.4223
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9296(%rbp)       # 8-byte Spill
.LBB6_659:                              # %cond.end.4227
	movq	-9296(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_660:                              # %cond.false.4229
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_662
# BB#661:                               # %cond.true.4233
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9304(%rbp)       # 8-byte Spill
	jmp	.LBB6_663
.LBB6_662:                              # %cond.false.4235
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9304(%rbp)       # 8-byte Spill
.LBB6_663:                              # %cond.end.4239
	movq	-9304(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_664:                              # %cond.false.4241
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_666
# BB#665:                               # %cond.true.4248
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9312(%rbp)       # 8-byte Spill
	jmp	.LBB6_667
.LBB6_666:                              # %cond.false.4267
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9312(%rbp)       # 8-byte Spill
.LBB6_667:                              # %cond.end.4272
	movq	-9312(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_677
# BB#668:                               # %cond.true.4276
	cmpq	$0, -152(%rbp)
	jge	.LBB6_673
# BB#669:                               # %cond.true.4279
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_671
# BB#670:                               # %cond.true.4286
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9320(%rbp)       # 8-byte Spill
	jmp	.LBB6_672
.LBB6_671:                              # %cond.false.4305
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9320(%rbp)       # 8-byte Spill
.LBB6_672:                              # %cond.end.4310
	movq	-9320(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_685
	jmp	.LBB6_682
.LBB6_673:                              # %cond.false.4315
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_675
# BB#674:                               # %cond.true.4322
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9328(%rbp)       # 8-byte Spill
	jmp	.LBB6_676
.LBB6_675:                              # %cond.false.4331
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9328(%rbp)       # 8-byte Spill
.LBB6_676:                              # %cond.end.4336
	movq	-9328(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_685
	jmp	.LBB6_682
.LBB6_677:                              # %cond.false.4341
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_678
	jmp	.LBB6_679
.LBB6_678:                              # %cond.true.4342
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_685
	jmp	.LBB6_682
.LBB6_679:                              # %cond.false.4346
	cmpq	$0, -152(%rbp)
	jge	.LBB6_681
# BB#680:                               # %cond.true.4349
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_685
	jmp	.LBB6_682
.LBB6_681:                              # %cond.false.4353
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_685
.LBB6_682:                              # %lor.lhs.false.4357
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_684
# BB#683:                               # %land.lhs.true.4363
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	jl	.LBB6_685
.LBB6_684:                              # %lor.lhs.false.4367
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jge	.LBB6_689
.LBB6_685:                              # %cond.true.4371
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_687
# BB#686:                               # %cond.true.4375
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9336(%rbp)       # 8-byte Spill
	jmp	.LBB6_688
.LBB6_687:                              # %cond.false.4377
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9336(%rbp)       # 8-byte Spill
.LBB6_688:                              # %cond.end.4381
	movq	-9336(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_689:                              # %cond.false.4383
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_691
# BB#690:                               # %cond.true.4387
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9344(%rbp)       # 8-byte Spill
	jmp	.LBB6_692
.LBB6_691:                              # %cond.false.4389
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9344(%rbp)       # 8-byte Spill
.LBB6_692:                              # %cond.end.4393
	movq	-9344(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_693:                              # %cond.false.4395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_694
	jmp	.LBB6_723
.LBB6_694:                              # %cond.true.4396
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_696
# BB#695:                               # %cond.true.4403
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9352(%rbp)       # 8-byte Spill
	jmp	.LBB6_697
.LBB6_696:                              # %cond.false.4422
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9352(%rbp)       # 8-byte Spill
.LBB6_697:                              # %cond.end.4427
	movq	-9352(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_707
# BB#698:                               # %cond.true.4431
	cmpq	$0, -152(%rbp)
	jge	.LBB6_703
# BB#699:                               # %cond.true.4434
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_701
# BB#700:                               # %cond.true.4441
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9360(%rbp)       # 8-byte Spill
	jmp	.LBB6_702
.LBB6_701:                              # %cond.false.4460
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9360(%rbp)       # 8-byte Spill
.LBB6_702:                              # %cond.end.4465
	movq	-9360(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_715
	jmp	.LBB6_712
.LBB6_703:                              # %cond.false.4470
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_705
# BB#704:                               # %cond.true.4477
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9368(%rbp)       # 8-byte Spill
	jmp	.LBB6_706
.LBB6_705:                              # %cond.false.4486
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9368(%rbp)       # 8-byte Spill
.LBB6_706:                              # %cond.end.4491
	movq	-9368(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_715
	jmp	.LBB6_712
.LBB6_707:                              # %cond.false.4496
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_708
	jmp	.LBB6_709
.LBB6_708:                              # %cond.true.4497
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_715
	jmp	.LBB6_712
.LBB6_709:                              # %cond.false.4501
	cmpq	$0, -152(%rbp)
	jge	.LBB6_711
# BB#710:                               # %cond.true.4504
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_715
	jmp	.LBB6_712
.LBB6_711:                              # %cond.false.4508
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_715
.LBB6_712:                              # %lor.lhs.false.4512
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_714
# BB#713:                               # %land.lhs.true.4518
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	jl	.LBB6_715
.LBB6_714:                              # %lor.lhs.false.4522
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jge	.LBB6_719
.LBB6_715:                              # %cond.true.4526
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_717
# BB#716:                               # %cond.true.4530
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9376(%rbp)       # 8-byte Spill
	jmp	.LBB6_718
.LBB6_717:                              # %cond.false.4532
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9376(%rbp)       # 8-byte Spill
.LBB6_718:                              # %cond.end.4536
	movq	-9376(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_719:                              # %cond.false.4538
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_721
# BB#720:                               # %cond.true.4542
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9384(%rbp)       # 8-byte Spill
	jmp	.LBB6_722
.LBB6_721:                              # %cond.false.4544
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9384(%rbp)       # 8-byte Spill
.LBB6_722:                              # %cond.end.4548
	movq	-9384(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_723:                              # %cond.false.4550
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_725
# BB#724:                               # %cond.true.4557
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9392(%rbp)       # 8-byte Spill
	jmp	.LBB6_726
.LBB6_725:                              # %cond.false.4576
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9392(%rbp)       # 8-byte Spill
.LBB6_726:                              # %cond.end.4581
	movq	-9392(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB6_736
# BB#727:                               # %cond.true.4585
	cmpq	$0, -152(%rbp)
	jge	.LBB6_732
# BB#728:                               # %cond.true.4588
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_730
# BB#729:                               # %cond.true.4595
	xorl	%eax, %eax
	imulq	$0, -152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -152(%rbp), %rdi
	addq	$256, %rdi              # imm = 0x100
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9400(%rbp)       # 8-byte Spill
	jmp	.LBB6_731
.LBB6_730:                              # %cond.false.4614
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9400(%rbp)       # 8-byte Spill
.LBB6_731:                              # %cond.end.4619
	movq	-9400(%rbp), %rax       # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	subq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB6_744
	jmp	.LBB6_741
.LBB6_732:                              # %cond.false.4624
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_734
# BB#733:                               # %cond.true.4631
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9408(%rbp)       # 8-byte Spill
	jmp	.LBB6_735
.LBB6_734:                              # %cond.false.4640
	imulq	$0, -152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9408(%rbp)       # 8-byte Spill
.LBB6_735:                              # %cond.end.4645
	movq	-9408(%rbp), %rax       # 8-byte Reload
	subq	-152(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB6_744
	jmp	.LBB6_741
.LBB6_736:                              # %cond.false.4650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_737
	jmp	.LBB6_738
.LBB6_737:                              # %cond.true.4651
	movq	-152(%rbp), %rax
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jle	.LBB6_744
	jmp	.LBB6_741
.LBB6_738:                              # %cond.false.4655
	cmpq	$0, -152(%rbp)
	jge	.LBB6_740
# BB#739:                               # %cond.true.4658
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	addq	$256, %rdx              # imm = 0x100
	cmpq	%rdx, %rcx
	jle	.LBB6_744
	jmp	.LBB6_741
.LBB6_740:                              # %cond.false.4662
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	cmpq	-152(%rbp), %rax
	jl	.LBB6_744
.LBB6_741:                              # %lor.lhs.false.4666
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB6_743
# BB#742:                               # %land.lhs.true.4672
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	jl	.LBB6_744
.LBB6_743:                              # %lor.lhs.false.4676
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jge	.LBB6_748
.LBB6_744:                              # %cond.true.4680
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_746
# BB#745:                               # %cond.true.4684
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9416(%rbp)       # 8-byte Spill
	jmp	.LBB6_747
.LBB6_746:                              # %cond.false.4686
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9416(%rbp)       # 8-byte Spill
.LBB6_747:                              # %cond.end.4690
	movq	-9416(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -152(%rbp)
	testb	$1, %cl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_748:                              # %cond.false.4692
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rax, %rcx
	ja	.LBB6_750
# BB#749:                               # %cond.true.4696
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -9424(%rbp)       # 8-byte Spill
	jmp	.LBB6_751
.LBB6_750:                              # %cond.false.4698
	movq	-152(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9424(%rbp)       # 8-byte Spill
.LBB6_751:                              # %cond.end.4702
	movq	-9424(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -152(%rbp)
	testb	$1, %dl
	jne	.LBB6_752
	jmp	.LBB6_753
.LBB6_752:                              # %if.then.4704
	movq	$-1, %rdi
	callq	memory_full
.LBB6_753:                              # %if.end.4705
	movq	-152(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -160(%rbp)
	movq	%rax, -168(%rbp)
	movq	$0, -8400(%rbp)
	movq	$0, -8392(%rbp)
	movq	$0, -8408(%rbp)
.LBB6_754:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_756 Depth 2
                                        #     Child Loop BB6_762 Depth 2
                                        #     Child Loop BB6_779 Depth 2
                                        #       Child Loop BB6_783 Depth 3
                                        #       Child Loop BB6_799 Depth 3
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-8400(%rbp), %rax
	movq	%rax, -8424(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-184(%rbp), %rax
	movq	%rax, -8432(%rbp)
	movl	$0, -8436(%rbp)
	movq	-8432(%rbp), %rax
	movq	-8424(%rbp), %rdi
	subq	%rdi, %rax
	movq	-176(%rbp), %rdi
	subq	-8392(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB6_761
# BB#755:                               # %if.then.4713
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_756
.LBB6_756:                              # %while.cond.4714
                                        #   Parent Loop BB6_754 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1024, -8436(%rbp)      # imm = 0x400
	movb	%cl, -9425(%rbp)        # 1-byte Spill
	jge	.LBB6_758
# BB#757:                               # %land.rhs
                                        #   in Loop: Header=BB6_756 Depth=2
	movq	-8424(%rbp), %rax
	cmpq	-8432(%rbp), %rax
	setb	%cl
	movb	%cl, -9425(%rbp)        # 1-byte Spill
.LBB6_758:                              # %land.end
                                        #   in Loop: Header=BB6_756 Depth=2
	movb	-9425(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_759
	jmp	.LBB6_760
.LBB6_759:                              # %while.body.4719
                                        #   in Loop: Header=BB6_756 Depth=2
	movq	-8424(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8424(%rbp)
	movzbl	(%rax), %edx
	movl	-8436(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -8436(%rbp)
	movslq	%esi, %rax
	movl	%edx, -4288(%rbp,%rax,4)
	jmp	.LBB6_756
.LBB6_760:                              # %while.end
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_776
.LBB6_761:                              # %if.else
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_762
.LBB6_762:                              # %while.cond.4724
                                        #   Parent Loop BB6_754 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1024, -8436(%rbp)      # imm = 0x400
	movb	%cl, -9426(%rbp)        # 1-byte Spill
	jge	.LBB6_764
# BB#763:                               # %land.rhs.4727
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	cmpq	-8432(%rbp), %rax
	setb	%cl
	movb	%cl, -9426(%rbp)        # 1-byte Spill
.LBB6_764:                              # %land.end.4730
                                        #   in Loop: Header=BB6_762 Depth=2
	movb	-9426(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_765
	jmp	.LBB6_775
.LBB6_765:                              # %while.body.4731
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_767
# BB#766:                               # %cond.true.4736
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8424(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -9432(%rbp)       # 4-byte Spill
	jmp	.LBB6_774
.LBB6_767:                              # %cond.false.4739
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_769
# BB#768:                               # %cond.true.4744
                                        #   in Loop: Header=BB6_762 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-8424(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -8424(%rbp)
	movq	-8424(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-8424(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-8424(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -9436(%rbp)       # 4-byte Spill
	jmp	.LBB6_773
.LBB6_769:                              # %cond.false.4759
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_771
# BB#770:                               # %cond.true.4764
                                        #   in Loop: Header=BB6_762 Depth=2
	movq	-8424(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8424(%rbp)
	movq	-8424(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-8424(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-8424(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -9440(%rbp)       # 4-byte Spill
	jmp	.LBB6_772
.LBB6_771:                              # %cond.false.4779
                                        #   in Loop: Header=BB6_762 Depth=2
	leaq	-8424(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8424(%rbp), %rdi
	callq	string_char
	movl	%eax, -9440(%rbp)       # 4-byte Spill
.LBB6_772:                              # %cond.end.4781
                                        #   in Loop: Header=BB6_762 Depth=2
	movl	-9440(%rbp), %eax       # 4-byte Reload
	movl	%eax, -9436(%rbp)       # 4-byte Spill
.LBB6_773:                              # %cond.end.4783
                                        #   in Loop: Header=BB6_762 Depth=2
	movl	-9436(%rbp), %eax       # 4-byte Reload
	movl	%eax, -9432(%rbp)       # 4-byte Spill
.LBB6_774:                              # %cond.end.4785
                                        #   in Loop: Header=BB6_762 Depth=2
	movl	-9432(%rbp), %eax       # 4-byte Reload
	movl	-8436(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -8436(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -4288(%rbp,%rsi,4)
	jmp	.LBB6_762
.LBB6_775:                              # %while.end.4790
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_776
.LBB6_776:                              # %if.end.4791
                                        #   in Loop: Header=BB6_754 Depth=1
	movslq	-8436(%rbp), %rax
	addq	-8392(%rbp), %rax
	movq	%rax, -8392(%rbp)
	movq	-8424(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -9448(%rbp)       # 8-byte Spill
	callq	SDATA
	movq	-9448(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -8400(%rbp)
	movq	-8400(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB6_778
# BB#777:                               # %if.then.4800
                                        #   in Loop: Header=BB6_754 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -9456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9456(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	-52(%rbp), %sil
	andb	$-2, %sil
	orb	%dl, %sil
	movb	%sil, -52(%rbp)
.LBB6_778:                              # %if.end.4805
                                        #   in Loop: Header=BB6_754 Depth=1
	leaq	-4288(%rbp), %rax
	movq	%rax, -8448(%rbp)
	movl	-8436(%rbp), %ecx
	movl	%ecx, -8452(%rbp)
.LBB6_779:                              # %while.body.4807
                                        #   Parent Loop BB6_754 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_783 Depth 3
                                        #       Child Loop BB6_799 Depth 3
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -9464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	leaq	-8384(%rbp), %rdx
	movl	$1, %ecx
	movl	$5, %esi
	movq	-9464(%rbp), %r8        # 8-byte Reload
	cmpq	%rax, %r8
	cmovel	%esi, %ecx
	movl	%ecx, -8456(%rbp)
	movq	-8448(%rbp), %rsi
	movl	-8452(%rbp), %ecx
	movl	%ecx, -9468(%rbp)       # 4-byte Spill
	movq	%rdx, -9480(%rbp)       # 8-byte Spill
	movq	%rsi, -9488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-136(%rbp), %rdi
	movl	$1024, %r8d             # imm = 0x400
	movq	-9488(%rbp), %rsi       # 8-byte Reload
	movq	-9480(%rbp), %rdx       # 8-byte Reload
	movl	-9468(%rbp), %ecx       # 4-byte Reload
	movq	%rax, %r9
	callq	ccl_driver
	movslq	-56(%rbp), %rax
	addq	-8408(%rbp), %rax
	movq	%rax, -8408(%rbp)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, -8464(%rbp)
	movl	-56(%rbp), %ecx
	imull	-8456(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-152(%rbp), %rdx
	subq	-8464(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, -8472(%rbp)
	cmpq	$0, -8472(%rbp)
	jle	.LBB6_781
# BB#780:                               # %if.then.4826
                                        #   in Loop: Header=BB6_779 Depth=2
	leaq	-152(%rbp), %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-160(%rbp), %rdi
	movq	-8472(%rbp), %rdx
	callq	xpalloc
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	-8464(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB6_781:                              # %if.end.4829
                                        #   in Loop: Header=BB6_779 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -9496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9496(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_798
# BB#782:                               # %if.then.4833
                                        #   in Loop: Header=BB6_779 Depth=2
	movl	$0, -8436(%rbp)
.LBB6_783:                              # %for.cond.4834
                                        #   Parent Loop BB6_754 Depth=1
                                        #     Parent Loop BB6_779 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8436(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_797
# BB#784:                               # %for.body.4838
                                        #   in Loop: Header=BB6_783 Depth=3
	jmp	.LBB6_785
.LBB6_785:                              # %do.body
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	cmpl	$127, -8384(%rbp,%rax,4)
	jg	.LBB6_787
# BB#786:                               # %if.then.4843
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB6_794
.LBB6_787:                              # %if.else.4848
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	cmpl	$2047, -8384(%rbp,%rax,4) # imm = 0x7FF
	jg	.LBB6_789
# BB#788:                               # %if.then.4853
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB6_793
.LBB6_789:                              # %if.else.4866
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	cmpl	$65535, -8384(%rbp,%rax,4) # imm = 0xFFFF
	jg	.LBB6_791
# BB#790:                               # %if.then.4871
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB6_792
.LBB6_791:                              # %if.else.4891
                                        #   in Loop: Header=BB6_783 Depth=3
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %edi
	movq	-168(%rbp), %rsi
	callq	char_string
	movq	-168(%rbp), %rsi
	movslq	%eax, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -168(%rbp)
.LBB6_792:                              # %if.end.4896
                                        #   in Loop: Header=BB6_783 Depth=3
	jmp	.LBB6_793
.LBB6_793:                              # %if.end.4897
                                        #   in Loop: Header=BB6_783 Depth=3
	jmp	.LBB6_794
.LBB6_794:                              # %if.end.4898
                                        #   in Loop: Header=BB6_783 Depth=3
	jmp	.LBB6_795
.LBB6_795:                              # %do.end
                                        #   in Loop: Header=BB6_783 Depth=3
	jmp	.LBB6_796
.LBB6_796:                              # %for.inc.4899
                                        #   in Loop: Header=BB6_783 Depth=3
	movl	-8436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8436(%rbp)
	jmp	.LBB6_783
.LBB6_797:                              # %for.end.4901
                                        #   in Loop: Header=BB6_779 Depth=2
	jmp	.LBB6_803
.LBB6_798:                              # %if.else.4902
                                        #   in Loop: Header=BB6_779 Depth=2
	movl	$0, -8436(%rbp)
.LBB6_799:                              # %for.cond.4903
                                        #   Parent Loop BB6_754 Depth=1
                                        #     Parent Loop BB6_779 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8436(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_802
# BB#800:                               # %for.body.4907
                                        #   in Loop: Header=BB6_799 Depth=3
	movslq	-8436(%rbp), %rax
	movl	-8384(%rbp,%rax,4), %ecx
	movb	%cl, %dl
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movb	%dl, (%rax)
# BB#801:                               # %for.inc.4912
                                        #   in Loop: Header=BB6_799 Depth=3
	movl	-8436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8436(%rbp)
	jmp	.LBB6_799
.LBB6_802:                              # %for.end.4914
                                        #   in Loop: Header=BB6_779 Depth=2
	jmp	.LBB6_803
.LBB6_803:                              # %if.end.4915
                                        #   in Loop: Header=BB6_779 Depth=2
	movl	-60(%rbp), %eax
	movq	-8448(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8448(%rbp)
	movl	-60(%rbp), %eax
	movl	-8452(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -8452(%rbp)
	cmpl	$2, -72(%rbp)
	je	.LBB6_805
# BB#804:                               # %if.then.4923
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_806
.LBB6_805:                              # %if.end.4924
                                        #   in Loop: Header=BB6_779 Depth=2
	jmp	.LBB6_779
.LBB6_806:                              # %while.end.4925
                                        #   in Loop: Header=BB6_754 Depth=1
	cmpl	$1, -72(%rbp)
	jne	.LBB6_808
# BB#807:                               # %lor.lhs.false.4929
                                        #   in Loop: Header=BB6_754 Depth=1
	movq	-176(%rbp), %rax
	cmpq	-8392(%rbp), %rax
	jne	.LBB6_809
.LBB6_808:                              # %if.then.4932
	jmp	.LBB6_810
.LBB6_809:                              # %if.end.4933
                                        #   in Loop: Header=BB6_754 Depth=1
	jmp	.LBB6_754
.LBB6_810:                              # %while.end.4934
	cmpl	$3, -72(%rbp)
	jne	.LBB6_812
# BB#811:                               # %if.then.4938
	movabsq	$.L.str.5, %rdi
	movl	-112(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB6_812:                              # %if.end.4940
	cmpl	$4, -72(%rbp)
	jne	.LBB6_814
# BB#813:                               # %if.then.4944
	movabsq	$.L.str.7, %rdi
	movl	-112(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB6_814:                              # %if.end.4946
	movl	$0, -140(%rbp)
.LBB6_815:                              # %for.cond.4947
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -140(%rbp)
	jge	.LBB6_818
# BB#816:                               # %for.body.4950
                                        #   in Loop: Header=BB6_815 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	movslq	-140(%rbp), %rax
	movslq	-104(%rbp,%rax,4), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#817:                               # %for.inc.4958
                                        #   in Loop: Header=BB6_815 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB6_815
.LBB6_818:                              # %for.end.4960
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-112(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-160(%rbp), %rcx
	movq	-8408(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %r8
	subq	%r8, %rdx
	movq	-40(%rbp), %r8
	movq	%r8, -9504(%rbp)        # 8-byte Spill
	movq	%rcx, -9512(%rbp)       # 8-byte Spill
	movq	%rsi, -9520(%rbp)       # 8-byte Spill
	movq	%rdx, -9528(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	movzbl	%r9b, %edi
	andl	$1, %edi
	movq	-9512(%rbp), %rax       # 8-byte Reload
	movl	%edi, -9532(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	-9520(%rbp), %rsi       # 8-byte Reload
	movq	-9528(%rbp), %rdx       # 8-byte Reload
	movl	-9532(%rbp), %ecx       # 4-byte Reload
	callq	make_specified_string
	movq	%rax, -48(%rbp)
	movq	-160(%rbp), %rdi
	callq	xfree
	movq	-48(%rbp), %rax
	addq	$9536, %rsp             # imm = 0x2540
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fccl_execute_on_string, .Lfunc_end6-Fccl_execute_on_string
	.cfi_endproc

	.globl	Fregister_ccl_program
	.align	16, 0x90
	.type	Fregister_ccl_program,@function
Fregister_ccl_program:                  # @Fregister_ccl_program
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	Vccl_program_table, %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_2
# BB#1:                                 # %cond.true
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_3:                                # %cond.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_10
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-24(%rbp), %rdi
	callq	resolve_symbol_ccl_program
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB7_6:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB7_7
	jmp	.LBB7_8
.LBB7_7:                                # %if.then.13
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB7_9:                                # %if.end.16
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.17
	movq	$0, -40(%rbp)
.LBB7_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB7_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	Vccl_program_table, %rdi
	movq	-40(%rbp), %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB7_14
# BB#13:                                # %if.then.22
	jmp	.LBB7_18
.LBB7_14:                               # %if.end.23
                                        #   in Loop: Header=BB7_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_16
# BB#15:                                # %if.then.27
	movl	$1, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	movl	$2, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	ASET
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
	movl	%edi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_21
.LBB7_16:                               # %if.end.29
                                        #   in Loop: Header=BB7_11 Depth=1
	jmp	.LBB7_17
.LBB7_17:                               # %for.inc
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_11
.LBB7_18:                               # %for.end
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_20
# BB#19:                                # %if.then.32
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	Vccl_program_table, %rdi
	callq	larger_vector
	movq	%rax, Vccl_program_table
.LBB7_20:                               # %if.end.34
	movl	$4, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	ASET
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	Vccl_program_table, %rdi
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	ASET
	movl	$247, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB7_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fregister_ccl_program, .Lfunc_end7-Fregister_ccl_program
	.cfi_endproc

	.globl	Fregister_code_conversion_map
	.align	16, 0x90
	.type	Fregister_code_conversion_map,@function
Fregister_code_conversion_map:          # @Fregister_code_conversion_map
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-24(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	globals+256, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB8_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB8_5:                                # %if.end
	movq	globals+256, %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB8_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB8_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	globals+256, %rdi
	movq	-40(%rbp), %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB8_9
# BB#8:                                 # %if.then.11
	jmp	.LBB8_13
.LBB8_9:                                # %if.end.12
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB8_11
# BB#10:                                # %if.then.15
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	XSETCDR
	movl	$274, %edi              # imm = 0x112
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$275, %edi              # imm = 0x113
	movq	-16(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_16
.LBB8_11:                               # %if.end.20
                                        #   in Loop: Header=BB8_6 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               # %for.inc
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_6
.LBB8_13:                               # %for.end
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_15
# BB#14:                                # %if.then.23
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	globals+256, %rdi
	callq	larger_vector
	movq	%rax, globals+256
.LBB8_15:                               # %if.end.25
	movl	$274, %edi              # imm = 0x112
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$275, %edi              # imm = 0x113
	movq	-16(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	globals+256, %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fregister_code_conversion_map, .Lfunc_end8-Fregister_code_conversion_map
	.cfi_endproc

	.globl	syms_of_ccl
	.align	16, 0x90
	.type	syms_of_ccl,@function
syms_of_ccl:                            # @syms_of_ccl
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
	movabsq	$Vccl_program_table, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$130, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, Vccl_program_table
# BB#1:                                 # %do.body
	movabsq	$syms_of_ccl.o_fwd, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$globals, %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$66, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, globals+256
# BB#3:                                 # %do.body.4
	movabsq	$syms_of_ccl.o_fwd.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$globals, %rax
	addq	$808, %rax              # imm = 0x328
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+808
# BB#5:                                 # %do.body.7
	movabsq	$syms_of_ccl.o_fwd.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$globals, %rax
	addq	$2448, %rax             # imm = 0x990
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sccl_program_p, %rcx
	movq	%rax, globals+2448
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sccl_execute, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sccl_execute_on_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sregister_ccl_program, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sregister_code_conversion_map, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end9:
	.size	syms_of_ccl, .Lfunc_end9-syms_of_ccl
	.cfi_endproc

	.type	mapping_stack,@object   # @mapping_stack
	.local	mapping_stack
	.comm	mapping_stack,240,16
	.type	mapping_stack_pointer,@object # @mapping_stack_pointer
	.local	mapping_stack_pointer
	.comm	mapping_stack_pointer,8,8
	.type	Vccl_program_table,@object # @Vccl_program_table
	.local	Vccl_program_table
	.comm	Vccl_program_table,8,8
	.type	ccl_prog_stack_struct,@object # @ccl_prog_stack_struct
	.local	ccl_prog_stack_struct
	.comm	ccl_prog_stack_struct,4096,16
	.type	stack_idx_of_map_multiple,@object # @stack_idx_of_map_multiple
	.local	stack_idx_of_map_multiple
	.comm	stack_idx_of_map_multiple,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nCCL: Invalid command %x (ccl_code = %x) at %d."
	.size	.L.str, 48

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\nCCL: Quitted."
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\nCCL: Unknown error type (%d)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid CCL program"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Length of vector REGISTERS is not 8"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error in CCL program at %dth code"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Length of vector STATUS is not 9"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CCL program interrupted at %dth code"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error in CCL program"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Invalid code-conversion-map-vector"
	.size	.L.str.9, 35

	.type	syms_of_ccl.o_fwd,@object # @syms_of_ccl.o_fwd
	.local	syms_of_ccl.o_fwd
	.comm	syms_of_ccl.o_fwd,16,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"code-conversion-map-vector"
	.size	.L.str.10, 27

	.type	syms_of_ccl.o_fwd.11,@object # @syms_of_ccl.o_fwd.11
	.local	syms_of_ccl.o_fwd.11
	.comm	syms_of_ccl.o_fwd.11,16,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"font-ccl-encoder-alist"
	.size	.L.str.12, 23

	.type	syms_of_ccl.o_fwd.13,@object # @syms_of_ccl.o_fwd.13
	.local	syms_of_ccl.o_fwd.13
	.comm	syms_of_ccl.o_fwd.13,16,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"translation-hash-table-vector"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ccl-program-p"
	.size	.L.str.15, 14

	.type	Sccl_program_p,@object  # @Sccl_program_p
	.data
	.align	8
Sccl_program_p:
	.quad	167772160               # 0xa000000
	.quad	Fccl_program_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sccl_program_p, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"ccl-execute"
	.size	.L.str.16, 12

	.type	Sccl_execute,@object    # @Sccl_execute
	.data
	.align	8
Sccl_execute:
	.quad	167772160               # 0xa000000
	.quad	Fccl_execute
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Sccl_execute, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"ccl-execute-on-string"
	.size	.L.str.17, 22

	.type	Sccl_execute_on_string,@object # @Sccl_execute_on_string
	.data
	.align	8
Sccl_execute_on_string:
	.quad	167772160               # 0xa000000
	.quad	Fccl_execute_on_string
	.short	3                       # 0x3
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Sccl_execute_on_string, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"register-ccl-program"
	.size	.L.str.18, 21

	.type	Sregister_ccl_program,@object # @Sregister_ccl_program
	.data
	.align	8
Sregister_ccl_program:
	.quad	167772160               # 0xa000000
	.quad	Fregister_ccl_program
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Sregister_ccl_program, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"register-code-conversion-map"
	.size	.L.str.19, 29

	.type	Sregister_code_conversion_map,@object # @Sregister_code_conversion_map
	.data
	.align	8
Sregister_code_conversion_map:
	.quad	167772160               # 0xa000000
	.quad	Fregister_code_conversion_map
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.size	Sregister_code_conversion_map, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
