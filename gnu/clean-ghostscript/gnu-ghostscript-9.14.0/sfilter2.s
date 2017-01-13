	.text
	.file	"sfilter2.bc"
	.align	16, 0x90
	.type	s_A85E_init,@function
s_A85E_init:                            # @s_A85E_init
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$42949672960, %rax      # imm = 0xA00000000
	movq	%rax, 108(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_A85E_init, .Lfunc_end0-s_A85E_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_A85E_process,@function
s_A85E_process:                         # @s_A85E_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	(%rsi), %r8
	movq	8(%rsi), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	8(%rdx), %r13
	movq	16(%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	108(%rdi), %rax
	negq	%rax
	leaq	79(%r13,%rax), %r9
	movl	112(%rdi), %r10d
	movq	%rcx, %r15
	subq	%r8, %r15
	xorl	%esi, %esi
	cmpl	$4, %r15d
	jl	.LBB1_29
# BB#1:                                 # %for.body.lr.ph
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	movabsq	$-4557430888798830399, %rdi # imm = 0xC0C0C0C0C0C0C0C1
	movabsq	$2468927545920710923, %rbp # imm = 0x22436485A6C7E90B
	movabsq	$-2698473677752648057, %r11 # imm = 0xDA8D187CB9CFBE87
	movl	$3233857729, %r14d      # imm = 0xC0C0C0C1
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movzbl	1(%r8), %eax
	shlq	$8, %rax
	movzbl	2(%r8), %edx
	orq	%rax, %rdx
	shlq	$16, %rdx
	movzbl	3(%r8), %ebx
	shlq	$8, %rbx
	movzbl	4(%r8), %r8d
	orq	%r8, %rbx
	orq	%rdx, %rbx
	je	.LBB1_3
# BB#9:                                 # %if.else.39
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rdx, %rdi
	shrq	$6, %rdi
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rbx, %rbp
	subq	%rdx, %rbp
	shrq	%rbp
	addq	%rdx, %rbp
	shrq	$12, %rbp
	movq	%rbx, %rax
	mulq	%r11
	shrq	$19, %rdx
	movl	%edx, %eax
	imulq	%r14, %rax
	shrq	$38, %rax
	imull	$-85, %eax, %ebx
	addl	$33, %eax
	leal	33(%rdx,%rbx), %r14d
	imull	$-85, %edx, %edx
	leal	33(%rbp,%rdx), %r11d
	imull	$-85, %ebp, %edx
	leal	33(%rdi,%rdx), %ebx
	imull	$-85, %edi, %edx
	leal	33(%r8,%rdx), %r12d
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_13:                               # %put.backedge
                                        #   in Loop: Header=BB1_10 Depth=2
	addq	$80, %r13
	movl	$10, %r10d
	movq	%r13, %r9
	movq	%rbp, %r13
.LBB1_10:                               # %put
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	5(%r13), %rdx
	cmpq	%r9, %rdx
	jbe	.LBB1_14
# BB#11:                                # %if.then.47
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpq	%rcx, %r13
	jae	.LBB1_27
# BB#12:                                # %if.end.51
                                        #   in Loop: Header=BB1_10 Depth=2
	leaq	1(%r13), %rbp
	movb	$10, 1(%r13)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_14:                               # %if.end.57
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	%rcx, %rdi
	subq	%r13, %rdi
	cmpq	$5, %rdi
	jl	.LBB1_27
# BB#15:                                # %if.end.64
                                        #   in Loop: Header=BB1_10 Depth=2
	leaq	1(%r13), %rbp
	movb	%al, 1(%r13)
	movb	%r14b, 2(%r13)
	movb	%r11b, 3(%r13)
	movb	%bl, 4(%r13)
	movb	%r12b, 5(%r13)
	movzbl	%al, %edx
	cmpl	$37, %edx
	jne	.LBB1_52
# BB#16:                                # %if.then.106
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpl	$37, %r10d
	jne	.LBB1_17
# BB#40:                                # %if.then.109
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	%r9, %rdx
	subq	%r13, %rdx
	cmpq	$78, %rdx
	jne	.LBB1_53
# BB#41:                                # %if.then.115
                                        #   in Loop: Header=BB1_10 Depth=2
	movb	$10, (%rbp)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_52:                               # %if.else.233
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpl	$37, %r10d
	jne	.LBB1_53
# BB#54:                                # %if.else.233
                                        #   in Loop: Header=BB1_10 Depth=2
	cmpl	$33, %edx
	jne	.LBB1_53
# BB#55:                                # %land.lhs.true.241
                                        #   in Loop: Header=BB1_10 Depth=2
	movq	%r9, %rdx
	subq	%r13, %rdx
	cmpq	$78, %rdx
	jne	.LBB1_53
# BB#56:                                # %if.then.247
                                        #   in Loop: Header=BB1_10 Depth=2
	movb	$10, (%rbp)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r9, %r13
	jae	.LBB1_4
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	56(%rsp), %r13          # 8-byte Folded Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	jb	.LBB1_7
	jmp	.LBB1_27
.LBB1_4:                                # %if.then.22
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	subq	%r13, %rax
	cmpq	$2, %rax
	movq	40(%rsp), %r8           # 8-byte Reload
	jl	.LBB1_27
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$10, 1(%r13)
	leaq	1(%r13), %rax
	addq	$80, %r13
	movq	%r13, %r9
	movq	%rax, %r13
.LBB1_7:                                # %if.end.37
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$122, 1(%r13)
	incq	%r13
	movl	$122, %r10d
	jmp	.LBB1_8
.LBB1_17:                               # %if.then.106
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$10, %r10d
	jne	.LBB1_53
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%r14b, %edx
	cmpl	$33, %edx
	movl	$1, %eax
	je	.LBB1_26
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$37, %edx
	jne	.LBB1_53
# BB#20:                                # %cond.false
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%r11b, %edx
	movl	$2, %eax
	cmpl	$33, %edx
	je	.LBB1_26
# BB#21:                                # %cond.false.143
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$37, %edx
	movl	$1, %eax
	jne	.LBB1_26
# BB#22:                                # %cond.false.149
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%bl, %edx
	movl	$3, %eax
	cmpl	$33, %edx
	je	.LBB1_26
# BB#23:                                # %cond.false.155
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$37, %edx
	movl	$2, %eax
	jne	.LBB1_26
# BB#24:                                # %cond.false.161
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	%r12b, %edx
	movl	$4, %eax
	cmpl	$33, %edx
	je	.LBB1_26
# BB#25:                                # %cond.false.167
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$37, %edx
	sete	%al
	movzbl	%al, %eax
	addl	$3, %eax
.LBB1_26:                               # %cond.end.181
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	5(%rax), %edx
	movl	$10, %r10d
	cmpq	%rdx, %rdi
	jl	.LBB1_27
# BB#42:                                # %do.end.194
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	-1(%rax), %edx
	cmpl	$3, %edx
	ja	.LBB1_51
# BB#43:                                # %do.end.194
                                        #   in Loop: Header=BB1_2 Depth=1
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_49:                               # %sw.bb.212
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r12b, 6(%r13)
	jmp	.LBB1_50
.LBB1_48:                               # %sw.bb.204
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r12b, 7(%r13)
	movb	%bl, 6(%r13)
	jmp	.LBB1_47
.LBB1_45:                               # %sw.bb.198
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r12b, 8(%r13)
	jmp	.LBB1_46
.LBB1_44:                               # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r12b, 9(%r13)
	movb	$10, 8(%r13)
.LBB1_46:                               # %e3
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%bl, 7(%r13)
	movb	$10, 6(%r13)
.LBB1_47:                               # %e1
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%r11b, %bl
	movb	$10, %r11b
.LBB1_50:                               # %e1
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%bl, 5(%r13)
	movb	%r11b, 4(%r13)
	movb	%r14b, 3(%r13)
	movb	$10, 2(%r13)
.LBB1_51:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	(%rax,%rax), %edx
	leaq	79(%r13,%rdx), %r9
	movl	%eax, %eax
	movb	5(%r13,%rax), %r12b
	leaq	(%r13,%rax), %r13
	.align	16, 0x90
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movabsq	$-4557430888798830399, %rdi # imm = 0xC0C0C0C0C0C0C0C1
	movabsq	$2468927545920710923, %rbp # imm = 0x22436485A6C7E90B
	movabsq	$-2698473677752648057, %r11 # imm = 0xDA8D187CB9CFBE87
	movl	$3233857729, %r14d      # imm = 0xC0C0C0C1
	addq	$5, %r13
	movzbl	%r12b, %r10d
.LBB1_8:                                # %for.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$4, %r8
	movq	%rcx, %r15
	subq	%r8, %r15
	cmpl	$3, %r15d
	jg	.LBB1_2
	jmp	.LBB1_28
.LBB1_27:
	movl	$1, %esi
.LBB1_28:                               # %end.preheader
	movl	24(%rsp), %ebp          # 4-byte Reload
.LBB1_29:                               # %end.preheader
	movq	%r9, %rdx
	subq	%r13, %rdx
	movl	$79, %eax
	subl	%edx, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 108(%rcx)
	cmpl	$3, %r15d
	jg	.LBB1_77
# BB#30:                                # %end.preheader
	testl	%ebp, %ebp
	je	.LBB1_77
# BB#31:                                # %end.preheader
	testl	%esi, %esi
	jne	.LBB1_77
# BB#32:                                # %if.then.280.lr.ph
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	leal	3(%r15), %eax
	testl	%r15d, %r15d
	movl	$2, %ecx
	cmovnel	%eax, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	1(%r15), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	andl	$1, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movabsq	$-4557430888798830399, %r12 # imm = 0xC0C0C0C0C0C0C0C1
	movabsq	$2468927545920710923, %r11 # imm = 0x22436485A6C7E90B
	movq	%r13, %r14
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_80:                               # %cleanup.386
                                        #   in Loop: Header=BB1_33 Depth=1
	leaq	1(%r13), %r14
	movb	$10, 1(%r13)
	movq	%r13, %r9
	addq	$80, %r9
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	$0, 108(%rax)
	movl	$10, %r10d
	movl	$79, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r14, %r13
.LBB1_33:                               # %if.then.280
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_60 Depth 2
	xorl	%eax, %eax
	cmpl	$1, %r15d
	je	.LBB1_38
# BB#34:                                # %if.then.280
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpl	$2, %r15d
	je	.LBB1_37
# BB#35:                                # %if.then.280
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpl	$3, %r15d
	jne	.LBB1_70
# BB#36:                                # %sw.bb.289
                                        #   in Loop: Header=BB1_33 Depth=1
	movzbl	3(%r8), %eax
	shlq	$8, %rax
.LBB1_37:                               # %sw.bb.295
                                        #   in Loop: Header=BB1_33 Depth=1
	movzbl	2(%r8), %ecx
	shlq	$16, %rcx
	orq	%rcx, %rax
.LBB1_38:                               # %for.body.308.lr.ph
                                        #   in Loop: Header=BB1_33 Depth=1
	movzbl	1(%r8), %ecx
	shlq	$24, %rcx
	addq	%rax, %rcx
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_57
# BB#39:                                #   in Loop: Header=BB1_33 Depth=1
	movq	%r8, %rbp
	xorl	%eax, %eax
	movl	$52200625, %esi         # imm = 0x31C84B1
	jmp	.LBB1_58
	.align	16, 0x90
.LBB1_57:                               # %for.body.308.prol
                                        #   in Loop: Header=BB1_33 Depth=1
	movq	%r8, %rbp
	movq	%rcx, %rax
	movabsq	$-6589222834400824231, %rdx # imm = 0xA48E60BE49A57459
	mulq	%rdx
	shrq	$25, %rdx
	imulq	$-52200625, %rdx, %rax  # imm = 0xFFFFFFFFFCE37B4F
	addb	$33, %dl
	movb	%dl, 67(%rsp)
	addq	%rax, %rcx
	movl	$1, %eax
	movl	$614125, %esi           # imm = 0x95EED
.LBB1_58:                               # %for.body.308.lr.ph.split
                                        #   in Loop: Header=BB1_33 Depth=1
	testl	%r15d, %r15d
	je	.LBB1_61
# BB#59:                                # %for.body.308.lr.ph.split.split
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	16(%rsp), %r8d          # 4-byte Reload
	subl	%eax, %r8d
	leaq	68(%rsp), %rdx
	leaq	(%rax,%rdx), %rbx
	.align	16, 0x90
.LBB1_60:                               # %for.body.308
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	movb	%al, %dl
	addb	$33, %dl
	movb	%dl, -1(%rbx)
	imulq	%rsi, %rax
	subq	%rax, %rcx
	movq	%rsi, %rax
	mulq	%r12
	movq	%rdx, %rdi
	shrq	$6, %rdi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rdi
	imulq	%rax, %rdi
	addb	$33, %al
	movb	%al, (%rbx)
	subq	%rdi, %rcx
	movq	%rsi, %rax
	mulq	%r11
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$12, %rsi
	addq	$2, %rbx
	addl	$-2, %r8d
	jne	.LBB1_60
.LBB1_61:                               # %sw.epilog.320
                                        #   in Loop: Header=BB1_33 Depth=1
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB1_62
# BB#63:                                # %sw.epilog.320
                                        #   in Loop: Header=BB1_33 Depth=1
	movzbl	67(%rsp), %ecx
	cmpl	$37, %ecx
	movq	%rbp, %r8
	jne	.LBB1_70
# BB#64:                                # %land.rhs
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpl	$37, %r10d
	jne	.LBB1_65
# BB#69:                                # %land.rhs.341
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpq	$78, 40(%rsp)           # 8-byte Folded Reload
	sete	%al
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_62:                               #   in Loop: Header=BB1_33 Depth=1
	movq	%rbp, %r8
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_65:                               # %land.rhs
                                        #   in Loop: Header=BB1_33 Depth=1
	cmpl	$10, %r10d
	jne	.LBB1_66
# BB#67:                                # %land.lhs.true.329
                                        #   in Loop: Header=BB1_33 Depth=1
	movb	$1, %al
	movb	68(%rsp), %cl
	orb	$4, %cl
	movzbl	%cl, %ecx
	cmpl	$37, %ecx
	je	.LBB1_70
# BB#68:                                # %lor.rhs
                                        #   in Loop: Header=BB1_33 Depth=1
	xorl	%eax, %eax
	jmp	.LBB1_70
.LBB1_66:                               #   in Loop: Header=BB1_33 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_70:                               # %land.end.347
                                        #   in Loop: Header=BB1_33 Depth=1
	movzbl	%al, %ecx
	movq	56(%rsp), %rdx          # 8-byte Reload
	subq	%r14, %rdx
	movq	32(%rsp), %rsi          # 8-byte Reload
	leal	(%rcx,%rsi), %esi
	movslq	%esi, %rdi
	movl	$1, %esi
	cmpq	%rdi, %rdx
	jl	.LBB1_77
# BB#71:                                # %if.else.356
                                        #   in Loop: Header=BB1_33 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	(%r13,%rdx), %rdx
	addq	%rdx, %rcx
	cmpq	%r9, %rcx
	ja	.LBB1_80
# BB#72:                                # %if.else.366
	testl	%r15d, %r15d
	je	.LBB1_76
# BB#73:                                # %if.then.368
	movq	%r8, %rbp
	testb	%al, %al
	je	.LBB1_75
# BB#74:                                # %if.then.370
	movb	$32, 1(%r13)
	incq	%r13
.LBB1_75:                               # %if.end.372
	leaq	1(%r13), %rdi
	movq	%r15, %rax
	shlq	$32, %rax
	movabsq	$4294967296, %rbx       # imm = 0x100000000
	addq	%rax, %rbx
	sarq	$32, %rbx
	leaq	67(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r13
	movslq	%r15d, %rax
	movq	%rbp, %r8
	addq	%rax, %r8
.LBB1_76:                               # %if.end.381
	movw	$15998, 1(%r13)         # imm = 0x3E7E
	addq	$2, %r13
	xorl	%esi, %esi
.LBB1_77:                               # %cleanup.386.thread
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r8, (%rax)
	cmpq	8(%rcx), %r13
	jbe	.LBB1_79
# BB#78:                                # %if.then.402
	movzbl	(%r13), %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 112(%rdx)
.LBB1_79:                               # %if.end.405
	movq	%r13, 8(%rcx)
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_A85E_process, .Lfunc_end1-s_A85E_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_49
	.quad	.LBB1_48
	.quad	.LBB1_45
	.quad	.LBB1_44

	.text
	.align	16, 0x90
	.type	s_BT_process,@function
s_BT_process:                           # @s_BT_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	8(%rdx), %rcx
	movq	16(%rdx), %r10
	movl	%r9d, %eax
	subl	%r8d, %eax
	movl	%r10d, %r11d
	subl	%ecx, %r11d
	cmpl	%r11d, %eax
	seta	%bl
	cmovbel	%eax, %r11d
	movzbl	%bl, %eax
	testl	%r11d, %r11d
	je	.LBB2_3
# BB#1:                                 # %while.body.preheader
	subl	%ecx, %r10d
	notl	%r10d
	subl	%r8d, %r9d
	notl	%r9d
	cmpl	%r9d, %r10d
	cmoval	%r10d, %r9d
	incl	%r9d
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r8), %ebx
	incq	%r8
	movb	108(%rdi,%rbx), %bl
	movb	%bl, 1(%rcx)
	incq	%rcx
	incl	%r9d
	jne	.LBB2_2
.LBB2_3:                                # %while.end
	movq	%r8, (%rsi)
	movq	%rcx, 8(%rdx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	s_BT_process, .Lfunc_end2-s_BT_process
	.cfi_endproc

	.type	st_A85E_state,@object   # @st_A85E_state
	.section	.rodata,"a",@progbits
	.align	8
st_A85E_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_A85E_state, 64

	.type	s_A85E_template,@object # @s_A85E_template
	.globl	s_A85E_template
	.align	8
s_A85E_template:
	.quad	st_A85E_state
	.quad	s_A85E_init
	.quad	s_A85E_process
	.long	4                       # 0x4
	.long	6                       # 0x6
	.quad	0
	.quad	0
	.quad	0
	.size	s_A85E_template, 56

	.type	st_BT_state,@object     # @st_BT_state
	.align	8
st_BT_state:
	.long	368                     # 0x170
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_BT_state, 64

	.type	s_BTE_template,@object  # @s_BTE_template
	.globl	s_BTE_template
	.align	8
s_BTE_template:
	.quad	st_BT_state
	.quad	0
	.quad	s_BT_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_BTE_template, 56

	.type	s_BTD_template,@object  # @s_BTD_template
	.globl	s_BTD_template
	.align	8
s_BTD_template:
	.quad	st_BT_state
	.quad	0
	.quad	s_BT_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_BTD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ASCII85Encode state"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ByteTranslateEncode/Decode state"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
