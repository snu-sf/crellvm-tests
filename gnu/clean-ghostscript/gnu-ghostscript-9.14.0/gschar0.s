	.text
	.file	"gschar0.bc"
	.globl	gs_type0_init_fstack
	.align	16, 0x90
	.type	gs_type0_init_fstack,@function
gs_type0_init_fstack:                   # @gs_type0_init_fstack
	.cfi_startproc
# BB#0:                                 # %entry
	testb	$3, (%rdi)
	je	.LBB0_1
# BB#2:                                 # %do.end
	movl	$0, 240(%rdi)
	movq	%rsi, 248(%rdi)
	movl	$0, 256(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 128(%rsi)
	movl	$0, %r9d
	jne	.LBB0_9
# BB#3:                                 # %while.body.i.preheader
	leaq	264(%rdi), %rdx
	xorl	%r9d, %r9d
	movl	$392, %r8d              # imm = 0x188
.LBB0_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	376(%rsi), %ecx
	cmpl	$8, %ecx
	ja	.LBB0_9
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB0_4 Depth=1
	btl	%ecx, %r8d
	jae	.LBB0_9
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$5, %r9d
	je	.LBB0_7
# BB#8:                                 # %cleanup.thread19.i
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	%r9
	movq	408(%rsi), %rcx
	movq	424(%rsi), %rsi
	movl	(%rcx), %ecx
	movq	(%rsi,%rcx,8), %rsi
	movq	%rsi, (%rdx)
	movl	$0, -8(%rdx)
	addq	$16, %rdx
	cmpl	$0, 128(%rsi)
	je	.LBB0_4
.LBB0_9:                                # %while.end.i
	movl	%r9d, 240(%rdi)
	retq
.LBB0_1:
	movl	$-10, %eax
	retq
.LBB0_7:
	movl	$-10, %eax
	retq
.Lfunc_end0:
	.size	gs_type0_init_fstack, .Lfunc_end0-gs_type0_init_fstack
	.cfi_endproc

	.globl	gs_type0_next_char_glyph
	.align	16, 0x90
	.type	gs_type0_next_char_glyph,@function
gs_type0_next_char_glyph:               # @gs_type0_next_char_glyph
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
	subq	$168, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 224
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
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	8(%rdi), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	232(%rdi), %eax
	leaq	(%rcx,%rax), %r13
	movl	16(%rdi), %edx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	240(%rdi), %edx
	movq	$2147483647, 144(%rsp)  # imm = 0x7FFFFFFF
	xorps	%xmm0, %xmm0
	movups	%xmm0, 360(%rdi)
	jne	.LBB1_37
# BB#1:                                 # %if.then
	movslq	%edx, %r14
	movl	%edx, 76(%rsp)          # 4-byte Spill
	leaq	248(%rdi), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	248(%rdi), %rbp
	leaq	256(%rdi), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	jmp	.LBB1_2
.LBB1_16:                               # %if.then.48
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r12, %r10
	movq	%rbp, (%rcx)
	shlq	$4, %r10
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	$0, 256(%rax,%r10)
	movl	$1, 100(%rsp)           # 4-byte Folded Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB1_2:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	%r11d, %edi
	movslq	%r11d, %rdx
	movq	%rdx, %rax
	shlq	$4, %rax
	leaq	(%rax,%rsi), %r8
	leal	1(%rdx), %eax
	movslq	%eax, %r10
	movq	%r10, %rax
	shlq	$4, %rax
	leaq	(%rax,%rcx), %rax
	xorl	%esi, %esi
.LBB1_3:                                # %for.cond
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r12
	movq	%rax, %rcx
	cmpl	$0, 128(%rbp)
	jne	.LBB1_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	$2, %eax
	cmpq	104(%rsp), %r13         # 8-byte Folded Reload
	je	.LBB1_148
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	leaq	(%rdx,%r12), %r9
	movl	376(%rbp), %esi
	movzbl	(%r13), %eax
	movq	%rax, 152(%rsp)
	cmpl	$8, %esi
	je	.LBB1_23
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	cmpl	$7, %esi
	jne	.LBB1_7
# BB#17:                                # %sw.bb.63
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	248(%rsi), %rbx
	movzbl	%al, %esi
	movzbl	380(%rbx), %eax
	cmpl	%eax, %esi
	jne	.LBB1_26
# BB#18:                                # %if.end.69
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	104(%rsp), %rbx         # 8-byte Reload
	subq	%r13, %rbx
	movl	$-15, %eax
	cmpq	$2, %rbx
	jl	.LBB1_148
# BB#19:                                # %if.end.76
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	1(%r13), %ebx
	movl	%ebx, 164(%rsp)
	leaq	2(%r13), %r15
	cmpl	%esi, %ebx
	jne	.LBB1_20
# BB#21:                                # %if.then.83
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	104(%rsp), %rsi         # 8-byte Reload
	subq	%r15, %rsi
	testq	%rsi, %rsi
	jle	.LBB1_148
# BB#22:                                # %if.end.90
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	2(%r13), %ebx
	addq	$3, %r13
	orl	$256, %ebx              # imm = 0x100
	movl	%ebx, 164(%rsp)
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_23:                               # %sw.bb.96
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	381(%rbp), %esi
	movzbl	%al, %eax
	xorl	%ebx, %ebx
	cmpl	%esi, %eax
	je	.LBB1_25
# BB#24:                                # %if.else.101
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	$1, %ebx
	movzbl	382(%rbp), %esi
	cmpl	%esi, %eax
	jne	.LBB1_27
.LBB1_25:                               # %if.end.108
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	%ebx, 164(%rsp)
	incq	%r13
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_7:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	cmpl	$3, %esi
	jne	.LBB1_26
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	248(%rsi), %rsi
	movzbl	%al, %eax
	movzbl	380(%rsi), %esi
	cmpl	%esi, %eax
	jne	.LBB1_26
# BB#9:                                 # %if.end.15
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	104(%rsp), %rsi         # 8-byte Reload
	subq	%r13, %rsi
	movl	$-15, %eax
	cmpq	$2, %rsi
	jl	.LBB1_148
# BB#10:                                # %if.end.19
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	1(%r13), %ebx
	movl	%ebx, 164(%rsp)
	addq	$2, %r13
	jmp	.LBB1_11
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%r15, %r13
	.align	16, 0x90
.LBB1_11:                               # %rdown
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	$-15, %eax
	cmpl	416(%rbp), %ebx
	jae	.LBB1_148
# BB#12:                                # %if.end.26
                                        #   in Loop: Header=BB1_3 Depth=2
	leaq	-5(%rdi,%r12), %rsi
	movl	$-10, %eax
	testl	%esi, %esi
	je	.LBB1_148
# BB#13:                                # %if.end.30
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	%ebx, %eax
	movq	408(%rbp), %rsi
	movq	424(%rbp), %rbp
	movl	(%rsi,%rax,4), %eax
	movq	(%rbp,%rax,8), %rbp
	movl	%ebx, (%r8)
	cmpq	%r14, %r9
	jge	.LBB1_149
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=2
	leaq	1(%r12), %rsi
	addq	$16, %r8
	leaq	16(%rcx), %rax
	cmpq	(%rcx), %rbp
	je	.LBB1_3
# BB#15:                                # %lor.lhs.false.if.then.48_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%r11,%r12), %r11d
	jmp	.LBB1_16
.LBB1_149:                              # %if.then.48split
                                        #   in Loop: Header=BB1_2 Depth=1
	leal	1(%rdi,%r12), %r11d
	incl	%edi
	movslq	%edi, %r10
	jmp	.LBB1_16
.LBB1_26:                               # %for.endsplit
	movslq	%edi, %r11
	leaq	(%r11,%r12), %r9
.LBB1_27:                               # %if.else.101.for.end_crit_edge
	addl	%r12d, %r11d
	movl	76(%rsp), %edx          # 4-byte Reload
	testl	%r11d, %r11d
	movq	88(%rsp), %rdi          # 8-byte Reload
	je	.LBB1_28
# BB#29:                                # %if.then.115
	movl	%r11d, 240(%rdi)
	movq	%r9, %rax
	shlq	$32, %rax
	sarq	$28, %rax
	movq	248(%rdi,%rax), %rcx
	cmpl	$0, 128(%rcx)
	movl	%r11d, %edx
	jne	.LBB1_36
# BB#30:                                # %while.body.i.preheader
	movslq	%r9d, %r10
	movl	$5, %esi
	subl	%r9d, %esi
	movslq	%r9d, %rax
	shlq	$4, %rax
	leaq	256(%rax,%rdi), %rbx
	leal	1(%r11), %eax
	cltq
	shlq	$4, %rax
	leaq	248(%rax,%rdi), %rbp
	movl	$392, %r8d              # imm = 0x188
	movl	%r11d, %edx
.LBB1_31:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	376(%rcx), %eax
	cmpl	$8, %eax
	ja	.LBB1_35
# BB#32:                                # %while.body.i
                                        #   in Loop: Header=BB1_31 Depth=1
	btl	%eax, %r8d
	jae	.LBB1_35
# BB#33:                                # %if.end.i
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$-10, %eax
	testl	%esi, %esi
	je	.LBB1_148
# BB#34:                                # %cleanup.thread19.i
                                        #   in Loop: Header=BB1_31 Depth=1
	incl	%edx
	movq	408(%rcx), %rax
	movq	424(%rcx), %rcx
	movl	(%rax), %eax
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, (%rbp)
	movl	$0, (%rbx)
	incq	%r10
	decl	%esi
	addq	$16, %rbx
	addq	$16, %rbp
	cmpl	$0, 128(%rcx)
	je	.LBB1_31
	jmp	.LBB1_36
.LBB1_28:
	movl	100(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_37
.LBB1_35:                               # %while.body.while.end_crit_edge.i
	movl	%r10d, %edx
.LBB1_36:                               # %cleanup.131.thread
	movl	%edx, 240(%rdi)
	cmpl	%r11d, %edx
	movl	$1, %eax
	movl	100(%rsp), %ecx         # 4-byte Reload
	cmovgl	%eax, %ecx
.LBB1_37:                               # %up.preheader
	cmpq	104(%rsp), %r13         # 8-byte Folded Reload
	je	.LBB1_38
# BB#41:                                # %if.end.141.lr.ph
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	leaq	360(%rdi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%edx, %r14
	leaq	248(%rdi), %r8
	leaq	256(%rdi), %r9
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movl	%edx, %r11d
	movl	%edx, 76(%rsp)          # 4-byte Spill
.LBB1_42:                               # %if.end.141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
                                        #       Child Loop BB1_44 Depth 3
                                        #       Child Loop BB1_55 Depth 3
	movzbl	(%r13), %r10d
	movq	%r10, 152(%rsp)
	movl	%r11d, %ebp
.LBB1_43:                               # %while.cond.outer
                                        #   Parent Loop BB1_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_44 Depth 3
                                        #       Child Loop BB1_55 Depth 3
	movslq	%ebp, %rdi
	leal	-1(%rdi), %eax
	cltq
	leaq	1(%rax), %r12
	shlq	$4, %rax
	leaq	(%rax,%r8), %rax
.LBB1_44:                               # %while.cond
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rdi, %rdi
	jle	.LBB1_72
# BB#45:                                # %while.body
                                        #   in Loop: Header=BB1_44 Depth=3
	movq	(%rax), %r15
	movl	376(%r15), %ebx
	leaq	-1(%rdi), %r11
	movq	%rdi, %rdx
	decq	%r12
	cmpl	$8, %ebx
	je	.LBB1_68
# BB#46:                                # %while.body
                                        #   in Loop: Header=BB1_44 Depth=3
	cmpl	$7, %ebx
	je	.LBB1_62
# BB#47:                                # %while.body
                                        #   in Loop: Header=BB1_44 Depth=3
	addq	$-16, %rax
	cmpl	$3, %ebx
	movq	%r11, %rdi
	jne	.LBB1_44
# BB#48:                                # %sw.bb.153
                                        #   in Loop: Header=BB1_43 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	248(%rax), %rax
	movzbl	380(%rax), %eax
	cmpq	%rax, %r10
	jne	.LBB1_73
# BB#49:                                # %if.end.159
                                        #   in Loop: Header=BB1_43 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	subq	%r13, %rdi
	movl	$-15, %eax
	cmpq	$2, %rdi
	jl	.LBB1_148
# BB#50:                                # %if.end.166
                                        #   in Loop: Header=BB1_43 Depth=2
	movzbl	1(%r13), %ebx
	incq	%r13
	movl	%ebx, 164(%rsp)
	cmpl	$2, %edx
	jl	.LBB1_52
# BB#51:                                # %if.end.166
                                        #   in Loop: Header=BB1_43 Depth=2
	cmpq	%r10, %rbx
	jne	.LBB1_52
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_68:                               # %sw.bb.280
                                        #   in Loop: Header=BB1_43 Depth=2
	movzbl	381(%r15), %eax
	cmpq	%rax, %r10
	jne	.LBB1_70
# BB#69:                                # %if.then.285
                                        #   in Loop: Header=BB1_43 Depth=2
	movl	$0, 164(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB1_52
	.align	16, 0x90
.LBB1_62:                               # %sw.bb.246
                                        #   in Loop: Header=BB1_43 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	248(%rax), %rax
	movzbl	380(%rax), %eax
	cmpq	%rax, %r10
	jne	.LBB1_73
# BB#63:                                # %if.end.252
                                        #   in Loop: Header=BB1_43 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	movl	$-15, %eax
	cmpq	$2, %rcx
	jl	.LBB1_148
# BB#64:                                # %if.end.259
                                        #   in Loop: Header=BB1_43 Depth=2
	leaq	1(%r13), %rdx
	movzbl	1(%r13), %ebx
	movl	%ebx, 164(%rsp)
	cmpq	%r10, %rbx
	jne	.LBB1_65
# BB#66:                                # %if.then.265
                                        #   in Loop: Header=BB1_43 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%rdx, %rcx
	cmpq	$2, %rcx
	jl	.LBB1_148
# BB#67:                                # %if.end.272
                                        #   in Loop: Header=BB1_43 Depth=2
	movzbl	2(%r13), %ebx
	addq	$2, %r13
	orl	$256, %ebx              # imm = 0x100
	movl	%ebx, 164(%rsp)
	jmp	.LBB1_52
	.align	16, 0x90
.LBB1_70:                               # %if.else.286
                                        #   in Loop: Header=BB1_43 Depth=2
	movzbl	382(%r15), %eax
	cmpq	%rax, %r10
	jne	.LBB1_73
# BB#71:                                # %if.then.291
                                        #   in Loop: Header=BB1_43 Depth=2
	movl	$1, 164(%rsp)
	movl	$1, %ebx
	jmp	.LBB1_52
.LBB1_65:                               #   in Loop: Header=BB1_43 Depth=2
	movq	%rdx, %r13
.LBB1_52:                               # %down
                                        #   in Loop: Header=BB1_43 Depth=2
	incq	%r13
	cmpq	104(%rsp), %r13         # 8-byte Folded Reload
	je	.LBB1_53
# BB#54:                                # %if.end.184
                                        #   in Loop: Header=BB1_43 Depth=2
	addq	$376, %r15              # imm = 0x178
	movzbl	(%r13), %r10d
	movq	%r10, 152(%rsp)
	movq	%r12, %rax
	shlq	$4, %rax
	leaq	(%rax,%r9), %rdx
	incl	%r11d
	movslq	%r11d, %rax
	shlq	$4, %rax
	leaq	(%rax,%r9), %rdi
	.align	16, 0x90
.LBB1_55:                               # %do.body.187
                                        #   Parent Loop BB1_42 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r11d, %ebp
	movl	$-15, %eax
	cmpl	40(%r15), %ebx
	jae	.LBB1_148
# BB#56:                                # %if.end.192
                                        #   in Loop: Header=BB1_55 Depth=3
	movl	$-10, %eax
	cmpl	$5, %r12d
	je	.LBB1_148
# BB#57:                                # %if.end.196
                                        #   in Loop: Header=BB1_55 Depth=3
	movl	%ebx, %eax
	movq	32(%r15), %rcx
	movq	48(%r15), %rsi
	movl	(%rcx,%rax,4), %eax
	movq	(%rsi,%rax,8), %rax
	movl	%ebx, (%rdx)
	cmpq	%r14, %r12
	jge	.LBB1_59
# BB#58:                                # %lor.lhs.false.211
                                        #   in Loop: Header=BB1_55 Depth=3
	cmpq	-8(%rdi), %rax
	je	.LBB1_60
.LBB1_59:                               # %if.then.219
                                        #   in Loop: Header=BB1_55 Depth=3
	movq	%rax, -8(%rdi)
	movl	$0, (%rdi)
	movl	$1, 100(%rsp)           # 4-byte Folded Spill
.LBB1_60:                               # %do.end.234
                                        #   in Loop: Header=BB1_55 Depth=3
	cmpl	$0, 128(%rax)
	jne	.LBB1_43
# BB#61:                                # %if.end.239
                                        #   in Loop: Header=BB1_55 Depth=3
	movl	$0, 164(%rsp)
	incq	%r12
	addq	$16, %rdx
	leal	1(%rbp), %r11d
	addq	$16, %rdi
	xorl	%ebx, %ebx
	cmpl	$3, 376(%rax)
	leaq	376(%rax), %r15
	je	.LBB1_55
	jmp	.LBB1_43
.LBB1_39:                               # %up.loopexit
                                        #   in Loop: Header=BB1_42 Depth=1
	cmpq	104(%rsp), %r13         # 8-byte Folded Reload
	jne	.LBB1_42
# BB#40:
	movl	$2, %eax
	jmp	.LBB1_148
.LBB1_38:
	movl	$2, %eax
.LBB1_148:                              # %cleanup.810
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_72:                               # %while.end.loopexit
	movl	%edi, %edx
.LBB1_73:                               # %while.end
	incq	%r13
	movl	$2147483648, %eax       # imm = 0x80000000
	leaq	2147483647(%rax), %r10
	subq	80(%rsp), %r10          # 8-byte Folded Reload
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	leaq	128(%rsp), %r11
	movq	88(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_74
.LBB1_53:
	movl	$2, %eax
	jmp	.LBB1_148
.LBB1_134:                              # %if.then.703
                                        #   in Loop: Header=BB1_74 Depth=1
	movq	%rax, (%rdi)
	movl	$0, 256(%rbp,%rcx)
	movl	$1, 100(%rsp)           # 4-byte Folded Spill
.LBB1_74:                               # %while.cond.300.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_75 Depth 2
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_99 Depth 3
                                        #       Child Loop BB1_92 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	movslq	%edx, %r8
.LBB1_75:                               # %while.cond.300
                                        #   Parent Loop BB1_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_99 Depth 3
                                        #       Child Loop BB1_92 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	movq	%r8, %r15
	shlq	$4, %r15
	movq	248(%rbp,%r15), %rbx
	cmpl	$0, 128(%rbx)
	jne	.LBB1_135
# BB#76:                                # %while.body.309
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	376(%rbx), %ecx
	addl	$-2, %ecx
	movl	$-10, %eax
	cmpl	$7, %ecx
	ja	.LBB1_148
# BB#77:                                # %while.body.309
                                        #   in Loop: Header=BB1_75 Depth=2
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_78:                               # %sw.bb.313
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	movl	$-15, %eax
	testq	%rcx, %rcx
	jle	.LBB1_148
# BB#79:                                # %if.end.320
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	152(%rsp), %r9d
	movl	%r9d, 164(%rsp)
	movzbl	(%r13), %eax
	incq	%r13
	jmp	.LBB1_129
.LBB1_128:                              # %sw.bb.327
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	152(%rsp), %rax
	movq	%rax, %r9
	shrq	$7, %r9
	movl	%r9d, 164(%rsp)
	andl	$127, %eax
.LBB1_129:                              # %sw.epilog.671
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rax, 152(%rsp)
	jmp	.LBB1_130
.LBB1_80:                               # %sw.bb.332
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	movl	$-15, %eax
	testq	%rcx, %rcx
	jle	.LBB1_148
# BB#81:                                # %if.end.339
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	152(%rsp), %eax
	addl	%eax, %eax
	movzbl	(%r13), %r9d
	shrl	$7, %r9d
	orl	%eax, %r9d
	movl	%r9d, 164(%rsp)
	movzbl	(%r13), %eax
	andl	$127, %eax
	movq	%rax, 152(%rsp)
	incq	%r13
	jmp	.LBB1_130
.LBB1_82:                               # %sw.bb.351
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	404(%rbx), %eax
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB1_83
# BB#84:                                # %sw.bb.351
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	400(%rbx), %r9d
	movq	384(%rbx), %rdx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_85:                               # %sw.bb.354
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movb	152(%rsp), %bl
	testl	%r9d, %r9d
	movl	%r9d, %r8d
	je	.LBB1_88
.LBB1_86:                               # %land.rhs
                                        #   Parent Loop BB1_74 Depth=1
                                        #     Parent Loop BB1_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %eax
	movzbl	%bl, %edi
	cmpl	%eax, %edi
	jb	.LBB1_89
# BB#87:                                # %while.body.363
                                        #   in Loop: Header=BB1_86 Depth=3
	subb	%al, %bl
	incq	%rdx
	decl	%r8d
	jne	.LBB1_86
.LBB1_88:                               #   in Loop: Header=BB1_75 Depth=2
	xorl	%r8d, %r8d
.LBB1_89:                               # %while.end.370
                                        #   in Loop: Header=BB1_75 Depth=2
	movzbl	%bl, %eax
	movq	%rax, 152(%rsp)
	jmp	.LBB1_111
.LBB1_112:                              # %sw.bb.524
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%r8, 32(%rsp)           # 8-byte Spill
	leal	(%r10,%r13), %eax
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movl	%eax, 124(%rsp)
	movzbl	-1(%r13), %eax
	cmpq	152(%rsp), %rax
	jne	.LBB1_113
# BB#116:                               # %if.else.592
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	80(%rsp), %r13          # 8-byte Reload
	movq	%r13, 128(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, 136(%rsp)
	movq	440(%rbx), %rdi
	movq	%rbx, %r12
	movq	%r11, %rsi
	leaq	124(%rsp), %rdx
	leaq	164(%rsp), %rcx
	leaq	152(%rsp), %r8
	leaq	144(%rsp), %r9
	callq	gs_cmap_decode_next
	jmp	.LBB1_117
.LBB1_113:                              # %if.then.535
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	$0, 116(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	subq	%r13, %rax
	decq	%r13
	cmpq	$3, %rax
	leaq	1(%rax), %r12
	movq	%r12, %rdx
	movl	$4, %eax
	cmovgq	%rax, %rdx
	movl	$4, %eax
	cmovgl	%eax, %r12d
	leaq	120(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movb	152(%rsp), %al
	movb	%al, 120(%rsp)
	movq	%rbp, 128(%rsp)
	movl	%r12d, 136(%rsp)
	movl	$106, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	movq	80(%rsp), %r13          # 8-byte Reload
	je	.LBB1_115
# BB#114:                               # %if.then.572
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	16(%rbx), %rdi
	movl	$.L.str, %esi
	movl	$386, %edx              # imm = 0x182
	callq	dmprintf_file_and_line
	movq	16(%rbx), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	debug_print_string_hex
	movq	16(%rbx), %rdi
	movl	$.L.str, %esi
	movl	$388, %edx              # imm = 0x184
	callq	dmprintf_file_and_line
	movq	16(%rbx), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	16(%rbx), %rdi
	movq	128(%rsp), %rsi
	movl	136(%rsp), %edx
	callq	debug_print_string_hex
	movq	16(%rbx), %rdi
	movl	$.L.str, %esi
	movl	$390, %edx              # imm = 0x186
	callq	dmprintf_file_and_line
	movq	16(%rbx), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB1_115:                              # %if.end.589
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	440(%rbx), %rdi
	movq	%rbx, %r12
	leaq	128(%rsp), %rsi
	leaq	116(%rsp), %rdx
	leaq	164(%rsp), %rcx
	leaq	152(%rsp), %r8
	leaq	144(%rsp), %r9
	callq	gs_cmap_decode_next
	movl	116(%rsp), %ecx
	addl	%ecx, 124(%rsp)
.LBB1_117:                              # %if.end.601
                                        #   in Loop: Header=BB1_75 Depth=2
	testl	%eax, %eax
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	js	.LBB1_148
# BB#118:                               # %if.end.605
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	%eax, 344(%rbp)
	movl	124(%rsp), %ecx
	movq	%r13, %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rbx), %r13
	movq	144(%rsp), %rsi
	testl	%eax, %eax
	je	.LBB1_119
# BB#126:                               # %if.else.665
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rsi, 152(%rsp)
	movq	$2147483647, 144(%rsp)  # imm = 0x7FFFFFFF
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	leaq	128(%rsp), %r11
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r12, %rbx
	jmp	.LBB1_127
.LBB1_119:                              # %if.then.613
                                        #   in Loop: Header=BB1_75 Depth=2
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	leaq	128(%rsp), %r11
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r12, %rbx
	je	.LBB1_120
.LBB1_127:                              # %cleanup.667.thread303
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	164(%rsp), %r9d
	jmp	.LBB1_130
.LBB1_90:                               # %sw.bb.375
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	104(%rsp), %rdi         # 8-byte Reload
	subq	%r13, %rdi
	movl	$-15, %eax
	testq	%rdi, %rdi
	jle	.LBB1_148
# BB#91:                                # %if.end.382
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	152(%rsp), %eax
	shll	$8, %eax
	movzbl	(%r13), %ebx
	orl	%eax, %ebx
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %eax
	je	.LBB1_96
.LBB1_92:                               # %land.rhs.394
                                        #   Parent Loop BB1_74 Depth=1
                                        #     Parent Loop BB1_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	%bx, %edi
	movzbl	(%rdx), %ecx
	shll	$8, %ecx
	movzbl	1(%rdx), %ebp
	orl	%ecx, %ebp
	subl	%ebp, %edi
	jb	.LBB1_93
# BB#94:                                # %while.body.407
                                        #   in Loop: Header=BB1_92 Depth=3
	addq	$2, %rdx
	decl	%eax
	movl	%edi, %ebx
	jne	.LBB1_92
# BB#95:                                #   in Loop: Header=BB1_75 Depth=2
	movl	%edi, %ebx
	jmp	.LBB1_96
.LBB1_97:                               # %sw.bb.419
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	movl	$-15, %eax
	cmpq	$2, %rcx
	jl	.LBB1_148
# BB#98:                                # %if.end.426
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	152(%rsp), %rax
	shlq	$16, %rax
	movzbl	(%r13), %ecx
	shlq	$8, %rcx
	movzbl	1(%r13), %ebx
	orq	%rax, %rbx
	orq	%rcx, %rbx
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %eax
	je	.LBB1_103
.LBB1_99:                               # %land.rhs.441
                                        #   Parent Loop BB1_74 Depth=1
                                        #     Parent Loop BB1_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %ecx
	shlq	$16, %rcx
	movzbl	1(%rdx), %edi
	shlq	$8, %rdi
	orq	%rcx, %rdi
	movzbl	2(%rdx), %ecx
	orq	%rdi, %rcx
	movq	%rbx, %rdi
	subq	%rcx, %rdi
	jb	.LBB1_100
# BB#101:                               # %while.body.455
                                        #   in Loop: Header=BB1_99 Depth=3
	addq	$3, %rdx
	decl	%eax
	movq	%rdi, %rbx
	jne	.LBB1_99
# BB#102:                               #   in Loop: Header=BB1_75 Depth=2
	movq	%rdi, %rbx
	jmp	.LBB1_103
.LBB1_104:                              # %sw.bb.463
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	movl	$-15, %eax
	cmpq	$3, %rcx
	jl	.LBB1_148
# BB#105:                               # %if.end.470
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	152(%rsp), %rax
	shlq	$24, %rax
	movzbl	(%r13), %ebx
	shlq	$16, %rbx
	movzbl	1(%r13), %ecx
	shlq	$8, %rcx
	movzbl	2(%r13), %edi
	orq	%rax, %rbx
	orq	%rcx, %rbx
	orq	%rdi, %rbx
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %eax
	je	.LBB1_110
.LBB1_106:                              # %land.rhs.488
                                        #   Parent Loop BB1_74 Depth=1
                                        #     Parent Loop BB1_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %ecx
	shlq	$24, %rcx
	movzbl	1(%rdx), %edi
	shlq	$16, %rdi
	orq	%rcx, %rdi
	movzbl	2(%rdx), %ecx
	shlq	$8, %rcx
	orq	%rdi, %rcx
	movzbl	3(%rdx), %ebp
	orq	%rcx, %rbp
	movq	%rbx, %rdi
	subq	%rbp, %rdi
	jb	.LBB1_107
# BB#108:                               # %while.body.506
                                        #   in Loop: Header=BB1_106 Depth=3
	addq	$4, %rdx
	decl	%eax
	movq	%rdi, %rbx
	jne	.LBB1_106
# BB#109:                               #   in Loop: Header=BB1_75 Depth=2
	movq	%rdi, %rbx
	jmp	.LBB1_110
.LBB1_93:                               #   in Loop: Header=BB1_75 Depth=2
	movl	%eax, %r8d
.LBB1_96:                               # %while.end.414
                                        #   in Loop: Header=BB1_75 Depth=2
	movzwl	%bx, %eax
	movq	%rax, 152(%rsp)
	incq	%r13
	jmp	.LBB1_111
.LBB1_100:                              #   in Loop: Header=BB1_75 Depth=2
	movl	%eax, %r8d
.LBB1_103:                              # %while.end.459
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 152(%rsp)
	addq	$2, %r13
	jmp	.LBB1_111
.LBB1_107:                              #   in Loop: Header=BB1_75 Depth=2
	movl	%eax, %r8d
.LBB1_110:                              # %while.end.510
                                        #   in Loop: Header=BB1_75 Depth=2
	movq	%rbx, 152(%rsp)
	addq	$3, %r13
.LBB1_111:                              # %cleanup.520
                                        #   in Loop: Header=BB1_75 Depth=2
	subl	%r8d, %r9d
	movl	%r9d, 164(%rsp)
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB1_130:                              # %sw.epilog.671
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	$-15, %eax
	cmpl	416(%rbx), %r9d
	jae	.LBB1_148
# BB#131:                               # %if.end.676
                                        #   in Loop: Header=BB1_75 Depth=2
	cmpl	$5, %r8d
	movl	$-10, %eax
	je	.LBB1_148
# BB#132:                               # %if.end.680
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	%r9d, %eax
	movq	408(%rbx), %rcx
	movq	424(%rbx), %rdx
	movl	(%rcx,%rax,4), %eax
	movq	(%rdx,%rax,8), %rax
	movq	88(%rsp), %rbp          # 8-byte Reload
	movl	%r9d, 256(%rbp,%r15)
	leaq	1(%r8), %rdx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	leaq	248(%rbp,%rcx), %rdi
	cmpq	%r14, %r8
	jge	.LBB1_134
# BB#133:                               # %lor.lhs.false.695
                                        #   in Loop: Header=BB1_75 Depth=2
	cmpq	(%rdi), %rax
	movq	%rdx, %r8
	je	.LBB1_75
	jmp	.LBB1_134
.LBB1_135:                              # %done.loopexit
	movq	%r8, %rax
	shlq	$32, %rax
	sarq	$28, %rax
	movq	248(%rbp,%rax), %r12
	movl	%r8d, %r14d
.LBB1_136:                              # %done
	movslq	%r14d, %rbx
	shlq	$4, %rbx
	movl	128(%r12), %eax
	movl	%eax, %ecx
	orl	$2, %ecx
	cmpl	$11, %ecx
	jne	.LBB1_138
# BB#137:                               # %if.then.737
	leaq	248(%rbp,%rbx), %rax
	movq	(%rax), %rcx
	movups	392(%rcx), %xmm0
	movq	40(%rsp), %rcx          # 8-byte Reload
	movups	%xmm0, (%rcx)
	movq	(%rax), %r12
	movl	128(%r12), %eax
.LBB1_138:                              # %if.end.744
	movl	$0, 164(%rsp)
	xorl	%ecx, %ecx
	cmpl	$9, %eax
	jne	.LBB1_139
# BB#140:                               # %if.then.753
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*528(%r12)
	testl	%eax, %eax
	jns	.LBB1_142
# BB#141:                               # %if.then.763
	leaq	128(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*528(%r12)
	testl	%eax, %eax
	js	.LBB1_150
.LBB1_142:                              # %if.end.771
	movl	128(%rsp), %ecx
	movl	%ecx, 164(%rsp)
	movl	100(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
	jne	.LBB1_144
# BB#143:                               # %land.lhs.true.773
	cmpl	%ecx, 256(%rbp,%rbx)
	setne	%al
	movzbl	%al, %eax
.LBB1_144:                              # %cleanup.783.thread
	movq	144(%rsp), %rsi
	jmp	.LBB1_145
.LBB1_83:
	movl	$-10, %eax
	jmp	.LBB1_148
.LBB1_139:
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
.LBB1_145:                              # %if.end.787
	movl	%ecx, 256(%rbp,%rbx)
	movq	152(%rsp), %rcx
	movq	%rcx, (%rdi)
	movq	%rsi, (%rdx)
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpq	8(%rbp), %rcx
	jne	.LBB1_147
# BB#146:                               # %if.then.798
	subl	%ecx, %r13d
	movl	%r13d, 232(%rbp)
.LBB1_147:                              # %if.end.804
	movl	%r14d, 240(%rbp)
	jmp	.LBB1_148
.LBB1_150:                              # %cleanup.783
	movl	$-10, %eax
	jmp	.LBB1_148
.LBB1_120:                              # %if.then.616
	movl	$2147483648, %eax       # imm = 0x80000000
	movq	%rax, 144(%rsp)
	movl	164(%rsp), %ecx
	movl	$-15, %eax
	cmpl	416(%rbx), %ecx
	jae	.LBB1_148
# BB#121:                               # %if.end.624
	movl	$-10, %eax
	cmpl	$5, %r8d
	je	.LBB1_148
# BB#122:                               # %if.end.628
	movq	408(%rbx), %rax
	movq	424(%rbx), %rdx
	movl	(%rax,%rcx,4), %eax
	movq	(%rdx,%rax,8), %r12
	movl	%ecx, 256(%rbp,%r15)
	leal	1(%r8), %r14d
	movslq	%r14d, %rax
	shlq	$4, %rax
	leaq	248(%rbp,%rax), %rcx
	cmpl	76(%rsp), %r8d          # 4-byte Folded Reload
	jge	.LBB1_124
# BB#123:                               # %lor.lhs.false.643
	cmpq	(%rcx), %r12
	je	.LBB1_125
.LBB1_124:                              # %if.then.651
	movq	%r12, (%rcx)
	movl	$0, 256(%rbp,%rax)
	movl	$1, 100(%rsp)           # 4-byte Folded Spill
.LBB1_125:                              # %cleanup.667
	movl	$2147483648, %esi       # imm = 0x80000000
	jmp	.LBB1_136
.Lfunc_end1:
	.size	gs_type0_next_char_glyph, .Lfunc_end1-gs_type0_next_char_glyph
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_78
	.quad	.LBB1_148
	.quad	.LBB1_128
	.quad	.LBB1_80
	.quad	.LBB1_82
	.quad	.LBB1_148
	.quad	.LBB1_148
	.quad	.LBB1_112
.LJTI1_1:
	.quad	.LBB1_85
	.quad	.LBB1_90
	.quad	.LBB1_97
	.quad	.LBB1_104

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/gschar0.c"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"[j] original str("
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	") -> modified substr("
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	")\n"
	.size	.L.str.3, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
