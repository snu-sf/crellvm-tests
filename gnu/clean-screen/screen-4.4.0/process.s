	.text
	.file	"process.bc"
	.globl	InitKeytab
	.align	16, 0x90
	.type	InitKeytab,@function
InitKeytab:                             # @InitKeytab
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
	subq	$160, %rsp
	movl	$0, -4(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$338, %rcx              # imm = 0x152
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$ktab, %rax
	movabsq	$noargs, %rcx
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	shlq	$5, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movl	$-1, (%rdi)
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	shlq	$5, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rcx, 8(%rdi)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	$0, 16(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$0, -4(%rbp)
.LBB0_5:                                # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$104, -4(%rbp)
	jae	.LBB0_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB0_5 Depth=1
	movabsq	$mmtab, %rax
	movabsq	$noargs, %rcx
	movabsq	$dmtab, %rdx
	movabsq	$umtab, %rsi
	movl	-4(%rbp), %edi
	movl	%edi, %r8d
	shlq	$5, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	$-1, (%r9)
	movl	-4(%rbp), %edi
	movl	%edi, %r8d
	shlq	$5, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movq	%rcx, 8(%r9)
	movl	-4(%rbp), %edi
	movl	%edi, %r8d
	shlq	$5, %r8
	addq	%r8, %rsi
	movq	$0, 16(%rsi)
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	shlq	$5, %rsi
	movq	%rdx, %r8
	addq	%rsi, %r8
	movl	$-1, (%r8)
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	shlq	$5, %rsi
	movq	%rdx, %r8
	addq	%rsi, %r8
	movq	%rcx, 8(%r8)
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movq	$0, 16(%rdx)
	movl	-4(%rbp), %edi
	movl	%edi, %edx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	$-1, (%rsi)
	movl	-4(%rbp), %edi
	movl	%edi, %edx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, 8(%rsi)
	movl	-4(%rbp), %edi
	movl	%edi, %ecx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	$0, 16(%rax)
# BB#7:                                 # %for.inc.37
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                # %for.end.39
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB0_9:                                # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$82, -4(%rbp)
	jae	.LBB0_18
# BB#10:                                # %for.body.44
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$106, %eax
	cmpl	$106, %eax
	jae	.LBB0_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_17
.LBB0_12:                               # %if.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$106, %eax
	cmpl	$188, %eax
	jb	.LBB0_14
# BB#13:                                # %if.then.50
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_17
.LBB0_14:                               # %if.end.51
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, kmapdef(,%rcx,8)
	jne	.LBB0_16
# BB#15:                                # %if.then.56
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_17
.LBB0_16:                               # %if.end.57
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$158, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movabsq	$dmtab, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	movq	kmapdef(,%r8,8), %r8
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	shlq	$5, %r8
	addq	%r8, %rdi
	callq	SaveAction
.LBB0_17:                               # %for.inc.62
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_18:                               # %for.end.64
	movl	$0, -4(%rbp)
.LBB0_19:                               # %for.cond.65
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$22, -4(%rbp)
	jae	.LBB0_28
# BB#20:                                # %for.body.68
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$166, %eax
	cmpl	$166, %eax
	jae	.LBB0_22
# BB#21:                                # %if.then.72
                                        #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_27
.LBB0_22:                               # %if.end.73
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$166, %eax
	cmpl	$188, %eax
	jb	.LBB0_24
# BB#23:                                # %if.then.77
                                        #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_27
.LBB0_24:                               # %if.end.78
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, kmapadef(,%rcx,8)
	jne	.LBB0_26
# BB#25:                                # %if.then.83
                                        #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_27
.LBB0_26:                               # %if.end.84
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$158, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movabsq	$dmtab, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	movq	kmapadef(,%r8,8), %r8
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	shlq	$5, %r8
	addq	%r8, %rdi
	addq	$2624, %rdi             # imm = 0xA40
	callq	SaveAction
.LBB0_27:                               # %for.inc.92
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_28:                               # %for.end.94
	movl	$0, -4(%rbp)
.LBB0_29:                               # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -4(%rbp)
	jae	.LBB0_38
# BB#30:                                # %for.body.98
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$106, %eax
	cmpl	$106, %eax
	jae	.LBB0_32
# BB#31:                                # %if.then.102
                                        #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_37
.LBB0_32:                               # %if.end.103
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$106, %eax
	cmpl	$188, %eax
	jb	.LBB0_34
# BB#33:                                # %if.then.107
                                        #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_37
.LBB0_34:                               # %if.end.108
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, kmapmdef(,%rcx,8)
	jne	.LBB0_36
# BB#35:                                # %if.then.113
                                        #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_37
.LBB0_36:                               # %if.end.114
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$158, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movabsq	$mmtab, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	movq	kmapmdef(,%r8,8), %r8
	movq	%r8, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %r8d
	shlq	$5, %r8
	addq	%r8, %rdi
	callq	SaveAction
.LBB0_37:                               # %for.inc.123
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_29
.LBB0_38:                               # %for.end.125
	movabsq	$ktab, %rax
	addq	$1440, %rax             # imm = 0x5A0
	movl	$143, %esi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-48(%rbp), %rdx
	movabsq	$.L.str, %rdi
	movl	$82, ktab+3328
	movl	$160, ktab+832
	movl	$160, ktab+3904
	movl	$141, ktab+96
	movl	$141, ktab+3168
	movl	$115, ktab+448
	movl	$115, ktab+3520
	movl	$115, ktab
	movl	$115, ktab+1024
	movl	$117, ktab+2496
	movl	$128, ktab+512
	movl	$128, ktab+3584
	movl	$128, ktab+4064
	movl	$128, ktab+256
	movl	$94, ktab+352
	movl	$94, ktab+3424
	movl	$134, ktab+384
	movl	$134, ktab+3456
	movl	$179, ktab+736
	movl	$179, ktab+3808
	movl	$175, ktab+3776
	movl	$67, ktab+704
	movl	$184, ktab+544
	movl	$184, ktab+3616
	movl	$183, ktab+608
	movl	$183, ktab+3680
	movl	$165, ktab+640
	movl	$165, ktab+3712
	movl	$92, ktab+288
	movl	$92, ktab+3360
	movl	$95, ktab+416
	movl	$95, ktab+3488
	movl	$166, ktab+2080
	movl	$101, ktab+2432
	movl	$97, ktab+1408
	movl	$177, ktab+2784
	movl	$70, ktab+1472
	movl	$131, ktab+896
	movl	$66, ktab+128
	movl	$66, ktab+3200
	movl	$126, ktab+2176
	movl	$180, ktab+576
	movl	$180, ktab+3648
	movl	$77, ktab+192
	movl	$77, ktab+3264
	movl	$32, ktab+2144
	movl	$139, ktab+2880
	movl	$99, ktab+2304
	movl	$109, ktab+2464
	movl	$87, ktab+2016
	movl	$69, ktab+1344
	movq	%rdi, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	%rax, %rdi
	callq	SaveAction
	movl	$0, -4(%rbp)
.LBB0_39:                               # %for.cond.130
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	$0, maxwin
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB0_42
# BB#40:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_39 Depth=1
	cmpl	$10, maxwin
	jge	.LBB0_42
# BB#41:                                # %cond.true
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	maxwin, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	$10, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_43:                               # %cond.end
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB0_46
# BB#44:                                # %for.body.135
                                        #   in Loop: Header=BB0_39 Depth=1
	movabsq	$.L.str.1, %rsi
	leaq	-74(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	$143, %esi
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-64(%rbp), %rdx
	movabsq	$ktab, %rdi
	addq	$1536, %rdi             # imm = 0x600
	movl	-4(%rbp), %r8d
	movl	%r8d, %r9d
	shlq	$5, %r9
	addq	%r9, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	SaveAction
# BB#45:                                # %for.inc.144
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_39
.LBB0_46:                               # %for.end.146
	movabsq	$ktab, %rax
	addq	$1088, %rax             # imm = 0x440
	movl	$178, %esi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-96(%rbp), %rdx
	movabsq	$.L.str.2, %rdi
	movl	$143, ktab+1248
	movq	%rdi, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rax, %rdi
	callq	SaveAction
	movabsq	$ktab, %rax
	addq	$2976, %rax             # imm = 0xBA0
	movl	$123, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-112(%rbp), %rdx
	movabsq	$.L.str.3, %rdi
	movl	$171, ktab+224
	movl	$34, ktab+1856
	movl	$38, ktab+864
	movl	$38, ktab+2912
	movq	%rdi, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	%rax, %rdi
	callq	SaveAction
	movabsq	$ktab, %rax
	addq	$928, %rax              # imm = 0x3A0
	movl	$123, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	SaveAction
	movabsq	$ktab, %rax
	addq	$9280, %rax             # imm = 0x2440
	movl	$78, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-128(%rbp), %rdx
	movabsq	$.L.str.4, %rdi
	movl	$88, ktab+3936
	movl	$88, ktab+4000
	movl	$181, ktab+1984
	movl	$132, ktab+1920
	movl	$137, ktab+1952
	movl	$126, ktab+2176
	movl	$98, ktab+768
	movl	$98, ktab+3840
	movl	$21, ktab+64
	movl	$21, ktab+3136
	movl	$125, ktab+2112
	movl	$149, ktab+3040
	movl	$156, ktab+2656
	movl	$119, ktab+2592
	movl	$136, ktab+2816
	movl	$76, ktab+2240
	movl	$78, ktab+288
	movq	%rdi, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	%rax, %rdi
	callq	SaveAction
	movabsq	$ktab, %rax
	addq	$3968, %rax             # imm = 0xF80
	movl	$156, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-144(%rbp), %rdx
	movabsq	$.L.str.5, %rdi
	movq	%rdi, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	%rax, %rdi
	callq	SaveAction
	cmpl	$0, DefaultEsc
	jl	.LBB0_48
# BB#47:                                # %if.then.166
	movabsq	$ktab, %rax
	movslq	DefaultEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
	movabsq	$ktab, %rax
	movslq	DefaultEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	$120, (%rax)
.LBB0_48:                               # %if.end.172
	cmpl	$0, DefaultMetaEsc
	jl	.LBB0_50
# BB#49:                                # %if.then.175
	movabsq	$ktab, %rax
	movslq	DefaultMetaEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
	movabsq	$ktab, %rax
	movslq	DefaultMetaEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	$108, (%rax)
.LBB0_50:                               # %if.end.181
	movabsq	$noargs, %rax
	movl	$19, idleaction
	movq	%rax, idleaction+8
	movq	$0, idleaction+16
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitKeytab, .Lfunc_end0-InitKeytab
	.cfi_endproc

	.align	16, 0x90
	.type	SaveAction,@function
SaveAction:                             # @SaveAction
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_5
# BB#1:                                 # %if.then
	jmp	.LBB1_2
.LBB1_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB1_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_2
.LBB1_4:                                # %while.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end
	cmpl	$0, -36(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.2
	movabsq	$noargs, %rax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.LBB1_18
.LBB1_7:                                # %if.end.6
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_9
# BB#8:                                 # %if.then.9
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB1_9:                                # %if.end.10
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_11
# BB#10:                                # %if.then.16
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB1_11:                               # %if.end.17
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
.LBB1_12:                               # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB1_17
# BB#13:                                # %while.body.23
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movl	(%rax), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB1_16:                               # %cond.end
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -24(%rbp)
	movq	(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -56(%rbp)
	movl	(%rcx), %esi
	callq	SaveStrn
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, (%rcx)
	jmp	.LBB1_12
.LBB1_17:                               # %while.end.31
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.LBB1_18:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SaveAction, .Lfunc_end1-SaveAction
	.cfi_endproc

	.align	16, 0x90
	.type	ClearAction,@function
ClearAction:                            # @ClearAction
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$-1, (%rdi)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_9
.LBB2_2:                                # %if.end
	movabsq	$noargs, %rax
	movq	-8(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-8(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB2_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_5
.LBB2_8:                                # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movabsq	$noargs, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB2_9:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ClearAction, .Lfunc_end2-ClearAction
	.cfi_endproc

	.globl	ProcessInput
	.align	16, 0x90
	.type	ProcessInput,@function
ProcessInput:                           # @ProcessInput
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	cmpq	$0, display
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB3_5
.LBB3_4:                                # %if.then
	jmp	.LBB3_82
.LBB3_5:                                # %if.end
	movq	display, %rax
	cmpl	$0, 5336(%rax)
	je	.LBB3_7
# BB#6:                                 # %if.then.2
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movq	%rax, %rdi
	callq	evdeq
.LBB3_7:                                # %if.end.3
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
.LBB3_8:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB3_70
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -16(%rbp)
	movq	display, %rax
	cmpl	$0, 5432(%rax)
	jne	.LBB3_11
# BB#10:                                # %lor.lhs.false.6
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	cmpl	$0, 5312(%rax)
	jne	.LBB3_12
.LBB3_11:                               # %if.then.8
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	movl	$0, 5432(%rax)
	jmp	.LBB3_8
.LBB3_12:                               # %if.end.10
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %for.cond
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.11
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	display, %rax
	movq	5328(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB3_40
# BB#16:                                # %if.then.16
                                        #   in Loop: Header=BB3_13 Depth=2
	xorl	%eax, %eax
	movq	display, %rcx
	subl	5336(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_20
# BB#17:                                # %if.then.26
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	-48(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	display, %rcx
	movq	5328(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 5328(%rcx)
# BB#18:                                # %do.body.29
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_19
.LBB3_19:                               # %do.end.30
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_13
.LBB3_20:                               # %if.end.31
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_21
.LBB3_21:                               # %do.body.32
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.33
                                        #   in Loop: Header=BB3_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movl	$0, 5436(%rdx)
	movq	display, %rdx
	movl	5336(%rdx), %eax
	movl	%eax, -48(%rbp)
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movq	display, %rcx
	movl	$0, 5336(%rcx)
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	addq	$3, %rcx
	movq	display, %rdx
	movq	%rcx, 5328(%rdx)
	cmpl	$0, -48(%rbp)
	jne	.LBB3_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_69
.LBB3_24:                               # %if.end.44
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	display, %rax
	movq	5344(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB3_34
# BB#25:                                # %if.then.47
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	display, %rax
	movq	$0, 5344(%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ecx, -44(%rbp)
# BB#26:                                # %do.body.53
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.54
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_28
.LBB3_28:                               # %do.body.55
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.56
                                        #   in Loop: Header=BB3_13 Depth=2
	movl	-44(%rbp), %edi
	callq	StuffKey
	cmpl	$0, %eax
	je	.LBB3_31
# BB#30:                                # %if.then.58
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %esi
	movq	%rax, %rdi
	callq	ProcessInput2
.LBB3_31:                               # %if.end.62
                                        #   in Loop: Header=BB3_13 Depth=2
	cmpq	$0, display
	jne	.LBB3_33
# BB#32:                                # %if.then.65
	jmp	.LBB3_82
.LBB3_33:                               # %if.end.66
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.else
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	display, %rax
	movl	$1, 5432(%rax)
.LBB3_35:                               # %if.end.75
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_36
.LBB3_36:                               # %do.body.76
                                        #   in Loop: Header=BB3_13 Depth=2
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.77
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	ProcessInput
	cmpq	$0, display
	jne	.LBB3_39
# BB#38:                                # %if.then.80
	jmp	.LBB3_82
.LBB3_39:                               # %if.end.81
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movq	%rax, %rdi
	callq	evdeq
	jmp	.LBB3_13
.LBB3_40:                               # %if.end.83
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	movl	5336(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 5336(%rax)
	cmpl	$0, %ecx
	jne	.LBB3_48
# BB#41:                                # %if.then.87
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
# BB#42:                                # %do.body.90
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %do.end.91
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB3_45
# BB#44:                                # %if.then.93
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ProcessInput2
.LBB3_45:                               # %if.end.94
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpq	$0, display
	jne	.LBB3_47
# BB#46:                                # %if.then.97
	jmp	.LBB3_82
.LBB3_47:                               # %if.end.98
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	movq	$0, 5344(%rax)
.LBB3_48:                               # %if.end.100
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movq	display, %rax
	movq	5328(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 5328(%rax)
	movq	display, %rax
	movl	5336(%rax), %ecx
	movl	%ecx, -48(%rbp)
# BB#49:                                # %do.body.104
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_50
.LBB3_50:                               # %do.end.105
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movq	5328(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	%eax, %ecx
	jne	.LBB3_68
# BB#51:                                # %if.then.114
                                        #   in Loop: Header=BB3_8 Depth=1
	movslq	-48(%rbp), %rax
	movq	display, %rcx
	movq	5328(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-48(%rbp), %edx
	je	.LBB3_59
# BB#52:                                # %if.then.121
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	movq	5328(%rax), %rax
	addq	$1, %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	display, %rax
	movq	5320(%rax), %rax
	movq	display, %rcx
	movslq	5312(%rcx), %rcx
	addq	%rcx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB3_58
# BB#53:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jle	.LBB3_58
# BB#54:                                # %land.lhs.true.136
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	-40(%rbp), %rcx
	addq	$3, %rcx
	movslq	-48(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	bcmp
	cmpl	$0, %eax
	jne	.LBB3_58
# BB#55:                                # %if.then.145
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_56
.LBB3_56:                               # %do.body.146
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_57
.LBB3_57:                               # %do.end.147
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	addq	$-3, %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	display, %rcx
	movq	%rdx, 5344(%rcx)
	movq	-40(%rbp), %rcx
	addq	$3, %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	display, %rdx
	movq	%rcx, 5328(%rdx)
	jmp	.LBB3_69
.LBB3_58:                               # %if.end.158
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_59
.LBB3_59:                               # %if.end.159
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-48(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rdx
	movq	display, %rsi
	movq	5328(%rsi), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$8, %ecx
	subl	-48(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movq	5328(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	orl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$-16385, %eax           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%eax, -44(%rbp)
# BB#60:                                # %do.body.175
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_61
.LBB3_61:                               # %do.end.176
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
# BB#62:                                # %do.body.181
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_63
.LBB3_63:                               # %do.end.182
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	display, %rax
	movl	$0, 5336(%rax)
	movq	display, %rax
	movq	5320(%rax), %rax
	addq	$3, %rax
	movq	display, %rcx
	movq	%rax, 5328(%rcx)
	movq	display, %rax
	movq	$0, 5344(%rax)
	movl	-44(%rbp), %edi
	callq	StuffKey
	cmpl	$0, %eax
	je	.LBB3_65
# BB#64:                                # %if.then.190
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	ProcessInput2
.LBB3_65:                               # %if.end.191
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpq	$0, display
	jne	.LBB3_67
# BB#66:                                # %if.then.194
	jmp	.LBB3_82
.LBB3_67:                               # %if.end.195
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_68
.LBB3_68:                               # %if.end.196
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_69
.LBB3_69:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_8
.LBB3_70:                               # %while.end
	movq	display, %rax
	cmpl	$0, 5336(%rax)
	je	.LBB3_81
# BB#71:                                # %if.then.199
	jmp	.LBB3_72
.LBB3_72:                               # %do.body.200
	jmp	.LBB3_73
.LBB3_73:                               # %do.end.201
	movq	display, %rax
	movl	5336(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	display, %rax
	movq	5328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_74:                               # %for.cond.204
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	subl	-48(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB3_76
# BB#75:                                # %if.then.212
	jmp	.LBB3_80
.LBB3_76:                               # %if.end.213
                                        #   in Loop: Header=BB3_74 Depth=1
	xorl	%eax, %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB3_78
# BB#77:                                # %if.then.225
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movl	maptimeout, %esi
	movq	%rax, %rdi
	callq	SetTimeout
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movq	%rax, %rdi
	callq	evenq
	jmp	.LBB3_80
.LBB3_78:                               # %if.end.228
                                        #   in Loop: Header=BB3_74 Depth=1
	jmp	.LBB3_79
.LBB3_79:                               # %for.inc
                                        #   in Loop: Header=BB3_74 Depth=1
	movl	-44(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB3_74
.LBB3_80:                               # %for.end.233
	jmp	.LBB3_81
.LBB3_81:                               # %if.end.234
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ProcessInput2
.LBB3_82:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ProcessInput, .Lfunc_end3-ProcessInput
	.cfi_endproc

	.globl	StuffKey
	.align	16, 0x90
	.type	StuffKey,@function
StuffKey:                               # @StuffKey
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
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	cmpl	$82, -8(%rbp)
	jge	.LBB4_7
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB4_7
# BB#4:                                 # %if.then
	movl	-8(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movslq	%eax, %rcx
	movq	display, %rdx
	shlq	$5, %rcx
	addq	792(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$-1, (%rcx)
	je	.LBB4_6
# BB#5:                                 # %if.then.4
	movl	$69, %esi
	movq	display, %rax
	movq	$0, 792(%rax)
	movq	fore, %rdi
	callq	WindowChanged
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	addl	$256, %esi              # imm = 0x100
	callq	DoAction
	movl	$0, -4(%rbp)
	jmp	.LBB4_50
.LBB4_6:                                # %if.end
	movl	$1, -20(%rbp)
.LBB4_7:                                # %if.end.7
	cmpl	$60, -8(%rbp)
	jl	.LBB4_11
# BB#8:                                 # %land.lhs.true.9
	cmpl	$64, -8(%rbp)
	jge	.LBB4_11
# BB#9:                                 # %land.lhs.true.11
	movq	display, %rax
	cmpl	$0, 516(%rax)
	je	.LBB4_11
# BB#10:                                # %if.then.13
	movl	-8(%rbp), %eax
	addl	$22, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_16
.LBB4_11:                               # %if.else
	cmpl	$64, -8(%rbp)
	jl	.LBB4_15
# BB#12:                                # %land.lhs.true.16
	cmpl	$82, -8(%rbp)
	jge	.LBB4_15
# BB#13:                                # %land.lhs.true.18
	movq	display, %rax
	cmpl	$0, 512(%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.20
	movl	-8(%rbp), %eax
	addl	$22, %eax
	movl	%eax, -8(%rbp)
.LBB4_15:                               # %if.end.22
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.23
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.24
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.25
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	movq	$0, -16(%rbp)
	cmpq	$0, flayer
	je	.LBB4_24
# BB#19:                                # %land.lhs.true.27
	movq	flayer, %rax
	cmpl	$1, 68(%rax)
	jne	.LBB4_24
# BB#20:                                # %if.then.29
	cmpl	$104, -8(%rbp)
	jge	.LBB4_22
# BB#21:                                # %cond.true
	movabsq	$mmtab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false
	movl	-8(%rbp), %eax
	subl	$104, %eax
	movslq	%eax, %rcx
	imulq	$112, %rcx, %rcx
	addq	kmap_exts, %rcx
	addq	$80, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB4_23:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB4_24:                               # %if.end.35
	cmpq	$0, -16(%rbp)
	je	.LBB4_26
# BB#25:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB4_31
.LBB4_26:                               # %land.lhs.true.39
	movq	display, %rax
	cmpl	$0, 5436(%rax)
	jne	.LBB4_31
# BB#27:                                # %if.then.41
	cmpl	$104, -8(%rbp)
	jge	.LBB4_29
# BB#28:                                # %cond.true.43
	movabsq	$umtab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_30
.LBB4_29:                               # %cond.false.46
	movl	-8(%rbp), %eax
	subl	$104, %eax
	movslq	%eax, %rcx
	imulq	$112, %rcx, %rcx
	addq	kmap_exts, %rcx
	addq	$16, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB4_30:                               # %cond.end.50
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB4_31:                               # %if.end.52
	cmpq	$0, -16(%rbp)
	je	.LBB4_33
# BB#32:                                # %lor.lhs.false.54
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB4_37
.LBB4_33:                               # %if.then.57
	cmpl	$104, -8(%rbp)
	jge	.LBB4_35
# BB#34:                                # %cond.true.59
	movabsq	$dmtab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false.62
	movl	-8(%rbp), %eax
	subl	$104, %eax
	movslq	%eax, %rcx
	imulq	$112, %rcx, %rcx
	addq	kmap_exts, %rcx
	addq	$48, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB4_36:                               # %cond.end.66
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB4_37:                               # %if.end.68
	cmpl	$0, -20(%rbp)
	je	.LBB4_46
# BB#38:                                # %land.lhs.true.70
	cmpq	$0, -16(%rbp)
	je	.LBB4_40
# BB#39:                                # %lor.lhs.false.72
	movq	-16(%rbp), %rax
	cmpl	$35, (%rax)
	je	.LBB4_46
.LBB4_40:                               # %if.then.75
	movl	-24(%rbp), %eax
	addl	$106, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	cmpq	$0, 5440(%rdx,%rcx,8)
	je	.LBB4_43
# BB#41:                                # %land.lhs.true.80
	movl	-24(%rbp), %eax
	addl	$106, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5440(%rdx,%rcx,8), %rdi
	callq	strlen
	cmpq	$1, %rax
	jne	.LBB4_43
# BB#42:                                # %if.then.87
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_43:                               # %if.end.88
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB4_45
# BB#44:                                # %if.then.91
	movl	$69, %esi
	movq	display, %rax
	movq	$0, 792(%rax)
	movq	fore, %rdi
	callq	WindowChanged
.LBB4_45:                               # %if.end.93
	movl	$0, -4(%rbp)
	jmp	.LBB4_50
.LBB4_46:                               # %if.end.94
	movq	display, %rax
	movl	$0, 5436(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB4_48
# BB#47:                                # %lor.lhs.false.97
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB4_49
.LBB4_48:                               # %if.then.100
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_49:                               # %if.end.101
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	DoAction
	movl	$0, -4(%rbp)
.LBB4_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	StuffKey, .Lfunc_end4-StuffKey
	.cfi_endproc

	.globl	ProcessInput2
	.align	16, 0x90
	.type	ProcessInput2,@function
ProcessInput2:                          # @ProcessInput2
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	jmp	.LBB5_3
.LBB5_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB5_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, display
	setne	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB5_5:                                # %land.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_6
	jmp	.LBB5_34
.LBB5_6:                                # %while.body
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %do.body.2
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %do.end.3
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	movl	-12(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	display, %rax
	cmpq	$0, 792(%rax)
	jne	.LBB5_19
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %while.cond.5
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -12(%rbp)
	jle	.LBB5_14
# BB#11:                                # %while.body.6
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	display, %rax
	movq	8(%rax), %rax
	cmpl	292(%rax), %edx
	jne	.LBB5_13
# BB#12:                                # %if.then.9
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_14
.LBB5_13:                               # %if.end
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_10
.LBB5_14:                               # %while.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-12(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_16
# BB#15:                                # %if.then.11
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	fore, %rdi
	callq	DoProcess
.LBB5_16:                               # %if.end.12
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_18
# BB#17:                                # %if.then.16
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$69, %esi
	movabsq	$ktab, %rax
	movq	display, %rcx
	movq	%rax, 792(%rcx)
	movq	fore, %rdi
	callq	WindowChanged
.LBB5_18:                               # %if.end.18
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_19
.LBB5_19:                               # %if.end.19
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -12(%rbp)
	jg	.LBB5_21
# BB#20:                                # %if.then.22
	jmp	.LBB5_34
.LBB5_21:                               # %if.end.23
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB5_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	display, %rax
	movq	792(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$ktab, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_24
.LBB5_24:                               # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB5_26
# BB#25:                                # %if.then.29
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$69, %esi
	movq	display, %rax
	movq	$0, 792(%rax)
	movq	fore, %rdi
	callq	WindowChanged
.LBB5_26:                               # %if.end.31
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	display, %rax
	movq	8(%rax), %rax
	cmpl	292(%rax), %ecx
	jne	.LBB5_28
# BB#27:                                # %if.then.37
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	DefaultEsc, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_31
.LBB5_28:                               # %if.else
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-28(%rbp), %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	cmpl	296(%rcx), %eax
	jne	.LBB5_30
# BB#29:                                # %if.then.41
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	DefaultMetaEsc, %eax
	movl	%eax, -28(%rbp)
.LBB5_30:                               # %if.end.42
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.43
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB5_33
# BB#32:                                # %if.then.46
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-40(%rbp), %rax
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	DoAction
.LBB5_33:                               # %if.end.47
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB5_3
.LBB5_34:                               # %while.end.49
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ProcessInput2, .Lfunc_end5-ProcessInput2
	.cfi_endproc

	.globl	DoProcess
	.align	16, 0x90
	.type	DoProcess,@function
DoProcess:                              # @DoProcess
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	display, %rcx
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$1, (%rax)
	jle	.LBB6_5
# BB#2:                                 # %land.lhs.true.1
	cmpq	$0, -8(%rbp)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rax
	cmpl	$0, 10856(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$10880, %rax            # imm = 0x2A80
	addq	$32, %rax
	movq	-8(%rbp), %rcx
	movl	10856(%rcx), %esi
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-8(%rbp), %rax
	addq	$10880, %rax            # imm = 0x2A80
	addq	$32, %rax
	movq	%rax, %rdi
	callq	evenq
	jmp	.LBB6_29
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, flayer
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB6_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB6_8:                                # %land.end
                                        #   in Loop: Header=BB6_6 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_9
	jmp	.LBB6_26
.LBB6_9:                                # %while.body
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB6_16
# BB#10:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB6_16
# BB#11:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 10896(%rax)
	je	.LBB6_16
# BB#12:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	flayer, %rax
	movq	-8(%rbp), %rcx
	cmpq	10904(%rcx), %rax
	jne	.LBB6_16
# BB#13:                                # %if.then.19
	jmp	.LBB6_14
.LBB6_14:                               # %do.body
	jmp	.LBB6_15
.LBB6_15:                               # %do.end
	movq	-8(%rbp), %rdi
	movl	visual_bell, %esi
	callq	WBell
	movq	-24(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, display
	jmp	.LBB6_29
.LBB6_16:                               # %if.end.20
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -32(%rbp)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB6_19
# BB#18:                                # %if.then.25
	jmp	.LBB6_26
.LBB6_19:                               # %if.end.26
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB6_25
# BB#20:                                # %if.then.28
	cmpq	$0, -32(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.30
	movq	-48(%rbp), %rax
	movq	%rax, display
	jmp	.LBB6_29
.LBB6_22:                               # %if.end.31
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.32
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.33
	movq	-8(%rbp), %rdi
	movl	visual_bell, %esi
	callq	WBell
	jmp	.LBB6_26
.LBB6_25:                               # %if.end.34
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_6
.LBB6_26:                               # %while.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, display
	cmpq	$0, -32(%rbp)
	je	.LBB6_29
# BB#27:                                # %land.lhs.true.38
	movq	-32(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB6_29
# BB#28:                                # %if.then.41
	movq	-32(%rbp), %rdi
	callq	FreePaster
.LBB6_29:                               # %if.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DoProcess, .Lfunc_end6-DoProcess
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	DoAction
	.align	16, 0x90
	.type	DoAction,@function
DoAction:                               # @DoAction
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
	subq	$16448, %rsp            # imm = 0x4040
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movl	%esi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	display, %rdi
	movq	%rdi, -80(%rbp)
	cmpq	$0, display
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movq	display, %rax
	movq	8(%rax), %rax
	movq	%rax, -11928(%rbp)      # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movq	users, %rax
	movq	%rax, -11928(%rbp)      # 8-byte Spill
.LBB7_3:                                # %cond.end
	movq	-11928(%rbp), %rax      # 8-byte Reload
	movq	%rax, -88(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.LBB7_7
# BB#4:                                 # %if.then
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
	jmp	.LBB7_6
.LBB7_6:                                # %do.end
	jmp	.LBB7_2809
.LBB7_7:                                # %if.end
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	andl	$512, %edx              # imm = 0x200
	cmpl	$0, %edx
	jne	.LBB7_13
# BB#8:                                 # %land.lhs.true
	cmpl	$0, queryflag
	jl	.LBB7_13
# BB#9:                                 # %if.then.6
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_11
# BB#10:                                # %cond.true.8
	movabsq	$Msg, %rax
	movq	%rax, -11936(%rbp)      # 8-byte Spill
	jmp	.LBB7_12
.LBB7_11:                               # %cond.false.9
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -11936(%rbp)      # 8-byte Spill
.LBB7_12:                               # %cond.end.12
	movq	-11936(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movabsq	$comms, %rcx
	movslq	-16(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rax, -11944(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-11944(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_13:                               # %if.end.16
	movl	-52(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB7_19
# BB#14:                                # %land.lhs.true.19
	cmpq	$0, display
	jne	.LBB7_19
# BB#15:                                # %if.then.21
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_17
# BB#16:                                # %cond.true.24
	movabsq	$Msg, %rax
	movq	%rax, -11952(%rbp)      # 8-byte Spill
	jmp	.LBB7_18
.LBB7_17:                               # %cond.false.25
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -11952(%rbp)      # 8-byte Spill
.LBB7_18:                               # %cond.end.28
	movq	-11952(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -11960(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-11960(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_19:                               # %if.end.33
	movl	-52(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB7_25
# BB#20:                                # %land.lhs.true.36
	cmpq	$0, fore
	jne	.LBB7_25
# BB#21:                                # %if.then.38
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_23
# BB#22:                                # %cond.true.41
	movabsq	$Msg, %rax
	movq	%rax, -11968(%rbp)      # 8-byte Spill
	jmp	.LBB7_24
.LBB7_23:                               # %cond.false.42
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -11968(%rbp)      # 8-byte Spill
.LBB7_24:                               # %cond.end.45
	movq	-11968(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.8, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -11976(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-11976(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_25:                               # %if.end.50
	movl	-52(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB7_31
# BB#26:                                # %land.lhs.true.53
	cmpq	$0, flayer
	jne	.LBB7_31
# BB#27:                                # %if.then.55
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_29
# BB#28:                                # %cond.true.58
	movabsq	$Msg, %rax
	movq	%rax, -11984(%rbp)      # 8-byte Spill
	jmp	.LBB7_30
.LBB7_29:                               # %cond.false.59
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -11984(%rbp)      # 8-byte Spill
.LBB7_30:                               # %cond.end.62
	movq	-11984(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.9, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -11992(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-11992(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_31:                               # %if.end.67
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	CheckArgNum
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB7_33
# BB#32:                                # %if.then.69
	jmp	.LBB7_2809
.LBB7_33:                               # %if.end.70
	cmpq	$0, display
	je	.LBB7_43
# BB#34:                                # %if.then.72
	xorl	%esi, %esi
	movabsq	$comms, %rax
	movq	display, %rcx
	movq	8(%rcx), %rdi
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	AclCheckPermCmd
	cmpl	$0, %eax
	je	.LBB7_42
# BB#35:                                # %if.then.78
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_37
# BB#36:                                # %cond.true.81
	movabsq	$Msg, %rax
	movq	%rax, -12000(%rbp)      # 8-byte Spill
	jmp	.LBB7_38
.LBB7_37:                               # %cond.false.82
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12000(%rbp)      # 8-byte Spill
.LBB7_38:                               # %cond.end.85
	movq	-12000(%rbp), %rax      # 8-byte Reload
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	cmpq	$0, EffectiveAclUser
	movq	%rax, -12008(%rbp)      # 8-byte Spill
	movq	%rdx, -12016(%rbp)      # 8-byte Spill
	movq	%rcx, -12024(%rbp)      # 8-byte Spill
	je	.LBB7_40
# BB#39:                                # %cond.true.91
	movq	EffectiveAclUser, %rax
	movq	%rax, -12032(%rbp)      # 8-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.92
	movq	display, %rax
	movq	8(%rax), %rax
	movq	%rax, -12032(%rbp)      # 8-byte Spill
.LBB7_41:                               # %cond.end.94
	movq	-12032(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.10, %rsi
	addq	$8, %rax
	movq	-12016(%rbp), %rdx      # 8-byte Reload
	movq	-12024(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-12008(%rbp), %r9       # 8-byte Reload
	callq	*%r9
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_42:                               # %if.end.96
	jmp	.LBB7_43
.LBB7_43:                               # %if.end.97
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, display
	movb	%cl, -12033(%rbp)       # 1-byte Spill
	je	.LBB7_45
# BB#44:                                # %land.rhs
	movq	rc_name, %rax
	cmpb	$0, (%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -12033(%rbp)       # 1-byte Spill
.LBB7_45:                               # %land.end
	movb	-12033(%rbp), %al       # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, %rsi
	subq	$187, %rsi
	movq	%rdx, -12048(%rbp)      # 8-byte Spill
	movq	%rsi, -12056(%rbp)      # 8-byte Spill
	ja	.LBB7_2800
# BB#2810:                              # %land.end
	movq	-12048(%rbp), %rax      # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_46:                               # %sw.bb
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_48
# BB#47:                                # %if.then.101
	callq	InputSelect
	jmp	.LBB7_68
.LBB7_48:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB7_51
# BB#49:                                # %land.lhs.true.106
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_51
# BB#50:                                # %if.then.110
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	SetForeWindow
	xorl	%edi, %edi
	callq	Activate
	jmp	.LBB7_67
.LBB7_51:                               # %if.else.111
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_60
# BB#52:                                # %land.lhs.true.117
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_60
# BB#53:                                # %if.then.121
	cmpq	$0, fore
	jne	.LBB7_58
# BB#54:                                # %if.then.123
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_56
# BB#55:                                # %cond.true.126
	movabsq	$Msg, %rax
	movq	%rax, -12064(%rbp)      # 8-byte Spill
	jmp	.LBB7_57
.LBB7_56:                               # %cond.false.127
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12064(%rbp)      # 8-byte Spill
.LBB7_57:                               # %cond.end.131
	movq	-12064(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.11, %rsi
	movq	%rax, -12072(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12072(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	movl	$-1, queryflag
	jmp	.LBB7_59
.LBB7_58:                               # %if.else.133
	movq	fore, %rdi
	callq	SetForeWindow
	xorl	%edi, %edi
	callq	Activate
.LBB7_59:                               # %if.end.134
	jmp	.LBB7_66
.LBB7_60:                               # %if.else.135
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseWinNum
	cmpl	$0, %eax
	jne	.LBB7_62
# BB#61:                                # %if.then.139
	movl	-52(%rbp), %edi
	callq	SwitchWindow
	jmp	.LBB7_65
.LBB7_62:                               # %if.else.140
	cmpl	$0, queryflag
	jl	.LBB7_64
# BB#63:                                # %if.then.143
	movl	$-1, queryflag
.LBB7_64:                               # %if.end.144
	jmp	.LBB7_65
.LBB7_65:                               # %if.end.145
	jmp	.LBB7_66
.LBB7_66:                               # %if.end.146
	jmp	.LBB7_67
.LBB7_67:                               # %if.end.147
	jmp	.LBB7_68
.LBB7_68:                               # %if.end.148
	jmp	.LBB7_2801
.LBB7_69:                               # %sw.bb.149
	movabsq	$defautonuke, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_75
# BB#70:                                # %land.lhs.true.153
	cmpl	$0, -56(%rbp)
	je	.LBB7_75
# BB#71:                                # %if.then.155
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_73
# BB#72:                                # %cond.true.158
	movabsq	$Msg, %rax
	movq	%rax, -12080(%rbp)      # 8-byte Spill
	jmp	.LBB7_74
.LBB7_73:                               # %cond.false.159
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12080(%rbp)      # 8-byte Spill
.LBB7_74:                               # %cond.end.163
	movq	-12080(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	cmpl	$0, defautonuke
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -12088(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12088(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_75:                               # %if.end.167
	cmpq	$0, display
	je	.LBB7_78
# BB#76:                                # %land.lhs.true.169
	movq	rc_name, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_78
# BB#77:                                # %if.then.172
	movl	defautonuke, %eax
	movq	display, %rcx
	movl	%eax, 5308(%rcx)
.LBB7_78:                               # %if.end.173
	jmp	.LBB7_2801
.LBB7_79:                               # %sw.bb.174
	movq	-8(%rbp), %rdi
	movq	display, %rax
	addq	$5308, %rax             # imm = 0x14BC
	movq	%rax, %rsi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_85
# BB#80:                                # %land.lhs.true.179
	cmpl	$0, -56(%rbp)
	je	.LBB7_85
# BB#81:                                # %if.then.181
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_83
# BB#82:                                # %cond.true.184
	movabsq	$Msg, %rax
	movq	%rax, -12096(%rbp)      # 8-byte Spill
	jmp	.LBB7_84
.LBB7_83:                               # %cond.false.185
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12096(%rbp)      # 8-byte Spill
.LBB7_84:                               # %cond.end.189
	movq	-12096(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	movq	display, %r8
	cmpl	$0, 5308(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -12104(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12104(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_85:                               # %if.end.194
	jmp	.LBB7_2801
.LBB7_86:                               # %sw.bb.195
	movabsq	$defobuflimit, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	jne	.LBB7_92
# BB#87:                                # %land.lhs.true.199
	cmpl	$0, -56(%rbp)
	je	.LBB7_92
# BB#88:                                # %if.then.201
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_90
# BB#89:                                # %cond.true.204
	movabsq	$Msg, %rax
	movq	%rax, -12112(%rbp)      # 8-byte Spill
	jmp	.LBB7_91
.LBB7_90:                               # %cond.false.205
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12112(%rbp)      # 8-byte Spill
.LBB7_91:                               # %cond.end.209
	movq	-12112(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.16, %rsi
	movl	defobuflimit, %edx
	movq	%rax, -12120(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12120(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_92:                               # %if.end.211
	cmpq	$0, display
	je	.LBB7_95
# BB#93:                                # %land.lhs.true.213
	movq	rc_name, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_95
# BB#94:                                # %if.then.216
	movl	defobuflimit, %eax
	movq	display, %rcx
	movl	%eax, 5284(%rcx)
	movq	display, %rcx
	movl	5280(%rcx), %eax
	movq	display, %rcx
	subl	5284(%rcx), %eax
	movq	display, %rcx
	movl	%eax, 5288(%rcx)
.LBB7_95:                               # %if.end.218
	jmp	.LBB7_2801
.LBB7_96:                               # %sw.bb.219
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_101
# BB#97:                                # %if.then.222
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_99
# BB#98:                                # %cond.true.225
	movabsq	$Msg, %rax
	movq	%rax, -12128(%rbp)      # 8-byte Spill
	jmp	.LBB7_100
.LBB7_99:                               # %cond.false.226
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12128(%rbp)      # 8-byte Spill
.LBB7_100:                              # %cond.end.230
	movq	-12128(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.17, %rsi
	movq	display, %rcx
	movl	5284(%rcx), %edx
	movq	display, %rcx
	movl	5280(%rcx), %ecx
	movq	%rax, -12136(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12136(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_108
.LBB7_101:                              # %if.else.234
	movq	-8(%rbp), %rdi
	movq	display, %rax
	addq	$5284, %rax             # imm = 0x14A4
	movq	%rax, %rsi
	callq	ParseNum
	cmpl	$0, %eax
	jne	.LBB7_107
# BB#102:                               # %land.lhs.true.239
	cmpl	$0, -56(%rbp)
	je	.LBB7_107
# BB#103:                               # %if.then.241
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_105
# BB#104:                               # %cond.true.244
	movabsq	$Msg, %rax
	movq	%rax, -12144(%rbp)      # 8-byte Spill
	jmp	.LBB7_106
.LBB7_105:                              # %cond.false.245
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12144(%rbp)      # 8-byte Spill
.LBB7_106:                              # %cond.end.249
	movq	-12144(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.18, %rsi
	movq	display, %rcx
	movl	5284(%rcx), %edx
	movq	%rax, -12152(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12152(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_107:                              # %if.end.252
	jmp	.LBB7_108
.LBB7_108:                              # %if.end.253
	movq	display, %rax
	movl	5280(%rax), %ecx
	movq	display, %rax
	subl	5284(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 5288(%rax)
	jmp	.LBB7_2801
.LBB7_109:                              # %sw.bb.258
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi
	callq	WriteFile
	jmp	.LBB7_2801
.LBB7_110:                              # %sw.bb.259
	movl	$1, -92(%rbp)
	movq	$0, -104(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_119
# BB#111:                               # %if.then.262
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_113
# BB#112:                               # %if.then.265
	movl	$3, -92(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB7_118
.LBB7_113:                              # %if.else.267
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_116
# BB#114:                               # %land.lhs.true.270
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_116
# BB#115:                               # %if.then.273
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB7_117
.LBB7_116:                              # %if.else.275
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB7_117:                              # %if.end.277
	jmp	.LBB7_118
.LBB7_118:                              # %if.end.278
	jmp	.LBB7_119
.LBB7_119:                              # %if.end.279
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_126
# BB#120:                               # %land.lhs.true.282
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB7_126
# BB#121:                               # %land.lhs.true.286
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_126
# BB#122:                               # %if.then.289
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_124
# BB#123:                               # %cond.true.292
	movabsq	$Msg, %rax
	movq	%rax, -12160(%rbp)      # 8-byte Spill
	jmp	.LBB7_125
.LBB7_124:                              # %cond.false.293
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12160(%rbp)      # 8-byte Spill
.LBB7_125:                              # %cond.end.297
	movq	-12160(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.21, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12168(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12168(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_126:                              # %if.end.299
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	WriteFile
	jmp	.LBB7_2801
.LBB7_127:                              # %sw.bb.300
	movabsq	$nwin_default, %rax
	addq	$72, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -12172(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_128:                              # %sw.bb.302
	leaq	-52(%rbp), %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	fore, %rdx
	cmpq	$0, 10824(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	movl	-52(%rbp), %edi
	movl	%eax, -12176(%rbp)      # 4-byte Spill
	callq	LogToggle
	jmp	.LBB7_2801
.LBB7_129:                              # %sw.bb.306
	movl	$1, %edi
	callq	Detach
	jmp	.LBB7_2801
.LBB7_130:                              # %sw.bb.307
	callq	MoreWindows
	cmpl	$0, %eax
	je	.LBB7_132
# BB#131:                               # %if.then.310
	callq	NextWindow
	movl	%eax, %edi
	callq	SwitchWindow
.LBB7_132:                              # %if.end.312
	jmp	.LBB7_2801
.LBB7_133:                              # %sw.bb.313
	callq	MoreWindows
	cmpl	$0, %eax
	je	.LBB7_135
# BB#134:                               # %if.then.316
	callq	PreviousWindow
	movl	%eax, %edi
	callq	SwitchWindow
.LBB7_135:                              # %if.end.318
	jmp	.LBB7_2801
.LBB7_136:                              # %sw.bb.319
	cmpl	$0, -12(%rbp)
	jl	.LBB7_138
# BB#137:                               # %if.then.323
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$confirm_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$94, %r9d
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.22, %r10
	movq	fore, %r11
	cmpq	$0, 168(%r11)
	cmovneq	%r10, %rdi
	callq	Input
	jmp	.LBB7_2801
.LBB7_138:                              # %if.end.326
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	fore, %rax
	cmpq	$0, 168(%rax)
	je	.LBB7_143
# BB#139:                               # %if.then.329
	movq	fore, %rdi
	callq	FreePseudowin
	movq	-8(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	jne	.LBB7_141
# BB#140:                               # %cond.true.332
	movabsq	$Msg, %rax
	movq	%rax, -12184(%rbp)      # 8-byte Spill
	jmp	.LBB7_142
.LBB7_141:                              # %cond.false.333
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12184(%rbp)      # 8-byte Spill
.LBB7_142:                              # %cond.end.337
	movq	-12184(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -12192(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12192(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_143:                              # %if.end.339
	movq	fore, %rax
	movq	8736(%rax), %rdi
	callq	SaveStr
	movq	%rax, -112(%rbp)
	movq	fore, %rdi
	callq	KillWindow
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_145
# BB#144:                               # %cond.true.343
	movabsq	$Msg, %rax
	movq	%rax, -12200(%rbp)      # 8-byte Spill
	jmp	.LBB7_146
.LBB7_145:                              # %cond.false.344
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12200(%rbp)      # 8-byte Spill
.LBB7_146:                              # %cond.end.348
	movq	-12200(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movl	-52(%rbp), %edx
	movq	-112(%rbp), %rcx
	movq	%rax, -12208(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12208(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	cmpq	$0, -112(%rbp)
	je	.LBB7_148
# BB#147:                               # %if.then.351
	movq	-112(%rbp), %rdi
	callq	free
.LBB7_148:                              # %if.end.352
	jmp	.LBB7_2801
.LBB7_149:                              # %sw.bb.353
	cmpl	$0, -12(%rbp)
	jl	.LBB7_151
# BB#150:                               # %if.then.356
	movabsq	$.L.str.26, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$confirm_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$131, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_151:                              # %if.end.357
	xorl	%edi, %edi
	callq	Finit
.LBB7_152:                              # %sw.bb.358
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_155
# BB#153:                               # %land.lhs.true.360
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_155
# BB#154:                               # %if.then.363
	callq	Hangup
	jmp	.LBB7_156
.LBB7_155:                              # %if.else.364
	xorl	%edi, %edi
	callq	Detach
.LBB7_156:                              # %if.end.365
	jmp	.LBB7_2801
.LBB7_157:                              # %sw.bb.366
	cmpl	$0, -12(%rbp)
	jl	.LBB7_159
# BB#158:                               # %if.then.369
	movabsq	$DoAction.buf, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$pow_detach_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movl	-12(%rbp), %eax
	movb	%al, %r10b
	movb	%r10b, DoAction.buf
	callq	Input
	jmp	.LBB7_160
.LBB7_159:                              # %if.else.371
	movl	$3, %edi
	callq	Detach
.LBB7_160:                              # %if.end.372
	jmp	.LBB7_2801
.LBB7_161:                              # %sw.bb.373
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_163
# BB#162:                               # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.14, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_167
.LBB7_163:                              # %if.then.378
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_165
# BB#164:                               # %cond.true.381
	movabsq	$Msg, %rax
	movq	%rax, -12216(%rbp)      # 8-byte Spill
	jmp	.LBB7_166
.LBB7_165:                              # %cond.false.382
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12216(%rbp)      # 8-byte Spill
.LBB7_166:                              # %cond.end.386
	movq	-12216(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -12224(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12224(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_167:                              # %if.end.388
	jmp	.LBB7_2801
.LBB7_168:                              # %sw.bb.389
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_178
# BB#169:                               # %land.lhs.true.391
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.28, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_178
# BB#170:                               # %if.then.394
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_172
# BB#171:                               # %if.then.397
	movq	zmodem_sendcmd, %rdi
	callq	free
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	SaveStr
	movq	%rax, zmodem_sendcmd
.LBB7_172:                              # %if.end.400
	cmpl	$0, -56(%rbp)
	je	.LBB7_177
# BB#173:                               # %if.then.402
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_175
# BB#174:                               # %cond.true.405
	movabsq	$Msg, %rax
	movq	%rax, -12232(%rbp)      # 8-byte Spill
	jmp	.LBB7_176
.LBB7_175:                              # %cond.false.406
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12232(%rbp)      # 8-byte Spill
.LBB7_176:                              # %cond.end.410
	movq	-12232(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.29, %rsi
	movq	zmodem_sendcmd, %rdx
	movq	%rax, -12240(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12240(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_177:                              # %if.end.412
	jmp	.LBB7_2801
.LBB7_178:                              # %if.end.413
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_188
# BB#179:                               # %land.lhs.true.415
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.30, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_188
# BB#180:                               # %if.then.418
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_182
# BB#181:                               # %if.then.421
	movq	zmodem_recvcmd, %rdi
	callq	free
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	SaveStr
	movq	%rax, zmodem_recvcmd
.LBB7_182:                              # %if.end.424
	cmpl	$0, -56(%rbp)
	je	.LBB7_187
# BB#183:                               # %if.then.426
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_185
# BB#184:                               # %cond.true.429
	movabsq	$Msg, %rax
	movq	%rax, -12248(%rbp)      # 8-byte Spill
	jmp	.LBB7_186
.LBB7_185:                              # %cond.false.430
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12248(%rbp)      # 8-byte Spill
.LBB7_186:                              # %cond.end.434
	movq	-12248(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.31, %rsi
	movq	zmodem_recvcmd, %rdx
	movq	%rax, -12256(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12256(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_187:                              # %if.end.436
	jmp	.LBB7_2801
.LBB7_188:                              # %if.end.437
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_204
# BB#189:                               # %if.then.439
	movl	$0, -48(%rbp)
.LBB7_190:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -48(%rbp)
	jge	.LBB7_195
# BB#191:                               # %for.body
                                        #   in Loop: Header=BB7_190 Depth=1
	movslq	-48(%rbp), %rax
	movq	zmodes(,%rax,8), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_193
# BB#192:                               # %if.then.446
	jmp	.LBB7_195
.LBB7_193:                              # %if.end.447
                                        #   in Loop: Header=BB7_190 Depth=1
	jmp	.LBB7_194
.LBB7_194:                              # %for.inc
                                        #   in Loop: Header=BB7_190 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_190
.LBB7_195:                              # %for.end
	cmpl	$4, -48(%rbp)
	jne	.LBB7_198
# BB#196:                               # %land.lhs.true.450
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_198
# BB#197:                               # %if.then.453
	movl	$1, -48(%rbp)
.LBB7_198:                              # %if.end.454
	cmpl	$4, -48(%rbp)
	jne	.LBB7_203
# BB#199:                               # %if.then.457
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_201
# BB#200:                               # %cond.true.460
	movabsq	$Msg, %rax
	movq	%rax, -12264(%rbp)      # 8-byte Spill
	jmp	.LBB7_202
.LBB7_201:                              # %cond.false.461
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12264(%rbp)      # 8-byte Spill
.LBB7_202:                              # %cond.end.465
	movq	-12264(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.32, %rsi
	movq	%rax, -12272(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12272(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_203:                              # %if.end.467
	movl	-48(%rbp), %eax
	movl	%eax, zmodem_mode
.LBB7_204:                              # %if.end.468
	cmpl	$0, -56(%rbp)
	je	.LBB7_209
# BB#205:                               # %if.then.470
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_207
# BB#206:                               # %cond.true.473
	movabsq	$Msg, %rax
	movq	%rax, -12280(%rbp)      # 8-byte Spill
	jmp	.LBB7_208
.LBB7_207:                              # %cond.false.474
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12280(%rbp)      # 8-byte Spill
.LBB7_208:                              # %cond.end.478
	movq	-12280(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.33, %rsi
	movslq	zmodem_mode, %rcx
	movq	zmodes(,%rcx,8), %rdx
	movq	%rax, -12288(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12288(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_209:                              # %if.end.482
	jmp	.LBB7_2801
.LBB7_210:                              # %sw.bb.483
	movl	$0, -116(%rbp)
.LBB7_211:                              # %for.cond.485
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$338, %rcx              # imm = 0x152
	jae	.LBB7_214
# BB#212:                               # %for.body.489
                                        #   in Loop: Header=BB7_211 Depth=1
	movabsq	$ktab, %rax
	movl	-116(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	callq	ClearAction
# BB#213:                               # %for.inc.492
                                        #   in Loop: Header=BB7_211 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_211
.LBB7_214:                              # %for.end.494
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_216
# BB#215:                               # %cond.true.497
	movabsq	$Msg, %rax
	movq	%rax, -12296(%rbp)      # 8-byte Spill
	jmp	.LBB7_217
.LBB7_216:                              # %cond.false.498
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12296(%rbp)      # 8-byte Spill
.LBB7_217:                              # %cond.end.502
	movq	-12296(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.34, %rsi
	movq	%rax, -12304(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12304(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_218:                              # %sw.bb.504
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_220
# BB#219:                               # %if.then.506
	movl	$0, ZombieKey_destroy
	jmp	.LBB7_2801
.LBB7_220:                              # %if.end.507
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB7_222
# BB#221:                               # %lor.lhs.false.510
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jle	.LBB7_226
.LBB7_222:                              # %if.then.513
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_224
# BB#223:                               # %cond.true.516
	movabsq	$Msg, %rax
	movq	%rax, -12312(%rbp)      # 8-byte Spill
	jmp	.LBB7_225
.LBB7_224:                              # %cond.false.517
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12312(%rbp)      # 8-byte Spill
.LBB7_225:                              # %cond.end.521
	movq	-12312(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.35, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12320(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12320(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_226:                              # %if.end.523
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_234
# BB#227:                               # %if.then.526
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.36, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_229
# BB#228:                               # %if.then.530
	movl	$1, ZombieKey_onerror
	jmp	.LBB7_233
.LBB7_229:                              # %if.else.531
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_231
# BB#230:                               # %cond.true.534
	movabsq	$Msg, %rax
	movq	%rax, -12328(%rbp)      # 8-byte Spill
	jmp	.LBB7_232
.LBB7_231:                              # %cond.false.535
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12328(%rbp)      # 8-byte Spill
.LBB7_232:                              # %cond.end.539
	movq	-12328(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.37, %rsi
	movq	%rax, -12336(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12336(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_233:                              # %if.end.541
	jmp	.LBB7_235
.LBB7_234:                              # %if.else.542
	movl	$0, ZombieKey_onerror
.LBB7_235:                              # %if.end.543
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, ZombieKey_destroy
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB7_237
# BB#236:                               # %cond.true.549
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	movl	%ecx, -12340(%rbp)      # 4-byte Spill
	jmp	.LBB7_238
.LBB7_237:                              # %cond.false.553
	xorl	%eax, %eax
	movl	%eax, -12340(%rbp)      # 4-byte Spill
	jmp	.LBB7_238
.LBB7_238:                              # %cond.end.554
	movl	-12340(%rbp), %eax      # 4-byte Reload
	movl	%eax, ZombieKey_resurrect
	jmp	.LBB7_2801
.LBB7_239:                              # %sw.bb.556
	movq	display, %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	display, %rax
	movq	%rax, -128(%rbp)
	movq	$0, display
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_241
# BB#240:                               # %cond.true.562
	movabsq	$Msg, %rax
	movq	%rax, -12352(%rbp)      # 8-byte Spill
	jmp	.LBB7_242
.LBB7_241:                              # %cond.false.563
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12352(%rbp)      # 8-byte Spill
.LBB7_242:                              # %cond.end.567
	movq	-12352(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.38, %rsi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -12360(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12360(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movq	-128(%rbp), %rcx
	movq	%rcx, display
	jmp	.LBB7_2801
.LBB7_243:                              # %sw.bb.569
	cmpq	$0, -88(%rbp)
	jne	.LBB7_245
# BB#244:                               # %if.then.571
	jmp	.LBB7_2801
.LBB7_245:                              # %if.end.572
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	SaveStr
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, EffectiveAclUser
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_247
# BB#246:                               # %if.then.580
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
.LBB7_247:                              # %if.end.581
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -12364(%rbp)      # 4-byte Spill
	movl	%esi, -12368(%rbp)      # 4-byte Spill
	je	.LBB7_310
	jmp	.LBB7_2811
.LBB7_2811:                             # %if.end.581
	movl	-12364(%rbp), %eax      # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -12372(%rbp)      # 4-byte Spill
	je	.LBB7_285
	jmp	.LBB7_2812
.LBB7_2812:                             # %if.end.581
	movl	-12364(%rbp), %eax      # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -12376(%rbp)      # 4-byte Spill
	jne	.LBB7_311
	jmp	.LBB7_248
.LBB7_248:                              # %sw.bb.586
	cmpl	$0, -52(%rbp)
	jne	.LBB7_250
# BB#249:                               # %if.then.588
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB7_264
.LBB7_250:                              # %if.else.589
	movq	users, %rax
	movq	%rax, -144(%rbp)
.LBB7_251:                              # %for.cond.590
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB7_258
# BB#252:                               # %for.body.592
                                        #   in Loop: Header=BB7_251 Depth=1
	jmp	.LBB7_253
.LBB7_253:                              # %do.body.593
                                        #   in Loop: Header=BB7_251 Depth=1
	jmp	.LBB7_254
.LBB7_254:                              # %do.end.594
                                        #   in Loop: Header=BB7_251 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_256
# BB#255:                               # %if.then.600
	jmp	.LBB7_258
.LBB7_256:                              # %if.end.601
                                        #   in Loop: Header=BB7_251 Depth=1
	jmp	.LBB7_257
.LBB7_257:                              # %for.inc.602
                                        #   in Loop: Header=BB7_251 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB7_251
.LBB7_258:                              # %for.end.603
	cmpq	$0, -144(%rbp)
	jne	.LBB7_263
# BB#259:                               # %if.then.605
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_261
# BB#260:                               # %cond.true.611
	movabsq	$Msg, %rax
	movq	%rax, -12384(%rbp)      # 8-byte Spill
	jmp	.LBB7_262
.LBB7_261:                              # %cond.false.612
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12384(%rbp)      # 8-byte Spill
.LBB7_262:                              # %cond.end.616
	movq	-12384(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.39, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, -12392(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12392(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_366
.LBB7_263:                              # %if.end.619
	jmp	.LBB7_264
.LBB7_264:                              # %if.end.620
	jmp	.LBB7_265
.LBB7_265:                              # %do.body.621
	jmp	.LBB7_266
.LBB7_266:                              # %do.end.622
	movq	displays, %rax
	movq	%rax, display
.LBB7_267:                              # %for.cond.623
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_284
# BB#268:                               # %for.body.625
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	display, %rax
	cmpq	$0, 336(%rax)
	jne	.LBB7_270
# BB#269:                               # %if.then.628
                                        #   in Loop: Header=BB7_267 Depth=1
	jmp	.LBB7_283
.LBB7_270:                              # %if.end.629
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB7_272
# BB#271:                               # %if.then.634
                                        #   in Loop: Header=BB7_267 Depth=1
	jmp	.LBB7_283
.LBB7_272:                              # %if.end.635
                                        #   in Loop: Header=BB7_267 Depth=1
	jmp	.LBB7_273
.LBB7_273:                              # %do.body.636
                                        #   in Loop: Header=BB7_267 Depth=1
	jmp	.LBB7_274
.LBB7_274:                              # %do.end.637
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	DoCommand
	cmpq	$0, display
	je	.LBB7_282
# BB#275:                               # %if.then.640
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_277
# BB#276:                               # %cond.true.643
                                        #   in Loop: Header=BB7_267 Depth=1
	movabsq	$Msg, %rax
	movq	%rax, -12400(%rbp)      # 8-byte Spill
	jmp	.LBB7_278
.LBB7_277:                              # %cond.false.644
                                        #   in Loop: Header=BB7_267 Depth=1
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12400(%rbp)      # 8-byte Spill
.LBB7_278:                              # %cond.end.648
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-12400(%rbp), %rax      # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	movq	%rax, -12408(%rbp)      # 8-byte Spill
	movq	%rdx, -12416(%rbp)      # 8-byte Spill
	movq	%rcx, -12424(%rbp)      # 8-byte Spill
	je	.LBB7_280
# BB#279:                               # %cond.true.653
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -12432(%rbp)      # 8-byte Spill
	jmp	.LBB7_281
.LBB7_280:                              # %cond.false.655
                                        #   in Loop: Header=BB7_267 Depth=1
	movabsq	$.L.str.41, %rax
	movq	%rax, -12432(%rbp)      # 8-byte Spill
	jmp	.LBB7_281
.LBB7_281:                              # %cond.end.656
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-12432(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	-12416(%rbp), %rdx      # 8-byte Reload
	movq	-12424(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-12408(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_282:                              # %if.end.658
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	$0, display
	movq	$0, flayer
	movq	$0, fore
.LBB7_283:                              # %for.inc.659
                                        #   in Loop: Header=BB7_267 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, display
	jmp	.LBB7_267
.LBB7_284:                              # %for.end.660
	jmp	.LBB7_366
.LBB7_285:                              # %sw.bb.661
	jmp	.LBB7_286
.LBB7_286:                              # %do.body.663
	jmp	.LBB7_287
.LBB7_287:                              # %do.end.664
	movq	displays, %rax
	movq	%rax, display
.LBB7_288:                              # %for.cond.665
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_309
# BB#289:                               # %for.body.667
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	display, %rax
	cmpq	$0, 336(%rax)
	jne	.LBB7_291
# BB#290:                               # %if.then.672
                                        #   in Loop: Header=BB7_288 Depth=1
	jmp	.LBB7_308
.LBB7_291:                              # %if.end.673
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB7_297
# BB#292:                               # %land.lhs.true.682
                                        #   in Loop: Header=BB7_288 Depth=1
	movabsq	$.L.str.42, %rdi
	movl	$5, %eax
	movl	%eax, %edx
	movq	display, %rcx
	addq	$804, %rcx              # imm = 0x324
	movq	%rcx, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_294
# BB#293:                               # %lor.lhs.false.687
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	addq	$5, %rax
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB7_297
.LBB7_294:                              # %land.lhs.true.695
                                        #   in Loop: Header=BB7_288 Depth=1
	movabsq	$.L.str.43, %rdi
	movl	$8, %eax
	movl	%eax, %edx
	movq	display, %rcx
	addq	$804, %rcx              # imm = 0x324
	movq	%rcx, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_296
# BB#295:                               # %lor.lhs.false.700
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	addq	$8, %rax
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB7_297
.LBB7_296:                              # %if.then.708
                                        #   in Loop: Header=BB7_288 Depth=1
	jmp	.LBB7_308
.LBB7_297:                              # %if.end.709
                                        #   in Loop: Header=BB7_288 Depth=1
	jmp	.LBB7_298
.LBB7_298:                              # %do.body.710
                                        #   in Loop: Header=BB7_288 Depth=1
	jmp	.LBB7_299
.LBB7_299:                              # %do.end.711
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	DoCommand
	cmpq	$0, display
	je	.LBB7_307
# BB#300:                               # %if.then.715
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_302
# BB#301:                               # %cond.true.718
                                        #   in Loop: Header=BB7_288 Depth=1
	movabsq	$Msg, %rax
	movq	%rax, -12440(%rbp)      # 8-byte Spill
	jmp	.LBB7_303
.LBB7_302:                              # %cond.false.719
                                        #   in Loop: Header=BB7_288 Depth=1
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12440(%rbp)      # 8-byte Spill
.LBB7_303:                              # %cond.end.723
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-12440(%rbp), %rax      # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	movq	%rax, -12448(%rbp)      # 8-byte Spill
	movq	%rdx, -12456(%rbp)      # 8-byte Spill
	movq	%rcx, -12464(%rbp)      # 8-byte Spill
	je	.LBB7_305
# BB#304:                               # %cond.true.728
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -12472(%rbp)      # 8-byte Spill
	jmp	.LBB7_306
.LBB7_305:                              # %cond.false.730
                                        #   in Loop: Header=BB7_288 Depth=1
	movabsq	$.L.str.41, %rax
	movq	%rax, -12472(%rbp)      # 8-byte Spill
	jmp	.LBB7_306
.LBB7_306:                              # %cond.end.731
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-12472(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	-12456(%rbp), %rdx      # 8-byte Reload
	movq	-12464(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-12448(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_307:                              # %if.end.733
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	$0, display
	movq	$0, fore
	movq	$0, flayer
.LBB7_308:                              # %for.inc.734
                                        #   in Loop: Header=BB7_288 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, display
	jmp	.LBB7_288
.LBB7_309:                              # %for.end.735
	jmp	.LBB7_366
.LBB7_310:                              # %sw.bb.736
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
.LBB7_311:                              # %sw.default
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	movl	%eax, -164(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpb	$0, (%rcx)
	je	.LBB7_313
# BB#312:                               # %lor.lhs.false.749
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	WindowByNumber
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jge	.LBB7_341
.LBB7_313:                              # %if.then.754
	movl	-164(%rbp), %eax
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movq	windows, %rdx
	movq	%rdx, fore
.LBB7_314:                              # %for.cond.759
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, fore
	je	.LBB7_335
# BB#315:                               # %for.body.761
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	fore, %rax
	movq	8736(%rax), %rsi
	movslq	-52(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB7_317
# BB#316:                               # %if.then.767
                                        #   in Loop: Header=BB7_314 Depth=1
	jmp	.LBB7_334
.LBB7_317:                              # %if.end.768
                                        #   in Loop: Header=BB7_314 Depth=1
	jmp	.LBB7_318
.LBB7_318:                              # %do.body.769
                                        #   in Loop: Header=BB7_314 Depth=1
	jmp	.LBB7_319
.LBB7_319:                              # %do.end.770
                                        #   in Loop: Header=BB7_314 Depth=1
	movl	$0, -48(%rbp)
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_321
# BB#320:                               # %if.then.772
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, display
.LBB7_321:                              # %if.end.775
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_323
# BB#322:                               # %cond.true.777
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	movq	152(%rax), %rax
	movq	%rax, -12480(%rbp)      # 8-byte Spill
	jmp	.LBB7_324
.LBB7_323:                              # %cond.false.779
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	addq	$24, %rax
	movq	%rax, -12480(%rbp)      # 8-byte Spill
.LBB7_324:                              # %cond.end.781
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	-12480(%rbp), %rax      # 8-byte Reload
	movq	%rax, flayer
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	DoCommand
	cmpq	$0, fore
	je	.LBB7_333
# BB#325:                               # %land.lhs.true.786
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_333
# BB#326:                               # %if.then.790
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	fore, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_328
# BB#327:                               # %cond.true.796
                                        #   in Loop: Header=BB7_314 Depth=1
	movabsq	$Msg, %rax
	movq	%rax, -12488(%rbp)      # 8-byte Spill
	jmp	.LBB7_329
.LBB7_328:                              # %cond.false.797
                                        #   in Loop: Header=BB7_314 Depth=1
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12488(%rbp)      # 8-byte Spill
.LBB7_329:                              # %cond.end.801
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	-12488(%rbp), %rax      # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	movq	%rax, -12496(%rbp)      # 8-byte Spill
	movq	%rdx, -12504(%rbp)      # 8-byte Spill
	movq	%rcx, -12512(%rbp)      # 8-byte Spill
	je	.LBB7_331
# BB#330:                               # %cond.true.806
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -12520(%rbp)      # 8-byte Spill
	jmp	.LBB7_332
.LBB7_331:                              # %cond.false.808
                                        #   in Loop: Header=BB7_314 Depth=1
	movabsq	$.L.str.41, %rax
	movq	%rax, -12520(%rbp)      # 8-byte Spill
	jmp	.LBB7_332
.LBB7_332:                              # %cond.end.809
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	-12520(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	-12504(%rbp), %rdx      # 8-byte Reload
	movq	-12512(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-12496(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_333:                              # %if.end.811
                                        #   in Loop: Header=BB7_314 Depth=1
	jmp	.LBB7_334
.LBB7_334:                              # %for.inc.812
                                        #   in Loop: Header=BB7_314 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, fore
	jmp	.LBB7_314
.LBB7_335:                              # %for.end.813
	movq	$0, display
	movq	$0, fore
	cmpl	$0, -48(%rbp)
	jge	.LBB7_340
# BB#336:                               # %if.then.816
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_338
# BB#337:                               # %cond.true.819
	movabsq	$Msg, %rax
	movq	%rax, -12528(%rbp)      # 8-byte Spill
	jmp	.LBB7_339
.LBB7_338:                              # %cond.false.820
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12528(%rbp)      # 8-byte Spill
.LBB7_339:                              # %cond.end.824
	movq	-12528(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.44, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -12536(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12536(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_340:                              # %if.end.827
	jmp	.LBB7_366
.LBB7_341:                              # %if.else.828
	movl	-48(%rbp), %eax
	cmpl	maxwin, %eax
	jge	.LBB7_360
# BB#342:                               # %land.lhs.true.831
	movslq	-48(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, fore
	cmpq	$0, %rax
	je	.LBB7_360
# BB#343:                               # %if.then.835
	movl	-164(%rbp), %eax
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#344:                               # %do.body.840
	jmp	.LBB7_345
.LBB7_345:                              # %do.end.841
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_347
# BB#346:                               # %if.then.845
	movq	fore, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, display
.LBB7_347:                              # %if.end.849
	movq	fore, %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_349
# BB#348:                               # %cond.true.852
	movq	fore, %rax
	movq	152(%rax), %rax
	movq	%rax, -12544(%rbp)      # 8-byte Spill
	jmp	.LBB7_350
.LBB7_349:                              # %cond.false.854
	movq	fore, %rax
	addq	$24, %rax
	movq	%rax, -12544(%rbp)      # 8-byte Spill
.LBB7_350:                              # %cond.end.856
	movq	-12544(%rbp), %rax      # 8-byte Reload
	movq	%rax, flayer
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	DoCommand
	cmpq	$0, fore
	je	.LBB7_359
# BB#351:                               # %land.lhs.true.861
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_359
# BB#352:                               # %if.then.865
	movq	fore, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_354
# BB#353:                               # %cond.true.871
	movabsq	$Msg, %rax
	movq	%rax, -12552(%rbp)      # 8-byte Spill
	jmp	.LBB7_355
.LBB7_354:                              # %cond.false.872
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12552(%rbp)      # 8-byte Spill
.LBB7_355:                              # %cond.end.876
	movq	-12552(%rbp), %rax      # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	movq	%rax, -12560(%rbp)      # 8-byte Spill
	movq	%rdx, -12568(%rbp)      # 8-byte Spill
	movq	%rcx, -12576(%rbp)      # 8-byte Spill
	je	.LBB7_357
# BB#356:                               # %cond.true.881
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -12584(%rbp)      # 8-byte Spill
	jmp	.LBB7_358
.LBB7_357:                              # %cond.false.883
	movabsq	$.L.str.41, %rax
	movq	%rax, -12584(%rbp)      # 8-byte Spill
	jmp	.LBB7_358
.LBB7_358:                              # %cond.end.884
	movq	-12584(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	-12568(%rbp), %rdx      # 8-byte Reload
	movq	-12576(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-12560(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_359:                              # %if.end.886
	movq	$0, display
	movq	$0, fore
	jmp	.LBB7_364
.LBB7_360:                              # %if.else.887
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_362
# BB#361:                               # %cond.true.890
	movabsq	$Msg, %rax
	movq	%rax, -12592(%rbp)      # 8-byte Spill
	jmp	.LBB7_363
.LBB7_362:                              # %cond.false.891
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12592(%rbp)      # 8-byte Spill
.LBB7_363:                              # %cond.end.895
	movq	-12592(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.45, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12600(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12600(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_364:                              # %if.end.897
	jmp	.LBB7_365
.LBB7_365:                              # %if.end.898
	jmp	.LBB7_366
.LBB7_366:                              # %sw.epilog
	movq	-64(%rbp), %rdi
	callq	free
	movq	$0, EffectiveAclUser
	jmp	.LBB7_2801
.LBB7_367:                              # %sw.bb.899
	cmpq	$0, fore
	je	.LBB7_369
# BB#368:                               # %cond.true.901
	movq	fore, %rax
	movl	48(%rax), %ecx
	movl	%ecx, -12604(%rbp)      # 4-byte Spill
	jmp	.LBB7_373
.LBB7_369:                              # %cond.false.903
	cmpq	$0, display
	je	.LBB7_371
# BB#370:                               # %cond.true.905
	movq	display, %rax
	movl	496(%rax), %ecx
	movl	%ecx, -12608(%rbp)      # 4-byte Spill
	jmp	.LBB7_372
.LBB7_371:                              # %cond.false.906
	xorl	%eax, %eax
	movl	%eax, -12608(%rbp)      # 4-byte Spill
	jmp	.LBB7_372
.LBB7_372:                              # %cond.end.907
	movl	-12608(%rbp), %eax      # 4-byte Reload
	movl	%eax, -12604(%rbp)      # 4-byte Spill
.LBB7_373:                              # %cond.end.909
	movl	-12604(%rbp), %eax      # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB7_382
# BB#374:                               # %land.lhs.true.913
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_382
# BB#375:                               # %land.lhs.true.916
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_382
# BB#376:                               # %if.then.920
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB7_381
# BB#377:                               # %if.then.925
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_379
# BB#378:                               # %cond.true.928
	movabsq	$Msg, %rax
	movq	%rax, -12616(%rbp)      # 8-byte Spill
	jmp	.LBB7_380
.LBB7_379:                              # %cond.false.929
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12616(%rbp)      # 8-byte Spill
.LBB7_380:                              # %cond.end.933
	movq	-12616(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.47, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12624(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12624(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_381:                              # %if.end.935
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
.LBB7_382:                              # %if.end.937
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_384
# BB#383:                               # %if.then.940
	movabsq	$.L.str.48, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$copy_reg_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_384:                              # %if.end.941
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB7_389
# BB#385:                               # %if.then.944
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_387
# BB#386:                               # %cond.true.947
	movabsq	$Msg, %rax
	movq	%rax, -12632(%rbp)      # 8-byte Spill
	jmp	.LBB7_388
.LBB7_387:                              # %cond.false.948
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12632(%rbp)      # 8-byte Spill
.LBB7_388:                              # %cond.end.952
	movq	-12632(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.49, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12640(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12640(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_389:                              # %if.end.954
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_400
# BB#390:                               # %if.then.959
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB7_395
# BB#391:                               # %if.then.962
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_393
# BB#392:                               # %cond.true.965
	movabsq	$Msg, %rax
	movq	%rax, -12648(%rbp)      # 8-byte Spill
	jmp	.LBB7_394
.LBB7_393:                              # %cond.false.966
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12648(%rbp)      # 8-byte Spill
.LBB7_394:                              # %cond.end.970
	movq	-12648(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.50, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12656(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12656(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_395:                              # %if.end.972
	leaq	-52(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	ReadFile
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB7_399
# BB#396:                               # %if.then.976
	movabsq	$plop_tab, %rax
	movzbl	-65(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_398
# BB#397:                               # %if.then.980
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB7_398:                              # %if.end.982
	movq	-64(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-52(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-48(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	%edx, 12(%rax)
.LBB7_399:                              # %if.end.984
	jmp	.LBB7_401
.LBB7_400:                              # %if.else.985
	leaq	-65(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	copy_reg_fn
.LBB7_401:                              # %if.end.986
	jmp	.LBB7_2801
.LBB7_402:                              # %sw.bb.987
	cmpq	$0, fore
	je	.LBB7_404
# BB#403:                               # %cond.true.989
	movq	fore, %rax
	movl	48(%rax), %ecx
	movl	%ecx, -12660(%rbp)      # 4-byte Spill
	jmp	.LBB7_408
.LBB7_404:                              # %cond.false.992
	cmpq	$0, display
	je	.LBB7_406
# BB#405:                               # %cond.true.994
	movq	display, %rax
	movl	496(%rax), %ecx
	movl	%ecx, -12664(%rbp)      # 4-byte Spill
	jmp	.LBB7_407
.LBB7_406:                              # %cond.false.996
	xorl	%eax, %eax
	movl	%eax, -12664(%rbp)      # 4-byte Spill
	jmp	.LBB7_407
.LBB7_407:                              # %cond.end.997
	movl	-12664(%rbp), %eax      # 4-byte Reload
	movl	%eax, -12660(%rbp)      # 4-byte Spill
.LBB7_408:                              # %cond.end.999
	movl	-12660(%rbp), %eax      # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB7_417
# BB#409:                               # %land.lhs.true.1003
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_417
# BB#410:                               # %land.lhs.true.1006
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_417
# BB#411:                               # %if.then.1010
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB7_416
# BB#412:                               # %if.then.1015
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_414
# BB#413:                               # %cond.true.1018
	movabsq	$Msg, %rax
	movq	%rax, -12672(%rbp)      # 8-byte Spill
	jmp	.LBB7_415
.LBB7_414:                              # %cond.false.1019
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12672(%rbp)      # 8-byte Spill
.LBB7_415:                              # %cond.end.1023
	movq	-12672(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.51, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12680(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12680(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_416:                              # %if.end.1025
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -44(%rbp)
.LBB7_417:                              # %if.end.1028
	cmpl	$2, -44(%rbp)
	je	.LBB7_422
# BB#418:                               # %if.then.1031
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_420
# BB#419:                               # %cond.true.1034
	movabsq	$Msg, %rax
	movq	%rax, -12688(%rbp)      # 8-byte Spill
	jmp	.LBB7_421
.LBB7_420:                              # %cond.false.1035
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12688(%rbp)      # 8-byte Spill
.LBB7_421:                              # %cond.end.1039
	movq	-12688(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.52, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12696(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12696(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_422:                              # %if.end.1041
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB7_427
# BB#423:                               # %if.then.1044
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_425
# BB#424:                               # %cond.true.1047
	movabsq	$Msg, %rax
	movq	%rax, -12704(%rbp)      # 8-byte Spill
	jmp	.LBB7_426
.LBB7_425:                              # %cond.false.1048
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12704(%rbp)      # 8-byte Spill
.LBB7_426:                              # %cond.end.1052
	movq	-12704(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.53, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12712(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12712(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_427:                              # %if.end.1054
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	movsbl	-65(%rbp), %edx
	cmpl	$46, %edx
	jne	.LBB7_434
# BB#428:                               # %if.then.1060
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB7_430
# BB#429:                               # %if.then.1064
	movq	-88(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -12716(%rbp)      # 4-byte Spill
.LBB7_430:                              # %if.end.1066
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_433
# BB#431:                               # %land.lhs.true.1069
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_433
# BB#432:                               # %if.then.1074
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	callq	SaveStrn
	movq	-88(%rbp), %rdi
	movq	%rax, 304(%rdi)
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	movq	-88(%rbp), %rax
	movl	%esi, 312(%rax)
	movl	-48(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	%esi, 316(%rax)
.LBB7_433:                              # %if.end.1085
	jmp	.LBB7_437
.LBB7_434:                              # %if.else.1086
	movabsq	$plop_tab, %rax
	movzbl	-65(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_436
# BB#435:                               # %if.then.1092
	movq	-184(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB7_436:                              # %if.end.1094
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	callq	SaveStrn
	movq	-184(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	movq	-184(%rbp), %rax
	movl	%esi, 8(%rax)
	movl	-48(%rbp), %esi
	movq	-184(%rbp), %rax
	movl	%esi, 12(%rax)
.LBB7_437:                              # %if.end.1102
	jmp	.LBB7_2801
.LBB7_438:                              # %sw.bb.1103
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_440
# BB#439:                               # %if.then.1106
	movabsq	$.L.str.54, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$process_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_440:                              # %if.end.1107
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB7_445
# BB#441:                               # %if.then.1110
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_443
# BB#442:                               # %cond.true.1113
	movabsq	$Msg, %rax
	movq	%rax, -12728(%rbp)      # 8-byte Spill
	jmp	.LBB7_444
.LBB7_443:                              # %cond.false.1114
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12728(%rbp)      # 8-byte Spill
.LBB7_444:                              # %cond.end.1118
	movq	-12728(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.55, %rsi
	movq	rc_name, %rdx
	movq	%rax, -12736(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12736(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_445:                              # %if.end.1120
	leaq	-65(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx), %r8b
	movb	%r8b, -65(%rbp)
	callq	process_fn
	jmp	.LBB7_2801
.LBB7_446:                              # %sw.bb.1123
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_448
# BB#447:                               # %if.then.1126
	movabsq	$.L.str.56, %rdi
	movl	$100, %esi
	xorl	%eax, %eax
	movabsq	$StuffFin, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_448:                              # %if.end.1127
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_473
# BB#449:                               # %if.then.1130
	movq	-64(%rbp), %rdi
	movl	$.L.str.57, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_454
# BB#450:                               # %if.then.1133
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_452
# BB#451:                               # %cond.true.1136
	movabsq	$Msg, %rax
	movq	%rax, -12744(%rbp)      # 8-byte Spill
	jmp	.LBB7_453
.LBB7_452:                              # %cond.false.1137
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12744(%rbp)      # 8-byte Spill
.LBB7_453:                              # %cond.end.1141
	movq	-12744(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.58, %rsi
	movq	rc_name, %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, -12752(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12752(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_454:                              # %if.end.1143
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$106, -48(%rbp)
.LBB7_455:                              # %for.cond.1145
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$188, -48(%rbp)
	jge	.LBB7_460
# BB#456:                               # %for.body.1148
                                        #   in Loop: Header=BB7_455 Depth=1
	movabsq	$term, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_458
# BB#457:                               # %if.then.1154
	jmp	.LBB7_460
.LBB7_458:                              # %if.end.1155
                                        #   in Loop: Header=BB7_455 Depth=1
	jmp	.LBB7_459
.LBB7_459:                              # %for.inc.1156
                                        #   in Loop: Header=BB7_455 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_455
.LBB7_460:                              # %for.end.1158
	cmpl	$188, -48(%rbp)
	jne	.LBB7_465
# BB#461:                               # %if.then.1161
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_463
# BB#462:                               # %cond.true.1164
	movabsq	$Msg, %rax
	movq	%rax, -12760(%rbp)      # 8-byte Spill
	jmp	.LBB7_464
.LBB7_463:                              # %cond.false.1165
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12760(%rbp)      # 8-byte Spill
.LBB7_464:                              # %cond.end.1169
	movq	-12760(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.59, %rsi
	movq	rc_name, %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, -12768(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12768(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_465:                              # %if.end.1171
	movl	-48(%rbp), %eax
	subl	$106, %eax
	movl	%eax, %edi
	callq	StuffKey
	cmpl	$0, %eax
	jne	.LBB7_467
# BB#466:                               # %if.then.1176
	jmp	.LBB7_2801
.LBB7_467:                              # %if.end.1177
	cmpq	$0, display
	je	.LBB7_469
# BB#468:                               # %cond.true.1179
	movslq	-48(%rbp), %rax
	movq	display, %rcx
	movq	5440(%rcx,%rax,8), %rax
	movq	%rax, -12776(%rbp)      # 8-byte Spill
	jmp	.LBB7_470
.LBB7_469:                              # %cond.false.1182
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -12776(%rbp)      # 8-byte Spill
	jmp	.LBB7_470
.LBB7_470:                              # %cond.end.1183
	movq	-12776(%rbp), %rax      # 8-byte Reload
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_472
# BB#471:                               # %if.then.1187
	jmp	.LBB7_2801
.LBB7_472:                              # %if.end.1188
	movq	-64(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_473:                              # %if.end.1191
	jmp	.LBB7_474
.LBB7_474:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB7_476
# BB#475:                               # %while.body
                                        #   in Loop: Header=BB7_474 Depth=1
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB7_474
.LBB7_476:                              # %while.end
	jmp	.LBB7_2801
.LBB7_477:                              # %sw.bb.1193
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2801
.LBB7_478:                              # %sw.bb.1194
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_480
# BB#479:                               # %if.then.1197
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	ShowWindowsX
	jmp	.LBB7_2801
.LBB7_480:                              # %if.end.1199
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	ShowWindows
	jmp	.LBB7_2801
.LBB7_481:                              # %sw.bb.1200
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_483
# BB#482:                               # %cond.true.1203
	movabsq	$Msg, %rax
	movq	%rax, -12784(%rbp)      # 8-byte Spill
	jmp	.LBB7_484
.LBB7_483:                              # %cond.false.1204
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12784(%rbp)      # 8-byte Spill
.LBB7_484:                              # %cond.end.1208
	movq	-12784(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.60, %rsi
	movabsq	$version, %rdx
	movq	%rax, -12792(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12792(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_485:                              # %sw.bb.1210
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_487
# BB#486:                               # %if.then.1212
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SaveStr
	movq	%rax, timestring
	jmp	.LBB7_2801
.LBB7_487:                              # %if.end.1214
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_489
# BB#488:                               # %cond.true.1217
	movabsq	$Msg, %rax
	movq	%rax, -12800(%rbp)      # 8-byte Spill
	jmp	.LBB7_490
.LBB7_489:                              # %cond.false.1218
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12800(%rbp)      # 8-byte Spill
.LBB7_490:                              # %cond.end.1222
	movq	-12800(%rbp), %rax      # 8-byte Reload
	movl	$37, %edx
	movq	timestring, %rdi
	movq	fore, %rsi
	movq	%rax, -12808(%rbp)      # 8-byte Spill
	callq	MakeWinMsg
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	movq	-12808(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_491:                              # %sw.bb.1225
	callq	ShowInfo
	jmp	.LBB7_2801
.LBB7_492:                              # %sw.bb.1226
	callq	ShowDInfo
	jmp	.LBB7_2801
.LBB7_493:                              # %sw.bb.1227
	movabsq	$ktab, %rax
	movq	%rax, -192(%rbp)
	cmpl	$2, -44(%rbp)
	jne	.LBB7_501
# BB#494:                               # %land.lhs.true.1230
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_501
# BB#495:                               # %if.then.1233
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindKtab
	movq	%rax, -192(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_500
# BB#496:                               # %if.then.1238
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_498
# BB#497:                               # %cond.true.1241
	movabsq	$Msg, %rax
	movq	%rax, -12816(%rbp)      # 8-byte Spill
	jmp	.LBB7_499
.LBB7_498:                              # %cond.false.1242
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12816(%rbp)      # 8-byte Spill
.LBB7_499:                              # %cond.end.1246
	movq	-12816(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.63, %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, -12824(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12824(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_500:                              # %if.end.1249
	jmp	.LBB7_501
.LBB7_501:                              # %if.end.1250
	movabsq	$ktab, %rax
	movq	display, %rcx
	cmpq	%rax, 792(%rcx)
	jne	.LBB7_503
# BB#502:                               # %lor.lhs.false.1253
	movabsq	$ktab, %rax
	cmpq	%rax, -192(%rbp)
	je	.LBB7_506
.LBB7_503:                              # %if.then.1256
	movq	display, %rax
	movq	792(%rax), %rax
	cmpq	-192(%rbp), %rax
	je	.LBB7_505
# BB#504:                               # %if.then.1260
	movl	$69, %esi
	movq	-192(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 792(%rcx)
	movq	fore, %rdi
	callq	WindowChanged
.LBB7_505:                              # %if.end.1262
	jmp	.LBB7_2801
.LBB7_506:                              # %if.end.1263
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB7_508
# BB#507:                               # %if.then.1266
	movl	$69, %esi
	movq	display, %rax
	movq	$0, 792(%rax)
	movq	fore, %rdi
	callq	WindowChanged
.LBB7_508:                              # %if.end.1268
	jmp	.LBB7_509
.LBB7_509:                              # %sw.bb.1269
	callq	MoreWindows
	cmpl	$0, %eax
	je	.LBB7_515
# BB#510:                               # %if.then.1272
	cmpq	$0, display
	je	.LBB7_513
# BB#511:                               # %land.lhs.true.1274
	movq	display, %rax
	cmpq	$0, 384(%rax)
	je	.LBB7_513
# BB#512:                               # %cond.true.1276
	movq	display, %rax
	movq	384(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -12828(%rbp)      # 4-byte Spill
	jmp	.LBB7_514
.LBB7_513:                              # %cond.false.1279
	callq	NextWindow
	movl	%eax, -12828(%rbp)      # 4-byte Spill
.LBB7_514:                              # %cond.end.1281
	movl	-12828(%rbp), %eax      # 4-byte Reload
	movl	%eax, %edi
	callq	SwitchWindow
.LBB7_515:                              # %if.end.1283
	jmp	.LBB7_2801
.LBB7_516:                              # %sw.bb.1284
	movq	-88(%rbp), %rax
	cmpl	$-1, 292(%rax)
	jne	.LBB7_518
# BB#517:                               # %if.then.1287
	jmp	.LBB7_2801
.LBB7_518:                              # %if.end.1288
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	leaq	-65(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	292(%rcx), %edx
	movb	%dl, %r8b
	movb	%r8b, -65(%rbp)
	movq	%rax, -64(%rbp)
	movl	$1, -52(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB7_2801
.LBB7_519:                              # %sw.bb.1293
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	leaq	-65(%rbp), %rax
	movb	$17, -65(%rbp)
	movq	%rax, -64(%rbp)
	movl	$1, -52(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB7_2801
.LBB7_520:                              # %sw.bb.1296
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	leaq	-65(%rbp), %rax
	movb	$19, -65(%rbp)
	movq	%rax, -64(%rbp)
	movl	$1, -52(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB7_2801
.LBB7_521:                              # %sw.bb.1299
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_551
# BB#522:                               # %if.then.1301
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_540
# BB#523:                               # %if.then.1304
	movl	$0, -52(%rbp)
.LBB7_524:                              # %for.cond.1305
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_526 Depth 2
	cmpl	$4, -52(%rbp)
	jge	.LBB7_539
# BB#525:                               # %for.body.1308
                                        #   in Loop: Header=BB7_524 Depth=1
	movl	$0, -48(%rbp)
.LBB7_526:                              # %for.cond.1309
                                        #   Parent Loop BB7_524 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -48(%rbp)
	jge	.LBB7_535
# BB#527:                               # %for.body.1312
                                        #   in Loop: Header=BB7_526 Depth=2
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
	movsbl	-65(%rbp), %esi
	cmpl	$97, %esi
	jl	.LBB7_530
# BB#528:                               # %land.lhs.true.1319
                                        #   in Loop: Header=BB7_526 Depth=2
	movsbl	-65(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB7_530
# BB#529:                               # %if.then.1323
                                        #   in Loop: Header=BB7_526 Depth=2
	movsbl	-65(%rbp), %eax
	subl	$32, %eax
	movb	%al, %cl
	movb	%cl, -65(%rbp)
.LBB7_530:                              # %if.end.1327
                                        #   in Loop: Header=BB7_526 Depth=2
	movsbl	-65(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	DoAction.types(,%rdx,8), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	je	.LBB7_533
# BB#531:                               # %land.lhs.true.1336
                                        #   in Loop: Header=BB7_526 Depth=2
	movsbl	-65(%rbp), %eax
	addl	$32, %eax
	movslq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	DoAction.types(,%rdx,8), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	je	.LBB7_533
# BB#532:                               # %if.then.1345
                                        #   in Loop: Header=BB7_524 Depth=1
	jmp	.LBB7_535
.LBB7_533:                              # %if.end.1346
                                        #   in Loop: Header=BB7_526 Depth=2
	jmp	.LBB7_534
.LBB7_534:                              # %for.inc.1347
                                        #   in Loop: Header=BB7_526 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_526
.LBB7_535:                              # %for.end.1349
                                        #   in Loop: Header=BB7_524 Depth=1
	cmpl	$4, -48(%rbp)
	jne	.LBB7_537
# BB#536:                               # %if.then.1352
	jmp	.LBB7_539
.LBB7_537:                              # %if.end.1353
                                        #   in Loop: Header=BB7_524 Depth=1
	jmp	.LBB7_538
.LBB7_538:                              # %for.inc.1354
                                        #   in Loop: Header=BB7_524 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_524
.LBB7_539:                              # %for.end.1356
	jmp	.LBB7_540
.LBB7_540:                              # %if.end.1357
	cmpl	$0, -52(%rbp)
	jl	.LBB7_542
# BB#541:                               # %lor.lhs.false.1360
	cmpl	$4, -52(%rbp)
	jl	.LBB7_546
.LBB7_542:                              # %if.then.1363
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_544
# BB#543:                               # %cond.true.1366
	movabsq	$Msg, %rax
	movq	%rax, -12840(%rbp)      # 8-byte Spill
	jmp	.LBB7_545
.LBB7_544:                              # %cond.false.1367
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12840(%rbp)      # 8-byte Spill
.LBB7_545:                              # %cond.end.1371
	movq	-12840(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.67, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	DoAction.types, %rcx
	movq	DoAction.types+8, %r8
	movq	DoAction.types+16, %r9
	movq	%rax, -12848(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12848(%rbp), %r10      # 8-byte Reload
	callq	*%r10
	jmp	.LBB7_550
.LBB7_546:                              # %if.else.1373
	movl	-52(%rbp), %eax
	movl	%eax, breaktype
	movq	-8(%rbp), %rcx
	cmpl	$0, 24(%rcx)
	jne	.LBB7_548
# BB#547:                               # %cond.true.1376
	movabsq	$Msg, %rax
	movq	%rax, -12856(%rbp)      # 8-byte Spill
	jmp	.LBB7_549
.LBB7_548:                              # %cond.false.1377
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12856(%rbp)      # 8-byte Spill
.LBB7_549:                              # %cond.end.1381
	movq	-12856(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.68, %rsi
	movl	-52(%rbp), %edx
	movslq	-52(%rbp), %rcx
	movq	DoAction.types(,%rcx,8), %rcx
	movq	%rax, -12864(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12864(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_550:                              # %if.end.1385
	jmp	.LBB7_555
.LBB7_551:                              # %if.else.1386
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_553
# BB#552:                               # %cond.true.1389
	movabsq	$Msg, %rax
	movq	%rax, -12872(%rbp)      # 8-byte Spill
	jmp	.LBB7_554
.LBB7_553:                              # %cond.false.1390
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12872(%rbp)      # 8-byte Spill
.LBB7_554:                              # %cond.end.1394
	movq	-12872(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.69, %rsi
	movl	breaktype, %edx
	movslq	breaktype, %rcx
	movq	DoAction.types(,%rcx,8), %rcx
	movq	%rax, -12880(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12880(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_555:                              # %if.end.1398
	jmp	.LBB7_2801
.LBB7_556:                              # %sw.bb.1399
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_559
# BB#557:                               # %land.lhs.true.1401
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_559
# BB#558:                               # %if.then.1404
	jmp	.LBB7_2801
.LBB7_559:                              # %if.end.1405
	movq	fore, %rdi
	movl	-52(%rbp), %esi
	cmpl	$125, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	SendBreak
	jmp	.LBB7_2801
.LBB7_560:                              # %sw.bb.1408
	movl	$5, %edi
	callq	Detach
	jmp	.LBB7_2801
.LBB7_561:                              # %sw.bb.1409
	movl	$0, -204(%rbp)
	movl	$1, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_564
# BB#562:                               # %land.lhs.true.1411
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.70, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_564
# BB#563:                               # %if.then.1414
	movl	$1, -204(%rbp)
	jmp	.LBB7_568
.LBB7_564:                              # %if.else.1415
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_567
# BB#565:                               # %land.lhs.true.1417
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.71, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_567
# BB#566:                               # %if.then.1420
	movl	$2, -204(%rbp)
.LBB7_567:                              # %if.end.1421
	jmp	.LBB7_568
.LBB7_568:                              # %if.end.1422
	cmpl	$0, -204(%rbp)
	je	.LBB7_570
# BB#569:                               # %if.then.1424
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
.LBB7_570:                              # %if.end.1425
	cmpl	$0, -204(%rbp)
	jne	.LBB7_574
# BB#571:                               # %land.lhs.true.1428
	cmpq	$0, flayer
	je	.LBB7_574
# BB#572:                               # %land.lhs.true.1430
	cmpq	$0, display
	jne	.LBB7_574
# BB#573:                               # %if.then.1432
	movl	$1, -204(%rbp)
.LBB7_574:                              # %if.end.1433
	cmpl	$1, -204(%rbp)
	jne	.LBB7_581
# BB#575:                               # %if.then.1436
	cmpq	$0, flayer
	jne	.LBB7_580
# BB#576:                               # %if.then.1438
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_578
# BB#577:                               # %cond.true.1441
	movabsq	$Msg, %rax
	movq	%rax, -12888(%rbp)      # 8-byte Spill
	jmp	.LBB7_579
.LBB7_578:                              # %cond.false.1442
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12888(%rbp)      # 8-byte Spill
.LBB7_579:                              # %cond.end.1446
	movq	-12888(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.8, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -12896(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12896(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_580:                              # %if.end.1451
	movq	flayer, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -200(%rbp)
	jmp	.LBB7_587
.LBB7_581:                              # %if.else.1452
	cmpq	$0, display
	jne	.LBB7_586
# BB#582:                               # %if.then.1454
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_584
# BB#583:                               # %cond.true.1457
	movabsq	$Msg, %rax
	movq	%rax, -12904(%rbp)      # 8-byte Spill
	jmp	.LBB7_585
.LBB7_584:                              # %cond.false.1458
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12904(%rbp)      # 8-byte Spill
.LBB7_585:                              # %cond.end.1462
	movq	-12904(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -12912(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12912(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_586:                              # %if.end.1467
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movq	display, %rax
	movl	448(%rax), %ecx
	movl	%ecx, -200(%rbp)
.LBB7_587:                              # %if.end.1468
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_593
# BB#588:                               # %land.lhs.true.1470
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB7_593
# BB#589:                               # %if.then.1476
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_591
# BB#590:                               # %cond.true.1479
	movabsq	$Msg, %rax
	movq	%rax, -12920(%rbp)      # 8-byte Spill
	jmp	.LBB7_592
.LBB7_591:                              # %cond.false.1480
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12920(%rbp)      # 8-byte Spill
.LBB7_592:                              # %cond.end.1484
	movq	-12920(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.72, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %r8
	movq	(%r8), %r8
	movq	%rax, -12928(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12928(%rbp), %r9       # 8-byte Reload
	callq	*%r9
	jmp	.LBB7_2801
.LBB7_593:                              # %if.end.1489
	cmpl	$86, -16(%rbp)
	jne	.LBB7_609
# BB#594:                               # %if.then.1492
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_605
# BB#595:                               # %if.then.1494
	cmpl	$42, -200(%rbp)
	jne	.LBB7_597
# BB#596:                               # %if.then.1497
	movl	$24, -200(%rbp)
	jmp	.LBB7_604
.LBB7_597:                              # %if.else.1498
	cmpl	$24, -200(%rbp)
	jne	.LBB7_599
# BB#598:                               # %if.then.1501
	movl	$42, -200(%rbp)
	jmp	.LBB7_603
.LBB7_599:                              # %if.else.1502
	cmpl	$33, -200(%rbp)
	jle	.LBB7_601
# BB#600:                               # %if.then.1505
	movl	$42, -200(%rbp)
	jmp	.LBB7_602
.LBB7_601:                              # %if.else.1506
	movl	$24, -200(%rbp)
.LBB7_602:                              # %if.end.1507
	jmp	.LBB7_603
.LBB7_603:                              # %if.end.1508
	jmp	.LBB7_604
.LBB7_604:                              # %if.end.1509
	jmp	.LBB7_608
.LBB7_605:                              # %if.else.1510
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, -200(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB7_607
# BB#606:                               # %if.then.1514
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -196(%rbp)
.LBB7_607:                              # %if.end.1517
	jmp	.LBB7_608
.LBB7_608:                              # %if.end.1518
	jmp	.LBB7_624
.LBB7_609:                              # %if.else.1519
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_620
# BB#610:                               # %if.then.1521
	movl	-196(%rbp), %eax
	cmpl	Z0width, %eax
	jne	.LBB7_612
# BB#611:                               # %if.then.1524
	movl	Z1width, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB7_619
.LBB7_612:                              # %if.else.1525
	movl	-196(%rbp), %eax
	cmpl	Z1width, %eax
	jne	.LBB7_614
# BB#613:                               # %if.then.1528
	movl	Z0width, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB7_618
.LBB7_614:                              # %if.else.1529
	movl	$2, %eax
	movl	-196(%rbp), %ecx
	movl	Z0width, %edx
	addl	Z1width, %edx
	movl	%eax, -12932(%rbp)      # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-12932(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jle	.LBB7_616
# BB#615:                               # %if.then.1533
	movl	Z0width, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB7_617
.LBB7_616:                              # %if.else.1534
	movl	Z1width, %eax
	movl	%eax, -196(%rbp)
.LBB7_617:                              # %if.end.1535
	jmp	.LBB7_618
.LBB7_618:                              # %if.end.1536
	jmp	.LBB7_619
.LBB7_619:                              # %if.end.1537
	jmp	.LBB7_623
.LBB7_620:                              # %if.else.1538
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, -196(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB7_622
# BB#621:                               # %if.then.1542
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -200(%rbp)
.LBB7_622:                              # %if.end.1545
	jmp	.LBB7_623
.LBB7_623:                              # %if.end.1546
	jmp	.LBB7_624
.LBB7_624:                              # %if.end.1547
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_631
# BB#625:                               # %land.lhs.true.1549
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_631
# BB#626:                               # %land.lhs.true.1552
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB7_631
# BB#627:                               # %if.then.1555
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_629
# BB#628:                               # %cond.true.1558
	movabsq	$Msg, %rax
	movq	%rax, -12944(%rbp)      # 8-byte Spill
	jmp	.LBB7_630
.LBB7_629:                              # %cond.false.1559
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12944(%rbp)      # 8-byte Spill
.LBB7_630:                              # %cond.end.1563
	movq	-12944(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.73, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -12952(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12952(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_631:                              # %if.end.1568
	cmpl	$0, -196(%rbp)
	jg	.LBB7_636
# BB#632:                               # %if.then.1571
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_634
# BB#633:                               # %cond.true.1574
	movabsq	$Msg, %rax
	movq	%rax, -12960(%rbp)      # 8-byte Spill
	jmp	.LBB7_635
.LBB7_634:                              # %cond.false.1575
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12960(%rbp)      # 8-byte Spill
.LBB7_635:                              # %cond.end.1579
	movq	-12960(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.74, %rsi
	movq	%rax, -12968(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12968(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_636:                              # %if.end.1581
	cmpl	$0, -200(%rbp)
	jg	.LBB7_641
# BB#637:                               # %if.then.1584
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_639
# BB#638:                               # %cond.true.1587
	movabsq	$Msg, %rax
	movq	%rax, -12976(%rbp)      # 8-byte Spill
	jmp	.LBB7_640
.LBB7_639:                              # %cond.false.1588
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -12976(%rbp)      # 8-byte Spill
.LBB7_640:                              # %cond.end.1592
	movq	-12976(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.75, %rsi
	movq	%rax, -12984(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-12984(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_641:                              # %if.end.1594
	cmpl	$1, -204(%rbp)
	jne	.LBB7_646
# BB#642:                               # %if.then.1597
	movq	flayer, %rax
	movl	8(%rax), %ecx
	cmpl	-196(%rbp), %ecx
	jne	.LBB7_645
# BB#643:                               # %land.lhs.true.1601
	movq	flayer, %rax
	movl	12(%rax), %ecx
	cmpl	-200(%rbp), %ecx
	jne	.LBB7_645
# BB#644:                               # %if.then.1605
	jmp	.LBB7_2801
.LBB7_645:                              # %if.end.1606
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	flayer, %rdi
	movl	-196(%rbp), %esi
	movl	-200(%rbp), %edx
	callq	ResizeLayer
	jmp	.LBB7_2801
.LBB7_646:                              # %if.end.1607
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	-196(%rbp), %ecx
	jne	.LBB7_649
# BB#647:                               # %land.lhs.true.1611
	movq	display, %rax
	movl	448(%rax), %ecx
	cmpl	-200(%rbp), %ecx
	jne	.LBB7_649
# BB#648:                               # %if.then.1615
	jmp	.LBB7_2801
.LBB7_649:                              # %if.end.1616
	cmpl	$2, -204(%rbp)
	jne	.LBB7_651
# BB#650:                               # %if.then.1619
	movl	$1, %edx
	movl	-196(%rbp), %edi
	movl	-200(%rbp), %esi
	callq	ChangeScreenSize
	jmp	.LBB7_672
.LBB7_651:                              # %if.else.1620
	movl	-196(%rbp), %edi
	movl	-200(%rbp), %esi
	callq	ResizeDisplay
	cmpl	$0, %eax
	jne	.LBB7_656
# BB#652:                               # %if.then.1624
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB7_654
# BB#653:                               # %cond.true.1627
	movq	display, %rax
	movq	376(%rax), %rax
	movsbl	10849(%rax), %ecx
	movl	%ecx, -12988(%rbp)      # 4-byte Spill
	jmp	.LBB7_655
.LBB7_654:                              # %cond.false.1630
	xorl	%eax, %eax
	movl	%eax, -12988(%rbp)      # 4-byte Spill
	jmp	.LBB7_655
.LBB7_655:                              # %cond.end.1631
	movl	-12988(%rbp), %eax      # 4-byte Reload
	movl	%eax, %edi
	callq	Activate
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	336(%rdx), %rdx
	movq	64(%rdx), %rdi
	movq	display, %rdx
	movq	336(%rdx), %rdx
	movl	220(%rdx), %eax
	movq	display, %rdx
	movq	336(%rdx), %rdx
	subl	216(%rdx), %eax
	addl	$1, %eax
	movq	display, %rdx
	movq	336(%rdx), %rdx
	movl	228(%rdx), %esi
	movq	display, %rdx
	movq	336(%rdx), %rdx
	subl	224(%rdx), %esi
	addl	$1, %esi
	movl	%esi, -12992(%rbp)      # 4-byte Spill
	movl	%eax, %esi
	movl	-12992(%rbp), %edx      # 4-byte Reload
	callq	ResizeLayer
	jmp	.LBB7_2801
.LBB7_656:                              # %if.end.1643
	movl	-200(%rbp), %eax
	movq	display, %rcx
	cmpl	448(%rcx), %eax
	jne	.LBB7_661
# BB#657:                               # %if.then.1647
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_659
# BB#658:                               # %cond.true.1650
	movabsq	$Msg, %rax
	movq	%rax, -13000(%rbp)      # 8-byte Spill
	jmp	.LBB7_660
.LBB7_659:                              # %cond.false.1651
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13000(%rbp)      # 8-byte Spill
.LBB7_660:                              # %cond.end.1655
	movq	-13000(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.76, %rsi
	movl	-196(%rbp), %edx
	movq	%rax, -13008(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13008(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_671
.LBB7_661:                              # %if.else.1657
	movl	-196(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jne	.LBB7_666
# BB#662:                               # %if.then.1661
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_664
# BB#663:                               # %cond.true.1664
	movabsq	$Msg, %rax
	movq	%rax, -13016(%rbp)      # 8-byte Spill
	jmp	.LBB7_665
.LBB7_664:                              # %cond.false.1665
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13016(%rbp)      # 8-byte Spill
.LBB7_665:                              # %cond.end.1669
	movq	-13016(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.77, %rsi
	movl	-200(%rbp), %edx
	movq	%rax, -13024(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13024(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_670
.LBB7_666:                              # %if.else.1671
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_668
# BB#667:                               # %cond.true.1674
	movabsq	$Msg, %rax
	movq	%rax, -13032(%rbp)      # 8-byte Spill
	jmp	.LBB7_669
.LBB7_668:                              # %cond.false.1675
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13032(%rbp)      # 8-byte Spill
.LBB7_669:                              # %cond.end.1679
	movq	-13032(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.78, %rsi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	movq	%rax, -13040(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13040(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_670:                              # %if.end.1681
	jmp	.LBB7_671
.LBB7_671:                              # %if.end.1682
	jmp	.LBB7_672
.LBB7_672:                              # %if.end.1683
	jmp	.LBB7_2801
.LBB7_673:                              # %sw.bb.1684
	cmpl	$0, queryflag
	jl	.LBB7_681
# BB#674:                               # %if.then.1687
	cmpq	$0, fore
	je	.LBB7_679
# BB#675:                               # %if.then.1689
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_677
# BB#676:                               # %cond.true.1692
	movabsq	$Msg, %rax
	movq	%rax, -13048(%rbp)      # 8-byte Spill
	jmp	.LBB7_678
.LBB7_677:                              # %cond.false.1693
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13048(%rbp)      # 8-byte Spill
.LBB7_678:                              # %cond.end.1697
	movq	-13048(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	fore, %rcx
	movq	8736(%rcx), %rdx
	movq	%rax, -13056(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13056(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_680
.LBB7_679:                              # %if.else.1700
	movl	$-1, queryflag
.LBB7_680:                              # %if.end.1701
	jmp	.LBB7_2801
.LBB7_681:                              # %if.end.1702
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_683
# BB#682:                               # %if.then.1705
	callq	InputAKA
	jmp	.LBB7_684
.LBB7_683:                              # %if.else.1706
	movq	fore, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -13064(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -13072(%rbp)      # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-13064(%rbp), %rdi      # 8-byte Reload
	movq	-13072(%rbp), %rsi      # 8-byte Reload
	movl	%ecx, %edx
	callq	ChangeAKA
.LBB7_684:                              # %if.end.1709
	jmp	.LBB7_2801
.LBB7_685:                              # %sw.bb.1710
	movabsq	$.L.str.79, %rdi
	movl	$768, %esi              # imm = 0x300
	movl	$4, %edx
	movabsq	$Colonfin, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	Input
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB7_688
# BB#686:                               # %land.lhs.true.1712
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_688
# BB#687:                               # %if.then.1715
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -13080(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -13088(%rbp)      # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	-13080(%rbp), %rdi      # 8-byte Reload
	movq	-13088(%rbp), %rsi      # 8-byte Reload
	callq	*(%rax)
.LBB7_688:                              # %if.end.1720
	jmp	.LBB7_2801
.LBB7_689:                              # %sw.bb.1721
	movq	display, %rax
	cmpq	$0, 592(%rax)
	je	.LBB7_694
# BB#690:                               # %if.then.1723
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_692
# BB#691:                               # %cond.true.1726
	movabsq	$Msg, %rax
	movq	%rax, -13096(%rbp)      # 8-byte Spill
	jmp	.LBB7_693
.LBB7_692:                              # %cond.false.1727
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13096(%rbp)      # 8-byte Spill
.LBB7_693:                              # %cond.end.1731
	movq	-13096(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	display, %rcx
	movq	592(%rcx), %rdx
	movq	%rax, -13104(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13104(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_694:                              # %if.end.1734
	jmp	.LBB7_2801
.LBB7_695:                              # %sw.bb.1735
	movabsq	$.L.str.80, %rdi
	movq	-24(%rbp), %rsi
	callq	DoScreen
	jmp	.LBB7_2801
.LBB7_696:                              # %sw.bb.1736
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$9964, %rax             # imm = 0x26EC
	movq	%rax, %rsi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_702
# BB#697:                               # %land.lhs.true.1740
	cmpl	$0, -56(%rbp)
	je	.LBB7_702
# BB#698:                               # %if.then.1742
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_700
# BB#699:                               # %cond.true.1745
	movabsq	$Msg, %rax
	movq	%rax, -13112(%rbp)      # 8-byte Spill
	jmp	.LBB7_701
.LBB7_700:                              # %cond.false.1746
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13112(%rbp)      # 8-byte Spill
.LBB7_701:                              # %cond.end.1750
	movq	-13112(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.81, %rsi
	movl	$45, %ecx
	movl	$43, %edx
	movq	fore, %r8
	cmpl	$0, 9964(%r8)
	cmovnel	%edx, %ecx
	movl	%ecx, %edx
	movq	%rax, -13120(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13120(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_702:                              # %if.end.1755
	jmp	.LBB7_2801
.LBB7_703:                              # %sw.bb.1756
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_710
# BB#704:                               # %if.then.1758
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB7_706
# BB#705:                               # %if.then.1764
	movl	$4, %eax
	movl	$7, %ecx
	movq	fore, %rdx
	movl	10820(%rdx), %esi
	andl	$2, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movq	fore, %rdx
	movl	%eax, 10820(%rdx)
	jmp	.LBB7_709
.LBB7_706:                              # %if.else.1769
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	je	.LBB7_708
# BB#707:                               # %if.then.1772
	jmp	.LBB7_2801
.LBB7_708:                              # %if.end.1773
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$2, %ecx
	orl	-52(%rbp), %ecx
	movq	fore, %rax
	movl	%ecx, 10820(%rax)
.LBB7_709:                              # %if.end.1777
	jmp	.LBB7_717
.LBB7_710:                              # %if.else.1778
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB7_712
# BB#711:                               # %if.then.1782
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$2, %ecx
	orl	$1, %ecx
	movq	fore, %rax
	movl	%ecx, 10820(%rax)
	jmp	.LBB7_716
.LBB7_712:                              # %if.else.1787
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB7_714
# BB#713:                               # %if.then.1791
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 10820(%rax)
	jmp	.LBB7_715
.LBB7_714:                              # %if.else.1794
	movl	$4, %eax
	movl	$7, %ecx
	movq	fore, %rdx
	cmpl	$0, 10820(%rdx)
	cmovnel	%ecx, %eax
	movq	fore, %rdx
	movl	%eax, 10820(%rdx)
.LBB7_715:                              # %if.end.1799
	jmp	.LBB7_716
.LBB7_716:                              # %if.end.1800
	jmp	.LBB7_717
.LBB7_717:                              # %if.end.1801
	movq	fore, %rax
	movl	10820(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %edi
	callq	SetFlow
	cmpl	$0, -56(%rbp)
	je	.LBB7_722
# BB#718:                               # %if.then.1805
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_720
# BB#719:                               # %cond.true.1808
	movabsq	$Msg, %rax
	movq	%rax, -13128(%rbp)      # 8-byte Spill
	jmp	.LBB7_721
.LBB7_720:                              # %cond.false.1809
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13128(%rbp)      # 8-byte Spill
.LBB7_721:                              # %cond.end.1813
	movq	-13128(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.82, %rsi
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.83, %rdx
	movl	$45, %r8d
	movl	$43, %r9d
	movq	fore, %r10
	movl	10820(%r10), %r11d
	andl	$1, %r11d
	cmpl	$0, %r11d
	cmovnel	%r9d, %r8d
	movq	fore, %r10
	movl	10820(%r10), %r9d
	andl	$4, %r9d
	cmpl	$0, %r9d
	cmovneq	%rdx, %rcx
	movl	%r8d, %edx
	movq	%rax, -13136(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13136(%rbp), %r10      # 8-byte Reload
	callq	*%r10
.LBB7_722:                              # %if.end.1823
	jmp	.LBB7_2801
.LBB7_723:                              # %sw.bb.1824
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB7_725
# BB#724:                               # %if.then.1830
	movl	$1, nwin_default+60
	jmp	.LBB7_728
.LBB7_725:                              # %if.else.1831
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	je	.LBB7_727
# BB#726:                               # %if.then.1834
	jmp	.LBB7_2801
.LBB7_727:                              # %if.end.1835
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, nwin_default+60
.LBB7_728:                              # %if.end.1838
	jmp	.LBB7_2801
.LBB7_729:                              # %sw.bb.1839
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_738
# BB#730:                               # %if.then.1841
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB7_732
# BB#731:                               # %if.then.1847
	movq	fore, %rax
	movl	$1, 9800(%rax)
	jmp	.LBB7_735
.LBB7_732:                              # %if.else.1848
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	je	.LBB7_734
# BB#733:                               # %if.then.1851
	jmp	.LBB7_2801
.LBB7_734:                              # %if.end.1852
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movq	fore, %rdx
	movl	%eax, 9800(%rdx)
.LBB7_735:                              # %if.end.1856
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	fore, %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB7_737
# BB#736:                               # %if.then.1860
	movq	display, %rax
	movq	8(%rax), %rax
	movq	fore, %rcx
	movq	%rax, 9808(%rcx)
.LBB7_737:                              # %if.end.1862
	jmp	.LBB7_738
.LBB7_738:                              # %if.end.1863
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_740
# BB#739:                               # %cond.true.1866
	movabsq	$Msg, %rax
	movq	%rax, -13144(%rbp)      # 8-byte Spill
	jmp	.LBB7_741
.LBB7_740:                              # %cond.false.1867
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13144(%rbp)      # 8-byte Spill
.LBB7_741:                              # %cond.end.1871
	movq	-13144(%rbp), %rax      # 8-byte Reload
	movq	fore, %rcx
	cmpl	$1, 9800(%rcx)
	movq	%rax, -13152(%rbp)      # 8-byte Spill
	jne	.LBB7_743
# BB#742:                               # %cond.true.1876
	movabsq	$.L.str.85, %rax
	movq	%rax, -13160(%rbp)      # 8-byte Spill
	jmp	.LBB7_744
.LBB7_743:                              # %cond.false.1877
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rcx
	movq	fore, %rdx
	cmpl	$0, 9800(%rdx)
	cmoveq	%rcx, %rax
	movq	%rax, -13160(%rbp)      # 8-byte Spill
.LBB7_744:                              # %cond.end.1882
	movq	-13160(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.84, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	movq	-13152(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_745:                              # %sw.bb.1884
	movq	fore, %rdi
	callq	ResetAnsiState
	movabsq	$.L.str.86, %rsi
	movl	$6, %edx
	movq	fore, %rdi
	callq	WriteString
	jmp	.LBB7_2801
.LBB7_746:                              # %sw.bb.1885
	movq	fore, %rdi
	callq	ResetAnsiState
	movq	fore, %rdi
	cmpq	$0, 12704(%rdi)
	je	.LBB7_748
# BB#747:                               # %if.then.1887
	movq	fore, %rdi
	movq	fore, %rax
	movq	12704(%rax), %rsi
	callq	zmodem_abort
.LBB7_748:                              # %if.end.1889
	movabsq	$.L.str.87, %rsi
	movl	$2, %edx
	movq	fore, %rdi
	callq	WriteString
	jmp	.LBB7_2801
.LBB7_749:                              # %sw.bb.1890
	movq	fore, %rax
	cmpl	$0, 10836(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	cmpq	$0, display
	je	.LBB7_753
# BB#750:                               # %if.then.1894
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -52(%rbp)
	movb	%cl, -13161(%rbp)       # 1-byte Spill
	je	.LBB7_752
# BB#751:                               # %land.rhs.1896
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	fore, %rsi
	movq	9848(%rsi), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edi
	andl	$7, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	movb	%cl, -13161(%rbp)       # 1-byte Spill
.LBB7_752:                              # %land.end.1907
	movb	-13161(%rbp), %al       # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_753:                              # %if.end.1909
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	je	.LBB7_755
# BB#754:                               # %if.then.1912
	jmp	.LBB7_2801
.LBB7_755:                              # %if.end.1913
	cmpl	$0, -52(%rbp)
	je	.LBB7_769
# BB#756:                               # %if.then.1915
	cmpq	$0, display
	je	.LBB7_758
# BB#757:                               # %if.then.1917
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	display, %rsi
	movq	8(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9848(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB7_763
.LBB7_758:                              # %if.else.1931
	movl	$0, -48(%rbp)
.LBB7_759:                              # %for.cond.1932
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB7_762
# BB#760:                               # %for.body.1935
                                        #   in Loop: Header=BB7_759 Depth=1
	movl	$128, %eax
	movl	-48(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-48(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9848(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#761:                               # %for.inc.1945
                                        #   in Loop: Header=BB7_759 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_759
.LBB7_762:                              # %for.end.1947
	jmp	.LBB7_763
.LBB7_763:                              # %if.end.1948
	movq	fore, %rax
	cmpl	$0, 10836(%rax)
	jne	.LBB7_765
# BB#764:                               # %if.then.1952
	movq	fore, %rax
	movl	$1, 10836(%rax)
.LBB7_765:                              # %if.end.1954
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_767
# BB#766:                               # %cond.true.1957
	movabsq	$Msg, %rax
	movq	%rax, -13176(%rbp)      # 8-byte Spill
	jmp	.LBB7_768
.LBB7_767:                              # %cond.false.1958
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13176(%rbp)      # 8-byte Spill
.LBB7_768:                              # %cond.end.1962
	movq	-13176(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.88, %rsi
	movq	fore, %rcx
	movl	192(%rcx), %edx
	movq	fore, %rcx
	movq	8736(%rcx), %rcx
	movq	%rax, -13184(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13184(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_788
.LBB7_769:                              # %if.else.1966
	cmpq	$0, display
	je	.LBB7_771
# BB#770:                               # %if.then.1968
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movq	display, %rsi
	movq	8(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9848(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB7_776
.LBB7_771:                              # %if.else.1982
	movl	$0, -48(%rbp)
.LBB7_772:                              # %for.cond.1983
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB7_775
# BB#773:                               # %for.body.1986
                                        #   in Loop: Header=BB7_772 Depth=1
	movl	$128, %eax
	movl	-48(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movl	-48(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9848(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#774:                               # %for.inc.1997
                                        #   in Loop: Header=BB7_772 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_772
.LBB7_775:                              # %for.end.1999
	jmp	.LBB7_776
.LBB7_776:                              # %if.end.2000
	movl	maxusercount, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB7_777:                              # %for.cond.2002
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB7_782
# BB#778:                               # %for.body.2005
                                        #   in Loop: Header=BB7_777 Depth=1
	movl	-48(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	movq	9848(%rdx), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB7_780
# BB#779:                               # %if.then.2011
	jmp	.LBB7_782
.LBB7_780:                              # %if.end.2012
                                        #   in Loop: Header=BB7_777 Depth=1
	jmp	.LBB7_781
.LBB7_781:                              # %for.inc.2013
                                        #   in Loop: Header=BB7_777 Depth=1
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_777
.LBB7_782:                              # %for.end.2015
	cmpl	$0, -48(%rbp)
	jge	.LBB7_784
# BB#783:                               # %if.then.2018
	movq	fore, %rax
	movl	$0, 10836(%rax)
.LBB7_784:                              # %if.end.2020
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_786
# BB#785:                               # %cond.true.2023
	movabsq	$Msg, %rax
	movq	%rax, -13192(%rbp)      # 8-byte Spill
	jmp	.LBB7_787
.LBB7_786:                              # %cond.false.2024
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13192(%rbp)      # 8-byte Spill
.LBB7_787:                              # %cond.end.2028
	movq	-13192(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.89, %rsi
	movq	fore, %rcx
	movl	192(%rcx), %edx
	movq	fore, %rcx
	movq	8736(%rcx), %rcx
	movq	%rax, -13200(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13200(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_788:                              # %if.end.2032
	jmp	.LBB7_2801
.LBB7_789:                              # %sw.bb.2033
	callq	display_displays
	jmp	.LBB7_2801
.LBB7_790:                              # %sw.bb.2034
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_792
# BB#791:                               # %if.then.2036
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	display_windows
	jmp	.LBB7_838
.LBB7_792:                              # %if.else.2037
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.90, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_803
# BB#793:                               # %if.then.2040
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_797
# BB#794:                               # %if.then.2043
	cmpq	$0, wliststr
	je	.LBB7_796
# BB#795:                               # %if.then.2045
	movq	wliststr, %rdi
	callq	free
.LBB7_796:                              # %if.end.2046
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, wliststr
.LBB7_797:                              # %if.end.2049
	cmpl	$0, -56(%rbp)
	je	.LBB7_802
# BB#798:                               # %if.then.2051
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_800
# BB#799:                               # %cond.true.2054
	movabsq	$Msg, %rax
	movq	%rax, -13208(%rbp)      # 8-byte Spill
	jmp	.LBB7_801
.LBB7_800:                              # %cond.false.2055
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13208(%rbp)      # 8-byte Spill
.LBB7_801:                              # %cond.end.2059
	movq	-13208(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.91, %rsi
	movq	wliststr, %rdx
	movq	%rax, -13216(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13216(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_802:                              # %if.end.2061
	jmp	.LBB7_837
.LBB7_803:                              # %if.else.2062
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.92, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_814
# BB#804:                               # %if.then.2065
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_808
# BB#805:                               # %if.then.2068
	cmpq	$0, wlisttit
	je	.LBB7_807
# BB#806:                               # %if.then.2070
	movq	wlisttit, %rdi
	callq	free
.LBB7_807:                              # %if.end.2071
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, wlisttit
.LBB7_808:                              # %if.end.2074
	cmpl	$0, -56(%rbp)
	je	.LBB7_813
# BB#809:                               # %if.then.2076
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_811
# BB#810:                               # %cond.true.2079
	movabsq	$Msg, %rax
	movq	%rax, -13224(%rbp)      # 8-byte Spill
	jmp	.LBB7_812
.LBB7_811:                              # %cond.false.2080
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13224(%rbp)      # 8-byte Spill
.LBB7_812:                              # %cond.end.2084
	movq	-13224(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.93, %rsi
	movq	wlisttit, %rdx
	movq	%rax, -13232(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13232(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_813:                              # %if.end.2086
	jmp	.LBB7_836
.LBB7_814:                              # %if.else.2087
	movl	$0, -208(%rbp)
	movl	$0, -212(%rbp)
	movl	$0, -48(%rbp)
.LBB7_815:                              # %for.cond.2088
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_833
# BB#816:                               # %for.body.2091
                                        #   in Loop: Header=BB7_815 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_818
# BB#817:                               # %if.then.2095
                                        #   in Loop: Header=BB7_815 Depth=1
	jmp	.LBB7_832
.LBB7_818:                              # %if.else.2096
                                        #   in Loop: Header=BB7_815 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.94, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_820
# BB#819:                               # %if.then.2101
                                        #   in Loop: Header=BB7_815 Depth=1
	movl	-208(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB7_830
.LBB7_820:                              # %if.else.2103
                                        #   in Loop: Header=BB7_815 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_822
# BB#821:                               # %if.then.2108
                                        #   in Loop: Header=BB7_815 Depth=1
	movl	$1, -212(%rbp)
	jmp	.LBB7_829
.LBB7_822:                              # %if.else.2109
                                        #   in Loop: Header=BB7_815 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.95, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_824
# BB#823:                               # %if.then.2114
                                        #   in Loop: Header=BB7_815 Depth=1
	movl	-208(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB7_828
.LBB7_824:                              # %if.else.2116
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_826
# BB#825:                               # %cond.true.2119
	movabsq	$Msg, %rax
	movq	%rax, -13240(%rbp)      # 8-byte Spill
	jmp	.LBB7_827
.LBB7_826:                              # %cond.false.2120
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13240(%rbp)      # 8-byte Spill
.LBB7_827:                              # %cond.end.2124
	movq	-13240(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.96, %rsi
	movq	%rax, -13248(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13248(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_833
.LBB7_828:                              # %if.end.2126
                                        #   in Loop: Header=BB7_815 Depth=1
	jmp	.LBB7_829
.LBB7_829:                              # %if.end.2127
                                        #   in Loop: Header=BB7_815 Depth=1
	jmp	.LBB7_830
.LBB7_830:                              # %if.end.2128
                                        #   in Loop: Header=BB7_815 Depth=1
	jmp	.LBB7_831
.LBB7_831:                              # %if.end.2129
                                        #   in Loop: Header=BB7_815 Depth=1
	jmp	.LBB7_832
.LBB7_832:                              # %for.inc.2130
                                        #   in Loop: Header=BB7_815 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_815
.LBB7_833:                              # %for.end.2132
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB7_835
# BB#834:                               # %if.then.2135
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-212(%rbp), %edi
	movl	-208(%rbp), %esi
	callq	display_windows
.LBB7_835:                              # %if.end.2136
	jmp	.LBB7_836
.LBB7_836:                              # %if.end.2137
	jmp	.LBB7_837
.LBB7_837:                              # %if.end.2138
	jmp	.LBB7_838
.LBB7_838:                              # %if.end.2139
	jmp	.LBB7_2801
.LBB7_839:                              # %sw.bb.2140
	cmpl	$2, -44(%rbp)
	jne	.LBB7_847
# BB#840:                               # %land.lhs.true.2143
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_847
# BB#841:                               # %if.then.2146
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindKtab
	movq	%rax, -224(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_846
# BB#842:                               # %if.then.2152
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_844
# BB#843:                               # %cond.true.2155
	movabsq	$Msg, %rax
	movq	%rax, -13256(%rbp)      # 8-byte Spill
	jmp	.LBB7_845
.LBB7_844:                              # %cond.false.2156
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13256(%rbp)      # 8-byte Spill
.LBB7_845:                              # %cond.end.2160
	movq	-13256(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.63, %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, -13264(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13264(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_846:                              # %if.end.2163
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-224(%rbp), %rsi
	callq	display_help
	jmp	.LBB7_848
.LBB7_847:                              # %if.else.2165
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$ktab, %rsi
	callq	display_help
.LBB7_848:                              # %if.end.2166
	jmp	.LBB7_2801
.LBB7_849:                              # %sw.bb.2167
	callq	display_copyright
	jmp	.LBB7_2801
.LBB7_850:                              # %sw.bb.2168
	movabsq	$WinLf, %rax
	movq	flayer, %rcx
	cmpq	%rax, 32(%rcx)
	je	.LBB7_855
# BB#851:                               # %if.then.2172
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_853
# BB#852:                               # %cond.true.2175
	movabsq	$Msg, %rax
	movq	%rax, -13272(%rbp)      # 8-byte Spill
	jmp	.LBB7_854
.LBB7_853:                              # %cond.false.2176
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13272(%rbp)      # 8-byte Spill
.LBB7_854:                              # %cond.end.2180
	movq	-13272(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.97, %rsi
	movq	%rax, -13280(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13280(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_855:                              # %if.end.2182
	callq	MarkRoutine
	movl	$80, %esi
	movq	fore, %rdi
	callq	WindowChanged
	jmp	.LBB7_2801
.LBB7_856:                              # %sw.bb.2183
	movabsq	$WinLf, %rax
	movq	flayer, %rcx
	cmpq	%rax, 32(%rcx)
	je	.LBB7_861
# BB#857:                               # %if.then.2187
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_859
# BB#858:                               # %cond.true.2190
	movabsq	$Msg, %rax
	movq	%rax, -13288(%rbp)      # 8-byte Spill
	jmp	.LBB7_860
.LBB7_859:                              # %cond.false.2191
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13288(%rbp)      # 8-byte Spill
.LBB7_860:                              # %cond.end.2195
	movq	-13288(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.97, %rsi
	movq	%rax, -13296(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13296(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_861:                              # %if.end.2197
	callq	GetHistory
	cmpl	$0, %eax
	jne	.LBB7_863
# BB#862:                               # %if.then.2201
	jmp	.LBB7_2801
.LBB7_863:                              # %if.end.2202
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	jne	.LBB7_865
# BB#864:                               # %if.then.2207
	jmp	.LBB7_2801
.LBB7_865:                              # %if.end.2208
	movabsq	$DoAction.pasteargl, %rax
	movabsq	$DoAction.pasteargs, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.LBB7_866:                              # %sw.bb.2209
	movl	$0, -248(%rbp)
	movl	$-1, -252(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_868
# BB#867:                               # %if.then.2213
	movabsq	$.L.str.98, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$ins_reg_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_868:                              # %if.end.2214
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_871
# BB#869:                               # %land.lhs.true.2218
	cmpq	$0, fore
	jne	.LBB7_871
# BB#870:                               # %if.then.2220
	jmp	.LBB7_2801
.LBB7_871:                              # %if.end.2221
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_877
# BB#872:                               # %land.lhs.true.2224
	movq	-32(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB7_877
# BB#873:                               # %if.then.2228
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_875
# BB#874:                               # %cond.true.2231
	movabsq	$Msg, %rax
	movq	%rax, -13304(%rbp)      # 8-byte Spill
	jmp	.LBB7_876
.LBB7_875:                              # %cond.false.2232
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13304(%rbp)      # 8-byte Spill
.LBB7_876:                              # %cond.end.2236
	movq	-13304(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.99, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13312(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13312(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_877:                              # %if.else.2238
	cmpq	$0, fore
	je	.LBB7_879
# BB#878:                               # %if.then.2240
	movq	fore, %rax
	movl	48(%rax), %ecx
	movl	%ecx, -252(%rbp)
.LBB7_879:                              # %if.end.2243
	jmp	.LBB7_880
.LBB7_880:                              # %if.end.2244
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -232(%rbp)
.LBB7_881:                              # %for.cond.2245
                                        # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	cmpb	$0, %cl
	je	.LBB7_897
# BB#882:                               # %for.body.2247
                                        #   in Loop: Header=BB7_881 Depth=1
	movsbl	-65(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB7_889
# BB#883:                               # %if.then.2251
                                        #   in Loop: Header=BB7_881 Depth=1
	cmpl	$-1, -252(%rbp)
	jne	.LBB7_885
# BB#884:                               # %if.then.2254
                                        #   in Loop: Header=BB7_881 Depth=1
	movq	-88(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -252(%rbp)
.LBB7_885:                              # %if.end.2257
                                        #   in Loop: Header=BB7_881 Depth=1
	movl	-252(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	316(%rcx), %eax
	je	.LBB7_887
# BB#886:                               # %if.then.2262
                                        #   in Loop: Header=BB7_881 Depth=1
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-88(%rbp), %rcx
	movq	304(%rcx), %rdi
	movq	-88(%rbp), %rcx
	movl	312(%rcx), %esi
	movq	-88(%rbp), %rcx
	movl	316(%rcx), %edx
	movl	-252(%rbp), %ecx
	callq	RecodeBuf
	addl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB7_888
.LBB7_887:                              # %if.else.2271
                                        #   in Loop: Header=BB7_881 Depth=1
	movq	-88(%rbp), %rax
	movl	312(%rax), %ecx
	addl	-248(%rbp), %ecx
	movl	%ecx, -248(%rbp)
.LBB7_888:                              # %if.end.2275
                                        #   in Loop: Header=BB7_881 Depth=1
	jmp	.LBB7_895
.LBB7_889:                              # %if.else.2276
                                        #   in Loop: Header=BB7_881 Depth=1
	cmpl	$-1, -252(%rbp)
	jne	.LBB7_891
# BB#890:                               # %if.then.2279
                                        #   in Loop: Header=BB7_881 Depth=1
	movabsq	$plop_tab, %rax
	movzbl	-65(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -252(%rbp)
.LBB7_891:                              # %if.end.2284
                                        #   in Loop: Header=BB7_881 Depth=1
	movabsq	$plop_tab, %rax
	movl	-252(%rbp), %ecx
	movzbl	-65(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	cmpl	12(%rax), %ecx
	je	.LBB7_893
# BB#892:                               # %if.then.2291
                                        #   in Loop: Header=BB7_881 Depth=1
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$plop_tab, %rcx
	movzbl	-65(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %rdi
	movzbl	-65(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %esi
	movzbl	-65(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	12(%rcx), %edx
	movl	-252(%rbp), %ecx
	callq	RecodeBuf
	addl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB7_894
.LBB7_893:                              # %if.else.2306
                                        #   in Loop: Header=BB7_881 Depth=1
	movabsq	$plop_tab, %rax
	movzbl	-65(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	addl	-248(%rbp), %ecx
	movl	%ecx, -248(%rbp)
.LBB7_894:                              # %if.end.2312
                                        #   in Loop: Header=BB7_881 Depth=1
	jmp	.LBB7_895
.LBB7_895:                              # %if.end.2313
                                        #   in Loop: Header=BB7_881 Depth=1
	jmp	.LBB7_896
.LBB7_896:                              # %for.inc.2314
                                        #   in Loop: Header=BB7_881 Depth=1
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB7_881
.LBB7_897:                              # %for.end.2316
	cmpl	$0, -248(%rbp)
	jne	.LBB7_902
# BB#898:                               # %if.then.2319
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_900
# BB#899:                               # %cond.true.2322
	movabsq	$Msg, %rax
	movq	%rax, -13320(%rbp)      # 8-byte Spill
	jmp	.LBB7_901
.LBB7_900:                              # %cond.false.2323
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13320(%rbp)      # 8-byte Spill
.LBB7_901:                              # %cond.end.2327
	movq	-13320(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.100, %rsi
	movq	%rax, -13328(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13328(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_902:                              # %if.end.2329
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_913
# BB#903:                               # %land.lhs.true.2334
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_913
# BB#904:                               # %if.then.2338
	movl	-252(%rbp), %eax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$46, %edx
	movl	%eax, -13332(%rbp)      # 4-byte Spill
	jne	.LBB7_906
# BB#905:                               # %cond.true.2342
	movq	-88(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -13336(%rbp)      # 4-byte Spill
	jmp	.LBB7_907
.LBB7_906:                              # %cond.false.2345
	movabsq	$plop_tab, %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	12(%rax), %edx
	movl	%edx, -13336(%rbp)      # 4-byte Spill
.LBB7_907:                              # %cond.end.2350
	movl	-13336(%rbp), %eax      # 4-byte Reload
	movl	-13332(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB7_912
# BB#908:                               # %if.then.2354
	movq	fore, %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	-64(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$46, %edx
	movq	%rax, -13344(%rbp)      # 8-byte Spill
	jne	.LBB7_910
# BB#909:                               # %cond.true.2358
	movq	-88(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -13352(%rbp)      # 8-byte Spill
	jmp	.LBB7_911
.LBB7_910:                              # %cond.false.2361
	movabsq	$plop_tab, %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -13352(%rbp)      # 8-byte Spill
.LBB7_911:                              # %cond.end.2366
	movq	-13352(%rbp), %rax      # 8-byte Reload
	xorl	%ecx, %ecx
	movl	-248(%rbp), %edx
	movq	-13344(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	MakePaster
	jmp	.LBB7_2801
.LBB7_912:                              # %if.end.2368
	jmp	.LBB7_913
.LBB7_913:                              # %if.end.2369
	movslq	-248(%rbp), %rdi
	callq	malloc
	movq	%rax, -240(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_918
# BB#914:                               # %if.then.2374
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_916
# BB#915:                               # %cond.true.2377
	movabsq	$Msg, %rax
	movq	%rax, -13360(%rbp)      # 8-byte Spill
	jmp	.LBB7_917
.LBB7_916:                              # %cond.false.2378
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13360(%rbp)      # 8-byte Spill
.LBB7_917:                              # %cond.end.2382
	movq	-13360(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movq	%rax, -13368(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13368(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_918:                              # %if.end.2384
	movl	$0, -248(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB7_919:                              # %for.cond.2385
                                        # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	cmpb	$0, %cl
	je	.LBB7_927
# BB#920:                               # %for.body.2387
                                        #   in Loop: Header=BB7_919 Depth=1
	movsbl	-65(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB7_922
# BB#921:                               # %cond.true.2392
                                        #   in Loop: Header=BB7_919 Depth=1
	movq	-88(%rbp), %rax
	addq	$304, %rax              # imm = 0x130
	movq	%rax, -13376(%rbp)      # 8-byte Spill
	jmp	.LBB7_923
.LBB7_922:                              # %cond.false.2394
                                        #   in Loop: Header=BB7_919 Depth=1
	movabsq	$plop_tab, %rax
	movzbl	-65(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -13376(%rbp)      # 8-byte Spill
.LBB7_923:                              # %cond.end.2398
                                        #   in Loop: Header=BB7_919 Depth=1
	movq	-13376(%rbp), %rax      # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-252(%rbp), %ecx
	je	.LBB7_925
# BB#924:                               # %if.then.2403
                                        #   in Loop: Header=BB7_919 Depth=1
	movq	-264(%rbp), %rax
	movq	(%rax), %rdi
	movq	-264(%rbp), %rax
	movl	8(%rax), %esi
	movq	-264(%rbp), %rax
	movl	12(%rax), %edx
	movl	-252(%rbp), %ecx
	movq	-240(%rbp), %rax
	movslq	-248(%rbp), %r8
	addq	%r8, %rax
	movq	%rax, %r8
	callq	RecodeBuf
	addl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB7_926
.LBB7_925:                              # %if.end.2411
                                        #   in Loop: Header=BB7_919 Depth=1
	movq	-264(%rbp), %rax
	movq	(%rax), %rdi
	movq	-240(%rbp), %rax
	movslq	-248(%rbp), %rcx
	addq	%rcx, %rax
	movq	-264(%rbp), %rcx
	movslq	8(%rcx), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movq	-264(%rbp), %rax
	movl	8(%rax), %r8d
	addl	-248(%rbp), %r8d
	movl	%r8d, -248(%rbp)
.LBB7_926:                              # %for.inc.2419
                                        #   in Loop: Header=BB7_919 Depth=1
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB7_919
.LBB7_927:                              # %for.end.2421
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_929
# BB#928:                               # %if.then.2425
	movl	$1, %ecx
	movq	fore, %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	-240(%rbp), %rsi
	movl	-248(%rbp), %edx
	movq	%rax, %rdi
	callq	MakePaster
	jmp	.LBB7_937
.LBB7_929:                              # %if.else.2427
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -241(%rbp)
	movsbl	-241(%rbp), %edx
	cmpl	$46, %edx
	jne	.LBB7_933
# BB#930:                               # %if.then.2433
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB7_932
# BB#931:                               # %if.then.2438
	movq	-88(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -13380(%rbp)      # 4-byte Spill
.LBB7_932:                              # %if.end.2440
	movq	-240(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movl	-248(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 312(%rax)
	movl	-252(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 316(%rax)
	jmp	.LBB7_936
.LBB7_933:                              # %if.else.2447
	movabsq	$plop_tab, %rax
	movzbl	-241(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_935
# BB#934:                               # %if.then.2454
	movq	-272(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB7_935:                              # %if.end.2456
	movq	-240(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-248(%rbp), %edx
	movq	-272(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-252(%rbp), %edx
	movq	-272(%rbp), %rax
	movl	%edx, 12(%rax)
.LBB7_936:                              # %if.end.2460
	jmp	.LBB7_937
.LBB7_937:                              # %if.end.2461
	jmp	.LBB7_2801
.LBB7_938:                              # %sw.bb.2462
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	jne	.LBB7_943
# BB#939:                               # %if.then.2466
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_941
# BB#940:                               # %cond.true.2469
	movabsq	$Msg, %rax
	movq	%rax, -13392(%rbp)      # 8-byte Spill
	jmp	.LBB7_942
.LBB7_941:                              # %cond.false.2470
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13392(%rbp)      # 8-byte Spill
.LBB7_942:                              # %cond.end.2474
	movq	-13392(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.100, %rsi
	movq	%rax, -13400(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13400(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_943:                              # %if.end.2476
	movq	-88(%rbp), %rax
	movq	304(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movq	312(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_959
# BB#944:                               # %land.lhs.true.2480
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_959
# BB#945:                               # %land.lhs.true.2483
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_959
# BB#946:                               # %if.then.2487
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -292(%rbp)
	cmpl	$-1, -292(%rbp)
	jne	.LBB7_951
# BB#947:                               # %if.then.2494
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_949
# BB#948:                               # %cond.true.2497
	movabsq	$Msg, %rax
	movq	%rax, -13408(%rbp)      # 8-byte Spill
	jmp	.LBB7_950
.LBB7_949:                              # %cond.false.2498
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13408(%rbp)      # 8-byte Spill
.LBB7_950:                              # %cond.end.2502
	movq	-13408(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.101, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13416(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13416(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_951:                              # %if.end.2504
	movl	-292(%rbp), %eax
	cmpl	-276(%rbp), %eax
	je	.LBB7_958
# BB#952:                               # %if.then.2508
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	movl	-276(%rbp), %edx
	movl	-292(%rbp), %ecx
	callq	RecodeBuf
	movl	%eax, -296(%rbp)
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.LBB7_957
# BB#953:                               # %if.then.2517
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_955
# BB#954:                               # %cond.true.2520
	movabsq	$Msg, %rax
	movq	%rax, -13424(%rbp)      # 8-byte Spill
	jmp	.LBB7_956
.LBB7_955:                              # %cond.false.2521
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13424(%rbp)      # 8-byte Spill
.LBB7_956:                              # %cond.end.2525
	movq	-13424(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movq	%rax, -13432(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13432(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_957:                              # %if.end.2527
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	movl	-276(%rbp), %edx
	movl	-292(%rbp), %ecx
	movq	-304(%rbp), %r8
	callq	RecodeBuf
	movq	-88(%rbp), %rdi
	movl	%eax, 312(%rdi)
	movq	-304(%rbp), %rdi
	movq	-88(%rbp), %r8
	movq	%rdi, 304(%r8)
	movl	-292(%rbp), %eax
	movq	-88(%rbp), %rdi
	movl	%eax, 316(%rdi)
.LBB7_958:                              # %if.end.2538
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
.LBB7_959:                              # %if.end.2540
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_965
# BB#960:                               # %land.lhs.true.2543
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_965
# BB#961:                               # %if.then.2546
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_963
# BB#962:                               # %cond.true.2549
	movabsq	$Msg, %rax
	movq	%rax, -13440(%rbp)      # 8-byte Spill
	jmp	.LBB7_964
.LBB7_963:                              # %cond.false.2550
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13440(%rbp)      # 8-byte Spill
.LBB7_964:                              # %cond.end.2554
	movq	-13440(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.102, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13448(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13448(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_966
.LBB7_965:                              # %if.else.2556
	movl	$2, %edx
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	WriteFile
.LBB7_966:                              # %if.end.2558
	movq	-88(%rbp), %rax
	movq	304(%rax), %rax
	cmpq	-288(%rbp), %rax
	je	.LBB7_968
# BB#967:                               # %if.then.2564
	movq	-88(%rbp), %rax
	movq	304(%rax), %rdi
	callq	free
.LBB7_968:                              # %if.end.2567
	movq	-88(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rcx, 304(%rax)
	movq	-280(%rbp), %rcx
	movq	%rcx, 312(%rax)
	jmp	.LBB7_2801
.LBB7_969:                              # %sw.bb.2569
	cmpq	$0, fore
	je	.LBB7_971
# BB#970:                               # %cond.true.2571
	movq	fore, %rax
	movl	48(%rax), %ecx
	movl	%ecx, -13452(%rbp)      # 4-byte Spill
	jmp	.LBB7_975
.LBB7_971:                              # %cond.false.2574
	cmpq	$0, display
	je	.LBB7_973
# BB#972:                               # %cond.true.2576
	movq	display, %rax
	movl	496(%rax), %ecx
	movl	%ecx, -13456(%rbp)      # 4-byte Spill
	jmp	.LBB7_974
.LBB7_973:                              # %cond.false.2578
	xorl	%eax, %eax
	movl	%eax, -13456(%rbp)      # 4-byte Spill
	jmp	.LBB7_974
.LBB7_974:                              # %cond.end.2579
	movl	-13456(%rbp), %eax      # 4-byte Reload
	movl	%eax, -13452(%rbp)      # 4-byte Spill
.LBB7_975:                              # %cond.end.2581
	movl	-13452(%rbp), %eax      # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB7_984
# BB#976:                               # %land.lhs.true.2585
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_984
# BB#977:                               # %land.lhs.true.2588
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_984
# BB#978:                               # %if.then.2592
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB7_983
# BB#979:                               # %if.then.2597
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_981
# BB#980:                               # %cond.true.2600
	movabsq	$Msg, %rax
	movq	%rax, -13464(%rbp)      # 8-byte Spill
	jmp	.LBB7_982
.LBB7_981:                              # %cond.false.2601
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13464(%rbp)      # 8-byte Spill
.LBB7_982:                              # %cond.end.2605
	movq	-13464(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.103, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13472(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13472(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_983:                              # %if.end.2607
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
.LBB7_984:                              # %if.end.2609
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_990
# BB#985:                               # %land.lhs.true.2612
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_990
# BB#986:                               # %if.then.2615
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_988
# BB#987:                               # %cond.true.2618
	movabsq	$Msg, %rax
	movq	%rax, -13480(%rbp)      # 8-byte Spill
	jmp	.LBB7_989
.LBB7_988:                              # %cond.false.2619
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13480(%rbp)      # 8-byte Spill
.LBB7_989:                              # %cond.end.2623
	movq	-13480(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.104, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13488(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13488(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_990:                              # %if.end.2625
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_992
# BB#991:                               # %cond.true.2628
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -13496(%rbp)      # 8-byte Spill
	jmp	.LBB7_993
.LBB7_992:                              # %cond.false.2630
	movq	BufferFile, %rax
	movq	%rax, -13496(%rbp)      # 8-byte Spill
.LBB7_993:                              # %cond.end.2631
	movq	-13496(%rbp), %rax      # 8-byte Reload
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	ReadFile
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB7_997
# BB#994:                               # %if.then.2635
	movq	-88(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB7_996
# BB#995:                               # %if.then.2639
	movq	-88(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -13500(%rbp)      # 4-byte Spill
.LBB7_996:                              # %if.end.2641
	movl	-52(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 312(%rcx)
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, 304(%rdx)
	movl	-48(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 316(%rcx)
.LBB7_997:                              # %if.end.2648
	jmp	.LBB7_2801
.LBB7_998:                              # %sw.bb.2649
	callq	KillBuffers
	jmp	.LBB7_2801
.LBB7_999:                              # %sw.bb.2650
	movabsq	$search_ic, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, -56(%rbp)
	movl	%eax, -13504(%rbp)      # 4-byte Spill
	je	.LBB7_1004
# BB#1000:                              # %if.then.2653
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1002
# BB#1001:                              # %cond.true.2656
	movabsq	$Msg, %rax
	movq	%rax, -13512(%rbp)      # 8-byte Spill
	jmp	.LBB7_1003
.LBB7_1002:                             # %cond.false.2657
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13512(%rbp)      # 8-byte Spill
.LBB7_1003:                             # %cond.end.2661
	movq	-13512(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, search_ic
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -13520(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13520(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1004:                             # %if.end.2665
	jmp	.LBB7_2801
.LBB7_1005:                             # %sw.bb.2666
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB7_1007
# BB#1006:                              # %if.then.2669
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	SetEscape
	jmp	.LBB7_1014
.LBB7_1007:                             # %if.else.2670
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB7_1009
# BB#1008:                              # %if.then.2673
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	1(%rax), %edx
	callq	SetEscape
	jmp	.LBB7_1013
.LBB7_1009:                             # %if.else.2680
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1011
# BB#1010:                              # %cond.true.2683
	movabsq	$Msg, %rax
	movq	%rax, -13528(%rbp)      # 8-byte Spill
	jmp	.LBB7_1012
.LBB7_1011:                             # %cond.false.2684
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13528(%rbp)      # 8-byte Spill
.LBB7_1012:                             # %cond.end.2688
	movq	-13528(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.107, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13536(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13536(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1013:                             # %if.end.2690
	jmp	.LBB7_1014
.LBB7_1014:                             # %if.end.2691
	cmpq	$0, display
	je	.LBB7_1017
# BB#1015:                              # %land.lhs.true.2693
	movq	-88(%rbp), %rax
	cmpq	users, %rax
	je	.LBB7_1017
# BB#1016:                              # %if.then.2696
	jmp	.LBB7_2801
.LBB7_1017:                             # %if.end.2697
	jmp	.LBB7_1018
.LBB7_1018:                             # %sw.bb.2698
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB7_1020
# BB#1019:                              # %if.then.2701
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movl	%eax, %edx
	callq	SetEscape
	jmp	.LBB7_1027
.LBB7_1020:                             # %if.else.2702
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB7_1022
# BB#1021:                              # %if.then.2705
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	1(%rcx), %edx
	callq	SetEscape
	jmp	.LBB7_1026
.LBB7_1022:                             # %if.else.2712
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1024
# BB#1023:                              # %cond.true.2715
	movabsq	$Msg, %rax
	movq	%rax, -13544(%rbp)      # 8-byte Spill
	jmp	.LBB7_1025
.LBB7_1024:                             # %cond.false.2716
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13544(%rbp)      # 8-byte Spill
.LBB7_1025:                             # %cond.end.2720
	movq	-13544(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.108, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13552(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13552(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1026:                             # %if.end.2722
	jmp	.LBB7_1027
.LBB7_1027:                             # %if.end.2723
	callq	CheckEscape
	jmp	.LBB7_2801
.LBB7_1028:                             # %sw.bb.2724
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1030
# BB#1029:                              # %cond.true.2726
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -13560(%rbp)      # 8-byte Spill
	jmp	.LBB7_1031
.LBB7_1030:                             # %cond.false.2727
	movq	home, %rax
	movq	%rax, -13560(%rbp)      # 8-byte Spill
.LBB7_1031:                             # %cond.end.2728
	movq	-13560(%rbp), %rax      # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	chdir
	cmpl	$-1, %eax
	jne	.LBB7_1036
# BB#1032:                              # %if.then.2733
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1034
# BB#1033:                              # %cond.true.2736
	movabsq	$Msg, %rax
	movq	%rax, -13568(%rbp)      # 8-byte Spill
	jmp	.LBB7_1035
.LBB7_1034:                             # %cond.false.2737
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13568(%rbp)      # 8-byte Spill
.LBB7_1035:                             # %cond.end.2741
	movq	-13568(%rbp), %rax      # 8-byte Reload
	movq	%rax, -13576(%rbp)      # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.61, %rsi
	movl	(%rax), %edi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	movq	-13576(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1036:                             # %if.end.2744
	jmp	.LBB7_2801
.LBB7_1037:                             # %sw.bb.2745
	movabsq	$ShellProg, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	cmpl	$0, %eax
	jne	.LBB7_1039
# BB#1038:                              # %if.then.2749
	movq	ShellProg, %rax
	movq	%rax, ShellArgs
.LBB7_1039:                             # %if.end.2750
	jmp	.LBB7_2801
.LBB7_1040:                             # %sw.bb.2751
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1042
# BB#1041:                              # %if.then.2753
	movabsq	$hardcopydir, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	movl	%eax, -13580(%rbp)      # 4-byte Spill
.LBB7_1042:                             # %if.end.2755
	cmpl	$0, -56(%rbp)
	je	.LBB7_1051
# BB#1043:                              # %if.then.2757
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1045
# BB#1044:                              # %cond.true.2760
	movabsq	$Msg, %rax
	movq	%rax, -13592(%rbp)      # 8-byte Spill
	jmp	.LBB7_1046
.LBB7_1045:                             # %cond.false.2761
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13592(%rbp)      # 8-byte Spill
.LBB7_1046:                             # %cond.end.2765
	movq	-13592(%rbp), %rax      # 8-byte Reload
	cmpq	$0, hardcopydir
	movq	%rax, -13600(%rbp)      # 8-byte Spill
	je	.LBB7_1049
# BB#1047:                              # %land.lhs.true.2768
	movq	hardcopydir, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_1049
# BB#1048:                              # %cond.true.2771
	movq	hardcopydir, %rax
	movq	%rax, -13608(%rbp)      # 8-byte Spill
	jmp	.LBB7_1050
.LBB7_1049:                             # %cond.false.2772
	movabsq	$.L.str.110, %rax
	movq	%rax, -13608(%rbp)      # 8-byte Spill
	jmp	.LBB7_1050
.LBB7_1050:                             # %cond.end.2773
	movq	-13608(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.109, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	movq	-13600(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1051:                             # %if.end.2775
	jmp	.LBB7_2801
.LBB7_1052:                             # %sw.bb.2776
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1074
# BB#1053:                              # %if.then.2778
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1061
# BB#1054:                              # %land.lhs.true.2782
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.111, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1061
# BB#1055:                              # %if.then.2785
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, log_flush
	cmpl	$0, -56(%rbp)
	je	.LBB7_1060
# BB#1056:                              # %if.then.2789
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1058
# BB#1057:                              # %cond.true.2792
	movabsq	$Msg, %rax
	movq	%rax, -13616(%rbp)      # 8-byte Spill
	jmp	.LBB7_1059
.LBB7_1058:                             # %cond.false.2793
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13616(%rbp)      # 8-byte Spill
.LBB7_1059:                             # %cond.end.2797
	movq	-13616(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.112, %rsi
	movl	log_flush, %edx
	movq	%rax, -13624(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13624(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1060:                             # %if.end.2799
	jmp	.LBB7_2801
.LBB7_1061:                             # %if.end.2800
	movabsq	$screenlogfile, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	cmpl	$0, %eax
	je	.LBB7_1063
# BB#1062:                              # %if.then.2803
	jmp	.LBB7_2801
.LBB7_1063:                             # %if.end.2804
	cmpq	$0, fore
	je	.LBB7_1071
# BB#1064:                              # %land.lhs.true.2806
	movq	fore, %rax
	cmpq	$0, 10824(%rax)
	je	.LBB7_1071
# BB#1065:                              # %if.then.2809
	movl	$1024, %edx             # imm = 0x400
	leaq	-1328(%rbp), %rsi
	movq	fore, %rdi
	callq	DoStartLog
	cmpl	$0, %eax
	je	.LBB7_1070
# BB#1066:                              # %if.then.2813
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1068
# BB#1067:                              # %cond.true.2816
	movabsq	$Msg, %rax
	movq	%rax, -13632(%rbp)      # 8-byte Spill
	jmp	.LBB7_1069
.LBB7_1068:                             # %cond.false.2817
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13632(%rbp)      # 8-byte Spill
.LBB7_1069:                             # %cond.end.2821
	movq	-13632(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.113, %rsi
	leaq	-1328(%rbp), %rdx
	movq	%rax, -13640(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13640(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1070:                             # %if.end.2824
	jmp	.LBB7_1071
.LBB7_1071:                             # %if.end.2825
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1073
# BB#1072:                              # %if.then.2827
	jmp	.LBB7_2801
.LBB7_1073:                             # %if.end.2828
	jmp	.LBB7_1074
.LBB7_1074:                             # %if.end.2829
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1076
# BB#1075:                              # %cond.true.2832
	movabsq	$Msg, %rax
	movq	%rax, -13648(%rbp)      # 8-byte Spill
	jmp	.LBB7_1077
.LBB7_1076:                             # %cond.false.2833
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13648(%rbp)      # 8-byte Spill
.LBB7_1077:                             # %cond.end.2837
	movq	-13648(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.114, %rsi
	movq	screenlogfile, %rdx
	movq	%rax, -13656(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13656(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1078:                             # %sw.bb.2839
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1081
# BB#1079:                              # %lor.lhs.false.2841
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1081
# BB#1080:                              # %lor.lhs.false.2844
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1088
.LBB7_1081:                             # %if.then.2847
	movabsq	$logtstamp_on, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1087
# BB#1082:                              # %land.lhs.true.2851
	cmpl	$0, -56(%rbp)
	je	.LBB7_1087
# BB#1083:                              # %if.then.2853
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1085
# BB#1084:                              # %cond.true.2856
	movabsq	$Msg, %rax
	movq	%rax, -13664(%rbp)      # 8-byte Spill
	jmp	.LBB7_1086
.LBB7_1085:                             # %cond.false.2857
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13664(%rbp)      # 8-byte Spill
.LBB7_1086:                             # %cond.end.2861
	movq	-13664(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	cmpl	$0, logtstamp_on
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -13672(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13672(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1087:                             # %if.end.2865
	jmp	.LBB7_1114
.LBB7_1088:                             # %if.else.2866
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.90, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1099
# BB#1089:                              # %if.then.2869
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1093
# BB#1090:                              # %if.then.2872
	cmpq	$0, logtstamp_string
	je	.LBB7_1092
# BB#1091:                              # %if.then.2874
	movq	logtstamp_string, %rdi
	callq	free
.LBB7_1092:                             # %if.end.2875
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, logtstamp_string
.LBB7_1093:                             # %if.end.2878
	cmpl	$0, -56(%rbp)
	je	.LBB7_1098
# BB#1094:                              # %if.then.2880
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1096
# BB#1095:                              # %cond.true.2883
	movabsq	$Msg, %rax
	movq	%rax, -13680(%rbp)      # 8-byte Spill
	jmp	.LBB7_1097
.LBB7_1096:                             # %cond.false.2884
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13680(%rbp)      # 8-byte Spill
.LBB7_1097:                             # %cond.end.2888
	movq	-13680(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.116, %rsi
	movq	logtstamp_string, %rdx
	movq	%rax, -13688(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13688(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1098:                             # %if.end.2890
	jmp	.LBB7_1113
.LBB7_1099:                             # %if.else.2891
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.117, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1108
# BB#1100:                              # %if.then.2894
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1104
# BB#1101:                              # %if.then.2897
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, logtstamp_after
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1103
# BB#1102:                              # %if.then.2901
	jmp	.LBB7_2801
.LBB7_1103:                             # %if.end.2902
	jmp	.LBB7_1104
.LBB7_1104:                             # %if.end.2903
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1106
# BB#1105:                              # %cond.true.2906
	movabsq	$Msg, %rax
	movq	%rax, -13696(%rbp)      # 8-byte Spill
	jmp	.LBB7_1107
.LBB7_1106:                             # %cond.false.2907
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13696(%rbp)      # 8-byte Spill
.LBB7_1107:                             # %cond.end.2911
	movq	-13696(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.118, %rsi
	movl	logtstamp_after, %edx
	movq	%rax, -13704(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13704(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1112
.LBB7_1108:                             # %if.else.2913
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1110
# BB#1109:                              # %cond.true.2916
	movabsq	$Msg, %rax
	movq	%rax, -13712(%rbp)      # 8-byte Spill
	jmp	.LBB7_1111
.LBB7_1110:                             # %cond.false.2917
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13712(%rbp)      # 8-byte Spill
.LBB7_1111:                             # %cond.end.2921
	movq	-13712(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.119, %rsi
	movq	%rax, -13720(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13720(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1112:                             # %if.end.2923
	jmp	.LBB7_1113
.LBB7_1113:                             # %if.end.2924
	jmp	.LBB7_1114
.LBB7_1114:                             # %if.end.2925
	jmp	.LBB7_2801
.LBB7_1115:                             # %sw.bb.2926
	movabsq	$nwin_default, %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseSaveStr
	movl	%eax, -13724(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1116:                             # %sw.bb.2928
	cmpq	$0, rc_name
	je	.LBB7_1118
# BB#1117:                              # %lor.lhs.false.2930
	movq	rc_name, %rax
	cmpb	$0, (%rax)
	jne	.LBB7_1122
.LBB7_1118:                             # %if.then.2932
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1120
# BB#1119:                              # %cond.true.2935
	movabsq	$Msg, %rax
	movq	%rax, -13736(%rbp)      # 8-byte Spill
	jmp	.LBB7_1121
.LBB7_1120:                             # %cond.false.2936
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13736(%rbp)      # 8-byte Spill
.LBB7_1121:                             # %cond.end.2940
	movq	-13736(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.120, %rsi
	movq	%rax, -13744(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13744(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1122:                             # %if.end.2942
	jmp	.LBB7_2801
.LBB7_1123:                             # %sw.bb.2943
	jmp	.LBB7_2801
.LBB7_1124:                             # %sw.bb.2944
	leaq	-64(%rbp), %rsi
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	cmpl	$0, %eax
	je	.LBB7_1126
# BB#1125:                              # %if.then.2947
	jmp	.LBB7_2801
.LBB7_1126:                             # %if.end.2948
	movq	-64(%rbp), %rdi
	callq	strlen
	cmpq	$32, %rax
	jbe	.LBB7_1131
# BB#1127:                              # %if.then.2952
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1129
# BB#1128:                              # %cond.true.2955
	movabsq	$Msg, %rax
	movq	%rax, -13752(%rbp)      # 8-byte Spill
	jmp	.LBB7_1130
.LBB7_1129:                             # %cond.false.2956
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13752(%rbp)      # 8-byte Spill
.LBB7_1130:                             # %cond.end.2960
	movq	-13752(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.121, %rsi
	movl	$32, %ecx
	movq	rc_name, %rdx
	movq	%rax, -13760(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13760(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movq	-64(%rbp), %rdi
	callq	free
	jmp	.LBB7_2801
.LBB7_1131:                             # %if.end.2962
	movabsq	$screenterm, %rdi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rsi
	callq	strncpy
	movb	$0, screenterm+32
	movq	-64(%rbp), %rdi
	movq	%rax, -13768(%rbp)      # 8-byte Spill
	callq	free
# BB#1132:                              # %do.body.2964
	jmp	.LBB7_1133
.LBB7_1133:                             # %do.end.2965
	cmpq	$0, display
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	MakeTermcap
	movq	%rax, -13776(%rbp)      # 8-byte Spill
# BB#1134:                              # %do.body.2969
	jmp	.LBB7_1135
.LBB7_1135:                             # %do.end.2970
	jmp	.LBB7_2801
.LBB7_1136:                             # %sw.bb.2971
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1140
# BB#1137:                              # %land.lhs.true.2973
	cmpq	$0, rc_name
	je	.LBB7_1139
# BB#1138:                              # %lor.lhs.false.2975
	movq	rc_name, %rdi
	movl	$.L.str.122, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1140
.LBB7_1139:                             # %if.then.2978
	jmp	.LBB7_2801
.LBB7_1140:                             # %if.end.2979
	cmpl	$1, -44(%rbp)
	jle	.LBB7_1143
# BB#1141:                              # %land.lhs.true.2982
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.123, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1143
# BB#1142:                              # %if.then.2985
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
.LBB7_1143:                             # %if.end.2988
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpl	$1, -44(%rbp)
	jle	.LBB7_1148
# BB#1144:                              # %land.lhs.true.2991
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.124, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1148
# BB#1145:                              # %if.then.2994
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB7_1147
# BB#1146:                              # %if.then.2998
	movl	$37, %edx
	movq	-64(%rbp), %rdi
	movq	fore, %rsi
	callq	MakeWinMsg
	movq	%rax, -64(%rbp)
.LBB7_1147:                             # %if.end.3000
	jmp	.LBB7_1148
.LBB7_1148:                             # %if.end.3001
	cmpq	$0, -64(%rbp)
	je	.LBB7_1153
# BB#1149:                              # %if.then.3003
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1151
# BB#1150:                              # %cond.true.3006
	movabsq	$Msg, %rax
	movq	%rax, -13784(%rbp)      # 8-byte Spill
	jmp	.LBB7_1152
.LBB7_1151:                             # %cond.false.3007
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13784(%rbp)      # 8-byte Spill
.LBB7_1152:                             # %cond.end.3011
	movq	-13784(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, -13792(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13792(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1157
.LBB7_1153:                             # %if.else.3013
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1155
# BB#1154:                              # %cond.true.3016
	movabsq	$Msg, %rax
	movq	%rax, -13800(%rbp)      # 8-byte Spill
	jmp	.LBB7_1156
.LBB7_1155:                             # %cond.false.3017
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13800(%rbp)      # 8-byte Spill
.LBB7_1156:                             # %cond.end.3021
	movq	-13800(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.125, %rsi
	movq	rc_name, %rdx
	movq	%rax, -13808(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13808(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	movl	$-1, queryflag
.LBB7_1157:                             # %if.end.3023
	jmp	.LBB7_2801
.LBB7_1158:                             # %sw.bb.3024
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1163
# BB#1159:                              # %if.then.3027
	movl	$256, %esi              # imm = 0x100
	leaq	-1584(%rbp), %rdi
	movq	BellString, %rdx
	callq	AddXChars
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -13812(%rbp)      # 4-byte Spill
	jne	.LBB7_1161
# BB#1160:                              # %cond.true.3033
	movabsq	$Msg, %rax
	movq	%rax, -13824(%rbp)      # 8-byte Spill
	jmp	.LBB7_1162
.LBB7_1161:                             # %cond.false.3034
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13824(%rbp)      # 8-byte Spill
.LBB7_1162:                             # %cond.end.3038
	movq	-13824(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.126, %rsi
	leaq	-1584(%rbp), %rdx
	movq	%rax, -13832(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13832(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1163:                             # %if.end.3041
	movabsq	$BellString, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	movl	%eax, -13836(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1164:                             # %sw.bb.3043
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1166
# BB#1165:                              # %if.then.3046
	movabsq	$.L.str.127, %rdi
	callq	SaveStr
	movq	%rax, BufferFile
	jmp	.LBB7_1169
.LBB7_1166:                             # %if.else.3048
	movabsq	$BufferFile, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	cmpl	$0, %eax
	je	.LBB7_1168
# BB#1167:                              # %if.then.3051
	jmp	.LBB7_2801
.LBB7_1168:                             # %if.end.3052
	jmp	.LBB7_1169
.LBB7_1169:                             # %if.end.3053
	cmpl	$0, -56(%rbp)
	je	.LBB7_1174
# BB#1170:                              # %if.then.3055
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1172
# BB#1171:                              # %cond.true.3058
	movabsq	$Msg, %rax
	movq	%rax, -13848(%rbp)      # 8-byte Spill
	jmp	.LBB7_1173
.LBB7_1172:                             # %cond.false.3059
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13848(%rbp)      # 8-byte Spill
.LBB7_1173:                             # %cond.end.3063
	movq	-13848(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.128, %rsi
	movq	BufferFile, %rdx
	movq	%rax, -13856(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13856(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1174:                             # %if.end.3065
	jmp	.LBB7_2801
.LBB7_1175:                             # %sw.bb.3066
	movabsq	$ActivityString, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	movl	%eax, -13860(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1176:                             # %sw.bb.3068
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1181
# BB#1177:                              # %if.then.3071
	movl	$256, %esi              # imm = 0x100
	leaq	-1840(%rbp), %rdi
	movq	PowDetachString, %rdx
	callq	AddXChars
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -13864(%rbp)      # 4-byte Spill
	jne	.LBB7_1179
# BB#1178:                              # %cond.true.3077
	movabsq	$Msg, %rax
	movq	%rax, -13872(%rbp)      # 8-byte Spill
	jmp	.LBB7_1180
.LBB7_1179:                             # %cond.false.3078
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13872(%rbp)      # 8-byte Spill
.LBB7_1180:                             # %cond.end.3082
	movq	-13872(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.129, %rsi
	leaq	-1840(%rbp), %rdx
	movq	%rax, -13880(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13880(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1181:                             # %if.end.3085
	movabsq	$PowDetachString, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	movl	%eax, -13884(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1182:                             # %sw.bb.3087
	movq	$-1, %rax
	movq	fore, %rcx
	cmpq	%rax, 11536(%rcx)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1188
# BB#1183:                              # %land.lhs.true.3091
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.130, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1188
# BB#1184:                              # %if.then.3094
	movq	fore, %rax
	movl	$3, 11528(%rax)
	cmpq	$0, displays
	jne	.LBB7_1187
# BB#1185:                              # %land.lhs.true.3096
	cmpl	$0, -52(%rbp)
	je	.LBB7_1187
# BB#1186:                              # %if.then.3098
	movl	-52(%rbp), %edi
	callq	SlotToggle
.LBB7_1187:                             # %if.end.3099
	jmp	.LBB7_2801
.LBB7_1188:                             # %if.end.3100
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1194
# BB#1189:                              # %land.lhs.true.3102
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.131, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1194
# BB#1190:                              # %if.then.3105
	movq	fore, %rax
	movl	$1, 11528(%rax)
	cmpq	$0, displays
	jne	.LBB7_1193
# BB#1191:                              # %land.lhs.true.3108
	cmpl	$0, -52(%rbp)
	je	.LBB7_1193
# BB#1192:                              # %if.then.3110
	xorl	%edi, %edi
	callq	SlotToggle
.LBB7_1193:                             # %if.end.3111
	jmp	.LBB7_2801
.LBB7_1194:                             # %if.end.3112
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1196
# BB#1195:                              # %if.then.3116
	movl	-52(%rbp), %edi
	callq	SlotToggle
.LBB7_1196:                             # %if.end.3117
	jmp	.LBB7_2801
.LBB7_1197:                             # %sw.bb.3118
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.130, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1199
# BB#1198:                              # %if.then.3121
	movl	nwin_default+48, %eax
	orl	$2, %eax
	movl	%eax, nwin_default+48
	jmp	.LBB7_1203
.LBB7_1199:                             # %if.else.3123
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.131, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1201
# BB#1200:                              # %if.then.3126
	movl	nwin_default+48, %eax
	andl	$-3, %eax
	movl	%eax, nwin_default+48
	jmp	.LBB7_1202
.LBB7_1201:                             # %if.else.3128
	movabsq	$nwin_default, %rax
	addq	$48, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13888(%rbp)      # 4-byte Spill
.LBB7_1202:                             # %if.end.3130
	jmp	.LBB7_1203
.LBB7_1203:                             # %if.end.3131
	jmp	.LBB7_2801
.LBB7_1204:                             # %sw.bb.3132
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1214
# BB#1205:                              # %land.lhs.true.3135
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1214
# BB#1206:                              # %land.lhs.true.3138
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$105, %ecx
	jne	.LBB7_1214
# BB#1207:                              # %if.then.3144
	movl	$1, iflag
	movq	displays, %rax
	movq	%rax, display
.LBB7_1208:                             # %for.cond.3145
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_1213
# BB#1209:                              # %for.body.3147
                                        #   in Loop: Header=BB7_1208 Depth=1
	movq	display, %rax
	cmpl	$0, 5264(%rax)
	jne	.LBB7_1211
# BB#1210:                              # %if.then.3149
                                        #   in Loop: Header=BB7_1208 Depth=1
	jmp	.LBB7_1212
.LBB7_1211:                             # %if.end.3150
                                        #   in Loop: Header=BB7_1208 Depth=1
	movq	display, %rax
	movb	5161(%rax), %cl
	movq	display, %rax
	movb	%cl, 5221(%rax)
	movq	display, %rax
	movl	5216(%rax), %edx
	orl	$1, %edx
	movl	%edx, 5216(%rax)
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5204, %rax             # imm = 0x1454
	movq	%rax, %rsi
	callq	SetTTY
.LBB7_1212:                             # %for.inc.3159
                                        #   in Loop: Header=BB7_1208 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_1208
.LBB7_1213:                             # %for.end.3161
	jmp	.LBB7_1214
.LBB7_1214:                             # %if.end.3162
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1217
# BB#1215:                              # %land.lhs.true.3165
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB7_1217
# BB#1216:                              # %if.then.3171
	movl	$4, nwin_default+44
	jmp	.LBB7_1218
.LBB7_1217:                             # %if.else.3172
	movabsq	$nwin_default, %rax
	addq	$44, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13892(%rbp)      # 4-byte Spill
.LBB7_1218:                             # %if.end.3174
	jmp	.LBB7_2801
.LBB7_1219:                             # %sw.bb.3175
	movabsq	$nwin_default, %rax
	addq	$68, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13896(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1220:                             # %sw.bb.3177
	movabsq	$nwin_default, %rax
	addq	$84, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13900(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1221:                             # %sw.bb.3179
	movabsq	$nwin_default, %rax
	addq	$88, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13904(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1222:                             # %sw.bb.3181
	movabsq	$nwin_default, %rax
	addq	$80, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseOnOff
	movl	%eax, -13908(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1223:                             # %sw.bb.3183
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1225
# BB#1224:                              # %if.then.3187
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -52(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, nwin_default+56
.LBB7_1225:                             # %if.end.3191
	jmp	.LBB7_2801
.LBB7_1226:                             # %sw.bb.3192
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1228
# BB#1227:                              # %if.then.3196
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%ecx, %ecx
	cmpl	$0, -52(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, defmousetrack
.LBB7_1228:                             # %if.end.3200
	jmp	.LBB7_2801
.LBB7_1229:                             # %sw.bb.3201
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1234
# BB#1230:                              # %if.then.3204
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1232
# BB#1231:                              # %cond.true.3207
	movabsq	$Msg, %rax
	movq	%rax, -13920(%rbp)      # 8-byte Spill
	jmp	.LBB7_1233
.LBB7_1232:                             # %cond.false.3208
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13920(%rbp)      # 8-byte Spill
.LBB7_1233:                             # %cond.end.3212
	movq	-13920(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.132, %rsi
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	movq	display, %r8
	cmpl	$0, 544(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -13928(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13928(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1239
.LBB7_1234:                             # %if.else.3216
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1238
# BB#1235:                              # %if.then.3220
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%ecx, %ecx
	cmpl	$0, -52(%rbp)
	cmovel	%ecx, %eax
	movq	display, %rdx
	movl	%eax, 544(%rdx)
	movq	display, %rdx
	cmpq	$0, 376(%rdx)
	je	.LBB7_1237
# BB#1236:                              # %if.then.3227
	movq	display, %rax
	movq	376(%rax), %rax
	movl	10852(%rax), %edi
	callq	MouseMode
.LBB7_1237:                             # %if.end.3229
	jmp	.LBB7_1238
.LBB7_1238:                             # %if.end.3230
	jmp	.LBB7_1239
.LBB7_1239:                             # %if.end.3231
	jmp	.LBB7_2801
.LBB7_1240:                             # %sw.bb.3232
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1242
# BB#1241:                              # %if.then.3236
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -52(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, nwin_default+64
.LBB7_1242:                             # %if.end.3240
	jmp	.LBB7_2801
.LBB7_1243:                             # %sw.bb.3241
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1248
# BB#1244:                              # %if.then.3243
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1246
# BB#1245:                              # %cond.true.3246
	movabsq	$Msg, %rax
	movq	%rax, -13936(%rbp)      # 8-byte Spill
	jmp	.LBB7_1247
.LBB7_1246:                             # %cond.false.3247
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13936(%rbp)      # 8-byte Spill
.LBB7_1247:                             # %cond.end.3251
	movq	-13936(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.135, %rcx
	movabsq	$.L.str.134, %rdx
	cmpl	$0, VerboseCreate
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -13944(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13944(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1251
.LBB7_1248:                             # %if.else.3255
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1250
# BB#1249:                              # %if.then.3259
	movl	-52(%rbp), %eax
	movl	%eax, VerboseCreate
.LBB7_1250:                             # %if.end.3260
	jmp	.LBB7_1251
.LBB7_1251:                             # %if.end.3261
	jmp	.LBB7_2801
.LBB7_1252:                             # %sw.bb.3262
	cmpq	$0, display
	je	.LBB7_1257
# BB#1253:                              # %if.then.3264
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1255
# BB#1254:                              # %cond.true.3267
	movabsq	$Msg, %rax
	movq	%rax, -13952(%rbp)      # 8-byte Spill
	jmp	.LBB7_1256
.LBB7_1255:                             # %cond.false.3268
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13952(%rbp)      # 8-byte Spill
.LBB7_1256:                             # %cond.end.3272
	movq	-13952(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.41, %rdx
	movq	%rax, -13960(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13960(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	callq	RemoveStatus
.LBB7_1257:                             # %if.end.3274
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1313
# BB#1258:                              # %land.lhs.true.3277
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1313
# BB#1259:                              # %land.lhs.true.3281
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1313
# BB#1260:                              # %if.then.3285
	movabsq	$.L.str.130, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	display, %rcx
	movq	%rcx, -1848(%rbp)
	movl	$-1, -1856(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_1262
# BB#1261:                              # %if.then.3290
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -64(%rbp)
.LBB7_1262:                             # %if.end.3292
	movq	-64(%rbp), %rdi
	movl	$.L.str.136, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1264
# BB#1263:                              # %if.then.3295
	movl	$4, -1856(%rbp)
	jmp	.LBB7_1285
.LBB7_1264:                             # %if.else.3296
	movq	-64(%rbp), %rdi
	movl	$.L.str.137, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1266
# BB#1265:                              # %if.then.3299
	movl	$1, -1856(%rbp)
	jmp	.LBB7_1284
.LBB7_1266:                             # %if.else.3300
	movq	-64(%rbp), %rdi
	movl	$.L.str.138, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1268
# BB#1267:                              # %if.then.3303
	movl	$0, -1856(%rbp)
	jmp	.LBB7_1283
.LBB7_1268:                             # %if.else.3304
	movq	-64(%rbp), %rdi
	movl	$.L.str.139, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1270
# BB#1269:                              # %if.then.3307
	movl	$2, -1856(%rbp)
	jmp	.LBB7_1282
.LBB7_1270:                             # %if.else.3308
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.90, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1277
# BB#1271:                              # %if.then.3312
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1276
# BB#1272:                              # %if.then.3315
	movl	$256, %esi              # imm = 0x100
	leaq	-2112(%rbp), %rdi
	movq	hstatusstring, %rdx
	callq	AddXChars
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -13964(%rbp)      # 4-byte Spill
	jne	.LBB7_1274
# BB#1273:                              # %cond.true.3321
	movabsq	$Msg, %rax
	movq	%rax, -13976(%rbp)      # 8-byte Spill
	jmp	.LBB7_1275
.LBB7_1274:                             # %cond.false.3322
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13976(%rbp)      # 8-byte Spill
.LBB7_1275:                             # %cond.end.3326
	movq	-13976(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.140, %rsi
	leaq	-2112(%rbp), %rdx
	movq	%rax, -13984(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-13984(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1276:                             # %if.end.3329
	jmp	.LBB7_1281
.LBB7_1277:                             # %if.else.3330
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1279
# BB#1278:                              # %cond.true.3333
	movabsq	$Msg, %rax
	movq	%rax, -13992(%rbp)      # 8-byte Spill
	jmp	.LBB7_1280
.LBB7_1279:                             # %cond.false.3334
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -13992(%rbp)      # 8-byte Spill
.LBB7_1280:                             # %cond.end.3338
	movq	-13992(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.141, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14000(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14000(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1281:                             # %if.end.3340
	jmp	.LBB7_1282
.LBB7_1282:                             # %if.end.3341
	jmp	.LBB7_1283
.LBB7_1283:                             # %if.end.3342
	jmp	.LBB7_1284
.LBB7_1284:                             # %if.end.3343
	jmp	.LBB7_1285
.LBB7_1285:                             # %if.end.3344
	cmpl	$-1, -1856(%rbp)
	je	.LBB7_1304
# BB#1286:                              # %if.then.3347
	movl	$8, %eax
	xorl	%ecx, %ecx
	movl	-1856(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	cmpq	(%rdi), %rsi
	cmovel	%ecx, %eax
	orl	%eax, %edx
	movl	%edx, hardstatusemu
	movq	displays, %rsi
	movq	%rsi, display
.LBB7_1287:                             # %for.cond.3353
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_1303
# BB#1288:                              # %for.body.3355
                                        #   in Loop: Header=BB7_1287 Depth=1
	callq	RemoveStatus
	movl	hardstatusemu, %eax
	andl	$-9, %eax
	movl	%eax, -1856(%rbp)
	movq	display, %rcx
	cmpl	$0, 6040(%rcx)
	je	.LBB7_1291
# BB#1289:                              # %land.lhs.true.3360
                                        #   in Loop: Header=BB7_1287 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB7_1291
# BB#1290:                              # %if.then.3364
                                        #   in Loop: Header=BB7_1287 Depth=1
	movl	$3, -1856(%rbp)
.LBB7_1291:                             # %if.end.3365
                                        #   in Loop: Header=BB7_1287 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	ShowHStatus
	movq	display, %rdi
	movl	528(%rdi), %eax
	movl	%eax, -1852(%rbp)
	movl	-1856(%rbp), %eax
	movq	display, %rdi
	movl	%eax, 528(%rdi)
	cmpl	$1, -1856(%rbp)
	jne	.LBB7_1293
# BB#1292:                              # %land.lhs.true.3369
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$1, -1852(%rbp)
	jne	.LBB7_1295
.LBB7_1293:                             # %lor.lhs.false.3372
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$1, -1856(%rbp)
	je	.LBB7_1296
# BB#1294:                              # %land.lhs.true.3375
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$1, -1852(%rbp)
	jne	.LBB7_1296
.LBB7_1295:                             # %if.then.3378
                                        #   in Loop: Header=BB7_1287 Depth=1
	movl	$1, %edx
	movq	display, %rax
	movl	444(%rax), %edi
	movq	display, %rax
	movl	448(%rax), %esi
	callq	ChangeScreenSize
.LBB7_1296:                             # %if.end.3381
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$4, -1856(%rbp)
	jne	.LBB7_1298
# BB#1297:                              # %land.lhs.true.3384
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$4, -1852(%rbp)
	jne	.LBB7_1300
.LBB7_1298:                             # %lor.lhs.false.3387
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$4, -1856(%rbp)
	je	.LBB7_1301
# BB#1299:                              # %land.lhs.true.3390
                                        #   in Loop: Header=BB7_1287 Depth=1
	cmpl	$4, -1852(%rbp)
	jne	.LBB7_1301
.LBB7_1300:                             # %if.then.3393
                                        #   in Loop: Header=BB7_1287 Depth=1
	movl	$1, %edx
	movq	display, %rax
	movl	444(%rax), %edi
	movq	display, %rax
	movl	448(%rax), %esi
	callq	ChangeScreenSize
.LBB7_1301:                             # %if.end.3396
                                        #   in Loop: Header=BB7_1287 Depth=1
	callq	RefreshHStatus
# BB#1302:                              # %for.inc.3397
                                        #   in Loop: Header=BB7_1287 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_1287
.LBB7_1303:                             # %for.end.3399
	jmp	.LBB7_1304
.LBB7_1304:                             # %if.end.3400
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1312
# BB#1305:                              # %if.then.3403
	cmpq	$0, hstatusstring
	je	.LBB7_1307
# BB#1306:                              # %if.then.3405
	movq	hstatusstring, %rdi
	callq	free
.LBB7_1307:                             # %if.end.3406
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, hstatusstring
	movq	displays, %rax
	movq	%rax, display
.LBB7_1308:                             # %for.cond.3409
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_1311
# BB#1309:                              # %for.body.3411
                                        #   in Loop: Header=BB7_1308 Depth=1
	callq	RefreshHStatus
# BB#1310:                              # %for.inc.3412
                                        #   in Loop: Header=BB7_1308 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_1308
.LBB7_1311:                             # %for.end.3414
	jmp	.LBB7_1312
.LBB7_1312:                             # %if.end.3415
	movq	-1848(%rbp), %rax
	movq	%rax, display
	jmp	.LBB7_2801
.LBB7_1313:                             # %if.end.3416
	movabsq	$use_hardstatus, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, -56(%rbp)
	movl	%eax, -14004(%rbp)      # 4-byte Spill
	je	.LBB7_1318
# BB#1314:                              # %if.then.3419
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1316
# BB#1315:                              # %cond.true.3422
	movabsq	$Msg, %rax
	movq	%rax, -14016(%rbp)      # 8-byte Spill
	jmp	.LBB7_1317
.LBB7_1316:                             # %cond.false.3423
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14016(%rbp)      # 8-byte Spill
.LBB7_1317:                             # %cond.end.3427
	movq	-14016(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.142, %rsi
	movabsq	$.L.str.144, %rcx
	movabsq	$.L.str.143, %rdx
	cmpl	$0, use_hardstatus
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -14024(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14024(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1318:                             # %if.end.3431
	jmp	.LBB7_2801
.LBB7_1319:                             # %sw.bb.3432
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.130, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1321
# BB#1320:                              # %lor.lhs.false.3437
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.145, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1326
.LBB7_1321:                             # %if.then.3442
	movq	display, %rax
	movq	%rax, -2120(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, captionalways
	movq	displays, %rax
	movq	%rax, display
.LBB7_1322:                             # %for.cond.3449
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_1325
# BB#1323:                              # %for.body.3451
                                        #   in Loop: Header=BB7_1322 Depth=1
	movl	$1, %edx
	movq	display, %rax
	movl	444(%rax), %edi
	movq	display, %rax
	movl	448(%rax), %esi
	callq	ChangeScreenSize
# BB#1324:                              # %for.inc.3454
                                        #   in Loop: Header=BB7_1322 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_1322
.LBB7_1325:                             # %for.end.3456
	movq	-2120(%rbp), %rax
	movq	%rax, display
	jmp	.LBB7_1338
.LBB7_1326:                             # %if.else.3457
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.90, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1333
# BB#1327:                              # %if.then.3462
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1332
# BB#1328:                              # %if.then.3465
	movl	$256, %esi              # imm = 0x100
	leaq	-2384(%rbp), %rdi
	movq	captionstring, %rdx
	callq	AddXChars
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -14028(%rbp)      # 4-byte Spill
	jne	.LBB7_1330
# BB#1329:                              # %cond.true.3471
	movabsq	$Msg, %rax
	movq	%rax, -14040(%rbp)      # 8-byte Spill
	jmp	.LBB7_1331
.LBB7_1330:                             # %cond.false.3472
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14040(%rbp)      # 8-byte Spill
.LBB7_1331:                             # %cond.end.3476
	movq	-14040(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.146, %rsi
	leaq	-2384(%rbp), %rdx
	movq	%rax, -14048(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14048(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1332:                             # %if.end.3479
	jmp	.LBB7_1337
.LBB7_1333:                             # %if.else.3480
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1335
# BB#1334:                              # %cond.true.3483
	movabsq	$Msg, %rax
	movq	%rax, -14056(%rbp)      # 8-byte Spill
	jmp	.LBB7_1336
.LBB7_1335:                             # %cond.false.3484
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14056(%rbp)      # 8-byte Spill
.LBB7_1336:                             # %cond.end.3488
	movq	-14056(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.147, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14064(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14064(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1337:                             # %if.end.3490
	jmp	.LBB7_1338
.LBB7_1338:                             # %if.end.3491
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1340
# BB#1339:                              # %if.then.3494
	jmp	.LBB7_2801
.LBB7_1340:                             # %if.end.3495
	cmpq	$0, captionstring
	je	.LBB7_1342
# BB#1341:                              # %if.then.3497
	movq	captionstring, %rdi
	callq	free
.LBB7_1342:                             # %if.end.3498
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	xorl	%edi, %edi
	movq	%rax, captionstring
	callq	RedisplayDisplays
	jmp	.LBB7_2801
.LBB7_1343:                             # %sw.bb.3501
	leaq	-52(%rbp), %rsi
	cmpq	$0, console_window
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	je	.LBB7_1345
# BB#1344:                              # %if.then.3506
	jmp	.LBB7_2801
.LBB7_1345:                             # %if.end.3507
	movq	fore, %rax
	movl	524(%rax), %edi
	movl	-52(%rbp), %esi
	movq	rc_name, %rdx
	callq	TtyGrabConsole
	cmpl	$0, %eax
	je	.LBB7_1347
# BB#1346:                              # %if.then.3510
	jmp	.LBB7_2801
.LBB7_1347:                             # %if.end.3511
	cmpl	$0, -52(%rbp)
	jne	.LBB7_1352
# BB#1348:                              # %if.then.3514
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1350
# BB#1349:                              # %cond.true.3517
	movabsq	$Msg, %rax
	movq	%rax, -14072(%rbp)      # 8-byte Spill
	jmp	.LBB7_1351
.LBB7_1350:                             # %cond.false.3518
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14072(%rbp)      # 8-byte Spill
.LBB7_1351:                             # %cond.end.3522
	movq	-14072(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.148, %rsi
	movabsq	$HostName, %rcx
	movq	rc_name, %rdx
	movq	%rax, -14080(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14080(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_1362
.LBB7_1352:                             # %if.else.3524
	cmpq	$0, console_window
	je	.LBB7_1357
# BB#1353:                              # %if.then.3526
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1355
# BB#1354:                              # %cond.true.3529
	movabsq	$Msg, %rax
	movq	%rax, -14088(%rbp)      # 8-byte Spill
	jmp	.LBB7_1356
.LBB7_1355:                             # %cond.false.3530
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14088(%rbp)      # 8-byte Spill
.LBB7_1356:                             # %cond.end.3534
	movq	-14088(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.149, %rsi
	movabsq	$HostName, %rcx
	movq	rc_name, %rdx
	movq	console_window, %r8
	movl	192(%r8), %r8d
	movq	console_window, %r9
	movq	8736(%r9), %r9
	movq	%rax, -14096(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14096(%rbp), %r10      # 8-byte Reload
	callq	*%r10
	jmp	.LBB7_1361
.LBB7_1357:                             # %if.else.3538
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1359
# BB#1358:                              # %cond.true.3541
	movabsq	$Msg, %rax
	movq	%rax, -14104(%rbp)      # 8-byte Spill
	jmp	.LBB7_1360
.LBB7_1359:                             # %cond.false.3542
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14104(%rbp)      # 8-byte Spill
.LBB7_1360:                             # %cond.end.3546
	movq	-14104(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.150, %rsi
	movabsq	$HostName, %rcx
	movq	rc_name, %rdx
	movq	%rax, -14112(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14112(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_1361:                             # %if.end.3548
	jmp	.LBB7_1362
.LBB7_1362:                             # %if.end.3549
	cmpl	$0, -52(%rbp)
	je	.LBB7_1364
# BB#1363:                              # %cond.true.3551
	movq	fore, %rax
	movq	%rax, -14120(%rbp)      # 8-byte Spill
	jmp	.LBB7_1365
.LBB7_1364:                             # %cond.false.3552
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -14120(%rbp)      # 8-byte Spill
	jmp	.LBB7_1365
.LBB7_1365:                             # %cond.end.3553
	movq	-14120(%rbp), %rax      # 8-byte Reload
	movq	%rax, console_window
	jmp	.LBB7_2801
.LBB7_1366:                             # %sw.bb.3555
	movabsq	$all_norefresh, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	je	.LBB7_1368
# BB#1367:                              # %if.then.3558
	jmp	.LBB7_2801
.LBB7_1368:                             # %if.end.3559
	cmpl	$0, all_norefresh
	jne	.LBB7_1371
# BB#1369:                              # %land.lhs.true.3561
	cmpq	$0, fore
	je	.LBB7_1371
# BB#1370:                              # %if.then.3563
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
.LBB7_1371:                             # %if.end.3564
	cmpl	$0, -56(%rbp)
	je	.LBB7_1376
# BB#1372:                              # %if.then.3566
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1374
# BB#1373:                              # %cond.true.3569
	movabsq	$Msg, %rax
	movq	%rax, -14128(%rbp)      # 8-byte Spill
	jmp	.LBB7_1375
.LBB7_1374:                             # %cond.false.3570
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14128(%rbp)      # 8-byte Spill
.LBB7_1375:                             # %cond.end.3574
	movq	-14128(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.152, %rcx
	movabsq	$.L.str.151, %rdx
	cmpl	$0, all_norefresh
	cmovneq	%rdx, %rcx
	movq	%rcx, %rsi
	movq	%rax, -14136(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14136(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1376:                             # %if.end.3578
	jmp	.LBB7_2801
.LBB7_1377:                             # %sw.bb.3579
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	movl	-52(%rbp), %ecx
	movb	%cl, %dl
	movq	fore, %rsi
	movb	%dl, 10849(%rsi)
	movl	%eax, -14140(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1378:                             # %sw.bb.3583
	movabsq	$visual_bell, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1380
# BB#1379:                              # %lor.lhs.false.3586
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1381
.LBB7_1380:                             # %if.then.3588
	jmp	.LBB7_2801
.LBB7_1381:                             # %if.end.3589
	cmpl	$0, visual_bell
	jne	.LBB7_1386
# BB#1382:                              # %if.then.3592
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1384
# BB#1383:                              # %cond.true.3595
	movabsq	$Msg, %rax
	movq	%rax, -14152(%rbp)      # 8-byte Spill
	jmp	.LBB7_1385
.LBB7_1384:                             # %cond.false.3596
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14152(%rbp)      # 8-byte Spill
.LBB7_1385:                             # %cond.end.3600
	movq	-14152(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.153, %rsi
	movq	%rax, -14160(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14160(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1390
.LBB7_1386:                             # %if.else.3602
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1388
# BB#1387:                              # %cond.true.3605
	movabsq	$Msg, %rax
	movq	%rax, -14168(%rbp)      # 8-byte Spill
	jmp	.LBB7_1389
.LBB7_1388:                             # %cond.false.3606
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14168(%rbp)      # 8-byte Spill
.LBB7_1389:                             # %cond.end.3610
	movq	-14168(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.154, %rsi
	movq	%rax, -14176(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14176(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1390:                             # %if.end.3612
	jmp	.LBB7_2801
.LBB7_1391:                             # %sw.bb.3613
	movabsq	$VBellWait, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum1000
	cmpl	$0, %eax
	jne	.LBB7_1397
# BB#1392:                              # %land.lhs.true.3617
	cmpl	$0, -56(%rbp)
	je	.LBB7_1397
# BB#1393:                              # %if.then.3619
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1395
# BB#1394:                              # %cond.true.3622
	movabsq	$Msg, %rax
	movq	%rax, -14184(%rbp)      # 8-byte Spill
	jmp	.LBB7_1396
.LBB7_1395:                             # %cond.false.3623
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14184(%rbp)      # 8-byte Spill
.LBB7_1396:                             # %cond.end.3627
	movq	-14184(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.155, %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	VBellWait, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -14192(%rbp)      # 8-byte Spill
	movb	$1, %al
	movq	-14192(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1397:                             # %if.end.3631
	jmp	.LBB7_2801
.LBB7_1398:                             # %sw.bb.3632
	movabsq	$MsgWait, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum1000
	cmpl	$0, %eax
	jne	.LBB7_1404
# BB#1399:                              # %land.lhs.true.3636
	cmpl	$0, -56(%rbp)
	je	.LBB7_1404
# BB#1400:                              # %if.then.3638
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1402
# BB#1401:                              # %cond.true.3641
	movabsq	$Msg, %rax
	movq	%rax, -14200(%rbp)      # 8-byte Spill
	jmp	.LBB7_1403
.LBB7_1402:                             # %cond.false.3642
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14200(%rbp)      # 8-byte Spill
.LBB7_1403:                             # %cond.end.3646
	movq	-14200(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.156, %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	MsgWait, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -14208(%rbp)      # 8-byte Spill
	movb	$1, %al
	movq	-14208(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1404:                             # %if.end.3650
	jmp	.LBB7_2801
.LBB7_1405:                             # %sw.bb.3651
	movabsq	$MsgMinWait, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum1000
	cmpl	$0, %eax
	jne	.LBB7_1411
# BB#1406:                              # %land.lhs.true.3655
	cmpl	$0, -56(%rbp)
	je	.LBB7_1411
# BB#1407:                              # %if.then.3657
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1409
# BB#1408:                              # %cond.true.3660
	movabsq	$Msg, %rax
	movq	%rax, -14216(%rbp)      # 8-byte Spill
	jmp	.LBB7_1410
.LBB7_1409:                             # %cond.false.3661
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14216(%rbp)      # 8-byte Spill
.LBB7_1410:                             # %cond.end.3665
	movq	-14216(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.157, %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	MsgMinWait, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -14224(%rbp)      # 8-byte Spill
	movb	$1, %al
	movq	-14224(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1411:                             # %if.end.3669
	jmp	.LBB7_2801
.LBB7_1412:                             # %sw.bb.3670
	movabsq	$SilenceWait, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_1414
# BB#1413:                              # %if.then.3673
	jmp	.LBB7_2801
.LBB7_1414:                             # %if.end.3674
	cmpl	$1, SilenceWait
	jge	.LBB7_1416
# BB#1415:                              # %if.then.3677
	movl	$1, SilenceWait
.LBB7_1416:                             # %if.end.3678
	movq	windows, %rax
	movq	%rax, -40(%rbp)
.LBB7_1417:                             # %for.cond.3679
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_1420
# BB#1418:                              # %for.body.3681
                                        #   in Loop: Header=BB7_1417 Depth=1
	movl	SilenceWait, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 10840(%rcx)
# BB#1419:                              # %for.inc.3682
                                        #   in Loop: Header=BB7_1417 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_1417
.LBB7_1420:                             # %for.end.3684
	cmpl	$0, -56(%rbp)
	je	.LBB7_1425
# BB#1421:                              # %if.then.3686
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1423
# BB#1422:                              # %cond.true.3689
	movabsq	$Msg, %rax
	movq	%rax, -14232(%rbp)      # 8-byte Spill
	jmp	.LBB7_1424
.LBB7_1423:                             # %cond.false.3690
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14232(%rbp)      # 8-byte Spill
.LBB7_1424:                             # %cond.end.3694
	movq	-14232(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.158, %rsi
	movl	SilenceWait, %edx
	movq	%rax, -14240(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14240(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1425:                             # %if.end.3696
	jmp	.LBB7_2801
.LBB7_1426:                             # %sw.bb.3697
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -14244(%rbp)      # 4-byte Spill
	callq	NextWindow
	movl	-14244(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB7_1428
# BB#1427:                              # %if.then.3702
	movq	fore, %rax
	movl	192(%rax), %edi
	movl	%edi, -14248(%rbp)      # 4-byte Spill
	callq	NextWindow
	movl	-14248(%rbp), %edi      # 4-byte Reload
	movl	%eax, %esi
	callq	WindowChangeNumber
	movl	%eax, -14252(%rbp)      # 4-byte Spill
.LBB7_1428:                             # %if.end.3706
	jmp	.LBB7_2801
.LBB7_1429:                             # %sw.bb.3707
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -14256(%rbp)      # 4-byte Spill
	callq	PreviousWindow
	movl	-14256(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_1431
# BB#1430:                              # %if.then.3712
	movq	fore, %rax
	movl	192(%rax), %edi
	movl	%edi, -14260(%rbp)      # 4-byte Spill
	callq	PreviousWindow
	movl	-14260(%rbp), %edi      # 4-byte Reload
	movl	%eax, %esi
	callq	WindowChangeNumber
	movl	%eax, -14264(%rbp)      # 4-byte Spill
.LBB7_1431:                             # %if.end.3716
	jmp	.LBB7_2801
.LBB7_1432:                             # %sw.bb.3717
	callq	CollapseWindowlist
	jmp	.LBB7_2801
.LBB7_1433:                             # %sw.bb.3718
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1438
# BB#1434:                              # %if.then.3721
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1436
# BB#1435:                              # %cond.true.3724
	movabsq	$Msg, %rax
	movq	%rax, -14272(%rbp)      # 8-byte Spill
	jmp	.LBB7_1437
.LBB7_1436:                             # %cond.false.3725
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14272(%rbp)      # 8-byte Spill
.LBB7_1437:                             # %cond.end.3729
	movq	-14272(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.160, %rcx
	movabsq	$.L.str.159, %rdx
	cmpl	$0, queryflag
	cmovgeq	%rdx, %rcx
	movq	fore, %rdx
	movl	192(%rdx), %edx
	movq	fore, %rsi
	movq	8736(%rsi), %rsi
	movq	%rsi, -14280(%rbp)      # 8-byte Spill
	movq	%rcx, %rsi
	movq	-14280(%rbp), %rcx      # 8-byte Reload
	movq	%rax, -14288(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14288(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_1457
.LBB7_1438:                             # %if.else.3736
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -2388(%rbp)
	movl	$0, -2392(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB7_1440
# BB#1439:                              # %if.then.3743
	movl	$1, -2392(%rbp)
	jmp	.LBB7_1443
.LBB7_1440:                             # %if.else.3744
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB7_1442
# BB#1441:                              # %if.then.3750
	movl	$-1, -2392(%rbp)
.LBB7_1442:                             # %if.end.3751
	jmp	.LBB7_1443
.LBB7_1443:                             # %if.end.3752
	cmpl	$0, -2392(%rbp)
	je	.LBB7_1445
# BB#1444:                              # %if.then.3754
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
.LBB7_1445:                             # %if.end.3758
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	movl	%eax, -2396(%rbp)
	cmpl	$0, -2392(%rbp)
	je	.LBB7_1447
# BB#1446:                              # %if.then.3761
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
.LBB7_1447:                             # %if.end.3765
	cmpl	$0, -2396(%rbp)
	je	.LBB7_1449
# BB#1448:                              # %if.then.3767
	jmp	.LBB7_2801
.LBB7_1449:                             # %if.end.3768
	cmpl	$0, -2392(%rbp)
	jle	.LBB7_1451
# BB#1450:                              # %if.then.3771
	movl	-2388(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_1454
.LBB7_1451:                             # %if.else.3773
	cmpl	$0, -2392(%rbp)
	jge	.LBB7_1453
# BB#1452:                              # %if.then.3776
	movl	-2388(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_1453:                             # %if.end.3778
	jmp	.LBB7_1454
.LBB7_1454:                             # %if.end.3779
	movl	-2388(%rbp), %edi
	movl	-52(%rbp), %esi
	callq	WindowChangeNumber
	cmpl	$0, %eax
	jne	.LBB7_1456
# BB#1455:                              # %if.then.3782
	movl	$-1, queryflag
	jmp	.LBB7_2809
.LBB7_1456:                             # %if.end.3783
	jmp	.LBB7_1457
.LBB7_1457:                             # %if.end.3784
	jmp	.LBB7_2801
.LBB7_1458:                             # %sw.bb.3785
	cmpl	$1, -44(%rbp)
	je	.LBB7_1460
# BB#1459:                              # %if.then.3788
	xorl	%edi, %edi
	movabsq	$.L.str.161, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_2801
.LBB7_1460:                             # %if.end.3789
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, nwin_default+112
	cmpq	$0, fore
	je	.LBB7_1462
# BB#1461:                              # %if.then.3793
	movl	nwin_default+112, %eax
	movq	fore, %rcx
	movl	%eax, 520(%rcx)
.LBB7_1462:                             # %if.end.3794
	jmp	.LBB7_1463
.LBB7_1463:                             # %do.body.3795
	jmp	.LBB7_1464
.LBB7_1464:                             # %do.end.3796
	jmp	.LBB7_2801
.LBB7_1465:                             # %sw.bb.3797
	cmpq	$0, fore
	je	.LBB7_1467
# BB#1466:                              # %if.then.3799
	xorl	%edi, %edi
	movabsq	$.L.str.162, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_2801
.LBB7_1467:                             # %if.end.3800
	movl	$0, -48(%rbp)
.LBB7_1468:                             # %for.cond.3801
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_1472 Depth 2
	movl	-48(%rbp), %eax
	cmpl	maxwin, %eax
	jge	.LBB7_1487
# BB#1469:                              # %for.body.3804
                                        #   in Loop: Header=BB7_1468 Depth=1
	movslq	-48(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_1471
# BB#1470:                              # %if.then.3809
                                        #   in Loop: Header=BB7_1468 Depth=1
	jmp	.LBB7_1486
.LBB7_1471:                             # %if.end.3810
                                        #   in Loop: Header=BB7_1468 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB7_1472:                             # %for.cond.3812
                                        #   Parent Loop BB7_1468 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	maxwin, %eax
	jge	.LBB7_1481
# BB#1473:                              # %for.body.3815
                                        #   in Loop: Header=BB7_1472 Depth=2
	movslq	-16(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_1475
# BB#1474:                              # %if.then.3820
                                        #   in Loop: Header=BB7_1472 Depth=2
	jmp	.LBB7_1480
.LBB7_1475:                             # %if.end.3821
                                        #   in Loop: Header=BB7_1472 Depth=2
	jmp	.LBB7_1476
.LBB7_1476:                             # %do.body.3822
                                        #   in Loop: Header=BB7_1472 Depth=2
	jmp	.LBB7_1477
.LBB7_1477:                             # %do.end.3823
                                        #   in Loop: Header=BB7_1472 Depth=2
	movslq	-16(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8736(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8736(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jge	.LBB7_1479
# BB#1478:                              # %if.then.3833
                                        #   in Loop: Header=BB7_1472 Depth=2
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_1479:                             # %if.end.3834
                                        #   in Loop: Header=BB7_1472 Depth=2
	jmp	.LBB7_1480
.LBB7_1480:                             # %for.inc.3835
                                        #   in Loop: Header=BB7_1472 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB7_1472
.LBB7_1481:                             # %for.end.3837
                                        #   in Loop: Header=BB7_1468 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.LBB7_1485
# BB#1482:                              # %if.then.3840
                                        #   in Loop: Header=BB7_1468 Depth=1
	jmp	.LBB7_1483
.LBB7_1483:                             # %do.body.3841
                                        #   in Loop: Header=BB7_1468 Depth=1
	jmp	.LBB7_1484
.LBB7_1484:                             # %do.end.3842
                                        #   in Loop: Header=BB7_1468 Depth=1
	movslq	-52(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movslq	-48(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-52(%rbp), %rcx
	movq	wtab, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	wtab, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-52(%rbp), %esi
	movslq	-52(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%esi, 192(%rax)
	movl	-48(%rbp), %esi
	movslq	-48(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%esi, 192(%rax)
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %esi
	callq	AclWinSwap
.LBB7_1485:                             # %if.end.3857
                                        #   in Loop: Header=BB7_1468 Depth=1
	jmp	.LBB7_1486
.LBB7_1486:                             # %for.inc.3858
                                        #   in Loop: Header=BB7_1468 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1468
.LBB7_1487:                             # %for.end.3860
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	jmp	.LBB7_2801
.LBB7_1488:                             # %sw.bb.3861
	movq	fore, %rax
	cmpl	$0, 10844(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	movq	fore, %rax
	movl	10840(%rax), %edx
	movl	%edx, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1495
# BB#1489:                              # %land.lhs.true.3867
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB7_1492
# BB#1490:                              # %lor.lhs.false.3873
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_1495
# BB#1491:                              # %land.lhs.true.3879
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB7_1495
.LBB7_1492:                             # %if.then.3885
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_1494
# BB#1493:                              # %if.then.3888
	jmp	.LBB7_2801
.LBB7_1494:                             # %if.end.3889
	cmpl	$0, -48(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB7_1498
.LBB7_1495:                             # %if.else.3892
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	je	.LBB7_1497
# BB#1496:                              # %if.then.3895
	jmp	.LBB7_2801
.LBB7_1497:                             # %if.end.3896
	jmp	.LBB7_1498
.LBB7_1498:                             # %if.end.3897
	cmpl	$0, -52(%rbp)
	je	.LBB7_1512
# BB#1499:                              # %if.then.3899
	cmpq	$0, display
	je	.LBB7_1501
# BB#1500:                              # %if.then.3901
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	display, %rsi
	movq	8(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9840(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB7_1506
.LBB7_1501:                             # %if.else.3914
	movl	$0, -52(%rbp)
.LBB7_1502:                             # %for.cond.3915
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB7_1505
# BB#1503:                              # %for.body.3918
                                        #   in Loop: Header=BB7_1502 Depth=1
	movl	$128, %eax
	movl	-52(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-52(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9840(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#1504:                              # %for.inc.3928
                                        #   in Loop: Header=BB7_1502 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_1502
.LBB7_1505:                             # %for.end.3930
	jmp	.LBB7_1506
.LBB7_1506:                             # %if.end.3931
	movl	-48(%rbp), %eax
	movq	fore, %rcx
	movl	%eax, 10840(%rcx)
	movq	fore, %rcx
	movl	$1, 10844(%rcx)
	movq	fore, %rcx
	addq	$360, %rcx              # imm = 0x168
	movq	fore, %rdx
	imull	$1000, 10840(%rdx), %esi # imm = 0x3E8
	movq	%rcx, %rdi
	callq	SetTimeout
	movq	fore, %rcx
	addq	$360, %rcx              # imm = 0x168
	movq	%rcx, %rdi
	callq	evenq
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1508
# BB#1507:                              # %if.then.3937
	jmp	.LBB7_2801
.LBB7_1508:                             # %if.end.3938
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1510
# BB#1509:                              # %cond.true.3941
	movabsq	$Msg, %rax
	movq	%rax, -14296(%rbp)      # 8-byte Spill
	jmp	.LBB7_1511
.LBB7_1510:                             # %cond.false.3942
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14296(%rbp)      # 8-byte Spill
.LBB7_1511:                             # %cond.end.3946
	movq	-14296(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.163, %rsi
	movq	fore, %rcx
	movl	10840(%rcx), %edx
	movq	%rax, -14304(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14304(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1533
.LBB7_1512:                             # %if.else.3949
	cmpq	$0, display
	je	.LBB7_1514
# BB#1513:                              # %if.then.3951
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movq	display, %rsi
	movq	8(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9840(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB7_1519
.LBB7_1514:                             # %if.else.3966
	movl	$0, -52(%rbp)
.LBB7_1515:                             # %for.cond.3967
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB7_1518
# BB#1516:                              # %for.body.3970
                                        #   in Loop: Header=BB7_1515 Depth=1
	movl	$128, %eax
	movl	-52(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movl	-52(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	fore, %rdi
	movq	9840(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#1517:                              # %for.inc.3981
                                        #   in Loop: Header=BB7_1515 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_1515
.LBB7_1518:                             # %for.end.3983
	jmp	.LBB7_1519
.LBB7_1519:                             # %if.end.3984
	movl	maxusercount, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB7_1520:                             # %for.cond.3986
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB7_1525
# BB#1521:                              # %for.body.3989
                                        #   in Loop: Header=BB7_1520 Depth=1
	movl	-48(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	movq	9840(%rdx), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB7_1523
# BB#1522:                              # %if.then.3995
	jmp	.LBB7_1525
.LBB7_1523:                             # %if.end.3996
                                        #   in Loop: Header=BB7_1520 Depth=1
	jmp	.LBB7_1524
.LBB7_1524:                             # %for.inc.3997
                                        #   in Loop: Header=BB7_1520 Depth=1
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1520
.LBB7_1525:                             # %for.end.3999
	cmpl	$0, -48(%rbp)
	jge	.LBB7_1527
# BB#1526:                              # %if.then.4002
	movq	fore, %rax
	movl	$0, 10844(%rax)
	movq	fore, %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdi
	callq	evdeq
.LBB7_1527:                             # %if.end.4005
	cmpl	$0, -56(%rbp)
	jne	.LBB7_1529
# BB#1528:                              # %if.then.4007
	jmp	.LBB7_2801
.LBB7_1529:                             # %if.end.4008
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1531
# BB#1530:                              # %cond.true.4011
	movabsq	$Msg, %rax
	movq	%rax, -14312(%rbp)      # 8-byte Spill
	jmp	.LBB7_1532
.LBB7_1531:                             # %cond.false.4012
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14312(%rbp)      # 8-byte Spill
.LBB7_1532:                             # %cond.end.4016
	movq	-14312(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.164, %rsi
	movq	%rax, -14320(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14320(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1533:                             # %if.end.4018
	jmp	.LBB7_2801
.LBB7_1534:                             # %sw.bb.4019
	movabsq	$nwin_default, %rax
	addq	$52, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseNum
	movl	%eax, -14324(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1535:                             # %sw.bb.4021
	movabsq	$MarkLf, %rax
	movq	flayer, %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB7_1540
# BB#1536:                              # %if.then.4025
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1538
# BB#1537:                              # %cond.true.4028
	movabsq	$Msg, %rax
	movq	%rax, -14336(%rbp)      # 8-byte Spill
	jmp	.LBB7_1539
.LBB7_1538:                             # %cond.false.4029
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14336(%rbp)      # 8-byte Spill
.LBB7_1539:                             # %cond.end.4033
	movq	-14336(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.165, %rsi
	movq	%rax, -14344(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14344(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1540:                             # %if.end.4035
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	movq	fore, %rdi
	movq	fore, %rsi
	movl	32(%rsi), %esi
	movq	fore, %rcx
	movl	36(%rcx), %edx
	movl	-52(%rbp), %ecx
	movl	%eax, -14348(%rbp)      # 4-byte Spill
	callq	ChangeWindowSize
	cmpl	$0, -56(%rbp)
	movl	%eax, -14352(%rbp)      # 4-byte Spill
	je	.LBB7_1545
# BB#1541:                              # %if.then.4043
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1543
# BB#1542:                              # %cond.true.4046
	movabsq	$Msg, %rax
	movq	%rax, -14360(%rbp)      # 8-byte Spill
	jmp	.LBB7_1544
.LBB7_1543:                             # %cond.false.4047
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14360(%rbp)      # 8-byte Spill
.LBB7_1544:                             # %cond.end.4051
	movq	-14360(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.166, %rsi
	movq	fore, %rcx
	movl	10860(%rcx), %edx
	movq	%rax, -14368(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14368(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1545:                             # %if.end.4053
	jmp	.LBB7_2801
.LBB7_1546:                             # %sw.bb.4054
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1551
# BB#1547:                              # %if.then.4057
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1549
# BB#1548:                              # %cond.true.4060
	movabsq	$Msg, %rax
	movq	%rax, -14376(%rbp)      # 8-byte Spill
	jmp	.LBB7_1550
.LBB7_1549:                             # %cond.false.4061
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14376(%rbp)      # 8-byte Spill
.LBB7_1550:                             # %cond.end.4065
	movq	-14376(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.167, %rsi
	movq	SockName, %rdx
	movq	%rax, -14384(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14384(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1574
.LBB7_1551:                             # %if.else.4067
	leaq	-64(%rbp), %rsi
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	cmpl	$0, %eax
	je	.LBB7_1553
# BB#1552:                              # %if.then.4071
	jmp	.LBB7_2801
.LBB7_1553:                             # %if.end.4072
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_1556
# BB#1554:                              # %lor.lhs.false.4074
	movabsq	$SockPath, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -14392(%rbp)      # 8-byte Spill
	callq	strlen
	movq	SockName, %rdi
	movq	-14392(%rbp), %rcx      # 8-byte Reload
	subq	%rcx, %rdi
	addq	%rdi, %rax
	cmpq	$4083, %rax             # imm = 0xFF3
	ja	.LBB7_1556
# BB#1555:                              # %lor.lhs.false.4079
	movl	$47, %esi
	movq	-64(%rbp), %rdi
	callq	index
	cmpq	$0, %rax
	je	.LBB7_1560
.LBB7_1556:                             # %if.then.4082
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1558
# BB#1557:                              # %cond.true.4085
	movabsq	$Msg, %rax
	movq	%rax, -14400(%rbp)      # 8-byte Spill
	jmp	.LBB7_1559
.LBB7_1558:                             # %cond.false.4086
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14400(%rbp)      # 8-byte Spill
.LBB7_1559:                             # %cond.end.4090
	movq	-14400(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.168, %rsi
	movq	rc_name, %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, -14408(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14408(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	movq	-64(%rbp), %rdi
	callq	free
	jmp	.LBB7_2801
.LBB7_1560:                             # %if.end.4092
	movabsq	$SockPath, %rax
	leaq	-6496(%rbp), %rdi
	movq	SockName, %rcx
	subq	%rax, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	strncpy
	movabsq	$SockPath, %rcx
	leaq	-6496(%rbp), %rdx
	movq	SockName, %rsi
	subq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rax, -14416(%rbp)      # 8-byte Spill
	movq	%rdx, -14424(%rbp)      # 8-byte Spill
	callq	getpid
	movabsq	$.L.str.169, %rsi
	movq	-64(%rbp), %rcx
	movq	-14424(%rbp), %rdi      # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movq	-64(%rbp), %rdi
	movl	%eax, -14428(%rbp)      # 4-byte Spill
	callq	free
	xorl	%esi, %esi
	leaq	-6496(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	je	.LBB7_1562
# BB#1561:                              # %lor.lhs.false.4107
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB7_1566
.LBB7_1562:                             # %if.then.4111
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1564
# BB#1563:                              # %cond.true.4114
	movabsq	$Msg, %rax
	movq	%rax, -14440(%rbp)      # 8-byte Spill
	jmp	.LBB7_1565
.LBB7_1564:                             # %cond.false.4115
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14440(%rbp)      # 8-byte Spill
.LBB7_1565:                             # %cond.end.4119
	movq	-14440(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.170, %rsi
	leaq	-6496(%rbp), %rcx
	movq	rc_name, %rdx
	movq	%rax, -14448(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14448(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1566:                             # %if.end.4122
	movabsq	$SockPath, %rdi
	leaq	-6496(%rbp), %rsi
	callq	rename
	cmpl	$0, %eax
	je	.LBB7_1571
# BB#1567:                              # %if.then.4126
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1569
# BB#1568:                              # %cond.true.4129
	movabsq	$Msg, %rax
	movq	%rax, -14456(%rbp)      # 8-byte Spill
	jmp	.LBB7_1570
.LBB7_1569:                             # %cond.false.4130
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14456(%rbp)      # 8-byte Spill
.LBB7_1570:                             # %cond.end.4134
	movq	-14456(%rbp), %rax      # 8-byte Reload
	movq	%rax, -14464(%rbp)      # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.171, %rsi
	movabsq	$SockPath, %rcx
	leaq	-6496(%rbp), %r8
	movl	(%rax), %edi
	movq	rc_name, %rdx
	movb	$0, %al
	movq	-14464(%rbp), %r9       # 8-byte Reload
	callq	*%r9
	jmp	.LBB7_2801
.LBB7_1571:                             # %if.end.4138
	jmp	.LBB7_1572
.LBB7_1572:                             # %do.body.4139
	jmp	.LBB7_1573
.LBB7_1573:                             # %do.end.4140
	leaq	-6496(%rbp), %rsi
	movl	$SockPath, %eax
	movl	%eax, %edi
	callq	strcpy
	movq	%rax, -14472(%rbp)      # 8-byte Spill
	callq	MakeNewEnv
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$83, %esi
	callq	WindowChanged
.LBB7_1574:                             # %if.end.4143
	jmp	.LBB7_2801
.LBB7_1575:                             # %sw.bb.4144
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1577
# BB#1576:                              # %lor.lhs.false.4147
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1580
.LBB7_1577:                             # %if.then.4150
	jmp	.LBB7_1578
.LBB7_1578:                             # %do.body.4151
	jmp	.LBB7_1579
.LBB7_1579:                             # %do.end.4152
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	InputSetenv
	jmp	.LBB7_1581
.LBB7_1580:                             # %if.else.4154
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xsetenv
	callq	MakeNewEnv
.LBB7_1581:                             # %if.end.4157
	jmp	.LBB7_2801
.LBB7_1582:                             # %sw.bb.4158
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	unsetenv
	movl	%eax, -14476(%rbp)      # 4-byte Spill
	callq	MakeNewEnv
	jmp	.LBB7_2801
.LBB7_1583:                             # %sw.bb.4160
	movabsq	$nwin_default, %rax
	addq	$76, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseNum
	movl	%eax, -14480(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1584:                             # %sw.bb.4162
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1589
# BB#1585:                              # %if.then.4165
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1587
# BB#1586:                              # %cond.true.4168
	movabsq	$Msg, %rax
	movq	%rax, -14488(%rbp)      # 8-byte Spill
	jmp	.LBB7_1588
.LBB7_1587:                             # %cond.false.4169
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14488(%rbp)      # 8-byte Spill
.LBB7_1588:                             # %cond.end.4173
	movq	-14488(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.173, %rcx
	movabsq	$.L.str.172, %rdx
	movq	fore, %rsi
	cmpl	$0, 10856(%rsi)
	cmovneq	%rdx, %rcx
	movq	fore, %rdx
	movl	192(%rdx), %edx
	movq	fore, %rsi
	movl	10856(%rsi), %r8d
	movq	%rcx, %rsi
	movl	%r8d, %ecx
	movq	%rax, -14496(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14496(%rbp), %r9       # 8-byte Reload
	callq	*%r9
	jmp	.LBB7_1596
.LBB7_1589:                             # %if.else.4179
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$10856, %rax            # imm = 0x2A68
	movq	%rax, %rsi
	callq	ParseNum
	cmpl	$0, %eax
	jne	.LBB7_1595
# BB#1590:                              # %land.lhs.true.4184
	cmpl	$0, -56(%rbp)
	je	.LBB7_1595
# BB#1591:                              # %if.then.4186
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1593
# BB#1592:                              # %cond.true.4189
	movabsq	$Msg, %rax
	movq	%rax, -14504(%rbp)      # 8-byte Spill
	jmp	.LBB7_1594
.LBB7_1593:                             # %cond.false.4190
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14504(%rbp)      # 8-byte Spill
.LBB7_1594:                             # %cond.end.4194
	movq	-14504(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.175, %rcx
	movabsq	$.L.str.174, %rdx
	movq	fore, %rsi
	cmpl	$0, 10856(%rsi)
	cmovneq	%rdx, %rcx
	movq	fore, %rdx
	movl	192(%rdx), %edx
	movq	fore, %rsi
	movl	10856(%rsi), %r8d
	movq	%rcx, %rsi
	movl	%r8d, %ecx
	movq	%rax, -14512(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14512(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_1595:                             # %if.end.4201
	jmp	.LBB7_1596
.LBB7_1596:                             # %if.end.4202
	jmp	.LBB7_2801
.LBB7_1597:                             # %sw.bb.4203
	movabsq	$mark_key_tab, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	CompileKeys
	cmpl	$0, %eax
	je	.LBB7_1602
# BB#1598:                              # %if.then.4206
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1600
# BB#1599:                              # %cond.true.4209
	movabsq	$Msg, %rax
	movq	%rax, -14520(%rbp)      # 8-byte Spill
	jmp	.LBB7_1601
.LBB7_1600:                             # %cond.false.4210
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14520(%rbp)      # 8-byte Spill
.LBB7_1601:                             # %cond.end.4214
	movq	-14520(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.176, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14528(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14528(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1602:                             # %if.end.4216
	jmp	.LBB7_1603
.LBB7_1603:                             # %do.body.4217
	jmp	.LBB7_1604
.LBB7_1604:                             # %do.end.4218
	jmp	.LBB7_2801
.LBB7_1605:                             # %sw.bb.4219
	movabsq	$pastefont, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1611
# BB#1606:                              # %land.lhs.true.4223
	cmpl	$0, -56(%rbp)
	je	.LBB7_1611
# BB#1607:                              # %if.then.4225
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1609
# BB#1608:                              # %cond.true.4228
	movabsq	$Msg, %rax
	movq	%rax, -14536(%rbp)      # 8-byte Spill
	jmp	.LBB7_1610
.LBB7_1609:                             # %cond.false.4229
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14536(%rbp)      # 8-byte Spill
.LBB7_1610:                             # %cond.end.4233
	movq	-14536(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.177, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, pastefont
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -14544(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14544(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1611:                             # %if.end.4237
	jmp	.LBB7_2801
.LBB7_1612:                             # %sw.bb.4238
	movabsq	$join_with_cr, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	movl	%eax, -14548(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1613:                             # %sw.bb.4240
	movabsq	$compacthist, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1619
# BB#1614:                              # %land.lhs.true.4244
	cmpl	$0, -56(%rbp)
	je	.LBB7_1619
# BB#1615:                              # %if.then.4246
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1617
# BB#1616:                              # %cond.true.4249
	movabsq	$Msg, %rax
	movq	%rax, -14560(%rbp)      # 8-byte Spill
	jmp	.LBB7_1618
.LBB7_1617:                             # %cond.false.4250
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14560(%rbp)      # 8-byte Spill
.LBB7_1618:                             # %cond.end.4254
	movq	-14560(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.178, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, compacthist
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -14568(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14568(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1619:                             # %if.end.4258
	jmp	.LBB7_2801
.LBB7_1620:                             # %sw.bb.4259
	movabsq	$nethackflag, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	movl	%eax, -14572(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1621:                             # %sw.bb.4261
	movabsq	$hardcopy_append, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	movl	%eax, -14576(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1622:                             # %sw.bb.4263
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1627
# BB#1623:                              # %if.then.4266
	movl	$256, %esi              # imm = 0x100
	leaq	-6752(%rbp), %rdi
	movq	VisualBellString, %rdx
	callq	AddXChars
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -14580(%rbp)      # 4-byte Spill
	jne	.LBB7_1625
# BB#1624:                              # %cond.true.4272
	movabsq	$Msg, %rax
	movq	%rax, -14592(%rbp)      # 8-byte Spill
	jmp	.LBB7_1626
.LBB7_1625:                             # %cond.false.4273
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14592(%rbp)      # 8-byte Spill
.LBB7_1626:                             # %cond.end.4277
	movq	-14592(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.179, %rsi
	leaq	-6752(%rbp), %rdx
	movq	%rax, -14600(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14600(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1627:                             # %if.end.4280
	movabsq	$VisualBellString, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSaveStr
	movl	%eax, -14604(%rbp)      # 4-byte Spill
# BB#1628:                              # %do.body.4282
	jmp	.LBB7_1629
.LBB7_1629:                             # %do.end.4283
	jmp	.LBB7_2801
.LBB7_1630:                             # %sw.bb.4284
	leaq	-52(%rbp), %rdx
	movl	$8, %ecx
	movabsq	$.L.str.180, %r8
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	ParseBase
	cmpl	$0, %eax
	je	.LBB7_1632
# BB#1631:                              # %if.then.4287
	jmp	.LBB7_2801
.LBB7_1632:                             # %if.end.4288
	cmpl	$0, -52(%rbp)
	jl	.LBB7_1634
# BB#1633:                              # %lor.lhs.false.4291
	cmpl	$511, -52(%rbp)         # imm = 0x1FF
	jle	.LBB7_1638
.LBB7_1634:                             # %if.then.4294
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1636
# BB#1635:                              # %cond.true.4297
	movabsq	$Msg, %rax
	movq	%rax, -14616(%rbp)      # 8-byte Spill
	jmp	.LBB7_1637
.LBB7_1636:                             # %cond.false.4298
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14616(%rbp)      # 8-byte Spill
.LBB7_1637:                             # %cond.end.4302
	movq	-14616(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.181, %rsi
	movq	rc_name, %rdx
	movl	-52(%rbp), %ecx
	movq	%rax, -14624(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14624(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1638:                             # %if.end.4304
	movl	-52(%rbp), %eax
	movl	%eax, TtyMode
	cmpl	$0, -56(%rbp)
	je	.LBB7_1643
# BB#1639:                              # %if.then.4306
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1641
# BB#1640:                              # %cond.true.4309
	movabsq	$Msg, %rax
	movq	%rax, -14632(%rbp)      # 8-byte Spill
	jmp	.LBB7_1642
.LBB7_1641:                             # %cond.false.4310
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14632(%rbp)      # 8-byte Spill
.LBB7_1642:                             # %cond.end.4314
	movq	-14632(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.182, %rsi
	movl	TtyMode, %edx
	movq	%rax, -14640(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14640(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1643:                             # %if.end.4316
	jmp	.LBB7_2801
.LBB7_1644:                             # %sw.bb.4317
	movabsq	$auto_detach, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	movl	%eax, -14644(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1645:                             # %sw.bb.4319
	movabsq	$default_startup, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	movl	%eax, -14648(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1646:                             # %sw.bb.4321
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1657
# BB#1647:                              # %if.then.4323
	movabsq	$NullStr, %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	272(%rsi), %rsi
	movsbl	(%rsi), %edi
	cmpl	$0, %edi
	cmovnel	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rsi
	cmpq	%rax, 272(%rsi)
	je	.LBB7_1649
# BB#1648:                              # %if.then.4330
	movq	-88(%rbp), %rax
	movq	272(%rax), %rdi
	callq	free
.LBB7_1649:                             # %if.end.4332
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SaveStr
	movq	-88(%rbp), %rdi
	movq	%rax, 272(%rdi)
	movq	-88(%rbp), %rax
	movq	272(%rax), %rdi
	movl	$.L.str.183, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1656
# BB#1650:                              # %if.then.4338
	cmpl	$0, -52(%rbp)
	je	.LBB7_1655
# BB#1651:                              # %if.then.4340
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1653
# BB#1652:                              # %cond.true.4343
	movabsq	$Msg, %rax
	movq	%rax, -14656(%rbp)      # 8-byte Spill
	jmp	.LBB7_1654
.LBB7_1653:                             # %cond.false.4344
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14656(%rbp)      # 8-byte Spill
.LBB7_1654:                             # %cond.end.4348
	movq	-14656(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.184, %rsi
	movq	%rax, -14664(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14664(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1655:                             # %if.end.4350
	movq	-88(%rbp), %rax
	movq	272(%rax), %rdi
	callq	free
	movabsq	$NullStr, %rax
	movq	-88(%rbp), %rdi
	movq	%rax, 272(%rdi)
.LBB7_1656:                             # %if.end.4353
	jmp	.LBB7_1666
.LBB7_1657:                             # %if.else.4354
	cmpq	$0, fore
	jne	.LBB7_1662
# BB#1658:                              # %if.then.4356
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1660
# BB#1659:                              # %cond.true.4359
	movabsq	$Msg, %rax
	movq	%rax, -14672(%rbp)      # 8-byte Spill
	jmp	.LBB7_1661
.LBB7_1660:                             # %cond.false.4360
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14672(%rbp)      # 8-byte Spill
.LBB7_1661:                             # %cond.end.4364
	movq	-14672(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.185, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14680(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14680(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1662:                             # %if.end.4366
	cmpq	$0, display
	je	.LBB7_1664
# BB#1663:                              # %cond.true.4368
	movq	display, %rax
	movq	8(%rax), %rax
	movq	%rax, -14688(%rbp)      # 8-byte Spill
	jmp	.LBB7_1665
.LBB7_1664:                             # %cond.false.4370
	movq	users, %rax
	movq	%rax, -14688(%rbp)      # 8-byte Spill
.LBB7_1665:                             # %cond.end.4371
	movq	-14688(%rbp), %rax      # 8-byte Reload
	movabsq	$.L.str.186, %rdi
	movl	$100, %esi
	movl	$1, %edx
	movabsq	$pass1, %rcx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	Input
.LBB7_1666:                             # %if.end.4373
	jmp	.LBB7_2801
.LBB7_1667:                             # %sw.bb.4374
	movabsq	$ktab, %rax
	movq	%rax, -6760(%rbp)
	movl	$0, -6764(%rbp)
.LBB7_1668:                             # %for.cond.4376
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -44(%rbp)
	jle	.LBB7_1673
# BB#1669:                              # %land.lhs.true.4379
                                        #   in Loop: Header=BB7_1668 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1673
# BB#1670:                              # %if.then.4382
                                        #   in Loop: Header=BB7_1668 Depth=1
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindKtab
	movq	%rax, -6760(%rbp)
	cmpq	$0, -6760(%rbp)
	jne	.LBB7_1672
# BB#1671:                              # %if.then.4387
	jmp	.LBB7_1679
.LBB7_1672:                             # %if.end.4388
                                        #   in Loop: Header=BB7_1668 Depth=1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB7_1678
.LBB7_1673:                             # %if.else.4392
                                        #   in Loop: Header=BB7_1668 Depth=1
	cmpl	$1, -44(%rbp)
	jle	.LBB7_1676
# BB#1674:                              # %land.lhs.true.4395
                                        #   in Loop: Header=BB7_1668 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.57, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1676
# BB#1675:                              # %if.then.4398
                                        #   in Loop: Header=BB7_1668 Depth=1
	movl	$1, -6764(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB7_1677
.LBB7_1676:                             # %if.else.4402
	jmp	.LBB7_1679
.LBB7_1677:                             # %if.end.4403
                                        #   in Loop: Header=BB7_1668 Depth=1
	jmp	.LBB7_1678
.LBB7_1678:                             # %if.end.4404
                                        #   in Loop: Header=BB7_1668 Depth=1
	jmp	.LBB7_1668
.LBB7_1679:                             # %for.end.4405
	cmpl	$0, -6764(%rbp)
	je	.LBB7_1692
# BB#1680:                              # %if.then.4407
	movl	$0, -52(%rbp)
.LBB7_1681:                             # %for.cond.4408
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$82, -52(%rbp)
	jge	.LBB7_1686
# BB#1682:                              # %for.body.4411
                                        #   in Loop: Header=BB7_1681 Depth=1
	movabsq	$term, %rax
	movl	-52(%rbp), %ecx
	addl	$106, %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1684
# BB#1683:                              # %if.then.4419
	jmp	.LBB7_1686
.LBB7_1684:                             # %if.end.4420
                                        #   in Loop: Header=BB7_1681 Depth=1
	jmp	.LBB7_1685
.LBB7_1685:                             # %for.inc.4421
                                        #   in Loop: Header=BB7_1681 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_1681
.LBB7_1686:                             # %for.end.4423
	cmpl	$82, -52(%rbp)
	jne	.LBB7_1691
# BB#1687:                              # %if.then.4426
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1689
# BB#1688:                              # %cond.true.4429
	movabsq	$Msg, %rax
	movq	%rax, -14696(%rbp)      # 8-byte Spill
	jmp	.LBB7_1690
.LBB7_1689:                             # %cond.false.4430
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14696(%rbp)      # 8-byte Spill
.LBB7_1690:                             # %cond.end.4434
	movq	-14696(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.187, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -14704(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14704(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1691:                             # %if.end.4436
	movl	-52(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -52(%rbp)
	jmp	.LBB7_1699
.LBB7_1692:                             # %if.else.4438
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB7_1697
# BB#1693:                              # %if.then.4441
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1695
# BB#1694:                              # %cond.true.4444
	movabsq	$Msg, %rax
	movq	%rax, -14712(%rbp)      # 8-byte Spill
	jmp	.LBB7_1696
.LBB7_1695:                             # %cond.false.4445
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14712(%rbp)      # 8-byte Spill
.LBB7_1696:                             # %cond.end.4449
	movq	-14712(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.188, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14720(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14720(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1697:                             # %if.else.4451
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
# BB#1698:                              # %if.end.4455
	jmp	.LBB7_1699
.LBB7_1699:                             # %if.end.4456
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1708
# BB#1700:                              # %if.then.4459
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindCommnr
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	jne	.LBB7_1705
# BB#1701:                              # %if.then.4464
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1703
# BB#1702:                              # %cond.true.4467
	movabsq	$Msg, %rax
	movq	%rax, -14728(%rbp)      # 8-byte Spill
	jmp	.LBB7_1704
.LBB7_1703:                             # %cond.false.4468
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14728(%rbp)      # 8-byte Spill
.LBB7_1704:                             # %cond.end.4472
	movq	-14728(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.189, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -14736(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14736(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1705:                             # %if.end.4475
	movl	-48(%rbp), %edi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	CheckArgNum
	cmpl	$0, %eax
	jge	.LBB7_1707
# BB#1706:                              # %if.then.4480
	jmp	.LBB7_2801
.LBB7_1707:                             # %if.end.4481
	movslq	-52(%rbp), %rax
	shlq	$5, %rax
	addq	-6760(%rbp), %rax
	movq	%rax, %rdi
	callq	ClearAction
	movq	-6760(%rbp), %rax
	movslq	-52(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rax
	movl	-48(%rbp), %esi
	movq	-24(%rbp), %rdi
	addq	$16, %rdi
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rdi, -14744(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	-14744(%rbp), %rdx      # 8-byte Reload
	callq	SaveAction
	jmp	.LBB7_1709
.LBB7_1708:                             # %if.else.4488
	movslq	-52(%rbp), %rax
	shlq	$5, %rax
	addq	-6760(%rbp), %rax
	movq	%rax, %rdi
	callq	ClearAction
.LBB7_1709:                             # %if.end.4491
	jmp	.LBB7_2801
.LBB7_1710:                             # %sw.bb.4492
	movl	$0, -6784(%rbp)
	movl	$0, -6788(%rbp)
	movl	$0, -6792(%rbp)
	movl	$0, -6796(%rbp)
	movl	$0, -6800(%rbp)
	movq	display, %rax
	movq	%rax, -6808(%rbp)
	movl	$0, -6812(%rbp)
	movq	$0, -6824(%rbp)
.LBB7_1711:                             # %for.cond.4493
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -14745(%rbp)       # 1-byte Spill
	je	.LBB7_1713
# BB#1712:                              # %land.rhs.4495
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	movb	%dl, -14745(%rbp)       # 1-byte Spill
.LBB7_1713:                             # %land.end.4499
                                        #   in Loop: Header=BB7_1711 Depth=1
	movb	-14745(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_1714
	jmp	.LBB7_1736
.LBB7_1714:                             # %for.body.4501
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.190, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1716
# BB#1715:                              # %if.then.4505
                                        #   in Loop: Header=BB7_1711 Depth=1
	movl	$16384, -6784(%rbp)     # imm = 0x4000
	jmp	.LBB7_1734
.LBB7_1716:                             # %if.else.4506
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.57, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1718
# BB#1717:                              # %if.then.4510
                                        #   in Loop: Header=BB7_1711 Depth=1
	movl	$1, -6788(%rbp)
	jmp	.LBB7_1733
.LBB7_1718:                             # %if.else.4511
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.191, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1720
# BB#1719:                              # %if.then.4515
                                        #   in Loop: Header=BB7_1711 Depth=1
	movl	$1, -6792(%rbp)
	jmp	.LBB7_1732
.LBB7_1720:                             # %if.else.4516
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.71, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1722
# BB#1721:                              # %if.then.4520
                                        #   in Loop: Header=BB7_1711 Depth=1
	movl	$1, -6796(%rbp)
	jmp	.LBB7_1731
.LBB7_1722:                             # %if.else.4521
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.94, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1724
# BB#1723:                              # %if.then.4525
                                        #   in Loop: Header=BB7_1711 Depth=1
	movl	$1, -6800(%rbp)
	jmp	.LBB7_1730
.LBB7_1724:                             # %if.else.4526
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1726
# BB#1725:                              # %if.then.4530
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1736
.LBB7_1726:                             # %if.else.4533
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1728
# BB#1727:                              # %cond.true.4536
	movabsq	$Msg, %rax
	movq	%rax, -14760(%rbp)      # 8-byte Spill
	jmp	.LBB7_1729
.LBB7_1728:                             # %cond.false.4537
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14760(%rbp)      # 8-byte Spill
.LBB7_1729:                             # %cond.end.4541
	movq	-14760(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.192, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -14768(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14768(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2809
.LBB7_1730:                             # %if.end.4543
                                        #   in Loop: Header=BB7_1711 Depth=1
	jmp	.LBB7_1731
.LBB7_1731:                             # %if.end.4544
                                        #   in Loop: Header=BB7_1711 Depth=1
	jmp	.LBB7_1732
.LBB7_1732:                             # %if.end.4545
                                        #   in Loop: Header=BB7_1711 Depth=1
	jmp	.LBB7_1733
.LBB7_1733:                             # %if.end.4546
                                        #   in Loop: Header=BB7_1711 Depth=1
	jmp	.LBB7_1734
.LBB7_1734:                             # %if.end.4547
                                        #   in Loop: Header=BB7_1711 Depth=1
	jmp	.LBB7_1735
.LBB7_1735:                             # %for.inc.4548
                                        #   in Loop: Header=BB7_1711 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1711
.LBB7_1736:                             # %for.end.4551
	cmpl	$0, -6796(%rbp)
	je	.LBB7_1742
# BB#1737:                              # %land.lhs.true.4553
	cmpl	$0, -6800(%rbp)
	je	.LBB7_1742
# BB#1738:                              # %if.then.4555
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1740
# BB#1739:                              # %cond.true.4558
	movabsq	$Msg, %rax
	movq	%rax, -14776(%rbp)      # 8-byte Spill
	jmp	.LBB7_1741
.LBB7_1740:                             # %cond.false.4559
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14776(%rbp)      # 8-byte Spill
.LBB7_1741:                             # %cond.end.4563
	movq	-14776(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.193, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14784(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14784(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1742:                             # %if.end.4565
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1750
# BB#1743:                              # %if.then.4568
	cmpl	$0, -6800(%rbp)
	je	.LBB7_1745
# BB#1744:                              # %if.then.4570
	movabsq	$.L.str.194, %rdi
	movabsq	$mmtab, %rsi
	callq	display_bindkey
	jmp	.LBB7_1749
.LBB7_1745:                             # %if.else.4571
	cmpl	$0, -6796(%rbp)
	je	.LBB7_1747
# BB#1746:                              # %if.then.4573
	movabsq	$.L.str.195, %rdi
	movabsq	$dmtab, %rsi
	callq	display_bindkey
	jmp	.LBB7_1748
.LBB7_1747:                             # %if.else.4574
	movabsq	$.L.str.196, %rdi
	movabsq	$umtab, %rsi
	callq	display_bindkey
.LBB7_1748:                             # %if.end.4575
	jmp	.LBB7_1749
.LBB7_1749:                             # %if.end.4576
	jmp	.LBB7_2801
.LBB7_1750:                             # %if.end.4577
	cmpl	$0, -6788(%rbp)
	jne	.LBB7_1801
# BB#1751:                              # %if.then.4580
	cmpl	$0, -6792(%rbp)
	je	.LBB7_1756
# BB#1752:                              # %if.then.4582
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1754
# BB#1753:                              # %cond.true.4585
	movabsq	$Msg, %rax
	movq	%rax, -14792(%rbp)      # 8-byte Spill
	jmp	.LBB7_1755
.LBB7_1754:                             # %cond.false.4586
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14792(%rbp)      # 8-byte Spill
.LBB7_1755:                             # %cond.end.4590
	movq	-14792(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.197, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14800(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14800(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1756:                             # %if.end.4592
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB7_1761
# BB#1757:                              # %if.then.4595
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1759
# BB#1758:                              # %cond.true.4598
	movabsq	$Msg, %rax
	movq	%rax, -14808(%rbp)      # 8-byte Spill
	jmp	.LBB7_1760
.LBB7_1759:                             # %cond.false.4599
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14808(%rbp)      # 8-byte Spill
.LBB7_1760:                             # %cond.end.4603
	movq	-14808(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.198, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14816(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14816(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1761:                             # %if.end.4605
	movl	$0, -48(%rbp)
	movq	kmap_exts, %rax
	movq	%rax, -6824(%rbp)
.LBB7_1762:                             # %for.cond.4606
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	kmap_extn, %eax
	jge	.LBB7_1773
# BB#1763:                              # %for.body.4609
                                        #   in Loop: Header=BB7_1762 Depth=1
	movq	-6824(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_1767
# BB#1764:                              # %if.then.4613
                                        #   in Loop: Header=BB7_1762 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1766
# BB#1765:                              # %if.then.4616
	jmp	.LBB7_1773
.LBB7_1766:                             # %if.end.4617
                                        #   in Loop: Header=BB7_1762 Depth=1
	jmp	.LBB7_1771
.LBB7_1767:                             # %if.else.4618
                                        #   in Loop: Header=BB7_1762 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-6824(%rbp), %rax
	movl	8(%rax), %edx
	andl	$-16385, %edx           # imm = 0xFFFFFFFFFFFFBFFF
	cmpl	%edx, %ecx
	jne	.LBB7_1770
# BB#1768:                              # %land.lhs.true.4623
                                        #   in Loop: Header=BB7_1762 Depth=1
	movq	-6824(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	movslq	(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	jne	.LBB7_1770
# BB#1769:                              # %if.then.4629
	jmp	.LBB7_1773
.LBB7_1770:                             # %if.end.4630
                                        #   in Loop: Header=BB7_1762 Depth=1
	jmp	.LBB7_1771
.LBB7_1771:                             # %if.end.4631
                                        #   in Loop: Header=BB7_1762 Depth=1
	jmp	.LBB7_1772
.LBB7_1772:                             # %for.inc.4632
                                        #   in Loop: Header=BB7_1762 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-6824(%rbp), %rcx
	addq	$112, %rcx
	movq	%rcx, -6824(%rbp)
	jmp	.LBB7_1762
.LBB7_1773:                             # %for.end.4635
	movl	-48(%rbp), %eax
	cmpl	kmap_extn, %eax
	jne	.LBB7_1784
# BB#1774:                              # %if.then.4638
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1779
# BB#1775:                              # %if.then.4641
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1777
# BB#1776:                              # %cond.true.4644
	movabsq	$Msg, %rax
	movq	%rax, -14824(%rbp)      # 8-byte Spill
	jmp	.LBB7_1778
.LBB7_1777:                             # %cond.false.4645
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14824(%rbp)      # 8-byte Spill
.LBB7_1778:                             # %cond.end.4649
	movq	-14824(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.199, %rsi
	movq	rc_name, %rdx
	movq	%rax, -14832(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14832(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_1779:                             # %if.end.4651
	movl	kmap_extn, %eax
	addl	$8, %eax
	movl	%eax, kmap_extn
	movq	kmap_exts, %rcx
	movslq	kmap_extn, %rdx
	imulq	$112, %rdx, %rdx
	movl	%edx, %eax
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	xrealloc
	xorl	%esi, %esi
	movl	$896, %r8d              # imm = 0x380
	movl	%r8d, %edx
	movq	%rax, kmap_exts
	movq	kmap_exts, %rax
	movslq	-48(%rbp), %rcx
	imulq	$112, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -6824(%rbp)
	movq	-6824(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
.LBB7_1780:                             # %for.cond.4659
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	kmap_extn, %eax
	jge	.LBB7_1783
# BB#1781:                              # %for.body.4662
                                        #   in Loop: Header=BB7_1780 Depth=1
	movabsq	$noargs, %rax
	movq	-6824(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-6824(%rbp), %rcx
	movl	$-1, 16(%rcx)
	movq	-6824(%rbp), %rcx
	movl	$-1, 80(%rcx)
	movq	-6824(%rbp), %rcx
	movl	$-1, 48(%rcx)
	movq	-6824(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-6824(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-6824(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-6824(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-6824(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-6824(%rbp), %rax
	movq	$0, 64(%rax)
# BB#1782:                              # %for.inc.4679
                                        #   in Loop: Header=BB7_1780 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-6824(%rbp), %rcx
	addq	$112, %rcx
	movq	%rcx, -6824(%rbp)
	jmp	.LBB7_1780
.LBB7_1783:                             # %for.end.4682
	movl	-48(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -48(%rbp)
	movq	-6824(%rbp), %rcx
	addq	$-896, %rcx             # imm = 0xFFFFFFFFFFFFFC80
	movq	%rcx, -6824(%rbp)
.LBB7_1784:                             # %if.end.4685
	cmpl	$0, -6796(%rbp)
	jne	.LBB7_1787
# BB#1785:                              # %land.lhs.true.4688
	movq	-6824(%rbp), %rax
	cmpl	$-1, 48(%rax)
	je	.LBB7_1787
# BB#1786:                              # %if.then.4693
	movl	$1, -6812(%rbp)
.LBB7_1787:                             # %if.end.4694
	cmpl	$0, -6800(%rbp)
	jne	.LBB7_1790
# BB#1788:                              # %land.lhs.true.4697
	movq	-6824(%rbp), %rax
	cmpl	$-1, 80(%rax)
	je	.LBB7_1790
# BB#1789:                              # %if.then.4702
	movl	$1, -6812(%rbp)
.LBB7_1790:                             # %if.end.4703
	cmpl	$0, -6796(%rbp)
	jne	.LBB7_1792
# BB#1791:                              # %lor.lhs.false.4705
	cmpl	$0, -6800(%rbp)
	je	.LBB7_1794
.LBB7_1792:                             # %land.lhs.true.4707
	movq	-6824(%rbp), %rax
	cmpl	$-1, 16(%rax)
	je	.LBB7_1794
# BB#1793:                              # %if.then.4712
	movl	$1, -6812(%rbp)
.LBB7_1794:                             # %if.end.4713
	movl	-48(%rbp), %eax
	addl	$104, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -6796(%rbp)
	je	.LBB7_1796
# BB#1795:                              # %cond.true.4716
	movq	-6824(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -14840(%rbp)      # 8-byte Spill
	jmp	.LBB7_1800
.LBB7_1796:                             # %cond.false.4718
	cmpl	$0, -6800(%rbp)
	je	.LBB7_1798
# BB#1797:                              # %cond.true.4720
	movq	-6824(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -14848(%rbp)      # 8-byte Spill
	jmp	.LBB7_1799
.LBB7_1798:                             # %cond.false.4722
	movq	-6824(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -14848(%rbp)      # 8-byte Spill
.LBB7_1799:                             # %cond.end.4724
	movq	-14848(%rbp), %rax      # 8-byte Reload
	movq	%rax, -14840(%rbp)      # 8-byte Spill
.LBB7_1800:                             # %cond.end.4726
	movq	-14840(%rbp), %rax      # 8-byte Reload
	movq	%rax, -6776(%rbp)
	jmp	.LBB7_1824
.LBB7_1801:                             # %if.else.4728
	movl	$106, -48(%rbp)
.LBB7_1802:                             # %for.cond.4729
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$188, -48(%rbp)
	jge	.LBB7_1807
# BB#1803:                              # %for.body.4732
                                        #   in Loop: Header=BB7_1802 Depth=1
	movabsq	$term, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_1805
# BB#1804:                              # %if.then.4739
	jmp	.LBB7_1807
.LBB7_1805:                             # %if.end.4740
                                        #   in Loop: Header=BB7_1802 Depth=1
	jmp	.LBB7_1806
.LBB7_1806:                             # %for.inc.4741
                                        #   in Loop: Header=BB7_1802 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1802
.LBB7_1807:                             # %for.end.4743
	cmpl	$188, -48(%rbp)
	jne	.LBB7_1812
# BB#1808:                              # %if.then.4746
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1810
# BB#1809:                              # %cond.true.4749
	movabsq	$Msg, %rax
	movq	%rax, -14856(%rbp)      # 8-byte Spill
	jmp	.LBB7_1811
.LBB7_1810:                             # %cond.false.4750
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14856(%rbp)      # 8-byte Spill
.LBB7_1811:                             # %cond.end.4754
	movq	-14856(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.200, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -14864(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14864(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1812:                             # %if.end.4756
	cmpl	$0, -6792(%rbp)
	je	.LBB7_1816
# BB#1813:                              # %land.lhs.true.4758
	cmpl	$166, -48(%rbp)
	jl	.LBB7_1816
# BB#1814:                              # %land.lhs.true.4761
	cmpl	$188, -48(%rbp)
	jge	.LBB7_1816
# BB#1815:                              # %if.then.4764
	movl	-48(%rbp), %eax
	subl	$84, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1817
.LBB7_1816:                             # %if.else.4766
	movl	-48(%rbp), %eax
	subl	$106, %eax
	movl	%eax, -48(%rbp)
.LBB7_1817:                             # %if.end.4768
	cmpl	$0, -6796(%rbp)
	je	.LBB7_1819
# BB#1818:                              # %cond.true.4770
	movabsq	$dmtab, %rax
	movslq	-48(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -14872(%rbp)      # 8-byte Spill
	jmp	.LBB7_1823
.LBB7_1819:                             # %cond.false.4773
	cmpl	$0, -6800(%rbp)
	je	.LBB7_1821
# BB#1820:                              # %cond.true.4775
	movabsq	$mmtab, %rax
	movslq	-48(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -14880(%rbp)      # 8-byte Spill
	jmp	.LBB7_1822
.LBB7_1821:                             # %cond.false.4778
	movabsq	$umtab, %rax
	movslq	-48(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -14880(%rbp)      # 8-byte Spill
.LBB7_1822:                             # %cond.end.4781
	movq	-14880(%rbp), %rax      # 8-byte Reload
	movq	%rax, -14872(%rbp)      # 8-byte Spill
.LBB7_1823:                             # %cond.end.4783
	movq	-14872(%rbp), %rax      # 8-byte Reload
	movq	%rax, -6776(%rbp)
.LBB7_1824:                             # %if.end.4785
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1838
# BB#1825:                              # %if.then.4788
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindCommnr
	movl	%eax, -6780(%rbp)
	cmpl	$-1, %eax
	jne	.LBB7_1830
# BB#1826:                              # %if.then.4793
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1828
# BB#1827:                              # %cond.true.4796
	movabsq	$Msg, %rax
	movq	%rax, -14888(%rbp)      # 8-byte Spill
	jmp	.LBB7_1829
.LBB7_1828:                             # %cond.false.4797
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14888(%rbp)      # 8-byte Spill
.LBB7_1829:                             # %cond.end.4801
	movq	-14888(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.201, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -14896(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14896(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1830:                             # %if.end.4804
	movl	-6780(%rbp), %edi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	CheckArgNum
	cmpl	$0, %eax
	jge	.LBB7_1832
# BB#1831:                              # %if.then.4809
	jmp	.LBB7_2801
.LBB7_1832:                             # %if.end.4810
	movq	-6776(%rbp), %rdi
	callq	ClearAction
	movq	-6776(%rbp), %rdi
	movl	-6780(%rbp), %esi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdx
	callq	SaveAction
	cmpl	$0, -6788(%rbp)
	jne	.LBB7_1837
# BB#1833:                              # %land.lhs.true.4815
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1837
# BB#1834:                              # %if.then.4818
	movq	-6824(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1836
# BB#1835:                              # %if.then.4821
	movq	-6824(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB7_1836:                             # %if.end.4823
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	SaveStrn
	movq	-6824(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-6784(%rbp), %esi
	movq	-32(%rbp), %rax
	orl	(%rax), %esi
	movq	-6824(%rbp), %rax
	movl	%esi, 8(%rax)
.LBB7_1837:                             # %if.end.4828
	jmp	.LBB7_1839
.LBB7_1838:                             # %if.else.4829
	movq	-6776(%rbp), %rdi
	callq	ClearAction
.LBB7_1839:                             # %if.end.4830
	movq	displays, %rax
	movq	%rax, display
.LBB7_1840:                             # %for.cond.4831
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_1843
# BB#1841:                              # %for.body.4833
                                        #   in Loop: Header=BB7_1840 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-48(%rbp), %edi
	movq	-24(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	remap
	movl	%eax, -14900(%rbp)      # 4-byte Spill
# BB#1842:                              # %for.inc.4838
                                        #   in Loop: Header=BB7_1840 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_1840
.LBB7_1843:                             # %for.end.4840
	cmpl	$0, -6788(%rbp)
	jne	.LBB7_1849
# BB#1844:                              # %land.lhs.true.4843
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_1849
# BB#1845:                              # %if.then.4846
	cmpl	$0, -6812(%rbp)
	jne	.LBB7_1848
# BB#1846:                              # %land.lhs.true.4848
	movq	-6824(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1848
# BB#1847:                              # %if.then.4851
	movq	-6824(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-6824(%rbp), %rax
	movq	$0, (%rax)
	movq	-6824(%rbp), %rax
	movl	$0, 8(%rax)
.LBB7_1848:                             # %if.end.4855
	jmp	.LBB7_1849
.LBB7_1849:                             # %if.end.4856
	movq	-6808(%rbp), %rax
	movq	%rax, display
	jmp	.LBB7_2801
.LBB7_1850:                             # %sw.bb.4857
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1859
# BB#1851:                              # %if.then.4859
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_1853
# BB#1852:                              # %if.then.4862
	jmp	.LBB7_2801
.LBB7_1853:                             # %if.end.4863
	cmpl	$0, -52(%rbp)
	jge	.LBB7_1858
# BB#1854:                              # %if.then.4866
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1856
# BB#1855:                              # %cond.true.4869
	movabsq	$Msg, %rax
	movq	%rax, -14912(%rbp)      # 8-byte Spill
	jmp	.LBB7_1857
.LBB7_1856:                             # %cond.false.4870
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14912(%rbp)      # 8-byte Spill
.LBB7_1857:                             # %cond.end.4874
	movq	-14912(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.202, %rsi
	movq	rc_name, %rdx
	movl	-52(%rbp), %ecx
	movq	%rax, -14920(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14920(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_1858:                             # %if.end.4876
	movl	-52(%rbp), %eax
	movl	%eax, maptimeout
.LBB7_1859:                             # %if.end.4877
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1861
# BB#1860:                              # %lor.lhs.false.4880
	cmpl	$0, -56(%rbp)
	je	.LBB7_1865
.LBB7_1861:                             # %if.then.4882
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1863
# BB#1862:                              # %cond.true.4885
	movabsq	$Msg, %rax
	movq	%rax, -14928(%rbp)      # 8-byte Spill
	jmp	.LBB7_1864
.LBB7_1863:                             # %cond.false.4886
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14928(%rbp)      # 8-byte Spill
.LBB7_1864:                             # %cond.end.4890
	movq	-14928(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.203, %rsi
	movl	maptimeout, %edx
	movq	%rax, -14936(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14936(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1865:                             # %if.end.4892
	jmp	.LBB7_2801
.LBB7_1866:                             # %sw.bb.4893
	movq	display, %rax
	movl	$1, 5432(%rax)
	jmp	.LBB7_2801
.LBB7_1867:                             # %sw.bb.4894
	movq	display, %rax
	movl	$1, 5436(%rax)
	jmp	.LBB7_2801
.LBB7_1868:                             # %sw.bb.4895
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	UsersAcl
	movl	%eax, -14940(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1869:                             # %sw.bb.4897
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	UserDel
	cmpl	$0, %eax
	je	.LBB7_1871
# BB#1870:                              # %if.then.4901
	jmp	.LBB7_2801
.LBB7_1871:                             # %if.end.4902
	cmpl	$0, -56(%rbp)
	je	.LBB7_1876
# BB#1872:                              # %if.then.4904
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1874
# BB#1873:                              # %cond.true.4907
	movabsq	$Msg, %rax
	movq	%rax, -14952(%rbp)      # 8-byte Spill
	jmp	.LBB7_1875
.LBB7_1874:                             # %cond.false.4908
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14952(%rbp)      # 8-byte Spill
.LBB7_1875:                             # %cond.end.4912
	movq	-14952(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.204, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, -14960(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14960(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1876:                             # %if.end.4915
	jmp	.LBB7_2801
.LBB7_1877:                             # %sw.bb.4916
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_1894
# BB#1878:                              # %if.then.4919
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.183, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_1887
# BB#1879:                              # %if.then.4923
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	AclLinkUser
	cmpl	$0, %eax
	je	.LBB7_1881
# BB#1880:                              # %if.then.4928
	jmp	.LBB7_2801
.LBB7_1881:                             # %if.end.4929
	cmpl	$0, -56(%rbp)
	je	.LBB7_1886
# BB#1882:                              # %if.then.4931
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1884
# BB#1883:                              # %cond.true.4934
	movabsq	$Msg, %rax
	movq	%rax, -14968(%rbp)      # 8-byte Spill
	jmp	.LBB7_1885
.LBB7_1884:                             # %cond.false.4935
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14968(%rbp)      # 8-byte Spill
.LBB7_1885:                             # %cond.end.4939
	movq	-14968(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.205, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -14976(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14976(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_1886:                             # %if.end.4943
	jmp	.LBB7_1893
.LBB7_1887:                             # %if.else.4944
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -6832(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_1889
# BB#1888:                              # %if.then.4949
	jmp	.LBB7_2801
.LBB7_1889:                             # %if.end.4950
	jmp	.LBB7_1890
.LBB7_1890:                             # %while.cond.4951
                                        # =>This Inner Loop Header: Depth=1
	movq	-6832(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -6840(%rbp)
	cmpq	$0, %rax
	je	.LBB7_1892
# BB#1891:                              # %while.body.4953
                                        #   in Loop: Header=BB7_1890 Depth=1
	movq	-6840(%rbp), %rax
	movq	8(%rax), %rax
	movq	-6832(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-6840(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB7_1890
.LBB7_1892:                             # %while.end.4955
	jmp	.LBB7_1893
.LBB7_1893:                             # %if.end.4956
	jmp	.LBB7_1915
.LBB7_1894:                             # %if.else.4957
	leaq	-7104(%rbp), %rax
	movq	%rax, -7112(%rbp)
	movl	$0, -7116(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -7128(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_1901
# BB#1895:                              # %if.then.4966
	cmpl	$0, -56(%rbp)
	je	.LBB7_1900
# BB#1896:                              # %if.then.4968
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1898
# BB#1897:                              # %cond.true.4971
	movabsq	$Msg, %rax
	movq	%rax, -14984(%rbp)      # 8-byte Spill
	jmp	.LBB7_1899
.LBB7_1898:                             # %cond.false.4972
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -14984(%rbp)      # 8-byte Spill
.LBB7_1899:                             # %cond.end.4976
	movq	-14984(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.206, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, -14992(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-14992(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1900:                             # %if.end.4979
	jmp	.LBB7_2801
.LBB7_1901:                             # %if.end.4980
	movq	-7128(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -7136(%rbp)
.LBB7_1902:                             # %while.cond.4982
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -7136(%rbp)
	je	.LBB7_1906
# BB#1903:                              # %while.body.4984
                                        #   in Loop: Header=BB7_1902 Depth=1
	movabsq	$.L.str.207, %rsi
	movl	-7116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7116(%rbp)
	movq	-7112(%rbp), %rdi
	movq	-7136(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-7104(%rbp), %rcx
	movq	-7112(%rbp), %rdi
	movl	%eax, -14996(%rbp)      # 4-byte Spill
	movq	%rcx, -15008(%rbp)      # 8-byte Spill
	callq	strlen
	addq	-7112(%rbp), %rax
	movq	%rax, -7112(%rbp)
	movq	-7112(%rbp), %rax
	movq	-15008(%rbp), %rcx      # 8-byte Reload
	addq	$200, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB7_1905
# BB#1904:                              # %if.then.4996
	jmp	.LBB7_1906
.LBB7_1905:                             # %if.end.4997
                                        #   in Loop: Header=BB7_1902 Depth=1
	movq	-7136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -7136(%rbp)
	jmp	.LBB7_1902
.LBB7_1906:                             # %while.end.4999
	cmpl	$0, -7116(%rbp)
	je	.LBB7_1908
# BB#1907:                              # %if.then.5001
	movq	-7112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -7112(%rbp)
	movb	$0, -1(%rax)
.LBB7_1908:                             # %if.end.5003
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1910
# BB#1909:                              # %cond.true.5006
	movabsq	$Msg, %rax
	movq	%rax, -15016(%rbp)      # 8-byte Spill
	jmp	.LBB7_1911
.LBB7_1910:                             # %cond.false.5007
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15016(%rbp)      # 8-byte Spill
.LBB7_1911:                             # %cond.end.5011
	movq	-15016(%rbp), %rax      # 8-byte Reload
	movabsq	$.L.str.209, %rcx
	movabsq	$.L.str.41, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpl	$1, -7116(%rbp)
	cmoveq	%rdx, %rcx
	cmpl	$0, -7116(%rbp)
	movq	%rax, -15024(%rbp)      # 8-byte Spill
	movq	%rsi, -15032(%rbp)      # 8-byte Spill
	movq	%rcx, -15040(%rbp)      # 8-byte Spill
	jne	.LBB7_1913
# BB#1912:                              # %cond.true.5019
	movabsq	$.L.str.183, %rax
	movq	%rax, -15048(%rbp)      # 8-byte Spill
	jmp	.LBB7_1914
.LBB7_1913:                             # %cond.false.5020
	leaq	-7104(%rbp), %rax
	movq	%rax, -15048(%rbp)      # 8-byte Spill
.LBB7_1914:                             # %cond.end.5022
	movq	-15048(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.208, %rsi
	movq	-15032(%rbp), %rdx      # 8-byte Reload
	movq	-15040(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	movq	-15024(%rbp), %r9       # 8-byte Reload
	callq	*%r9
.LBB7_1915:                             # %if.end.5024
	jmp	.LBB7_2801
.LBB7_1916:                             # %sw.bb.5025
	jmp	.LBB7_1917
.LBB7_1917:                             # %while.cond.5026
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB7_1927
# BB#1918:                              # %while.body.5029
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	$0, -7144(%rbp)
	cmpq	$0, display
	je	.LBB7_1920
# BB#1919:                              # %cond.true.5031
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	display, %rax
	movq	8(%rax), %rax
	movq	%rax, -15056(%rbp)      # 8-byte Spill
	jmp	.LBB7_1921
.LBB7_1920:                             # %cond.false.5033
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	users, %rax
	movq	%rax, -15056(%rbp)      # 8-byte Spill
.LBB7_1921:                             # %cond.end.5034
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	-15056(%rbp), %rax      # 8-byte Reload
	leaq	-7144(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	AclUmask
	cmpl	$0, %eax
	je	.LBB7_1926
# BB#1922:                              # %if.then.5038
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1924
# BB#1923:                              # %cond.true.5041
                                        #   in Loop: Header=BB7_1917 Depth=1
	movabsq	$Msg, %rax
	movq	%rax, -15064(%rbp)      # 8-byte Spill
	jmp	.LBB7_1925
.LBB7_1924:                             # %cond.false.5042
                                        #   in Loop: Header=BB7_1917 Depth=1
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15064(%rbp)      # 8-byte Spill
.LBB7_1925:                             # %cond.end.5046
                                        #   in Loop: Header=BB7_1917 Depth=1
	movq	-15064(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.210, %rsi
	movq	-7144(%rbp), %rdx
	movq	%rax, -15072(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15072(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1926:                             # %if.end.5048
                                        #   in Loop: Header=BB7_1917 Depth=1
	jmp	.LBB7_1917
.LBB7_1927:                             # %while.end.5049
	jmp	.LBB7_2801
.LBB7_1928:                             # %sw.bb.5050
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	je	.LBB7_1930
# BB#1929:                              # %if.then.5053
	jmp	.LBB7_2801
.LBB7_1930:                             # %if.end.5054
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, -52(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rcx, multi
	callq	chsock
	cmpl	$0, -56(%rbp)
	movl	%eax, -15076(%rbp)      # 4-byte Spill
	je	.LBB7_1935
# BB#1931:                              # %if.then.5059
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1933
# BB#1932:                              # %cond.true.5062
	movabsq	$Msg, %rax
	movq	%rax, -15088(%rbp)      # 8-byte Spill
	jmp	.LBB7_1934
.LBB7_1933:                             # %cond.false.5063
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15088(%rbp)      # 8-byte Spill
.LBB7_1934:                             # %cond.end.5067
	movq	-15088(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.211, %rsi
	movabsq	$.L.str.213, %rcx
	movabsq	$.L.str.212, %rdx
	cmpq	$0, multi
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15096(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15096(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1935:                             # %if.end.5071
	jmp	.LBB7_2801
.LBB7_1936:                             # %sw.bb.5072
	movq	-24(%rbp), %rdi
	callq	winexec
	movl	%eax, -15100(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_1937:                             # %sw.bb.5074
	movq	display, %rax
	cmpl	$0, 392(%rax)
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1944
# BB#1938:                              # %land.lhs.true.5078
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_1940
# BB#1939:                              # %land.lhs.true.5084
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB7_1941
.LBB7_1940:                             # %lor.lhs.false.5090
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_1944
.LBB7_1941:                             # %if.then.5096
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum1000
	cmpl	$0, %eax
	je	.LBB7_1943
# BB#1942:                              # %if.then.5099
	jmp	.LBB7_2801
.LBB7_1943:                             # %if.end.5100
	jmp	.LBB7_1948
.LBB7_1944:                             # %if.else.5101
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1946
# BB#1945:                              # %if.then.5104
	movl	$1000, %eax             # imm = 0x3E8
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpl	$0, -48(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1947
.LBB7_1946:                             # %if.else.5108
	jmp	.LBB7_2801
.LBB7_1947:                             # %if.end.5109
	jmp	.LBB7_1948
.LBB7_1948:                             # %if.end.5110
	cmpl	$0, -56(%rbp)
	je	.LBB7_1954
# BB#1949:                              # %land.lhs.true.5112
	cmpl	$-1, -48(%rbp)
	jne	.LBB7_1954
# BB#1950:                              # %if.then.5115
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1952
# BB#1951:                              # %cond.true.5118
	movabsq	$Msg, %rax
	movq	%rax, -15112(%rbp)      # 8-byte Spill
	jmp	.LBB7_1953
.LBB7_1952:                             # %cond.false.5119
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15112(%rbp)      # 8-byte Spill
.LBB7_1953:                             # %cond.end.5123
	movq	-15112(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.214, %rsi
	movq	%rax, -15120(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15120(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1967
.LBB7_1954:                             # %if.else.5125
	cmpl	$0, -56(%rbp)
	je	.LBB7_1960
# BB#1955:                              # %land.lhs.true.5127
	cmpl	$0, -48(%rbp)
	jne	.LBB7_1960
# BB#1956:                              # %if.then.5130
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1958
# BB#1957:                              # %cond.true.5133
	movabsq	$Msg, %rax
	movq	%rax, -15128(%rbp)      # 8-byte Spill
	jmp	.LBB7_1959
.LBB7_1958:                             # %cond.false.5134
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15128(%rbp)      # 8-byte Spill
.LBB7_1959:                             # %cond.end.5138
	movq	-15128(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.215, %rsi
	movq	%rax, -15136(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15136(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_1966
.LBB7_1960:                             # %if.else.5140
	cmpl	$0, -56(%rbp)
	je	.LBB7_1965
# BB#1961:                              # %if.then.5142
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1963
# BB#1962:                              # %cond.true.5145
	movabsq	$Msg, %rax
	movq	%rax, -15144(%rbp)      # 8-byte Spill
	jmp	.LBB7_1964
.LBB7_1963:                             # %cond.false.5146
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15144(%rbp)      # 8-byte Spill
.LBB7_1964:                             # %cond.end.5150
	movq	-15144(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.216, %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -15152(%rbp)      # 8-byte Spill
	movb	$1, %al
	movq	-15152(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1965:                             # %if.end.5154
	jmp	.LBB7_1966
.LBB7_1966:                             # %if.end.5155
	jmp	.LBB7_1967
.LBB7_1967:                             # %if.end.5156
	movl	-48(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 392(%rcx)
	movq	display, %rcx
	cmpl	$0, 392(%rcx)
	jg	.LBB7_1969
# BB#1968:                              # %if.then.5161
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evdeq
.LBB7_1969:                             # %if.end.5162
	jmp	.LBB7_2801
.LBB7_1970:                             # %sw.bb.5163
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_1977
# BB#1971:                              # %land.lhs.true.5165
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_1973
# BB#1972:                              # %land.lhs.true.5171
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB7_1974
.LBB7_1973:                             # %lor.lhs.false.5177
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_1977
.LBB7_1974:                             # %if.then.5183
	movabsq	$defnonblock, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum1000
	cmpl	$0, %eax
	je	.LBB7_1976
# BB#1975:                              # %if.then.5186
	jmp	.LBB7_2801
.LBB7_1976:                             # %if.end.5187
	jmp	.LBB7_1981
.LBB7_1977:                             # %if.else.5188
	movabsq	$defnonblock, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseOnOff
	cmpl	$0, %eax
	jne	.LBB7_1979
# BB#1978:                              # %if.then.5191
	movl	$1000, %eax             # imm = 0x3E8
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpl	$0, defnonblock
	cmovel	%ecx, %eax
	movl	%eax, defnonblock
	jmp	.LBB7_1980
.LBB7_1979:                             # %if.else.5195
	jmp	.LBB7_2801
.LBB7_1980:                             # %if.end.5196
	jmp	.LBB7_1981
.LBB7_1981:                             # %if.end.5197
	cmpq	$0, display
	je	.LBB7_1986
# BB#1982:                              # %land.lhs.true.5199
	movq	rc_name, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_1986
# BB#1983:                              # %if.then.5202
	movl	defnonblock, %eax
	movq	display, %rcx
	movl	%eax, 392(%rcx)
	movq	display, %rcx
	cmpl	$0, 392(%rcx)
	jg	.LBB7_1985
# BB#1984:                              # %if.then.5207
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evdeq
.LBB7_1985:                             # %if.end.5209
	jmp	.LBB7_1986
.LBB7_1986:                             # %if.end.5210
	jmp	.LBB7_2801
.LBB7_1987:                             # %sw.bb.5211
	movq	fore, %rax
	cmpl	$2, 10008(%rax)
	jne	.LBB7_1989
# BB#1988:                              # %if.then.5214
	movq	fore, %rax
	movl	$0, 10008(%rax)
.LBB7_1989:                             # %if.end.5216
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$10008, %rax            # imm = 0x2718
	movq	%rax, %rsi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_1995
# BB#1990:                              # %land.lhs.true.5221
	cmpl	$0, -56(%rbp)
	je	.LBB7_1995
# BB#1991:                              # %if.then.5223
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_1993
# BB#1992:                              # %cond.true.5226
	movabsq	$Msg, %rax
	movq	%rax, -15160(%rbp)      # 8-byte Spill
	jmp	.LBB7_1994
.LBB7_1993:                             # %cond.false.5227
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15160(%rbp)      # 8-byte Spill
.LBB7_1994:                             # %cond.end.5231
	movq	-15160(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.217, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	movq	fore, %r8
	cmpl	$0, 10008(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15168(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15168(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_1995:                             # %if.end.5236
	movq	fore, %rax
	cmpl	$0, 10008(%rax)
	jne	.LBB7_1998
# BB#1996:                              # %land.lhs.true.5240
	movq	fore, %rax
	movsbl	9880(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_1998
# BB#1997:                              # %if.then.5243
	movq	fore, %rax
	movl	$2, 10008(%rax)
.LBB7_1998:                             # %if.end.5245
	jmp	.LBB7_2801
.LBB7_1999:                             # %sw.bb.5246
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$10012, %rax            # imm = 0x271C
	movq	%rax, %rsi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_2005
# BB#2000:                              # %land.lhs.true.5250
	cmpl	$0, -56(%rbp)
	je	.LBB7_2005
# BB#2001:                              # %if.then.5252
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2003
# BB#2002:                              # %cond.true.5255
	movabsq	$Msg, %rax
	movq	%rax, -15176(%rbp)      # 8-byte Spill
	jmp	.LBB7_2004
.LBB7_2003:                             # %cond.false.5256
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15176(%rbp)      # 8-byte Spill
.LBB7_2004:                             # %cond.end.5260
	movq	-15176(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.218, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	movq	fore, %r8
	cmpl	$0, 10012(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15184(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15184(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2005:                             # %if.end.5265
	jmp	.LBB7_2801
.LBB7_2006:                             # %sw.bb.5266
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$10016, %rax            # imm = 0x2720
	movq	%rax, %rsi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_2012
# BB#2007:                              # %land.lhs.true.5270
	cmpl	$0, -56(%rbp)
	je	.LBB7_2012
# BB#2008:                              # %if.then.5272
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2010
# BB#2009:                              # %cond.true.5275
	movabsq	$Msg, %rax
	movq	%rax, -15192(%rbp)      # 8-byte Spill
	jmp	.LBB7_2011
.LBB7_2010:                             # %cond.false.5276
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15192(%rbp)      # 8-byte Spill
.LBB7_2011:                             # %cond.end.5280
	movq	-15192(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.219, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	movq	fore, %r8
	cmpl	$0, 10016(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15200(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15200(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2012:                             # %if.end.5285
	jmp	.LBB7_2801
.LBB7_2013:                             # %sw.bb.5286
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2025
# BB#2014:                              # %land.lhs.true.5288
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.71, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2025
# BB#2015:                              # %if.then.5292
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2023
# BB#2016:                              # %if.then.5295
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2018
# BB#2017:                              # %cond.true.5298
	movabsq	$Msg, %rax
	movq	%rax, -15208(%rbp)      # 8-byte Spill
	jmp	.LBB7_2019
.LBB7_2018:                             # %cond.false.5299
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15208(%rbp)      # 8-byte Spill
.LBB7_2019:                             # %cond.end.5303
	movq	-15208(%rbp), %rax      # 8-byte Reload
	cmpq	$0, screenencodings
	movq	%rax, -15216(%rbp)      # 8-byte Spill
	je	.LBB7_2021
# BB#2020:                              # %cond.true.5306
	movq	screenencodings, %rax
	movq	%rax, -15224(%rbp)      # 8-byte Spill
	jmp	.LBB7_2022
.LBB7_2021:                             # %cond.false.5307
	movabsq	$.L.str.221, %rax
	movq	%rax, -15224(%rbp)      # 8-byte Spill
	jmp	.LBB7_2022
.LBB7_2022:                             # %cond.end.5308
	movq	-15224(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.220, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	movq	-15216(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2024
.LBB7_2023:                             # %if.else.5310
	movq	screenencodings, %rdi
	callq	free
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	SaveStr
	movq	%rax, screenencodings
.LBB7_2024:                             # %if.end.5313
	jmp	.LBB7_2801
.LBB7_2025:                             # %if.end.5314
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2045
# BB#2026:                              # %land.lhs.true.5316
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.222, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2045
# BB#2027:                              # %if.then.5320
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2032
# BB#2028:                              # %if.then.5323
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2030
# BB#2029:                              # %cond.true.5326
	movabsq	$Msg, %rax
	movq	%rax, -15232(%rbp)      # 8-byte Spill
	jmp	.LBB7_2031
.LBB7_2030:                             # %cond.false.5327
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15232(%rbp)      # 8-byte Spill
.LBB7_2031:                             # %cond.end.5331
	movq	-15232(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.223, %rsi
	movq	%rax, -15240(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15240(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2044
.LBB7_2032:                             # %if.else.5333
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	LoadFontTranslation
	cmpl	$0, %eax
	je	.LBB7_2037
# BB#2033:                              # %if.then.5337
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2035
# BB#2034:                              # %cond.true.5340
	movabsq	$Msg, %rax
	movq	%rax, -15248(%rbp)      # 8-byte Spill
	jmp	.LBB7_2036
.LBB7_2035:                             # %cond.false.5341
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15248(%rbp)      # 8-byte Spill
.LBB7_2036:                             # %cond.end.5345
	movq	-15248(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.224, %rsi
	movq	%rax, -15256(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15256(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2043
.LBB7_2037:                             # %if.else.5347
	cmpl	$0, -56(%rbp)
	je	.LBB7_2042
# BB#2038:                              # %if.then.5349
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2040
# BB#2039:                              # %cond.true.5352
	movabsq	$Msg, %rax
	movq	%rax, -15264(%rbp)      # 8-byte Spill
	jmp	.LBB7_2041
.LBB7_2040:                             # %cond.false.5353
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15264(%rbp)      # 8-byte Spill
.LBB7_2041:                             # %cond.end.5357
	movq	-15264(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.225, %rsi
	movq	%rax, -15272(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15272(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2042:                             # %if.end.5359
	jmp	.LBB7_2043
.LBB7_2043:                             # %if.end.5360
	jmp	.LBB7_2044
.LBB7_2044:                             # %if.end.5361
	jmp	.LBB7_2801
.LBB7_2045:                             # %if.end.5362
	movl	$0, -48(%rbp)
.LBB7_2046:                             # %for.cond.5363
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -48(%rbp)
	jge	.LBB7_2065
# BB#2047:                              # %for.body.5366
                                        #   in Loop: Header=BB7_2046 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_2049
# BB#2048:                              # %if.then.5371
	jmp	.LBB7_2065
.LBB7_2049:                             # %if.end.5372
                                        #   in Loop: Header=BB7_2046 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.3, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2051
# BB#2050:                              # %if.then.5377
                                        #   in Loop: Header=BB7_2046 Depth=1
	jmp	.LBB7_2064
.LBB7_2051:                             # %if.end.5378
                                        #   in Loop: Header=BB7_2046 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	FindEncoding
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.LBB7_2056
# BB#2052:                              # %if.then.5384
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2054
# BB#2053:                              # %cond.true.5387
	movabsq	$Msg, %rax
	movq	%rax, -15280(%rbp)      # 8-byte Spill
	jmp	.LBB7_2055
.LBB7_2054:                             # %cond.false.5388
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15280(%rbp)      # 8-byte Spill
.LBB7_2055:                             # %cond.end.5392
	movq	-15280(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.226, %rsi
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	%rax, -15288(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15288(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2065
.LBB7_2056:                             # %if.end.5396
                                        #   in Loop: Header=BB7_2046 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB7_2059
# BB#2057:                              # %land.lhs.true.5399
                                        #   in Loop: Header=BB7_2046 Depth=1
	cmpq	$0, fore
	je	.LBB7_2059
# BB#2058:                              # %if.then.5401
                                        #   in Loop: Header=BB7_2046 Depth=1
	movq	fore, %rdi
	movl	-52(%rbp), %esi
	callq	WinSwitchEncoding
	movq	fore, %rdi
	callq	ResetCharsets
	jmp	.LBB7_2063
.LBB7_2059:                             # %if.else.5402
                                        #   in Loop: Header=BB7_2046 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB7_2062
# BB#2060:                              # %land.lhs.true.5404
                                        #   in Loop: Header=BB7_2046 Depth=1
	cmpq	$0, display
	je	.LBB7_2062
# BB#2061:                              # %if.then.5406
                                        #   in Loop: Header=BB7_2046 Depth=1
	movl	-52(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 496(%rcx)
.LBB7_2062:                             # %if.end.5408
                                        #   in Loop: Header=BB7_2046 Depth=1
	jmp	.LBB7_2063
.LBB7_2063:                             # %if.end.5409
                                        #   in Loop: Header=BB7_2046 Depth=1
	jmp	.LBB7_2064
.LBB7_2064:                             # %for.inc.5410
                                        #   in Loop: Header=BB7_2046 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2046
.LBB7_2065:                             # %for.end.5412
	jmp	.LBB7_2801
.LBB7_2066:                             # %sw.bb.5413
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.LBB7_2071
# BB#2067:                              # %if.then.5417
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2069
# BB#2068:                              # %cond.true.5420
	movabsq	$Msg, %rax
	movq	%rax, -15296(%rbp)      # 8-byte Spill
	jmp	.LBB7_2070
.LBB7_2069:                             # %cond.false.5421
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15296(%rbp)      # 8-byte Spill
.LBB7_2070:                             # %cond.end.5425
	movq	-15296(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.227, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, -15304(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15304(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2071:                             # %if.end.5427
	movl	-52(%rbp), %eax
	movl	%eax, nwin_default+92
	jmp	.LBB7_2801
.LBB7_2072:                             # %sw.bb.5428
	leaq	-52(%rbp), %rsi
	cmpl	$8, nwin_default+92
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_2079
# BB#2073:                              # %if.then.5434
	xorl	%eax, %eax
	movl	$8, %ecx
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, nwin_default+92
	cmpl	$0, -56(%rbp)
	je	.LBB7_2078
# BB#2074:                              # %if.then.5438
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2076
# BB#2075:                              # %cond.true.5441
	movabsq	$Msg, %rax
	movq	%rax, -15312(%rbp)      # 8-byte Spill
	jmp	.LBB7_2077
.LBB7_2076:                             # %cond.false.5442
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15312(%rbp)      # 8-byte Spill
.LBB7_2077:                             # %cond.end.5446
	movq	-15312(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.228, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, -52(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15320(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15320(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2078:                             # %if.end.5450
	jmp	.LBB7_2079
.LBB7_2079:                             # %if.end.5451
	jmp	.LBB7_2801
.LBB7_2080:                             # %sw.bb.5452
	movl	$0, -48(%rbp)
.LBB7_2081:                             # %for.cond.5453
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -48(%rbp)
	jge	.LBB7_2111
# BB#2082:                              # %for.body.5456
                                        #   in Loop: Header=BB7_2081 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB7_2085
# BB#2083:                              # %land.lhs.true.5458
                                        #   in Loop: Header=BB7_2081 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_2085
# BB#2084:                              # %if.then.5463
	jmp	.LBB7_2111
.LBB7_2085:                             # %if.end.5464
                                        #   in Loop: Header=BB7_2081 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_2087
# BB#2086:                              # %if.then.5469
                                        #   in Loop: Header=BB7_2081 Depth=1
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB7_2097
.LBB7_2087:                             # %if.else.5474
                                        #   in Loop: Header=BB7_2081 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.14, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2089
# BB#2088:                              # %if.then.5480
                                        #   in Loop: Header=BB7_2081 Depth=1
	movl	$0, -52(%rbp)
	jmp	.LBB7_2096
.LBB7_2089:                             # %if.else.5481
                                        #   in Loop: Header=BB7_2081 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2091
# BB#2090:                              # %if.then.5487
                                        #   in Loop: Header=BB7_2081 Depth=1
	movl	$1, -52(%rbp)
	jmp	.LBB7_2095
.LBB7_2091:                             # %if.else.5488
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2093
# BB#2092:                              # %cond.true.5491
	movabsq	$Msg, %rax
	movq	%rax, -15328(%rbp)      # 8-byte Spill
	jmp	.LBB7_2094
.LBB7_2093:                             # %cond.false.5492
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15328(%rbp)      # 8-byte Spill
.LBB7_2094:                             # %cond.end.5496
	movq	-15328(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.229, %rsi
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	%rax, -15336(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15336(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2111
.LBB7_2095:                             # %if.end.5500
                                        #   in Loop: Header=BB7_2081 Depth=1
	jmp	.LBB7_2096
.LBB7_2096:                             # %if.end.5501
                                        #   in Loop: Header=BB7_2081 Depth=1
	jmp	.LBB7_2097
.LBB7_2097:                             # %if.end.5502
                                        #   in Loop: Header=BB7_2081 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB7_2104
# BB#2098:                              # %if.then.5505
                                        #   in Loop: Header=BB7_2081 Depth=1
	xorl	%eax, %eax
	movl	$8, %ecx
	movq	fore, %rdi
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	WinSwitchEncoding
	cmpl	$0, -56(%rbp)
	je	.LBB7_2103
# BB#2099:                              # %if.then.5509
                                        #   in Loop: Header=BB7_2081 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2101
# BB#2100:                              # %cond.true.5512
                                        #   in Loop: Header=BB7_2081 Depth=1
	movabsq	$Msg, %rax
	movq	%rax, -15344(%rbp)      # 8-byte Spill
	jmp	.LBB7_2102
.LBB7_2101:                             # %cond.false.5513
                                        #   in Loop: Header=BB7_2081 Depth=1
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15344(%rbp)      # 8-byte Spill
.LBB7_2102:                             # %cond.end.5517
                                        #   in Loop: Header=BB7_2081 Depth=1
	movq	-15344(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.230, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, -52(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15352(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15352(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2103:                             # %if.end.5521
                                        #   in Loop: Header=BB7_2081 Depth=1
	jmp	.LBB7_2107
.LBB7_2104:                             # %if.else.5522
                                        #   in Loop: Header=BB7_2081 Depth=1
	cmpq	$0, display
	je	.LBB7_2106
# BB#2105:                              # %if.then.5524
                                        #   in Loop: Header=BB7_2081 Depth=1
	xorl	%eax, %eax
	movl	$8, %ecx
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movq	display, %rdx
	movl	%eax, 496(%rdx)
.LBB7_2106:                             # %if.end.5528
                                        #   in Loop: Header=BB7_2081 Depth=1
	jmp	.LBB7_2107
.LBB7_2107:                             # %if.end.5529
                                        #   in Loop: Header=BB7_2081 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB7_2109
# BB#2108:                              # %if.then.5534
	jmp	.LBB7_2111
.LBB7_2109:                             # %if.end.5535
                                        #   in Loop: Header=BB7_2081 Depth=1
	jmp	.LBB7_2110
.LBB7_2110:                             # %for.inc.5536
                                        #   in Loop: Header=BB7_2081 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2081
.LBB7_2111:                             # %for.end.5538
	jmp	.LBB7_2801
.LBB7_2112:                             # %sw.bb.5539
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2118
# BB#2113:                              # %if.then.5541
	cmpq	$0, printcmd
	je	.LBB7_2115
# BB#2114:                              # %if.then.5543
	movq	printcmd, %rdi
	callq	free
.LBB7_2115:                             # %if.end.5544
	movq	$0, printcmd
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2117
# BB#2116:                              # %if.then.5546
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SaveStr
	movq	%rax, printcmd
.LBB7_2117:                             # %if.end.5548
	jmp	.LBB7_2118
.LBB7_2118:                             # %if.end.5549
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2120
# BB#2119:                              # %lor.lhs.false.5552
	cmpl	$0, -56(%rbp)
	je	.LBB7_2130
.LBB7_2120:                             # %if.then.5554
	cmpq	$0, printcmd
	je	.LBB7_2125
# BB#2121:                              # %if.then.5556
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2123
# BB#2122:                              # %cond.true.5559
	movabsq	$Msg, %rax
	movq	%rax, -15360(%rbp)      # 8-byte Spill
	jmp	.LBB7_2124
.LBB7_2123:                             # %cond.false.5560
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15360(%rbp)      # 8-byte Spill
.LBB7_2124:                             # %cond.end.5564
	movq	-15360(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.231, %rsi
	movq	printcmd, %rdx
	movq	%rax, -15368(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15368(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2129
.LBB7_2125:                             # %if.else.5566
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2127
# BB#2126:                              # %cond.true.5569
	movabsq	$Msg, %rax
	movq	%rax, -15376(%rbp)      # 8-byte Spill
	jmp	.LBB7_2128
.LBB7_2127:                             # %cond.false.5570
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15376(%rbp)      # 8-byte Spill
.LBB7_2128:                             # %cond.end.5574
	movq	-15376(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.232, %rsi
	movq	%rax, -15384(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15384(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2129:                             # %if.end.5576
	jmp	.LBB7_2801
.LBB7_2130:                             # %if.end.5577
	jmp	.LBB7_2801
.LBB7_2131:                             # %sw.bb.5578
	cmpq	$0, -32(%rbp)
	je	.LBB7_2155
# BB#2132:                              # %land.lhs.true.5580
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB7_2155
# BB#2133:                              # %land.lhs.true.5584
	movq	-32(%rbp), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB7_2155
# BB#2134:                              # %if.then.5588
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	je	.LBB7_2139
# BB#2135:                              # %if.then.5592
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2137
# BB#2136:                              # %cond.true.5595
	movabsq	$Msg, %rax
	movq	%rax, -15392(%rbp)      # 8-byte Spill
	jmp	.LBB7_2138
.LBB7_2137:                             # %cond.false.5596
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15392(%rbp)      # 8-byte Spill
.LBB7_2138:                             # %cond.end.5600
	movq	-15392(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.233, %rsi
	movq	%rax, -15400(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15400(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2139:                             # %if.end.5602
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	digraph_find
	movabsq	$digraphs, %rdi
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx), %dl
	movslq	-48(%rbp), %rcx
	movb	%dl, digraphs(,%rcx,8)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	1(%rcx), %dl
	movslq	-48(%rbp), %rcx
	movb	%dl, digraphs+1(,%rcx,8)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movl	4(%rsi), %esi
	movslq	-48(%rbp), %r8
	shlq	$3, %r8
	addq	%r8, %rdi
	addq	$4, %rdi
	movq	%rdi, -15408(%rbp)      # 8-byte Spill
	movq	%rcx, %rdi
	movq	-15408(%rbp), %rdx      # 8-byte Reload
	callq	parse_input_int
	cmpl	$0, %eax
	jne	.LBB7_2154
# BB#2140:                              # %if.then.5622
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movslq	-48(%rbp), %rdi
	movl	%eax, digraphs+4(,%rdi,8)
	cmpl	$0, %eax
	jne	.LBB7_2153
# BB#2141:                              # %if.then.5629
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_2143
# BB#2142:                              # %if.then.5633
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	movslq	-48(%rbp), %rax
	movl	%ecx, digraphs+4(,%rax,8)
	jmp	.LBB7_2152
.LBB7_2143:                             # %if.else.5640
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -7160(%rbp)
	movslq	-48(%rbp), %rax
	movl	$0, digraphs+4(,%rax,8)
.LBB7_2144:                             # %while.cond.5646
                                        # =>This Inner Loop Header: Depth=1
	movq	-7160(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2151
# BB#2145:                              # %while.body.5648
                                        #   in Loop: Header=BB7_2144 Depth=1
	movabsq	$digraphs, %rax
	movq	-7160(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -7160(%rbp)
	movzbl	(%rcx), %edi
	movslq	-48(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	callq	FromUtf8
	movl	%eax, -7148(%rbp)
	cmpl	$-1, -7148(%rbp)
	jne	.LBB7_2147
# BB#2146:                              # %if.then.5657
                                        #   in Loop: Header=BB7_2144 Depth=1
	jmp	.LBB7_2144
.LBB7_2147:                             # %if.end.5658
	cmpl	$-2, -7148(%rbp)
	jne	.LBB7_2149
# BB#2148:                              # %if.then.5661
	movslq	-48(%rbp), %rax
	movl	$0, digraphs+4(,%rax,8)
	jmp	.LBB7_2150
.LBB7_2149:                             # %if.else.5665
	movl	-7148(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movl	%eax, digraphs+4(,%rcx,8)
.LBB7_2150:                             # %if.end.5669
	jmp	.LBB7_2151
.LBB7_2151:                             # %while.end.5670
	jmp	.LBB7_2152
.LBB7_2152:                             # %if.end.5671
	jmp	.LBB7_2153
.LBB7_2153:                             # %if.end.5672
	jmp	.LBB7_2154
.LBB7_2154:                             # %if.end.5673
	jmp	.LBB7_2801
.LBB7_2155:                             # %if.end.5674
	movabsq	$.L.str.234, %rdi
	movl	$10, %esi
	movl	$4, %edx
	movabsq	$digraph_fn, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	callq	Input
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB7_2158
# BB#2156:                              # %land.lhs.true.5676
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_2158
# BB#2157:                              # %if.then.5679
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -15416(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -15424(%rbp)      # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	-15416(%rbp), %rdi      # 8-byte Reload
	movq	-15424(%rbp), %rsi      # 8-byte Reload
	callq	*(%rax)
.LBB7_2158:                             # %if.end.5684
	jmp	.LBB7_2801
.LBB7_2159:                             # %sw.bb.5685
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_2166
# BB#2160:                              # %if.then.5688
	movb	$0, -7424(%rbp)
	cmpq	$0, nwin_default+96
	je	.LBB7_2162
# BB#2161:                              # %if.then.5692
	movl	$256, %esi              # imm = 0x100
	leaq	-7424(%rbp), %rdi
	movq	nwin_default+96, %rdx
	callq	AddXChars
	movl	%eax, -15428(%rbp)      # 4-byte Spill
.LBB7_2162:                             # %if.end.5695
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2164
# BB#2163:                              # %cond.true.5698
	movabsq	$Msg, %rax
	movq	%rax, -15440(%rbp)      # 8-byte Spill
	jmp	.LBB7_2165
.LBB7_2164:                             # %cond.false.5699
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15440(%rbp)      # 8-byte Spill
.LBB7_2165:                             # %cond.end.5703
	movq	-15440(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.235, %rsi
	leaq	-7424(%rbp), %rdx
	movq	%rax, -15448(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15448(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2166:                             # %if.end.5706
	movabsq	$nwin_default, %rax
	addq	$96, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	ParseSaveStr
	movq	nwin_default+96, %rsi
	movsbl	(%rsi), %ecx
	cmpl	$0, %ecx
	movl	%eax, -15452(%rbp)      # 4-byte Spill
	jne	.LBB7_2168
# BB#2167:                              # %if.then.5711
	movq	nwin_default+96, %rdi
	callq	free
	movq	$0, nwin_default+96
.LBB7_2168:                             # %if.end.5712
	jmp	.LBB7_2801
.LBB7_2169:                             # %sw.bb.5713
	movq	-8(%rbp), %rdi
	movq	fore, %rax
	addq	$10000, %rax            # imm = 0x2710
	movq	%rax, %rsi
	callq	ParseSaveStr
	movq	fore, %rsi
	movq	10000(%rsi), %rsi
	movsbl	(%rsi), %ecx
	cmpl	$0, %ecx
	movl	%eax, -15456(%rbp)      # 4-byte Spill
	jne	.LBB7_2171
# BB#2170:                              # %if.then.5719
	movq	fore, %rax
	movq	10000(%rax), %rdi
	callq	free
	movq	fore, %rax
	movq	$0, 10000(%rax)
.LBB7_2171:                             # %if.end.5722
	movl	$104, %esi
	movq	fore, %rdi
	callq	WindowChanged
	jmp	.LBB7_2801
.LBB7_2172:                             # %sw.bb.5723
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_2179
# BB#2173:                              # %if.then.5726
	movb	$0, -7680(%rbp)
	cmpq	$0, nwin_default+104
	je	.LBB7_2175
# BB#2174:                              # %if.then.5730
	movl	$256, %esi              # imm = 0x100
	leaq	-7680(%rbp), %rdi
	movq	nwin_default+104, %rdx
	callq	AddXChars
	movl	%eax, -15460(%rbp)      # 4-byte Spill
.LBB7_2175:                             # %if.end.5733
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2177
# BB#2176:                              # %cond.true.5736
	movabsq	$Msg, %rax
	movq	%rax, -15472(%rbp)      # 8-byte Spill
	jmp	.LBB7_2178
.LBB7_2177:                             # %cond.false.5737
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15472(%rbp)      # 8-byte Spill
.LBB7_2178:                             # %cond.end.5741
	movq	-15472(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.236, %rsi
	leaq	-7680(%rbp), %rdx
	movq	%rax, -15480(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15480(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2179:                             # %if.end.5744
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_2181
# BB#2180:                              # %lor.lhs.false.5749
	cmpl	$6, -52(%rbp)
	jle	.LBB7_2185
.LBB7_2181:                             # %if.then.5752
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2183
# BB#2182:                              # %cond.true.5755
	movabsq	$Msg, %rax
	movq	%rax, -15488(%rbp)      # 8-byte Spill
	jmp	.LBB7_2184
.LBB7_2183:                             # %cond.false.5756
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15488(%rbp)      # 8-byte Spill
.LBB7_2184:                             # %cond.end.5760
	movq	-15488(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.237, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -15496(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15496(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2185:                             # %if.end.5765
	cmpl	$4, -52(%rbp)
	jle	.LBB7_2197
# BB#2186:                              # %land.lhs.true.5768
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	4(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_2188
# BB#2187:                              # %lor.lhs.false.5774
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	4(%rax), %ecx
	cmpl	$51, %ecx
	jle	.LBB7_2189
.LBB7_2188:                             # %land.lhs.true.5780
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	4(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_2193
.LBB7_2189:                             # %lor.lhs.false.5786
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	5(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_2191
# BB#2190:                              # %lor.lhs.false.5792
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	5(%rax), %ecx
	cmpl	$51, %ecx
	jle	.LBB7_2197
.LBB7_2191:                             # %land.lhs.true.5798
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	5(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_2197
# BB#2192:                              # %land.lhs.true.5803
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	5(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB7_2197
.LBB7_2193:                             # %if.then.5809
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2195
# BB#2194:                              # %cond.true.5812
	movabsq	$Msg, %rax
	movq	%rax, -15504(%rbp)      # 8-byte Spill
	jmp	.LBB7_2196
.LBB7_2195:                             # %cond.false.5813
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15504(%rbp)      # 8-byte Spill
.LBB7_2196:                             # %cond.end.5817
	movq	-15504(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.238, %rsi
	movabsq	$comms, %rcx
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rax, -15512(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15512(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2197:                             # %if.end.5822
	cmpl	$29, -16(%rbp)
	jne	.LBB7_2199
# BB#2198:                              # %if.then.5825
	movq	fore, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	SetCharsets
	jmp	.LBB7_2801
.LBB7_2199:                             # %if.end.5826
	cmpq	$0, nwin_default+104
	je	.LBB7_2201
# BB#2200:                              # %if.then.5828
	movq	nwin_default+104, %rdi
	callq	free
.LBB7_2201:                             # %if.end.5829
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SaveStr
	movq	%rax, nwin_default+104
	jmp	.LBB7_2801
.LBB7_2202:                             # %sw.bb.5831
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB7_2205
# BB#2203:                              # %land.lhs.true.5836
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB7_2205
# BB#2204:                              # %if.then.5840
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB7_2212
.LBB7_2205:                             # %if.else.5843
	movl	$0, -48(%rbp)
.LBB7_2206:                             # %for.cond.5844
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -48(%rbp)
	jge	.LBB7_2211
# BB#2207:                              # %for.body.5847
                                        #   in Loop: Header=BB7_2206 Depth=1
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	-48(%rbp), %rax
	movsbl	.L.str.239(,%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB7_2209
# BB#2208:                              # %if.then.5854
	jmp	.LBB7_2211
.LBB7_2209:                             # %if.end.5855
                                        #   in Loop: Header=BB7_2206 Depth=1
	jmp	.LBB7_2210
.LBB7_2210:                             # %for.inc.5856
                                        #   in Loop: Header=BB7_2206 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2206
.LBB7_2211:                             # %for.end.5858
	jmp	.LBB7_2212
.LBB7_2212:                             # %if.end.5859
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_2231
# BB#2213:                              # %land.lhs.true.5863
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_2231
# BB#2214:                              # %land.lhs.true.5867
	movq	-64(%rbp), %rax
	cmpb	$0, 2(%rax)
	jne	.LBB7_2231
# BB#2215:                              # %if.then.5870
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB7_2218
# BB#2216:                              # %land.lhs.true.5874
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB7_2218
# BB#2217:                              # %if.then.5879
	movl	$3, -16(%rbp)
	jmp	.LBB7_2230
.LBB7_2218:                             # %if.else.5880
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_2221
# BB#2219:                              # %land.lhs.true.5884
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB7_2221
# BB#2220:                              # %if.then.5889
	movl	$2, -16(%rbp)
	jmp	.LBB7_2229
.LBB7_2221:                             # %if.else.5890
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB7_2224
# BB#2222:                              # %land.lhs.true.5894
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_2224
# BB#2223:                              # %if.then.5899
	movl	$1, -16(%rbp)
	jmp	.LBB7_2228
.LBB7_2224:                             # %if.else.5900
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB7_2226
# BB#2225:                              # %lor.lhs.false.5904
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB7_2227
.LBB7_2226:                             # %if.then.5909
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
.LBB7_2227:                             # %if.end.5911
	jmp	.LBB7_2228
.LBB7_2228:                             # %if.end.5912
	jmp	.LBB7_2229
.LBB7_2229:                             # %if.end.5913
	jmp	.LBB7_2230
.LBB7_2230:                             # %if.end.5914
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB7_2231:                             # %if.end.5916
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_2234
# BB#2232:                              # %lor.lhs.false.5919
	cmpl	$0, -48(%rbp)
	jl	.LBB7_2234
# BB#2233:                              # %lor.lhs.false.5922
	cmpl	$8, -48(%rbp)
	jl	.LBB7_2238
.LBB7_2234:                             # %if.then.5925
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2236
# BB#2235:                              # %cond.true.5928
	movabsq	$Msg, %rax
	movq	%rax, -15520(%rbp)      # 8-byte Spill
	jmp	.LBB7_2237
.LBB7_2236:                             # %cond.false.5929
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15520(%rbp)      # 8-byte Spill
.LBB7_2237:                             # %cond.end.5933
	movq	-15520(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.240, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -15528(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15528(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2238:                             # %if.end.5936
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2240
# BB#2239:                              # %if.then.5939
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	ParseAttrColor
	movl	%eax, -52(%rbp)
.LBB7_2240:                             # %if.end.5943
	cmpl	$-1, -52(%rbp)
	jne	.LBB7_2242
# BB#2241:                              # %if.then.5946
	jmp	.LBB7_2801
.LBB7_2242:                             # %if.end.5947
	movabsq	$attr2color, %rax
	movl	-52(%rbp), %ecx
	movslq	-16(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movl	%ecx, (%rax,%rdx,4)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB7_2243:                             # %for.cond.5952
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -48(%rbp)
	jge	.LBB7_2251
# BB#2244:                              # %for.body.5955
                                        #   in Loop: Header=BB7_2243 Depth=1
	movabsq	$attr2color, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB7_2248
# BB#2245:                              # %lor.lhs.false.5960
                                        #   in Loop: Header=BB7_2243 Depth=1
	movabsq	$attr2color, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jne	.LBB7_2248
# BB#2246:                              # %lor.lhs.false.5965
                                        #   in Loop: Header=BB7_2243 Depth=1
	movabsq	$attr2color, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB7_2248
# BB#2247:                              # %lor.lhs.false.5970
                                        #   in Loop: Header=BB7_2243 Depth=1
	movabsq	$attr2color, %rax
	movslq	-48(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_2249
.LBB7_2248:                             # %if.then.5975
                                        #   in Loop: Header=BB7_2243 Depth=1
	movl	$1, %eax
	movl	-48(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_2249:                             # %if.end.5977
                                        #   in Loop: Header=BB7_2243 Depth=1
	jmp	.LBB7_2250
.LBB7_2250:                             # %for.inc.5978
                                        #   in Loop: Header=BB7_2243 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2243
.LBB7_2251:                             # %for.end.5980
	movl	-52(%rbp), %eax
	movl	%eax, nattr2color
	jmp	.LBB7_2801
.LBB7_2252:                             # %sw.bb.5981
	movl	$-1, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.241, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2254
# BB#2253:                              # %if.then.5986
	movl	$0, -48(%rbp)
	jmp	.LBB7_2266
.LBB7_2254:                             # %if.else.5987
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.242, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2256
# BB#2255:                              # %if.then.5992
	movl	$1, -48(%rbp)
	jmp	.LBB7_2265
.LBB7_2256:                             # %if.else.5993
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.243, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2258
# BB#2257:                              # %if.then.5998
	movl	$2, -48(%rbp)
	jmp	.LBB7_2264
.LBB7_2258:                             # %if.else.5999
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.244, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_2263
# BB#2259:                              # %if.then.6004
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2261
# BB#2260:                              # %cond.true.6007
	movabsq	$Msg, %rax
	movq	%rax, -15536(%rbp)      # 8-byte Spill
	jmp	.LBB7_2262
.LBB7_2261:                             # %cond.false.6008
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15536(%rbp)      # 8-byte Spill
.LBB7_2262:                             # %cond.end.6012
	movq	-15536(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.245, %rsi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, -15544(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15544(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2263:                             # %if.end.6015
	jmp	.LBB7_2264
.LBB7_2264:                             # %if.end.6016
	jmp	.LBB7_2265
.LBB7_2265:                             # %if.end.6017
	jmp	.LBB7_2266
.LBB7_2266:                             # %if.end.6018
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	cmpl	$-1, -48(%rbp)
	je	.LBB7_2268
# BB#2267:                              # %if.then.6023
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	ParseAttrColor
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$119, %esi
	movslq	-48(%rbp), %rcx
	movl	%eax, renditions(,%rcx,4)
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	jmp	.LBB7_2801
.LBB7_2268:                             # %if.end.6029
	jmp	.LBB7_2269
.LBB7_2269:                             # %sw.bb.6030
	movl	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2275
# BB#2270:                              # %if.then.6032
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	ParseAttrColor
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	jne	.LBB7_2272
# BB#2271:                              # %if.then.6037
	jmp	.LBB7_2801
.LBB7_2272:                             # %if.end.6038
	movabsq	$mchar_so, %rsi
	movl	-48(%rbp), %edi
	callq	ApplyAttrColor
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	xorl	%esi, %esi
	callq	WindowChanged
# BB#2273:                              # %do.body.6039
	jmp	.LBB7_2274
.LBB7_2274:                             # %do.end.6040
	jmp	.LBB7_2275
.LBB7_2275:                             # %if.end.6041
	cmpl	$0, -56(%rbp)
	je	.LBB7_2280
# BB#2276:                              # %if.then.6043
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2278
# BB#2277:                              # %cond.true.6046
	movabsq	$Msg, %rax
	movq	%rax, -15552(%rbp)      # 8-byte Spill
	jmp	.LBB7_2279
.LBB7_2278:                             # %cond.false.6047
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15552(%rbp)      # 8-byte Spill
.LBB7_2279:                             # %cond.end.6051
	movq	-15552(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.246, %rsi
	movzbl	mchar_so+1, %edx
	movzbl	mchar_so+4, %ecx
	xorl	$153, %ecx
	movq	%rax, -15560(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15560(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_2280:                             # %if.end.6055
	jmp	.LBB7_2801
.LBB7_2281:                             # %sw.bb.6056
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	do_source
	jmp	.LBB7_2801
.LBB7_2282:                             # %sw.bb.6057
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_2287
# BB#2283:                              # %if.then.6059
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2285
# BB#2284:                              # %cond.true.6062
	movabsq	$Msg, %rax
	movq	%rax, -15568(%rbp)      # 8-byte Spill
	jmp	.LBB7_2286
.LBB7_2285:                             # %cond.false.6063
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15568(%rbp)      # 8-byte Spill
.LBB7_2286:                             # %cond.end.6067
	movq	-15568(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.247, %rsi
	movabsq	$HostName, %rdx
	movabsq	$SockPath, %rcx
	movq	%rax, -15576(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15576(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	display, %rcx
	movq	376(%rcx), %rdi
	movq	display, %rcx
	addq	$8, %rcx
	movq	%rcx, %rsi
	callq	InputSu
	movl	%eax, -15580(%rbp)      # 4-byte Spill
	jmp	.LBB7_2294
.LBB7_2287:                             # %if.else.6072
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2289
# BB#2288:                              # %if.then.6075
	movq	display, %rax
	movq	376(%rax), %rdi
	movq	display, %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, %rsi
	callq	InputSu
	movl	%eax, -15584(%rbp)      # 4-byte Spill
	jmp	.LBB7_2293
.LBB7_2289:                             # %if.else.6080
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB7_2291
# BB#2290:                              # %if.then.6083
	movabsq	$.L.str.248, %rcx
	movq	display, %rax
	addq	$8, %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rdi
	callq	DoSu
	movq	%rax, -64(%rbp)
	jmp	.LBB7_2292
.LBB7_2291:                             # %if.else.6088
	movq	display, %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, %rdi
	callq	DoSu
	movq	%rax, -64(%rbp)
.LBB7_2292:                             # %if.end.6094
	jmp	.LBB7_2293
.LBB7_2293:                             # %if.end.6095
	jmp	.LBB7_2294
.LBB7_2294:                             # %if.end.6096
	cmpq	$0, -64(%rbp)
	je	.LBB7_2299
# BB#2295:                              # %if.then.6098
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2297
# BB#2296:                              # %cond.true.6101
	movabsq	$Msg, %rax
	movq	%rax, -15592(%rbp)      # 8-byte Spill
	jmp	.LBB7_2298
.LBB7_2297:                             # %cond.false.6102
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15592(%rbp)      # 8-byte Spill
.LBB7_2298:                             # %cond.end.6106
	movq	-15592(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, -15600(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15600(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2299:                             # %if.end.6108
	jmp	.LBB7_2801
.LBB7_2300:                             # %sw.bb.6109
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB7_2303
# BB#2301:                              # %land.lhs.true.6112
	movq	-64(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2303
# BB#2302:                              # %if.then.6115
	movl	$2, %edi
	callq	AddCanvas
	movl	%eax, -15604(%rbp)      # 4-byte Spill
	jmp	.LBB7_2304
.LBB7_2303:                             # %if.else.6117
	movl	$1, %edi
	callq	AddCanvas
	movl	%eax, -15608(%rbp)      # 4-byte Spill
.LBB7_2304:                             # %if.end.6119
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2801
.LBB7_2305:                             # %sw.bb.6120
	callq	RemCanvas
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2801
.LBB7_2306:                             # %sw.bb.6121
	callq	OneCanvas
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2801
.LBB7_2307:                             # %sw.bb.6122
	movq	display, %rax
	movq	336(%rax), %rax
	movl	216(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	%ecx, 208(%rax)
	movq	display, %rax
	movq	336(%rax), %rax
	movl	224(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	%ecx, 212(%rax)
	movq	display, %rax
	movq	336(%rax), %rdi
	callq	RethinkViewportOffsets
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rdi
	movq	display, %rax
	movq	336(%rax), %rax
	movl	220(%rax), %edx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	216(%rax), %edx
	addl	$1, %edx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	228(%rax), %esi
	movq	display, %rax
	movq	336(%rax), %rax
	subl	224(%rax), %esi
	addl	$1, %esi
	movl	%esi, -15612(%rbp)      # 4-byte Spill
	movl	%edx, %esi
	movl	-15612(%rbp), %edx      # 4-byte Reload
	callq	ResizeLayer
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	jmp	.LBB7_2801
.LBB7_2308:                             # %sw.bb.6146
	movq	$0, -7688(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2310
# BB#2309:                              # %lor.lhs.false.6148
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.249, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2314
.LBB7_2310:                             # %if.then.6151
	movq	display, %rax
	movq	336(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2312
# BB#2311:                              # %cond.true.6154
	movq	display, %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -15624(%rbp)      # 8-byte Spill
	jmp	.LBB7_2313
.LBB7_2312:                             # %cond.false.6157
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -15624(%rbp)      # 8-byte Spill
.LBB7_2313:                             # %cond.end.6158
	movq	-15624(%rbp), %rax      # 8-byte Reload
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2349
.LBB7_2314:                             # %if.else.6160
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2322
# BB#2315:                              # %if.then.6163
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -7688(%rbp)
.LBB7_2316:                             # %for.cond.6165
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-7688(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -15625(%rbp)       # 1-byte Spill
	je	.LBB7_2318
# BB#2317:                              # %land.rhs.6168
                                        #   in Loop: Header=BB7_2316 Depth=1
	movq	-7688(%rbp), %rax
	movq	(%rax), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	setne	%dl
	movb	%dl, -15625(%rbp)       # 1-byte Spill
.LBB7_2318:                             # %land.end.6173
                                        #   in Loop: Header=BB7_2316 Depth=1
	movb	-15625(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_2319
	jmp	.LBB7_2321
.LBB7_2319:                             # %for.body.6175
                                        #   in Loop: Header=BB7_2316 Depth=1
	jmp	.LBB7_2320
.LBB7_2320:                             # %for.inc.6176
                                        #   in Loop: Header=BB7_2316 Depth=1
	movq	-7688(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2316
.LBB7_2321:                             # %for.end.6178
	jmp	.LBB7_2348
.LBB7_2322:                             # %if.else.6179
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.250, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2324
# BB#2323:                              # %if.then.6182
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2347
.LBB7_2324:                             # %if.else.6184
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.251, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2330
# BB#2325:                              # %if.then.6187
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -7688(%rbp)
.LBB7_2326:                             # %for.cond.6189
                                        # =>This Inner Loop Header: Depth=1
	movq	-7688(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2329
# BB#2327:                              # %for.body.6192
                                        #   in Loop: Header=BB7_2326 Depth=1
	jmp	.LBB7_2328
.LBB7_2328:                             # %for.inc.6193
                                        #   in Loop: Header=BB7_2326 Depth=1
	movq	-7688(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2326
.LBB7_2329:                             # %for.end.6195
	jmp	.LBB7_2346
.LBB7_2330:                             # %if.else.6196
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.252, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2332
# BB#2331:                              # %if.then.6199
	movq	display, %rax
	movq	336(%rax), %rax
	movl	216(%rax), %edi
	movq	display, %rax
	movq	336(%rax), %rax
	movl	224(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	FindCanvas
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2345
.LBB7_2332:                             # %if.else.6206
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.253, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2334
# BB#2333:                              # %if.then.6209
	movq	display, %rax
	movq	336(%rax), %rax
	movl	216(%rax), %edi
	movq	display, %rax
	movq	336(%rax), %rax
	movl	228(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	FindCanvas
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2344
.LBB7_2334:                             # %if.else.6216
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.254, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2336
# BB#2335:                              # %if.then.6219
	movq	display, %rax
	movq	336(%rax), %rax
	movl	216(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	224(%rax), %esi
	movl	%ecx, %edi
	callq	FindCanvas
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2343
.LBB7_2336:                             # %if.else.6226
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.255, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2338
# BB#2337:                              # %if.then.6229
	movq	display, %rax
	movq	336(%rax), %rax
	movl	220(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	224(%rax), %esi
	movl	%ecx, %edi
	callq	FindCanvas
	movq	%rax, -7688(%rbp)
	jmp	.LBB7_2342
.LBB7_2338:                             # %if.else.6236
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2340
# BB#2339:                              # %cond.true.6239
	movabsq	$Msg, %rax
	movq	%rax, -15640(%rbp)      # 8-byte Spill
	jmp	.LBB7_2341
.LBB7_2340:                             # %cond.false.6240
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15640(%rbp)      # 8-byte Spill
.LBB7_2341:                             # %cond.end.6244
	movq	-15640(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.256, %rsi
	movq	rc_name, %rdx
	movq	%rax, -15648(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15648(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2342:                             # %if.end.6246
	jmp	.LBB7_2343
.LBB7_2343:                             # %if.end.6247
	jmp	.LBB7_2344
.LBB7_2344:                             # %if.end.6248
	jmp	.LBB7_2345
.LBB7_2345:                             # %if.end.6249
	jmp	.LBB7_2346
.LBB7_2346:                             # %if.end.6250
	jmp	.LBB7_2347
.LBB7_2347:                             # %if.end.6251
	jmp	.LBB7_2348
.LBB7_2348:                             # %if.end.6252
	jmp	.LBB7_2349
.LBB7_2349:                             # %if.end.6253
	movq	display, %rdi
	movq	-7688(%rbp), %rsi
	callq	SetForeCanvas
	jmp	.LBB7_2801
.LBB7_2350:                             # %sw.bb.6254
	movl	$0, -48(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB7_2355
# BB#2351:                              # %if.then.6258
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2353
# BB#2352:                              # %cond.true.6261
	movabsq	$Msg, %rax
	movq	%rax, -15656(%rbp)      # 8-byte Spill
	jmp	.LBB7_2354
.LBB7_2353:                             # %cond.false.6262
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15656(%rbp)      # 8-byte Spill
.LBB7_2354:                             # %cond.end.6266
	movq	-15656(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.257, %rsi
	movq	%rax, -15664(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15664(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2355:                             # %if.end.6268
	jmp	.LBB7_2356
.LBB7_2356:                             # %for.cond.6269
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2374
# BB#2357:                              # %for.body.6271
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2359
# BB#2358:                              # %if.then.6274
                                        #   in Loop: Header=BB7_2356 Depth=1
	movl	-48(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2372
.LBB7_2359:                             # %if.else.6276
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2361
# BB#2360:                              # %if.then.6279
                                        #   in Loop: Header=BB7_2356 Depth=1
	movl	-48(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2371
.LBB7_2361:                             # %if.else.6281
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.2, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2363
# BB#2362:                              # %if.then.6284
                                        #   in Loop: Header=BB7_2356 Depth=1
	movl	-48(%rbp), %eax
	orl	$3, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2370
.LBB7_2363:                             # %if.else.6286
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.124, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2365
# BB#2364:                              # %if.then.6289
                                        #   in Loop: Header=BB7_2356 Depth=1
	movl	$2, %eax
	movl	$1, %ecx
	movq	display, %rdx
	movq	336(%rdx), %rdx
	cmpl	$1, 48(%rdx)
	cmovel	%ecx, %eax
	orl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2369
.LBB7_2365:                             # %if.else.6296
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.222, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2367
# BB#2366:                              # %if.then.6299
                                        #   in Loop: Header=BB7_2356 Depth=1
	movl	-48(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2368
.LBB7_2367:                             # %if.else.6301
	jmp	.LBB7_2374
.LBB7_2368:                             # %if.end.6302
                                        #   in Loop: Header=BB7_2356 Depth=1
	jmp	.LBB7_2369
.LBB7_2369:                             # %if.end.6303
                                        #   in Loop: Header=BB7_2356 Depth=1
	jmp	.LBB7_2370
.LBB7_2370:                             # %if.end.6304
                                        #   in Loop: Header=BB7_2356 Depth=1
	jmp	.LBB7_2371
.LBB7_2371:                             # %if.end.6305
                                        #   in Loop: Header=BB7_2356 Depth=1
	jmp	.LBB7_2372
.LBB7_2372:                             # %if.end.6306
                                        #   in Loop: Header=BB7_2356 Depth=1
	jmp	.LBB7_2373
.LBB7_2373:                             # %for.inc.6307
                                        #   in Loop: Header=BB7_2356 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_2356
.LBB7_2374:                             # %for.end.6309
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2380
# BB#2375:                              # %land.lhs.true.6311
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2380
# BB#2376:                              # %if.then.6314
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2378
# BB#2377:                              # %cond.true.6317
	movabsq	$Msg, %rax
	movq	%rax, -15672(%rbp)      # 8-byte Spill
	jmp	.LBB7_2379
.LBB7_2378:                             # %cond.false.6318
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15672(%rbp)      # 8-byte Spill
.LBB7_2379:                             # %cond.end.6322
	movq	-15672(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.258, %rsi
	movq	rc_name, %rdx
	movq	%rax, -15680(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15680(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2380:                             # %if.end.6324
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2382
# BB#2381:                              # %if.then.6326
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	ResizeRegions
	jmp	.LBB7_2383
.LBB7_2382:                             # %if.else.6327
	movl	$20, %esi
	movl	$4, %edx
	movabsq	$ResizeFin, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movslq	-48(%rbp), %rdi
	movq	resizeprompts(,%rdi,8), %rdi
	movl	-48(%rbp), %r9d
	callq	Input
.LBB7_2383:                             # %if.end.6330
	jmp	.LBB7_2801
.LBB7_2384:                             # %sw.bb.6331
	movabsq	$separate_sids, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	movl	%eax, -15684(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_2385:                             # %sw.bb.6333
	movq	-24(%rbp), %rdi
	callq	SaveArgs
	movq	%rax, -24(%rbp)
	movl	$0, -48(%rbp)
.LBB7_2386:                             # %for.cond.6335
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_2391
# BB#2387:                              # %for.body.6339
                                        #   in Loop: Header=BB7_2386 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2389
# BB#2388:                              # %if.then.6344
                                        #   in Loop: Header=BB7_2386 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rdi, -15696(%rbp)      # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -15704(%rbp)      # 8-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movq	-15696(%rbp), %rdi      # 8-byte Reload
	movl	%r8d, %esi
	movq	-15704(%rbp), %rdx      # 8-byte Reload
	callq	Colonfin
.LBB7_2389:                             # %if.end.6351
                                        #   in Loop: Header=BB7_2386 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
# BB#2390:                              # %for.inc.6354
                                        #   in Loop: Header=BB7_2386 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2386
.LBB7_2391:                             # %for.end.6356
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB7_2801
.LBB7_2392:                             # %sw.bb.6357
	movabsq	$use_altscreen, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, -56(%rbp)
	movl	%eax, -15708(%rbp)      # 4-byte Spill
	je	.LBB7_2397
# BB#2393:                              # %if.then.6360
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2395
# BB#2394:                              # %cond.true.6363
	movabsq	$Msg, %rax
	movq	%rax, -15720(%rbp)      # 8-byte Spill
	jmp	.LBB7_2396
.LBB7_2395:                             # %cond.false.6364
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15720(%rbp)      # 8-byte Spill
.LBB7_2396:                             # %cond.end.6368
	movq	-15720(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.259, %rsi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.41, %rdx
	cmpl	$0, use_altscreen
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -15728(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15728(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2397:                             # %if.end.6372
	jmp	.LBB7_2801
.LBB7_2398:                             # %sw.bb.6373
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_2403
# BB#2399:                              # %if.then.6376
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2401
# BB#2400:                              # %cond.true.6379
	movabsq	$Msg, %rax
	movq	%rax, -15736(%rbp)      # 8-byte Spill
	jmp	.LBB7_2402
.LBB7_2401:                             # %cond.false.6380
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15736(%rbp)      # 8-byte Spill
.LBB7_2402:                             # %cond.end.6384
	movq	-15736(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.260, %rsi
	movl	maxwin, %edx
	movq	%rax, -15744(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15744(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2403:                             # %if.end.6386
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	ParseNum
	cmpl	$0, %eax
	je	.LBB7_2405
# BB#2404:                              # %if.then.6389
	jmp	.LBB7_2801
.LBB7_2405:                             # %if.end.6390
	cmpl	$1, -52(%rbp)
	jge	.LBB7_2410
# BB#2406:                              # %if.then.6393
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2408
# BB#2407:                              # %cond.true.6396
	movabsq	$Msg, %rax
	movq	%rax, -15752(%rbp)      # 8-byte Spill
	jmp	.LBB7_2409
.LBB7_2408:                             # %cond.false.6397
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15752(%rbp)      # 8-byte Spill
.LBB7_2409:                             # %cond.end.6401
	movq	-15752(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.261, %rsi
	movq	%rax, -15760(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15760(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2426
.LBB7_2410:                             # %if.else.6403
	cmpl	$2048, -52(%rbp)        # imm = 0x800
	jle	.LBB7_2415
# BB#2411:                              # %if.then.6406
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2413
# BB#2412:                              # %cond.true.6409
	movabsq	$Msg, %rax
	movq	%rax, -15768(%rbp)      # 8-byte Spill
	jmp	.LBB7_2414
.LBB7_2413:                             # %cond.false.6410
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15768(%rbp)      # 8-byte Spill
.LBB7_2414:                             # %cond.end.6414
	movq	-15768(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.262, %rsi
	movq	%rax, -15776(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15776(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2425
.LBB7_2415:                             # %if.else.6416
	movl	-52(%rbp), %eax
	cmpl	maxwin, %eax
	jle	.LBB7_2421
# BB#2416:                              # %land.lhs.true.6419
	cmpq	$0, windows
	je	.LBB7_2421
# BB#2417:                              # %if.then.6421
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2419
# BB#2418:                              # %cond.true.6424
	movabsq	$Msg, %rax
	movq	%rax, -15784(%rbp)      # 8-byte Spill
	jmp	.LBB7_2420
.LBB7_2419:                             # %cond.false.6425
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15784(%rbp)      # 8-byte Spill
.LBB7_2420:                             # %cond.end.6429
	movq	-15784(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.263, %rsi
	movq	%rax, -15792(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15792(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2424
.LBB7_2421:                             # %if.else.6431
	cmpq	$0, windows
	jne	.LBB7_2423
# BB#2422:                              # %if.then.6433
	movq	wtab, %rax
	movslq	-52(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	realloc
	xorl	%esi, %esi
	movq	%rax, wtab
	movq	wtab, %rax
	movslq	-52(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB7_2423:                             # %if.end.6439
	movl	-52(%rbp), %eax
	movl	%eax, maxwin
.LBB7_2424:                             # %if.end.6440
	jmp	.LBB7_2425
.LBB7_2425:                             # %if.end.6441
	jmp	.LBB7_2426
.LBB7_2426:                             # %if.end.6442
	jmp	.LBB7_2801
.LBB7_2427:                             # %sw.bb.6443
	leaq	-52(%rbp), %rdx
	movl	$10, %ecx
	movabsq	$.L.str.264, %r8
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	ParseBase
	cmpl	$0, %eax
	je	.LBB7_2429
# BB#2428:                              # %if.then.6446
	jmp	.LBB7_2801
.LBB7_2429:                             # %if.end.6447
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2431
# BB#2430:                              # %if.then.6450
	xorl	%eax, %eax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-52(%rbp), %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	setbacktick
	jmp	.LBB7_2441
.LBB7_2431:                             # %if.else.6451
	cmpl	$4, -44(%rbp)
	jge	.LBB7_2436
# BB#2432:                              # %if.then.6454
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2434
# BB#2433:                              # %cond.true.6457
	movabsq	$Msg, %rax
	movq	%rax, -15800(%rbp)      # 8-byte Spill
	jmp	.LBB7_2435
.LBB7_2434:                             # %cond.false.6458
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15800(%rbp)      # 8-byte Spill
.LBB7_2435:                             # %cond.end.6462
	movq	-15800(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.265, %rsi
	movq	rc_name, %rdx
	movq	%rax, -15808(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15808(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2436:                             # %if.end.6464
	leaq	-7692(%rbp), %rdx
	movl	$10, %ecx
	movabsq	$.L.str.264, %r8
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	ParseBase
	cmpl	$0, %eax
	je	.LBB7_2438
# BB#2437:                              # %if.then.6468
	jmp	.LBB7_2801
.LBB7_2438:                             # %if.end.6469
	leaq	-7696(%rbp), %rdx
	movl	$10, %ecx
	movabsq	$.L.str.264, %r8
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	ParseBase
	cmpl	$0, %eax
	je	.LBB7_2440
# BB#2439:                              # %if.then.6473
	jmp	.LBB7_2801
.LBB7_2440:                             # %if.end.6474
	movl	-52(%rbp), %edi
	movl	-7692(%rbp), %esi
	movl	-7696(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	%edi, -15812(%rbp)      # 4-byte Spill
	movq	%rax, %rdi
	movl	%edx, -15816(%rbp)      # 4-byte Spill
	movl	%esi, -15820(%rbp)      # 4-byte Spill
	callq	SaveArgs
	movl	-15812(%rbp), %edi      # 4-byte Reload
	movl	-15820(%rbp), %esi      # 4-byte Reload
	movl	-15816(%rbp), %edx      # 4-byte Reload
	movq	%rax, %rcx
	callq	setbacktick
.LBB7_2441:                             # %if.end.6477
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$96, %esi
	callq	WindowChanged
	jmp	.LBB7_2801
.LBB7_2442:                             # %sw.bb.6478
	cmpq	$0, blankerprg
	je	.LBB7_2444
# BB#2443:                              # %if.then.6480
	movq	blankerprg, %rdi
	callq	RunBlanker
	jmp	.LBB7_2801
.LBB7_2444:                             # %if.end.6481
	callq	ClearAll
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	CursorVisibility
	movq	display, %rax
	movl	$4, 7812(%rax)
	jmp	.LBB7_2801
.LBB7_2445:                             # %sw.bb.6482
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_2460
# BB#2446:                              # %if.then.6485
	cmpq	$0, blankerprg
	je	.LBB7_2455
# BB#2447:                              # %if.then.6487
	leaq	-11792(%rbp), %rax
	movq	%rax, -11800(%rbp)
	movq	blankerprg, %rax
	movq	%rax, -11808(%rbp)
.LBB7_2448:                             # %for.cond.6491
                                        # =>This Inner Loop Header: Depth=1
	movq	-11808(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2451
# BB#2449:                              # %for.body.6493
                                        #   in Loop: Header=BB7_2448 Depth=1
	movabsq	$.L.str.207, %rdx
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	leaq	-11792(%rbp), %rsi
	movq	-11800(%rbp), %rdi
	movq	-11800(%rbp), %r8
	subq	%rsi, %r8
	subq	%r8, %rcx
	subq	$1, %rcx
	movq	-11808(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -15832(%rbp)      # 8-byte Spill
	movq	%rcx, %rsi
	movq	-15832(%rbp), %rcx      # 8-byte Reload
	movb	$0, %al
	callq	snprintf
	movq	-11800(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -11800(%rbp)
# BB#2450:                              # %for.inc.6502
                                        #   in Loop: Header=BB7_2448 Depth=1
	movq	-11808(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -11808(%rbp)
	jmp	.LBB7_2448
.LBB7_2451:                             # %for.end.6504
	movq	-11800(%rbp), %rax
	movb	$0, -1(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2453
# BB#2452:                              # %cond.true.6508
	movabsq	$Msg, %rax
	movq	%rax, -15840(%rbp)      # 8-byte Spill
	jmp	.LBB7_2454
.LBB7_2453:                             # %cond.false.6509
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15840(%rbp)      # 8-byte Spill
.LBB7_2454:                             # %cond.end.6513
	movq	-15840(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.266, %rsi
	leaq	-11792(%rbp), %rdx
	movq	%rax, -15848(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15848(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2459
.LBB7_2455:                             # %if.else.6516
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2457
# BB#2456:                              # %cond.true.6519
	movabsq	$Msg, %rax
	movq	%rax, -15856(%rbp)      # 8-byte Spill
	jmp	.LBB7_2458
.LBB7_2457:                             # %cond.false.6520
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15856(%rbp)      # 8-byte Spill
.LBB7_2458:                             # %cond.end.6524
	movq	-15856(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.267, %rsi
	movq	%rax, -15864(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15864(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2459:                             # %if.end.6526
	jmp	.LBB7_2801
.LBB7_2460:                             # %if.end.6527
	cmpq	$0, blankerprg
	je	.LBB7_2466
# BB#2461:                              # %if.then.6529
	movq	blankerprg, %rax
	movq	%rax, -11816(%rbp)
.LBB7_2462:                             # %for.cond.6531
                                        # =>This Inner Loop Header: Depth=1
	movq	-11816(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2465
# BB#2463:                              # %for.body.6533
                                        #   in Loop: Header=BB7_2462 Depth=1
	movq	-11816(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
# BB#2464:                              # %for.inc.6534
                                        #   in Loop: Header=BB7_2462 Depth=1
	movq	-11816(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -11816(%rbp)
	jmp	.LBB7_2462
.LBB7_2465:                             # %for.end.6536
	movq	blankerprg, %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, blankerprg
.LBB7_2466:                             # %if.end.6537
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2468
# BB#2467:                              # %if.then.6541
	movq	-24(%rbp), %rdi
	callq	SaveArgs
	movq	%rax, blankerprg
.LBB7_2468:                             # %if.end.6543
	jmp	.LBB7_2801
.LBB7_2469:                             # %sw.bb.6544
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2489
# BB#2470:                              # %if.then.6546
	movq	display, %rax
	movq	%rax, -11824(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2472
# BB#2471:                              # %if.then.6550
	movl	$0, idletimo
	jmp	.LBB7_2475
.LBB7_2472:                             # %if.else.6551
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2474
# BB#2473:                              # %if.then.6555
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	imull	$1000, %eax, %eax       # imm = 0x3E8
	movl	%eax, idletimo
.LBB7_2474:                             # %if.end.6558
	jmp	.LBB7_2475
.LBB7_2475:                             # %if.end.6559
	cmpl	$1, -44(%rbp)
	jle	.LBB7_2484
# BB#2476:                              # %if.then.6562
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindCommnr
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	jne	.LBB7_2481
# BB#2477:                              # %if.then.6567
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2479
# BB#2478:                              # %cond.true.6570
	movabsq	$Msg, %rax
	movq	%rax, -15872(%rbp)      # 8-byte Spill
	jmp	.LBB7_2480
.LBB7_2479:                             # %cond.false.6571
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15872(%rbp)      # 8-byte Spill
.LBB7_2480:                             # %cond.end.6575
	movq	-15872(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.268, %rsi
	movq	rc_name, %rdx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -15880(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15880(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2481:                             # %if.end.6578
	movl	-48(%rbp), %edi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	CheckArgNum
	cmpl	$0, %eax
	jge	.LBB7_2483
# BB#2482:                              # %if.then.6583
	jmp	.LBB7_2801
.LBB7_2483:                             # %if.end.6584
	movabsq	$idleaction, %rdi
	callq	ClearAction
	movabsq	$idleaction, %rdi
	movl	-48(%rbp), %esi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdx
	callq	SaveAction
.LBB7_2484:                             # %if.end.6587
	movq	displays, %rax
	movq	%rax, display
.LBB7_2485:                             # %for.cond.6588
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_2488
# BB#2486:                              # %for.body.6590
                                        #   in Loop: Header=BB7_2485 Depth=1
	callq	ResetIdle
# BB#2487:                              # %for.inc.6591
                                        #   in Loop: Header=BB7_2485 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_2485
.LBB7_2488:                             # %for.end.6593
	movq	-11824(%rbp), %rax
	movq	%rax, display
.LBB7_2489:                             # %if.end.6594
	cmpl	$0, -56(%rbp)
	je	.LBB7_2500
# BB#2490:                              # %if.then.6596
	cmpl	$0, idletimo
	je	.LBB7_2495
# BB#2491:                              # %if.then.6598
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2493
# BB#2492:                              # %cond.true.6601
	movabsq	$Msg, %rax
	movq	%rax, -15888(%rbp)      # 8-byte Spill
	jmp	.LBB7_2494
.LBB7_2493:                             # %cond.false.6602
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15888(%rbp)      # 8-byte Spill
.LBB7_2494:                             # %cond.end.6606
	movq	-15888(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.269, %rsi
	movabsq	$comms, %rcx
	movl	$1000, %edx             # imm = 0x3E8
	movl	idletimo, %r8d
	movq	%rax, -15896(%rbp)      # 8-byte Spill
	movl	%r8d, %eax
	movl	%edx, -15900(%rbp)      # 4-byte Spill
	cltd
	movl	-15900(%rbp), %r8d      # 4-byte Reload
	idivl	%r8d
	movslq	idleaction, %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rcx
	movq	(%rcx), %rcx
	movl	%eax, %edx
	movb	$0, %al
	movq	-15896(%rbp), %r9       # 8-byte Reload
	callq	*%r9
	jmp	.LBB7_2499
.LBB7_2495:                             # %if.else.6612
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2497
# BB#2496:                              # %cond.true.6615
	movabsq	$Msg, %rax
	movq	%rax, -15912(%rbp)      # 8-byte Spill
	jmp	.LBB7_2498
.LBB7_2497:                             # %cond.false.6616
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15912(%rbp)      # 8-byte Spill
.LBB7_2498:                             # %cond.end.6620
	movq	-15912(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.270, %rsi
	movq	%rax, -15920(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15920(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2499:                             # %if.end.6622
	jmp	.LBB7_2500
.LBB7_2500:                             # %if.end.6623
	jmp	.LBB7_2801
.LBB7_2501:                             # %sw.bb.6624
	movl	$0, -48(%rbp)
.LBB7_2502:                             # %for.cond.6625
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$2, -48(%rbp)
	movb	%cl, -15921(%rbp)       # 1-byte Spill
	jge	.LBB7_2504
# BB#2503:                              # %land.rhs.6628
                                        #   in Loop: Header=BB7_2502 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	setne	%dl
	movb	%dl, -15921(%rbp)       # 1-byte Spill
.LBB7_2504:                             # %land.end.6632
                                        #   in Loop: Header=BB7_2502 Depth=1
	movb	-15921(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_2505
	jmp	.LBB7_2514
.LBB7_2505:                             # %for.body.6634
                                        #   in Loop: Header=BB7_2502 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.271, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_2507
# BB#2506:                              # %lor.lhs.false.6639
                                        #   in Loop: Header=BB7_2502 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.272, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2508
.LBB7_2507:                             # %if.then.6644
                                        #   in Loop: Header=BB7_2502 Depth=1
	movl	$-1, -52(%rbp)
	jmp	.LBB7_2509
.LBB7_2508:                             # %if.else.6645
                                        #   in Loop: Header=BB7_2502 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
.LBB7_2509:                             # %if.end.6649
                                        #   in Loop: Header=BB7_2502 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB7_2511
# BB#2510:                              # %if.then.6652
                                        #   in Loop: Header=BB7_2502 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, focusminwidth
	jmp	.LBB7_2512
.LBB7_2511:                             # %if.else.6653
                                        #   in Loop: Header=BB7_2502 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, focusminheight
.LBB7_2512:                             # %if.end.6654
                                        #   in Loop: Header=BB7_2502 Depth=1
	jmp	.LBB7_2513
.LBB7_2513:                             # %for.inc.6655
                                        #   in Loop: Header=BB7_2502 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2502
.LBB7_2514:                             # %for.end.6657
	cmpl	$0, -56(%rbp)
	je	.LBB7_2529
# BB#2515:                              # %if.then.6659
	movl	$0, -48(%rbp)
.LBB7_2516:                             # %for.cond.6660
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -48(%rbp)
	jge	.LBB7_2525
# BB#2517:                              # %for.body.6663
                                        #   in Loop: Header=BB7_2516 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB7_2519
# BB#2518:                              # %cond.true.6666
                                        #   in Loop: Header=BB7_2516 Depth=1
	movl	focusminwidth, %eax
	movl	%eax, -15928(%rbp)      # 4-byte Spill
	jmp	.LBB7_2520
.LBB7_2519:                             # %cond.false.6667
                                        #   in Loop: Header=BB7_2516 Depth=1
	movl	focusminheight, %eax
	movl	%eax, -15928(%rbp)      # 4-byte Spill
.LBB7_2520:                             # %cond.end.6668
                                        #   in Loop: Header=BB7_2516 Depth=1
	movl	-15928(%rbp), %eax      # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.LBB7_2522
# BB#2521:                              # %if.then.6672
                                        #   in Loop: Header=BB7_2516 Depth=1
	leaq	-11872(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	$.L.str.271, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -15936(%rbp)      # 8-byte Spill
	jmp	.LBB7_2523
.LBB7_2522:                             # %if.else.6677
                                        #   in Loop: Header=BB7_2516 Depth=1
	movabsq	$.L.str.1, %rsi
	leaq	-11872(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-52(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -15940(%rbp)      # 4-byte Spill
.LBB7_2523:                             # %if.end.6682
                                        #   in Loop: Header=BB7_2516 Depth=1
	jmp	.LBB7_2524
.LBB7_2524:                             # %for.inc.6683
                                        #   in Loop: Header=BB7_2516 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_2516
.LBB7_2525:                             # %for.end.6685
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2527
# BB#2526:                              # %cond.true.6688
	movabsq	$Msg, %rax
	movq	%rax, -15952(%rbp)      # 8-byte Spill
	jmp	.LBB7_2528
.LBB7_2527:                             # %cond.false.6689
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15952(%rbp)      # 8-byte Spill
.LBB7_2528:                             # %cond.end.6693
	movq	-15952(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.273, %rsi
	leaq	-11872(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$20, %rdx
	movq	%rdx, -15960(%rbp)      # 8-byte Spill
	movq	%rcx, %rdx
	movq	-15960(%rbp), %rcx      # 8-byte Reload
	movq	%rax, -15968(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15968(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_2529:                             # %if.end.6699
	jmp	.LBB7_2801
.LBB7_2530:                             # %sw.bb.6700
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2538
# BB#2531:                              # %if.then.6702
	movq	fore, %rax
	movq	$0, 9528(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2537
# BB#2532:                              # %if.then.6706
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	WindowByName
	movq	fore, %rdi
	movq	%rax, 9528(%rdi)
	movq	fore, %rax
	movq	9528(%rax), %rax
	cmpq	fore, %rax
	je	.LBB7_2535
# BB#2533:                              # %lor.lhs.false.6712
	movq	fore, %rax
	cmpq	$0, 9528(%rax)
	je	.LBB7_2536
# BB#2534:                              # %land.lhs.true.6715
	movq	fore, %rax
	movq	9528(%rax), %rax
	cmpl	$3, 8(%rax)
	je	.LBB7_2536
.LBB7_2535:                             # %if.then.6719
	movq	fore, %rax
	movq	$0, 9528(%rax)
.LBB7_2536:                             # %if.end.6721
	jmp	.LBB7_2537
.LBB7_2537:                             # %if.end.6722
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$119, %esi
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	WindowChanged
.LBB7_2538:                             # %if.end.6723
	cmpl	$0, -56(%rbp)
	je	.LBB7_2549
# BB#2539:                              # %if.then.6725
	movq	fore, %rax
	cmpq	$0, 9528(%rax)
	je	.LBB7_2544
# BB#2540:                              # %if.then.6728
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2542
# BB#2541:                              # %cond.true.6731
	movabsq	$Msg, %rax
	movq	%rax, -15976(%rbp)      # 8-byte Spill
	jmp	.LBB7_2543
.LBB7_2542:                             # %cond.false.6732
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15976(%rbp)      # 8-byte Spill
.LBB7_2543:                             # %cond.end.6736
	movq	-15976(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.274, %rsi
	movq	fore, %rcx
	movq	9528(%rcx), %rcx
	movl	192(%rcx), %edx
	movq	fore, %rcx
	movq	9528(%rcx), %rcx
	movq	8736(%rcx), %rcx
	movq	%rax, -15984(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-15984(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2548
.LBB7_2544:                             # %if.else.6742
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2546
# BB#2545:                              # %cond.true.6745
	movabsq	$Msg, %rax
	movq	%rax, -15992(%rbp)      # 8-byte Spill
	jmp	.LBB7_2547
.LBB7_2546:                             # %cond.false.6746
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -15992(%rbp)      # 8-byte Spill
.LBB7_2547:                             # %cond.end.6750
	movq	-15992(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.275, %rsi
	movq	%rax, -16000(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16000(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2548:                             # %if.end.6752
	jmp	.LBB7_2549
.LBB7_2549:                             # %if.end.6753
	jmp	.LBB7_2801
.LBB7_2550:                             # %sw.bb.6754
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.92, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2570
# BB#2551:                              # %if.then.6758
	cmpq	$0, display
	jne	.LBB7_2559
# BB#2552:                              # %if.then.6760
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2554
# BB#2553:                              # %if.then.6763
	jmp	.LBB7_2801
.LBB7_2554:                             # %if.end.6764
	cmpq	$0, layout_attach
	je	.LBB7_2556
# BB#2555:                              # %lor.lhs.false.6766
	movabsq	$layout_last_marker, %rax
	cmpq	%rax, layout_attach
	jne	.LBB7_2557
.LBB7_2556:                             # %if.then.6769
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	CreateLayout
	movq	%rax, layout_attach
	jmp	.LBB7_2558
.LBB7_2557:                             # %if.else.6772
	movq	layout_attach, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	RenameLayout
.LBB7_2558:                             # %if.end.6774
	jmp	.LBB7_2801
.LBB7_2559:                             # %if.end.6775
	movq	display, %rax
	cmpq	$0, 344(%rax)
	jne	.LBB7_2564
# BB#2560:                              # %if.then.6777
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2562
# BB#2561:                              # %cond.true.6780
	movabsq	$Msg, %rax
	movq	%rax, -16008(%rbp)      # 8-byte Spill
	jmp	.LBB7_2563
.LBB7_2562:                             # %cond.false.6781
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16008(%rbp)      # 8-byte Spill
.LBB7_2563:                             # %cond.end.6785
	movq	-16008(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.276, %rsi
	movq	%rax, -16016(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16016(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2564:                             # %if.end.6787
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2569
# BB#2565:                              # %if.then.6790
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2567
# BB#2566:                              # %cond.true.6793
	movabsq	$Msg, %rax
	movq	%rax, -16024(%rbp)      # 8-byte Spill
	jmp	.LBB7_2568
.LBB7_2567:                             # %cond.false.6794
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16024(%rbp)      # 8-byte Spill
.LBB7_2568:                             # %cond.end.6798
	movq	-16024(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.277, %rsi
	movq	display, %rcx
	movq	344(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	display, %rcx
	movq	344(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -16032(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16032(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2569:                             # %if.end.6802
	movq	display, %rax
	movq	344(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	RenameLayout
	jmp	.LBB7_2791
.LBB7_2570:                             # %if.else.6805
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.278, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2588
# BB#2571:                              # %if.then.6809
	cmpq	$0, display
	jne	.LBB7_2577
# BB#2572:                              # %if.then.6811
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2576
# BB#2573:                              # %land.lhs.true.6814
	cmpq	$0, layout_attach
	je	.LBB7_2576
# BB#2574:                              # %land.lhs.true.6816
	movabsq	$layout_last_marker, %rax
	cmpq	%rax, layout_attach
	je	.LBB7_2576
# BB#2575:                              # %if.then.6819
	movq	layout_attach, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -16040(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-16040(%rbp), %rdi      # 8-byte Reload
	movl	%eax, %esi
	callq	RenumberLayout
	movl	%eax, -16044(%rbp)      # 4-byte Spill
.LBB7_2576:                             # %if.end.6823
	jmp	.LBB7_2801
.LBB7_2577:                             # %if.end.6824
	movq	display, %rax
	cmpq	$0, 344(%rax)
	jne	.LBB7_2582
# BB#2578:                              # %if.then.6827
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2580
# BB#2579:                              # %cond.true.6830
	movabsq	$Msg, %rax
	movq	%rax, -16056(%rbp)      # 8-byte Spill
	jmp	.LBB7_2581
.LBB7_2580:                             # %cond.false.6831
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16056(%rbp)      # 8-byte Spill
.LBB7_2581:                             # %cond.end.6835
	movq	-16056(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.276, %rsi
	movq	%rax, -16064(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16064(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2582:                             # %if.end.6837
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2587
# BB#2583:                              # %if.then.6840
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2585
# BB#2584:                              # %cond.true.6843
	movabsq	$Msg, %rax
	movq	%rax, -16072(%rbp)      # 8-byte Spill
	jmp	.LBB7_2586
.LBB7_2585:                             # %cond.false.6844
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16072(%rbp)      # 8-byte Spill
.LBB7_2586:                             # %cond.end.6848
	movq	-16072(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.279, %rsi
	movq	display, %rcx
	movq	344(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	display, %rcx
	movq	344(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -16080(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16080(%rbp), %r8       # 8-byte Reload
	callq	*%r8
	jmp	.LBB7_2801
.LBB7_2587:                             # %if.end.6854
	movq	display, %rax
	movq	344(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -16088(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-16088(%rbp), %rdi      # 8-byte Reload
	movl	%eax, %esi
	callq	RenumberLayout
	movl	%eax, -16092(%rbp)      # 4-byte Spill
	jmp	.LBB7_2801
.LBB7_2588:                             # %if.else.6859
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.280, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2622
# BB#2589:                              # %if.then.6863
	cmpq	$0, display
	jne	.LBB7_2600
# BB#2590:                              # %if.then.6865
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2599
# BB#2591:                              # %land.lhs.true.6868
	cmpq	$0, layout_attach
	je	.LBB7_2599
# BB#2592:                              # %land.lhs.true.6870
	movabsq	$layout_last_marker, %rax
	cmpq	%rax, layout_attach
	je	.LBB7_2599
# BB#2593:                              # %if.then.6873
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2595
# BB#2594:                              # %if.then.6877
	movq	layout_attach, %rax
	movl	$1, 352(%rax)
	jmp	.LBB7_2598
.LBB7_2595:                             # %if.else.6878
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2597
# BB#2596:                              # %if.then.6882
	movq	layout_attach, %rax
	movl	$0, 352(%rax)
.LBB7_2597:                             # %if.end.6884
	jmp	.LBB7_2598
.LBB7_2598:                             # %if.end.6885
	jmp	.LBB7_2599
.LBB7_2599:                             # %if.end.6886
	jmp	.LBB7_2801
.LBB7_2600:                             # %if.end.6887
	movq	display, %rax
	cmpq	$0, 344(%rax)
	jne	.LBB7_2605
# BB#2601:                              # %if.then.6890
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2603
# BB#2602:                              # %cond.true.6893
	movabsq	$Msg, %rax
	movq	%rax, -16104(%rbp)      # 8-byte Spill
	jmp	.LBB7_2604
.LBB7_2603:                             # %cond.false.6894
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16104(%rbp)      # 8-byte Spill
.LBB7_2604:                             # %cond.end.6898
	movq	-16104(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.276, %rsi
	movq	%rax, -16112(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16112(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2605:                             # %if.end.6900
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2616
# BB#2606:                              # %if.then.6903
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2608
# BB#2607:                              # %if.then.6907
	movq	display, %rax
	movq	344(%rax), %rax
	movl	$1, 352(%rax)
	jmp	.LBB7_2615
.LBB7_2608:                             # %if.else.6910
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2610
# BB#2609:                              # %if.then.6914
	movq	display, %rax
	movq	344(%rax), %rax
	movl	$0, 352(%rax)
	jmp	.LBB7_2614
.LBB7_2610:                             # %if.else.6917
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2612
# BB#2611:                              # %cond.true.6920
	movabsq	$Msg, %rax
	movq	%rax, -16120(%rbp)      # 8-byte Spill
	jmp	.LBB7_2613
.LBB7_2612:                             # %cond.false.6921
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16120(%rbp)      # 8-byte Spill
.LBB7_2613:                             # %cond.end.6925
	movq	-16120(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.281, %rsi
	movq	%rax, -16128(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16128(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2614:                             # %if.end.6927
	jmp	.LBB7_2615
.LBB7_2615:                             # %if.end.6928
	jmp	.LBB7_2616
.LBB7_2616:                             # %if.end.6929
	cmpl	$0, -56(%rbp)
	je	.LBB7_2621
# BB#2617:                              # %if.then.6931
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2619
# BB#2618:                              # %cond.true.6934
	movabsq	$Msg, %rax
	movq	%rax, -16136(%rbp)      # 8-byte Spill
	jmp	.LBB7_2620
.LBB7_2619:                             # %cond.false.6935
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16136(%rbp)      # 8-byte Spill
.LBB7_2620:                             # %cond.end.6939
	movq	-16136(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.282, %rsi
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	movq	display, %r8
	movq	344(%r8), %r8
	cmpl	$0, 352(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16144(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16144(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2621:                             # %if.end.6945
	jmp	.LBB7_2789
.LBB7_2622:                             # %if.else.6946
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.283, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2641
# BB#2623:                              # %if.then.6950
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -11880(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -11880(%rbp)
	je	.LBB7_2637
# BB#2624:                              # %if.then.6954
	jmp	.LBB7_2625
.LBB7_2625:                             # %while.cond.6955
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-11880(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -16145(%rbp)       # 1-byte Spill
	jl	.LBB7_2627
# BB#2626:                              # %land.rhs.6959
                                        #   in Loop: Header=BB7_2625 Depth=1
	movq	-11880(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -16145(%rbp)       # 1-byte Spill
.LBB7_2627:                             # %land.end.6963
                                        #   in Loop: Header=BB7_2625 Depth=1
	movb	-16145(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_2628
	jmp	.LBB7_2629
.LBB7_2628:                             # %while.body.6965
                                        #   in Loop: Header=BB7_2625 Depth=1
	movq	-11880(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -11880(%rbp)
	jmp	.LBB7_2625
.LBB7_2629:                             # %while.end.6967
	movq	-11880(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB7_2635
# BB#2630:                              # %land.lhs.true.6971
	movq	-11880(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_2632
# BB#2631:                              # %lor.lhs.false.6973
	movq	-11880(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB7_2635
.LBB7_2632:                             # %if.then.6977
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
	movq	-11880(%rbp), %rdi
	cmpb	$0, (%rdi)
	je	.LBB7_2634
# BB#2633:                              # %if.then.6981
	movq	-11880(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -11880(%rbp)
.LBB7_2634:                             # %if.end.6983
	jmp	.LBB7_2636
.LBB7_2635:                             # %if.else.6984
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -11880(%rbp)
.LBB7_2636:                             # %if.end.6986
	jmp	.LBB7_2637
.LBB7_2637:                             # %if.end.6987
	cmpq	$0, -11880(%rbp)
	je	.LBB7_2639
# BB#2638:                              # %lor.lhs.false.6989
	movq	-11880(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_2640
.LBB7_2639:                             # %if.then.6991
	movabsq	$.L.str.284, %rax
	movq	%rax, -11880(%rbp)
.LBB7_2640:                             # %if.end.6992
	movq	-11880(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	NewLayout
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2788
.LBB7_2641:                             # %if.else.6993
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.285, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2650
# BB#2642:                              # %if.then.6997
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2647
# BB#2643:                              # %if.then.7000
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2645
# BB#2644:                              # %cond.true.7003
	movabsq	$Msg, %rax
	movq	%rax, -16160(%rbp)      # 8-byte Spill
	jmp	.LBB7_2646
.LBB7_2645:                             # %cond.false.7004
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16160(%rbp)      # 8-byte Spill
.LBB7_2646:                             # %cond.end.7008
	movq	-16160(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.286, %rsi
	movq	%rax, -16168(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16168(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2647:                             # %if.end.7010
	cmpq	$0, display
	je	.LBB7_2649
# BB#2648:                              # %if.then.7012
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	SaveLayout
.LBB7_2649:                             # %if.end.7014
	jmp	.LBB7_2787
.LBB7_2650:                             # %if.else.7015
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.287, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2658
# BB#2651:                              # %if.then.7019
	cmpq	$0, display
	jne	.LBB7_2655
# BB#2652:                              # %if.then.7021
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2654
# BB#2653:                              # %if.then.7024
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindLayout
	movq	%rax, layout_attach
.LBB7_2654:                             # %if.end.7027
	jmp	.LBB7_2801
.LBB7_2655:                             # %if.end.7028
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2657
# BB#2656:                              # %if.then.7031
	movabsq	$.L.str.288, %rdi
	movl	$20, %esi
	xorl	%eax, %eax
	movabsq	$SelectLayoutFin, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
	jmp	.LBB7_2801
.LBB7_2657:                             # %if.end.7032
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -16176(%rbp)      # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -16184(%rbp)      # 8-byte Spill
	callq	strlen
	movl	%eax, %esi
	movq	-16176(%rbp), %rdi      # 8-byte Reload
	movq	-16184(%rbp), %rdx      # 8-byte Reload
	callq	SelectLayoutFin
	jmp	.LBB7_2786
.LBB7_2658:                             # %if.else.7037
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.249, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2681
# BB#2659:                              # %if.then.7041
	cmpq	$0, display
	jne	.LBB7_2667
# BB#2660:                              # %if.then.7043
	cmpq	$0, layout_attach
	je	.LBB7_2666
# BB#2661:                              # %land.lhs.true.7045
	movabsq	$layout_last_marker, %rax
	cmpq	%rax, layout_attach
	je	.LBB7_2666
# BB#2662:                              # %if.then.7048
	movq	layout_attach, %rax
	cmpq	$0, (%rax)
	je	.LBB7_2664
# BB#2663:                              # %cond.true.7050
	movq	layout_attach, %rax
	movq	(%rax), %rax
	movq	%rax, -16192(%rbp)      # 8-byte Spill
	jmp	.LBB7_2665
.LBB7_2664:                             # %cond.false.7052
	movq	layouts, %rax
	movq	%rax, -16192(%rbp)      # 8-byte Spill
.LBB7_2665:                             # %cond.end.7053
	movq	-16192(%rbp), %rax      # 8-byte Reload
	movq	%rax, layout_attach
.LBB7_2666:                             # %if.end.7055
	jmp	.LBB7_2801
.LBB7_2667:                             # %if.end.7056
	movq	display, %rax
	movq	344(%rax), %rax
	movq	%rax, -11888(%rbp)
	cmpq	$0, -11888(%rbp)
	je	.LBB7_2672
# BB#2668:                              # %if.then.7059
	movq	-11888(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2670
# BB#2669:                              # %cond.true.7062
	movq	-11888(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16200(%rbp)      # 8-byte Spill
	jmp	.LBB7_2671
.LBB7_2670:                             # %cond.false.7064
	movq	layouts, %rax
	movq	%rax, -16200(%rbp)      # 8-byte Spill
.LBB7_2671:                             # %cond.end.7065
	movq	-16200(%rbp), %rax      # 8-byte Reload
	movq	%rax, -11888(%rbp)
	jmp	.LBB7_2673
.LBB7_2672:                             # %if.else.7067
	movq	layouts, %rax
	movq	%rax, -11888(%rbp)
.LBB7_2673:                             # %if.end.7068
	cmpq	$0, -11888(%rbp)
	jne	.LBB7_2678
# BB#2674:                              # %if.then.7070
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2676
# BB#2675:                              # %cond.true.7073
	movabsq	$Msg, %rax
	movq	%rax, -16208(%rbp)      # 8-byte Spill
	jmp	.LBB7_2677
.LBB7_2676:                             # %cond.false.7074
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16208(%rbp)      # 8-byte Spill
.LBB7_2677:                             # %cond.end.7078
	movq	-16208(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.289, %rsi
	movq	%rax, -16216(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16216(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2678:                             # %if.end.7080
	movq	-11888(%rbp), %rax
	movq	display, %rcx
	cmpq	344(%rcx), %rax
	jne	.LBB7_2680
# BB#2679:                              # %if.then.7084
	jmp	.LBB7_2801
.LBB7_2680:                             # %if.end.7085
	movq	-11888(%rbp), %rdi
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	LoadLayout
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2785
.LBB7_2681:                             # %if.else.7087
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2704
# BB#2682:                              # %if.then.7091
	cmpq	$0, display
	je	.LBB7_2684
# BB#2683:                              # %cond.true.7094
	movq	display, %rax
	movq	344(%rax), %rax
	movq	%rax, -16224(%rbp)      # 8-byte Spill
	jmp	.LBB7_2685
.LBB7_2684:                             # %cond.false.7096
	movq	layout_attach, %rax
	movq	%rax, -16224(%rbp)      # 8-byte Spill
.LBB7_2685:                             # %cond.end.7097
	movq	-16224(%rbp), %rax      # 8-byte Reload
	movq	%rax, -11896(%rbp)
	movq	-11896(%rbp), %rax
	movq	%rax, -11904(%rbp)
	cmpq	$0, -11896(%rbp)
	je	.LBB7_2693
# BB#2686:                              # %if.then.7100
	movq	layouts, %rax
	movq	%rax, -11896(%rbp)
.LBB7_2687:                             # %for.cond.7101
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-11896(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -16225(%rbp)       # 1-byte Spill
	je	.LBB7_2689
# BB#2688:                              # %land.rhs.7104
                                        #   in Loop: Header=BB7_2687 Depth=1
	movq	-11896(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-11904(%rbp), %rax
	setne	%cl
	movb	%cl, -16225(%rbp)       # 1-byte Spill
.LBB7_2689:                             # %land.end.7108
                                        #   in Loop: Header=BB7_2687 Depth=1
	movb	-16225(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_2690
	jmp	.LBB7_2692
.LBB7_2690:                             # %for.body.7110
                                        #   in Loop: Header=BB7_2687 Depth=1
	jmp	.LBB7_2691
.LBB7_2691:                             # %for.inc.7111
                                        #   in Loop: Header=BB7_2687 Depth=1
	movq	-11896(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -11896(%rbp)
	jmp	.LBB7_2687
.LBB7_2692:                             # %for.end.7113
	jmp	.LBB7_2694
.LBB7_2693:                             # %if.else.7114
	movq	layouts, %rax
	movq	%rax, -11896(%rbp)
.LBB7_2694:                             # %if.end.7115
	cmpq	$0, display
	jne	.LBB7_2696
# BB#2695:                              # %if.then.7117
	movq	-11896(%rbp), %rax
	movq	%rax, layout_attach
	jmp	.LBB7_2801
.LBB7_2696:                             # %if.end.7118
	cmpq	$0, -11896(%rbp)
	jne	.LBB7_2701
# BB#2697:                              # %if.then.7120
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2699
# BB#2698:                              # %cond.true.7123
	movabsq	$Msg, %rax
	movq	%rax, -16240(%rbp)      # 8-byte Spill
	jmp	.LBB7_2700
.LBB7_2699:                             # %cond.false.7124
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16240(%rbp)      # 8-byte Spill
.LBB7_2700:                             # %cond.end.7128
	movq	-16240(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.289, %rsi
	movq	%rax, -16248(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16248(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2701:                             # %if.end.7130
	movq	-11896(%rbp), %rax
	movq	display, %rcx
	cmpq	344(%rcx), %rax
	jne	.LBB7_2703
# BB#2702:                              # %if.then.7134
	jmp	.LBB7_2801
.LBB7_2703:                             # %if.end.7135
	movq	-11896(%rbp), %rdi
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	LoadLayout
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
	jmp	.LBB7_2784
.LBB7_2704:                             # %if.else.7137
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.290, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2734
# BB#2705:                              # %if.then.7141
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB7_2722
# BB#2706:                              # %if.then.7144
	cmpq	$0, layout_attach
	jne	.LBB7_2711
# BB#2707:                              # %if.then.7146
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2709
# BB#2708:                              # %cond.true.7149
	movabsq	$Msg, %rax
	movq	%rax, -16256(%rbp)      # 8-byte Spill
	jmp	.LBB7_2710
.LBB7_2709:                             # %cond.false.7150
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16256(%rbp)      # 8-byte Spill
.LBB7_2710:                             # %cond.end.7154
	movq	-16256(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.291, %rsi
	movq	%rax, -16264(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16264(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2721
.LBB7_2711:                             # %if.else.7156
	movabsq	$layout_last_marker, %rax
	cmpq	%rax, layout_attach
	jne	.LBB7_2716
# BB#2712:                              # %if.then.7159
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2714
# BB#2713:                              # %cond.true.7162
	movabsq	$Msg, %rax
	movq	%rax, -16272(%rbp)      # 8-byte Spill
	jmp	.LBB7_2715
.LBB7_2714:                             # %cond.false.7163
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16272(%rbp)      # 8-byte Spill
.LBB7_2715:                             # %cond.end.7167
	movq	-16272(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.292, %rsi
	movq	%rax, -16280(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16280(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2720
.LBB7_2716:                             # %if.else.7169
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2718
# BB#2717:                              # %cond.true.7172
	movabsq	$Msg, %rax
	movq	%rax, -16288(%rbp)      # 8-byte Spill
	jmp	.LBB7_2719
.LBB7_2718:                             # %cond.false.7173
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16288(%rbp)      # 8-byte Spill
.LBB7_2719:                             # %cond.end.7177
	movq	-16288(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.293, %rsi
	movq	layout_attach, %rcx
	movl	16(%rcx), %edx
	movq	layout_attach, %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -16296(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16296(%rbp), %r8       # 8-byte Reload
	callq	*%r8
.LBB7_2720:                             # %if.end.7181
	jmp	.LBB7_2721
.LBB7_2721:                             # %if.end.7182
	jmp	.LBB7_2801
.LBB7_2722:                             # %if.end.7183
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.294, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2724
# BB#2723:                              # %if.then.7187
	movabsq	$layout_last_marker, %rax
	movq	%rax, layout_attach
	jmp	.LBB7_2733
.LBB7_2724:                             # %if.else.7188
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_2726
# BB#2725:                              # %if.then.7192
	movq	$0, layout_attach
	jmp	.LBB7_2732
.LBB7_2726:                             # %if.else.7193
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindLayout
	movq	%rax, -11912(%rbp)
	cmpq	$0, -11912(%rbp)
	jne	.LBB7_2731
# BB#2727:                              # %if.then.7198
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2729
# BB#2728:                              # %cond.true.7201
	movabsq	$Msg, %rax
	movq	%rax, -16304(%rbp)      # 8-byte Spill
	jmp	.LBB7_2730
.LBB7_2729:                             # %cond.false.7202
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16304(%rbp)      # 8-byte Spill
.LBB7_2730:                             # %cond.end.7206
	movq	-16304(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.295, %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, -16312(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16312(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2731:                             # %if.end.7209
	movq	-11912(%rbp), %rax
	movq	%rax, layout_attach
.LBB7_2732:                             # %if.end.7210
	jmp	.LBB7_2733
.LBB7_2733:                             # %if.end.7211
	jmp	.LBB7_2783
.LBB7_2734:                             # %if.else.7212
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.296, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2736
# BB#2735:                              # %if.then.7216
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	ShowLayouts
	jmp	.LBB7_2782
.LBB7_2736:                             # %if.else.7217
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.297, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2753
# BB#2737:                              # %if.then.7221
	cmpq	$0, display
	je	.LBB7_2739
# BB#2738:                              # %cond.true.7224
	movq	display, %rax
	movq	344(%rax), %rax
	movq	%rax, -16320(%rbp)      # 8-byte Spill
	jmp	.LBB7_2740
.LBB7_2739:                             # %cond.false.7226
	movq	layouts, %rax
	movq	%rax, -16320(%rbp)      # 8-byte Spill
.LBB7_2740:                             # %cond.end.7227
	movq	-16320(%rbp), %rax      # 8-byte Reload
	movq	%rax, -11920(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_2750
# BB#2741:                              # %if.then.7231
	cmpq	$0, layouts
	je	.LBB7_2743
# BB#2742:                              # %cond.true.7233
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	FindLayout
	movq	%rax, -16328(%rbp)      # 8-byte Spill
	jmp	.LBB7_2744
.LBB7_2743:                             # %cond.false.7236
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16328(%rbp)      # 8-byte Spill
	jmp	.LBB7_2744
.LBB7_2744:                             # %cond.end.7237
	movq	-16328(%rbp), %rax      # 8-byte Reload
	movq	%rax, -11920(%rbp)
	cmpq	$0, -11920(%rbp)
	jne	.LBB7_2749
# BB#2745:                              # %if.then.7240
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2747
# BB#2746:                              # %cond.true.7243
	movabsq	$Msg, %rax
	movq	%rax, -16336(%rbp)      # 8-byte Spill
	jmp	.LBB7_2748
.LBB7_2747:                             # %cond.false.7244
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16336(%rbp)      # 8-byte Spill
.LBB7_2748:                             # %cond.end.7248
	movq	-16336(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.295, %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, -16344(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16344(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2801
.LBB7_2749:                             # %if.end.7251
	jmp	.LBB7_2750
.LBB7_2750:                             # %if.end.7252
	cmpq	$0, -11920(%rbp)
	je	.LBB7_2752
# BB#2751:                              # %if.then.7254
	movq	-11920(%rbp), %rdi
	callq	RemoveLayout
.LBB7_2752:                             # %if.end.7255
	jmp	.LBB7_2781
.LBB7_2753:                             # %if.else.7256
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.298, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_2776
# BB#2754:                              # %if.then.7260
	cmpq	$0, display
	jne	.LBB7_2759
# BB#2755:                              # %if.then.7262
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2757
# BB#2756:                              # %cond.true.7265
	movabsq	$Msg, %rax
	movq	%rax, -16352(%rbp)      # 8-byte Spill
	jmp	.LBB7_2758
.LBB7_2757:                             # %cond.false.7266
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16352(%rbp)      # 8-byte Spill
.LBB7_2758:                             # %cond.end.7270
	movq	-16352(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.299, %rsi
	movq	%rax, -16360(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16360(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2775
.LBB7_2759:                             # %if.else.7272
	movq	display, %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	movq	%rax, -16368(%rbp)      # 8-byte Spill
	je	.LBB7_2761
# BB#2760:                              # %cond.true.7276
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16376(%rbp)      # 8-byte Spill
	jmp	.LBB7_2762
.LBB7_2761:                             # %cond.false.7278
	movabsq	$.L.str.300, %rax
	movq	%rax, -16376(%rbp)      # 8-byte Spill
	jmp	.LBB7_2762
.LBB7_2762:                             # %cond.end.7279
	movq	-16376(%rbp), %rax      # 8-byte Reload
	movq	-16368(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	LayoutDumpCanvas
	cmpl	$0, %eax
	jne	.LBB7_2767
# BB#2763:                              # %if.then.7283
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2765
# BB#2764:                              # %cond.true.7286
	movabsq	$Msg, %rax
	movq	%rax, -16384(%rbp)      # 8-byte Spill
	jmp	.LBB7_2766
.LBB7_2765:                             # %cond.false.7287
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16384(%rbp)      # 8-byte Spill
.LBB7_2766:                             # %cond.end.7291
	movq	-16384(%rbp), %rax      # 8-byte Reload
	movq	%rax, -16392(%rbp)      # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.301, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	movq	-16392(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
	jmp	.LBB7_2774
.LBB7_2767:                             # %if.else.7294
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2769
# BB#2768:                              # %cond.true.7297
	movabsq	$Msg, %rax
	movq	%rax, -16400(%rbp)      # 8-byte Spill
	jmp	.LBB7_2770
.LBB7_2769:                             # %cond.false.7298
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16400(%rbp)      # 8-byte Spill
.LBB7_2770:                             # %cond.end.7302
	movq	-16400(%rbp), %rax      # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	movq	%rax, -16408(%rbp)      # 8-byte Spill
	je	.LBB7_2772
# BB#2771:                              # %cond.true.7306
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16416(%rbp)      # 8-byte Spill
	jmp	.LBB7_2773
.LBB7_2772:                             # %cond.false.7308
	movabsq	$.L.str.300, %rax
	movq	%rax, -16416(%rbp)      # 8-byte Spill
	jmp	.LBB7_2773
.LBB7_2773:                             # %cond.end.7309
	movq	-16416(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.302, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	movq	-16408(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2774:                             # %if.end.7311
	jmp	.LBB7_2775
.LBB7_2775:                             # %if.end.7312
	jmp	.LBB7_2780
.LBB7_2776:                             # %if.else.7313
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2778
# BB#2777:                              # %cond.true.7316
	movabsq	$Msg, %rax
	movq	%rax, -16424(%rbp)      # 8-byte Spill
	jmp	.LBB7_2779
.LBB7_2778:                             # %cond.false.7317
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16424(%rbp)      # 8-byte Spill
.LBB7_2779:                             # %cond.end.7321
	movq	-16424(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.303, %rsi
	movq	%rax, -16432(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16432(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2780:                             # %if.end.7323
	jmp	.LBB7_2781
.LBB7_2781:                             # %if.end.7324
	jmp	.LBB7_2782
.LBB7_2782:                             # %if.end.7325
	jmp	.LBB7_2783
.LBB7_2783:                             # %if.end.7326
	jmp	.LBB7_2784
.LBB7_2784:                             # %if.end.7327
	jmp	.LBB7_2785
.LBB7_2785:                             # %if.end.7328
	jmp	.LBB7_2786
.LBB7_2786:                             # %if.end.7329
	jmp	.LBB7_2787
.LBB7_2787:                             # %if.end.7330
	jmp	.LBB7_2788
.LBB7_2788:                             # %if.end.7331
	jmp	.LBB7_2789
.LBB7_2789:                             # %if.end.7332
	jmp	.LBB7_2790
.LBB7_2790:                             # %if.end.7333
	jmp	.LBB7_2791
.LBB7_2791:                             # %if.end.7334
	jmp	.LBB7_2801
.LBB7_2792:                             # %sw.bb.7335
	movabsq	$cjkwidth, %rsi
	movq	-8(%rbp), %rdi
	callq	ParseSwitch
	cmpl	$0, %eax
	jne	.LBB7_2799
# BB#2793:                              # %if.then.7339
	cmpl	$0, -56(%rbp)
	je	.LBB7_2798
# BB#2794:                              # %if.then.7341
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB7_2796
# BB#2795:                              # %cond.true.7344
	movabsq	$Msg, %rax
	movq	%rax, -16440(%rbp)      # 8-byte Spill
	jmp	.LBB7_2797
.LBB7_2796:                             # %cond.false.7345
	movabsq	$Dummy, %rax
	movabsq	$QueryMsg, %rcx
	cmpl	$0, queryflag
	cmovgeq	%rcx, %rax
	movq	%rax, -16440(%rbp)      # 8-byte Spill
.LBB7_2797:                             # %cond.end.7349
	movq	-16440(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.304, %rsi
	movabsq	$.L.str.306, %rcx
	movabsq	$.L.str.305, %rdx
	cmpl	$0, cjkwidth
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16448(%rbp)      # 8-byte Spill
	movb	$0, %al
	movq	-16448(%rbp), %rcx      # 8-byte Reload
	callq	*%rcx
.LBB7_2798:                             # %if.end.7353
	jmp	.LBB7_2799
.LBB7_2799:                             # %if.end.7354
	jmp	.LBB7_2801
.LBB7_2800:                             # %sw.default.7355
	jmp	.LBB7_2801
.LBB7_2801:                             # %sw.epilog.7356
	movq	display, %rax
	cmpq	-80(%rbp), %rax
	je	.LBB7_2809
# BB#2802:                              # %if.then.7359
	movq	displays, %rax
	movq	%rax, display
.LBB7_2803:                             # %for.cond.7360
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_2808
# BB#2804:                              # %for.body.7362
                                        #   in Loop: Header=BB7_2803 Depth=1
	movq	display, %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_2806
# BB#2805:                              # %if.then.7365
	jmp	.LBB7_2808
.LBB7_2806:                             # %if.end.7366
                                        #   in Loop: Header=BB7_2803 Depth=1
	jmp	.LBB7_2807
.LBB7_2807:                             # %for.inc.7367
                                        #   in Loop: Header=BB7_2803 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_2803
.LBB7_2808:                             # %for.end.7369
	jmp	.LBB7_2809
.LBB7_2809:                             # %if.end.7370
	addq	$16448, %rsp            # imm = 0x4040
	popq	%rbp
	retq
.Lfunc_end7:
	.size	DoAction, .Lfunc_end7-DoAction
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1868
	.quad	.LBB7_1868
	.quad	.LBB7_1869
	.quad	.LBB7_1877
	.quad	.LBB7_1916
	.quad	.LBB7_1175
	.quad	.LBB7_1868
	.quad	.LBB7_1366
	.quad	.LBB7_2392
	.quad	.LBB7_243
	.quad	.LBB7_2202
	.quad	.LBB7_1644
	.quad	.LBB7_79
	.quad	.LBB7_2427
	.quad	.LBB7_2006
	.quad	.LBB7_1158
	.quad	.LBB7_1158
	.quad	.LBB7_1667
	.quad	.LBB7_1710
	.quad	.LBB7_2442
	.quad	.LBB7_2445
	.quad	.LBB7_556
	.quad	.LBB7_521
	.quad	.LBB7_1164
	.quad	.LBB7_1429
	.quad	.LBB7_1426
	.quad	.LBB7_1999
	.quad	.LBB7_1319
	.quad	.LBB7_1868
	.quad	.LBB7_2172
	.quad	.LBB7_1028
	.quad	.LBB7_2792
	.quad	.LBB7_745
	.quad	.LBB7_1432
	.quad	.LBB7_685
	.quad	.LBB7_493
	.quad	.LBB7_1613
	.quad	.LBB7_1343
	.quad	.LBB7_850
	.quad	.LBB7_1612
	.quad	.LBB7_161
	.quad	.LBB7_69
	.quad	.LBB7_1221
	.quad	.LBB7_521
	.quad	.LBB7_1220
	.quad	.LBB7_2172
	.quad	.LBB7_2066
	.quad	.LBB7_1018
	.quad	.LBB7_1204
	.quad	.LBB7_1222
	.quad	.LBB7_2159
	.quad	.LBB7_2066
	.quad	.LBB7_127
	.quad	.LBB7_1197
	.quad	.LBB7_1630
	.quad	.LBB7_1223
	.quad	.LBB7_1226
	.quad	.LBB7_1970
	.quad	.LBB7_86
	.quad	.LBB7_1534
	.quad	.LBB7_1037
	.quad	.LBB7_1240
	.quad	.LBB7_1583
	.quad	.LBB7_2072
	.quad	.LBB7_1219
	.quad	.LBB7_723
	.quad	.LBB7_152
	.quad	.LBB7_2131
	.quad	.LBB7_492
	.quad	.LBB7_789
	.quad	.LBB7_109
	.quad	.LBB7_1136
	.quad	.LBB7_2013
	.quad	.LBB7_1005
	.quad	.LBB7_2385
	.quad	.LBB7_1936
	.quad	.LBB7_2307
	.quad	.LBB7_703
	.quad	.LBB7_2308
	.quad	.LBB7_2501
	.quad	.LBB7_1987
	.quad	.LBB7_2530
	.quad	.LBB7_110
	.quad	.LBB7_1621
	.quad	.LBB7_1040
	.quad	.LBB7_1252
	.quad	.LBB7_561
	.quad	.LBB7_839
	.quad	.LBB7_856
	.quad	.LBB7_2169
	.quad	.LBB7_2469
	.quad	.LBB7_999
	.quad	.LBB7_491
	.quad	.LBB7_2013
	.quad	.LBB7_136
	.quad	.LBB7_689
	.quad	.LBB7_2550
	.quad	.LBB7_849
	.quad	.LBB7_560
	.quad	.LBB7_128
	.quad	.LBB7_1052
	.quad	.LBB7_1182
	.quad	.LBB7_1078
	.quad	.LBB7_1867
	.quad	.LBB7_1866
	.quad	.LBB7_1850
	.quad	.LBB7_1597
	.quad	.LBB7_2398
	.quad	.LBB7_516
	.quad	.LBB7_749
	.quad	.LBB7_1229
	.quad	.LBB7_1405
	.quad	.LBB7_1398
	.quad	.LBB7_1928
	.quad	.LBB7_1620
	.quad	.LBB7_130
	.quad	.LBB7_1937
	.quad	.LBB7_1433
	.quad	.LBB7_96
	.quad	.LBB7_2306
	.quad	.LBB7_509
	.quad	.LBB7_1377
	.quad	.LBB7_1646
	.quad	.LBB7_866
	.quad	.LBB7_1605
	.quad	.LBB7_556
	.quad	.LBB7_157
	.quad	.LBB7_1176
	.quad	.LBB7_133
	.quad	.LBB7_2112
	.quad	.LBB7_438
	.quad	.LBB7_149
	.quad	.LBB7_969
	.quad	.LBB7_367
	.quad	.LBB7_477
	.quad	.LBB7_402
	.quad	.LBB7_2305
	.quad	.LBB7_998
	.quad	.LBB7_2252
	.quad	.LBB7_746
	.quad	.LBB7_2350
	.quad	.LBB7_695
	.quad	.LBB7_1535
	.quad	.LBB7_46
	.quad	.LBB7_1546
	.quad	.LBB7_1575
	.quad	.LBB7_2384
	.quad	.LBB7_1037
	.quad	.LBB7_1115
	.quad	.LBB7_1488
	.quad	.LBB7_1412
	.quad	.LBB7_1123
	.quad	.LBB7_1584
	.quad	.LBB7_2269
	.quad	.LBB7_1465
	.quad	.LBB7_2281
	.quad	.LBB7_2300
	.quad	.LBB7_1645
	.quad	.LBB7_446
	.quad	.LBB7_2282
	.quad	.LBB7_129
	.quad	.LBB7_1124
	.quad	.LBB7_1116
	.quad	.LBB7_1116
	.quad	.LBB7_1116
	.quad	.LBB7_485
	.quad	.LBB7_673
	.quad	.LBB7_1916
	.quad	.LBB7_210
	.quad	.LBB7_1582
	.quad	.LBB7_2080
	.quad	.LBB7_1378
	.quad	.LBB7_1622
	.quad	.LBB7_1391
	.quad	.LBB7_1243
	.quad	.LBB7_481
	.quad	.LBB7_239
	.quad	.LBB7_561
	.quad	.LBB7_790
	.quad	.LBB7_478
	.quad	.LBB7_696
	.quad	.LBB7_938
	.quad	.LBB7_729
	.quad	.LBB7_520
	.quad	.LBB7_519
	.quad	.LBB7_168
	.quad	.LBB7_218
	.quad	.LBB7_1458

	.text
	.globl	FindCommnr
	.align	16, 0x90
	.type	FindCommnr,@function
FindCommnr:                             # @FindCommnr
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
	movl	$0, -28(%rbp)
	movl	$187, -32(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB8_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$comms, %rax
	movl	$2, %ecx
	movl	-28(%rbp), %edx
	addl	-32(%rbp), %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	movq	-40(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	movq	(%r8), %rsi
	callq	strcmp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_8
.LBB8_4:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -20(%rbp)
	jge	.LBB8_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.5
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_10
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1
.LBB8_9:                                # %while.end
	movl	$-1, -4(%rbp)
.LBB8_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	FindCommnr, .Lfunc_end8-FindCommnr
	.cfi_endproc

	.align	16, 0x90
	.type	CheckArgNum,@function
CheckArgNum:                            # @CheckArgNum
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movabsq	$comms, %rax
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movslq	-16(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rax
	movl	8(%rax), %edi
	andl	$3, %edi
	movl	%edi, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_3
.LBB9_3:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	je	.LBB9_8
# BB#5:                                 # %if.then
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB9_7
# BB#6:                                 # %if.then.8
	xorl	%edi, %edi
	movabsq	$.L.str.345, %rsi
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.209, %rcx
	movabsq	$comms, %rdx
	movq	rc_name, %r8
	movslq	-16(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rdx
	movq	(%rdx), %rdx
	movslq	-32(%rbp), %r9
	movq	CheckArgNum.argss(,%r9,8), %r9
	cmpl	$1, -32(%rbp)
	cmovneq	%rcx, %rax
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%r9, %r8
	movq	%rax, %r9
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_7:                                # %if.end
	jmp	.LBB9_63
.LBB9_8:                                # %if.else
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB9_17
# BB#9:                                 # %land.lhs.true
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB9_17
# BB#10:                                # %land.lhs.true.24
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	je	.LBB9_17
# BB#11:                                # %if.then.30
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_16
# BB#12:                                # %land.lhs.true.32
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_16
# BB#13:                                # %land.lhs.true.34
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.37
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_16
# BB#15:                                # %if.then.40
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+24, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$1, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movl	-32(%rbp), %r11d
	addl	$2, %r11d
	movslq	%r11d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r10
	movl	-32(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %rbx
	movq	CheckArgNum.argss(,%rbx,8), %rbx
	movq	%r10, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_16:                               # %if.end.55
	jmp	.LBB9_62
.LBB9_17:                               # %if.else.56
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB9_24
# BB#18:                                # %land.lhs.true.62
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB9_24
# BB#19:                                # %if.then.68
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_23
# BB#20:                                # %land.lhs.true.70
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_23
# BB#21:                                # %land.lhs.true.73
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_23
# BB#22:                                # %if.then.76
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+16, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$1, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movl	-32(%rbp), %r11d
	addl	$2, %r11d
	movslq	%r11d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_23:                               # %if.end.88
	jmp	.LBB9_61
.LBB9_24:                               # %if.else.89
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB9_31
# BB#25:                                # %land.lhs.true.95
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	je	.LBB9_31
# BB#26:                                # %if.then.101
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_30
# BB#27:                                # %land.lhs.true.103
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_30
# BB#28:                                # %land.lhs.true.106
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_30
# BB#29:                                # %if.then.109
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+16, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$1, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movl	-32(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_30:                               # %if.end.121
	jmp	.LBB9_60
.LBB9_31:                               # %if.else.122
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB9_38
# BB#32:                                # %land.lhs.true.128
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	je	.LBB9_38
# BB#33:                                # %if.then.134
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_37
# BB#34:                                # %land.lhs.true.136
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_37
# BB#35:                                # %land.lhs.true.139
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_37
# BB#36:                                # %if.then.142
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+16, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movl	-32(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_37:                               # %if.end.154
	jmp	.LBB9_59
.LBB9_38:                               # %if.else.155
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB9_43
# BB#39:                                # %if.then.161
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_42
# BB#40:                                # %land.lhs.true.163
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_42
# BB#41:                                # %if.then.166
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.209, %rcx
	movabsq	$comms, %rdx
	movq	CheckArgNum.orformat+8, %rsi
	movq	rc_name, %r8
	movslq	-16(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rdx
	movq	(%rdx), %rdx
	movslq	-32(%rbp), %r9
	movq	CheckArgNum.argss(,%r9,8), %r9
	movl	-32(%rbp), %r10d
	addl	$1, %r10d
	movslq	%r10d, %r11
	movq	CheckArgNum.argss(,%r11,8), %r11
	cmpl	$0, -32(%rbp)
	cmovneq	%rcx, %rax
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r9, %r8
	movq	%r11, %r9
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_42:                               # %if.end.177
	jmp	.LBB9_58
.LBB9_43:                               # %if.else.178
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB9_48
# BB#44:                                # %if.then.184
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_47
# BB#45:                                # %land.lhs.true.186
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_47
# BB#46:                                # %if.then.189
	xorl	%edi, %edi
	movabsq	$.L.str.209, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+8, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_47:                               # %if.end.198
	jmp	.LBB9_57
.LBB9_48:                               # %if.else.199
	movabsq	$comms, %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	je	.LBB9_53
# BB#49:                                # %if.then.205
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_52
# BB#50:                                # %land.lhs.true.207
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	je	.LBB9_52
# BB#51:                                # %if.then.210
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$comms, %rcx
	movq	CheckArgNum.orformat+8, %rsi
	movq	rc_name, %rdx
	movslq	-16(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %r8
	movq	CheckArgNum.argss(,%r8,8), %r8
	movl	-32(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r10
	movq	CheckArgNum.argss(,%r10,8), %r9
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_52:                               # %if.end.219
	jmp	.LBB9_56
.LBB9_53:                               # %if.else.220
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB9_55
# BB#54:                                # %if.then.222
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.209, %rcx
	movabsq	$comms, %rdx
	movq	CheckArgNum.orformat, %rsi
	movq	rc_name, %r8
	movslq	-16(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rdx
	movq	(%rdx), %rdx
	movslq	-32(%rbp), %r9
	movq	CheckArgNum.argss(,%r9,8), %r9
	cmpl	$1, -32(%rbp)
	cmovneq	%rcx, %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r9, %r8
	movq	%rax, %r9
	movb	$0, %al
	callq	Msg
	movl	$-1, -12(%rbp)
	jmp	.LBB9_64
.LBB9_55:                               # %if.end.230
	jmp	.LBB9_56
.LBB9_56:                               # %if.end.231
	jmp	.LBB9_57
.LBB9_57:                               # %if.end.232
	jmp	.LBB9_58
.LBB9_58:                               # %if.end.233
	jmp	.LBB9_59
.LBB9_59:                               # %if.end.234
	jmp	.LBB9_60
.LBB9_60:                               # %if.end.235
	jmp	.LBB9_61
.LBB9_61:                               # %if.end.236
	jmp	.LBB9_62
.LBB9_62:                               # %if.end.237
	jmp	.LBB9_63
.LBB9_63:                               # %if.end.238
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_64:                               # %return
	movl	-12(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	CheckArgNum, .Lfunc_end9-CheckArgNum
	.cfi_endproc

	.align	16, 0x90
	.type	InputSelect,@function
InputSelect:                            # @InputSelect
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
	movabsq	$.L.str.402, %rdi
	movl	$20, %esi
	xorl	%eax, %eax
	movabsq	$SelectFin, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
	popq	%rbp
	retq
.Lfunc_end10:
	.size	InputSelect, .Lfunc_end10-InputSelect
	.cfi_endproc

	.globl	SetForeWindow
	.align	16, 0x90
	.type	SetForeWindow,@function
SetForeWindow:                          # @SetForeWindow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, display
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, fore
	jmp	.LBB11_7
.LBB11_2:                               # %if.end
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	display, %rax
	movq	336(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	SetCanvasWindow
	cmpq	$0, -16(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	movl	$117, %esi
	movq	-16(%rbp), %rdi
	callq	WindowChanged
.LBB11_4:                               # %if.end.3
	cmpq	$0, -8(%rbp)
	je	.LBB11_6
# BB#5:                                 # %if.then.5
	movl	$117, %esi
	movq	-8(%rbp), %rdi
	callq	WindowChanged
.LBB11_6:                               # %if.end.6
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
.LBB11_7:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	SetForeWindow, .Lfunc_end11-SetForeWindow
	.cfi_endproc

	.globl	Activate
	.align	16, 0x90
	.type	Activate,@function
Activate:                               # @Activate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB12_2
.LBB12_2:                               # %do.end
	cmpq	$0, display
	jne	.LBB12_4
# BB#3:                                 # %if.then
	jmp	.LBB12_13
.LBB12_4:                               # %if.end
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB12_6
# BB#5:                                 # %if.then.1
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.41, %rdx
	movb	$0, %al
	callq	Msg
	callq	RemoveStatus
.LBB12_6:                               # %if.end.2
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rdi
	callq	MayResizeLayer
	cmpl	$0, %eax
	je	.LBB12_8
# BB#7:                                 # %if.then.4
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rdi
	movq	display, %rax
	movq	336(%rax), %rax
	movl	220(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	216(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	movl	228(%rax), %edx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	224(%rax), %edx
	addl	$1, %edx
	movq	display, %rax
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	ResizeLayer
.LBB12_8:                               # %if.end.13
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	cmpq	$0, fore
	je	.LBB12_12
# BB#9:                                 # %if.then.15
	movq	fore, %rax
	cmpl	$0, 10836(%rax)
	je	.LBB12_11
# BB#10:                                # %if.then.17
	movq	fore, %rax
	movl	$1, 10836(%rax)
.LBB12_11:                              # %if.end.19
	movl	$102, %esi
	movq	fore, %rax
	movl	$0, 10816(%rax)
	movq	fore, %rdi
	callq	WindowChanged
.LBB12_12:                              # %if.end.20
	movl	-4(%rbp), %eax
	addl	all_norefresh, %eax
	movl	%eax, %edi
	callq	Redisplay
.LBB12_13:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Activate, .Lfunc_end12-Activate
	.cfi_endproc

	.align	16, 0x90
	.type	ParseWinNum,@function
ParseWinNum:                            # @ParseWinNum
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
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_3
.LBB13_2:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.321, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	WindowByNoN
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB13_5
# BB#4:                                 # %if.then.4
	xorl	%edi, %edi
	movabsq	$.L.str.359, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB13_8
.LBB13_5:                               # %if.end.9
	jmp	.LBB13_6
.LBB13_6:                               # %do.body
	jmp	.LBB13_7
.LBB13_7:                               # %do.end
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
.LBB13_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ParseWinNum, .Lfunc_end13-ParseWinNum
	.cfi_endproc

	.globl	SwitchWindow
	.align	16, 0x90
	.type	SwitchWindow,@function
SwitchWindow:                           # @SwitchWindow
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB14_2
.LBB14_2:                               # %do.end
	cmpl	$0, -4(%rbp)
	jl	.LBB14_4
# BB#3:                                 # %lor.lhs.false
	movl	-4(%rbp), %eax
	cmpl	maxwin, %eax
	jl	.LBB14_5
.LBB14_4:                               # %if.then
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	ShowWindows
	jmp	.LBB14_14
.LBB14_5:                               # %if.end
	movslq	-4(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB14_7
# BB#6:                                 # %if.then.3
	movl	-4(%rbp), %edi
	callq	ShowWindows
	jmp	.LBB14_14
.LBB14_7:                               # %if.end.4
	cmpq	$0, display
	jne	.LBB14_9
# BB#8:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, fore
	jmp	.LBB14_14
.LBB14_9:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB14_11
# BB#10:                                # %if.then.9
	xorl	%edi, %edi
	movabsq	$.L.str.324, %rsi
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.10
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB14_13
# BB#12:                                # %if.then.11
	xorl	%edi, %edi
	movabsq	$.L.str.325, %rsi
	movq	-16(%rbp), %rax
	movl	192(%rax), %edx
	movb	$0, %al
	callq	Msg
	jmp	.LBB14_14
.LBB14_13:                              # %if.end.12
	movq	-16(%rbp), %rdi
	callq	SetForeWindow
	movq	fore, %rdi
	movsbl	10849(%rdi), %edi
	callq	Activate
.LBB14_14:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	SwitchWindow, .Lfunc_end14-SwitchWindow
	.cfi_endproc

	.align	16, 0x90
	.type	ParseOnOff,@function
ParseOnOff:                             # @ParseOnOff
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	.LBB15_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_3
# BB#2:                                 # %if.then.4
	movl	$1, -28(%rbp)
	jmp	.LBB15_6
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_5
# BB#4:                                 # %if.then.8
	movl	$0, -28(%rbp)
.LBB15_5:                               # %if.end
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.9
	jmp	.LBB15_7
.LBB15_7:                               # %if.end.10
	cmpl	$0, -28(%rbp)
	jge	.LBB15_9
# BB#8:                                 # %if.then.12
	xorl	%edi, %edi
	movabsq	$.L.str.357, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB15_10
.LBB15_9:                               # %if.end.14
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
.LBB15_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ParseOnOff, .Lfunc_end15-ParseOnOff
	.cfi_endproc

	.globl	ParseNum
	.align	16, 0x90
	.type	ParseNum,@function
ParseNum:                               # @ParseNum
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB16_3
# BB#2:                                 # %lor.lhs.false.4
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_4
.LBB16_3:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.322, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB16_14
.LBB16_4:                               # %if.end
	movl	$0, -28(%rbp)
.LBB16_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB16_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB16_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB16_5 Depth=1
	imull	$10, -28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_10
.LBB16_9:                               # %if.else
	xorl	%edi, %edi
	movabsq	$.L.str.323, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB16_14
.LBB16_10:                              # %if.end.19
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB16_5
.LBB16_11:                              # %while.end
	jmp	.LBB16_12
.LBB16_12:                              # %do.body
	jmp	.LBB16_13
.LBB16_13:                              # %do.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
.LBB16_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ParseNum, .Lfunc_end16-ParseNum
	.cfi_endproc

	.globl	ParseSwitch
	.align	16, 0x90
	.type	ParseSwitch,@function
ParseSwitch:                            # @ParseSwitch
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpq	$0, (%rsi)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	xorl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	ParseOnOff
	movl	%eax, -4(%rbp)
.LBB17_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ParseSwitch, .Lfunc_end17-ParseSwitch
	.cfi_endproc

	.align	16, 0x90
	.type	LogToggle,@function
LogToggle:                              # @LogToggle
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
	subq	$1056, %rsp             # imm = 0x420
	movl	%edi, -4(%rbp)
	movq	fore, %rax
	cmpq	$0, 10824(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	cmpl	-4(%rbp), %edi
	jne	.LBB18_5
# BB#1:                                 # %if.then
	cmpq	$0, display
	je	.LBB18_4
# BB#2:                                 # %land.lhs.true
	movq	rc_name, %rax
	cmpb	$0, (%rax)
	jne	.LBB18_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	movabsq	$.L.str.364, %rsi
	movabsq	$.L.str.366, %rax
	movabsq	$.L.str.365, %rcx
	cmpl	$0, -4(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
.LBB18_4:                               # %if.end
	jmp	.LBB18_13
.LBB18_5:                               # %if.end.6
	movq	fore, %rax
	cmpq	$0, 10824(%rax)
	je	.LBB18_7
# BB#6:                                 # %if.then.10
	xorl	%edi, %edi
	movabsq	$.L.str.367, %rsi
	movq	fore, %rax
	movq	10824(%rax), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	Msg
	movq	fore, %rdx
	movq	10824(%rdx), %rdi
	callq	logfclose
	movl	$102, %esi
	movq	fore, %rdx
	movq	$0, 10824(%rdx)
	movq	fore, %rdi
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	callq	WindowChanged
	jmp	.LBB18_13
.LBB18_7:                               # %if.end.14
	movl	$1024, %edx             # imm = 0x400
	leaq	-1040(%rbp), %rsi
	movq	fore, %rdi
	callq	DoStartLog
	cmpl	$0, %eax
	je	.LBB18_9
# BB#8:                                 # %if.then.17
	callq	__errno_location
	movabsq	$.L.str.113, %rsi
	leaq	-1040(%rbp), %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB18_13
.LBB18_9:                               # %if.end.20
	movq	fore, %rax
	movq	10824(%rax), %rax
	movq	8(%rax), %rdi
	callq	ftell
	cmpq	$0, %rax
	jne	.LBB18_11
# BB#10:                                # %if.then.25
	xorl	%edi, %edi
	movabsq	$.L.str.368, %rsi
	movq	fore, %rax
	movq	10824(%rax), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB18_12
.LBB18_11:                              # %if.else
	xorl	%edi, %edi
	movabsq	$.L.str.369, %rsi
	movq	fore, %rax
	movq	10824(%rax), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	Msg
.LBB18_12:                              # %if.end.30
	movl	$102, %esi
	movq	fore, %rdi
	callq	WindowChanged
.LBB18_13:                              # %return
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end18:
	.size	LogToggle, .Lfunc_end18-LogToggle
	.cfi_endproc

	.align	16, 0x90
	.type	MoreWindows,@function
MoreWindows:                            # @MoreWindows
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
	subq	$16, %rsp
	movabsq	$.L.str.362, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, windows
	je	.LBB19_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, fore
	je	.LBB19_3
# BB#2:                                 # %lor.lhs.false
	movq	windows, %rax
	cmpq	$0, (%rax)
	je	.LBB19_4
.LBB19_3:                               # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
	cmpq	$0, fore
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	xorl	%edi, %edi
	movabsq	$.L.str.363, %rsi
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.4
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	fore, %rax
	movl	192(%rax), %edx
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
.LBB19_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	MoreWindows, .Lfunc_end19-MoreWindows
	.cfi_endproc

	.align	16, 0x90
	.type	NextWindow,@function
NextWindow:                             # @NextWindow
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
	cmpq	$0, fore
	je	.LBB20_2
# BB#1:                                 # %cond.true
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movl	maxwin, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB20_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpq	$0, fore
	je	.LBB20_5
# BB#4:                                 # %cond.true.2
	movq	fore, %rax
	movq	9528(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_5:                               # %cond.false.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_6:                               # %cond.end.4
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, fore
	je	.LBB20_8
# BB#7:                                 # %cond.true.7
	movq	wtab, %rax
	movslq	-20(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_9
.LBB20_8:                               # %cond.false.9
	movq	wtab, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB20_9:                               # %cond.end.10
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB20_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	je	.LBB20_20
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB20_10 Depth=1
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	movslq	maxwin, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB20_10 Depth=1
	movq	wtab, %rax
	movq	%rax, -16(%rbp)
.LBB20_13:                              # %if.end
                                        #   in Loop: Header=BB20_10 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#14:                                # %if.then.18
                                        #   in Loop: Header=BB20_10 Depth=1
	cmpq	$0, fore
	je	.LBB20_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB20_10 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	9528(%rcx), %rax
	jne	.LBB20_17
.LBB20_16:                              # %if.then.22
	jmp	.LBB20_20
.LBB20_17:                              # %if.end.23
                                        #   in Loop: Header=BB20_10 Depth=1
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.24
                                        #   in Loop: Header=BB20_10 Depth=1
	jmp	.LBB20_19
.LBB20_19:                              # %for.inc
                                        #   in Loop: Header=BB20_10 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB20_10
.LBB20_20:                              # %for.end
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_22
# BB#21:                                # %if.then.28
	movl	$-1, -4(%rbp)
	jmp	.LBB20_23
.LBB20_22:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
.LBB20_23:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	NextWindow, .Lfunc_end20-NextWindow
	.cfi_endproc

	.align	16, 0x90
	.type	PreviousWindow,@function
PreviousWindow:                         # @PreviousWindow
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
	cmpq	$0, fore
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	fore, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB21_3
.LBB21_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpq	$0, fore
	je	.LBB21_5
# BB#4:                                 # %cond.true.2
	movq	fore, %rax
	movq	9528(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_6
.LBB21_5:                               # %cond.false.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_6
.LBB21_6:                               # %cond.end.4
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	wtab, %rax
	movslq	-20(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
.LBB21_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	je	.LBB21_17
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	addq	$-8, %rcx
	cmpq	%rcx, %rax
	jne	.LBB21_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	wtab, %rax
	movslq	maxwin, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
.LBB21_10:                              # %if.end
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_15
# BB#11:                                # %if.then.15
                                        #   in Loop: Header=BB21_7 Depth=1
	cmpq	$0, fore
	je	.LBB21_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	9528(%rcx), %rax
	jne	.LBB21_14
.LBB21_13:                              # %if.then.19
	jmp	.LBB21_17
.LBB21_14:                              # %if.end.20
                                        #   in Loop: Header=BB21_7 Depth=1
	jmp	.LBB21_15
.LBB21_15:                              # %if.end.21
                                        #   in Loop: Header=BB21_7 Depth=1
	jmp	.LBB21_16
.LBB21_16:                              # %for.inc
                                        #   in Loop: Header=BB21_7 Depth=1
	movq	-16(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB21_7
.LBB21_17:                              # %for.end
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB21_19
# BB#18:                                # %if.then.25
	movl	$-1, -4(%rbp)
	jmp	.LBB21_20
.LBB21_19:                              # %if.end.26
	movq	-16(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
.LBB21_20:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	PreviousWindow, .Lfunc_end21-PreviousWindow
	.cfi_endproc

	.align	16, 0x90
	.type	confirm_fn,@function
confirm_fn:                             # @confirm_fn
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB22_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$121, %ecx
	je	.LBB22_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$89, %ecx
	je	.LBB22_4
.LBB22_3:                               # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB22_5
.LBB22_4:                               # %if.end
	leaq	-56(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movabsq	$noargs, %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	callq	DoAction
.LBB22_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	confirm_fn, .Lfunc_end22-confirm_fn
	.cfi_endproc

	.globl	KillWindow
	.align	16, 0x90
	.type	KillWindow,@function
KillWindow:                             # @KillWindow
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
	subq	$64, %rsp
	movabsq	$windows, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB23_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB23_4
# BB#3:                                 # %if.then
	jmp	.LBB23_6
.LBB23_4:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_5
.LBB23_5:                               # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_1
.LBB23_6:                               # %for.end
	jmp	.LBB23_7
.LBB23_7:                               # %do.body
	jmp	.LBB23_8
.LBB23_8:                               # %do.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 4624(%rax)
	movq	-8(%rbp), %rax
	movslq	192(%rax), %rax
	movq	wtab, %rcx
	movq	$0, (%rcx,%rax,8)
	cmpq	$0, windows
	jne	.LBB23_10
# BB#9:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	FreeWindow
	xorl	%edi, %edi
	callq	Finit
.LBB23_10:                              # %if.end.4
	movq	displays, %rax
	movq	%rax, display
.LBB23_11:                              # %for.cond.5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_13 Depth 2
	cmpq	$0, display
	je	.LBB23_24
# BB#12:                                # %for.body.7
                                        #   in Loop: Header=BB23_11 Depth=1
	movl	$0, -36(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB23_13:                              # %for.cond.8
                                        #   Parent Loop BB23_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB23_18
# BB#14:                                # %for.body.10
                                        #   in Loop: Header=BB23_13 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB23_16
# BB#15:                                # %if.then.12
                                        #   in Loop: Header=BB23_13 Depth=2
	jmp	.LBB23_17
.LBB23_16:                              # %if.end.13
                                        #   in Loop: Header=BB23_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	display, %rcx
	movq	384(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	FindNiceWindow
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	SetCanvasWindow
	movl	$1, -36(%rbp)
.LBB23_17:                              # %for.inc.14
                                        #   in Loop: Header=BB23_13 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_13
.LBB23_18:                              # %for.end.15
                                        #   in Loop: Header=BB23_11 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB23_22
# BB#19:                                # %if.then.17
                                        #   in Loop: Header=BB23_11 Depth=1
	movq	-8(%rbp), %rax
	movq	12704(%rax), %rax
	cmpq	display, %rax
	jne	.LBB23_21
# BB#20:                                # %if.then.19
                                        #   in Loop: Header=BB23_11 Depth=1
	movq	display, %rax
	movl	$0, 7812(%rax)
	movq	display, %rax
	movq	$0, 4976(%rax)
	movq	display, %rax
	movq	$0, 4968(%rax)
.LBB23_21:                              # %if.end.21
                                        #   in Loop: Header=BB23_11 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	Activate
.LBB23_22:                              # %if.end.22
                                        #   in Loop: Header=BB23_11 Depth=1
	jmp	.LBB23_23
.LBB23_23:                              # %for.inc.23
                                        #   in Loop: Header=BB23_11 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB23_11
.LBB23_24:                              # %for.end.24
	movq	layouts, %rax
	movq	%rax, -48(%rbp)
.LBB23_25:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB23_28
# BB#26:                                # %for.body.27
                                        #   in Loop: Header=BB23_25 Depth=1
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	UpdateLayoutCanvas
# BB#27:                                # %for.inc.28
                                        #   in Loop: Header=BB23_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB23_25
.LBB23_28:                              # %for.end.29
	movq	-8(%rbp), %rdi
	callq	FreeWindow
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$119, %esi
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	KillWindow, .Lfunc_end23-KillWindow
	.cfi_endproc

	.align	16, 0x90
	.type	pow_detach_fn,@function
pow_detach_fn:                          # @pow_detach_fn
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB24_2
.LBB24_2:                               # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB24_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB24_9
.LBB24_4:                               # %if.end
	movabsq	$ktab, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpl	$126, (%rax)
	je	.LBB24_8
# BB#5:                                 # %if.then.2
	cmpq	$0, display
	je	.LBB24_7
# BB#6:                                 # %if.then.4
	movabsq	$.L.str.405, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	display, %rcx
	movl	4900(%rcx), %edi
	callq	write
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB24_7:                               # %if.end.5
	xorl	%edi, %edi
	movabsq	$.L.str.406, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB24_9
.LBB24_8:                               # %if.else
	movl	$3, %edi
	callq	Detach
.LBB24_9:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	pow_detach_fn, .Lfunc_end24-pow_detach_fn
	.cfi_endproc

	.globl	DoCommand
	.align	16, 0x90
	.type	DoCommand,@function
DoCommand:                              # @DoCommand
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$64, %eax
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
.LBB25_2:                               # %if.end
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB25_4
# BB#3:                                 # %if.then.6
	movl	-24(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
.LBB25_4:                               # %if.end.10
	movq	-56(%rbp), %rdi
	callq	FindCommnr
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	jne	.LBB25_6
# BB#5:                                 # %if.then.13
	xorl	%edi, %edi
	movabsq	$.L.str.307, %rsi
	movq	rc_name, %rdx
	movq	-56(%rbp), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB25_7
.LBB25_6:                               # %if.end.14
	leaq	-48(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	callq	DoAction
.LBB25_7:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	DoCommand, .Lfunc_end25-DoCommand
	.cfi_endproc

	.align	16, 0x90
	.type	WindowByNumber,@function
WindowByNumber:                         # @WindowByNumber
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB26_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB26_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB26_5
.LBB26_4:                               # %if.then
	jmp	.LBB26_7
.LBB26_5:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	imull	$10, -12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB26_1
.LBB26_7:                               # %for.end
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB26_9
# BB#8:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB26_10
.LBB26_9:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB26_10:                              # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end26:
	.size	WindowByNumber, .Lfunc_end26-WindowByNumber
	.cfi_endproc

	.align	16, 0x90
	.type	copy_reg_fn,@function
copy_reg_fn:                            # @copy_reg_fn
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
	subq	$32, %rsp
	movabsq	$plop_tab, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %esi
	movslq	%esi, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB27_9
.LBB27_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB27_4:                               # %if.end.5
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	movq	display, %rax
	movq	8(%rax), %rax
	cmpl	$0, 312(%rax)
	je	.LBB27_8
# BB#5:                                 # %if.then.10
	movq	display, %rax
	movq	8(%rax), %rax
	movslq	312(%rax), %rdi
	callq	malloc
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, %rax
	jne	.LBB27_7
# BB#6:                                 # %if.then.17
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB27_9
.LBB27_7:                               # %if.end.18
	movq	display, %rax
	movq	8(%rax), %rax
	movq	304(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	display, %rax
	movq	8(%rax), %rax
	movslq	312(%rax), %rdx
	callq	bcopy
.LBB27_8:                               # %if.end.27
	xorl	%edi, %edi
	movabsq	$.L.str.407, %rsi
	movq	display, %rax
	movq	8(%rax), %rax
	movl	312(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	display, %rax
	movq	8(%rax), %rax
	movl	316(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	display, %rax
	movq	8(%rax), %rax
	movl	312(%rax), %edx
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movb	$0, %al
	callq	Msg
.LBB27_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	copy_reg_fn, .Lfunc_end27-copy_reg_fn
	.cfi_endproc

	.align	16, 0x90
	.type	process_fn,@function
process_fn:                             # @process_fn
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
	subq	$32, %rsp
	movabsq	$plop_tab, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %esi
	movslq	%esi, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB28_5
.LBB28_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	ProcessInput
	jmp	.LBB28_5
.LBB28_4:                               # %if.end.6
	xorl	%edi, %edi
	movabsq	$.L.str.409, %rsi
	movb	$0, %al
	callq	Msg
.LBB28_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	process_fn, .Lfunc_end28-process_fn
	.cfi_endproc

	.align	16, 0x90
	.type	StuffFin,@function
StuffFin:                               # @StuffFin
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, flayer
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_5
.LBB29_2:                               # %if.end
	jmp	.LBB29_3
.LBB29_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB29_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB29_3 Depth=1
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB29_3
.LBB29_5:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	StuffFin, .Lfunc_end29-StuffFin
	.cfi_endproc

	.align	16, 0x90
	.type	ShowWindowsX,@function
ShowWindowsX:                           # @ShowWindowsX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB30_2
.LBB30_2:                               # %do.end
	movl	$0, -12(%rbp)
.LBB30_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	maxwin, %eax
	jge	.LBB30_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB30_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB30_3 Depth=1
	jmp	.LBB30_7
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	$37, %edx
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	MakeWinMsg
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
.LBB30_7:                               # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB30_3
.LBB30_8:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	ShowWindowsX, .Lfunc_end30-ShowWindowsX
	.cfi_endproc

	.globl	ShowWindows
	.align	16, 0x90
	.type	ShowWindows,@function
ShowWindows:                            # @ShowWindows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$1088, %rsp             # imm = 0x440
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB31_4
# BB#1:                                 # %land.lhs.true
	cmpl	$-1, -4(%rbp)
	jne	.LBB31_4
# BB#2:                                 # %land.lhs.true.1
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then
	movq	display, %rax
	movq	376(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB31_4:                               # %if.end
	movl	$1024, %esi             # imm = 0x400
	xorl	%edx, %edx
	leaq	-1040(%rbp), %rdi
	movl	-4(%rbp), %ecx
	callq	AddWindows
	leaq	-1040(%rbp), %rdi
	movq	%rax, -1056(%rbp)
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -1048(%rbp)
	cmpq	$0, display
	je	.LBB31_11
# BB#5:                                 # %land.lhs.true.8
	movl	$2, %eax
	leaq	-1040(%rbp), %rcx
	movq	-1056(%rbp), %rdx
	subq	%rcx, %rdx
	movq	display, %rcx
	movl	444(%rcx), %esi
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cltd
	movl	-1068(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	cmpq	%rcx, %rdi
	jle	.LBB31_11
# BB#6:                                 # %if.then.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$2, %eax
	movq	display, %rdx
	movl	444(%rdx), %esi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1084(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movq	-1056(%rbp), %rdi
	movslq	%eax, %r8
	subq	%r8, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -1056(%rbp)
	movq	-1048(%rbp), %rcx
	movq	-1056(%rbp), %rdi
	subq	%rdi, %rcx
	movq	display, %rdi
	movslq	444(%rdi), %rdi
	cmpq	%rdi, %rcx
	jge	.LBB31_10
# BB#7:                                 # %if.then.23
	leaq	-1040(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1048(%rbp), %rsi
	movq	display, %rdi
	movslq	444(%rdi), %rdi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -1056(%rbp)
	movq	-1056(%rbp), %rdx
	cmpq	%rax, %rdx
	jae	.LBB31_9
# BB#8:                                 # %if.then.31
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
.LBB31_9:                               # %if.end.33
	jmp	.LBB31_10
.LBB31_10:                              # %if.end.34
	jmp	.LBB31_12
.LBB31_11:                              # %if.else
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
.LBB31_12:                              # %if.end.36
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	addq	$1088, %rsp             # imm = 0x440
	popq	%rbp
	retq
.Lfunc_end31:
	.size	ShowWindows, .Lfunc_end31-ShowWindows
	.cfi_endproc

	.align	16, 0x90
	.type	ShowInfo,@function
ShowInfo:                               # @ShowInfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$816, %rsp              # imm = 0x330
	movq	fore, %rax
	movq	%rax, -528(%rbp)
	cmpq	$0, -528(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.370, %rsi
	movq	display, %rax
	movl	468(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	movl	472(%rax), %edx
	addl	$1, %edx
	movq	display, %rax
	movl	444(%rax), %r8d
	movq	display, %rax
	movl	448(%rax), %r9d
	movl	%edx, -536(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-536(%rbp), %ecx        # 4-byte Reload
	movb	$0, %al
	callq	Msg
	jmp	.LBB32_61
.LBB32_2:                               # %if.end
	leaq	-512(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-528(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	GetAnsiStatus
	movq	-520(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -520(%rbp)
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rsi, %rdi
	jae	.LBB32_4
# BB#3:                                 # %if.then.4
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$32, (%rax)
.LBB32_4:                               # %if.end.5
	movabsq	$.L.str.371, %rsi
	movq	-520(%rbp), %rdi
	movq	-528(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movq	-528(%rbp), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movq	-528(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-528(%rbp), %rax
	movl	36(%rax), %r9d
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-548(%rbp), %ecx        # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.372, %rsi
	movq	-520(%rbp), %rdi
	movl	%eax, -552(%rbp)        # 4-byte Spill
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-528(%rbp), %rsi
	movl	10860(%rsi), %edx
	movq	%rax, %rdi
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	$45, %ecx
	movl	$43, %edx
	movq	-520(%rbp), %rdi
	movl	%eax, -564(%rbp)        # 4-byte Spill
	movl	%ecx, -568(%rbp)        # 4-byte Spill
	movl	%edx, -572(%rbp)        # 4-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-528(%rbp), %rsi
	movl	10820(%rsi), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movl	-568(%rbp), %ecx        # 4-byte Reload
	movl	-572(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %ecx
	movq	-528(%rbp), %rsi
	movl	10820(%rsi), %r8d
	andl	$4, %r8d
	cmpl	$0, %r8d
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	je	.LBB32_6
# BB#5:                                 # %cond.true
	movabsq	$.L.str.41, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB32_7
.LBB32_6:                               # %cond.false
	movabsq	$.L.str.375, %rax
	movabsq	$.L.str.374, %rcx
	movq	-528(%rbp), %rdx
	movl	10820(%rdx), %esi
	andl	$2, %esi
	cmpl	$0, %esi
	cmovneq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB32_7:                               # %cond.end
	movq	-600(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.373, %rsi
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	-588(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movq	-528(%rbp), %rcx
	cmpl	$0, 9964(%rcx)
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jne	.LBB32_9
# BB#8:                                 # %if.then.27
	movabsq	$.L.str.376, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-616(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB32_9:                               # %if.end.31
	movq	-528(%rbp), %rax
	cmpl	$0, 9972(%rax)
	je	.LBB32_11
# BB#10:                                # %if.then.33
	movabsq	$.L.str.377, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-632(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB32_11:                              # %if.end.37
	movq	-528(%rbp), %rax
	cmpl	$0, 9968(%rax)
	je	.LBB32_13
# BB#12:                                # %if.then.39
	movabsq	$.L.str.378, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB32_13:                              # %if.end.43
	movq	-528(%rbp), %rax
	cmpl	$0, 9976(%rax)
	je	.LBB32_15
# BB#14:                                # %if.then.45
	movabsq	$.L.str.379, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -668(%rbp)        # 4-byte Spill
.LBB32_15:                              # %if.end.49
	movq	-528(%rbp), %rax
	cmpq	$0, 10824(%rax)
	je	.LBB32_17
# BB#16:                                # %if.then.51
	movabsq	$.L.str.380, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-680(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB32_17:                              # %if.end.55
	movq	-528(%rbp), %rax
	cmpl	$0, 10836(%rax)
	je	.LBB32_20
# BB#18:                                # %land.lhs.true
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	-528(%rbp), %rsi
	movq	9848(%rsi), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edi
	andl	$7, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB32_20
# BB#19:                                # %if.then.63
	movabsq	$.L.str.381, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -696(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-696(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB32_20:                              # %if.end.67
	movq	-528(%rbp), %rax
	cmpl	$0, 10852(%rax)
	je	.LBB32_22
# BB#21:                                # %if.then.69
	movabsq	$.L.str.382, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -712(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-712(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB32_22:                              # %if.end.73
	movq	-528(%rbp), %rax
	cmpl	$0, 10016(%rax)
	je	.LBB32_24
# BB#23:                                # %if.then.75
	movabsq	$.L.str.383, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB32_24:                              # %if.end.79
	movq	-528(%rbp), %rax
	cmpl	$0, 10012(%rax)
	jne	.LBB32_26
# BB#25:                                # %if.then.81
	movabsq	$.L.str.384, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB32_26:                              # %if.end.85
	movq	-528(%rbp), %rax
	cmpb	$0, 10849(%rax)
	je	.LBB32_28
# BB#27:                                # %if.then.87
	movabsq	$.L.str.385, %rsi
	movq	-520(%rbp), %rdi
	movq	%rsi, -760(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%rax, %rdi
	movq	-760(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB32_28:                              # %if.end.91
	movq	-520(%rbp), %rdi
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-528(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB32_33
# BB#29:                                # %land.lhs.true.96
	cmpq	$0, display
	je	.LBB32_32
# BB#30:                                # %lor.lhs.false
	movq	display, %rax
	movl	496(%rax), %ecx
	movq	-528(%rbp), %rax
	cmpl	48(%rax), %ecx
	jne	.LBB32_32
# BB#31:                                # %lor.lhs.false.103
	movq	-528(%rbp), %rax
	movl	48(%rax), %edi
	callq	EncodingDefFont
	cmpl	$0, %eax
	jg	.LBB32_33
.LBB32_32:                              # %if.then.109
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$32, (%rax)
	movq	-520(%rbp), %rdi
	movq	-528(%rbp), %rax
	movl	48(%rax), %edx
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	callq	EncodingName
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB32_33:                              # %if.end.117
	movq	-528(%rbp), %rax
	cmpl	$8, 48(%rax)
	je	.LBB32_58
# BB#34:                                # %if.then.122
	movq	display, %rax
	cmpq	$0, 6240(%rax)
	jne	.LBB32_37
# BB#35:                                # %lor.lhs.false.125
	movq	display, %rax
	cmpq	$0, 6224(%rax)
	je	.LBB32_57
# BB#36:                                # %land.lhs.true.130
	movq	display, %rax
	movq	6224(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB32_57
.LBB32_37:                              # %if.then.136
	movq	-528(%rbp), %rax
	cmpl	$2, 10008(%rax)
	jne	.LBB32_42
# BB#38:                                # %if.then.139
	movabsq	$.L.str.386, %rsi
	movq	-520(%rbp), %rdi
	movq	-528(%rbp), %rax
	movl	9884(%rax), %ecx
	addl	$48, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movq	-528(%rbp), %rsi
	movsbl	9880(%rsi), %ecx
	cmpl	$32, %ecx
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jl	.LBB32_40
# BB#39:                                # %if.then.145
	movq	-528(%rbp), %rax
	movb	9880(%rax), %cl
	movq	-520(%rbp), %rax
	movb	%cl, 3(%rax)
	jmp	.LBB32_41
.LBB32_40:                              # %if.else
	movq	-520(%rbp), %rax
	movb	$94, 3(%rax)
	movq	-528(%rbp), %rax
	movsbl	9880(%rax), %ecx
	xorl	$64, %ecx
	movb	%cl, %dl
	movq	-520(%rbp), %rax
	movb	%dl, 4(%rax)
	movq	-520(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)
.LBB32_41:                              # %if.end.154
	movq	-520(%rbp), %rax
	movb	$91, 4(%rax)
	movq	-520(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)
	jmp	.LBB32_46
.LBB32_42:                              # %if.else.157
	movq	-528(%rbp), %rax
	cmpl	$0, 10008(%rax)
	je	.LBB32_44
# BB#43:                                # %if.then.160
	movabsq	$.L.str.387, %rsi
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movq	-528(%rbp), %rcx
	movl	9884(%rcx), %edx
	addl	$48, %edx
	movq	-528(%rbp), %rcx
	movl	9888(%rcx), %edi
	addl	$48, %edi
	movl	%edi, -792(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-792(%rbp), %ecx        # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jmp	.LBB32_45
.LBB32_44:                              # %if.else.166
	movabsq	$.L.str.388, %rsi
	movq	-520(%rbp), %rdi
	movq	-528(%rbp), %rax
	movl	9884(%rax), %ecx
	addl	$48, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -800(%rbp)        # 4-byte Spill
.LBB32_45:                              # %if.end.170
	jmp	.LBB32_46
.LBB32_46:                              # %if.end.171
	movq	-520(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -520(%rbp)
	movl	$0, -532(%rbp)
.LBB32_47:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -532(%rbp)
	jge	.LBB32_56
# BB#48:                                # %for.body
                                        #   in Loop: Header=BB32_47 Depth=1
	movslq	-532(%rbp), %rax
	movq	-528(%rbp), %rcx
	cmpl	$0, 9892(%rcx,%rax,4)
	jne	.LBB32_50
# BB#49:                                # %if.then.179
                                        #   in Loop: Header=BB32_47 Depth=1
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$66, (%rax)
	jmp	.LBB32_54
.LBB32_50:                              # %if.else.181
                                        #   in Loop: Header=BB32_47 Depth=1
	movslq	-532(%rbp), %rax
	movq	-528(%rbp), %rcx
	cmpl	$32, 9892(%rcx,%rax,4)
	jl	.LBB32_52
# BB#51:                                # %if.then.187
                                        #   in Loop: Header=BB32_47 Depth=1
	movslq	-532(%rbp), %rax
	movq	-528(%rbp), %rcx
	movl	9892(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB32_53
.LBB32_52:                              # %if.else.193
                                        #   in Loop: Header=BB32_47 Depth=1
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$94, (%rax)
	movslq	-532(%rbp), %rax
	movq	-528(%rbp), %rcx
	movl	9892(%rcx,%rax,4), %edx
	xorl	$64, %edx
	movb	%dl, %sil
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	%sil, (%rax)
.LBB32_53:                              # %if.end.201
                                        #   in Loop: Header=BB32_47 Depth=1
	jmp	.LBB32_54
.LBB32_54:                              # %if.end.202
                                        #   in Loop: Header=BB32_47 Depth=1
	jmp	.LBB32_55
.LBB32_55:                              # %for.inc
                                        #   in Loop: Header=BB32_47 Depth=1
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB32_47
.LBB32_56:                              # %for.end
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$93, (%rax)
	movq	-520(%rbp), %rax
	movb	$0, (%rax)
.LBB32_57:                              # %if.end.204
	jmp	.LBB32_58
.LBB32_58:                              # %if.end.205
	movq	-528(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB32_60
# BB#59:                                # %if.then.208
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$32, (%rax)
	movq	-528(%rbp), %rax
	movl	524(%rax), %edi
	movq	-520(%rbp), %rsi
	callq	TtyGetModemStatus
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB32_60:                              # %if.end.211
	xorl	%edi, %edi
	movabsq	$.L.str.389, %rsi
	leaq	-512(%rbp), %rdx
	movq	-528(%rbp), %rax
	movl	192(%rax), %ecx
	movq	-528(%rbp), %rax
	movq	8736(%rax), %r8
	movb	$0, %al
	callq	Msg
.LBB32_61:                              # %return
	addq	$816, %rsp              # imm = 0x330
	popq	%rbp
	retq
.Lfunc_end32:
	.size	ShowInfo, .Lfunc_end32-ShowInfo
	.cfi_endproc

	.align	16, 0x90
	.type	ShowDInfo,@function
ShowDInfo:                              # @ShowDInfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	cmpq	$0, display
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_15
.LBB33_2:                               # %if.end
	movabsq	$.L.str.390, %rsi
	leaq	-512(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rdi
	movq	display, %rax
	movl	444(%rax), %edx
	movq	display, %rax
	movl	448(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movq	-520(%rbp), %rdi
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	display, %rax
	cmpl	$0, 496(%rax)
	je	.LBB33_4
# BB#3:                                 # %if.then.2
	movq	-520(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -520(%rbp)
	movb	$32, (%rax)
	movq	-520(%rbp), %rdi
	movq	display, %rax
	movl	496(%rax), %edx
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	callq	EncodingName
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB33_4:                               # %if.end.8
	movq	display, %rax
	cmpl	$0, 6208(%rax)
	je	.LBB33_6
# BB#5:                                 # %if.then.10
	movq	-520(%rbp), %rdi
	movl	$.L.str.391, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB33_6:                               # %if.end.14
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB33_8
# BB#7:                                 # %if.then.16
	movq	-520(%rbp), %rdi
	movl	$.L.str.392, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB33_8:                               # %if.end.20
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	je	.LBB33_10
# BB#9:                                 # %if.then.25
	movq	-520(%rbp), %rdi
	movl	$.L.str.393, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
	jmp	.LBB33_14
.LBB33_10:                              # %if.else
	movq	display, %rax
	cmpq	$0, 6224(%rax)
	je	.LBB33_13
# BB#11:                                # %land.lhs.true
	movq	display, %rax
	movq	6224(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB33_13
# BB#12:                                # %if.then.36
	movq	-520(%rbp), %rdi
	movl	$.L.str.394, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-520(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	strlen
	addq	-520(%rbp), %rax
	movq	%rax, -520(%rbp)
.LBB33_13:                              # %if.end.40
	jmp	.LBB33_14
.LBB33_14:                              # %if.end.41
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	leaq	-512(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB33_15:                              # %return
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end33:
	.size	ShowDInfo, .Lfunc_end33-ShowDInfo
	.cfi_endproc

	.align	16, 0x90
	.type	FindKtab,@function
FindKtab:                               # @FindKtab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$ktab, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB34_21
.LBB34_2:                               # %if.end
	movabsq	$kclasses, %rax
	movq	%rax, -40(%rbp)
.LBB34_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB34_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB34_6
# BB#5:                                 # %if.then.2
	jmp	.LBB34_8
.LBB34_6:                               # %if.end.3
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_7
.LBB34_7:                               # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_3
.LBB34_8:                               # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB34_20
# BB#9:                                 # %if.then.5
	cmpl	$0, -20(%rbp)
	jne	.LBB34_11
# BB#10:                                # %if.then.7
	movq	$0, -8(%rbp)
	jmp	.LBB34_21
.LBB34_11:                              # %if.end.8
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$80, %rax
	jbe	.LBB34_13
# BB#12:                                # %if.then.11
	xorl	%edi, %edi
	movabsq	$.L.str.348, %rsi
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB34_21
.LBB34_13:                              # %if.end.12
	movl	$10832, %eax            # imm = 0x2A50
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_15
# BB#14:                                # %if.then.15
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB34_21
.LBB34_15:                              # %if.end.16
	movq	-16(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	$0, -44(%rbp)
.LBB34_16:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$338, -44(%rbp)         # imm = 0x152
	jge	.LBB34_19
# BB#17:                                # %for.body.21
                                        #   in Loop: Header=BB34_16 Depth=1
	movabsq	$noargs, %rax
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movl	$-1, (%rdx)
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	%rax, 8(%rdx)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	$0, 16(%rcx)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movl	$0, 24(%rcx)
# BB#18:                                # %for.inc.31
                                        #   in Loop: Header=BB34_16 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB34_16
.LBB34_19:                              # %for.end.32
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB34_20:                              # %if.end.34
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
.LBB34_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	FindKtab, .Lfunc_end34-FindKtab
	.cfi_endproc

	.align	16, 0x90
	.type	InputAKA,@function
InputAKA:                               # @InputAKA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	cmpl	$1, enter_window_name_mode
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_11
.LBB35_2:                               # %if.end
	movabsq	$.L.str.395, %rdi
	movl	$767, %esi              # imm = 0x2FF
	xorl	%eax, %eax
	movabsq	$AKAfin, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$1, enter_window_name_mode
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
	movq	fore, %rcx
	movq	8736(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB35_4
# BB#3:                                 # %if.then.1
	jmp	.LBB35_11
.LBB35_4:                               # %if.end.2
	jmp	.LBB35_5
.LBB35_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB35_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	cmpl	$32, %ecx
	jl	.LBB35_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$127, %ecx
	jne	.LBB35_9
.LBB35_8:                               # %if.then.9
                                        #   in Loop: Header=BB35_5 Depth=1
	jmp	.LBB35_10
.LBB35_9:                               # %if.end.10
                                        #   in Loop: Header=BB35_5 Depth=1
	leaq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
.LBB35_10:                              # %for.inc
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_5
.LBB35_11:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	InputAKA, .Lfunc_end35-InputAKA
	.cfi_endproc

	.align	16, 0x90
	.type	Colonfin,@function
Colonfin:                               # @Colonfin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	callq	RemoveStatus
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsbl	(%rdi,%rdx), %esi
	cmpl	$9, %esi
	jne	.LBB36_48
# BB#1:                                 # %if.then
	movl	$0, -300(%rbp)
	movl	$187, -304(%rbp)
	movl	$0, -308(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)
.LBB36_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-320(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -321(%rbp)         # 1-byte Spill
	je	.LBB36_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	-320(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -321(%rbp)         # 1-byte Spill
.LBB36_4:                               # %land.end
                                        #   in Loop: Header=BB36_2 Depth=1
	movb	-321(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_5
	jmp	.LBB36_8
.LBB36_5:                               # %while.body
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movsbl	(%rax), %edx
	cmpl	$32, %edx
	jne	.LBB36_7
# BB#6:                                 # %if.then.9
	jmp	.LBB36_54
.LBB36_7:                               # %if.end
                                        #   in Loop: Header=BB36_2 Depth=1
	jmp	.LBB36_2
.LBB36_8:                               # %while.end
	cmpq	$0, display
	je	.LBB36_14
# BB#9:                                 # %land.lhs.true
	cmpl	$0, captionalways
	jne	.LBB36_13
# BB#10:                                # %lor.lhs.false
	movq	display, %rax
	cmpl	$1, 528(%rax)
	je	.LBB36_13
# BB#11:                                # %lor.lhs.false.14
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB36_14
# BB#12:                                # %land.lhs.true.16
	movq	display, %rax
	movq	48(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB36_14
.LBB36_13:                              # %if.then.20
	movl	$1, -308(%rbp)
.LBB36_14:                              # %if.end.21
	jmp	.LBB36_15
.LBB36_15:                              # %while.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-300(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jg	.LBB36_44
# BB#16:                                # %while.body.25
                                        #   in Loop: Header=BB36_15 Depth=1
	movabsq	$comms, %rax
	movl	$2, %ecx
	movl	-300(%rbp), %edx
	addl	-304(%rbp), %edx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -292(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-292(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	movq	-336(%rbp), %r8         # 8-byte Reload
	addq	%rsi, %r8
	movq	(%r8), %rsi
	movslq	-12(%rbp), %r8
	movq	%r8, %rdx
	callq	strncmp
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	jle	.LBB36_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB36_15 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB36_43
.LBB36_18:                              # %if.else
                                        #   in Loop: Header=BB36_15 Depth=1
	cmpl	$0, -296(%rbp)
	jge	.LBB36_20
# BB#19:                                # %if.then.35
                                        #   in Loop: Header=BB36_15 Depth=1
	movl	-292(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	.LBB36_42
.LBB36_20:                              # %if.else.36
	leaq	-288(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -300(%rbp)
.LBB36_21:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -300(%rbp)
	movb	%cl, -337(%rbp)         # 1-byte Spill
	jl	.LBB36_23
# BB#22:                                # %land.rhs.40
                                        #   in Loop: Header=BB36_21 Depth=1
	movabsq	$comms, %rax
	movq	-8(%rbp), %rdi
	movslq	-300(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movslq	-12(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	sete	%r8b
	movb	%r8b, -337(%rbp)        # 1-byte Spill
.LBB36_23:                              # %land.end.48
                                        #   in Loop: Header=BB36_21 Depth=1
	movb	-337(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_24
	jmp	.LBB36_26
.LBB36_24:                              # %for.body
                                        #   in Loop: Header=BB36_21 Depth=1
	jmp	.LBB36_25
.LBB36_25:                              # %for.inc
                                        #   in Loop: Header=BB36_21 Depth=1
	movl	-300(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB36_21
.LBB36_26:                              # %for.end
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	movl	%eax, -292(%rbp)
.LBB36_27:                              # %for.cond.49
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-292(%rbp), %eax
	cmpl	-304(%rbp), %eax
	movb	%cl, -338(%rbp)         # 1-byte Spill
	jg	.LBB36_30
# BB#28:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB36_27 Depth=1
	movabsq	$comms, %rax
	movq	-8(%rbp), %rdi
	movslq	-292(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movslq	-12(%rbp), %rdx
	callq	strncmp
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	cmpl	$0, %eax
	movb	%r9b, -338(%rbp)        # 1-byte Spill
	jne	.LBB36_30
# BB#29:                                # %land.rhs.60
                                        #   in Loop: Header=BB36_27 Depth=1
	leaq	-288(%rbp), %rax
	movq	-320(%rbp), %rcx
	subq	%rax, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	setb	%dl
	movb	%dl, -338(%rbp)         # 1-byte Spill
.LBB36_30:                              # %land.end.67
                                        #   in Loop: Header=BB36_27 Depth=1
	movb	-338(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_31
	jmp	.LBB36_33
.LBB36_31:                              # %for.body.68
                                        #   in Loop: Header=BB36_27 Depth=1
	movabsq	$.L.str.396, %rdx
	movabsq	$comms, %rax
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	leaq	-288(%rbp), %rdi
	movq	-320(%rbp), %r8
	movq	-320(%rbp), %r9
	subq	%rdi, %r9
	subq	%r9, %rsi
	movslq	-292(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdi, %rax
	movq	(%rax), %rcx
	movq	%r8, %rdi
	movb	$0, %al
	callq	snprintf
	movq	-320(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -320(%rbp)
# BB#32:                                # %for.inc.78
                                        #   in Loop: Header=BB36_27 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB36_27
.LBB36_33:                              # %for.end.80
	movl	-300(%rbp), %eax
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB36_37
# BB#34:                                # %if.then.84
	cmpl	$0, -308(%rbp)
	je	.LBB36_36
# BB#35:                                # %if.then.86
	xorl	%edi, %edi
	movabsq	$.L.str.397, %rsi
	leaq	-288(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB36_36:                              # %if.end.88
	jmp	.LBB36_41
.LBB36_37:                              # %if.else.89
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.398, %rdx
	movabsq	$comms, %rcx
	leaq	-288(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movslq	-300(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movslq	-12(%rbp), %r8
	addq	%r8, %rcx
	movb	$0, %al
	callq	snprintf
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB36_40
# BB#38:                                # %land.lhs.true.100
	movslq	-12(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB36_40
# BB#39:                                # %if.then.104
	leaq	-320(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
.LBB36_40:                              # %if.end.105
	jmp	.LBB36_41
.LBB36_41:                              # %if.end.106
	jmp	.LBB36_44
.LBB36_42:                              # %if.end.107
                                        #   in Loop: Header=BB36_15 Depth=1
	jmp	.LBB36_43
.LBB36_43:                              # %if.end.108
                                        #   in Loop: Header=BB36_15 Depth=1
	jmp	.LBB36_15
.LBB36_44:                              # %while.end.109
	movl	-300(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jle	.LBB36_47
# BB#45:                                # %land.lhs.true.112
	cmpl	$0, -308(%rbp)
	je	.LBB36_47
# BB#46:                                # %if.then.114
	xorl	%edi, %edi
	movabsq	$.L.str.399, %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	Msg
.LBB36_47:                              # %if.end.115
	jmp	.LBB36_54
.LBB36_48:                              # %if.end.116
	cmpl	$0, -12(%rbp)
	je	.LBB36_50
# BB#49:                                # %lor.lhs.false.118
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB36_51
.LBB36_50:                              # %if.then.123
	jmp	.LBB36_54
.LBB36_51:                              # %if.end.124
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jle	.LBB36_53
# BB#52:                                # %if.then.130
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	RcLine
	jmp	.LBB36_54
.LBB36_53:                              # %if.else.131
	leaq	-288(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rdx
	callq	bcopy
	movl	$256, %esi              # imm = 0x100
	leaq	-288(%rbp), %rdi
	callq	RcLine
.LBB36_54:                              # %if.end.135
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Colonfin, .Lfunc_end36-Colonfin
	.cfi_endproc

	.globl	DoScreen
	.align	16, 0x90
	.type	DoScreen,@function
DoScreen:                               # @DoScreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movabsq	$nwin_undef, %rax
	movl	$120, %ecx
	movl	%ecx, %edx
	leaq	-136(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB37_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB37_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB37_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	movb	%dl, -161(%rbp)         # 1-byte Spill
.LBB37_4:                               # %land.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_5
	jmp	.LBB37_46
.LBB37_5:                               # %while.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB37_7
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB37_46
.LBB37_7:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	movl	%ecx, %edx
	subl	$76, %edx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%edx, -172(%rbp)        # 4-byte Spill
	je	.LBB37_43
	jmp	.LBB37_64
.LBB37_64:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB37_42
	jmp	.LBB37_65
.LBB37_65:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB37_21
	jmp	.LBB37_66
.LBB37_66:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB37_41
	jmp	.LBB37_67
.LBB37_67:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB37_8
	jmp	.LBB37_68
.LBB37_68:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB37_28
	jmp	.LBB37_69
.LBB37_69:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB37_35
	jmp	.LBB37_70
.LBB37_70:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB37_14
	jmp	.LBB37_44
.LBB37_8:                               # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	2(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	je	.LBB37_10
	jmp	.LBB37_76
.LBB37_76:                              # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB37_9
	jmp	.LBB37_77
.LBB37_77:                              # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB37_10
	jmp	.LBB37_78
.LBB37_78:                              # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB37_11
	jmp	.LBB37_79
.LBB37_79:                              # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB37_9
	jmp	.LBB37_80
.LBB37_80:                              # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB37_10
	jmp	.LBB37_12
.LBB37_9:                               # %sw.bb.15
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB37_13
.LBB37_10:                              # %sw.bb.16
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB37_13
.LBB37_11:                              # %sw.bb.18
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$4, -92(%rbp)
	jmp	.LBB37_13
.LBB37_12:                              # %sw.default
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_13
.LBB37_13:                              # %sw.epilog
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_45
.LBB37_14:                              # %sw.bb.20
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 2(%rax)
	je	.LBB37_16
# BB#15:                                # %if.then.24
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB37_20
.LBB37_16:                              # %if.else
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, 8(%rax)
	je	.LBB37_18
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB37_19
.LBB37_18:                              # %if.else.31
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
.LBB37_19:                              # %if.end.33
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_20
.LBB37_20:                              # %if.end.34
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_45
.LBB37_21:                              # %sw.bb.35
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 2(%rax)
	je	.LBB37_23
# BB#22:                                # %if.then.39
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB37_27
.LBB37_23:                              # %if.else.42
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, 8(%rax)
	je	.LBB37_25
# BB#24:                                # %if.then.45
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB37_26
.LBB37_25:                              # %if.else.47
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
.LBB37_26:                              # %if.end.49
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_27
.LBB37_27:                              # %if.end.50
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_45
.LBB37_28:                              # %sw.bb.51
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 2(%rax)
	je	.LBB37_30
# BB#29:                                # %if.then.55
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -84(%rbp)
	jmp	.LBB37_34
.LBB37_30:                              # %if.else.57
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, 8(%rax)
	je	.LBB37_32
# BB#31:                                # %if.then.60
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, -84(%rbp)
	jmp	.LBB37_33
.LBB37_32:                              # %if.else.63
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
.LBB37_33:                              # %if.end.65
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_34
.LBB37_34:                              # %if.end.66
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_45
.LBB37_35:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	2(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	je	.LBB37_37
	jmp	.LBB37_71
.LBB37_71:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB37_36
	jmp	.LBB37_72
.LBB37_72:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB37_37
	jmp	.LBB37_73
.LBB37_73:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB37_38
	jmp	.LBB37_74
.LBB37_74:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB37_36
	jmp	.LBB37_75
.LBB37_75:                              # %sw.bb.67
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB37_37
	jmp	.LBB37_39
.LBB37_36:                              # %sw.bb.71
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$0, -88(%rbp)
	jmp	.LBB37_40
.LBB37_37:                              # %sw.bb.72
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$1, -88(%rbp)
	jmp	.LBB37_40
.LBB37_38:                              # %sw.bb.74
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$3, -88(%rbp)
	jmp	.LBB37_40
.LBB37_39:                              # %sw.default.76
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_40
.LBB37_40:                              # %sw.epilog.77
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_45
.LBB37_41:                              # %sw.bb.78
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$1, -96(%rbp)
	jmp	.LBB37_45
.LBB37_42:                              # %sw.bb.79
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$1, -80(%rbp)
	jmp	.LBB37_45
.LBB37_43:                              # %sw.bb.80
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$1, -64(%rbp)
	jmp	.LBB37_45
.LBB37_44:                              # %sw.default.81
                                        #   in Loop: Header=BB37_1 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.327, %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	movb	$0, %al
	callq	Msg
.LBB37_45:                              # %sw.epilog.85
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB37_1
.LBB37_46:                              # %while.end
	movl	$0, -140(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB37_58
# BB#47:                                # %land.lhs.true.88
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_58
# BB#48:                                # %land.lhs.true.90
	movl	$10, %esi
	movl	$20, %ecx
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsNumColon
	cmpl	$0, %eax
	je	.LBB37_58
# BB#49:                                # %if.then.93
	movsbl	-160(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB37_51
# BB#50:                                # %if.then.98
	leaq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB37_51:                              # %if.end.101
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	jl	.LBB37_56
# BB#52:                                # %lor.lhs.false
	cmpl	$0, maxwin
	je	.LBB37_54
# BB#53:                                # %land.lhs.true.106
	movl	-140(%rbp), %eax
	movl	maxwin, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_56
.LBB37_54:                              # %lor.lhs.false.109
	cmpl	$0, maxwin
	jne	.LBB37_57
# BB#55:                                # %land.lhs.true.111
	cmpl	$99, -140(%rbp)
	jle	.LBB37_57
.LBB37_56:                              # %if.then.114
	xorl	%edi, %edi
	movabsq	$.L.str.328, %rsi
	movq	-8(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movb	$0, %al
	callq	Msg
	movl	$0, -140(%rbp)
.LBB37_57:                              # %if.end.115
	movl	-140(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
.LBB37_58:                              # %if.end.117
	cmpq	$0, -16(%rbp)
	je	.LBB37_63
# BB#59:                                # %land.lhs.true.119
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_63
# BB#60:                                # %if.then.121
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB37_62
# BB#61:                                # %if.then.124
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	Filename
	movq	%rax, -128(%rbp)
.LBB37_62:                              # %if.end.127
	jmp	.LBB37_63
.LBB37_63:                              # %if.end.128
	leaq	-136(%rbp), %rdi
	callq	MakeWindow
	movl	%eax, -252(%rbp)        # 4-byte Spill
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end37:
	.size	DoScreen, .Lfunc_end37-DoScreen
	.cfi_endproc

	.align	16, 0x90
	.type	ins_reg_fn,@function
ins_reg_fn:                             # @ins_reg_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$plop_tab, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %esi
	movslq	%esi, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB38_9
.LBB38_2:                               # %if.end
	cmpq	$0, fore
	jne	.LBB38_4
# BB#3:                                 # %if.then.2
	jmp	.LBB38_9
.LBB38_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB38_6
# BB#5:                                 # %if.then.6
	xorl	%edi, %edi
	movabsq	$.L.str.408, %rsi
	movb	$0, %al
	callq	Msg
.LBB38_6:                               # %if.end.7
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_8
# BB#7:                                 # %if.then.10
	xorl	%ecx, %ecx
	movq	fore, %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %edx
	movq	%rax, %rdi
	callq	MakePaster
	jmp	.LBB38_9
.LBB38_8:                               # %if.end.13
	xorl	%edi, %edi
	movabsq	$.L.str.409, %rsi
	movb	$0, %al
	callq	Msg
.LBB38_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	ins_reg_fn, .Lfunc_end38-ins_reg_fn
	.cfi_endproc

	.globl	SetEscape
	.align	16, 0x90
	.type	SetEscape,@function
SetEscape:                              # @SetEscape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 292(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 296(%rcx)
	jmp	.LBB39_15
.LBB39_2:                               # %if.else
	cmpq	$0, users
	je	.LBB39_8
# BB#3:                                 # %if.then.2
	cmpl	$0, DefaultEsc
	jl	.LBB39_5
# BB#4:                                 # %if.then.3
	movabsq	$ktab, %rax
	movslq	DefaultEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
.LBB39_5:                               # %if.end
	cmpl	$0, DefaultMetaEsc
	jl	.LBB39_7
# BB#6:                                 # %if.then.5
	movabsq	$ktab, %rax
	movslq	DefaultMetaEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
.LBB39_7:                               # %if.end.8
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.9
	movl	-12(%rbp), %eax
	movl	%eax, DefaultEsc
	movl	-16(%rbp), %eax
	movl	%eax, DefaultMetaEsc
	cmpq	$0, users
	je	.LBB39_14
# BB#9:                                 # %if.then.11
	cmpl	$0, DefaultEsc
	jl	.LBB39_11
# BB#10:                                # %if.then.13
	movabsq	$ktab, %rax
	movslq	DefaultEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
	movabsq	$ktab, %rax
	movslq	DefaultEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	$120, (%rax)
.LBB39_11:                              # %if.end.18
	cmpl	$0, DefaultMetaEsc
	jl	.LBB39_13
# BB#12:                                # %if.then.20
	movabsq	$ktab, %rax
	movslq	DefaultMetaEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	ClearAction
	movabsq	$ktab, %rax
	movslq	DefaultMetaEsc, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	$108, (%rax)
.LBB39_13:                              # %if.end.26
	jmp	.LBB39_14
.LBB39_14:                              # %if.end.27
	jmp	.LBB39_15
.LBB39_15:                              # %if.end.28
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	SetEscape, .Lfunc_end39-SetEscape
	.cfi_endproc

	.globl	ParseSaveStr
	.align	16, 0x90
	.type	ParseSaveStr,@function
ParseSaveStr:                           # @ParseSaveStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB40_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB40_3
.LBB40_2:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.321, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB40_6
.LBB40_3:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_5
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB40_5:                               # %if.end.5
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	SaveStr
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$0, -4(%rbp)
.LBB40_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	ParseSaveStr, .Lfunc_end40-ParseSaveStr
	.cfi_endproc

	.align	16, 0x90
	.type	ParseNum1000,@function
ParseNum1000:                           # @ParseNum1000
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB41_3
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB41_3
# BB#2:                                 # %lor.lhs.false.4
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB41_4
.LBB41_3:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.322, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB41_34
.LBB41_4:                               # %if.end
	movl	$0, -28(%rbp)
.LBB41_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB41_23
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB41_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB41_17
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB41_17
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB41_5 Depth=1
	cmpl	$4, -52(%rbp)
	jge	.LBB41_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB41_5 Depth=1
	imull	$10, -28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB41_14
.LBB41_10:                              # %if.else
                                        #   in Loop: Header=BB41_5 Depth=1
	cmpl	$4, -52(%rbp)
	jne	.LBB41_13
# BB#11:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB41_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$53, %ecx
	jl	.LBB41_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB41_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB41_13:                              # %if.end.25
                                        #   in Loop: Header=BB41_5 Depth=1
	jmp	.LBB41_14
.LBB41_14:                              # %if.end.26
                                        #   in Loop: Header=BB41_5 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB41_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB41_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB41_16:                              # %if.end.30
                                        #   in Loop: Header=BB41_5 Depth=1
	jmp	.LBB41_22
.LBB41_17:                              # %if.else.31
                                        #   in Loop: Header=BB41_5 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB41_20
# BB#18:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB41_5 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB41_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB41_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB41_21
.LBB41_20:                              # %if.else.39
	xorl	%edi, %edi
	movabsq	$.L.str.358, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB41_34
.LBB41_21:                              # %if.end.44
                                        #   in Loop: Header=BB41_5 Depth=1
	jmp	.LBB41_22
.LBB41_22:                              # %if.end.45
                                        #   in Loop: Header=BB41_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB41_5
.LBB41_23:                              # %while.end
	cmpl	$0, -52(%rbp)
	jne	.LBB41_25
# BB#24:                                # %if.then.48
	imull	$1000, -28(%rbp), %eax  # imm = 0x3E8
	movl	%eax, -28(%rbp)
	jmp	.LBB41_29
.LBB41_25:                              # %if.else.50
	jmp	.LBB41_26
.LBB41_26:                              # %while.cond.51
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$4, %eax
	jge	.LBB41_28
# BB#27:                                # %while.body.55
                                        #   in Loop: Header=BB41_26 Depth=1
	imull	$10, -28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB41_26
.LBB41_28:                              # %while.end.57
	jmp	.LBB41_29
.LBB41_29:                              # %if.end.58
	cmpl	$0, -28(%rbp)
	jge	.LBB41_31
# BB#30:                                # %if.then.61
	movl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
.LBB41_31:                              # %if.end.62
	jmp	.LBB41_32
.LBB41_32:                              # %do.body
	jmp	.LBB41_33
.LBB41_33:                              # %do.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
.LBB41_34:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	ParseNum1000, .Lfunc_end41-ParseNum1000
	.cfi_endproc

	.align	16, 0x90
	.type	CollapseWindowlist,@function
CollapseWindowlist:                     # @CollapseWindowlist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
.LBB42_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_4 Depth 2
	cmpl	$100, -4(%rbp)
	jge	.LBB42_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB42_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB42_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_4
.LBB42_4:                               # %for.cond.1
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB42_9
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB42_4 Depth=2
	movslq	-8(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB42_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	WindowChangeNumber
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB42_9
.LBB42_7:                               # %if.end
                                        #   in Loop: Header=BB42_4 Depth=2
	jmp	.LBB42_8
.LBB42_8:                               # %for.inc
                                        #   in Loop: Header=BB42_4 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB42_4
.LBB42_9:                               # %for.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_10
.LBB42_10:                              # %if.end.8
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_11
.LBB42_11:                              # %for.inc.9
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB42_1
.LBB42_12:                              # %for.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	CollapseWindowlist, .Lfunc_end42-CollapseWindowlist
	.cfi_endproc

	.align	16, 0x90
	.type	InputSetenv,@function
InputSetenv:                            # @InputSetenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movabsq	$setenv_var, %rdi
	movl	$30, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	callq	strncpy
	movabsq	$InputSetenv.setenv_buf, %rdi
	movabsq	$.L.str.403, %rsi
	movabsq	$setenv_var, %rdx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	sprintf
	movabsq	$InputSetenv.setenv_buf, %rdi
	movl	$30, %esi
	xorl	%ecx, %ecx
	movabsq	$SetenvFin2, %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movq	%r9, %rcx
	movl	-28(%rbp), %r9d         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	Input
	jmp	.LBB43_3
.LBB43_2:                               # %if.else
	movabsq	$.L.str.404, %rdi
	movl	$30, %esi
	xorl	%eax, %eax
	movabsq	$SetenvFin1, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
.LBB43_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	InputSetenv, .Lfunc_end43-InputSetenv
	.cfi_endproc

	.globl	CompileKeys
	.align	16, 0x90
	.type	CompileKeys,@function
CompileKeys:                            # @CompileKeys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB44_6
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB44_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB44_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB44_2
.LBB44_5:                               # %for.end
	movl	$0, -4(%rbp)
	jmp	.LBB44_24
.LBB44_6:                               # %if.end
	jmp	.LBB44_7
.LBB44_7:                               # %do.body
	jmp	.LBB44_8
.LBB44_8:                               # %do.end
	jmp	.LBB44_9
.LBB44_9:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_14 Depth 2
	cmpl	$0, -20(%rbp)
	je	.LBB44_23
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -37(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	$61, %esi
	jne	.LBB44_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB44_9 Depth=1
	cmpl	$3, -20(%rbp)
	jge	.LBB44_13
.LBB44_12:                              # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB44_24
.LBB44_13:                              # %if.end.8
                                        #   in Loop: Header=BB44_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB44_14:                              # %do.body.9
                                        #   Parent Loop BB44_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rax), %sil
	movb	%sil, -38(%rbp)
	movb	-37(%rbp), %sil
	movzbl	-38(%rbp), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rax)
# BB#15:                                # %do.cond
                                        #   in Loop: Header=BB44_14 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$61, %eax
	movb	%cl, -39(%rbp)          # 1-byte Spill
	jne	.LBB44_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB44_14 Depth=2
	cmpl	$2, -20(%rbp)
	setge	%al
	movb	%al, -39(%rbp)          # 1-byte Spill
.LBB44_17:                              # %land.end
                                        #   in Loop: Header=BB44_14 Depth=2
	movb	-39(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_14
# BB#18:                                # %do.end.19
                                        #   in Loop: Header=BB44_9 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB44_20
# BB#19:                                # %if.then.22
	jmp	.LBB44_23
.LBB44_20:                              # %if.end.23
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$58, %edx
	je	.LBB44_22
# BB#21:                                # %if.then.28
	movl	$-1, -4(%rbp)
	jmp	.LBB44_24
.LBB44_22:                              # %if.end.29
                                        #   in Loop: Header=BB44_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB44_9
.LBB44_23:                              # %while.end
	movl	$0, -4(%rbp)
.LBB44_24:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	CompileKeys, .Lfunc_end44-CompileKeys
	.cfi_endproc

	.align	16, 0x90
	.type	ParseBase,@function
ParseBase:                              # @ParseBase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %ecx
	cmpl	$0, %ecx
	jne	.LBB45_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.360, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB45_17
.LBB45_2:                               # %if.end
	jmp	.LBB45_3
.LBB45_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, %edx
	je	.LBB45_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB45_3 Depth=1
	cmpl	$97, -56(%rbp)
	jl	.LBB45_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_3 Depth=1
	cmpl	$122, -56(%rbp)
	jg	.LBB45_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-56(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -56(%rbp)
.LBB45_7:                               # %if.end.8
                                        #   in Loop: Header=BB45_3 Depth=1
	cmpl	$65, -56(%rbp)
	jl	.LBB45_10
# BB#8:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB45_3 Depth=1
	cmpl	$90, -56(%rbp)
	jg	.LBB45_10
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-56(%rbp), %eax
	subl	$7, %eax
	movl	%eax, -56(%rbp)
.LBB45_10:                              # %if.end.16
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-56(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jl	.LBB45_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB45_13
.LBB45_12:                              # %if.then.22
	xorl	%edi, %edi
	movabsq	$.L.str.361, %rsi
	movabsq	$comms, %rax
	movq	rc_name, %rdx
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB45_17
.LBB45_13:                              # %if.end.27
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-36(%rbp), %eax
	imull	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB45_3
.LBB45_14:                              # %while.end
	jmp	.LBB45_15
.LBB45_15:                              # %do.body
	jmp	.LBB45_16
.LBB45_16:                              # %do.end
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -4(%rbp)
.LBB45_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	ParseBase, .Lfunc_end45-ParseBase
	.cfi_endproc

	.align	16, 0x90
	.type	pass1,@function
pass1:                                  # @pass1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	cmpb	$0, (%rdx)
	jne	.LBB46_2
# BB#1:                                 # %if.then
	jmp	.LBB46_7
.LBB46_2:                               # %if.end
	jmp	.LBB46_3
.LBB46_3:                               # %do.body
	jmp	.LBB46_4
.LBB46_4:                               # %do.end
	movabsq	$NullStr, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 272(%rcx)
	je	.LBB46_6
# BB#5:                                 # %if.then.1
	movq	-32(%rbp), %rax
	movq	272(%rax), %rdi
	callq	free
.LBB46_6:                               # %if.end.3
	movq	-8(%rbp), %rdi
	callq	SaveStr
	movabsq	$.L.str.413, %rdi
	movl	$100, %esi
	movl	$1, %edx
	movabsq	$pass2, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %r9
	movq	%rax, 272(%r9)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
	movq	-24(%rbp), %r8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	callq	Input
.LBB46_7:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	pass1, .Lfunc_end46-pass1
	.cfi_endproc

	.align	16, 0x90
	.type	digraph_find,@function
digraph_find:                           # @digraph_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$512, -12(%rbp)         # imm = 0x200
	movb	%cl, -13(%rbp)          # 1-byte Spill
	jge	.LBB47_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-12(%rbp), %rax
	movzbl	digraphs(,%rax,8), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -13(%rbp)          # 1-byte Spill
.LBB47_3:                               # %land.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-13(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_4
	jmp	.LBB47_11
.LBB47_4:                               # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-12(%rbp), %rax
	movzbl	digraphs(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB47_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-12(%rbp), %rax
	movzbl	digraphs+1(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB47_8
.LBB47_6:                               # %lor.lhs.false
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-12(%rbp), %rax
	movzbl	digraphs(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB47_9
# BB#7:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-12(%rbp), %rax
	movzbl	digraphs+1(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB47_9
.LBB47_8:                               # %if.then
	jmp	.LBB47_11
.LBB47_9:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_10
.LBB47_10:                              # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB47_1
.LBB47_11:                              # %for.end
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end47:
	.size	digraph_find, .Lfunc_end47-digraph_find
	.cfi_endproc

	.align	16, 0x90
	.type	parse_input_int,@function
parse_input_int:                        # @parse_input_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$1, -20(%rbp)
	jl	.LBB48_23
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$85, %ecx
	jne	.LBB48_3
# BB#2:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB48_6
.LBB48_3:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB48_23
# BB#4:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$120, %ecx
	je	.LBB48_6
# BB#5:                                 # %lor.lhs.false.15
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$88, %ecx
	jne	.LBB48_23
.LBB48_6:                               # %if.then
	movl	$0, -36(%rbp)
	movl	$2, -40(%rbp)
.LBB48_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB48_22
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$48, %edx
	jl	.LBB48_11
# BB#9:                                 # %land.lhs.true.26
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$57, %edx
	jg	.LBB48_11
# BB#10:                                # %if.then.32
                                        #   in Loop: Header=BB48_7 Depth=1
	movl	-36(%rbp), %eax
	shll	$4, %eax
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$48, %esi
	orl	%esi, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB48_20
.LBB48_11:                              # %if.else
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$97, %edx
	jl	.LBB48_14
# BB#12:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$102, %edx
	jg	.LBB48_14
# BB#13:                                # %if.then.47
                                        #   in Loop: Header=BB48_7 Depth=1
	movl	-36(%rbp), %eax
	shll	$4, %eax
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$87, %esi
	orl	%esi, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB48_19
.LBB48_14:                              # %if.else.54
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$65, %edx
	jl	.LBB48_17
# BB#15:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB48_7 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$70, %edx
	jg	.LBB48_17
# BB#16:                                # %if.then.66
                                        #   in Loop: Header=BB48_7 Depth=1
	movl	-36(%rbp), %eax
	shll	$4, %eax
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$55, %esi
	orl	%esi, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB48_18
.LBB48_17:                              # %if.else.73
	movl	$0, -4(%rbp)
	jmp	.LBB48_35
.LBB48_18:                              # %if.end
                                        #   in Loop: Header=BB48_7 Depth=1
	jmp	.LBB48_19
.LBB48_19:                              # %if.end.74
                                        #   in Loop: Header=BB48_7 Depth=1
	jmp	.LBB48_20
.LBB48_20:                              # %if.end.75
                                        #   in Loop: Header=BB48_7 Depth=1
	jmp	.LBB48_21
.LBB48_21:                              # %for.inc
                                        #   in Loop: Header=BB48_7 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB48_7
.LBB48_22:                              # %for.end
	jmp	.LBB48_34
.LBB48_23:                              # %if.else.76
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB48_32
# BB#24:                                # %if.then.81
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
.LBB48_25:                              # %for.cond.82
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB48_31
# BB#26:                                # %for.body.85
                                        #   in Loop: Header=BB48_25 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$48, %edx
	jl	.LBB48_28
# BB#27:                                # %lor.lhs.false.91
                                        #   in Loop: Header=BB48_25 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$55, %edx
	jle	.LBB48_29
.LBB48_28:                              # %if.then.97
	movl	$0, -4(%rbp)
	jmp	.LBB48_35
.LBB48_29:                              # %if.end.98
                                        #   in Loop: Header=BB48_25 Depth=1
	movl	-36(%rbp), %eax
	shll	$3, %eax
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$48, %esi
	orl	%esi, %eax
	movl	%eax, -36(%rbp)
# BB#30:                                # %for.inc.105
                                        #   in Loop: Header=BB48_25 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB48_25
.LBB48_31:                              # %for.end.107
	jmp	.LBB48_33
.LBB48_32:                              # %if.else.108
	movl	$0, -4(%rbp)
	jmp	.LBB48_35
.LBB48_33:                              # %if.end.109
	jmp	.LBB48_34
.LBB48_34:                              # %if.end.110
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
.LBB48_35:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end48:
	.size	parse_input_int, .Lfunc_end48-parse_input_int
	.cfi_endproc

	.align	16, 0x90
	.type	digraph_fn,@function
digraph_fn:                             # @digraph_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsbl	(%rdi,%rdx), %esi
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB49_33
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$32, -28(%rbp)
	jl	.LBB49_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$127, -28(%rbp)
	jne	.LBB49_4
.LBB49_3:                               # %if.then.7
	jmp	.LBB49_48
.LBB49_4:                               # %if.end
	cmpl	$1, -12(%rbp)
	jl	.LBB49_22
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$85, %ecx
	jne	.LBB49_7
# BB#6:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB49_10
.LBB49_7:                               # %lor.lhs.false.18
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB49_22
# BB#8:                                 # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$120, %ecx
	je	.LBB49_10
# BB#9:                                 # %lor.lhs.false.27
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$88, %ecx
	jne	.LBB49_22
.LBB49_10:                              # %if.then.32
	cmpl	$1, -12(%rbp)
	jne	.LBB49_12
# BB#11:                                # %if.then.35
	jmp	.LBB49_48
.LBB49_12:                              # %if.end.36
	cmpl	$48, -28(%rbp)
	jl	.LBB49_14
# BB#13:                                # %lor.lhs.false.39
	cmpl	$57, -28(%rbp)
	jle	.LBB49_19
.LBB49_14:                              # %land.lhs.true.42
	cmpl	$97, -28(%rbp)
	jl	.LBB49_16
# BB#15:                                # %lor.lhs.false.45
	cmpl	$102, -28(%rbp)
	jle	.LBB49_19
.LBB49_16:                              # %land.lhs.true.48
	cmpl	$65, -28(%rbp)
	jl	.LBB49_18
# BB#17:                                # %lor.lhs.false.51
	cmpl	$70, -28(%rbp)
	jle	.LBB49_19
.LBB49_18:                              # %if.then.54
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$28, (%rcx,%rax)
	jmp	.LBB49_48
.LBB49_19:                              # %if.end.57
	movl	$3, %eax
	movl	$5, %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edi
	cmpl	$85, %edi
	cmovel	%ecx, %eax
	cmpl	%eax, %edx
	jne	.LBB49_21
# BB#20:                                # %if.then.63
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$10, (%rcx,%rax)
.LBB49_21:                              # %if.end.66
	jmp	.LBB49_48
.LBB49_22:                              # %if.end.67
	cmpl	$0, -12(%rbp)
	je	.LBB49_30
# BB#23:                                # %land.lhs.true.69
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB49_30
# BB#24:                                # %if.then.73
	cmpl	$48, -28(%rbp)
	jl	.LBB49_26
# BB#25:                                # %lor.lhs.false.76
	cmpl	$55, -28(%rbp)
	jle	.LBB49_27
.LBB49_26:                              # %if.then.79
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$28, (%rcx,%rax)
	jmp	.LBB49_48
.LBB49_27:                              # %if.end.82
	cmpl	$3, -12(%rbp)
	jne	.LBB49_29
# BB#28:                                # %if.then.85
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$10, (%rcx,%rax)
.LBB49_29:                              # %if.end.88
	jmp	.LBB49_48
.LBB49_30:                              # %if.end.89
	cmpl	$1, -12(%rbp)
	jne	.LBB49_32
# BB#31:                                # %if.then.92
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$10, (%rcx,%rax)
.LBB49_32:                              # %if.end.95
	jmp	.LBB49_48
.LBB49_33:                              # %if.end.96
	cmpl	$1, -12(%rbp)
	jge	.LBB49_35
# BB#34:                                # %if.then.99
	jmp	.LBB49_48
.LBB49_35:                              # %if.end.100
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB49_37
# BB#36:                                # %if.then.105
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB49_37:                              # %if.end.111
	cmpl	$2, -12(%rbp)
	jge	.LBB49_39
# BB#38:                                # %if.then.114
	jmp	.LBB49_48
.LBB49_39:                              # %if.end.115
	leaq	-36(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	parse_input_int
	cmpl	$0, %eax
	jne	.LBB49_43
# BB#40:                                # %if.then.117
	movq	-8(%rbp), %rdi
	callq	digraph_find
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rdi
	movl	digraphs+4(,%rdi,8), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jg	.LBB49_42
# BB#41:                                # %if.then.123
	xorl	%edi, %edi
	movabsq	$.L.str.418, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB49_48
.LBB49_42:                              # %if.end.124
	jmp	.LBB49_43
.LBB49_43:                              # %if.end.125
	movl	$1, -32(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	flayer, %rdx
	cmpl	$8, 24(%rdx)
	jne	.LBB49_45
# BB#44:                                # %if.then.129
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	ToUtf8
	movl	%eax, -32(%rbp)
.LBB49_45:                              # %if.end.131
	jmp	.LBB49_46
.LBB49_46:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB49_48
# BB#47:                                # %while.body
                                        #   in Loop: Header=BB49_46 Depth=1
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB49_46
.LBB49_48:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	digraph_fn, .Lfunc_end49-digraph_fn
	.cfi_endproc

	.globl	ParseAttrColor
	.align	16, 0x90
	.type	ParseAttrColor,@function
ParseAttrColor:                         # @ParseAttrColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB50_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB50_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_1
.LBB50_3:                               # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB50_4:                               # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -77(%rbp)          # 1-byte Spill
	je	.LBB50_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB50_4 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -77(%rbp)          # 1-byte Spill
.LBB50_6:                               # %land.end
                                        #   in Loop: Header=BB50_4 Depth=1
	movb	-77(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_7
	jmp	.LBB50_8
.LBB50_7:                               # %while.body.7
                                        #   in Loop: Header=BB50_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB50_4
.LBB50_8:                               # %while.end.9
	jmp	.LBB50_9
.LBB50_9:                               # %while.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB50_11
# BB#10:                                # %while.body.14
                                        #   in Loop: Header=BB50_9 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB50_9
.LBB50_11:                              # %while.end.16
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB50_93
# BB#12:                                # %land.lhs.true
	cmpq	$0, -24(%rbp)
	jne	.LBB50_19
# BB#13:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB50_19
# BB#14:                                # %lor.lhs.false.22
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB50_16
# BB#15:                                # %land.lhs.true.26
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$122, %ecx
	jle	.LBB50_93
.LBB50_16:                              # %lor.lhs.false.30
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB50_18
# BB#17:                                # %land.lhs.true.34
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$90, %ecx
	jle	.LBB50_93
.LBB50_18:                              # %lor.lhs.false.38
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB50_93
.LBB50_19:                              # %if.then
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB50_21
# BB#20:                                # %if.then.46
	movl	$1, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_30
.LBB50_21:                              # %if.else
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB50_23
# BB#22:                                # %if.then.51
	movl	$-1, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_29
.LBB50_23:                              # %if.else.53
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$33, %ecx
	jne	.LBB50_25
# BB#24:                                # %if.then.57
	movl	$2, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_28
.LBB50_25:                              # %if.else.59
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB50_27
# BB#26:                                # %if.then.63
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB50_27:                              # %if.end
	jmp	.LBB50_28
.LBB50_28:                              # %if.end.65
	jmp	.LBB50_29
.LBB50_29:                              # %if.end.66
	jmp	.LBB50_30
.LBB50_30:                              # %if.end.67
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB50_50
# BB#31:                                # %land.lhs.true.71
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB50_50
# BB#32:                                # %if.then.75
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movsbl	(%rax), %edx
	subl	$48, %edx
	movl	%edx, -68(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$48, %edx
	jl	.LBB50_35
# BB#33:                                # %land.lhs.true.81
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB50_35
# BB#34:                                # %if.then.85
	movl	-68(%rbp), %eax
	shll	$4, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movsbl	(%rcx), %esi
	subl	$48, %esi
	addl	%esi, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_49
.LBB50_35:                              # %if.else.89
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB50_38
# BB#36:                                # %land.lhs.true.93
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	jg	.LBB50_38
# BB#37:                                # %if.then.97
	movl	-68(%rbp), %eax
	shll	$4, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movsbl	(%rcx), %esi
	subl	$87, %esi
	addl	%esi, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_48
.LBB50_38:                              # %if.else.103
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB50_41
# BB#39:                                # %land.lhs.true.107
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jg	.LBB50_41
# BB#40:                                # %if.then.111
	movl	-68(%rbp), %eax
	shll	$4, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movsbl	(%rcx), %esi
	subl	$55, %esi
	addl	%esi, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_47
.LBB50_41:                              # %if.else.117
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB50_46
# BB#42:                                # %land.lhs.true.120
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB50_46
# BB#43:                                # %if.then.124
	cmpl	$0, -28(%rbp)
	je	.LBB50_45
# BB#44:                                # %if.then.126
	xorl	%edi, %edi
	movabsq	$.L.str.329, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_45:                              # %if.end.128
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_46:                              # %if.end.129
	jmp	.LBB50_47
.LBB50_47:                              # %if.end.130
	jmp	.LBB50_48
.LBB50_48:                              # %if.end.131
	jmp	.LBB50_49
.LBB50_49:                              # %if.end.132
	jmp	.LBB50_76
.LBB50_50:                              # %if.else.133
	jmp	.LBB50_51
.LBB50_51:                              # %while.cond.134
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -78(%rbp)          # 1-byte Spill
	je	.LBB50_53
# BB#52:                                # %land.rhs.137
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -78(%rbp)          # 1-byte Spill
.LBB50_53:                              # %land.end.141
                                        #   in Loop: Header=BB50_51 Depth=1
	movb	-78(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_54
	jmp	.LBB50_75
.LBB50_54:                              # %while.body.142
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$100, %ecx
	jne	.LBB50_56
# BB#55:                                # %if.then.146
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_74
.LBB50_56:                              # %if.else.147
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$117, %ecx
	jne	.LBB50_58
# BB#57:                                # %if.then.151
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_73
.LBB50_58:                              # %if.else.153
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$98, %ecx
	jne	.LBB50_60
# BB#59:                                # %if.then.157
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_72
.LBB50_60:                              # %if.else.159
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$114, %ecx
	jne	.LBB50_62
# BB#61:                                # %if.then.163
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_71
.LBB50_62:                              # %if.else.165
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$115, %ecx
	jne	.LBB50_64
# BB#63:                                # %if.then.169
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_70
.LBB50_64:                              # %if.else.171
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$66, %ecx
	jne	.LBB50_66
# BB#65:                                # %if.then.175
                                        #   in Loop: Header=BB50_51 Depth=1
	movl	-68(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_69
.LBB50_66:                              # %if.else.177
	cmpl	$0, -28(%rbp)
	je	.LBB50_68
# BB#67:                                # %if.then.179
	xorl	%edi, %edi
	movabsq	$.L.str.330, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_68:                              # %if.end.181
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_69:                              # %if.end.182
                                        #   in Loop: Header=BB50_51 Depth=1
	jmp	.LBB50_70
.LBB50_70:                              # %if.end.183
                                        #   in Loop: Header=BB50_51 Depth=1
	jmp	.LBB50_71
.LBB50_71:                              # %if.end.184
                                        #   in Loop: Header=BB50_51 Depth=1
	jmp	.LBB50_72
.LBB50_72:                              # %if.end.185
                                        #   in Loop: Header=BB50_51 Depth=1
	jmp	.LBB50_73
.LBB50_73:                              # %if.end.186
                                        #   in Loop: Header=BB50_51 Depth=1
	jmp	.LBB50_74
.LBB50_74:                              # %if.end.187
                                        #   in Loop: Header=BB50_51 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_51
.LBB50_75:                              # %while.end.189
	jmp	.LBB50_76
.LBB50_76:                              # %if.end.190
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB50_81
# BB#77:                                # %land.lhs.true.193
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB50_81
# BB#78:                                # %if.then.197
	cmpl	$0, -28(%rbp)
	je	.LBB50_80
# BB#79:                                # %if.then.199
	xorl	%edi, %edi
	movabsq	$.L.str.331, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_80:                              # %if.end.201
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_81:                              # %if.end.202
	cmpl	$-1, -64(%rbp)
	jne	.LBB50_83
# BB#82:                                # %if.then.205
	movl	-68(%rbp), %eax
	shll	$8, %eax
	orl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB50_92
.LBB50_83:                              # %if.else.207
	cmpl	$1, -64(%rbp)
	jne	.LBB50_85
# BB#84:                                # %if.then.210
	movl	-68(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB50_91
.LBB50_85:                              # %if.else.212
	cmpl	$2, -64(%rbp)
	jne	.LBB50_87
# BB#86:                                # %if.then.215
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB50_90
.LBB50_87:                              # %if.else.216
	cmpl	$0, -64(%rbp)
	jne	.LBB50_89
# BB#88:                                # %if.then.219
	movl	-68(%rbp), %eax
	xorl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -60(%rbp)
.LBB50_89:                              # %if.end.220
	jmp	.LBB50_90
.LBB50_90:                              # %if.end.221
	jmp	.LBB50_91
.LBB50_91:                              # %if.end.222
	jmp	.LBB50_92
.LBB50_92:                              # %if.end.223
	jmp	.LBB50_93
.LBB50_93:                              # %if.end.224
	jmp	.LBB50_94
.LBB50_94:                              # %while.cond.225
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -79(%rbp)          # 1-byte Spill
	je	.LBB50_96
# BB#95:                                # %land.rhs.228
                                        #   in Loop: Header=BB50_94 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -79(%rbp)          # 1-byte Spill
.LBB50_96:                              # %land.end.232
                                        #   in Loop: Header=BB50_94 Depth=1
	movb	-79(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_97
	jmp	.LBB50_98
.LBB50_97:                              # %while.body.233
                                        #   in Loop: Header=BB50_94 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_94
.LBB50_98:                              # %while.end.235
	cmpq	$0, -24(%rbp)
	je	.LBB50_109
# BB#99:                                # %if.then.237
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB50_103
# BB#100:                               # %if.then.239
	cmpl	$0, -28(%rbp)
	je	.LBB50_102
# BB#101:                               # %if.then.241
	xorl	%edi, %edi
	movabsq	$.L.str.332, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_102:                             # %if.end.243
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_103:                             # %if.end.244
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB50_104:                             # %while.cond.245
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -80(%rbp)          # 1-byte Spill
	je	.LBB50_106
# BB#105:                               # %land.rhs.248
                                        #   in Loop: Header=BB50_104 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -80(%rbp)          # 1-byte Spill
.LBB50_106:                             # %land.end.252
                                        #   in Loop: Header=BB50_104 Depth=1
	movb	-80(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_107
	jmp	.LBB50_108
.LBB50_107:                             # %while.body.253
                                        #   in Loop: Header=BB50_104 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_104
.LBB50_108:                             # %while.end.255
	jmp	.LBB50_109
.LBB50_109:                             # %if.end.256
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB50_146
# BB#110:                               # %if.then.258
	movl	$0, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB50_112
# BB#111:                               # %if.then.262
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	$15, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
.LBB50_112:                             # %if.end.264
	movl	$0, -76(%rbp)
.LBB50_113:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_118 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$2, -76(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jge	.LBB50_116
# BB#114:                               # %land.lhs.true.267
                                        #   in Loop: Header=BB50_113 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB50_116
# BB#115:                               # %land.rhs.270
                                        #   in Loop: Header=BB50_113 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB50_116:                             # %land.end.274
                                        #   in Loop: Header=BB50_113 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_117
	jmp	.LBB50_131
.LBB50_117:                             # %for.body
                                        #   in Loop: Header=BB50_113 Depth=1
	movl	$0, -32(%rbp)
.LBB50_118:                             # %for.cond.275
                                        #   Parent Loop BB50_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-32(%rbp), %rax
	cmpb	$0, ParseAttrColor.costr(,%rax)
	je	.LBB50_123
# BB#119:                               # %for.body.277
                                        #   in Loop: Header=BB50_118 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	-32(%rbp), %rax
	movsbl	ParseAttrColor.costr(,%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB50_121
# BB#120:                               # %if.then.284
                                        #   in Loop: Header=BB50_113 Depth=1
	jmp	.LBB50_123
.LBB50_121:                             # %if.end.285
                                        #   in Loop: Header=BB50_118 Depth=2
	jmp	.LBB50_122
.LBB50_122:                             # %for.inc
                                        #   in Loop: Header=BB50_118 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB50_118
.LBB50_123:                             # %for.end
                                        #   in Loop: Header=BB50_113 Depth=1
	movslq	-32(%rbp), %rax
	cmpb	$0, ParseAttrColor.costr(,%rax)
	jne	.LBB50_127
# BB#124:                               # %if.then.290
	cmpl	$0, -28(%rbp)
	je	.LBB50_126
# BB#125:                               # %if.then.292
	xorl	%edi, %edi
	movabsq	$.L.str.333, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_126:                             # %if.end.294
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_127:                             # %if.end.295
                                        #   in Loop: Header=BB50_113 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	shll	$4, %eax
	movl	-32(%rbp), %ecx
	andl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$48, -32(%rbp)
	jl	.LBB50_129
# BB#128:                               # %if.then.301
                                        #   in Loop: Header=BB50_113 Depth=1
	movl	-36(%rbp), %eax
	andl	$8447, %eax             # imm = 0x20FF
	orl	$512, %eax              # imm = 0x200
	movl	%eax, -36(%rbp)
.LBB50_129:                             # %if.end.304
                                        #   in Loop: Header=BB50_113 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#130:                               # %for.inc.306
                                        #   in Loop: Header=BB50_113 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB50_113
.LBB50_131:                             # %for.end.308
	movl	-36(%rbp), %eax
	andl	$3840, %eax             # imm = 0xF00
	cmpl	$3840, %eax             # imm = 0xF00
	jne	.LBB50_133
# BB#132:                               # %if.then.312
	movl	-36(%rbp), %eax
	xorl	$3840, %eax             # imm = 0xF00
	movl	%eax, -36(%rbp)
.LBB50_133:                             # %if.end.314
	movl	-36(%rbp), %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB50_135
# BB#134:                               # %if.then.317
	movl	-36(%rbp), %eax
	xorl	$9216, %eax             # imm = 0x2400
	movl	%eax, -36(%rbp)
.LBB50_135:                             # %if.end.319
	cmpl	$1, -72(%rbp)
	jne	.LBB50_137
# BB#136:                               # %if.then.322
	movl	-36(%rbp), %eax
	orl	$240, %eax
	movl	%eax, -36(%rbp)
.LBB50_137:                             # %if.end.324
	cmpl	$2, -72(%rbp)
	je	.LBB50_140
# BB#138:                               # %land.lhs.true.327
	cmpl	$255, -36(%rbp)
	je	.LBB50_140
# BB#139:                               # %if.then.330
	movl	-36(%rbp), %eax
	orl	$256, %eax              # imm = 0x100
	movl	%eax, -36(%rbp)
.LBB50_140:                             # %if.end.332
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB50_145
# BB#141:                               # %land.lhs.true.335
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB50_145
# BB#142:                               # %if.then.339
	cmpl	$0, -28(%rbp)
	je	.LBB50_144
# BB#143:                               # %if.then.341
	xorl	%edi, %edi
	movabsq	$.L.str.334, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_144:                             # %if.end.343
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_145:                             # %if.end.344
	movl	-36(%rbp), %eax
	xorl	$255, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shll	$16, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB50_146:                             # %if.end.348
	jmp	.LBB50_147
.LBB50_147:                             # %while.cond.349
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -82(%rbp)          # 1-byte Spill
	je	.LBB50_149
# BB#148:                               # %land.rhs.352
                                        #   in Loop: Header=BB50_147 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -82(%rbp)          # 1-byte Spill
.LBB50_149:                             # %land.end.356
                                        #   in Loop: Header=BB50_147 Depth=1
	movb	-82(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_150
	jmp	.LBB50_151
.LBB50_150:                             # %while.body.357
                                        #   in Loop: Header=BB50_147 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_147
.LBB50_151:                             # %while.end.359
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB50_155
# BB#152:                               # %if.then.361
	cmpl	$0, -28(%rbp)
	je	.LBB50_154
# BB#153:                               # %if.then.363
	xorl	%edi, %edi
	movabsq	$.L.str.332, %rsi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	Msg
.LBB50_154:                             # %if.end.365
	movl	$-1, -4(%rbp)
	jmp	.LBB50_158
.LBB50_155:                             # %if.end.366
	jmp	.LBB50_156
.LBB50_156:                             # %do.body
	jmp	.LBB50_157
.LBB50_157:                             # %do.end
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB50_158:                             # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	ParseAttrColor, .Lfunc_end50-ParseAttrColor
	.cfi_endproc

	.globl	ApplyAttrColor
	.align	16, 0x90
	.type	ApplyAttrColor,@function
ApplyAttrColor:                         # @ApplyAttrColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB51_2
.LBB51_2:                               # %do.end
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %edx
	orl	%eax, %edx
	movb	%dl, %sil
	movb	%sil, 1(%rcx)
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %edx
	xorl	%eax, %edx
	movb	%dl, %sil
	movb	%sil, 1(%rcx)
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	xorl	$255, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB51_6
# BB#3:                                 # %if.then
	movl	-4(%rbp), %eax
	andl	$3839, %eax             # imm = 0xEFF
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	je	.LBB51_5
# BB#4:                                 # %if.then.14
	movl	-4(%rbp), %eax
	andl	$15, %eax
	shll	$4, %eax
	movl	-4(%rbp), %ecx
	andl	$240, %ecx
	sarl	$4, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	andl	$512, %ecx              # imm = 0x200
	shll	$1, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	andl	$1024, %ecx             # imm = 0x400
	sarl	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB51_5:                               # %if.end
	jmp	.LBB51_6
.LBB51_6:                               # %if.end.25
	movl	-4(%rbp), %eax
	andl	$15, %eax
	cmpl	$15, %eax
	je	.LBB51_8
# BB#7:                                 # %if.then.29
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$191, %ecx
	movl	-4(%rbp), %edx
	sarl	$3, %edx
	andl	$64, %edx
	orl	%edx, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
.LBB51_8:                               # %if.end.38
	movl	-4(%rbp), %eax
	andl	$240, %eax
	cmpl	$240, %eax
	je	.LBB51_10
# BB#9:                                 # %if.then.42
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$127, %ecx
	movl	-4(%rbp), %edx
	sarl	$3, %edx
	andl	$128, %edx
	orl	%edx, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
.LBB51_10:                              # %if.end.51
	movq	-16(%rbp), %rax
	movzbl	4(%rax), %ecx
	xorl	$153, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, 4(%rax)
	movl	-4(%rbp), %ecx
	andl	$14, %ecx
	cmpl	$14, %ecx
	jne	.LBB51_12
# BB#11:                                # %if.then.59
	movl	-4(%rbp), %eax
	andl	$240, %eax
	movq	-16(%rbp), %rcx
	movzbl	4(%rcx), %edx
	andl	$15, %edx
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
.LBB51_12:                              # %if.end.65
	movl	-4(%rbp), %eax
	andl	$224, %eax
	cmpl	$224, %eax
	jne	.LBB51_14
# BB#13:                                # %if.then.69
	movl	-4(%rbp), %eax
	andl	$15, %eax
	movq	-16(%rbp), %rcx
	movzbl	4(%rcx), %edx
	andl	$240, %edx
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
.LBB51_14:                              # %if.end.75
	movl	-4(%rbp), %eax
	xorl	$153, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 4(%rdx)
# BB#15:                                # %do.body.79
	jmp	.LBB51_16
.LBB51_16:                              # %do.end.80
	popq	%rbp
	retq
.Lfunc_end51:
	.size	ApplyAttrColor, .Lfunc_end51-ApplyAttrColor
	.cfi_endproc

	.align	16, 0x90
	.type	InputSu,@function
InputSu:                                # @InputSu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$296, %eax              # imm = 0x128
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	calloc
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB52_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB52_7
.LBB52_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -32(%rbp)
	je	.LBB52_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB52_5
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movq	%rax, %rdx
	callq	su_fin
	jmp	.LBB52_6
.LBB52_5:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	callq	su_fin
.LBB52_6:                               # %if.end.7
	movl	$0, -4(%rbp)
.LBB52_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	InputSu, .Lfunc_end52-InputSu
	.cfi_endproc

	.globl	SetForeCanvas
	.align	16, 0x90
	.type	SetForeCanvas,@function
SetForeCanvas:                          # @SetForeCanvas
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	display, %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	336(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB53_2
# BB#1:                                 # %if.then
	jmp	.LBB53_12
.LBB53_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, display
	movq	-16(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
	cmpl	$0, focusminwidth
	je	.LBB53_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, focusminwidth
	jl	.LBB53_8
# BB#4:                                 # %lor.lhs.false
	movq	display, %rax
	movq	336(%rax), %rax
	movl	220(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	216(%rax), %ecx
	addl	$1, %ecx
	cmpl	focusminwidth, %ecx
	jl	.LBB53_8
.LBB53_5:                               # %lor.lhs.false.6
	cmpl	$0, focusminheight
	je	.LBB53_9
# BB#6:                                 # %land.lhs.true.8
	cmpl	$0, focusminheight
	jl	.LBB53_8
# BB#7:                                 # %lor.lhs.false.10
	movq	display, %rax
	movq	336(%rax), %rax
	movl	228(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	224(%rax), %ecx
	addl	$1, %ecx
	cmpl	focusminheight, %ecx
	jge	.LBB53_9
.LBB53_8:                               # %if.then.16
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
.LBB53_9:                               # %if.end.17
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
	movq	%rax, fore
	movq	display, %rax
	movq	384(%rax), %rax
	cmpq	fore, %rax
	jne	.LBB53_11
# BB#10:                                # %if.then.20
	movq	display, %rax
	movq	$0, 384(%rax)
.LBB53_11:                              # %if.end.22
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	callq	RefreshHStatus
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	%rax, -32(%rbp)
	movq	flayer, %rax
	movq	%rax, -40(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	336(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*48(%rax)
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$70, %esi
	movq	-40(%rbp), %rax
	movq	%rax, flayer
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, display
	callq	WindowChanged
	movq	-24(%rbp), %rax
	movq	%rax, display
.LBB53_12:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	SetForeCanvas, .Lfunc_end53-SetForeCanvas
	.cfi_endproc

	.align	16, 0x90
	.type	ResizeRegions,@function
ResizeRegions:                          # @ResizeRegions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB54_2
.LBB54_2:                               # %do.end
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB54_4
# BB#3:                                 # %if.then
	jmp	.LBB54_49
.LBB54_4:                               # %if.end
	movq	display, %rax
	movq	336(%rax), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB54_6
# BB#5:                                 # %if.then.1
	xorl	%edi, %edi
	movabsq	$.L.str.257, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB54_49
.LBB54_6:                               # %if.end.2
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movl	-12(%rbp), %esi
	andl	$4, %esi
	cmpl	$0, %esi
	movl	%ecx, %esi
	cmovnel	%eax, %esi
	movl	%esi, -36(%rbp)
	movl	-12(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%edx, %esi
	orl	-48(%rbp), %esi
	movl	%esi, -48(%rbp)
	movl	-12(%rbp), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	orl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB54_8
# BB#7:                                 # %if.then.12
	movq	display, %rax
	movq	336(%rax), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB54_8:                               # %if.end.15
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB54_20
# BB#9:                                 # %if.then.19
	cmpl	$0, -36(%rbp)
	je	.LBB54_11
# BB#10:                                # %cond.true
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB54_12
.LBB54_11:                              # %cond.false
	movq	display, %rax
	movq	336(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB54_12:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	48(%rax), %ecx
	andl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB54_14
# BB#13:                                # %if.then.27
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	EqualizeCanvas
.LBB54_14:                              # %if.end.29
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	48(%rax), %ecx
	xorl	$3, %ecx
	andl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB54_19
# BB#15:                                # %if.then.34
	movq	-56(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB54_17
# BB#16:                                # %if.then.37
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	EqualizeCanvas
	jmp	.LBB54_18
.LBB54_17:                              # %if.else
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	EqualizeCanvas
.LBB54_18:                              # %if.end.40
	jmp	.LBB54_19
.LBB54_19:                              # %if.end.41
	movq	-56(%rbp), %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
	jmp	.LBB54_49
.LBB54_20:                              # %if.end.43
	movq	-8(%rbp), %rdi
	movl	$.L.str.419, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_22
# BB#21:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movl	$.L.str.420, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_23
.LBB54_22:                              # %if.then.48
	movl	$2, -40(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB54_39
.LBB54_23:                              # %if.else.49
	movq	-8(%rbp), %rdi
	movl	$.L.str.271, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_25
# BB#24:                                # %lor.lhs.false.52
	movq	-8(%rbp), %rdi
	movl	$.L.str.272, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_26
.LBB54_25:                              # %if.then.55
	movl	$2, -40(%rbp)
	movl	$1, -28(%rbp)
	jmp	.LBB54_38
.LBB54_26:                              # %if.else.56
	cmpl	$0, -32(%rbp)
	jle	.LBB54_29
# BB#27:                                # %land.lhs.true
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$37, %eax
	jne	.LBB54_29
# BB#28:                                # %if.then.62
	movl	$1000, -44(%rbp)        # imm = 0x3E8
.LBB54_29:                              # %if.end.63
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB54_31
# BB#30:                                # %if.then.67
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	jmp	.LBB54_37
.LBB54_31:                              # %if.else.69
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB54_33
# BB#32:                                # %if.then.73
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	xorl	%ecx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB54_36
.LBB54_33:                              # %if.else.77
	movq	-8(%rbp), %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB54_35
# BB#34:                                # %if.then.81
	movl	$0, -28(%rbp)
.LBB54_35:                              # %if.end.82
	movl	$1, %eax
	movl	$2, %ecx
	cmpl	$0, -28(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -40(%rbp)
.LBB54_36:                              # %if.end.86
	jmp	.LBB54_37
.LBB54_37:                              # %if.end.87
	jmp	.LBB54_38
.LBB54_38:                              # %if.end.88
	jmp	.LBB54_39
.LBB54_39:                              # %if.end.89
	cmpl	$0, -40(%rbp)
	jne	.LBB54_42
# BB#40:                                # %land.lhs.true.91
	cmpl	$0, -28(%rbp)
	jne	.LBB54_42
# BB#41:                                # %if.then.93
	jmp	.LBB54_49
.LBB54_42:                              # %if.end.94
	cmpl	$0, -44(%rbp)
	je	.LBB54_44
# BB#43:                                # %if.then.96
	movl	$100, %eax
	movl	-28(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
.LBB54_44:                              # %if.end.97
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	andl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB54_46
# BB#45:                                # %if.then.102
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	ChangeCanvasSize
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB54_46:                              # %if.end.104
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	48(%rax), %ecx
	andl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB54_48
# BB#47:                                # %if.then.109
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-40(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	ChangeCanvasSize
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB54_48:                              # %if.end.112
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	ResizeLayersToCanvases
.LBB54_49:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	ResizeRegions, .Lfunc_end54-ResizeRegions
	.cfi_endproc

	.align	16, 0x90
	.type	ResizeFin,@function
ResizeFin:                              # @ResizeFin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %esi
	movl	%esi, -32(%rbp)
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %esi
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB55_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	ResizeRegions
	jmp	.LBB55_18
.LBB55_2:                               # %if.end
	cmpl	$104, -28(%rbp)
	jne	.LBB55_4
# BB#3:                                 # %if.then.4
	movl	-32(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_17
.LBB55_4:                               # %if.else
	cmpl	$118, -28(%rbp)
	jne	.LBB55_6
# BB#5:                                 # %if.then.7
	movl	-32(%rbp), %eax
	xorl	$2, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_16
.LBB55_6:                               # %if.else.9
	cmpl	$98, -28(%rbp)
	jne	.LBB55_8
# BB#7:                                 # %if.then.12
	movl	-32(%rbp), %eax
	orl	$3, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_15
.LBB55_8:                               # %if.else.13
	cmpl	$112, -28(%rbp)
	jne	.LBB55_10
# BB#9:                                 # %if.then.16
	movl	$2, %eax
	movl	$1, %ecx
	movq	display, %rdx
	movq	336(%rdx), %rdx
	cmpl	$1, 48(%rdx)
	cmovel	%ecx, %eax
	xorl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_14
.LBB55_10:                              # %if.else.20
	cmpl	$108, -28(%rbp)
	jne	.LBB55_12
# BB#11:                                # %if.then.23
	movl	-32(%rbp), %eax
	xorl	$4, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB55_13
.LBB55_12:                              # %if.else.25
	jmp	.LBB55_18
.LBB55_13:                              # %if.end.26
	jmp	.LBB55_14
.LBB55_14:                              # %if.end.27
	jmp	.LBB55_15
.LBB55_15:                              # %if.end.28
	jmp	.LBB55_16
.LBB55_16:                              # %if.end.29
	jmp	.LBB55_17
.LBB55_17:                              # %if.end.30
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-32(%rbp), %rcx
	movq	resizeprompts(,%rcx,8), %rdi
	callq	inp_setprompt
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movb	$28, (%rsi,%rcx)
.LBB55_18:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	ResizeFin, .Lfunc_end55-ResizeFin
	.cfi_endproc

	.align	16, 0x90
	.type	SaveArgs,@function
SaveArgs:                               # @SaveArgs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -28(%rbp)
.LBB56_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB56_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB56_1
.LBB56_3:                               # %while.end
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB56_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB56_5:                               # %if.end
	jmp	.LBB56_6
.LBB56_6:                               # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB56_8
# BB#7:                                 # %while.body.4
                                        #   in Loop: Header=BB56_6 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rbp)
	movq	(%rax), %rdi
	callq	SaveStr
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	addq	$8, %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, (%rcx)
	jmp	.LBB56_6
.LBB56_8:                               # %while.end.7
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	SaveArgs, .Lfunc_end56-SaveArgs
	.cfi_endproc

	.align	16, 0x90
	.type	WindowByName,@function
WindowByName:                           # @WindowByName
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	windows, %rdi
	movq	%rdi, -24(%rbp)
.LBB57_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB57_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8736(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB57_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB57_13
.LBB57_4:                               # %if.end
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_5
.LBB57_5:                               # %for.inc
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB57_1
.LBB57_6:                               # %for.end
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB57_7:                               # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB57_12
# BB#8:                                 # %for.body.4
                                        #   in Loop: Header=BB57_7 Depth=1
	movq	-24(%rbp), %rax
	movq	8736(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB57_10
# BB#9:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB57_13
.LBB57_10:                              # %if.end.10
                                        #   in Loop: Header=BB57_7 Depth=1
	jmp	.LBB57_11
.LBB57_11:                              # %for.inc.11
                                        #   in Loop: Header=BB57_7 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB57_7
.LBB57_12:                              # %for.end.13
	movq	$0, -8(%rbp)
.LBB57_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	WindowByName, .Lfunc_end57-WindowByName
	.cfi_endproc

	.align	16, 0x90
	.type	SelectLayoutFin,@function
SelectLayoutFin:                        # @SelectLayoutFin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB58_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, display
	jne	.LBB58_3
.LBB58_2:                               # %if.then
	jmp	.LBB58_12
.LBB58_3:                               # %if.end
	cmpl	$1, -12(%rbp)
	jne	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB58_6
# BB#5:                                 # %if.then.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	LoadLayout
	xorl	%edi, %edi
	callq	Activate
	jmp	.LBB58_12
.LBB58_6:                               # %if.end.5
	movq	-8(%rbp), %rdi
	callq	FindLayout
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB58_8
# BB#7:                                 # %if.then.7
	xorl	%edi, %edi
	movabsq	$.L.str.400, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB58_12
.LBB58_8:                               # %if.else
	movq	-32(%rbp), %rax
	movq	display, %rcx
	cmpq	344(%rcx), %rax
	jne	.LBB58_10
# BB#9:                                 # %if.then.10
	xorl	%edi, %edi
	movabsq	$.L.str.401, %rsi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.11
	movq	-32(%rbp), %rdi
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	LoadLayout
	xorl	%edi, %edi
	callq	Activate
.LBB58_11:                              # %if.end.12
	jmp	.LBB58_12
.LBB58_12:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	SelectLayoutFin, .Lfunc_end58-SelectLayoutFin
	.cfi_endproc

	.globl	Parse
	.align	16, 0x90
	.type	Parse,@function
Parse:                                  # @Parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$4368, %rsp             # imm = 0x1110
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -80(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB59_2
.LBB59_2:                               # %do.end
	movl	$0, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB59_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_4 Depth 2
                                        #     Child Loop BB59_28 Depth 2
                                        #       Child Loop BB59_74 Depth 3
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.LBB59_4:                               # %while.cond
                                        #   Parent Loop BB59_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -4233(%rbp)        # 1-byte Spill
	je	.LBB59_8
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB59_4 Depth=2
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -4234(%rbp)        # 1-byte Spill
	je	.LBB59_7
# BB#6:                                 # %lor.rhs
                                        #   in Loop: Header=BB59_4 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	movb	%dl, -4234(%rbp)        # 1-byte Spill
.LBB59_7:                               # %lor.end
                                        #   in Loop: Header=BB59_4 Depth=2
	movb	-4234(%rbp), %al        # 1-byte Reload
	movb	%al, -4233(%rbp)        # 1-byte Spill
.LBB59_8:                               # %land.end
                                        #   in Loop: Header=BB59_4 Depth=2
	movb	-4233(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_9
	jmp	.LBB59_10
.LBB59_9:                               # %while.body
                                        #   in Loop: Header=BB59_4 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB59_4
.LBB59_10:                              # %while.end
                                        #   in Loop: Header=BB59_3 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB59_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$33, %ecx
	jne	.LBB59_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB59_3 Depth=1
	movabsq	$.L.str.308, %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	$4, (%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	-72(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -72(%rbp)
	jmp	.LBB59_3
.LBB59_13:                              # %if.end
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB59_16
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	je	.LBB59_16
# BB#15:                                # %lor.lhs.false.20
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB59_23
.LBB59_16:                              # %if.then.24
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -68(%rbp)
.LBB59_17:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB59_22
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB59_17 Depth=1
	jmp	.LBB59_19
.LBB59_19:                              # %do.body.28
                                        #   in Loop: Header=BB59_17 Depth=1
	jmp	.LBB59_20
.LBB59_20:                              # %do.end.29
                                        #   in Loop: Header=BB59_17 Depth=1
	jmp	.LBB59_21
.LBB59_21:                              # %for.inc
                                        #   in Loop: Header=BB59_17 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB59_17
.LBB59_22:                              # %for.end
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	-72(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB59_181
.LBB59_23:                              # %if.end.31
                                        #   in Loop: Header=BB59_3 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	cmpl	$64, %eax
	jl	.LBB59_25
# BB#24:                                # %if.then.35
	xorl	%edi, %edi
	movabsq	$.L.str.309, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB59_181
.LBB59_25:                              # %if.end.36
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, (%rcx)
# BB#26:                                # %do.body.38
                                        #   in Loop: Header=BB59_3 Depth=1
	jmp	.LBB59_27
.LBB59_27:                              # %do.end.39
                                        #   in Loop: Header=BB59_3 Depth=1
	jmp	.LBB59_28
.LBB59_28:                              # %while.cond.40
                                        #   Parent Loop BB59_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB59_74 Depth 3
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB59_174
# BB#29:                                # %while.body.42
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jne	.LBB59_31
# BB#30:                                # %if.then.46
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$0, -68(%rbp)
	jmp	.LBB59_173
.LBB59_31:                              # %if.else
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpl	$39, -68(%rbp)
	je	.LBB59_60
# BB#32:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB59_60
# BB#33:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$110, %ecx
	je	.LBB59_44
# BB#34:                                # %lor.lhs.false.58
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$114, %ecx
	je	.LBB59_44
# BB#35:                                # %lor.lhs.false.63
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$116, %ecx
	je	.LBB59_44
# BB#36:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB59_44
# BB#37:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$34, %ecx
	je	.LBB59_44
# BB#38:                                # %lor.lhs.false.78
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB59_44
# BB#39:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$36, %ecx
	je	.LBB59_44
# BB#40:                                # %lor.lhs.false.88
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$35, %ecx
	je	.LBB59_44
# BB#41:                                # %lor.lhs.false.93
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB59_44
# BB#42:                                # %lor.lhs.false.98
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_60
# BB#43:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$55, %ecx
	jg	.LBB59_60
.LBB59_44:                              # %if.then.108
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_53
# BB#45:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$55, %ecx
	jg	.LBB59_53
# BB#46:                                # %if.then.117
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_52
# BB#47:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$55, %ecx
	jg	.LBB59_52
# BB#48:                                # %if.then.129
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	shll	$3, %ecx
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	subl	$48, %edx
	orl	%edx, %ecx
	movb	%cl, %sil
	movq	-64(%rbp), %rax
	movb	%sil, (%rax)
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_51
# BB#49:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$55, %ecx
	jg	.LBB59_51
# BB#50:                                # %if.then.144
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	shll	$3, %ecx
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edx
	subl	$48, %edx
	orl	%edx, %ecx
	movb	%cl, %sil
	movq	-64(%rbp), %rax
	movb	%sil, (%rax)
.LBB59_51:                              # %if.end.152
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_52
.LBB59_52:                              # %if.end.153
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB59_59
.LBB59_53:                              # %if.else.155
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$110, %edx
	movl	%ecx, -4240(%rbp)       # 4-byte Spill
	movl	%edx, -4244(%rbp)       # 4-byte Spill
	je	.LBB59_54
	jmp	.LBB59_182
.LBB59_182:                             # %if.else.155
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	-4240(%rbp), %eax       # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -4248(%rbp)       # 4-byte Spill
	je	.LBB59_55
	jmp	.LBB59_183
.LBB59_183:                             # %if.else.155
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	-4240(%rbp), %eax       # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -4252(%rbp)       # 4-byte Spill
	je	.LBB59_56
	jmp	.LBB59_57
.LBB59_54:                              # %sw.bb
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-64(%rbp), %rax
	movb	$10, (%rax)
	jmp	.LBB59_58
.LBB59_55:                              # %sw.bb.157
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-64(%rbp), %rax
	movb	$13, (%rax)
	jmp	.LBB59_58
.LBB59_56:                              # %sw.bb.158
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-64(%rbp), %rax
	movb	$9, (%rax)
	jmp	.LBB59_58
.LBB59_57:                              # %sw.default
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-64(%rbp), %rax
	movb	%cl, (%rax)
.LBB59_58:                              # %sw.epilog
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB59_59:                              # %if.end.160
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_172
.LBB59_60:                              # %if.else.161
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpl	$39, -68(%rbp)
	je	.LBB59_151
# BB#61:                                # %land.lhs.true.164
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB59_151
# BB#62:                                # %land.lhs.true.168
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB59_71
# BB#63:                                # %lor.lhs.false.173
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB59_71
# BB#64:                                # %lor.lhs.false.178
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB59_66
# BB#65:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$122, %ecx
	jle	.LBB59_71
.LBB59_66:                              # %lor.lhs.false.188
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB59_68
# BB#67:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$90, %ecx
	jle	.LBB59_71
.LBB59_68:                              # %lor.lhs.false.198
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_70
# BB#69:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB59_71
.LBB59_70:                              # %lor.lhs.false.208
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB59_151
.LBB59_71:                              # %if.then.213
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	%rax, -88(%rbp)
# BB#72:                                # %do.body.215
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_73
.LBB59_73:                              # %do.end.216
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB59_74:                              # %while.cond.218
                                        #   Parent Loop BB59_3 Depth=1
                                        #     Parent Loop BB59_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB59_92
# BB#75:                                # %while.body.220
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB59_78
# BB#76:                                # %land.lhs.true.224
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$125, %ecx
	jne	.LBB59_78
# BB#77:                                # %if.then.228
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_92
.LBB59_78:                              # %if.end.229
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB59_81
# BB#79:                                # %land.lhs.true.233
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB59_81
# BB#80:                                # %if.then.237
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_92
.LBB59_81:                              # %if.end.238
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB59_91
# BB#82:                                # %land.lhs.true.242
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB59_91
# BB#83:                                # %land.lhs.true.246
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB59_85
# BB#84:                                # %lor.lhs.false.250
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$122, %ecx
	jle	.LBB59_91
.LBB59_85:                              # %land.lhs.true.254
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB59_87
# BB#86:                                # %lor.lhs.false.258
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$90, %ecx
	jle	.LBB59_91
.LBB59_87:                              # %land.lhs.true.262
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB59_89
# BB#88:                                # %lor.lhs.false.266
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB59_91
.LBB59_89:                              # %land.lhs.true.270
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB59_91
# BB#90:                                # %if.then.274
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_92
.LBB59_91:                              # %if.end.275
                                        #   in Loop: Header=BB59_74 Depth=3
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB59_74
.LBB59_92:                              # %while.end.277
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB59_94
# BB#93:                                # %lor.lhs.false.281
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB59_97
.LBB59_94:                              # %if.then.285
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB59_96
# BB#95:                                # %if.then.287
	xorl	%edi, %edi
	movabsq	$.L.str.310, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB59_181
.LBB59_96:                              # %if.end.288
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB59_97:                              # %if.end.290
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-96(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -97(%rbp)
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
# BB#98:                                # %do.body.291
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_99
.LBB59_99:                              # %do.end.292
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB59_101
# BB#100:                               # %if.then.296
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gettermcapstring
	movq	%rax, -112(%rbp)
	jmp	.LBB59_137
.LBB59_101:                             # %if.else.297
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB59_103
# BB#102:                               # %if.then.301
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB59_103:                             # %if.end.303
                                        #   in Loop: Header=BB59_28 Depth=2
	leaq	-123(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rdi
	movl	$.L.str.311, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_108
# BB#104:                               # %if.then.306
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpq	$0, display
	je	.LBB59_106
# BB#105:                               # %cond.true
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, -4264(%rbp)       # 8-byte Spill
	jmp	.LBB59_107
.LBB59_106:                             # %cond.false
                                        #   in Loop: Header=BB59_28 Depth=2
	movabsq	$.L.str.312, %rax
	movq	%rax, -4264(%rbp)       # 8-byte Spill
	jmp	.LBB59_107
.LBB59_107:                             # %cond.end
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-4264(%rbp), %rax       # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB59_136
.LBB59_108:                             # %if.else.309
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	movl	$.L.str.313, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_113
# BB#109:                               # %if.then.312
                                        #   in Loop: Header=BB59_28 Depth=2
	leaq	-123(%rbp), %rdi
	cmpq	$0, display
	movq	%rdi, -4272(%rbp)       # 8-byte Spill
	je	.LBB59_111
# BB#110:                               # %cond.true.315
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -4276(%rbp)       # 4-byte Spill
	jmp	.LBB59_112
.LBB59_111:                             # %cond.false.316
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -4276(%rbp)       # 4-byte Spill
	jmp	.LBB59_112
.LBB59_112:                             # %cond.end.317
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	-4276(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.1, %rsi
	movq	-4272(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -4280(%rbp)       # 4-byte Spill
	jmp	.LBB59_135
.LBB59_113:                             # %if.else.320
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	movl	$.L.str.314, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_118
# BB#114:                               # %if.then.323
                                        #   in Loop: Header=BB59_28 Depth=2
	leaq	-123(%rbp), %rdi
	cmpq	$0, display
	movq	%rdi, -4288(%rbp)       # 8-byte Spill
	je	.LBB59_116
# BB#115:                               # %cond.true.326
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	display, %rax
	movl	448(%rax), %ecx
	movl	%ecx, -4292(%rbp)       # 4-byte Spill
	jmp	.LBB59_117
.LBB59_116:                             # %cond.false.327
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -4292(%rbp)       # 4-byte Spill
	jmp	.LBB59_117
.LBB59_117:                             # %cond.end.328
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	-4292(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.1, %rsi
	movq	-4288(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -4296(%rbp)       # 4-byte Spill
	jmp	.LBB59_134
.LBB59_118:                             # %if.else.331
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	movl	$.L.str.315, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_120
# BB#119:                               # %if.then.334
                                        #   in Loop: Header=BB59_28 Depth=2
	leaq	-123(%rbp), %rdi
	movq	%rdi, -4304(%rbp)       # 8-byte Spill
	callq	getpid
	movabsq	$.L.str.1, %rsi
	movq	-4304(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -4308(%rbp)       # 4-byte Spill
	jmp	.LBB59_133
.LBB59_120:                             # %if.else.338
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	movl	$.L.str.316, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_125
# BB#121:                               # %if.then.341
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %esi
	leaq	-4224(%rbp), %rdi
	callq	getcwd
	cmpq	$0, %rax
	jne	.LBB59_123
# BB#122:                               # %if.then.346
                                        #   in Loop: Header=BB59_28 Depth=2
	movabsq	$.L.str.317, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB59_124
.LBB59_123:                             # %if.else.347
                                        #   in Loop: Header=BB59_28 Depth=2
	leaq	-4224(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB59_124:                             # %if.end.349
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_132
.LBB59_125:                             # %if.else.350
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	movl	$.L.str.318, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB59_130
# BB#126:                               # %if.then.353
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$46, %esi
	movq	SockName, %rdi
	callq	strchr
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	je	.LBB59_128
# BB#127:                               # %if.then.356
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB59_129
.LBB59_128:                             # %if.else.358
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	SockName, %rax
	movq	%rax, -112(%rbp)
.LBB59_129:                             # %if.end.359
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_131
.LBB59_130:                             # %if.else.360
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-88(%rbp), %rdi
	callq	getenv
	movq	%rax, -112(%rbp)
.LBB59_131:                             # %if.end.362
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_132
.LBB59_132:                             # %if.end.363
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_133
.LBB59_133:                             # %if.end.364
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_134
.LBB59_134:                             # %if.end.365
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_135
.LBB59_135:                             # %if.end.366
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_136
.LBB59_136:                             # %if.end.367
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_137
.LBB59_137:                             # %if.end.368
                                        #   in Loop: Header=BB59_28 Depth=2
	movb	-97(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	cmpq	$0, -112(%rbp)
	je	.LBB59_139
# BB#138:                               # %cond.true.370
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-112(%rbp), %rdi
	callq	strlen
	movq	%rax, -4320(%rbp)       # 8-byte Spill
	jmp	.LBB59_140
.LBB59_139:                             # %cond.false.372
                                        #   in Loop: Header=BB59_28 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -4320(%rbp)       # 8-byte Spill
	jmp	.LBB59_140
.LBB59_140:                             # %cond.end.373
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-4320(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, -4228(%rbp)
	je	.LBB59_150
# BB#141:                               # %if.then.377
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_142
.LBB59_142:                             # %do.body.378
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_143
.LBB59_143:                             # %do.end.379
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB59_147
# BB#144:                               # %if.then.383
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, -4328(%rbp)       # 8-byte Spill
	movq	%rcx, -4336(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-4328(%rbp), %rax       # 8-byte Reload
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4232(%rbp)
	cmpl	$0, -4232(%rbp)
	jle	.LBB59_146
# BB#145:                               # %if.then.394
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-4232(%rbp), %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movq	%rdi, -4344(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -4352(%rbp)       # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-4344(%rbp), %rdi       # 8-byte Reload
	movq	-4352(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	bcopy
	movl	-4232(%rbp), %r8d
	movq	-48(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB59_146:                             # %if.end.400
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_147
.LBB59_147:                             # %if.end.401
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB59_149
# BB#148:                               # %if.then.408
	xorl	%edi, %edi
	movabsq	$.L.str.319, %rsi
	movq	rc_name, %rdx
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB59_181
.LBB59_149:                             # %if.end.409
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movslq	-4228(%rbp), %rdx
	callq	bcopy
	movl	-4228(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
.LBB59_150:                             # %if.end.413
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_28
.LBB59_151:                             # %if.else.414
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpl	$39, -68(%rbp)
	je	.LBB59_158
# BB#152:                               # %land.lhs.true.417
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB59_158
# BB#153:                               # %land.lhs.true.421
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB59_158
# BB#154:                               # %if.then.425
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB59_156
# BB#155:                               # %cond.true.430
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	$127, %eax
	movl	%eax, -4356(%rbp)       # 4-byte Spill
	jmp	.LBB59_157
.LBB59_156:                             # %cond.false.431
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$31, %ecx
	movl	%ecx, -4356(%rbp)       # 4-byte Spill
.LBB59_157:                             # %cond.end.433
                                        #   in Loop: Header=BB59_28 Depth=2
	movl	-4356(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB59_170
.LBB59_158:                             # %if.else.437
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB59_162
# BB#159:                               # %land.lhs.true.440
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB59_161
# BB#160:                               # %lor.lhs.false.444
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB59_162
.LBB59_161:                             # %if.then.448
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB59_169
.LBB59_162:                             # %if.else.450
                                        #   in Loop: Header=BB59_28 Depth=2
	cmpl	$0, -68(%rbp)
	jne	.LBB59_167
# BB#163:                               # %land.lhs.true.453
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB59_166
# BB#164:                               # %lor.lhs.false.457
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB59_166
# BB#165:                               # %lor.lhs.false.461
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB59_167
.LBB59_166:                             # %if.then.465
                                        #   in Loop: Header=BB59_3 Depth=1
	jmp	.LBB59_174
.LBB59_167:                             # %if.else.466
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
# BB#168:                               # %if.end.468
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_169
.LBB59_169:                             # %if.end.469
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_170
.LBB59_170:                             # %if.end.470
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_171
.LBB59_171:                             # %if.end.471
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_172
.LBB59_172:                             # %if.end.472
                                        #   in Loop: Header=BB59_28 Depth=2
	jmp	.LBB59_173
.LBB59_173:                             # %if.end.473
                                        #   in Loop: Header=BB59_28 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB59_28
.LBB59_174:                             # %while.end.475
                                        #   in Loop: Header=BB59_3 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB59_176
# BB#175:                               # %if.then.477
	xorl	%edi, %edi
	movabsq	$.L.str.320, %rsi
	movq	rc_name, %rdx
	movl	-68(%rbp), %ecx
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB59_181
.LBB59_176:                             # %if.end.478
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB59_178
# BB#177:                               # %if.then.480
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB59_178:                             # %if.end.482
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
# BB#179:                               # %do.body.483
                                        #   in Loop: Header=BB59_3 Depth=1
	jmp	.LBB59_180
.LBB59_180:                             # %do.end.484
                                        #   in Loop: Header=BB59_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-8(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB59_3
.LBB59_181:                             # %return
	movl	-4(%rbp), %eax
	addq	$4368, %rsp             # imm = 0x1110
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Parse, .Lfunc_end59-Parse
	.cfi_endproc

	.globl	WindowByNoN
	.align	16, 0x90
	.type	WindowByNoN,@function
WindowByNoN:                            # @WindowByNoN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	WindowByNumber
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jl	.LBB60_2
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	cmpl	maxwin, %eax
	jl	.LBB60_5
.LBB60_2:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	WindowByName
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB60_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB60_6
.LBB60_4:                               # %if.end
	movl	$-1, -4(%rbp)
	jmp	.LBB60_6
.LBB60_5:                               # %if.end.4
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB60_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	WindowByNoN, .Lfunc_end60-WindowByNoN
	.cfi_endproc

	.globl	IsNumColon
	.align	16, 0x90
	.type	IsNumColon,@function
IsNumColon:                             # @IsNumColon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$58, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	rindex
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB61_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	strncpy
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB61_3
.LBB61_2:                               # %if.else
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB61_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	IsNum
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	IsNumColon, .Lfunc_end61-IsNumColon
	.cfi_endproc

	.align	16, 0x90
	.type	IsNum,@function
IsNum:                                  # @IsNum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %esi
	addl	$48, %esi
	movl	%esi, -20(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB62_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB62_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB62_5
.LBB62_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB62_8
.LBB62_5:                               # %if.end
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_6
.LBB62_6:                               # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB62_1
.LBB62_7:                               # %for.end
	movl	$1, -4(%rbp)
.LBB62_8:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end62:
	.size	IsNum, .Lfunc_end62-IsNum
	.cfi_endproc

	.globl	FindNiceWindow
	.align	16, 0x90
	.type	FindNiceWindow,@function
FindNiceWindow:                         # @FindNiceWindow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB63_2
.LBB63_2:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB63_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	WindowByNoN
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB63_5
# BB#4:                                 # %if.then.1
	movslq	-28(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
.LBB63_5:                               # %if.end
	jmp	.LBB63_6
.LBB63_6:                               # %if.end.2
	cmpq	$0, display
	jne	.LBB63_8
# BB#7:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB63_72
.LBB63_8:                               # %if.end.5
	cmpq	$0, -16(%rbp)
	je	.LBB63_11
# BB#9:                                 # %land.lhs.true
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB63_11
# BB#10:                                # %if.then.9
	movq	$0, -16(%rbp)
.LBB63_11:                              # %if.end.10
	cmpq	$0, -16(%rbp)
	je	.LBB63_14
# BB#12:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	IsOnDisplay
	cmpl	$0, %eax
	je	.LBB63_68
# BB#13:                                # %land.lhs.true.14
	cmpq	$0, -24(%rbp)
	jne	.LBB63_68
.LBB63_14:                              # %if.then.16
	movq	$0, -16(%rbp)
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB63_15 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB63_19
# BB#17:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB63_15 Depth=1
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB63_19
# BB#18:                                # %if.then.23
	jmp	.LBB63_21
.LBB63_19:                              # %if.end.24
                                        #   in Loop: Header=BB63_15 Depth=1
	jmp	.LBB63_20
.LBB63_20:                              # %for.inc
                                        #   in Loop: Header=BB63_15 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_15
.LBB63_21:                              # %for.end
	cmpq	$0, -16(%rbp)
	jne	.LBB63_31
# BB#22:                                # %if.then.26
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_23:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_30
# BB#24:                                # %for.body.29
                                        #   in Loop: Header=BB63_23 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB63_28
# BB#25:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB63_23 Depth=1
	movq	-16(%rbp), %rdi
	callq	IsOnDisplay
	cmpl	$0, %eax
	jne	.LBB63_28
# BB#26:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB63_23 Depth=1
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB63_28
# BB#27:                                # %if.then.40
	jmp	.LBB63_30
.LBB63_28:                              # %if.end.41
                                        #   in Loop: Header=BB63_23 Depth=1
	jmp	.LBB63_29
.LBB63_29:                              # %for.inc.42
                                        #   in Loop: Header=BB63_23 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_23
.LBB63_30:                              # %for.end.44
	jmp	.LBB63_31
.LBB63_31:                              # %if.end.45
	cmpq	$0, -16(%rbp)
	jne	.LBB63_40
# BB#32:                                # %if.then.47
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_33:                              # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_39
# BB#34:                                # %for.body.50
                                        #   in Loop: Header=BB63_33 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB63_37
# BB#35:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB63_33 Depth=1
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB63_37
# BB#36:                                # %if.then.58
	jmp	.LBB63_39
.LBB63_37:                              # %if.end.59
                                        #   in Loop: Header=BB63_33 Depth=1
	jmp	.LBB63_38
.LBB63_38:                              # %for.inc.60
                                        #   in Loop: Header=BB63_33 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_33
.LBB63_39:                              # %for.end.62
	jmp	.LBB63_40
.LBB63_40:                              # %if.end.63
	cmpq	$0, -16(%rbp)
	jne	.LBB63_50
# BB#41:                                # %if.then.65
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_42:                              # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_49
# BB#43:                                # %for.body.68
                                        #   in Loop: Header=BB63_42 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB63_47
# BB#44:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB63_42 Depth=1
	movq	-16(%rbp), %rdi
	callq	IsOnDisplay
	cmpl	$0, %eax
	jne	.LBB63_47
# BB#45:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB63_42 Depth=1
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB63_47
# BB#46:                                # %if.then.79
	jmp	.LBB63_49
.LBB63_47:                              # %if.end.80
                                        #   in Loop: Header=BB63_42 Depth=1
	jmp	.LBB63_48
.LBB63_48:                              # %for.inc.81
                                        #   in Loop: Header=BB63_42 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_42
.LBB63_49:                              # %for.end.83
	jmp	.LBB63_50
.LBB63_50:                              # %if.end.84
	cmpq	$0, -16(%rbp)
	jne	.LBB63_58
# BB#51:                                # %if.then.86
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_52:                              # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_57
# BB#53:                                # %for.body.89
                                        #   in Loop: Header=BB63_52 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB63_55
# BB#54:                                # %if.then.93
	jmp	.LBB63_57
.LBB63_55:                              # %if.end.94
                                        #   in Loop: Header=BB63_52 Depth=1
	jmp	.LBB63_56
.LBB63_56:                              # %for.inc.95
                                        #   in Loop: Header=BB63_52 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_52
.LBB63_57:                              # %for.end.97
	jmp	.LBB63_58
.LBB63_58:                              # %if.end.98
	cmpq	$0, -16(%rbp)
	jne	.LBB63_67
# BB#59:                                # %if.then.100
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB63_60:                              # %for.cond.101
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_66
# BB#61:                                # %for.body.103
                                        #   in Loop: Header=BB63_60 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB63_64
# BB#62:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB63_60 Depth=1
	movq	-16(%rbp), %rdi
	callq	IsOnDisplay
	cmpl	$0, %eax
	jne	.LBB63_64
# BB#63:                                # %if.then.110
	jmp	.LBB63_66
.LBB63_64:                              # %if.end.111
                                        #   in Loop: Header=BB63_60 Depth=1
	jmp	.LBB63_65
.LBB63_65:                              # %for.inc.112
                                        #   in Loop: Header=BB63_60 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_60
.LBB63_66:                              # %for.end.114
	jmp	.LBB63_67
.LBB63_67:                              # %if.end.115
	jmp	.LBB63_68
.LBB63_68:                              # %if.end.116
	cmpq	$0, -16(%rbp)
	je	.LBB63_71
# BB#69:                                # %land.lhs.true.118
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB63_71
# BB#70:                                # %if.then.122
	movq	$0, -16(%rbp)
.LBB63_71:                              # %if.end.123
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB63_72:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	FindNiceWindow, .Lfunc_end63-FindNiceWindow
	.cfi_endproc

	.globl	AddWindows
	.align	16, 0x90
	.type	AddWindows,@function
AddWindows:                             # @AddWindows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movl	-24(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB64_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -28(%rbp)
	jge	.LBB64_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB64_66
.LBB64_3:                               # %if.end
	movl	-24(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB64_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -28(%rbp)
	jl	.LBB64_6
# BB#5:                                 # %cond.true
	movq	wtab, %rax
	movslq	-28(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB64_7
.LBB64_6:                               # %cond.false
	movq	wtab, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB64_7:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB64_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	wtab, %rcx
	movslq	maxwin, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB64_65
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	$-1, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB64_12
# BB#10:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB64_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB64_12:                              # %if.end.15
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB64_14
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_64
.LBB64_14:                              # %if.end.19
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB64_18
# BB#15:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpq	$0, display
	je	.LBB64_18
# BB#16:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB64_18
# BB#17:                                # %if.then.27
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_64
.LBB64_18:                              # %if.end.28
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpq	$0, display
	je	.LBB64_22
# BB#19:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB64_22
# BB#20:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	display, %rax
	movq	376(%rax), %rax
	movq	9528(%rax), %rax
	movq	-64(%rbp), %rcx
	cmpq	9528(%rcx), %rax
	je	.LBB64_22
# BB#21:                                # %if.then.38
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_64
.LBB64_22:                              # %if.end.39
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$20, -76(%rbp)
	jle	.LBB64_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	$20, -76(%rbp)
.LBB64_24:                              # %if.end.44
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %edx
	subl	$24, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB64_26
# BB#25:                                # %if.then.52
	jmp	.LBB64_65
.LBB64_26:                              # %if.end.53
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.LBB64_28
# BB#27:                                # %lor.lhs.false
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-24(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB64_29
.LBB64_28:                              # %if.then.58
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$32, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$32, (%rax)
.LBB64_29:                              # %if.end.60
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	movl	192(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB64_33
# BB#30:                                # %if.then.63
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB64_32
# BB#31:                                # %if.then.66
	jmp	.LBB64_65
.LBB64_32:                              # %if.end.67
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_33
.LBB64_33:                              # %if.end.68
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-24(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB64_37
# BB#34:                                # %lor.lhs.false.71
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB64_37
# BB#35:                                # %lor.lhs.false.74
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-24(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB64_51
# BB#36:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	192(%rcx), %eax
	jge	.LBB64_51
.LBB64_37:                              # %if.then.81
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$3, 10836(%rax)
	jne	.LBB64_40
# BB#38:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpl	$-1, renditions+4
	je	.LBB64_40
# BB#39:                                # %if.then.87
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	renditions+4, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB64_50
.LBB64_40:                              # %if.else
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$2, 10816(%rax)
	je	.LBB64_42
# BB#41:                                # %lor.lhs.false.90
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$1, 10816(%rax)
	jne	.LBB64_44
.LBB64_42:                              # %land.lhs.true.94
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpl	$-1, renditions
	je	.LBB64_44
# BB#43:                                # %if.then.97
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	renditions, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB64_49
.LBB64_44:                              # %if.else.98
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$2, 10844(%rax)
	je	.LBB64_46
# BB#45:                                # %lor.lhs.false.101
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$3, 10844(%rax)
	jne	.LBB64_48
.LBB64_46:                              # %land.lhs.true.105
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpl	$-1, renditions+8
	je	.LBB64_48
# BB#47:                                # %if.then.108
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	renditions+8, %eax
	movl	%eax, -80(%rbp)
.LBB64_48:                              # %if.end.109
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_49
.LBB64_49:                              # %if.end.110
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_50
.LBB64_50:                              # %if.end.111
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_51
.LBB64_51:                              # %if.end.112
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpl	$-1, -80(%rbp)
	je	.LBB64_53
# BB#52:                                # %if.then.115
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rdi
	movl	-80(%rbp), %esi
	callq	AddWinMsgRend
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB64_53:                              # %if.end.117
                                        #   in Loop: Header=BB64_8 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	192(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movq	-40(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, display
	je	.LBB64_56
# BB#54:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB64_56
# BB#55:                                # %if.then.127
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$42, (%rax)
.LBB64_56:                              # %if.end.129
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	-24(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB64_61
# BB#57:                                # %if.then.132
                                        #   in Loop: Header=BB64_8 Depth=1
	cmpq	$0, display
	je	.LBB64_60
# BB#58:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-64(%rbp), %rax
	movq	display, %rcx
	cmpq	384(%rcx), %rax
	jne	.LBB64_60
# BB#59:                                # %if.then.137
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$45, (%rax)
.LBB64_60:                              # %if.end.139
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	AddWindowFlags
	movq	%rax, -40(%rbp)
.LBB64_61:                              # %if.end.141
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$32, (%rax)
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	callq	strncpy
	movl	-76(%rbp), %r8d
	movq	-40(%rbp), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$-1, -80(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB64_63
# BB#62:                                # %if.then.149
                                        #   in Loop: Header=BB64_8 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	callq	AddWinMsgRend
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB64_63:                              # %if.end.151
                                        #   in Loop: Header=BB64_8 Depth=1
	jmp	.LBB64_64
.LBB64_64:                              # %for.inc
                                        #   in Loop: Header=BB64_8 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB64_8
.LBB64_65:                              # %for.end
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB64_66:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	AddWindows, .Lfunc_end64-AddWindows
	.cfi_endproc

	.globl	AddWindowFlags
	.align	16, 0x90
	.type	AddWindowFlags,@function
AddWindowFlags:                         # @AddWindowFlags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB65_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$12, -20(%rbp)
	jge	.LBB65_3
.LBB65_2:                               # %if.then
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_20
.LBB65_3:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB65_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 72(%rax)
	je	.LBB65_6
# BB#5:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$38, (%rax)
.LBB65_6:                               # %if.end.6
	movq	-32(%rbp), %rax
	cmpl	$3, 10836(%rax)
	jne	.LBB65_9
# BB#7:                                 # %land.lhs.true.8
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rsi
	movq	9848(%rsi), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edi
	andl	$7, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB65_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$64, (%rax)
.LBB65_9:                               # %if.end.16
	movq	-32(%rbp), %rax
	cmpl	$2, 10816(%rax)
	jne	.LBB65_11
# BB#10:                                # %if.then.19
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$33, (%rax)
.LBB65_11:                              # %if.end.21
	movq	-32(%rbp), %rax
	cmpq	$0, 11536(%rax)
	je	.LBB65_14
# BB#12:                                # %land.lhs.true.24
	movq	$-1, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB65_14
# BB#13:                                # %if.then.28
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$36, (%rax)
.LBB65_14:                              # %if.end.30
	movq	-32(%rbp), %rax
	cmpq	$0, 10824(%rax)
	je	.LBB65_16
# BB#15:                                # %if.then.33
	movq	-40(%rbp), %rdi
	movl	$.L.str.326, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-40(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -40(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB65_16:                              # %if.end.34
	movq	-32(%rbp), %rax
	cmpl	$0, 524(%rax)
	jge	.LBB65_19
# BB#17:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	je	.LBB65_19
# BB#18:                                # %if.then.40
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$90, (%rax)
.LBB65_19:                              # %if.end.42
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB65_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	AddWindowFlags, .Lfunc_end65-AddWindowFlags
	.cfi_endproc

	.globl	AddOtherUsers
	.align	16, 0x90
	.type	AddOtherUsers,@function
AddOtherUsers:                          # @AddOtherUsers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	display, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	displays, %rdx
	movq	%rdx, display
.LBB66_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_6 Depth 2
                                        #     Child Loop BB66_14 Depth 2
	cmpq	$0, display
	je	.LBB66_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB66_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB66_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	display, %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB66_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_30
.LBB66_5:                               # %if.end
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB66_6:                               # %for.cond.3
                                        #   Parent Loop BB66_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB66_11
# BB#7:                                 # %for.body.5
                                        #   in Loop: Header=BB66_6 Depth=2
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB66_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_11
.LBB66_9:                               # %if.end.8
                                        #   in Loop: Header=BB66_6 Depth=2
	jmp	.LBB66_10
.LBB66_10:                              # %for.inc
                                        #   in Loop: Header=BB66_6 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB66_6
.LBB66_11:                              # %for.end
                                        #   in Loop: Header=BB66_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB66_13
# BB#12:                                # %if.then.10
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_30
.LBB66_13:                              # %if.end.11
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	displays, %rax
	movq	%rax, -32(%rbp)
.LBB66_14:                              # %for.cond.12
                                        #   Parent Loop BB66_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -61(%rbp)          # 1-byte Spill
	je	.LBB66_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB66_14 Depth=2
	movq	-32(%rbp), %rax
	cmpq	display, %rax
	setne	%cl
	movb	%cl, -61(%rbp)          # 1-byte Spill
.LBB66_16:                              # %land.end
                                        #   in Loop: Header=BB66_14 Depth=2
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB66_17
	jmp	.LBB66_21
.LBB66_17:                              # %for.body.15
                                        #   in Loop: Header=BB66_14 Depth=2
	movq	display, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB66_19
# BB#18:                                # %if.then.19
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_21
.LBB66_19:                              # %if.end.20
                                        #   in Loop: Header=BB66_14 Depth=2
	jmp	.LBB66_20
.LBB66_20:                              # %for.inc.21
                                        #   in Loop: Header=BB66_14 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB66_14
.LBB66_21:                              # %for.end.22
                                        #   in Loop: Header=BB66_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB66_24
# BB#22:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	display, %rax
	je	.LBB66_24
# BB#23:                                # %if.then.26
                                        #   in Loop: Header=BB66_1 Depth=1
	jmp	.LBB66_30
.LBB66_24:                              # %if.end.27
                                        #   in Loop: Header=BB66_1 Depth=1
	cmpl	$1, -12(%rbp)
	jle	.LBB66_27
# BB#25:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB66_27
# BB#26:                                # %if.then.31
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$44, (%rax)
	movl	-12(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -12(%rbp)
.LBB66_27:                              # %if.end.32
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	display, %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	cmpl	-12(%rbp), %ecx
	jle	.LBB66_29
# BB#28:                                # %if.then.36
	jmp	.LBB66_31
.LBB66_29:                              # %if.end.37
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	display, %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	strcpy
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	movl	-60(%rbp), %ecx
	movl	-12(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -12(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB66_30:                              # %for.inc.42
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB66_1
.LBB66_31:                              # %for.end.44
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, display
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	AddOtherUsers, .Lfunc_end66-AddOtherUsers
	.cfi_endproc

	.align	16, 0x90
	.type	IsOnDisplay,@function
IsOnDisplay:                            # @IsOnDisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB67_2
.LBB67_2:                               # %do.end
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB67_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB67_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB67_6
# BB#5:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB67_9
.LBB67_6:                               # %if.end
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_7
.LBB67_7:                               # %for.inc
                                        #   in Loop: Header=BB67_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB67_3
.LBB67_8:                               # %for.end
	movl	$0, -4(%rbp)
.LBB67_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end67:
	.size	IsOnDisplay, .Lfunc_end67-IsOnDisplay
	.cfi_endproc

	.align	16, 0x90
	.type	AKAfin,@function
AKAfin:                                 # @AKAfin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB68_2
.LBB68_2:                               # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB68_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, fore
	je	.LBB68_5
# BB#4:                                 # %if.then
	movq	fore, %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	callq	ChangeAKA
.LBB68_5:                               # %if.end
	movl	$0, enter_window_name_mode
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	AKAfin, .Lfunc_end68-AKAfin
	.cfi_endproc

	.align	16, 0x90
	.type	SelectFin,@function
SelectFin:                              # @SelectFin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB69_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, display
	jne	.LBB69_3
.LBB69_2:                               # %if.then
	jmp	.LBB69_9
.LBB69_3:                               # %if.end
	cmpl	$1, -12(%rbp)
	jne	.LBB69_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB69_6
# BB#5:                                 # %if.then.4
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	SetForeWindow
	xorl	%edi, %edi
	callq	Activate
	jmp	.LBB69_9
.LBB69_6:                               # %if.end.5
	movq	-8(%rbp), %rdi
	callq	WindowByNoN
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB69_8
# BB#7:                                 # %if.then.8
	jmp	.LBB69_9
.LBB69_8:                               # %if.end.9
	movl	-28(%rbp), %edi
	callq	SwitchWindow
.LBB69_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	SelectFin, .Lfunc_end69-SelectFin
	.cfi_endproc

	.align	16, 0x90
	.type	SetenvFin2,@function
SetenvFin2:                             # @SetenvFin2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB70_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, display
	jne	.LBB70_3
.LBB70_2:                               # %if.then
	jmp	.LBB70_6
.LBB70_3:                               # %if.end
	jmp	.LBB70_4
.LBB70_4:                               # %do.body
	jmp	.LBB70_5
.LBB70_5:                               # %do.end
	movabsq	$setenv_var, %rdi
	movq	-8(%rbp), %rsi
	callq	xsetenv
	callq	MakeNewEnv
.LBB70_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	SetenvFin2, .Lfunc_end70-SetenvFin2
	.cfi_endproc

	.align	16, 0x90
	.type	SetenvFin1,@function
SetenvFin1:                             # @SetenvFin1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB71_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, display
	jne	.LBB71_3
.LBB71_2:                               # %if.then
	jmp	.LBB71_4
.LBB71_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	InputSetenv
.LBB71_4:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	SetenvFin1, .Lfunc_end71-SetenvFin1
	.cfi_endproc

	.align	16, 0x90
	.type	su_fin,@function
su_fin:                                 # @su_fin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpb	$0, 8(%rdx)
	jne	.LBB72_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movl	$23, -44(%rbp)
	jmp	.LBB72_6
.LBB72_2:                               # %if.else
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB72_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -40(%rbp)
	movl	$.L.str.248, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	$129, -44(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB72_5
.LBB72_4:                               # %if.else.8
	movq	-32(%rbp), %rax
	addq	$162, %rax
	movq	%rax, -40(%rbp)
	movl	$.L.str.248, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	$129, -44(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB72_5:                               # %if.end
	jmp	.LBB72_6
.LBB72_6:                               # %if.end.11
	cmpq	$0, -8(%rbp)
	je	.LBB72_12
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	je	.LBB72_12
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jge	.LBB72_10
# BB#9:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB72_11
.LBB72_10:                              # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB72_11:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	strncpy
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB72_12:                              # %if.end.16
	movq	-32(%rbp), %rax
	cmpb	$0, 8(%rax)
	jne	.LBB72_14
# BB#13:                                # %if.then.20
	movabsq	$.L.str.410, %rdi
	movl	$23, %esi
	xorl	%eax, %eax
	movabsq	$su_fin, %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	Input
	jmp	.LBB72_23
.LBB72_14:                              # %if.else.21
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB72_16
# BB#15:                                # %if.then.25
	movabsq	$.L.str.411, %rdi
	movl	$129, %esi
	movl	$1, %edx
	movabsq	$su_fin, %rcx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	%rax, %r8
	callq	Input
	jmp	.LBB72_22
.LBB72_16:                              # %if.else.26
	movq	-32(%rbp), %rax
	cmpb	$0, 162(%rax)
	jne	.LBB72_18
# BB#17:                                # %if.then.30
	movabsq	$.L.str.412, %rdi
	movl	$129, %esi
	movl	$1, %edx
	movabsq	$su_fin, %rcx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rax
	movq	%rax, %r8
	callq	Input
	jmp	.LBB72_21
.LBB72_18:                              # %if.else.31
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$162, %rcx
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	DoSu
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB72_20
# BB#19:                                # %if.then.40
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB72_20:                              # %if.end.41
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB72_21:                              # %if.end.42
	jmp	.LBB72_22
.LBB72_22:                              # %if.end.43
	jmp	.LBB72_23
.LBB72_23:                              # %if.end.44
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	su_fin, .Lfunc_end72-su_fin
	.cfi_endproc

	.align	16, 0x90
	.type	pass2,@function
pass2:                                  # @pass2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB73_2
.LBB73_2:                               # %do.end
	cmpq	$0, -8(%rbp)
	je	.LBB73_4
# BB#3:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB73_7
.LBB73_4:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.414, %rsi
	movb	$0, %al
	callq	Msg
	movabsq	$NullStr, %rsi
	movq	-40(%rbp), %rcx
	cmpq	%rsi, 272(%rcx)
	je	.LBB73_6
# BB#5:                                 # %if.then.3
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	free
.LBB73_6:                               # %if.end
	movabsq	$NullStr, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 272(%rcx)
	jmp	.LBB73_12
.LBB73_7:                               # %if.else
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB73_11
# BB#8:                                 # %if.then.12
	xorl	%edi, %edi
	movabsq	$.L.str.415, %rsi
	movb	$0, %al
	callq	Msg
	cmpq	$0, -8(%rbp)
	je	.LBB73_10
# BB#9:                                 # %if.then.14
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
.LBB73_10:                              # %if.end.16
	jmp	.LBB73_11
.LBB73_11:                              # %if.end.17
	jmp	.LBB73_12
.LBB73_12:                              # %if.end.18
	movabsq	$NullStr, %rax
	movq	-40(%rbp), %rcx
	cmpq	%rax, 272(%rcx)
	je	.LBB73_25
# BB#13:                                # %if.then.22
	movl	$0, -28(%rbp)
.LBB73_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -28(%rbp)
	jge	.LBB73_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB73_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	$26, %ecx
	movl	%ecx, %edi
	imull	$6, -28(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rax
	cqto
	idivq	%rdi
	movl	%edx, %esi
	addl	$65, %esi
	movb	%sil, %cl
	movslq	-28(%rbp), %rdx
	movb	%cl, -31(%rbp,%rdx)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB73_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB73_14
.LBB73_17:                              # %for.end
	leaq	-31(%rbp), %rsi
	movb	$0, -29(%rbp)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	crypt
	xorl	%esi, %esi
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	strlen
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	free
	cmpq	$0, -8(%rbp)
	jne	.LBB73_19
# BB#18:                                # %if.then.37
	xorl	%edi, %edi
	movabsq	$.L.str.416, %rsi
	movb	$0, %al
	callq	Msg
	movabsq	$NullStr, %rsi
	movq	-40(%rbp), %rcx
	movq	%rsi, 272(%rcx)
	jmp	.LBB73_25
.LBB73_19:                              # %if.end.39
	movq	-8(%rbp), %rdi
	callq	SaveStr
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 272(%rdi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	callq	strlen
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
	movq	-40(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB73_21
# BB#20:                                # %if.then.45
	movq	-40(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB73_21:                              # %if.end.47
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 312(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 316(%rax)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	SaveStr
	movq	-40(%rbp), %rdi
	movq	%rax, 304(%rdi)
	cmpq	$0, %rax
	jne	.LBB73_23
# BB#22:                                # %if.then.59
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movq	display, %rdx
	movq	8(%rdx), %rdx
	movl	$0, 312(%rdx)
	jmp	.LBB73_24
.LBB73_23:                              # %if.else.62
	xorl	%edi, %edi
	movabsq	$.L.str.417, %rsi
	movb	$0, %al
	callq	Msg
.LBB73_24:                              # %if.end.63
	jmp	.LBB73_25
.LBB73_25:                              # %if.end.64
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	pass2, .Lfunc_end73-pass2
	.cfi_endproc

	.align	16, 0x90
	.type	ChangeCanvasSize,@function
ChangeCanvasSize:                       # @ChangeCanvasSize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB74_2
.LBB74_2:                               # %do.end
	cmpl	$0, -20(%rbp)
	jne	.LBB74_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jne	.LBB74_5
# BB#4:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB74_119
.LBB74_5:                               # %if.end
	cmpl	$2, -20(%rbp)
	jne	.LBB74_18
# BB#6:                                 # %if.then.3
	cmpl	$0, -24(%rbp)
	jne	.LBB74_8
# BB#7:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.LBB74_17
.LBB74_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB74_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB74_9 Depth=1
	movq	-40(%rbp), %rax
	movl	$0, 52(%rax)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB74_9 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_9
.LBB74_12:                              # %for.end
	movq	-16(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB74_16
# BB#13:                                # %land.lhs.true.11
	cmpq	$0, -40(%rbp)
	je	.LBB74_16
# BB#14:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB74_16
# BB#15:                                # %if.then.16
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	ChangeCanvasSize
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB74_16:                              # %if.end.17
	jmp	.LBB74_17
.LBB74_17:                              # %if.end.18
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB74_119
.LBB74_18:                              # %if.end.19
	cmpl	$0, -20(%rbp)
	je	.LBB74_25
# BB#19:                                # %if.then.21
	cmpl	$0, -24(%rbp)
	jge	.LBB74_21
# BB#20:                                # %if.then.23
	movl	$0, -24(%rbp)
.LBB74_21:                              # %if.end.24
	cmpl	$0, -32(%rbp)
	je	.LBB74_24
# BB#22:                                # %land.lhs.true.26
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB74_24
# BB#23:                                # %if.then.28
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB74_24:                              # %if.end.29
	jmp	.LBB74_25
.LBB74_25:                              # %if.end.30
	cmpl	$0, -32(%rbp)
	je	.LBB74_56
# BB#26:                                # %if.then.32
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
.LBB74_27:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_30
# BB#28:                                # %for.body.37
                                        #   in Loop: Header=BB74_27 Depth=1
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
# BB#29:                                # %for.inc.39
                                        #   in Loop: Header=BB74_27 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_27
.LBB74_30:                              # %for.end.41
	cmpl	$0, -60(%rbp)
	je	.LBB74_55
# BB#31:                                # %if.then.43
	cmpl	$0, -28(%rbp)
	je	.LBB74_33
# BB#32:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rdi
	movl	-32(%rbp), %esi
	callq	CalcSlicePercent
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB74_34
.LBB74_33:                              # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB74_34:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
# BB#35:                                # %do.body.48
	jmp	.LBB74_36
.LBB74_36:                              # %do.end.49
	cmpl	$1000, -60(%rbp)        # imm = 0x3E8
	jge	.LBB74_44
# BB#37:                                # %if.then.51
	movl	$100, %eax
	movl	$1000, %ecx             # imm = 0x3E8
	cmpl	$10, -60(%rbp)
	cmovll	%ecx, %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB74_38:                              # %for.cond.56
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_41
# BB#39:                                # %for.body.58
                                        #   in Loop: Header=BB74_38 Depth=1
	movl	-68(%rbp), %eax
	movq	-40(%rbp), %rcx
	imull	52(%rcx), %eax
	movl	%eax, 52(%rcx)
# BB#40:                                # %for.inc.60
                                        #   in Loop: Header=BB74_38 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_38
.LBB74_41:                              # %for.end.62
	movl	-68(%rbp), %eax
	imull	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#42:                                # %do.body.64
	jmp	.LBB74_43
.LBB74_43:                              # %do.end.65
	jmp	.LBB74_44
.LBB74_44:                              # %if.end.66
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB74_45:                              # %for.cond.69
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_54
# BB#46:                                # %for.body.71
                                        #   in Loop: Header=BB74_45 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB74_50
# BB#47:                                # %if.then.74
                                        #   in Loop: Header=BB74_45 Depth=1
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	imull	-64(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	-32(%rbp)
	movq	-40(%rbp), %rsi
	movl	%eax, 52(%rsi)
	movq	-40(%rbp), %rsi
	cmpl	$0, 52(%rsi)
	jne	.LBB74_49
# BB#48:                                # %if.then.80
                                        #   in Loop: Header=BB74_45 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, 52(%rax)
.LBB74_49:                              # %if.end.82
                                        #   in Loop: Header=BB74_45 Depth=1
	jmp	.LBB74_50
.LBB74_50:                              # %if.end.83
                                        #   in Loop: Header=BB74_45 Depth=1
	jmp	.LBB74_51
.LBB74_51:                              # %do.body.84
                                        #   in Loop: Header=BB74_45 Depth=1
	jmp	.LBB74_52
.LBB74_52:                              # %do.end.85
                                        #   in Loop: Header=BB74_45 Depth=1
	jmp	.LBB74_53
.LBB74_53:                              # %for.inc.86
                                        #   in Loop: Header=BB74_45 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_45
.LBB74_54:                              # %for.end.88
	movl	-24(%rbp), %eax
	imull	-60(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB74_55:                              # %if.end.91
	jmp	.LBB74_72
.LBB74_56:                              # %if.else.92
	cmpl	$0, -20(%rbp)
	je	.LBB74_62
# BB#57:                                # %land.lhs.true.94
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	$1, 48(%rcx)
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jne	.LBB74_59
# BB#58:                                # %cond.true.96
	movq	-16(%rbp), %rax
	movl	228(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	224(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB74_60
.LBB74_59:                              # %cond.false.98
	movq	-16(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	216(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB74_60:                              # %cond.end.101
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB74_62
# BB#61:                                # %if.then.104
	movl	$0, -4(%rbp)
	jmp	.LBB74_119
.LBB74_62:                              # %if.end.105
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB74_63:                              # %for.cond.108
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_71
# BB#64:                                # %for.body.110
                                        #   in Loop: Header=BB74_63 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB74_66
# BB#65:                                # %cond.true.113
                                        #   in Loop: Header=BB74_63 Depth=1
	movq	-40(%rbp), %rax
	movl	228(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	224(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB74_67
.LBB74_66:                              # %cond.false.118
                                        #   in Loop: Header=BB74_63 Depth=1
	movq	-40(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	216(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB74_67:                              # %cond.end.123
                                        #   in Loop: Header=BB74_63 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 52(%rcx)
# BB#68:                                # %do.body.126
                                        #   in Loop: Header=BB74_63 Depth=1
	jmp	.LBB74_69
.LBB74_69:                              # %do.end.127
                                        #   in Loop: Header=BB74_63 Depth=1
	jmp	.LBB74_70
.LBB74_70:                              # %for.inc.128
                                        #   in Loop: Header=BB74_63 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_63
.LBB74_71:                              # %for.end.130
	jmp	.LBB74_72
.LBB74_72:                              # %if.end.131
	cmpl	$0, -20(%rbp)
	je	.LBB74_74
# BB#73:                                # %if.then.133
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	52(%rcx), %eax
	movl	%eax, -24(%rbp)
.LBB74_74:                              # %if.end.136
	jmp	.LBB74_75
.LBB74_75:                              # %do.body.137
	jmp	.LBB74_76
.LBB74_76:                              # %do.end.138
	cmpl	$0, -24(%rbp)
	jne	.LBB74_78
# BB#77:                                # %if.then.140
	movl	$0, -4(%rbp)
	jmp	.LBB74_119
.LBB74_78:                              # %if.end.141
	cmpl	$0, -24(%rbp)
	jge	.LBB74_83
# BB#79:                                # %if.then.143
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB74_81
# BB#80:                                # %cond.true.146
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB74_82
.LBB74_81:                              # %cond.false.148
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB74_82:                              # %cond.end.149
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	52(%rax), %ecx
	movl	%ecx, 52(%rax)
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	52(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 52(%rax)
	movl	-24(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB74_119
.LBB74_83:                              # %if.end.155
	movl	$0, -44(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB74_84:                              # %for.cond.157
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB74_110
# BB#85:                                # %for.body.159
                                        #   in Loop: Header=BB74_84 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB74_91
# BB#86:                                # %if.then.161
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_87
.LBB74_87:                              # %do.body.162
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_88
.LBB74_88:                              # %do.end.163
                                        #   in Loop: Header=BB74_84 Depth=1
	cmpl	$-1, -56(%rbp)
	jne	.LBB74_90
# BB#89:                                # %if.then.165
	jmp	.LBB74_110
.LBB74_90:                              # %if.end.166
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	$-1, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB74_106
.LBB74_91:                              # %if.end.167
                                        #   in Loop: Header=BB74_84 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB74_93
# BB#92:                                # %if.then.169
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	$1, -52(%rbp)
	jmp	.LBB74_97
.LBB74_93:                              # %if.else.170
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB74_95
# BB#94:                                # %cond.true.173
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rdi
	callq	CountCanvasPerp
	shll	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB74_96
.LBB74_95:                              # %cond.false.176
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB74_96
.LBB74_96:                              # %cond.end.177
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB74_97:                              # %if.end.179
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_98
.LBB74_98:                              # %do.body.180
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_99
.LBB74_99:                              # %do.end.181
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jle	.LBB74_105
# BB#100:                               # %if.then.184
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB74_102
# BB#101:                               # %if.then.188
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB74_102:                             # %if.end.189
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_103
.LBB74_103:                             # %do.body.190
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_104
.LBB74_104:                             # %do.end.191
                                        #   in Loop: Header=BB74_84 Depth=1
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	52(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 52(%rcx)
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movl	-24(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
.LBB74_105:                             # %if.end.196
                                        #   in Loop: Header=BB74_84 Depth=1
	jmp	.LBB74_106
.LBB74_106:                             # %for.inc.197
                                        #   in Loop: Header=BB74_84 Depth=1
	cmpl	$0, -56(%rbp)
	jle	.LBB74_108
# BB#107:                               # %cond.true.199
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB74_109
.LBB74_108:                             # %cond.false.201
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB74_109:                             # %cond.end.203
                                        #   in Loop: Header=BB74_84 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB74_84
.LBB74_110:                             # %for.end.205
	cmpl	$0, -24(%rbp)
	je	.LBB74_116
# BB#111:                               # %land.lhs.true.207
	cmpl	$0, -28(%rbp)
	je	.LBB74_116
# BB#112:                               # %if.then.209
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB74_115
# BB#113:                               # %land.lhs.true.213
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB74_115
# BB#114:                               # %if.then.216
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	ChangeCanvasSize
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB74_115:                             # %if.end.221
	jmp	.LBB74_116
.LBB74_116:                             # %if.end.222
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	52(%rcx), %eax
	movl	%eax, 52(%rcx)
# BB#117:                               # %do.body.225
	jmp	.LBB74_118
.LBB74_118:                             # %do.end.226
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB74_119:                             # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	ChangeCanvasSize, .Lfunc_end74-ChangeCanvasSize
	.cfi_endproc

	.align	16, 0x90
	.type	CalcSlicePercent,@function
CalcSlicePercent:                       # @CalcSlicePercent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB75_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB75_3
.LBB75_2:                               # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB75_10
.LBB75_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	CalcSlicePercent
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	52(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
.LBB75_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB75_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB75_4 Depth=1
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB75_4 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB75_4
.LBB75_7:                               # %for.end
	cmpl	$0, -28(%rbp)
	jne	.LBB75_9
# BB#8:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB75_10
.LBB75_9:                               # %if.end.8
	movl	-32(%rbp), %eax
	imull	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
.LBB75_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	CalcSlicePercent, .Lfunc_end75-CalcSlicePercent
	.cfi_endproc

	.type	NullStr,@object         # @NullStr
	.bss
	.globl	NullStr
NullStr:
	.zero	1
	.size	NullStr, 1

	.type	TtyMode,@object         # @TtyMode
	.data
	.globl	TtyMode
	.align	4
TtyMode:
	.long	400                     # 0x190
	.size	TtyMode, 4

	.type	hardcopy_append,@object # @hardcopy_append
	.bss
	.globl	hardcopy_append
	.align	4
hardcopy_append:
	.long	0                       # 0x0
	.size	hardcopy_append, 4

	.type	all_norefresh,@object   # @all_norefresh
	.globl	all_norefresh
	.align	4
all_norefresh:
	.long	0                       # 0x0
	.size	all_norefresh, 4

	.type	zmodem_mode,@object     # @zmodem_mode
	.globl	zmodem_mode
	.align	4
zmodem_mode:
	.long	0                       # 0x0
	.size	zmodem_mode, 4

	.type	enter_window_name_mode,@object # @enter_window_name_mode
	.globl	enter_window_name_mode
	.align	4
enter_window_name_mode:
	.long	0                       # 0x0
	.size	enter_window_name_mode, 4

	.type	ktab,@object            # @ktab
	.comm	ktab,10816,16
	.type	noargs,@object          # @noargs
	.comm	noargs,8,8
	.type	umtab,@object           # @umtab
	.comm	umtab,3328,16
	.type	dmtab,@object           # @dmtab
	.comm	dmtab,3328,16
	.type	mmtab,@object           # @mmtab
	.comm	mmtab,3328,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-b"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"prev"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-v"
	.size	.L.str.5, 3

	.type	idleaction,@object      # @idleaction
	.comm	idleaction,32,8
	.type	maptimeout,@object      # @maptimeout
	.data
	.align	4
maptimeout:
	.long	300                     # 0x12c
	.size	maptimeout, 4

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%s command cannot be queried."
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: %s: display required"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s: %s: window required"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: %s: display or window required"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s: %s: permission denied (user %s)"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"select . needs a window"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Default autonuke turned %s"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"on"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"off"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Autonuke turned %s"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Default limit set to %d"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Limit is %d, current buffer size is %d"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Limit set to %d"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"-h"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"--"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: hardcopy: too many arguments"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Really kill this filter [y/n]"
	.size	.L.str.22, 30

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Really kill this window [y/n]"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Filter removed."
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Window %d (%s) killed."
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Really quit and kill all your windows [y/n]"
	.size	.L.str.26, 44

	.type	DoAction.buf,@object    # @DoAction.buf
	.local	DoAction.buf
	.comm	DoAction.buf,2,1
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Sorry, screen was compiled without -DDEBUG option."
	.size	.L.str.27, 51

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sendcmd"
	.size	.L.str.28, 8

	.type	zmodem_sendcmd,@object  # @zmodem_sendcmd
	.comm	zmodem_sendcmd,8,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"zmodem sendcmd: %s"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"recvcmd"
	.size	.L.str.30, 8

	.type	zmodem_recvcmd,@object  # @zmodem_recvcmd
	.comm	zmodem_recvcmd,8,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"zmodem recvcmd: %s"
	.size	.L.str.31, 19

	.type	zmodes,@object          # @zmodes
	.data
	.align	16
zmodes:
	.quad	.L.str.14
	.quad	.L.str.85
	.quad	.L.str.346
	.quad	.L.str.347
	.size	zmodes, 32

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"usage: zmodem off|auto|catch|pass"
	.size	.L.str.32, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"zmodem mode is %s"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unbound all keys."
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s:zombie: one or two characters expected."
	.size	.L.str.35, 43

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"onerror"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"usage: zombie [keys [onerror]]"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s: %s"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Did not find any user matching '%s'"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"command from %s: %s %s"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.zero	1
	.size	.L.str.41, 1

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/dev/"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/dev/tty"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s: at '%s': no such window.\n"
	.size	.L.str.44, 30

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%s: at [identifier][%%|*|#] command [args]"
	.size	.L.str.45, 43

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"-e"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s: readreg: unknown encoding"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Copy to register:"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s: copyreg: character, ^x, or (octal) \\032 expected."
	.size	.L.str.49, 54

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s: readreg: too many arguments"
	.size	.L.str.50, 32

	.type	plop_tab,@object        # @plop_tab
	.comm	plop_tab,4096,16
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%s: register: unknown encoding"
	.size	.L.str.51, 31

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s: register: illegal number of arguments."
	.size	.L.str.52, 43

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s: register: character, ^x, or (octal) \\032 expected."
	.size	.L.str.53, 55

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Process register:"
	.size	.L.str.54, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s: process: character, ^x, or (octal) \\032 expected."
	.size	.L.str.55, 54

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Stuff:"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"-k"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%s: stuff: invalid option %s"
	.size	.L.str.58, 29

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%s: stuff: unknown key '%s'"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"screen %s"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%s"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"-c"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Unknown command class '%s'"
	.size	.L.str.63, 27

	.type	DoAction.types,@object  # @DoAction.types
	.data
	.align	16
DoAction.types:
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	0
	.size	DoAction.types, 32

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"TIOCSBRK"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"TCSBRK"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"tcsendbreak"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s invalid, chose one of %s, %s or %s"
	.size	.L.str.67, 38

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"breaktype set to (%d) %s"
	.size	.L.str.68, 25

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"breaktype is (%d) %s"
	.size	.L.str.69, 21

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"-w"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"-d"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"%s: %s: unknown option %s"
	.size	.L.str.72, 26

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%s: %s: too many arguments"
	.size	.L.str.73, 27

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Illegal width"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Illegal height"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Your termcap does not specify how to change the terminal's width to %d."
	.size	.L.str.76, 72

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Your termcap does not specify how to change the terminal's height to %d."
	.size	.L.str.77, 73

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Your termcap does not specify how to change the terminal's resolution to %dx%d."
	.size	.L.str.78, 80

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	":"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"key"
	.size	.L.str.80, 4

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%cwrap"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"%cflow%s"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"(auto)"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"writelock %s"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"auto"
	.size	.L.str.85, 5

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"\033[H\033[J"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\033c"
	.size	.L.str.87, 3

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Window %d (%s) is now being monitored for all activity."
	.size	.L.str.88, 56

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Window %d (%s) is no longer being monitored for activity."
	.size	.L.str.89, 58

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"string"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"windowlist string is '%s'"
	.size	.L.str.91, 26

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"title"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"windowlist title is '%s'"
	.size	.L.str.93, 25

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"-m"
	.size	.L.str.94, 3

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"-g"
	.size	.L.str.95, 3

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"usage: windowlist [-b] [-g] [-m] [string [string] | title [title]]"
	.size	.L.str.96, 67

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Must be on a window layer"
	.size	.L.str.97, 26

	.type	DoAction.pasteargs,@object # @DoAction.pasteargs
	.data
	.align	16
DoAction.pasteargs:
	.quad	.L.str.3
	.quad	0
	.size	DoAction.pasteargs, 16

	.type	DoAction.pasteargl,@object # @DoAction.pasteargl
	.align	4
DoAction.pasteargl:
	.long	1                       # 0x1
	.size	DoAction.pasteargl, 4

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"Paste from register:"
	.size	.L.str.98, 21

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"%s: paste destination: character, ^x, or (octal) \\032 expected."
	.size	.L.str.99, 64

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"empty buffer"
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"%s: writebuf: unknown encoding"
	.size	.L.str.101, 31

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"%s: writebuf: too many arguments"
	.size	.L.str.102, 33

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"%s: readbuf: unknown encoding"
	.size	.L.str.103, 30

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"%s: readbuf: too many arguments"
	.size	.L.str.104, 32

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Will %signore case in searches"
	.size	.L.str.105, 31

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"not "
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"%s: two characters required after escape."
	.size	.L.str.107, 42

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"%s: two characters required after defescape."
	.size	.L.str.108, 45

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"hardcopydir is %s\n"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"<cwd>"
	.size	.L.str.110, 6

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"flush"
	.size	.L.str.111, 6

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"log flush timeout set to %ds\n"
	.size	.L.str.112, 30

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Error opening logfile \"%s\""
	.size	.L.str.113, 27

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"logfile is '%s'"
	.size	.L.str.114, 16

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"timestamps turned %s"
	.size	.L.str.115, 21

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"logfile timestamp is '%s'"
	.size	.L.str.116, 26

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"after"
	.size	.L.str.117, 6

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"timestamp printed after %ds\n"
	.size	.L.str.118, 29

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"usage: logtstamp [after [n]|string [str]|on|off]"
	.size	.L.str.119, 49

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Sorry, too late now. Place that in your .screenrc file."
	.size	.L.str.120, 56

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"%s: term: argument too long ( < %d)"
	.size	.L.str.121, 36

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"-X"
	.size	.L.str.122, 3

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"-n"
	.size	.L.str.123, 3

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"-p"
	.size	.L.str.124, 3

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"%s: 'echo [-n] [-p] \"string\"' expected."
	.size	.L.str.125, 40

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"bell_msg is '%s'"
	.size	.L.str.126, 17

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"/tmp/screen-exchange"
	.size	.L.str.127, 21

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Bufferfile is now '%s'"
	.size	.L.str.128, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"pow_detach_msg is '%s'"
	.size	.L.str.129, 23

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"always"
	.size	.L.str.130, 7

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"attached"
	.size	.L.str.131, 9

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Mouse tracking for this display is turned %s"
	.size	.L.str.132, 45

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"W%s echo command when creating windows."
	.size	.L.str.133, 40

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"ill"
	.size	.L.str.134, 4

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"on't"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"firstline"
	.size	.L.str.136, 10

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"lastline"
	.size	.L.str.137, 9

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"ignore"
	.size	.L.str.138, 7

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"message"
	.size	.L.str.139, 8

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"hardstatus string is '%s'"
	.size	.L.str.140, 26

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"%s: usage: hardstatus [always]lastline|ignore|message|string [string]"
	.size	.L.str.141, 70

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"messages displayed on %s"
	.size	.L.str.142, 25

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"hardstatus line"
	.size	.L.str.143, 16

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"window"
	.size	.L.str.144, 7

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"splitonly"
	.size	.L.str.145, 10

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"caption string is '%s'"
	.size	.L.str.146, 23

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"%s: usage: caption always|splitonly|string <string>"
	.size	.L.str.147, 52

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"%s: releasing console %s"
	.size	.L.str.148, 25

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"%s: stealing console %s from window %d (%s)"
	.size	.L.str.149, 44

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"%s: grabbing console %s"
	.size	.L.str.150, 24

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"No refresh on window change!\n"
	.size	.L.str.151, 30

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Window specific refresh\n"
	.size	.L.str.152, 25

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"switched to audible bell."
	.size	.L.str.153, 26

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"switched to visual bell."
	.size	.L.str.154, 25

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"vbellwait set to %.10g seconds"
	.size	.L.str.155, 31

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"msgwait set to %.10g seconds"
	.size	.L.str.156, 29

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"msgminwait set to %.10g seconds"
	.size	.L.str.157, 32

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"silencewait set to %d seconds"
	.size	.L.str.158, 30

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"%d (%s)"
	.size	.L.str.159, 8

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"This is window %d (%s)."
	.size	.L.str.160, 24

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Setting zombie polling needs a timeout arg\n"
	.size	.L.str.161, 44

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Sorting inside a window is not allowed. Push CTRL-a \" and try again\n"
	.size	.L.str.162, 69

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"The window is now being monitored for %d sec. silence."
	.size	.L.str.163, 55

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"The window is no longer being monitored for silence."
	.size	.L.str.164, 53

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Cannot resize scrollback buffer in copy/scrollback mode."
	.size	.L.str.165, 57

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"scrollback set to %d"
	.size	.L.str.166, 21

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"This session is named '%s'\n"
	.size	.L.str.167, 28

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"%s: bad session name '%s'\n"
	.size	.L.str.168, 27

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"%d.%s"
	.size	.L.str.169, 6

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"%s: inappropriate path: '%s'."
	.size	.L.str.170, 30

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"%s: failed to rename(%s, %s)"
	.size	.L.str.171, 29

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Slowpaste in window %d is %d milliseconds."
	.size	.L.str.172, 43

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Slowpaste in window %d is unset."
	.size	.L.str.173, 33

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Slowpaste in window %d set to %d milliseconds."
	.size	.L.str.174, 47

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Slowpaste in window %d now unset."
	.size	.L.str.175, 34

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"%s: markkeys: syntax error."
	.size	.L.str.176, 28

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Will %spaste font settings"
	.size	.L.str.177, 27

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"%scompacting history lines"
	.size	.L.str.178, 27

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"vbell_msg is '%s'"
	.size	.L.str.179, 18

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"octal"
	.size	.L.str.180, 6

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"%s: mode: Invalid tty mode %o"
	.size	.L.str.181, 30

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Ttymode set to %03o"
	.size	.L.str.182, 20

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"none"
	.size	.L.str.183, 5

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Password checking disabled"
	.size	.L.str.184, 27

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"%s: password: window required"
	.size	.L.str.185, 30

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"New screen password:"
	.size	.L.str.186, 21

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"%s: bind: unknown key '%s'"
	.size	.L.str.187, 27

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"%s: bind: character, ^x, or (octal) \\032 expected."
	.size	.L.str.188, 51

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"%s: bind: unknown command '%s'"
	.size	.L.str.189, 31

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"-t"
	.size	.L.str.190, 3

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"-a"
	.size	.L.str.191, 3

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"%s: bindkey: invalid option %s"
	.size	.L.str.192, 31

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"%s: bindkey: -d does not work with -m"
	.size	.L.str.193, 38

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Edit mode"
	.size	.L.str.194, 10

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Default"
	.size	.L.str.195, 8

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"User"
	.size	.L.str.196, 5

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"%s: bindkey: -a only works with -k"
	.size	.L.str.197, 35

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"%s: bindkey: empty string makes no sense"
	.size	.L.str.198, 41

	.type	kmap_exts,@object       # @kmap_exts
	.comm	kmap_exts,8,8
	.type	kmap_extn,@object       # @kmap_extn
	.comm	kmap_extn,4,4
	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"%s: bindkey: keybinding not found"
	.size	.L.str.199, 34

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"%s: bindkey: unknown key '%s'"
	.size	.L.str.200, 30

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"%s: bindkey: unknown command '%s'"
	.size	.L.str.201, 34

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"%s: maptimeout: illegal time %d"
	.size	.L.str.202, 32

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"maptimeout is %dms"
	.size	.L.str.203, 19

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"%s removed from acl database"
	.size	.L.str.204, 29

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"User %s joined acl-group %s"
	.size	.L.str.205, 28

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"User %s does not exist."
	.size	.L.str.206, 24

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"%s "
	.size	.L.str.207, 4

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"%s's group%s: %s."
	.size	.L.str.208, 18

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"s"
	.size	.L.str.209, 2

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"umask: %s\n"
	.size	.L.str.210, 11

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Multiuser mode %s"
	.size	.L.str.211, 18

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"enabled"
	.size	.L.str.212, 8

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"disabled"
	.size	.L.str.213, 9

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"display set to blocking mode"
	.size	.L.str.214, 29

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"display set to nonblocking mode, no timeout"
	.size	.L.str.215, 44

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"display set to nonblocking mode, %.10gs timeout"
	.size	.L.str.216, 48

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"Will %suse GR"
	.size	.L.str.217, 14

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Will %suse C1"
	.size	.L.str.218, 14

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Will %serase with background color"
	.size	.L.str.219, 35

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"encodings directory is %s"
	.size	.L.str.220, 26

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"<unset>"
	.size	.L.str.221, 8

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"-l"
	.size	.L.str.222, 3

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"encoding: -l: argument required"
	.size	.L.str.223, 32

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"encoding: could not load utf8 encoding file"
	.size	.L.str.224, 44

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"encoding: utf8 encoding file loaded"
	.size	.L.str.225, 36

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"encoding: unknown encoding '%s'"
	.size	.L.str.226, 32

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"defencoding: unknown encoding '%s'"
	.size	.L.str.227, 35

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"Will %suse UTF-8 encoding for new windows"
	.size	.L.str.228, 42

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"utf8: illegal argument (%s)"
	.size	.L.str.229, 28

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"Will %suse UTF-8 encoding"
	.size	.L.str.230, 26

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"using '%s' as print command"
	.size	.L.str.231, 28

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"using termcap entries for printing"
	.size	.L.str.232, 35

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Two characters expected to define a digraph"
	.size	.L.str.233, 44

	.type	digraphs,@object        # @digraphs
	.data
	.align	16
digraphs:
	.zero	2,32
	.zero	2
	.long	160                     # 0xa0
	.ascii	"NS"
	.zero	2
	.long	160                     # 0xa0
	.ascii	"~!"
	.zero	2
	.long	161                     # 0xa1
	.zero	2,33
	.zero	2
	.long	161                     # 0xa1
	.ascii	"!I"
	.zero	2
	.long	161                     # 0xa1
	.ascii	"c|"
	.zero	2
	.long	162                     # 0xa2
	.ascii	"ct"
	.zero	2
	.long	162                     # 0xa2
	.zero	2,36
	.zero	2
	.long	163                     # 0xa3
	.ascii	"Pd"
	.zero	2
	.long	163                     # 0xa3
	.ascii	"ox"
	.zero	2
	.long	164                     # 0xa4
	.ascii	"Cu"
	.zero	2
	.long	164                     # 0xa4
	.ascii	"Cu"
	.zero	2
	.long	164                     # 0xa4
	.ascii	"Eu"
	.zero	2
	.long	164                     # 0xa4
	.ascii	"Y-"
	.zero	2
	.long	165                     # 0xa5
	.ascii	"Ye"
	.zero	2
	.long	165                     # 0xa5
	.zero	2,124
	.zero	2
	.long	166                     # 0xa6
	.zero	2,66
	.zero	2
	.long	166                     # 0xa6
	.ascii	"pa"
	.zero	2
	.long	167                     # 0xa7
	.ascii	"SE"
	.zero	2
	.long	167                     # 0xa7
	.zero	2,34
	.zero	2
	.long	168                     # 0xa8
	.ascii	"':"
	.zero	2
	.long	168                     # 0xa8
	.ascii	"cO"
	.zero	2
	.long	169                     # 0xa9
	.ascii	"Co"
	.zero	2
	.long	169                     # 0xa9
	.ascii	"a-"
	.zero	2
	.long	170                     # 0xaa
	.zero	2,60
	.zero	2
	.long	171                     # 0xab
	.ascii	"-,"
	.zero	2
	.long	172                     # 0xac
	.ascii	"NO"
	.zero	2
	.long	172                     # 0xac
	.zero	2,45
	.zero	2
	.long	173                     # 0xad
	.ascii	"rO"
	.zero	2
	.long	174                     # 0xae
	.ascii	"Rg"
	.zero	2
	.long	174                     # 0xae
	.ascii	"-="
	.zero	2
	.long	175                     # 0xaf
	.ascii	"'m"
	.zero	2
	.long	175                     # 0xaf
	.ascii	"~o"
	.zero	2
	.long	176                     # 0xb0
	.ascii	"DG"
	.zero	2
	.long	176                     # 0xb0
	.ascii	"+-"
	.zero	2
	.long	177                     # 0xb1
	.zero	2,50
	.zero	2
	.long	178                     # 0xb2
	.ascii	"2S"
	.zero	2
	.long	178                     # 0xb2
	.zero	2,51
	.zero	2
	.long	179                     # 0xb3
	.ascii	"3S"
	.zero	2
	.long	179                     # 0xb3
	.zero	2,39
	.zero	2
	.long	180                     # 0xb4
	.ascii	"ju"
	.zero	2
	.long	181                     # 0xb5
	.ascii	"My"
	.zero	2
	.long	181                     # 0xb5
	.zero	2,112
	.zero	2
	.long	182                     # 0xb6
	.ascii	"PI"
	.zero	2
	.long	182                     # 0xb6
	.ascii	"~."
	.zero	2
	.long	183                     # 0xb7
	.ascii	".M"
	.zero	2
	.long	183                     # 0xb7
	.zero	2,44
	.zero	2
	.long	184                     # 0xb8
	.ascii	"',"
	.zero	2
	.long	184                     # 0xb8
	.zero	2,49
	.zero	2
	.long	185                     # 0xb9
	.ascii	"1S"
	.zero	2
	.long	185                     # 0xb9
	.ascii	"o-"
	.zero	2
	.long	186                     # 0xba
	.zero	2,62
	.zero	2
	.long	187                     # 0xbb
	.ascii	"14"
	.zero	2
	.long	188                     # 0xbc
	.ascii	"12"
	.zero	2
	.long	189                     # 0xbd
	.ascii	"34"
	.zero	2
	.long	190                     # 0xbe
	.ascii	"~?"
	.zero	2
	.long	191                     # 0xbf
	.zero	2,63
	.zero	2
	.long	191                     # 0xbf
	.ascii	"?I"
	.zero	2
	.long	191                     # 0xbf
	.ascii	"A`"
	.zero	2
	.long	192                     # 0xc0
	.ascii	"A!"
	.zero	2
	.long	192                     # 0xc0
	.ascii	"A'"
	.zero	2
	.long	193                     # 0xc1
	.ascii	"A^"
	.zero	2
	.long	194                     # 0xc2
	.ascii	"A>"
	.zero	2
	.long	194                     # 0xc2
	.ascii	"A~"
	.zero	2
	.long	195                     # 0xc3
	.ascii	"A?"
	.zero	2
	.long	195                     # 0xc3
	.ascii	"A\""
	.zero	2
	.long	196                     # 0xc4
	.ascii	"A:"
	.zero	2
	.long	196                     # 0xc4
	.ascii	"A@"
	.zero	2
	.long	197                     # 0xc5
	.zero	2,65
	.zero	2
	.long	197                     # 0xc5
	.ascii	"AE"
	.zero	2
	.long	198                     # 0xc6
	.ascii	"C,"
	.zero	2
	.long	199                     # 0xc7
	.ascii	"E`"
	.zero	2
	.long	200                     # 0xc8
	.ascii	"E!"
	.zero	2
	.long	200                     # 0xc8
	.ascii	"E'"
	.zero	2
	.long	201                     # 0xc9
	.ascii	"E^"
	.zero	2
	.long	202                     # 0xca
	.ascii	"E>"
	.zero	2
	.long	202                     # 0xca
	.ascii	"E\""
	.zero	2
	.long	203                     # 0xcb
	.ascii	"E:"
	.zero	2
	.long	203                     # 0xcb
	.ascii	"I`"
	.zero	2
	.long	204                     # 0xcc
	.ascii	"I!"
	.zero	2
	.long	204                     # 0xcc
	.ascii	"I'"
	.zero	2
	.long	205                     # 0xcd
	.ascii	"I^"
	.zero	2
	.long	206                     # 0xce
	.ascii	"I>"
	.zero	2
	.long	206                     # 0xce
	.ascii	"I\""
	.zero	2
	.long	207                     # 0xcf
	.ascii	"I:"
	.zero	2
	.long	207                     # 0xcf
	.ascii	"D-"
	.zero	2
	.long	208                     # 0xd0
	.ascii	"N~"
	.zero	2
	.long	209                     # 0xd1
	.ascii	"N?"
	.zero	2
	.long	209                     # 0xd1
	.ascii	"O`"
	.zero	2
	.long	210                     # 0xd2
	.ascii	"O!"
	.zero	2
	.long	210                     # 0xd2
	.ascii	"O'"
	.zero	2
	.long	211                     # 0xd3
	.ascii	"O^"
	.zero	2
	.long	212                     # 0xd4
	.ascii	"O>"
	.zero	2
	.long	212                     # 0xd4
	.ascii	"O~"
	.zero	2
	.long	213                     # 0xd5
	.ascii	"O?"
	.zero	2
	.long	213                     # 0xd5
	.ascii	"O\""
	.zero	2
	.long	214                     # 0xd6
	.ascii	"O:"
	.zero	2
	.long	214                     # 0xd6
	.ascii	"/\\"
	.zero	2
	.long	215                     # 0xd7
	.ascii	"*x"
	.zero	2
	.long	215                     # 0xd7
	.ascii	"O/"
	.zero	2
	.long	216                     # 0xd8
	.ascii	"U`"
	.zero	2
	.long	217                     # 0xd9
	.ascii	"U!"
	.zero	2
	.long	217                     # 0xd9
	.ascii	"U'"
	.zero	2
	.long	218                     # 0xda
	.ascii	"U^"
	.zero	2
	.long	219                     # 0xdb
	.ascii	"U>"
	.zero	2
	.long	219                     # 0xdb
	.ascii	"U\""
	.zero	2
	.long	220                     # 0xdc
	.ascii	"U:"
	.zero	2
	.long	220                     # 0xdc
	.ascii	"Y'"
	.zero	2
	.long	221                     # 0xdd
	.ascii	"Ip"
	.zero	2
	.long	222                     # 0xde
	.ascii	"TH"
	.zero	2
	.long	222                     # 0xde
	.zero	2,115
	.zero	2
	.long	223                     # 0xdf
	.ascii	"s\""
	.zero	2
	.long	223                     # 0xdf
	.ascii	"a`"
	.zero	2
	.long	224                     # 0xe0
	.ascii	"a!"
	.zero	2
	.long	224                     # 0xe0
	.ascii	"a'"
	.zero	2
	.long	225                     # 0xe1
	.ascii	"a^"
	.zero	2
	.long	226                     # 0xe2
	.ascii	"a>"
	.zero	2
	.long	226                     # 0xe2
	.ascii	"a~"
	.zero	2
	.long	227                     # 0xe3
	.ascii	"a?"
	.zero	2
	.long	227                     # 0xe3
	.ascii	"a\""
	.zero	2
	.long	228                     # 0xe4
	.ascii	"a:"
	.zero	2
	.long	228                     # 0xe4
	.zero	2,97
	.zero	2
	.long	229                     # 0xe5
	.ascii	"ae"
	.zero	2
	.long	230                     # 0xe6
	.ascii	"c,"
	.zero	2
	.long	231                     # 0xe7
	.ascii	"e`"
	.zero	2
	.long	232                     # 0xe8
	.ascii	"e!"
	.zero	2
	.long	232                     # 0xe8
	.ascii	"e'"
	.zero	2
	.long	233                     # 0xe9
	.ascii	"e^"
	.zero	2
	.long	234                     # 0xea
	.ascii	"e>"
	.zero	2
	.long	234                     # 0xea
	.ascii	"e\""
	.zero	2
	.long	235                     # 0xeb
	.ascii	"e:"
	.zero	2
	.long	235                     # 0xeb
	.ascii	"i`"
	.zero	2
	.long	236                     # 0xec
	.ascii	"i!"
	.zero	2
	.long	236                     # 0xec
	.ascii	"i'"
	.zero	2
	.long	237                     # 0xed
	.ascii	"i^"
	.zero	2
	.long	238                     # 0xee
	.ascii	"i>"
	.zero	2
	.long	238                     # 0xee
	.ascii	"i\""
	.zero	2
	.long	239                     # 0xef
	.ascii	"i:"
	.zero	2
	.long	239                     # 0xef
	.ascii	"d-"
	.zero	2
	.long	240                     # 0xf0
	.ascii	"n~"
	.zero	2
	.long	241                     # 0xf1
	.ascii	"n?"
	.zero	2
	.long	241                     # 0xf1
	.ascii	"o`"
	.zero	2
	.long	242                     # 0xf2
	.ascii	"o!"
	.zero	2
	.long	242                     # 0xf2
	.ascii	"o'"
	.zero	2
	.long	243                     # 0xf3
	.ascii	"o^"
	.zero	2
	.long	244                     # 0xf4
	.ascii	"o>"
	.zero	2
	.long	244                     # 0xf4
	.ascii	"o~"
	.zero	2
	.long	245                     # 0xf5
	.ascii	"o?"
	.zero	2
	.long	245                     # 0xf5
	.ascii	"o\""
	.zero	2
	.long	246                     # 0xf6
	.ascii	"o:"
	.zero	2
	.long	246                     # 0xf6
	.ascii	":-"
	.zero	2
	.long	247                     # 0xf7
	.ascii	"o/"
	.zero	2
	.long	248                     # 0xf8
	.ascii	"u`"
	.zero	2
	.long	249                     # 0xf9
	.ascii	"u!"
	.zero	2
	.long	249                     # 0xf9
	.ascii	"u'"
	.zero	2
	.long	250                     # 0xfa
	.ascii	"u^"
	.zero	2
	.long	251                     # 0xfb
	.ascii	"u>"
	.zero	2
	.long	251                     # 0xfb
	.ascii	"u\""
	.zero	2
	.long	252                     # 0xfc
	.ascii	"u:"
	.zero	2
	.long	252                     # 0xfc
	.ascii	"y'"
	.zero	2
	.long	253                     # 0xfd
	.ascii	"ip"
	.zero	2
	.long	254                     # 0xfe
	.ascii	"th"
	.zero	2
	.long	254                     # 0xfe
	.ascii	"y\""
	.zero	2
	.long	255                     # 0xff
	.ascii	"y:"
	.zero	2
	.long	255                     # 0xff
	.ascii	"\"["
	.zero	2
	.long	196                     # 0xc4
	.ascii	"\"\\"
	.zero	2
	.long	214                     # 0xd6
	.ascii	"\"]"
	.zero	2
	.long	220                     # 0xdc
	.ascii	"\"{"
	.zero	2
	.long	228                     # 0xe4
	.ascii	"\"|"
	.zero	2
	.long	246                     # 0xf6
	.ascii	"\"}"
	.zero	2
	.long	252                     # 0xfc
	.ascii	"\"~"
	.zero	2
	.long	223                     # 0xdf
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.size	digraphs, 4104

	.type	.L.str.234,@object      # @.str.234
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.234:
	.asciz	"Enter digraph: "
	.size	.L.str.234, 16

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"default hstatus is '%s'"
	.size	.L.str.235, 24

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"default charset is '%s'"
	.size	.L.str.236, 24

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"%s: %s: string has illegal size."
	.size	.L.str.237, 33

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"%s: %s: illegal mapping number."
	.size	.L.str.238, 32

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"dubrsBiI"
	.size	.L.str.239, 9

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"%s: attrcolor: unknown attribute '%s'."
	.size	.L.str.240, 39

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"bell"
	.size	.L.str.241, 5

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"monitor"
	.size	.L.str.242, 8

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"silence"
	.size	.L.str.243, 8

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"so"
	.size	.L.str.244, 3

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"Invalid option '%s' for rendition"
	.size	.L.str.245, 34

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"Standout attributes 0x%02x  color 0x%02x"
	.size	.L.str.246, 41

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"%s:%s screen login"
	.size	.L.str.247, 19

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"\377"
	.size	.L.str.248, 2

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"next"
	.size	.L.str.249, 5

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"top"
	.size	.L.str.250, 4

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"bottom"
	.size	.L.str.251, 7

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"up"
	.size	.L.str.252, 3

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"down"
	.size	.L.str.253, 5

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"left"
	.size	.L.str.254, 5

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"right"
	.size	.L.str.255, 6

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"%s: usage: focus [next|prev|up|down|left|right|top|bottom]"
	.size	.L.str.256, 59

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"resize: need more than one region"
	.size	.L.str.257, 34

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"%s: usage: resize [-h] [-v] [-l] [num]\n"
	.size	.L.str.258, 40

	.type	resizeprompts,@object   # @resizeprompts
	.data
	.align	16
resizeprompts:
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.size	resizeprompts, 64

	.type	.L.str.259,@object      # @.str.259
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.259:
	.asciz	"Will %sdo alternate screen switching"
	.size	.L.str.259, 37

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"maximum windows allowed: %d"
	.size	.L.str.260, 28

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"illegal maxwin number specified"
	.size	.L.str.261, 32

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"maximum 2048 windows allowed"
	.size	.L.str.262, 29

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"may increase maxwin only when there's no window"
	.size	.L.str.263, 48

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"decimal"
	.size	.L.str.264, 8

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"%s: usage: backtick num [lifespan tick cmd args...]"
	.size	.L.str.265, 52

	.type	blankerprg,@object      # @blankerprg
	.comm	blankerprg,8,8
	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"blankerprg: %s"
	.size	.L.str.266, 15

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"No blankerprg set."
	.size	.L.str.267, 19

	.type	idletimo,@object        # @idletimo
	.comm	idletimo,4,4
	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"%s: idle: unknown command '%s'"
	.size	.L.str.268, 31

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"idle timeout %ds, %s"
	.size	.L.str.269, 21

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"idle off"
	.size	.L.str.270, 9

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"max"
	.size	.L.str.271, 4

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"_"
	.size	.L.str.272, 2

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"focus min size is %s %s\n"
	.size	.L.str.273, 25

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"window group is %d (%s)\n"
	.size	.L.str.274, 25

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"window belongs to no group"
	.size	.L.str.275, 27

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"not on a layout"
	.size	.L.str.276, 16

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"current layout is %d (%s)"
	.size	.L.str.277, 26

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"number"
	.size	.L.str.278, 7

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"This is layout %d (%s).\n"
	.size	.L.str.279, 25

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"autosave"
	.size	.L.str.280, 9

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"invalid argument. Give 'on' or 'off"
	.size	.L.str.281, 36

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"autosave is %s"
	.size	.L.str.282, 15

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"new"
	.size	.L.str.283, 4

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"layout"
	.size	.L.str.284, 7

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"save"
	.size	.L.str.285, 5

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"usage: layout save <name>"
	.size	.L.str.286, 26

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"select"
	.size	.L.str.287, 7

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"Switch to layout: "
	.size	.L.str.288, 19

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"no layout defined"
	.size	.L.str.289, 18

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"attach"
	.size	.L.str.290, 7

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"no attach layout set"
	.size	.L.str.291, 21

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"will attach to last layout"
	.size	.L.str.292, 27

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"will attach to layout %d (%s)"
	.size	.L.str.293, 30

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	":last"
	.size	.L.str.294, 6

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"unknown layout '%s'"
	.size	.L.str.295, 20

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"show"
	.size	.L.str.296, 5

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"remove"
	.size	.L.str.297, 7

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"dump"
	.size	.L.str.298, 5

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"Must have a display for 'layout dump'."
	.size	.L.str.299, 39

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"layout-dump"
	.size	.L.str.300, 12

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Error dumping layout."
	.size	.L.str.301, 22

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"Layout dumped to \"%s\""
	.size	.L.str.302, 22

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"unknown layout subcommand"
	.size	.L.str.303, 26

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"Treat ambiguous width characters as %s width"
	.size	.L.str.304, 45

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"full"
	.size	.L.str.305, 5

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"half"
	.size	.L.str.306, 5

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"%s: unknown command '%s'"
	.size	.L.str.307, 25

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"exec"
	.size	.L.str.308, 5

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"%s: too many tokens."
	.size	.L.str.309, 21

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"%s: bad variable name."
	.size	.L.str.310, 23

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"TERM"
	.size	.L.str.311, 5

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"unknown"
	.size	.L.str.312, 8

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"COLUMNS"
	.size	.L.str.313, 8

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"LINES"
	.size	.L.str.314, 6

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"PID"
	.size	.L.str.315, 4

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"PWD"
	.size	.L.str.316, 4

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"?"
	.size	.L.str.317, 2

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"STY"
	.size	.L.str.318, 4

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"%s: no space left for variable expansion."
	.size	.L.str.319, 42

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"%s: Missing %c quote."
	.size	.L.str.320, 22

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"%s: %s: one argument required."
	.size	.L.str.321, 31

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"%s: %s: invalid argument. Give one argument."
	.size	.L.str.322, 45

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"%s: %s: invalid argument. Give numeric argument."
	.size	.L.str.323, 49

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"This IS window %d (%s)."
	.size	.L.str.324, 24

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"Access to window %d denied."
	.size	.L.str.325, 28

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"(L)"
	.size	.L.str.326, 4

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"%s: screen: invalid option -%c."
	.size	.L.str.327, 32

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"%s: illegal screen number %d."
	.size	.L.str.328, 30

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"Illegal attribute hexchar '%c'"
	.size	.L.str.329, 31

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"Illegal attribute specifier '%c'"
	.size	.L.str.330, 33

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"junk after attribute description: '%c'"
	.size	.L.str.331, 39

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"junk after description: '%c'"
	.size	.L.str.332, 29

	.type	ParseAttrColor.costr,@object # @ParseAttrColor.costr
	.data
	.align	16
ParseAttrColor.costr:
	.asciz	"krgybmcw d    i.01234567 9     f               FKRGYBMCW      I "
	.size	ParseAttrColor.costr, 65

	.type	.L.str.333,@object      # @.str.333
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.333:
	.asciz	"illegal color descriptor: '%c'"
	.size	.L.str.333, 31

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"junk after color description: '%c'"
	.size	.L.str.334, 35

	.type	kclasses,@object        # @kclasses
	.comm	kclasses,8,8
	.type	CheckArgNum.argss,@object # @CheckArgNum.argss
	.data
	.align	16
CheckArgNum.argss:
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.size	CheckArgNum.argss, 48

	.type	.L.str.335,@object      # @.str.335
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.335:
	.asciz	"no"
	.size	.L.str.335, 3

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"one"
	.size	.L.str.336, 4

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"two"
	.size	.L.str.337, 4

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"three"
	.size	.L.str.338, 6

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"four"
	.size	.L.str.339, 5

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"OOPS"
	.size	.L.str.340, 5

	.type	CheckArgNum.orformat,@object # @CheckArgNum.orformat
	.data
	.align	16
CheckArgNum.orformat:
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.size	CheckArgNum.orformat, 32

	.type	.L.str.341,@object      # @.str.341
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.341:
	.asciz	"%s: %s: %s argument%s required"
	.size	.L.str.341, 31

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"%s: %s: %s or %s argument%s required"
	.size	.L.str.342, 37

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"%s: %s: %s, %s or %s argument%s required"
	.size	.L.str.343, 41

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"%s: %s: %s, %s, %s or %s argument%s required"
	.size	.L.str.344, 45

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"%s: %s: at least %s argument%s required"
	.size	.L.str.345, 40

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"catch"
	.size	.L.str.346, 6

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"pass"
	.size	.L.str.347, 5

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"Command class name too long."
	.size	.L.str.348, 29

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"resize # lines: "
	.size	.L.str.349, 17

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"resize -h # lines: "
	.size	.L.str.350, 20

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"resize -v # lines: "
	.size	.L.str.351, 20

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"resize -b # lines: "
	.size	.L.str.352, 20

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"resize -l # lines: "
	.size	.L.str.353, 20

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"resize -l -h # lines: "
	.size	.L.str.354, 23

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"resize -l -v # lines: "
	.size	.L.str.355, 23

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"resize -l -b # lines: "
	.size	.L.str.356, 23

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"%s: %s: invalid argument. Give 'on' or 'off'"
	.size	.L.str.357, 45

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"%s: %s: invalid argument. Give floating point argument."
	.size	.L.str.358, 56

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"%s: %s: invalid argument. Give window number or name."
	.size	.L.str.359, 54

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"%s: %s: empty argument."
	.size	.L.str.360, 24

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"%s: %s: argument is not %s."
	.size	.L.str.361, 28

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"No other window."
	.size	.L.str.362, 17

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"No window available"
	.size	.L.str.363, 20

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"You are %s logging."
	.size	.L.str.364, 20

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"already"
	.size	.L.str.365, 8

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"not"
	.size	.L.str.366, 4

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"Logfile \"%s\" closed."
	.size	.L.str.367, 21

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"Creating logfile \"%s\"."
	.size	.L.str.368, 23

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"Appending to logfile \"%s\"."
	.size	.L.str.369, 27

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"(%d,%d)/(%d,%d) no window"
	.size	.L.str.370, 26

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"(%d,%d)/(%d,%d)"
	.size	.L.str.371, 16

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"+%d"
	.size	.L.str.372, 4

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	" %c%sflow"
	.size	.L.str.373, 10

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"(+)"
	.size	.L.str.374, 4

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"(-)"
	.size	.L.str.375, 4

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	" -wrap"
	.size	.L.str.376, 7

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	" ins"
	.size	.L.str.377, 5

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	" org"
	.size	.L.str.378, 5

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	" app"
	.size	.L.str.379, 5

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	" log"
	.size	.L.str.380, 5

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	" mon"
	.size	.L.str.381, 5

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	" mouse"
	.size	.L.str.382, 7

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	" bce"
	.size	.L.str.383, 5

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	" -c1"
	.size	.L.str.384, 5

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	" nored"
	.size	.L.str.385, 7

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	" G%c"
	.size	.L.str.386, 5

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	" G%c%c["
	.size	.L.str.387, 8

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	" G%c["
	.size	.L.str.388, 6

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"%s %d(%s)"
	.size	.L.str.389, 10

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"(%d,%d)"
	.size	.L.str.390, 8

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	" xterm"
	.size	.L.str.391, 7

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	" color"
	.size	.L.str.392, 7

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	" iso2022"
	.size	.L.str.393, 9

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	" altchar"
	.size	.L.str.394, 9

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"Set window's title to: "
	.size	.L.str.395, 24

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	" %s"
	.size	.L.str.396, 4

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"Possible commands:%s"
	.size	.L.str.397, 21

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"%s \t"
	.size	.L.str.398, 5

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"No commands matching '%*s'"
	.size	.L.str.399, 27

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"No such layout\n"
	.size	.L.str.400, 16

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"This IS layout %d (%s).\n"
	.size	.L.str.401, 25

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"Switch to window: "
	.size	.L.str.402, 19

	.type	InputSetenv.setenv_buf,@object # @InputSetenv.setenv_buf
	.local	InputSetenv.setenv_buf
	.comm	InputSetenv.setenv_buf,81,16
	.type	setenv_var,@object      # @setenv_var
	.local	setenv_var
	.comm	setenv_var,31,16
	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"Enter value for %s: "
	.size	.L.str.403, 21

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"Setenv: Enter variable name: "
	.size	.L.str.404, 30

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"\007"
	.size	.L.str.405, 2

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"Detach aborted."
	.size	.L.str.406, 16

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"Copied %d characters into register %c"
	.size	.L.str.407, 38

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"ins_reg_fn: Warning: pasting real register '.'!"
	.size	.L.str.408, 48

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"Empty register."
	.size	.L.str.409, 16

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"Screen User: "
	.size	.L.str.410, 14

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"User's UNIX Password: "
	.size	.L.str.411, 23

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"User's Screen Password: "
	.size	.L.str.412, 25

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"Retype new password:"
	.size	.L.str.413, 21

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"[ Passwords don't match - checking turned off ]"
	.size	.L.str.414, 48

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"[ No password - no secure ]"
	.size	.L.str.415, 28

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"[ crypt() error - no secure ]"
	.size	.L.str.416, 30

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"[ Password moved into copybuffer ]"
	.size	.L.str.417, 35

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"Unknown digraph"
	.size	.L.str.418, 16

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"min"
	.size	.L.str.419, 4

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"0"
	.size	.L.str.420, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
