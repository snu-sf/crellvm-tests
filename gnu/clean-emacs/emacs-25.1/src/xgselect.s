	.text
	.file	"xgselect.bc"
	.globl	xg_select
	.align	16, 0x90
	.type	xg_select,@function
xg_select:                              # @xg_select
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
	subq	$1552, %rsp             # imm = 0x610
	leaq	-1376(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%r10b
	andb	$1, %r10b
	movb	%r10b, -337(%rbp)
	movq	%rax, -1384(%rbp)
	movl	$128, -1388(%rbp)
	movl	$0, -1396(%rbp)
	movl	$0, -1400(%rbp)
	movl	-4(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -1404(%rbp)
	movb	$0, -1405(%rbp)
	movq	$16384, -1432(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -1440(%rbp)
	movb	$0, -1441(%rbp)
	callq	g_main_context_default
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rdi
	callq	g_main_context_acquire
	cmpl	$0, %eax
	setne	%r10b
	andb	$1, %r10b
	movb	%r10b, -1405(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$128, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB0_5
.LBB0_2:                                # %if.else
	jmp	.LBB0_3
.LBB0_3:                                # %do.body
	leaq	-176(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -1448(%rbp)
	movl	%edi, %eax
	movl	%eax, -1452(%rbp)
# BB#4:                                 # %do.end
	jmp	.LBB0_5
.LBB0_5:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# BB#6:                                 # %if.then.8
	movl	$128, %eax
	movl	%eax, %edx
	leaq	-304(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB0_10
.LBB0_7:                                # %if.else.9
	jmp	.LBB0_8
.LBB0_8:                                # %do.body.10
	leaq	-304(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1504(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -1456(%rbp)
	movl	%edi, %eax
	movl	%eax, -1460(%rbp)
# BB#9:                                 # %do.end.17
	jmp	.LBB0_10
.LBB0_10:                               # %if.end.18
	testb	$1, -1405(%rbp)
	je	.LBB0_12
# BB#11:                                # %cond.true
	movl	$300, %esi              # imm = 0x12C
	leaq	-1420(%rbp), %rdx
	movq	-336(%rbp), %rdi
	movq	-1384(%rbp), %rcx
	movl	-1388(%rbp), %r8d
	callq	g_main_context_query
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               # %cond.end
	movl	-1508(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1392(%rbp)
	movl	-1388(%rbp), %eax
	cmpl	-1392(%rbp), %eax
	jge	.LBB0_20
# BB#14:                                # %if.then.22
	jmp	.LBB0_15
.LBB0_15:                               # %do.body.23
	movslq	-1392(%rbp), %rax
	movq	-1432(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$3, %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_17
# BB#16:                                # %if.then.27
	movslq	-1392(%rbp), %rax
	shlq	$6, %rax
	movq	-1432(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -1432(%rbp)
	movslq	-1392(%rbp), %rax
	shlq	$6, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1384(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.32
	movl	$64, %eax
	movl	%eax, %esi
	movslq	-1392(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -1384(%rbp)
	movb	$1, -1441(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB0_18:                               # %if.end.35
	jmp	.LBB0_19
.LBB0_19:                               # %do.end.36
	movl	$300, %esi              # imm = 0x12C
	leaq	-1420(%rbp), %rdx
	movl	-1392(%rbp), %eax
	movl	%eax, -1388(%rbp)
	movq	-336(%rbp), %rdi
	movq	-1384(%rbp), %rcx
	movl	-1388(%rbp), %r8d
	callq	g_main_context_query
	movl	%eax, -1392(%rbp)
.LBB0_20:                               # %if.end.38
	movl	$0, -1412(%rbp)
.LBB0_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1412(%rbp), %eax
	cmpl	-1392(%rbp), %eax
	jge	.LBB0_32
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB0_21 Depth=1
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movzwl	4(%rcx,%rax,8), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB0_26
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB0_21 Depth=1
	leaq	-176(%rbp), %rsi
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	fd_SET
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	cmpl	-1404(%rbp), %edi
	jle	.LBB0_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB0_21 Depth=1
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -1404(%rbp)
.LBB0_25:                               # %if.end.56
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.57
                                        #   in Loop: Header=BB0_21 Depth=1
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movzwl	4(%rcx,%rax,8), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB0_30
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB0_21 Depth=1
	leaq	-304(%rbp), %rsi
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	fd_SET
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	cmpl	-1404(%rbp), %edi
	jle	.LBB0_29
# BB#28:                                # %if.then.73
                                        #   in Loop: Header=BB0_21 Depth=1
	movslq	-1412(%rbp), %rax
	movq	-1384(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -1404(%rbp)
.LBB0_29:                               # %if.end.77
                                        #   in Loop: Header=BB0_21 Depth=1
	movb	$1, -337(%rbp)
.LBB0_30:                               # %if.end.78
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %for.inc
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-1412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1412(%rbp)
	jmp	.LBB0_21
.LBB0_32:                               # %for.end
	jmp	.LBB0_33
.LBB0_33:                               # %do.body.79
	testb	$1, -1441(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.81
	xorl	%edi, %edi
	movb	$0, -1441(%rbp)
	movq	-1440(%rbp), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1528(%rbp)       # 8-byte Spill
.LBB0_35:                               # %if.end.84
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.85
	cmpl	$0, -1392(%rbp)
	jl	.LBB0_42
# BB#37:                                # %land.lhs.true
	cmpl	$0, -1420(%rbp)
	jl	.LBB0_42
# BB#38:                                # %if.then.90
	movl	$1000, %eax             # imm = 0x3E8
	movl	-1420(%rbp), %ecx
	movl	%eax, -1532(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1532(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rdi
	movl	-1420(%rbp), %eax
	cltd
	idivl	%ecx
	imull	$1000000, %edx, %edx    # imm = 0xF4240
	movslq	%edx, %rsi
	callq	make_timespec
	movq	%rax, -1480(%rbp)
	movq	%rdx, -1472(%rbp)
	movq	-1480(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-1472(%rbp), %rax
	movq	%rax, -312(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_40
# BB#39:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	-320(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB0_41
.LBB0_40:                               # %if.then.100
	leaq	-320(%rbp), %rax
	movq	%rax, -328(%rbp)
.LBB0_41:                               # %if.end.101
	jmp	.LBB0_42
.LBB0_42:                               # %if.end.102
	movl	-1404(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	testb	$1, -337(%rbp)
	movl	%edi, -1536(%rbp)       # 4-byte Spill
	je	.LBB0_44
# BB#43:                                # %cond.true.105
	leaq	-304(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB0_45
.LBB0_44:                               # %cond.false.106
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB0_45
.LBB0_45:                               # %cond.end.107
	movq	-1544(%rbp), %rax       # 8-byte Reload
	leaq	-176(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-328(%rbp), %r8
	movq	-48(%rbp), %r9
	movl	-1536(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rdx
	callq	pselect
	movl	%eax, -1416(%rbp)
	cmpl	$0, -1416(%rbp)
	jge	.LBB0_47
# BB#46:                                # %if.then.112
	movl	-1416(%rbp), %eax
	movl	%eax, -1396(%rbp)
	jmp	.LBB0_76
.LBB0_47:                               # %if.else.113
	cmpl	$0, -1416(%rbp)
	jle	.LBB0_75
# BB#48:                                # %if.then.116
	movl	$0, -1412(%rbp)
.LBB0_49:                               # %for.cond.117
                                        # =>This Inner Loop Header: Depth=1
	movl	-1412(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_74
# BB#50:                                # %for.body.120
                                        #   in Loop: Header=BB0_49 Depth=1
	leaq	-176(%rbp), %rsi
	movl	-1412(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB0_51
	jmp	.LBB0_56
.LBB0_51:                               # %if.then.122
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_54
# BB#52:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB0_53
	jmp	.LBB0_54
.LBB0_53:                               # %if.then.127
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1396(%rbp)
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.129
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1400(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1400(%rbp)
.LBB0_55:                               # %if.end.131
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_59
.LBB0_56:                               # %if.else.132
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_58
# BB#57:                                # %if.then.134
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fd_CLR
.LBB0_58:                               # %if.end.135
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.136
                                        #   in Loop: Header=BB0_49 Depth=1
	testb	$1, -337(%rbp)
	je	.LBB0_66
# BB#60:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB0_49 Depth=1
	leaq	-304(%rbp), %rsi
	movl	-1412(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB0_61
	jmp	.LBB0_66
.LBB0_61:                               # %if.then.142
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_64
# BB#62:                                # %land.lhs.true.144
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB0_63
	jmp	.LBB0_64
.LBB0_63:                               # %if.then.147
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1396(%rbp)
	jmp	.LBB0_65
.LBB0_64:                               # %if.else.149
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1400(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1400(%rbp)
.LBB0_65:                               # %if.end.151
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_69
.LBB0_66:                               # %if.else.152
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_68
# BB#67:                                # %if.then.154
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	fd_CLR
.LBB0_68:                               # %if.end.155
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.156
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_72
# BB#70:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB0_71
	jmp	.LBB0_72
.LBB0_71:                               # %if.then.161
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1396(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1396(%rbp)
.LBB0_72:                               # %if.end.163
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_73
.LBB0_73:                               # %for.inc.164
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-1412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1412(%rbp)
	jmp	.LBB0_49
.LBB0_74:                               # %for.end.166
	jmp	.LBB0_75
.LBB0_75:                               # %if.end.167
	jmp	.LBB0_76
.LBB0_76:                               # %if.end.168
	cmpl	$0, -1396(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -1421(%rbp)
	testb	$1, -1421(%rbp)
	je	.LBB0_81
# BB#77:                                # %if.then.173
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1484(%rbp)
	callq	block_input
.LBB0_78:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-336(%rbp), %rdi
	callq	g_main_context_pending
	cmpl	$0, %eax
	je	.LBB0_80
# BB#79:                                # %while.body
                                        #   in Loop: Header=BB0_78 Depth=1
	movq	-336(%rbp), %rdi
	callq	g_main_context_dispatch
	jmp	.LBB0_78
.LBB0_80:                               # %while.end
	callq	unblock_input
	movl	-1484(%rbp), %eax
	movl	%eax, -1548(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	-1548(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, (%rax)
.LBB0_81:                               # %if.end.178
	testb	$1, -1405(%rbp)
	je	.LBB0_83
# BB#82:                                # %if.then.180
	movq	-336(%rbp), %rdi
	callq	g_main_context_release
.LBB0_83:                               # %if.end.181
	cmpl	$0, -1400(%rbp)
	jg	.LBB0_86
# BB#84:                                # %lor.lhs.false.184
	cmpl	$0, -1416(%rbp)
	jne	.LBB0_88
# BB#85:                                # %land.lhs.true.187
	leaq	-320(%rbp), %rax
	cmpq	%rax, -328(%rbp)
	jne	.LBB0_88
.LBB0_86:                               # %land.lhs.true.190
	cmpl	$0, -1396(%rbp)
	jne	.LBB0_88
# BB#87:                                # %if.then.193
	movl	$-1, -1396(%rbp)
	callq	__errno_location
	movl	$4, (%rax)
.LBB0_88:                               # %if.end.195
	movl	-1396(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xg_select, .Lfunc_end0-xg_select
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
