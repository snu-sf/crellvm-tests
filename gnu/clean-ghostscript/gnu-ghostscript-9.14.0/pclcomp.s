	.text
	.file	"pclcomp.bc"
	.globl	pcl_compress
	.align	16, 0x90
	.type	pcl_compress,@function
pcl_compress:                           # @pcl_compress
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#1:                                 # %land.lhs.true
	movslq	8(%rbx), %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	testq	%r8, %r8
	je	.LBB0_6
# BB#2:                                 # %lor.lhs.false
	testl	%r8d, %r8d
	jle	.LBB0_5
# BB#3:                                 # %land.lhs.true.4
	testq	%rcx, %rcx
	je	.LBB0_5
# BB#4:                                 # %land.lhs.true.4
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB0_7
	jmp	.LBB0_5
.LBB0_6:                                # %land.lhs.true.6
	testq	%rcx, %rcx
	je	.LBB0_5
.LBB0_7:                                # %land.lhs.true.8
	movl	8(%rcx), %r10d
	movl	%r10d, 68(%rsp)         # 4-byte Spill
	testl	%r10d, %r10d
	je	.LBB0_10
# BB#8:                                 # %lor.lhs.false.11
	jle	.LBB0_5
# BB#9:                                 # %land.lhs.true.14
	cmpq	$0, (%rcx)
	je	.LBB0_5
.LBB0_10:                               # %land.lhs.true.17
	cmpl	$9, %edi
	je	.LBB0_12
# BB#11:                                # %land.lhs.true.17
	cmpl	$3, %edi
	jne	.LBB0_16
.LBB0_12:                               # %lor.lhs.false.21
	testq	%rdx, %rdx
	je	.LBB0_5
# BB#13:                                # %land.lhs.true.23
	movl	8(%rdx), %eax
	testl	%eax, %eax
	je	.LBB0_16
# BB#14:                                # %lor.lhs.false.26
	jle	.LBB0_5
# BB#15:                                # %land.lhs.true.29
	cmpq	$0, (%rdx)
	je	.LBB0_5
.LBB0_16:                               # %cond.end
	testl	%r8d, %r8d
	je	.LBB0_17
# BB#20:                                # %if.end
	movl	%edi, %eax
	cmpl	$9, %edi
	ja	.LBB0_243
# BB#21:                                # %if.end
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_22:                               # %sw.bb
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	$-1, %ecx
	cmpl	%r8d, %r10d
	jg	.LBB0_241
# BB#23:                                # %if.then.42
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movq	(%rbx), %rsi
	movq	%r8, %rdx
	callq	memcpy
	movl	8(%rbx), %r9d
	jmp	.LBB0_238
.LBB0_17:                               # %switch.early.test
	cmpl	$3, %edi
	jne	.LBB0_18
.LBB0_75:                               # %sw.bb.60
	movq	(%rbx), %rdi
	movq	(%rdx), %rsi
	movslq	8(%rdx), %r13
	testl	%r10d, %r10d
	je	.LBB0_76
# BB#80:                                # %if.end.6.i
	movq	(%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	cmpl	%r13d, %r8d
	movl	%r13d, %r11d
	cmovlel	%r8d, %r11d
	movslq	%r11d, %r12
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
.LBB0_81:                               # %while.cond.outer.i.93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_97 Depth 2
                                        #     Child Loop BB0_111 Depth 2
                                        #     Child Loop BB0_115 Depth 2
	cmpl	%r11d, %ebp
	jge	.LBB0_82
# BB#83:                                # %while.body.lr.ph.i.94
                                        #   in Loop: Header=BB0_81 Depth=1
	movslq	%ebp, %r15
	.align	16, 0x90
.LBB0_84:                               # %while.body.i.96
                                        #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%r15), %eax
	movzbl	(%rdi,%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_85
# BB#117:                               # %if.else.i.110
                                        #   in Loop: Header=BB0_84 Depth=2
	incq	%r15
	cmpq	%r12, %r15
	jl	.LBB0_84
	jmp	.LBB0_118
.LBB0_85:                               # %if.then.17.i
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	leaq	(%rdi,%r15), %r9
	movl	%r15d, %r8d
	subl	%ebp, %r8d
	movq	%r15, %r14
	shlq	$32, %r14
	movabsq	$30064771072, %rax      # imm = 0x700000000
	addq	%rax, %r14
	sarq	$32, %r14
	movslq	%r15d, %rbx
	leal	1(%rbx), %ecx
	movslq	%ecx, %rdx
	leaq	(%rsi,%rdx), %rcx
	leaq	(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB0_86:                               # %do.body.i.102
                                        #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r10
	cmpq	%r14, %r10
	jge	.LBB0_89
# BB#87:                                # %do.body.i.102
                                        #   in Loop: Header=BB0_86 Depth=2
	leal	1(%r10), %ebx
	cmpl	%r11d, %ebx
	jge	.LBB0_89
# BB#88:                                # %land.rhs.i.104
                                        #   in Loop: Header=BB0_86 Depth=2
	movzbl	(%rcx), %ebp
	movzbl	(%rdx), %eax
	leaq	1(%r10), %rbx
	incq	%rcx
	incq	%rdx
	cmpl	%ebp, %eax
	jne	.LBB0_86
.LBB0_89:                               # %land.rhs.i.104.do.end.i.108_crit_edge
                                        #   in Loop: Header=BB0_81 Depth=1
	leal	1(%r10), %ebp
	movl	%ebp, %ecx
	subl	%r15d, %ecx
	leal	-1(%rcx), %eax
	cmpl	$8, %eax
	jae	.LBB0_242
# BB#90:                                # %cond.end.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	48(%rsp), %eax          # 4-byte Reload
	subl	%eax, %edx
	testl	%edx, %edx
	jle	.LBB0_91
# BB#92:                                # %if.end.i.i.109
                                        #   in Loop: Header=BB0_81 Depth=1
	cltq
	movq	40(%rsp), %rbx          # 8-byte Reload
	leaq	(%rax,%rbx), %r14
	movl	%ecx, %eax
	shll	$5, %eax
	addl	$224, %eax
	movb	%al, (%r14)
	cmpl	$30, %r8d
	jg	.LBB0_94
# BB#93:                                # %if.then.5.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	addl	%r8d, %eax
	movb	%al, (%r14)
	incq	%r14
	movl	$1, %r8d
	jmp	.LBB0_99
.LBB0_94:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%ebp, %r13d
	orl	$31, %eax
	movb	%al, (%r14)
	leal	-31(%r8), %eax
	movslq	%eax, %rbx
	imulq	$-2139062143, %rbx, %rbx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rbx
	leal	-31(%rbx,%r8), %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	shrl	$31, %ebp
	leal	2(%rbx,%rbp), %r8d
	cmpl	%edx, %r8d
	jg	.LBB0_95
# BB#96:                                # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	leaq	1(%r14), %rbx
	cmpl	$255, %eax
	movl	%r13d, %ebp
	jl	.LBB0_98
	.align	16, 0x90
.LBB0_97:                               # %while.body.i.i
                                        #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rbx)
	addl	$-255, %eax
	cmpl	$254, %eax
	movq	%rbx, %r14
	leaq	1(%rbx), %rbx
	jg	.LBB0_97
.LBB0_98:                               # %while.end.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	addq	$2, %r14
	movb	%al, (%rbx)
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB0_99:                               # %if.end.25.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	addl	%ecx, %r8d
	cmpl	%edx, %r8d
	movl	$-2, %ebx
	jg	.LBB0_100
# BB#101:                               # %while.cond.31.preheader.i.i
                                        #   in Loop: Header=BB0_81 Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_116
# BB#102:                               # %while.body.34.i.i.preheader
                                        #   in Loop: Header=BB0_81 Depth=1
	leal	-1(%r15), %eax
	subl	%ebp, %eax
	cmpl	$-3, %eax
	cmovlel	%ebx, %eax
	leal	2(%r10,%rax), %edx
	subl	%r15d, %edx
	incq	%rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rdx
	je	.LBB0_103
# BB#104:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_81 Depth=1
	leal	-1(%r15), %eax
	subl	%ebp, %eax
	cmpl	$-3, %eax
	cmovlel	%ebx, %eax
	leal	2(%r10,%rax), %eax
	subl	%r15d, %eax
	leaq	(%r9,%rax), %rbx
	cmpq	%rbx, %r14
	ja	.LBB0_106
# BB#105:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_81 Depth=1
	leaq	(%rax,%r14), %rax
	cmpq	%rax, %r9
	ja	.LBB0_106
.LBB0_103:                              #   in Loop: Header=BB0_81 Depth=1
	xorl	%edx, %edx
	jmp	.LBB0_113
.LBB0_106:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_81 Depth=1
	leal	-1(%r15), %eax
	subl	%ebp, %eax
	cmpl	$-3, %eax
	movl	$-2, %ebx
	cmovlel	%ebx, %eax
	leal	2(%r10,%rax), %ebx
	subl	%r15d, %ebx
	incq	%rbx
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rax
	shrq	$5, %rax
	btq	$5, %rbx
	movl	$0, %ebx
	jb	.LBB0_108
# BB#107:                               # %vector.body.prol
                                        #   in Loop: Header=BB0_81 Depth=1
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movl	$32, %ebx
.LBB0_108:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	subl	%edx, %ecx
	leaq	(%r9,%rdx), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	(%r14,%rdx), %rbx
	testq	%rax, %rax
	je	.LBB0_109
# BB#110:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	%rbx, (%rsp)            # 8-byte Spill
	leal	-1(%r15), %eax
	subl	%ebp, %eax
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	cmpl	$-3, %eax
	movl	$-2, %ebx
	cmovlel	%ebx, %eax
	leal	2(%r10,%rax), %eax
	subl	%r15d, %eax
	incq	%rax
	movabsq	$8589934560, %rbp       # imm = 0x1FFFFFFE0
	andq	%rbp, %rax
	movq	16(%rsp), %rbx          # 8-byte Reload
	subq	%rbx, %rax
	leaq	48(%r14,%rbx), %rbp
	leaq	48(%r9,%rbx), %rbx
	.align	16, 0x90
.LBB0_111:                              # %vector.body
                                        #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbx), %xmm0
	movups	-32(%rbx), %xmm1
	movups	%xmm0, -48(%rbp)
	movups	%xmm1, -32(%rbp)
	movups	-16(%rbx), %xmm0
	movups	(%rbx), %xmm1
	movups	%xmm0, -16(%rbp)
	movups	%xmm1, (%rbp)
	addq	$64, %rbp
	addq	$64, %rbx
	addq	$-64, %rax
	jne	.LBB0_111
# BB#112:                               #   in Loop: Header=BB0_81 Depth=1
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	(%rsp), %r14            # 8-byte Reload
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB0_113
.LBB0_109:                              #   in Loop: Header=BB0_81 Depth=1
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	%rbx, %r14
.LBB0_113:                              # %middle.block
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpq	%rdx, %rax
	je	.LBB0_116
# BB#114:                               # %while.body.34.i.i.preheader1017
                                        #   in Loop: Header=BB0_81 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB0_115:                              # %while.body.34.i.i
                                        #   Parent Loop BB0_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r9), %al
	incq	%r9
	movb	%al, (%r14)
	incq	%r14
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB0_115
.LBB0_116:                              # %write_delta_replacement.exit.i
                                        #   in Loop: Header=BB0_81 Depth=1
	testl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	movl	48(%rsp), %r9d          # 4-byte Reload
	addl	%eax, %r9d
	testl	%r8d, %r8d
	movl	68(%rsp), %r10d         # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	$-1, %ecx
	jns	.LBB0_81
	jmp	.LBB0_241
.LBB0_18:                               # %switch.early.test
	cmpl	$9, %edi
	jne	.LBB0_19
.LBB0_195:                              # %sw.bb.68
	movslq	8(%rdx), %rax
	cmpl	%eax, %r8d
	movl	%eax, %r13d
	cmovlel	%r8d, %r13d
	testl	%r10d, %r10d
	movq	(%rbx), %rbx
	movq	(%rdx), %rbp
	je	.LBB0_197
# BB#196:                               # %while.cond.preheader.i
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	%r13d, %r12
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
.LBB0_208:                              # %while.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_202 Depth 2
                                        #     Child Loop BB0_205 Depth 2
	cmpl	%r13d, %r14d
	jge	.LBB0_209
# BB#201:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB0_208 Depth=1
	movslq	%r14d, %r15
	.align	16, 0x90
.LBB0_202:                              # %while.body.i.55
                                        #   Parent Loop BB0_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp,%r15), %eax
	movzbl	(%rbx,%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_204
# BB#203:                               # %if.then.16.i
                                        #   in Loop: Header=BB0_202 Depth=2
	incq	%r15
	cmpq	%r12, %r15
	jl	.LBB0_202
	jmp	.LBB0_210
.LBB0_204:                              # %if.else.i
                                        #   in Loop: Header=BB0_208 Depth=1
	leaq	(%rbx,%r15), %rcx
	movl	%r15d, %edx
	subl	%r14d, %edx
	leal	1(%r15), %eax
	cltq
	.align	16, 0x90
.LBB0_205:                              # %do.body.i.57
                                        #   Parent Loop BB0_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r14
	cmpl	%r13d, %r14d
	jge	.LBB0_207
# BB#206:                               # %land.rhs.i
                                        #   in Loop: Header=BB0_205 Depth=2
	movzbl	(%rbp,%r14), %esi
	movzbl	(%rbx,%r14), %edi
	leaq	1(%r14), %rax
	cmpl	%esi, %edi
	jne	.LBB0_205
.LBB0_207:                              # %do.end.i.58
                                        #   in Loop: Header=BB0_208 Depth=1
	movslq	%r11d, %r11
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r11), %rdi
	movl	%r10d, %esi
	subl	%r11d, %esi
	movl	%r14d, %r8d
	subl	%r15d, %r8d
	movl	%r10d, 68(%rsp)         # 4-byte Spill
	movq	%r11, %r15
	callq	write_crdr_replacement
	movq	%r15, %r11
	movl	68(%rsp), %r10d         # 4-byte Reload
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$0, %edx
	cmovsl	%edx, %eax
	addl	%eax, %r11d
	testl	%ecx, %ecx
	movq	72(%rsp), %r8           # 8-byte Reload
	jns	.LBB0_208
	jmp	.LBB0_241
.LBB0_24:                               # %sw.bb.48
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	$-1, %ecx
	cmpl	$2, %r10d
	jl	.LBB0_241
# BB#25:                                # %while.body.i.preheader
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rbx), %rdx
	movl	%r10d, %r9d
.LBB0_26:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	movb	(%rdx), %bl
	movb	%bl, 1(%rax)
	movl	$-1, %ebp
	movq	%rdx, %rdi
	.align	16, 0x90
.LBB0_27:                               # %do.body.i
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%rbp), %esi
	cmpl	$1, %r8d
	jle	.LBB0_28
# BB#29:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_27 Depth=2
	leaq	1(%rdi), %rdx
	decl	%r8d
	addl	$2, %ebp
	cmpl	$255, %ebp
	jg	.LBB0_31
# BB#30:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_27 Depth=2
	movzbl	%bl, %ebp
	movzbl	1(%rdi), %edi
	cmpl	%ebp, %edi
	movl	%esi, %ebp
	movq	%rdx, %rdi
	je	.LBB0_27
.LBB0_31:                               # %do.end.i
                                        #   in Loop: Header=BB0_26 Depth=1
	movb	%sil, (%rax)
	addq	$2, %rax
	addl	$-2, %r9d
	movl	$-1, %ecx
	cmpl	$1, %r9d
	jg	.LBB0_26
	jmp	.LBB0_241
.LBB0_32:                               # %sw.bb.54
	movq	(%rbx), %rbp
	movq	(%rcx), %r15
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	-1(%rbp,%r8), %r9
	cmpq	%rbp, %r9
	je	.LBB0_33
# BB#37:                                # %if.end.4.i.preheader
	leaq	(%r8,%rbp), %r8
	movl	%r10d, %r11d
	jmp	.LBB0_38
.LBB0_76:                               # %if.then.i.81
	cmpl	%r13d, %r8d
	jne	.LBB0_77
# BB#78:                                # %land.lhs.true.i.83
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	jne	.LBB0_79
	jmp	.LBB0_239
.LBB0_19:                               # %if.then
	movl	$0, 8(%rcx)
	jmp	.LBB0_240
.LBB0_197:                              # %if.then.i
	cmpl	%eax, %r8d
	jne	.LBB0_198
# BB#199:                               # %land.lhs.true.i.54
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	je	.LBB0_239
# BB#200:                               # %lor.lhs.false.i
	movq	%rbx, %rdi
	movq	%rbp, %rsi
.LBB0_79:                               # %lor.lhs.false.i.87
	movq	%r8, %rdx
	callq	memcmp
	xorl	%r9d, %r9d
	testl	%eax, %eax
	movl	$-1, %ecx
	jne	.LBB0_241
	jmp	.LBB0_239
.LBB0_77:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_28:                               # %compress_runlength.exit.thread130
	movb	%sil, (%rax)
	addl	$2, %r10d
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	jmp	.LBB0_238
.LBB0_33:
	movl	%r10d, %r11d
.LBB0_34:                               # %if.then.i.64
	movl	$-1, %ecx
	cmpl	$2, %r11d
	jl	.LBB0_241
# BB#35:                                # %if.end.i.67
	movb	$0, (%r15)
	movb	(%rbp), %al
	movb	%al, 1(%r15)
	addl	$-2, %r11d
	jmp	.LBB0_36
.LBB0_198:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_243:                              # %sw.default
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$738, %edx              # imm = 0x2E2
	movl	$.L__PRETTY_FUNCTION__.pcl_compress, %ecx
	callq	__assert_fail
.LBB0_82:
	movl	%ebp, %r15d
.LBB0_118:                              # %while.end.i.113
	cmpl	%r8d, %r11d
	jge	.LBB0_157
# BB#119:                               # %while.cond.49.preheader.i
	movl	$-2, %r14d
.LBB0_120:                              # %while.cond.49.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_124 Depth 2
                                        #     Child Loop BB0_135 Depth 2
                                        #     Child Loop BB0_150 Depth 2
                                        #     Child Loop BB0_154 Depth 2
	cmpl	%r8d, %r15d
	jge	.LBB0_193
# BB#121:                               # %while.body.52.lr.ph.i
                                        #   in Loop: Header=BB0_120 Depth=1
	movl	%ebp, %eax
	movslq	%r15d, %rbx
	.align	16, 0x90
.LBB0_122:                              # %while.body.52.i
                                        #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rdi,%rbx)
	jne	.LBB0_123
# BB#156:                               # %if.else.97.i
                                        #   in Loop: Header=BB0_122 Depth=2
	incq	%rbx
	cmpq	%r8, %rbx
	jl	.LBB0_122
	jmp	.LBB0_193
.LBB0_123:                              # %if.then.58.i
                                        #   in Loop: Header=BB0_120 Depth=1
	movl	%r9d, %ebp
	movl	%r10d, %r9d
	leaq	(%rdi,%rbx), %r13
	movl	%ebx, %r10d
	subl	%eax, %r10d
	movq	%rbx, %rax
	shlq	$32, %rax
	movabsq	$30064771072, %rcx      # imm = 0x700000000
	addq	%rcx, %rax
	sarq	$32, %rax
	movslq	%ebx, %rsi
	leal	1(%rsi), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rdi), %rcx
	.align	16, 0x90
.LBB0_124:                              # %do.body.61.i
                                        #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	cmpq	%rax, %rdx
	jge	.LBB0_127
# BB#125:                               # %do.body.61.i
                                        #   in Loop: Header=BB0_124 Depth=2
	leal	1(%rdx), %esi
	cmpl	%r8d, %esi
	jge	.LBB0_127
# BB#126:                               # %land.rhs.70.i
                                        #   in Loop: Header=BB0_124 Depth=2
	leaq	1(%rdx), %rsi
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB0_124
.LBB0_127:                              # %land.rhs.70.i.do.end.77.i_crit_edge
                                        #   in Loop: Header=BB0_120 Depth=1
	leal	1(%rdx), %r15d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	leal	-1(%rcx), %eax
	cmpl	$8, %eax
	jae	.LBB0_242
# BB#128:                               # %cond.end.i.116.i
                                        #   in Loop: Header=BB0_120 Depth=1
	movl	%r9d, %r11d
	subl	%ebp, %r11d
	testl	%r11d, %r11d
	jle	.LBB0_129
# BB#130:                               # %if.end.i.121.i
                                        #   in Loop: Header=BB0_120 Depth=1
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movslq	%ebp, %rax
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rax,%rsi), %r8
	movl	%ecx, %eax
	shll	$5, %eax
	addl	$224, %eax
	movb	%al, (%r8)
	cmpl	$30, %r10d
	jg	.LBB0_132
# BB#131:                               # %if.then.5.i.125.i
                                        #   in Loop: Header=BB0_120 Depth=1
	addl	%r10d, %eax
	movb	%al, (%r8)
	incq	%r8
	movl	$1, %r10d
	jmp	.LBB0_137
.LBB0_132:                              # %if.else.i.132.i
                                        #   in Loop: Header=BB0_120 Depth=1
	orl	$31, %eax
	movb	%al, (%r8)
	leal	-31(%r10), %esi
	movslq	%esi, %rax
	imulq	$-2139062143, %rax, %rax # imm = 0xFFFFFFFF80808081
	shrq	$32, %rax
	leal	-31(%rax,%r10), %eax
	movl	%eax, %ebp
	sarl	$7, %ebp
	shrl	$31, %eax
	leal	2(%rbp,%rax), %r10d
	cmpl	%r11d, %r10d
	jg	.LBB0_133
# BB#134:                               # %while.cond.preheader.i.135.i
                                        #   in Loop: Header=BB0_120 Depth=1
	leaq	1(%r8), %rax
	cmpl	$255, %esi
	jl	.LBB0_136
	.align	16, 0x90
.LBB0_135:                              # %while.body.i.141.i
                                        #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rax)
	addl	$-255, %esi
	cmpl	$254, %esi
	movq	%rax, %r8
	leaq	1(%rax), %rax
	jg	.LBB0_135
.LBB0_136:                              # %while.end.i.147.i
                                        #   in Loop: Header=BB0_120 Depth=1
	addq	$2, %r8
	movb	%sil, (%rax)
.LBB0_137:                              # %if.end.25.i.152.i
                                        #   in Loop: Header=BB0_120 Depth=1
	addl	%ecx, %r10d
	cmpl	%r11d, %r10d
	jg	.LBB0_138
# BB#139:                               # %while.cond.31.preheader.i.154.i
                                        #   in Loop: Header=BB0_120 Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_155
# BB#140:                               # %while.body.34.i.162.i.preheader
                                        #   in Loop: Header=BB0_120 Depth=1
	leal	-1(%rbx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	cmovlel	%r14d, %eax
	leal	2(%rdx,%rax), %r11d
	subl	%ebx, %r11d
	incq	%r11
	movl	$-2, %esi
	movq	%r11, %r14
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %r14
	je	.LBB0_141
# BB#142:                               # %vector.memcheck860
                                        #   in Loop: Header=BB0_120 Depth=1
	leal	-1(%rbx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	cmovlel	%esi, %eax
	leal	2(%rdx,%rax), %eax
	subl	%ebx, %eax
	leaq	(%r13,%rax), %rsi
	cmpq	%rsi, %r8
	ja	.LBB0_145
# BB#143:                               # %vector.memcheck860
                                        #   in Loop: Header=BB0_120 Depth=1
	leaq	(%rax,%r8), %rax
	cmpq	%rax, %r13
	ja	.LBB0_145
# BB#144:                               #   in Loop: Header=BB0_120 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB0_152
.LBB0_141:                              #   in Loop: Header=BB0_120 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB0_152
.LBB0_145:                              # %vector.body842.preheader
                                        #   in Loop: Header=BB0_120 Depth=1
	leal	-1(%rbx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	movl	$-2, %esi
	cmovlel	%esi, %eax
	leal	2(%rdx,%rax), %esi
	subl	%ebx, %esi
	incq	%rsi
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rsi
	addq	$-32, %rsi
	movq	%rsi, %rax
	shrq	$5, %rax
	btq	$5, %rsi
	movl	$0, %esi
	jb	.LBB0_147
# BB#146:                               # %vector.body842.prol
                                        #   in Loop: Header=BB0_120 Depth=1
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm0, (%r8)
	movups	%xmm1, 16(%r8)
	movl	$32, %esi
.LBB0_147:                              # %vector.body842.preheader.split
                                        #   in Loop: Header=BB0_120 Depth=1
	subl	%r14d, %ecx
	leaq	(%r13,%r14), %r12
	leaq	(%r8,%r14), %rbp
	testq	%rax, %rax
	je	.LBB0_148
# BB#149:                               # %vector.body842.preheader.split.split
                                        #   in Loop: Header=BB0_120 Depth=1
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	movl	$-2, %ebp
	cmovlel	%ebp, %eax
	leal	2(%rdx,%rax), %edx
	subl	%ebx, %edx
	incq	%rdx
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rdx
	subq	%rsi, %rdx
	leaq	48(%r8,%rsi), %rax
	leaq	48(%r13,%rsi), %rsi
	.align	16, 0x90
.LBB0_150:                              # %vector.body842
                                        #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rax)
	movups	%xmm1, -32(%rax)
	movups	-16(%rsi), %xmm0
	movups	(%rsi), %xmm1
	movups	%xmm0, -16(%rax)
	movups	%xmm1, (%rax)
	addq	$64, %rax
	addq	$64, %rsi
	addq	$-64, %rdx
	jne	.LBB0_150
# BB#151:                               #   in Loop: Header=BB0_120 Depth=1
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	jmp	.LBB0_152
.LBB0_148:                              #   in Loop: Header=BB0_120 Depth=1
	movq	%r12, %r13
	movq	%rbp, %r8
.LBB0_152:                              # %middle.block843
                                        #   in Loop: Header=BB0_120 Depth=1
	cmpq	%r14, %r11
	movl	$-2, %r14d
	je	.LBB0_155
# BB#153:                               # %while.body.34.i.162.i.preheader1013
                                        #   in Loop: Header=BB0_120 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB0_154:                              # %while.body.34.i.162.i
                                        #   Parent Loop BB0_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r13), %al
	incq	%r13
	movb	%al, (%r8)
	incq	%r8
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB0_154
.LBB0_155:                              # %write_delta_replacement.exit164.i
                                        #   in Loop: Header=BB0_120 Depth=1
	testl	%r10d, %r10d
	movl	%r10d, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	movl	48(%rsp), %r12d         # 4-byte Reload
	addl	%eax, %r12d
	testl	%r10d, %r10d
	movl	%r15d, %ebp
	movl	%r9d, %r10d
	movl	%r12d, %r9d
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	$-1, %ecx
	jns	.LBB0_120
	jmp	.LBB0_241
.LBB0_157:                              # %if.else.101.i
	movq	$0, 80(%rsp)
	movl	$-2, %r14d
.LBB0_158:                              # %while.cond.102.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_162 Depth 2
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_184 Depth 2
                                        #     Child Loop BB0_189 Depth 2
	movl	%ebp, %eax
	cmpl	%r13d, %r15d
	jge	.LBB0_193
# BB#159:                               # %while.body.105.lr.ph.i
                                        #   in Loop: Header=BB0_158 Depth=1
	movslq	%r15d, %rdx
	.align	16, 0x90
.LBB0_160:                              # %while.body.105.i
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB0_161
# BB#192:                               # %if.else.148.i
                                        #   in Loop: Header=BB0_160 Depth=2
	incq	%rdx
	cmpq	%r13, %rdx
	jl	.LBB0_160
	jmp	.LBB0_193
.LBB0_161:                              # %if.then.111.i
                                        #   in Loop: Header=BB0_158 Depth=1
	movl	%edx, %ebp
	subl	%eax, %ebp
	movq	%rdx, %rax
	shlq	$32, %rax
	movabsq	$30064771072, %rcx      # imm = 0x700000000
	addq	%rcx, %rax
	sarq	$32, %rax
	movslq	%edx, %rdi
	leal	1(%rdi), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB0_162:                              # %do.body.114.i
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rbx
	cmpq	%rax, %rbx
	jge	.LBB0_165
# BB#163:                               # %do.body.114.i
                                        #   in Loop: Header=BB0_162 Depth=2
	leal	1(%rbx), %edi
	cmpl	%r13d, %edi
	jge	.LBB0_165
# BB#164:                               # %land.rhs.123.i
                                        #   in Loop: Header=BB0_162 Depth=2
	leaq	1(%rbx), %rdi
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB0_162
.LBB0_165:                              # %land.rhs.123.i.do.end.130.i_crit_edge
                                        #   in Loop: Header=BB0_158 Depth=1
	leal	1(%rbx), %r15d
	movl	%r15d, %ecx
	subl	%edx, %ecx
	leal	-1(%rcx), %eax
	cmpl	$8, %eax
	jae	.LBB0_242
# BB#166:                               # %cond.end.i.168.i
                                        #   in Loop: Header=BB0_158 Depth=1
	movl	%r10d, %r8d
	subl	%r9d, %r8d
	testl	%r8d, %r8d
	jle	.LBB0_191
# BB#167:                               # %if.end.i.173.i
                                        #   in Loop: Header=BB0_158 Depth=1
	movslq	%r9d, %rax
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	movl	%ecx, %eax
	shll	$5, %eax
	addl	$224, %eax
	movb	%al, (%r11)
	cmpl	$30, %ebp
	jg	.LBB0_169
# BB#168:                               # %if.then.5.i.177.i
                                        #   in Loop: Header=BB0_158 Depth=1
	addl	%ebp, %eax
	movb	%al, (%r11)
	incq	%r11
	movl	$1, %r12d
	jmp	.LBB0_173
.LBB0_169:                              # %if.else.i.184.i
                                        #   in Loop: Header=BB0_158 Depth=1
	orl	$31, %eax
	movb	%al, (%r11)
	leal	-31(%rbp), %eax
	movslq	%eax, %rdi
	imulq	$-2139062143, %rdi, %rdi # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdi
	leal	-31(%rdi,%rbp), %edi
	movl	%edi, %ebp
	sarl	$7, %ebp
	shrl	$31, %edi
	leal	2(%rbp,%rdi), %r12d
	cmpl	%r8d, %r12d
	jg	.LBB0_191
# BB#170:                               # %while.cond.preheader.i.187.i
                                        #   in Loop: Header=BB0_158 Depth=1
	leaq	1(%r11), %rdi
	cmpl	$255, %eax
	jl	.LBB0_172
	.align	16, 0x90
.LBB0_171:                              # %while.body.i.193.i
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rdi)
	addl	$-255, %eax
	cmpl	$254, %eax
	movq	%rdi, %r11
	leaq	1(%rdi), %rdi
	jg	.LBB0_171
.LBB0_172:                              # %while.end.i.199.i
                                        #   in Loop: Header=BB0_158 Depth=1
	addq	$2, %r11
	movb	%al, (%rdi)
.LBB0_173:                              # %if.end.25.i.204.i
                                        #   in Loop: Header=BB0_158 Depth=1
	addl	%ecx, %r12d
	cmpl	%r8d, %r12d
	jg	.LBB0_191
# BB#174:                               # %while.cond.31.preheader.i.206.i
                                        #   in Loop: Header=BB0_158 Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_190
# BB#175:                               # %while.body.34.i.214.i.preheader
                                        #   in Loop: Header=BB0_158 Depth=1
	leal	-1(%rdx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	cmovlel	%r14d, %eax
	movl	$-2, %edi
	leal	2(%rbx,%rax), %r14d
	subl	%edx, %r14d
	incq	%r14
	movq	%r14, %rbp
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rbp
	je	.LBB0_176
# BB#177:                               # %vector.memcheck687
                                        #   in Loop: Header=BB0_158 Depth=1
	leal	-1(%rdx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	cmovlel	%edi, %eax
	leal	2(%rbx,%rax), %eax
	subl	%edx, %eax
	leaq	80(%rsp,%rax), %rdi
	cmpq	%rdi, %r11
	ja	.LBB0_179
# BB#178:                               # %vector.memcheck687
                                        #   in Loop: Header=BB0_158 Depth=1
	leaq	(%rax,%r11), %rax
	leaq	80(%rsp), %rdi
	cmpq	%rax, %rdi
	ja	.LBB0_179
.LBB0_176:                              #   in Loop: Header=BB0_158 Depth=1
	leaq	80(%rsp), %rax
	xorl	%ebp, %ebp
	jmp	.LBB0_187
.LBB0_179:                              # %vector.body670.preheader
                                        #   in Loop: Header=BB0_158 Depth=1
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	leal	-1(%rdx), %eax
	subl	%r15d, %eax
	cmpl	$-3, %eax
	movl	$-2, %edi
	cmovlel	%edi, %eax
	leal	2(%rbx,%rax), %eax
	subl	%edx, %eax
	incq	%rax
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rax
	addq	$-32, %rax
	movq	%rax, %rdi
	shrq	$5, %rdi
	btq	$5, %rax
	movl	$0, %r9d
	jb	.LBB0_181
# BB#180:                               # %vector.body670.prol
                                        #   in Loop: Header=BB0_158 Depth=1
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movups	%xmm0, (%r11)
	movups	%xmm1, 16(%r11)
	movl	$32, %r9d
.LBB0_181:                              # %vector.body670.preheader.split
                                        #   in Loop: Header=BB0_158 Depth=1
	subl	%ebp, %ecx
	leaq	80(%rsp,%rbp), %rax
	leaq	(%r11,%rbp), %r8
	testq	%rdi, %rdi
	je	.LBB0_182
# BB#183:                               # %vector.body670.preheader.split.split
                                        #   in Loop: Header=BB0_158 Depth=1
	movq	%r8, 72(%rsp)           # 8-byte Spill
	leal	-1(%rdx), %edi
	subl	%r15d, %edi
	cmpl	$-3, %edi
	movl	$-2, %r8d
	cmovlel	%r8d, %edi
	leal	2(%rbx,%rdi), %ebx
	subl	%edx, %ebx
	incq	%rbx
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	andq	%rdx, %rbx
	subq	%r9, %rbx
	leaq	48(%r11,%r9), %rdx
	leaq	128(%rsp), %rdi
	leaq	(%r9,%rdi), %rdi
	.align	16, 0x90
.LBB0_184:                              # %vector.body670
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rdi), %xmm0
	movaps	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movaps	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rdx
	addq	$64, %rdi
	addq	$-64, %rbx
	jne	.LBB0_184
# BB#185:                               #   in Loop: Header=BB0_158 Depth=1
	movq	72(%rsp), %r11          # 8-byte Reload
	jmp	.LBB0_186
.LBB0_182:                              #   in Loop: Header=BB0_158 Depth=1
	movq	%r8, %r11
.LBB0_186:                              # %middle.block671
                                        #   in Loop: Header=BB0_158 Depth=1
	movl	48(%rsp), %r9d          # 4-byte Reload
.LBB0_187:                              # %middle.block671
                                        #   in Loop: Header=BB0_158 Depth=1
	cmpq	%rbp, %r14
	movl	$-2, %r14d
	je	.LBB0_190
# BB#188:                               # %while.body.34.i.214.i.preheader1015
                                        #   in Loop: Header=BB0_158 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB0_189:                              # %while.body.34.i.214.i
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax), %dl
	incq	%rax
	movb	%dl, (%r11)
	incq	%r11
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB0_189
.LBB0_190:                              # %write_delta_replacement.exit216.i
                                        #   in Loop: Header=BB0_158 Depth=1
	testl	%r12d, %r12d
	movl	%r12d, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	addl	%eax, %r9d
	testl	%r12d, %r12d
	movl	%r15d, %ebp
	jns	.LBB0_158
.LBB0_191:                              # %cleanup.152.thread.i
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_193:                              # %if.end.155.i
	cmpl	%r10d, %r9d
	jle	.LBB0_238
# BB#194:                               # %cond.false.159.i
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$407, %edx              # imm = 0x197
	movl	$.L__PRETTY_FUNCTION__.compress_delta, %ecx
	callq	__assert_fail
.LBB0_67:                               # %if.end.91.i
                                        #   in Loop: Header=BB0_38 Depth=1
	movb	%dil, (%r12)
	addl	$-2, %r14d
	movl	$-3, %eax
	subl	%r10d, %eax
	cltq
	movb	%bl, 2(%r15,%rax)
	addq	$2, %r15
	movl	%r14d, %r11d
	movl	%r13d, %r10d
	jmp	.LBB0_55
.LBB0_66:                               # %if.end.84.i
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	$-2, %eax
	subl	%r10d, %eax
	cltq
	movb	%r10b, (%r12,%rax)
	movl	$2, %esi
	movq	%r12, %r15
	movq	%rbp, %rdx
	movl	%r13d, %r10d
	jmp	.LBB0_46
.LBB0_71:                               # %if.then.118.i
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	$-2, %eax
	subl	%r10d, %eax
	cltq
	movb	%r10b, (%r12,%rax)
	movl	$3, %esi
	movq	%r12, %r15
	movl	%r13d, %r10d
	jmp	.LBB0_46
.LBB0_38:                               # %if.end.4.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	movzbl	(%rbp), %edi
	movzbl	1(%rbp), %eax
	movq	%rbp, %rdx
	incq	%rdx
	cmpl	%edi, %eax
	jne	.LBB0_39
# BB#45:                                # %if.end.15.i
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	$2, %esi
	movl	$-1, %ecx
	cmpl	$2, %r11d
	jl	.LBB0_241
.LBB0_46:                               # %do.body.preheader.i
                                        #   in Loop: Header=BB0_38 Depth=1
	leaq	1(%rdx), %rcx
	movq	%rdx, %rbp
	.align	16, 0x90
.LBB0_47:                               # %do.body.i.70
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rcx, %r8
	je	.LBB0_48
# BB#49:                                # %if.end.23.i
                                        #   in Loop: Header=BB0_47 Depth=2
	movzbl	%dil, %eax
	movzbl	(%rcx), %edx
	cmpl	%eax, %edx
	jne	.LBB0_50
# BB#51:                                # %if.end.30.i
                                        #   in Loop: Header=BB0_47 Depth=2
	incq	%rbp
	incl	%esi
	incq	%rcx
	cmpl	$128, %esi
	jl	.LBB0_47
	jmp	.LBB0_52
.LBB0_39:                               # %if.then.9.i
                                        #   in Loop: Header=BB0_38 Depth=1
	cmpl	$3, %r11d
	jl	.LBB0_40
# BB#41:                                # %if.end.13.i
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	%r10d, %r13d
	leal	-1(%r11), %r14d
	movb	%dil, 1(%r15)
	leaq	2(%r15), %r12
	cmpq	%r9, %rdx
	je	.LBB0_42
# BB#57:                                # %if.end.62.lr.ph.i
                                        #   in Loop: Header=BB0_38 Depth=1
	incq	%r15
	addl	$-2, %r11d
	xorl	%r10d, %r10d
	movl	$1, %ebx
	.align	16, 0x90
.LBB0_58:                               # %if.end.62.i
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, %r14d
	jl	.LBB0_59
# BB#60:                                # %if.end.66.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movb	(%rdx), %dil
	movb	1(%rdx), %al
	leaq	1(%rdx), %rbp
	cmpl	$126, %ebx
	jg	.LBB0_64
# BB#61:                                # %if.end.66.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movzbl	%dil, %esi
	movzbl	%al, %ecx
	cmpl	%esi, %ecx
	je	.LBB0_64
# BB#62:                                #   in Loop: Header=BB0_58 Depth=2
	movq	%rbp, %rdx
	movl	%r11d, %r14d
	movl	%ebx, %r10d
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_64:                               # %do.end.75.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movzbl	%dil, %esi
	movzbl	%al, %eax
	cmpl	%esi, %eax
	jne	.LBB0_67
# BB#65:                                # %if.then.80.i
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpl	$126, %ebx
	jge	.LBB0_66
# BB#68:                                # %state5.i
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpq	%r9, %rbp
	je	.LBB0_69
# BB#70:                                # %if.end.112.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movzbl	2(%rdx), %eax
	addq	$2, %rdx
	cmpl	%esi, %eax
	je	.LBB0_71
# BB#72:                                # %if.end.125.i
                                        #   in Loop: Header=BB0_58 Depth=2
	cmpl	$4, %r14d
	jl	.LBB0_73
# BB#74:                                # %if.end.129.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movb	%dil, (%r12)
	addl	$2, %r10d
	addl	$-2, %r14d
	addq	$2, %r15
	movq	%r15, %r12
.LBB0_63:                               # %do.body.50.backedge.i
                                        #   in Loop: Header=BB0_58 Depth=2
	movq	%r12, %r15
	movb	%dil, (%r15)
	leal	1(%r10), %ebx
	leal	-1(%r14), %r11d
	leaq	1(%r15), %r12
	cmpq	%r9, %rdx
	jne	.LBB0_58
	jmp	.LBB0_43
.LBB0_48:                               #   in Loop: Header=BB0_38 Depth=1
	movq	%r9, %rbp
	jmp	.LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_38 Depth=1
	movq	%rcx, %rbp
.LBB0_52:                               # %do.end.i.73
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	$1, %eax
	subl	%esi, %eax
	movb	%al, (%r15)
	movb	%dil, 1(%r15)
	addq	$2, %r15
	addl	$-2, %r11d
	movzbl	%dil, %eax
	movzbl	(%rbp), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_55
# BB#53:                                # %if.end.44.i
                                        #   in Loop: Header=BB0_38 Depth=1
	cmpq	%r9, %rbp
	je	.LBB0_36
# BB#54:                                # %if.end.48.i
                                        #   in Loop: Header=BB0_38 Depth=1
	incq	%rbp
.LBB0_55:                               # %state1.backedge.i
                                        #   in Loop: Header=BB0_38 Depth=1
	cmpq	%r9, %rbp
	jne	.LBB0_38
# BB#56:
	movq	%r9, %rbp
	jmp	.LBB0_34
.LBB0_59:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_69:                               # %if.then.103.i
	movb	%dil, (%r12)
	movb	(%r9), %al
	movb	%al, 2(%r15)
	addl	$-3, %r14d
	movl	$-3, %eax
	subl	%r10d, %eax
	addl	$2, %r10d
	cltq
	movb	%r10b, 2(%r15,%rax)
	jmp	.LBB0_44
.LBB0_73:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_209:
	movl	%r14d, %r15d
.LBB0_210:                              # %while.end.i
	cmpl	%r8d, %r13d
	jge	.LBB0_236
# BB#211:                               # %while.cond.42.preheader.i
	xorl	%r12d, %r12d
.LBB0_212:                              # %while.cond.42.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_214 Depth 2
                                        #     Child Loop BB0_217 Depth 2
	cmpl	%r8d, %r15d
	jge	.LBB0_237
# BB#213:                               # %while.body.45.lr.ph.i
                                        #   in Loop: Header=BB0_212 Depth=1
	movslq	%r15d, %rax
	.align	16, 0x90
.LBB0_214:                              # %while.body.45.i
                                        #   Parent Loop BB0_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbx,%rax)
	jne	.LBB0_216
# BB#215:                               # %if.then.51.i
                                        #   in Loop: Header=BB0_214 Depth=2
	incq	%rax
	cmpq	%r8, %rax
	jl	.LBB0_214
	jmp	.LBB0_237
.LBB0_216:                              # %if.else.53.i
                                        #   in Loop: Header=BB0_212 Depth=1
	leaq	(%rbx,%rax), %rcx
	movl	%eax, %edx
	subl	%r14d, %edx
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.align	16, 0x90
.LBB0_217:                              # %do.body.57.i
                                        #   Parent Loop BB0_212 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r15
	cmpl	%r8d, %r15d
	jge	.LBB0_219
# BB#218:                               # %land.rhs.62.i
                                        #   in Loop: Header=BB0_217 Depth=2
	leaq	1(%r15), %rsi
	cmpb	$0, (%rbx,%r15)
	jne	.LBB0_217
.LBB0_219:                              # %land.rhs.62.i.do.end.69.i_crit_edge
                                        #   in Loop: Header=BB0_212 Depth=1
	movq	%r8, %r13
	movslq	%r11d, %r11
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%r11), %rdi
	movl	%r10d, %esi
	subl	%r11d, %esi
	movl	%r15d, %r8d
	subl	%eax, %r8d
	movl	%r10d, %r14d
	movq	%r11, %rbp
	callq	write_crdr_replacement
	movq	%rbp, %r11
	movl	%r14d, %r10d
	movl	%eax, %ecx
	testl	%ecx, %ecx
	cmovsl	%r12d, %eax
	addl	%eax, %r11d
	testl	%ecx, %ecx
	movl	%r15d, %r14d
	movq	%r13, %r8
	jns	.LBB0_212
	jmp	.LBB0_241
.LBB0_236:                              # %while.cond.89.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_221 Depth 2
                                        #     Child Loop BB0_224 Depth 2
	movq	40(%rsp), %rsi          # 8-byte Reload
	cmpl	%esi, %r15d
	jge	.LBB0_237
# BB#220:                               # %while.body.92.lr.ph.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	%r15d, %rax
	.align	16, 0x90
.LBB0_221:                              # %while.body.92.i
                                        #   Parent Loop BB0_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbp,%rax)
	jne	.LBB0_223
# BB#222:                               # %if.then.98.i
                                        #   in Loop: Header=BB0_221 Depth=2
	incq	%rax
	cmpq	%rsi, %rax
	jl	.LBB0_221
	jmp	.LBB0_237
.LBB0_223:                              # %if.else.100.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movl	%eax, %ecx
	subl	%r14d, %ecx
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	.align	16, 0x90
.LBB0_224:                              # %do.body.104.i
                                        #   Parent Loop BB0_236 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r15
	cmpl	%esi, %r15d
	jge	.LBB0_226
# BB#225:                               # %land.rhs.109.i
                                        #   in Loop: Header=BB0_224 Depth=2
	leaq	1(%r15), %rdx
	cmpb	$0, (%rbp,%r15)
	jne	.LBB0_224
.LBB0_226:                              # %do.end.116.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	%r11d, %rdx
	movq	%r11, 72(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx), %rsi
	movl	%r10d, %r12d
	movl	%r10d, %r14d
	subl	%edx, %r12d
	movl	%r15d, %r8d
	subl	%eax, %r8d
	cmpl	$1, %r8d
	jne	.LBB0_231
# BB#227:                               # %if.then.2.i.i
                                        #   in Loop: Header=BB0_236 Depth=1
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%r12d, %edx
	callq	write_crdr_header
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_228
# BB#229:                               # %if.then.2.i.i
                                        #   in Loop: Header=BB0_236 Depth=1
	cmpl	%r12d, %ebx
	movl	$-1, %ecx
	movq	72(%rsp), %r13          # 8-byte Reload
	jge	.LBB0_241
# BB#230:                               # %if.end.i.101.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	%ebx, %rax
	movq	32(%rsp), %rdi          # 8-byte Reload
	addq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	memset
	movq	%r13, %r11
	movl	%r14d, %r10d
	jmp	.LBB0_235
.LBB0_231:                              # %if.end.i.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movl	$1, %edi
	movq	%rsi, %r13
	movl	%r12d, %edx
	callq	write_crdr_header
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_232
# BB#233:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_236 Depth=1
	cmpl	%r12d, %ebx
	movl	%r14d, %r10d
	movl	$-1, %ecx
	movq	72(%rsp), %r11          # 8-byte Reload
	jge	.LBB0_241
# BB#234:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	%ebx, %rax
	movb	$0, (%r13,%rax)
.LBB0_235:                              # %write_crdr_replacement.exit.i
                                        #   in Loop: Header=BB0_236 Depth=1
	xorl	%ecx, %ecx
	leal	1(%rbx), %r9d
	cmpl	$-1, %ebx
	movl	%r9d, %eax
	cmovll	%ecx, %eax
	addl	%eax, %r11d
	cmpl	$-1, %ebx
	movl	%r15d, %r14d
	jge	.LBB0_236
	jmp	.LBB0_238
.LBB0_237:
	movl	%r11d, %r9d
	jmp	.LBB0_238
.LBB0_91:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_100:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_40:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_42:
	xorl	%r10d, %r10d
	movb	$1, %bl
.LBB0_43:                               # %if.then.56.i
	movb	(%r9), %al
	movb	%al, (%r12)
	addl	$-2, %r14d
	movl	$-2, %eax
	subl	%r10d, %eax
	cltq
	movb	%bl, (%r12,%rax)
.LBB0_44:                               # %finished.i
	movl	%r14d, %r11d
	movl	%r13d, %r10d
.LBB0_36:                               # %finished.i
	subl	%r11d, %r10d
	movl	%r10d, %r9d
.LBB0_238:                              # %sw.epilog
	testl	%r9d, %r9d
	movl	%r9d, %ecx
	js	.LBB0_241
.LBB0_239:                              # %if.then.78
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%r9d, 8(%rax)
.LBB0_240:                              # %cleanup
	xorl	%ecx, %ecx
.LBB0_241:                              # %cleanup
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_95:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_129:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_138:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_133:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_228:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_232:
	movl	$-1, %ecx
	jmp	.LBB0_241
.LBB0_5:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$708, %edx              # imm = 0x2C4
	movl	$.L__PRETTY_FUNCTION__.pcl_compress, %ecx
	callq	__assert_fail
.LBB0_242:                              # %cond.false.i.i
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$280, %edx              # imm = 0x118
	movl	$.L__PRETTY_FUNCTION__.write_delta_replacement, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	pcl_compress, .Lfunc_end0-pcl_compress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_22
	.quad	.LBB0_24
	.quad	.LBB0_32
	.quad	.LBB0_75
	.quad	.LBB0_243
	.quad	.LBB0_243
	.quad	.LBB0_243
	.quad	.LBB0_243
	.quad	.LBB0_243
	.quad	.LBB0_195

	.text
	.align	16, 0x90
	.type	write_crdr_replacement,@function
write_crdr_replacement:                 # @write_crdr_replacement
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, %r10
	movl	%edx, %r9d
	movl	%esi, %ebx
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testq	%r10, %r10
	je	.LBB1_1
# BB#5:                                 # %if.end.4
	xorl	%r15d, %r15d
	testl	%r8d, %r8d
	jle	.LBB1_6
# BB#7:
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movslq	%r8d, %rax
	leaq	-1(%r10,%rax), %r12
	.align	16, 0x90
.LBB1_8:                                # %while.cond.7.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_19 Depth 2
	movq	%r10, %rax
	.align	16, 0x90
.LBB1_9:                                # %while.cond.7
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rbx
	jae	.LBB1_10
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB1_9 Depth=2
	leaq	1(%rbx), %rax
	movb	$1, %bpl
	movzbl	1(%rbx), %ecx
	movzbl	(%rbx), %edx
	cmpl	%ecx, %edx
	jne	.LBB1_9
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%ebp, %ebp
.LBB1_12:                               # %while.end
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	%rbx, %r10
	jb	.LBB1_15
# BB#13:                                # %while.end
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	%r12, %rbx
	je	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %edx
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_15:                               # %if.then.18
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%rbx, %r14
	subq	%r10, %r14
	cmpq	%r12, %rbx
	movslq	%r8d, %r13
	cmovneq	%r14, %r13
	cmovel	%r8d, %r14d
	movslq	%r15d, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	subl	%eax, %esi
	movl	%r9d, %edx
	movq	%r10, %rcx
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movl	%r14d, %r8d
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	write_crdr_uncompressed
	movq	24(%rsp), %r10          # 8-byte Reload
	movl	36(%rsp), %r8d          # 4-byte Reload
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB1_28
# BB#16:                                # %if.end.29
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	%r15d, %edx
	xorl	%r9d, %r9d
	subl	%r14d, %r8d
	jle	.LBB1_18
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	%r13d, %rax
	addq	%rax, %r10
.LBB1_18:                               # %if.end.38
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	%bpl, %bpl
	movq	%rbx, %r13
	je	.LBB1_27
	.align	16, 0x90
.LBB1_19:                               # %while.cond.45
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%r13), %rbp
	cmpq	%r12, %rbp
	jae	.LBB1_20
# BB#21:                                # %land.rhs.48
                                        #   in Loop: Header=BB1_19 Depth=2
	movzbl	(%rbx), %r14d
	movzbl	2(%r13), %eax
	cmpl	%r14d, %eax
	movq	%rbp, %r13
	je	.LBB1_19
# BB#22:                                #   in Loop: Header=BB1_8 Depth=1
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movq	%rbp, %r13
	decq	%r13
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_20:                               # %while.cond.45.while.end.57_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movb	(%rbx), %r14b
.LBB1_23:                               # %while.end.57
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	subl	%ebx, %eax
	addl	%eax, %ebp
	movslq	%edx, %rax
	movl	%edx, 8(%rsp)           # 4-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rbx
	movl	12(%rsp), %r15d         # 4-byte Reload
	subl	%eax, %r15d
	movl	$1, %edi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%r9d, %ecx
	movl	%ebp, %r8d
	callq	write_crdr_header
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB1_28
# BB#24:                                # %while.end.57
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r15d, %ecx
	movl	36(%rsp), %r8d          # 4-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	movl	8(%rsp), %edx           # 4-byte Reload
	jge	.LBB1_28
# BB#25:                                # %write_crdr_compressed.exit75
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	%ecx, %rax
	movb	%r14b, (%rbx,%rax)
	leal	1(%rcx), %eax
	cmpl	$-1, %ecx
	jl	.LBB1_28
# BB#26:                                # %cleanup.78
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	%eax, %edx
	addq	$2, %r13
	subl	%ebp, %r8d
	cmovgq	%r13, %r10
	xorl	%r9d, %r9d
.LBB1_27:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_8 Depth=1
	testl	%r8d, %r8d
	movl	%edx, %r15d
	movl	%edx, %eax
	jg	.LBB1_8
	jmp	.LBB1_28
.LBB1_1:                                # %if.then
	cmpl	$1, %r8d
	jne	.LBB1_2
# BB#29:                                # %if.then.2
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	movl	%r9d, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	write_crdr_uncompressed # TAILCALL
.LBB1_6:
	xorl	%eax, %eax
	jmp	.LBB1_28
.LBB1_2:                                # %if.end
	movl	$1, %edi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %edx
	movl	%r9d, %ecx
	callq	write_crdr_header
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB1_28
# BB#3:                                 # %if.end
	cmpl	%ebx, %ecx
	jge	.LBB1_28
# BB#4:                                 # %if.end.i
	movslq	%ecx, %rax
	movq	16(%rsp), %rdx          # 8-byte Reload
	movb	$0, (%rdx,%rax)
	incl	%ecx
	movl	%ecx, %eax
.LBB1_28:                               # %cleanup.88
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	write_crdr_replacement, .Lfunc_end1-write_crdr_replacement
	.cfi_endproc

	.align	16, 0x90
	.type	write_crdr_uncompressed,@function
write_crdr_uncompressed:                # @write_crdr_uncompressed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r14
	movl	%edx, %eax
	movl	%esi, %ebp
	movq	%rdi, %r15
	xorl	%edi, %edi
	movq	%r15, %rsi
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	write_crdr_header
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB2_6
# BB#1:                                 # %lor.lhs.false
	leal	(%rcx,%rbx), %r12d
	cmpl	%ebp, %r12d
	jg	.LBB2_6
# BB#2:                                 # %if.end
	movslq	%ecx, %rax
	addq	%rax, %r15
	movslq	%ebx, %rdx
	testq	%r14, %r14
	je	.LBB2_3
# BB#4:                                 # %if.else
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	jmp	.LBB2_5
.LBB2_3:                                # %if.then.3
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
.LBB2_5:                                # %cleanup
	movl	%r12d, %eax
.LBB2_6:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	write_crdr_uncompressed, .Lfunc_end2-write_crdr_uncompressed
	.cfi_endproc

	.align	16, 0x90
	.type	write_crdr_header,@function
write_crdr_header:                      # @write_crdr_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 16
	movl	%ecx, %r9d
	testl	%edx, %edx
	jle	.LBB3_1
# BB#2:                                 # %if.end
	testl	%edi, %edi
	setne	%r10b
	movl	$3, %ecx
	movl	$15, %eax
	cmovnel	%ecx, %eax
	movzbl	%r10b, %ecx
	shlb	$7, %r10b
	movb	%r10b, (%rsi)
	leal	3(%rcx,%rcx), %ecx
	cmpl	%r9d, %eax
	jle	.LBB3_4
# BB#3:                                 # %if.then.7
	shll	%cl, %r9d
	movzbl	%r10b, %r10d
	addl	%r9d, %r10d
	movb	%r10b, (%rsi)
	movl	$-1, %r9d
	jmp	.LBB3_5
.LBB3_1:
	movl	$-1, %eax
	popq	%rdx
	retq
.LBB3_4:                                # %if.else.9
	subl	%eax, %r9d
	shll	%cl, %eax
	movzbl	%r10b, %r10d
	addl	%eax, %r10d
	movb	%r10b, (%rsi)
.LBB3_5:                                # %if.end.14
	cmpl	$1, %edi
	adcl	$0, %r8d
	addl	$-2, %r8d
	js	.LBB3_24
# BB#6:                                 # %cond.end
	testl	%edi, %edi
	movl	$31, %ecx
	movl	$7, %eax
	cmovnel	%ecx, %eax
	movl	%r8d, %r11d
	subl	%eax, %r11d
	jge	.LBB3_8
# BB#7:                                 # %if.then.26
	addl	%r8d, %r10d
	movb	%r10b, (%rsi)
	movl	$-1, %r11d
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.30
	addl	%eax, %r10d
	movb	%r10b, (%rsi)
.LBB3_9:                                # %if.end.35
	movl	$1, %eax
	testl	%r9d, %r9d
	js	.LBB3_10
	.align	16, 0x90
.LBB3_14:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	cmpl	%edx, %edi
	jge	.LBB3_15
# BB#16:                                # %if.end.41
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpl	$255, %r9d
	movb	%r9b, %al
	jl	.LBB3_18
# BB#17:                                # %if.end.41
                                        #   in Loop: Header=BB3_14 Depth=1
	movb	$-1, %al
.LBB3_18:                               # %if.end.41
                                        #   in Loop: Header=BB3_14 Depth=1
	movb	%al, (%rsi,%rdi)
	leaq	1(%rdi), %rax
	addl	$-255, %r9d
	jns	.LBB3_14
# BB#19:
	leaq	1(%rsi,%rdi), %rsi
	jmp	.LBB3_11
.LBB3_10:
	incq	%rsi
	movl	$1, %eax
.LBB3_11:                               # %while.cond.51.preheader
	testl	%r11d, %r11d
	js	.LBB3_23
	.align	16, 0x90
.LBB3_12:                               # %while.body.54
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, %eax
	jge	.LBB3_13
# BB#20:                                # %if.end.58
                                        #   in Loop: Header=BB3_12 Depth=1
	cmpl	$255, %r11d
	movb	%r11b, %cl
	jl	.LBB3_22
# BB#21:                                # %if.end.58
                                        #   in Loop: Header=BB3_12 Depth=1
	movb	$-1, %cl
.LBB3_22:                               # %if.end.58
                                        #   in Loop: Header=BB3_12 Depth=1
	movb	%cl, (%rsi)
	incq	%rsi
	incl	%eax
	addl	$-255, %r11d
	jns	.LBB3_12
.LBB3_23:                               # %cleanup
	popq	%rdx
	retq
.LBB3_15:
	movl	$-1, %eax
	popq	%rdx
	retq
.LBB3_13:
	movl	$-1, %eax
	popq	%rdx
	retq
.LBB3_24:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$449, %edx              # imm = 0x1C1
	movl	$.L__PRETTY_FUNCTION__.write_crdr_header, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	write_crdr_header, .Lfunc_end3-write_crdr_header
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(in != ((void*)0) && ((in)->length == 0 || (in)->length > 0 && (in)->str != ((void*)0))) && (out != ((void*)0) && ((out)->length == 0 || (out)->length > 0 && (out)->str != ((void*)0))) && (method != pcl_cm_delta && method != pcl_cm_crdr || (prev != ((void*)0) && ((prev)->length == 0 || (prev)->length > 0 && (prev)->str != ((void*)0))))"
	.size	.L.str, 338

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./contrib/pcl3/src/pclcomp.c"
	.size	.L.str.1, 29

	.type	.L__PRETTY_FUNCTION__.pcl_compress,@object # @__PRETTY_FUNCTION__.pcl_compress
.L__PRETTY_FUNCTION__.pcl_compress:
	.asciz	"int pcl_compress(pcl_Compression, const pcl_OctetString *, const pcl_OctetString *, pcl_OctetString *)"
	.size	.L__PRETTY_FUNCTION__.pcl_compress, 103

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"opos <= maxoutcount"
	.size	.L.str.3, 20

	.type	.L__PRETTY_FUNCTION__.compress_delta,@object # @__PRETTY_FUNCTION__.compress_delta
.L__PRETTY_FUNCTION__.compress_delta:
	.asciz	"int compress_delta(const pcl_Octet *, int, const pcl_Octet *, int, pcl_Octet *, int)"
	.size	.L__PRETTY_FUNCTION__.compress_delta, 85

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1 <= replace_count && replace_count <= 8"
	.size	.L.str.4, 41

	.type	.L__PRETTY_FUNCTION__.write_delta_replacement,@object # @__PRETTY_FUNCTION__.write_delta_replacement
.L__PRETTY_FUNCTION__.write_delta_replacement:
	.asciz	"int write_delta_replacement(pcl_Octet *, int, int, const pcl_Octet *, int)"
	.size	.L__PRETTY_FUNCTION__.write_delta_replacement, 75

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"repcount >= 0"
	.size	.L.str.5, 14

	.type	.L__PRETTY_FUNCTION__.write_crdr_header,@object # @__PRETTY_FUNCTION__.write_crdr_header
.L__PRETTY_FUNCTION__.write_crdr_header:
	.asciz	"int write_crdr_header(pcl_bool, pcl_Octet *, int, int, int)"
	.size	.L__PRETTY_FUNCTION__.write_crdr_header, 60


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
