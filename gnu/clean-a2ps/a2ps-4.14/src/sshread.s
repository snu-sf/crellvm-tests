	.text
	.file	"sshread.bc"
	.globl	ssh_print_postscript
	.align	16, 0x90
	.type	ssh_print_postscript,@function
ssh_print_postscript:                   # @ssh_print_postscript
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
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -548(%rbp)
	movb	$0, -544(%rbp)
	movq	Plain_fface, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, token
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	token_new
	movq	%rax, token
	callq	rhs_plain_new
	movq	%rax, plain_rhs
.LBB0_2:                                # %if.end
	jmp	.LBB0_3
.LBB0_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	ssh_get_token
	cmpl	$0, %eax
	je	.LBB0_64
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$0, -560(%rbp)
.LBB0_5:                                # %for.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB0_63
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-32(%rbp), %eax
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB0_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	16(%rcx), %eax
	je	.LBB0_23
.LBB0_8:                                # %if.then.14
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB0_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	movb	$0, 496(%rax)
.LBB0_10:                               # %if.end.23
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	je	.LBB0_12
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	movb	$0, 752(%rax)
.LBB0_12:                               # %if.end.33
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB0_14
# BB#13:                                # %if.then.41
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	movb	$0, 1008(%rax)
.LBB0_14:                               # %if.end.43
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	je	.LBB0_16
# BB#15:                                # %if.then.51
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	movb	$0, 1264(%rax)
.LBB0_16:                               # %if.end.53
                                        #   in Loop: Header=BB0_5 Depth=2
	cmpl	$0, -548(%rbp)
	je	.LBB0_22
# BB#17:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	andl	$512, %edx              # imm = 0x200
	cmpl	$0, %edx
	jne	.LBB0_22
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB0_5 Depth=2
	leaq	-544(%rbp), %rsi
	movq	job, %rdi
	callq	get_encoding_by_alias
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.67
                                        #   in Loop: Header=BB0_5 Depth=2
	movabsq	$.L.str, %rdi
	callq	gettext
	leaq	-544(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	jmp	.LBB0_21
.LBB0_20:                               # %if.else
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-568(%rbp), %rsi
	callq	ps_switch_encoding
.LBB0_21:                               # %if.end.71
                                        #   in Loop: Header=BB0_5 Depth=2
	movb	$0, -544(%rbp)
	movl	$0, -548(%rbp)
.LBB0_22:                               # %if.end.73
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	12(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_23:                               # %if.end.78
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# BB#24:                                # %if.then.83
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# BB#25:                                # %if.then.87
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$496, %rax              # imm = 0x1F0
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	strcat
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB0_26:                               # %if.end.95
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_28
# BB#27:                                # %if.then.99
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$752, %rax              # imm = 0x2F0
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	strcat
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB0_28:                               # %if.end.107
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_30
# BB#29:                                # %if.then.111
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$1008, %rax             # imm = 0x3F0
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	strcat
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB0_30:                               # %if.end.119
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_32
# BB#31:                                # %if.then.123
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$1264, %rax             # imm = 0x4F0
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	strcat
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB0_32:                               # %if.end.131
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB0_34
# BB#33:                                # %if.then.135
                                        #   in Loop: Header=BB0_5 Depth=2
	leaq	-544(%rbp), %rdi
	movl	$1, -548(%rbp)
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rsi
	callq	strcat
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB0_34:                               # %if.end.142
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_56
.LBB0_35:                               # %if.else.143
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_39
# BB#36:                                # %if.then.147
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_37
.LBB0_37:                               # %do.body
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$496, %rax              # imm = 0x1F0
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rdx, %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	(%rsi,%rdx,4), %edi
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	subl	(%rsi,%rdx,4), %edi
	movslq	%edi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strncat
	movq	%rax, -624(%rbp)        # 8-byte Spill
# BB#38:                                # %do.end
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_39
.LBB0_39:                               # %if.end.171
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_43
# BB#40:                                # %if.then.175
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_41
.LBB0_41:                               # %do.body.176
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$752, %rax              # imm = 0x2F0
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rdx, %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	(%rsi,%rdx,4), %edi
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	subl	(%rsi,%rdx,4), %edi
	movslq	%edi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strncat
	movq	%rax, -632(%rbp)        # 8-byte Spill
# BB#42:                                # %do.end.209
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.210
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_47
# BB#44:                                # %if.then.214
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_45
.LBB0_45:                               # %do.body.215
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$1008, %rax             # imm = 0x3F0
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rdx, %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	(%rsi,%rdx,4), %edi
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	subl	(%rsi,%rdx,4), %edi
	movslq	%edi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strncat
	movq	%rax, -640(%rbp)        # 8-byte Spill
# BB#46:                                # %do.end.248
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_47
.LBB0_47:                               # %if.end.249
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_51
# BB#48:                                # %if.then.253
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_49
.LBB0_49:                               # %do.body.254
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$1264, %rax             # imm = 0x4F0
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	(%rsi,%rdx,4), %rdx
	addq	%rdx, %rcx
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	16(%rsi), %rsi
	movl	(%rsi,%rdx,4), %edi
	movq	-560(%rbp), %rdx
	movq	token, %rsi
	movq	8(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movslq	8(%rdx), %rdx
	movq	token, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	subl	(%rsi,%rdx,4), %edi
	movslq	%edi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strncat
	movq	%rax, -648(%rbp)        # 8-byte Spill
# BB#50:                                # %do.end.287
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.288
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB0_55
# BB#52:                                # %if.then.292
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	$1, -548(%rbp)
# BB#53:                                # %do.body.293
                                        #   in Loop: Header=BB0_5 Depth=2
	leaq	-544(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	8(%rcx), %rcx
	movq	token, %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rcx, %rax
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	8(%rcx), %rcx
	movq	token, %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-560(%rbp), %rcx
	movq	token, %rdx
	movq	8(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	8(%rcx), %rcx
	movq	token, %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	subl	(%rdx,%rcx,4), %esi
	movslq	%esi, %rdx
	movq	%rax, %rsi
	callq	strncat
	movq	%rax, -656(%rbp)        # 8-byte Spill
# BB#54:                                # %do.end.325
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_55
.LBB0_55:                               # %if.end.326
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_56
.LBB0_56:                               # %if.end.327
                                        #   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_61
# BB#57:                                # %if.then.331
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, (%rax)
	je	.LBB0_59
# BB#58:                                # %if.then.337
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rsi
	movl	-32(%rbp), %edx
	callq	ps_print_string
	jmp	.LBB0_60
.LBB0_59:                               # %if.else.343
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	8(%rax), %rax
	movq	token, %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movslq	(%rcx,%rax,4), %rdx
	movq	-560(%rbp), %rax
	movq	token, %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	8(%rax), %rax
	movq	token, %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rcx
	movslq	(%rcx,%rax,4), %rcx
	movl	-32(%rbp), %r8d
	callq	ps_print_buffer
.LBB0_60:                               # %if.end.364
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_61
.LBB0_61:                               # %if.end.365
                                        #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_62
.LBB0_62:                               # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-560(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -560(%rbp)
	jmp	.LBB0_5
.LBB0_63:                               # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_64:                               # %while.end
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ssh_print_postscript, .Lfunc_end0-ssh_print_postscript
	.cfi_endproc

	.align	16, 0x90
	.type	token_new,@function
token_new:                              # @token_new
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
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$24, %ecx
	movl	%ecx, %edi
	movq	%rax, -8(%rbp)
	callq	xmalloc
	movl	$120, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	callq	xmalloc
	movl	$120, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx)
	callq	xmalloc
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	token_new, .Lfunc_end1-token_new
	.cfi_endproc

	.align	16, 0x90
	.type	rhs_plain_new,@function
rhs_plain_new:                          # @rhs_plain_new
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
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	Plain_fface, %rdx
	callq	rhs_new_single
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rhs_plain_new, .Lfunc_end2-rhs_plain_new
	.cfi_endproc

	.align	16, 0x90
	.type	ssh_get_token,@function
ssh_get_token:                          # @ssh_get_token
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	80(%rdi), %rsi
	jb	.LBB3_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	buffer_get
	movq	-16(%rbp), %rdi
	movq	64(%rdi), %rdi
	movl	%edi, %eax
	movq	job, %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movl	%eax, 136(%rcx)
	movq	-16(%rbp), %rcx
	cmpq	$0, 80(%rcx)
	jne	.LBB3_3
# BB#2:                                 # %if.then.6
	movq	$0, ssh_get_token.sequence
	movl	$0, ssh_get_token.return_to_plain
	movl	$0, -4(%rbp)
	jmp	.LBB3_25
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.7
	cmpl	$0, ssh_get_token.return_to_plain
	je	.LBB3_6
# BB#5:                                 # %if.then.8
	movl	$0, ssh_get_token.return_to_plain
	movq	plain_rhs, %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movq	token, %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	Plain_fface, %rcx
	movq	%rcx, 12(%rax)
.LBB3_6:                                # %if.end.12
	cmpq	$0, ssh_get_token.sequence
	je	.LBB3_12
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rdi
	movq	ssh_get_token.sequence, %rax
	movq	16(%rax), %rsi
	callq	match_operator
	cmpl	$0, %eax
	je	.LBB3_9
# BB#8:                                 # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_9:                                # %if.end.17
	movq	-16(%rbp), %rdi
	movq	ssh_get_token.sequence, %rax
	movq	24(%rax), %rsi
	callq	match_operator
	cmpl	$0, %eax
	je	.LBB3_11
# BB#10:                                # %if.then.20
	movl	$1, ssh_get_token.return_to_plain
	movq	$0, ssh_get_token.sequence
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.21
	movq	plain_rhs, %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movq	token, %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	ssh_get_token.sequence, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 12(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 88(%rax)
	movl	%ecx, %esi
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%esi, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %esi
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%esi, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_12:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	match_sequence
	movq	%rax, ssh_get_token.sequence
	cmpq	$0, %rax
	je	.LBB3_14
# BB#13:                                # %if.then.37
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_14:                               # %if.else.38
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rcx
	cmpb	$0, 76(%rcx,%rax)
	je	.LBB3_19
# BB#15:                                # %if.then.44
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	592(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$332, %rax              # imm = 0x14C
	movq	%rax, %rdx
	callq	match_keyword
	cmpl	$0, %eax
	jne	.LBB3_17
# BB#16:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	600(%rax), %rsi
	callq	match_operator
	cmpl	$0, %eax
	je	.LBB3_18
.LBB3_17:                               # %if.then.49
	movl	$1, ssh_get_token.return_to_plain
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_18:                               # %if.else.50
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	match_word
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_19:                               # %if.else.51
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	600(%rax), %rsi
	callq	match_operator
	cmpl	$0, %eax
	je	.LBB3_21
# BB#20:                                # %if.then.55
	movl	$1, ssh_get_token.return_to_plain
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_21:                               # %if.end.56
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.57
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.58
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.59
	movq	plain_rhs, %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 88(%rax)
	movl	%ecx, %esi
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%esi, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %esi
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%esi, (%rax)
	movl	$1, -4(%rbp)
.LBB3_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ssh_get_token, .Lfunc_end3-ssh_get_token
	.cfi_endproc

	.align	16, 0x90
	.type	match_operator,@function
match_operator:                         # @match_operator
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	88(%rdi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movzbl	(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	cmpq	$0, 16(%rdi,%rsi,8)
	je	.LBB4_10
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	2064(%rdx,%rax,8), %rax
	movq	%rax, -32(%rbp)
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	16(%rdx,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	ja	.LBB4_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB4_7
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
# BB#5:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movl	%edx, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
# BB#6:                                 # %do.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	addq	88(%rdi), %rax
	movq	%rax, 88(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB4_19
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	jmp	.LBB4_8
.LBB4_8:                                # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_2
.LBB4_9:                                # %for.end
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.23
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB4_11:                               # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB4_18
# BB#12:                                # %for.body.28
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movl	80(%rax), %edx
	movl	88(%rax), %ecx
	movq	token(%rip), %rax
	movq	(%rax), %r8
	callq	re_match
	movl	%eax, -48(%rbp)
	movl	%eax, %ecx
	subl	$-2, %eax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB4_13
	jmp	.LBB4_20
.LBB4_20:                               # %for.body.28
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB4_14
	jmp	.LBB4_15
.LBB4_13:                               # %sw.bb
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB4_16
.LBB4_14:                               # %sw.bb.40
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_17
.LBB4_15:                               # %sw.default
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB4_19
.LBB4_16:                               # %sw.epilog
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %for.inc.50
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_11
.LBB4_18:                               # %for.end.51
	movl	$0, -4(%rbp)
.LBB4_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	match_operator, .Lfunc_end4-match_operator
	.cfi_endproc

	.align	16, 0x90
	.type	match_sequence,@function
match_sequence:                         # @match_sequence
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	88(%rdi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	608(%rsi), %rsi
	movq	40(%rsi), %rsi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB5_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movl	80(%rax), %edx
	movl	88(%rax), %ecx
	movq	token(%rip), %rax
	movq	(%rax), %r8
	callq	re_match
	movl	%eax, -32(%rbp)
	movl	%eax, %ecx
	subl	$-2, %eax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_17
.LBB5_17:                               # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_6
.LBB5_4:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_7
.LBB5_5:                                # %sw.bb.15
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_14
.LBB5_6:                                # %sw.default
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_16
.LBB5_7:                                # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_13
.LBB5_8:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#9:                                 # %if.then.42
	jmp	.LBB5_10
.LBB5_10:                               # %do.body
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	608(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movl	%edx, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
# BB#11:                                # %do.end
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	-16(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_16
.LBB5_12:                               # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.79
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_1
.LBB5_15:                               # %for.end
	movq	$0, -8(%rbp)
.LBB5_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	match_sequence, .Lfunc_end5-match_sequence
	.cfi_endproc

	.align	16, 0x90
	.type	match_keyword,@function
match_keyword:                          # @match_keyword
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	88(%rsi), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	cmpq	$0, 16(%rsi,%rdx,8)
	je	.LBB6_11
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	2064(%rdx,%rax,8), %rax
	movq	%rax, -40(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	16(%rdx,%rax,8), %rax
	cmpq	-40(%rbp), %rax
	ja	.LBB6_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	-48(%rbp), %rdi
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdi
	cmpb	$0, (%rdi,%rax)
	jne	.LBB6_8
# BB#5:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
# BB#6:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movl	%edx, %ecx
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
# BB#7:                                 # %do.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	addq	88(%rdi), %rax
	movq	%rax, 88(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB6_20
.LBB6_8:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_2
.LBB6_10:                               # %for.end
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.29
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB6_12:                               # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB6_19
# BB#13:                                # %for.body.34
                                        #   in Loop: Header=BB6_12 Depth=1
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movl	80(%rax), %edx
	movl	88(%rax), %ecx
	movq	token(%rip), %rax
	movq	(%rax), %r8
	callq	re_match
	movl	%eax, -56(%rbp)
	movl	%eax, %ecx
	subl	$-2, %eax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_21
.LBB6_21:                               # %for.body.34
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_16
.LBB6_14:                               # %sw.bb
                                        #   in Loop: Header=BB6_12 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB6_17
.LBB6_15:                               # %sw.bb.46
                                        #   in Loop: Header=BB6_12 Depth=1
	jmp	.LBB6_18
.LBB6_16:                               # %sw.default
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	16(%rax), %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movslq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB6_20
.LBB6_17:                               # %sw.epilog
                                        #   in Loop: Header=BB6_12 Depth=1
	jmp	.LBB6_18
.LBB6_18:                               # %for.inc.56
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_12
.LBB6_19:                               # %for.end.57
	movl	$0, -4(%rbp)
.LBB6_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	match_keyword, .Lfunc_end6-match_keyword
	.cfi_endproc

	.align	16, 0x90
	.type	match_word,@function
match_word:                             # @match_word
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 88(%rax)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movzbl	(%rdx,%rsi), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movzbl	332(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB7_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	setae	%dl
	xorb	$-1, %dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB7_4:                                # %land.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_1
# BB#5:                                 # %do.end
	movq	plain_rhs, %rax
	movq	token, %rcx
	movq	%rax, 8(%rcx)
	movq	token, %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	Plain_fface, %rcx
	movq	%rcx, 12(%rax)
	movl	-20(%rbp), %edx
	movq	token, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	%eax, %edx
	movq	token, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	match_word, .Lfunc_end7-match_word
	.cfi_endproc

	.type	token,@object           # @token
	.local	token
	.comm	token,8,8
	.type	plain_rhs,@object       # @plain_rhs
	.local	plain_rhs
	.comm	plain_rhs,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown encoding `%s', ignored"
	.size	.L.str, 31

	.type	ssh_get_token.return_to_plain,@object # @ssh_get_token.return_to_plain
	.local	ssh_get_token.return_to_plain
	.comm	ssh_get_token.return_to_plain,4,4
	.type	ssh_get_token.sequence,@object # @ssh_get_token.sequence
	.local	ssh_get_token.sequence
	.comm	ssh_get_token.sequence,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"An error occured while matching\n"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
