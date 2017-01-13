	.text
	.file	"gdevm1.bc"
	.globl	mem_mono_strip_copy_rop_dev
	.align	16, 0x90
	.type	mem_mono_strip_copy_rop_dev,@function
mem_mono_strip_copy_rop_dev:            # @mem_mono_strip_copy_rop_dev
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
	subq	$248, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 304
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
	movl	%ecx, %r15d
	movl	%edx, 16(%rsp)          # 4-byte Spill
	movl	368(%rsp), %eax
	movq	312(%rsp), %rcx
	movl	1736(%rdi), %r10d
	testq	%r9, %r9
	je	.LBB0_8
# BB#1:                                 # %if.then
	movl	8(%r9), %edx
	addl	%edx, %edx
	addl	(%r9), %edx
	cmpl	$3, %edx
	je	.LBB0_6
# BB#2:                                 # %if.then
	cmpl	$1, %edx
	jne	.LBB0_3
# BB#5:                                 # %sw.bb.4
	movl	%eax, %edx
	shrl	$2, %edx
	andl	$51, %edx
	movl	%eax, %ebp
	andl	$51, %ebp
	shll	$2, %ebp
	andl	$-256, %eax
	orl	%ebp, %eax
	jmp	.LBB0_7
.LBB0_6:                                # %sw.bb.11
	movl	%eax, %edx
	shrl	$2, %edx
	andl	$51, %edx
	andl	$-52, %eax
	jmp	.LBB0_7
.LBB0_3:                                # %if.then
	testl	%edx, %edx
	jne	.LBB0_8
# BB#4:                                 # %sw.bb
	movl	%eax, %edx
	andl	$51, %edx
	shll	$2, %edx
	andl	$-205, %eax
.LBB0_7:                                # %if.end
	orl	%edx, %eax
.LBB0_8:                                # %if.end
	testq	%rcx, %rcx
	je	.LBB0_9
# BB#10:                                # %if.then.18
	movl	8(%rcx), %edx
	addl	%edx, %edx
	addl	(%rcx), %edx
	movq	%rsi, %rbx
	cmpl	$3, %edx
	je	.LBB0_15
# BB#11:                                # %if.then.18
	cmpl	$1, %edx
	jne	.LBB0_12
# BB#14:                                # %sw.bb.29
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	%eax, %edx
	andl	$15, %edx
	shll	$4, %edx
	andl	$-256, %eax
	orl	%edx, %eax
	jmp	.LBB0_16
.LBB0_9:
	movq	%rsi, %rbx
	jmp	.LBB0_17
.LBB0_15:                               # %sw.bb.37
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	andl	$-16, %eax
	jmp	.LBB0_16
.LBB0_12:                               # %if.then.18
	testl	%edx, %edx
	jne	.LBB0_17
# BB#13:                                # %sw.bb.24
	movl	%eax, %ecx
	andl	$15, %ecx
	shll	$4, %ecx
	andl	$-241, %eax
.LBB0_16:                               # %if.end.43
	orl	%ecx, %eax
.LBB0_17:                               # %if.end.43
	movl	344(%rsp), %r8d
	movl	336(%rsp), %ecx
	movl	328(%rsp), %edx
	movl	320(%rsp), %r9d
	movl	%eax, %r11d
	movzbl	rop_usage_table(%r11), %esi
	cmpq	$5, %rsi
	jbe	.LBB0_18
# BB#61:                                # %do.body.308
	movl	%edx, %esi
	orl	%r9d, %esi
	jns	.LBB0_40
# BB#62:                                # %if.then.312
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	cmovsl	%ebp, %r9d
	subl	%esi, 16(%rsp)          # 4-byte Folded Spill
	testl	%edx, %edx
	jns	.LBB0_40
# BB#63:                                # %if.then.321
	addl	%edx, %r8d
	imull	%r15d, %edx
	movslq	%edx, %rdx
	subq	%rdx, %rbx
	jmp	.LBB0_41
.LBB0_18:                               # %if.end.43
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_19:                               # %sw.bb.46
	andl	$1, %r11d
	movl	%r9d, %esi
	movq	%r11, %r9
	callq	*1200(%rdi)
	jmp	.LBB0_123
.LBB0_20:                               # %sw.bb.49
	cmpl	$170, %r11d
	je	.LBB0_122
# BB#21:                                # %do.body.55
	movl	%edx, %esi
	orl	%r9d, %esi
	jns	.LBB0_23
# BB#22:                                # %if.then.59
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	addl	%ecx, %esi
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	cmovsl	%ecx, %r9d
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%ebp, %r8d
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	movl	%esi, %ecx
.LBB0_23:                               # %do.body.71
	movl	%edx, %esi
	movl	832(%rdi), %r12d
	movl	836(%rdi), %r14d
	subl	%r9d, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	subl	%esi, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	testl	%r12d, %r12d
	jle	.LBB0_122
# BB#24:                                # %do.body.71
	movq	%r10, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	movl	$0, %eax
	jle	.LBB0_123
# BB#25:                                # %do.end.101
	movq	2576(%rdi), %rcx
	movq	(%rcx), %rbx
	xorl	%r15d, %r15d
	movl	%r9d, 16(%rsp)          # 4-byte Spill
	jmp	.LBB0_33
.LBB0_26:                               # %do.body.105
	movl	%edx, %esi
	orl	%r9d, %esi
	js	.LBB0_28
# BB#27:
	movl	%edx, %esi
	jmp	.LBB0_31
.LBB0_34:                               # %do.body.151
	movl	%edx, %esi
	orl	%r9d, %esi
	js	.LBB0_36
# BB#35:
	movl	%edx, %esi
	jmp	.LBB0_31
.LBB0_38:                               # %do.body.202
	movl	%edx, %esi
	orl	%r9d, %esi
	jns	.LBB0_40
# BB#39:                                # %if.then.206
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	addl	%ecx, %esi
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	cmovsl	%ecx, %r9d
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%ebp, %r8d
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	movl	%esi, %ecx
.LBB0_40:                               # %do.body.220
	movl	%edx, %ebp
.LBB0_41:                               # %do.body.220
	movl	832(%rdi), %r12d
	movl	836(%rdi), %r14d
	subl	%r9d, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB0_123
# BB#42:                                # %do.body.220
	movq	%r10, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jg	.LBB0_48
	jmp	.LBB0_123
.LBB0_43:                               # %do.body.256
	movl	%edx, %esi
	orl	%r9d, %esi
	jns	.LBB0_45
# BB#44:                                # %if.then.260
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	addl	%ecx, %esi
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	cmovsl	%ecx, %r9d
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%ebp, %r8d
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	movl	%esi, %ecx
.LBB0_45:                               # %do.body.274
	movl	%edx, %ebp
	movl	832(%rdi), %r12d
	movl	836(%rdi), %r14d
	subl	%r9d, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB0_123
# BB#46:                                # %do.body.274
	movq	%r10, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB0_123
# BB#47:                                # %do.end.306
	movq	1744(%rdi), %rbx
	xorl	%r15d, %r15d
	movl	%r9d, 16(%rsp)          # 4-byte Spill
.LBB0_48:                               # %sw.epilog.356
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	304(%rsp), %r15
	movslq	%ebp, %rcx
	movq	2576(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rdi
	testq	%r15, %r15
	je	.LBB0_49
# BB#74:                                # %if.else.523
	movl	352(%rsp), %r13d
	movl	8(%r15), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	addl	360(%rsp), %ebp
	movzwl	32(%r15), %ecx
	cmpl	$33, %ecx
	jb	.LBB0_83
# BB#75:                                # %if.then.527
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%rdi, %r12
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%r11d, %esi
	callq	rop_get_run_op
	movq	%r12, %r9
	testl	%r14d, %r14d
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %rsi
	jle	.LBB0_72
# BB#76:                                # %for.body.532.lr.ph
	movl	136(%rsp), %eax         # 4-byte Reload
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	160(%rsp), %r14
	.align	16, 0x90
.LBB0_77:                               # %for.body.532
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_81 Depth 2
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movzwl	34(%r15), %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r12d
	imull	20(%rsp), %r12d         # 4-byte Folded Reload
	addq	(%r15), %r12
	cmpw	$0, 38(%r15)
	movl	%r13d, %eax
	je	.LBB0_79
# BB#78:                                # %cond.false.541
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movzwl	36(%r15), %eax
	imull	%ecx, %eax
	addl	%r13d, %eax
.LBB0_79:                               # %cond.end.547
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB0_82
# BB#80:                                # %for.body.556.lr.ph
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	12(%rsp), %esi          # 4-byte Reload
	addl	%esi, %eax
	movq	304(%rsp), %rcx
	movzwl	32(%rcx), %ecx
	cltd
	idivl	%ecx
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r13d
	movl	%esi, %ebp
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r15d
	.align	16, 0x90
.LBB0_81:                               # %for.body.556
                                        #   Parent Loop BB0_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %r11d
	andl	$7, %r11d
	movl	%edx, %ecx
	andl	$7, %ecx
	movl	%ebp, %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%r9), %rsi
	movl	%r13d, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %r8
	movl	%edx, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	leaq	(%rbx,%r12), %r9
	movq	304(%rsp), %rax
	movl	12(%rax), %ebx
	subl	%edx, %ebx
	cmpl	%ebx, %r15d
	cmovlel	%r15d, %ebx
	movq	%r8, 176(%rsp)
	movl	%r11d, 184(%rsp)
	movq	%r9, 192(%rsp)
	movl	%ecx, 200(%rsp)
	movb	%bpl, %al
	andb	$7, %al
	movb	%al, 214(%rsp)
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*160(%rsp)
	movq	88(%rsp), %r9           # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	leal	(%r13,%rbx), %r13d
	leal	(%rbp,%rbx), %ebp
	xorl	%edx, %edx
	subl	%ebx, %r15d
	jg	.LBB0_81
.LBB0_82:                               # %for.end.602
                                        #   in Loop: Header=BB0_77 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r9
	addq	152(%rsp), %rsi         # 8-byte Folded Reload
	movl	44(%rsp), %ebp          # 4-byte Reload
	incl	%ebp
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	304(%rsp), %r15
	movl	352(%rsp), %r13d
	jg	.LBB0_77
	jmp	.LBB0_72
.LBB0_83:                               # %if.else.618
	movq	%rbx, %rcx
	testq	%rcx, %rcx
	movq	rop_proc_table(,%r11,8), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	je	.LBB0_94
# BB#84:                                # %for.cond.777.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB0_123
# BB#85:                                # %for.body.781.lr.ph
	movl	136(%rsp), %eax         # 4-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB0_86:                               # %for.body.781
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_92 Depth 3
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movzwl	34(%r15), %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	imull	20(%rsp), %edx          # 4-byte Folded Reload
	addq	(%r15), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	cmpw	$0, 38(%r15)
	movl	%r13d, %eax
	je	.LBB0_88
# BB#87:                                # %cond.false.799
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movzwl	36(%r15), %eax
	imull	%ecx, %eax
	addl	%r13d, %eax
.LBB0_88:                               # %cond.end.807
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB0_121
# BB#89:                                # %for.body.818.lr.ph
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	12(%rsp), %esi          # 4-byte Reload
	addl	%esi, %eax
	movzwl	32(%r15), %ecx
	cltd
	idivl	%ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movl	%esi, %r8d
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, %esi
	.align	16, 0x90
.LBB0_90:                               # %for.body.818
                                        #   Parent Loop BB0_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%r8d, %r9d
	andl	$7, %r9d
	movl	%edx, %r10d
	andl	$7, %r10d
	movl	%r10d, %r11d
	subl	%r9d, %r11d
	addl	$8, %r11d
	subl	%r9d, %r10d
	cmovnsl	%r10d, %r11d
	movl	%r11d, 132(%rsp)        # 4-byte Spill
	movl	%esi, %eax
	andl	$7, %eax
	movl	%eax, %esi
	subl	%r9d, %esi
	addl	$8, %esi
	subl	%r9d, %eax
	movl	12(%r15), %ebp
	cmovnsl	%eax, %esi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	subl	%edx, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	leal	(%r8,%rbp), %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	negl	%ecx
	andb	$7, %cl
	movl	$255, %ebx
	shll	%cl, %ebx
	movl	%ebx, 104(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB0_120
# BB#91:                                # %for.body.882.lr.ph
                                        #   in Loop: Header=BB0_90 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movq	96(%rsp), %rbp          # 8-byte Reload
	leaq	(%rcx,%rbp), %rcx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movq	56(%rsp), %rbp          # 8-byte Reload
	leaq	(%rdx,%rbp), %rbp
	leaq	-1(%rbp), %rdx
	testl	%r10d, %r10d
	cmovsq	%rdx, %rbp
	leaq	-1(%rcx), %rbx
	testl	%eax, %eax
	cmovnsq	%rcx, %rbx
	sarl	$3, %r8d
	movslq	%r8d, %rcx
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r13
	movl	$8, %edx
	subl	%r9d, %edx
	movl	$255, %r15d
	movb	%r9b, %cl
	shrl	%cl, %r15d
	movl	$8, %eax
	subl	%r11d, %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	$8, %eax
	subl	%esi, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	incq	%rbp
	incq	%rbx
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	.align	16, 0x90
.LBB0_92:                               # %for.body.882
                                        #   Parent Loop BB0_86 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%esi, %esi
	movzbl	(%r13), %r14d
	movzbl	-1(%rbx), %eax
	je	.LBB0_93
# BB#111:                               # %cond.true.886
                                        #   in Loop: Header=BB0_92 Depth=3
	movl	%edx, 152(%rsp)         # 4-byte Spill
	movb	%sil, %cl
	shll	%cl, %eax
	movzbl	(%rbx), %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	addl	%edx, %eax
	jmp	.LBB0_112
	.align	16, 0x90
.LBB0_93:                               #   in Loop: Header=BB0_92 Depth=3
	movl	%edx, 152(%rsp)         # 4-byte Spill
.LBB0_112:                              # %cond.end.897
                                        #   in Loop: Header=BB0_92 Depth=3
	testl	%r11d, %r11d
	movl	%eax, %eax
	movzbl	-1(%rbp), %edx
	je	.LBB0_114
# BB#113:                               # %cond.true.902
                                        #   in Loop: Header=BB0_92 Depth=3
	movb	%r11b, %cl
	shll	%cl, %edx
	movzbl	(%rbp), %esi
	movl	120(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %esi
	addl	%edx, %esi
	movl	%esi, %edx
.LBB0_114:                              # %cond.end.913
                                        #   in Loop: Header=BB0_92 Depth=3
	movzbl	%al, %esi
	movzbl	%dl, %edx
	movq	%r14, %rdi
	callq	*144(%rsp)              # 8-byte Folded Reload
	movl	152(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %r12d
	jg	.LBB0_116
# BB#115:                               # %cond.end.913
                                        #   in Loop: Header=BB0_92 Depth=3
	movzbl	%r15b, %r15d
	andl	104(%rsp), %r15d        # 4-byte Folded Reload
.LBB0_116:                              # %cond.end.913
                                        #   in Loop: Header=BB0_92 Depth=3
	movl	132(%rsp), %r11d        # 4-byte Reload
	movl	136(%rsp), %esi         # 4-byte Reload
	movzbl	%r15b, %ecx
	cmpl	$255, %ecx
	je	.LBB0_117
# BB#118:                               # %cond.false.935
                                        #   in Loop: Header=BB0_92 Depth=3
	andl	%ecx, %eax
	notl	%ecx
	andl	%r14d, %ecx
	orl	%eax, %ecx
	jmp	.LBB0_119
	.align	16, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_92 Depth=3
	movzbl	%al, %ecx
.LBB0_119:                              # %cond.end.944
                                        #   in Loop: Header=BB0_92 Depth=3
	movb	%cl, (%r13)
	incq	%r13
	incq	%rbp
	incq	%rbx
	subl	%edx, %r12d
	movb	$-1, %r15b
	movl	$8, %edx
	jg	.LBB0_92
.LBB0_120:                              # %for.end.952
                                        #   in Loop: Header=BB0_90 Depth=2
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%rsi,%rax), %esi
	xorl	%edx, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r8d
	movq	304(%rsp), %r15
	jg	.LBB0_90
.LBB0_121:                              # %for.end.957
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rdi          # 8-byte Reload
	addq	%rax, %rdi
	movq	96(%rsp), %rcx          # 8-byte Reload
	addq	(%rsp), %rcx            # 8-byte Folded Reload
	movl	44(%rsp), %ebp          # 4-byte Reload
	incl	%ebp
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %r14d
	movq	24(%rsp), %r12          # 8-byte Reload
	movl	352(%rsp), %r13d
	jg	.LBB0_86
	jmp	.LBB0_122
.LBB0_94:                               # %for.cond.625.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB0_123
	.align	16, 0x90
.LBB0_95:                               # %for.body.629
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_101 Depth 3
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movzwl	34(%r15), %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	imull	20(%rsp), %edx          # 4-byte Folded Reload
	addq	(%r15), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	cmpw	$0, 38(%r15)
	movl	%r13d, %eax
	je	.LBB0_97
# BB#96:                                # %cond.false.646
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movzwl	36(%r15), %eax
	imull	%ecx, %eax
	addl	%r13d, %eax
.LBB0_97:                               # %cond.end.654
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB0_110
# BB#98:                                # %for.body.665.lr.ph
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	12(%rsp), %esi          # 4-byte Reload
	addl	%esi, %eax
	movzwl	32(%r15), %ecx
	cltd
	idivl	%ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movl	%esi, %ebp
	.align	16, 0x90
.LBB0_99:                               # %for.body.665
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_101 Depth 3
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	%ebp, %r8d
	andl	$7, %r8d
	movl	%edx, %edi
	andl	$7, %edi
	movl	%edi, %esi
	subl	%r8d, %esi
	addl	$8, %esi
	subl	%r8d, %edi
	movl	12(%r15), %ebx
	cmovnsl	%edi, %esi
	movl	%esi, 152(%rsp)         # 4-byte Spill
	subl	%edx, %ebx
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	leal	(%rbp,%rbx), %ecx
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	negl	%ecx
	andb	$7, %cl
	movl	$255, %eax
	shll	%cl, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	jle	.LBB0_109
# BB#100:                               # %for.body.712.lr.ph
                                        #   in Loop: Header=BB0_99 Depth=2
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r12
	leaq	-1(%r12), %rcx
	testl	%edi, %edi
	cmovsq	%rcx, %r12
	sarl	$3, %ebp
	movslq	%ebp, %rcx
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r13
	movl	$8, %r14d
	subl	%r8d, %r14d
	movl	$255, %ebx
	movb	%r8b, %cl
	shrl	%cl, %ebx
	movl	$8, %eax
	subl	%esi, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	incq	%r12
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r15d
	.align	16, 0x90
.LBB0_101:                              # %for.body.712
                                        #   Parent Loop BB0_95 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%esi, %esi
	movzbl	(%r13), %edi
	movzbl	-1(%r12), %eax
	je	.LBB0_103
# BB#102:                               # %cond.true.715
                                        #   in Loop: Header=BB0_101 Depth=3
	movb	%sil, %cl
	shll	%cl, %eax
	movzbl	(%r12), %edx
	movl	136(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
.LBB0_103:                              # %cond.end.726
                                        #   in Loop: Header=BB0_101 Depth=3
	movzbl	%al, %edx
	xorl	%esi, %esi
	movq	%rdi, %rbp
	callq	*144(%rsp)              # 8-byte Folded Reload
	cmpl	%r14d, %r15d
	jg	.LBB0_105
# BB#104:                               # %cond.end.726
                                        #   in Loop: Header=BB0_101 Depth=3
	movzbl	%bl, %ebx
	andl	132(%rsp), %ebx         # 4-byte Folded Reload
.LBB0_105:                              # %cond.end.726
                                        #   in Loop: Header=BB0_101 Depth=3
	movl	152(%rsp), %esi         # 4-byte Reload
	movzbl	%bl, %ecx
	cmpl	$255, %ecx
	je	.LBB0_106
# BB#107:                               # %cond.false.747
                                        #   in Loop: Header=BB0_101 Depth=3
	andl	%ecx, %eax
	notl	%ecx
	andl	%ebp, %ecx
	orl	%eax, %ecx
	jmp	.LBB0_108
	.align	16, 0x90
.LBB0_106:                              #   in Loop: Header=BB0_101 Depth=3
	movzbl	%al, %ecx
.LBB0_108:                              # %cond.end.756
                                        #   in Loop: Header=BB0_101 Depth=3
	movb	%cl, (%r13)
	incq	%r13
	incq	%r12
	subl	%r14d, %r15d
	movb	$-1, %bl
	movl	$8, %r14d
	jg	.LBB0_101
.LBB0_109:                              # %for.end.763
                                        #   in Loop: Header=BB0_99 Depth=2
	xorl	%edx, %edx
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	movl	104(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	movq	304(%rsp), %r15
	jg	.LBB0_99
.LBB0_110:                              # %for.end.767
                                        #   in Loop: Header=BB0_95 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	addq	32(%rsp), %rdi          # 8-byte Folded Reload
	movl	44(%rsp), %ebp          # 4-byte Reload
	incl	%ebp
	xorl	%eax, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	leal	-1(%rcx), %ecx
	movl	%ecx, %r14d
	movq	24(%rsp), %r12          # 8-byte Reload
	movl	352(%rsp), %r13d
	jg	.LBB0_95
	jmp	.LBB0_123
.LBB0_28:                               # %if.then.109
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%r9d, %ebp
	leal	(%rcx,%rbp), %ecx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	subl	%ebp, 16(%rsp)          # 4-byte Folded Spill
	testl	%edx, %edx
	js	.LBB0_30
# BB#29:
	movl	%edx, %esi
	jmp	.LBB0_31
.LBB0_36:                               # %if.then.155
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%r9d, %ebp
	leal	(%rcx,%rbp), %ecx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	subl	%ebp, 16(%rsp)          # 4-byte Folded Spill
	testl	%edx, %edx
	js	.LBB0_30
# BB#37:
	movl	%edx, %esi
	jmp	.LBB0_31
.LBB0_30:                               # %if.then.118
	addl	%edx, %r8d
	imull	%r15d, %edx
	movslq	%edx, %rdx
	subq	%rdx, %rbx
.LBB0_31:                               # %if.end.121
	movl	832(%rdi), %r12d
	movl	836(%rdi), %r14d
	subl	%r9d, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	subl	%esi, %r14d
	cmpl	%r14d, %r8d
	cmovlel	%r8d, %r14d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB0_123
# BB#32:                                # %if.end.121
	movq	%r10, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB0_123
.LBB0_33:                               # %sw.epilog.356.thread
	movl	%r15d, 136(%rsp)        # 4-byte Spill
	movslq	%esi, %rcx
	movq	2576(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rdi
.LBB0_49:
	movq	%rbx, %rcx
	movl	%r9d, %r10d
	andl	$7, %r10d
	movl	16(%rsp), %esi          # 4-byte Reload
	movl	%esi, %r15d
	andl	$7, %r15d
	sarl	$3, %r9d
	movslq	%r9d, %r9
	leaq	(%rdi,%r9), %rbp
	sarl	$3, %esi
	movslq	%esi, %rbx
	addq	%rcx, %rbx
	cmpl	$31, %r12d
	jg	.LBB0_69
# BB#50:                                # %if.then.375
	leaq	-1(%rbx), %r13
	movl	%r15d, %ecx
	subl	%r10d, %ecx
	cmovnsq	%rbx, %r13
	addl	$8, %ecx
	subl	%r10d, %r15d
	cmovsl	%ecx, %r15d
	movl	$255, %esi
	movl	$255, %ebx
	movb	%r10b, %cl
	shrl	%cl, %ebx
	leal	(%r12,%r10), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	andb	$7, %cl
	movl	$255, %edx
	shll	%cl, %edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
	cmpl	$8, %eax
	cmovll	%edx, %esi
	xorl	%eax, %eax
	testl	%r14d, %r14d
	movl	136(%rsp), %r8d         # 4-byte Reload
	jle	.LBB0_123
# BB#51:                                # %for.body.lr.ph
	movl	%ebx, %eax
	andl	%esi, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%r15d, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	88(%rsp), %ecx          # 4-byte Reload
	xorl	$255, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	$15, %ecx
	subl	%r12d, %ecx
	subl	%r10d, %ecx
	cmpl	$-10, %ecx
	movl	$-9, %esi
	cmovgl	%ecx, %esi
	leal	(%rsi,%r12), %ecx
	leal	-8(%r10,%rcx), %ecx
	shrl	$3, %ecx
	addq	%rcx, %r9
	leaq	2(%rdi,%r9), %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	movq	rop_proc_table(,%r11,8), %r12
	leal	-8(%rdx,%r10), %edx
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movq	96(%rsp), %rdx          # 8-byte Reload
	leal	-8(%rdx), %edx
	movl	%edx, 120(%rsp)         # 4-byte Spill
	notb	%al
	movb	%al, 116(%rsp)          # 1-byte Spill
	movl	%r8d, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	1(%rcx,%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_52:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
	movzbl	(%rbp), %ebx
	movzbl	(%r13), %eax
	testl	%r15d, %r15d
	je	.LBB0_54
# BB#53:                                # %cond.true.403
                                        #   in Loop: Header=BB0_52 Depth=1
	movb	%r15b, %cl
	shll	%cl, %eax
	movzbl	1(%r13), %edx
	movl	152(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
.LBB0_54:                               # %cond.end.414
                                        #   in Loop: Header=BB0_52 Depth=1
	movzbl	%al, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*%r12
	movl	132(%rsp), %ecx         # 4-byte Reload
	andb	%cl, %al
	andb	116(%rsp), %bl          # 1-byte Folded Reload
	orb	%al, %bl
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	movb	%bl, (%rbp)
	jle	.LBB0_68
# BB#55:                                # %if.end.435
                                        #   in Loop: Header=BB0_52 Depth=1
	movb	1(%rbp), %dl
	movzbl	1(%r13), %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpl	$17, %ecx
	jl	.LBB0_64
# BB#56:                                #   in Loop: Header=BB0_52 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	72(%rsp), %ebx          # 4-byte Reload
	movl	$2, %r14d
	.align	16, 0x90
.LBB0_57:                               # %while.body
                                        #   Parent Loop BB0_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r15d, %r15d
	je	.LBB0_59
# BB#58:                                # %cond.true.442
                                        #   in Loop: Header=BB0_57 Depth=2
	movb	%r15b, %cl
	shll	%cl, %eax
	movzbl	(%r13,%r14), %esi
	movl	152(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %esi
	addl	%eax, %esi
	movl	%esi, %eax
.LBB0_59:                               # %cond.end.453
                                        #   in Loop: Header=BB0_57 Depth=2
	movzbl	%dl, %edi
	movzbl	%al, %esi
	xorl	%edx, %edx
	callq	*%r12
	movb	%al, -1(%rbp,%r14)
	movb	(%rbp,%r14), %dl
	movzbl	(%r13,%r14), %eax
	incq	%r14
	addl	$-8, %ebx
	cmpl	$8, %ebx
	jg	.LBB0_57
# BB#60:                                #   in Loop: Header=BB0_52 Depth=1
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	136(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_52 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leaq	1(%rbp), %r14
	movq	%r13, %rsi
.LBB0_65:                               # %while.end
                                        #   in Loop: Header=BB0_52 Depth=1
	testl	%r15d, %r15d
	je	.LBB0_67
# BB#66:                                # %cond.true.467
                                        #   in Loop: Header=BB0_52 Depth=1
	movb	%r15b, %cl
	shll	%cl, %eax
	movzbl	2(%rsi), %esi
	movl	152(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %esi
	addl	%eax, %esi
	movl	%esi, %eax
.LBB0_67:                               # %cond.end.478
                                        #   in Loop: Header=BB0_52 Depth=1
	movzbl	%dl, %ebx
	movzbl	%al, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*%r12
	andl	88(%rsp), %eax          # 4-byte Folded Reload
	andl	80(%rsp), %ebx          # 4-byte Folded Reload
	orl	%eax, %ebx
	movb	%bl, (%r14)
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB0_68:                               # %cleanup
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rbp
	movq	104(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %r13
	addq	%rax, 144(%rsp)         # 8-byte Folded Spill
	addq	%rcx, 136(%rsp)         # 8-byte Folded Spill
	xorl	%eax, %eax
	cmpl	$1, %r14d
	leal	-1(%r14), %ecx
	movl	%ecx, %r14d
	jg	.LBB0_52
	jmp	.LBB0_123
.LBB0_69:                               # %if.else
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%r11d, %esi
	movq	%r10, 152(%rsp)         # 8-byte Spill
	callq	rop_get_run_op
	testl	%r14d, %r14d
	movq	32(%rsp), %r13          # 8-byte Reload
	jle	.LBB0_72
# BB#70:                                # %for.body.505.lr.ph
	movl	136(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	incl	%r14d
	.align	16, 0x90
.LBB0_71:                               # %for.body.505
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, 176(%rsp)
	movl	%r15d, 184(%rsp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movb	%al, 214(%rsp)
	leaq	160(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	*160(%rsp)
	addq	%r13, %rbp
	addq	144(%rsp), %rbx         # 8-byte Folded Reload
	decl	%r14d
	cmpl	$1, %r14d
	jg	.LBB0_71
.LBB0_72:                               # %do.body.515
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_122
# BB#73:                                # %if.then.517
	leaq	160(%rsp), %rdi
	callq	*%rax
.LBB0_122:
	xorl	%eax, %eax
.LBB0_123:                              # %cleanup.968
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_mono_strip_copy_rop_dev, .Lfunc_end0-mem_mono_strip_copy_rop_dev
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_26
	.quad	.LBB0_34
	.quad	.LBB0_38
	.quad	.LBB0_43

	.text
	.align	16, 0x90
	.type	mem_mono_map_rgb_color,@function
mem_mono_map_rgb_color:                 # @mem_mono_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_default_w_b_map_rgb_color
	movq	2584(%rbx), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	andl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	mem_mono_map_rgb_color, .Lfunc_end1-mem_mono_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mono_map_color_rgb,@function
mem_mono_map_color_rgb:                 # @mem_mono_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_default_w_b_map_color_rgb
	movq	2584(%rbx), %rcx
	movzbl	(%rcx), %ecx
	xorl	%ecx, %eax
	andl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_mono_map_color_rgb, .Lfunc_end2-mem_mono_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mono_fill_rectangle,@function
mem_mono_fill_rectangle:                # @mem_mono_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%r10d, %r10d
	testl	%esi, %esi
	cmovsl	%r10d, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %r10d
	andl	%edx, %eax
	addl	%eax, %r8d
	movl	%r10d, %edx
.LBB3_2:                                # %do.body.10
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	subl	%edx, %r10d
	cmpl	%r10d, %r8d
	cmovlel	%r8d, %r10d
	testl	%eax, %eax
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%r10d, %r10d
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rcx
	movq	2576(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	1736(%rdi), %edx
	negl	%r9d
	movq	%rcx, %rdi
	movl	%r9d, %ecx
	movl	%eax, %r8d
	movl	%r10d, %r9d
	callq	bits_fill_rectangle
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	mem_mono_fill_rectangle, .Lfunc_end3-mem_mono_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mono_copy_mono,@function
mem_mono_copy_mono:                     # @mem_mono_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 256
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	272(%rsp), %r10d
	movl	264(%rsp), %r8d
	movl	256(%rsp), %ebp
	movl	%ebp, %eax
	orl	%r9d, %eax
	js	.LBB4_2
# BB#1:
	movl	%ebp, %r13d
	jmp	.LBB4_5
.LBB4_2:                                # %if.then
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	%r9d, %eax
	leal	(%r8,%rax), %r8d
	xorl	%r13d, %r13d
	testl	%r9d, %r9d
	cmovsl	%r13d, %r9d
	subl	%eax, %edx
	testl	%ebp, %ebp
	js	.LBB4_4
# BB#3:
	movl	%ebp, %r13d
	jmp	.LBB4_5
.LBB4_4:                                # %if.then.5
	addl	%ebp, %r10d
	imull	%ecx, %ebp
	movslq	%ebp, %rax
	subq	%rax, %rsi
.LBB4_5:                                # %if.end.8
	movl	832(%rdi), %ebp
	movl	836(%rdi), %eax
	movl	%ebp, %ebx
	subl	%r9d, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	movl	%eax, %r12d
	subl	%r13d, %r12d
	cmpl	%r12d, %r10d
	cmovlel	%r10d, %r12d
	testl	%ebx, %ebx
	jle	.LBB4_272
# BB#6:                                 # %if.end.8
	testl	%r12d, %r12d
	jle	.LBB4_272
# BB#7:                                 # %do.end.26
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	movq	288(%rsp), %r14
	movq	280(%rsp), %rcx
	cmpl	$32, %ebx
	jl	.LBB4_9
# BB#8:                                 # %if.then.28
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	movl	$51, %ebp
	cmovel	%r8d, %ebp
	cmpq	$-1, %rcx
	movl	$34, %ecx
	cmovnel	%ebp, %ecx
	testq	%r14, %r14
	movl	$204, %ebp
	cmovel	%r8d, %ebp
	cmpq	$-1, %r14
	movl	$136, %eax
	cmovnel	%ebp, %eax
	orl	%ecx, %eax
	movl	%r12d, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%r13d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%eax, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movl	176(%rsp), %ecx         # 4-byte Reload
	callq	mem_mono_strip_copy_rop_dev
	jmp	.LBB4_273
.LBB4_9:                                # %if.end.41
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ebp, 112(%rsp)         # 4-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	leal	5(%r14,%rcx,4), %ecx
	movslq	%ecx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movq	%rbx, %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	copy_modes(,%rax,8), %r15d
	movl	copy_modes+4(,%rax,8), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movl	1736(%rdi), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movslq	%r13d, %rcx
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	movq	2576(%rdi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movl	%r9d, %edi
	sarl	$3, %edi
	andl	$-2, %edi
	movslq	%edi, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leaq	(%rax,%rcx), %r14
	movl	%edx, %edi
	sarl	$3, %edi
	andl	$-2, %edi
	movslq	%edi, %r11
	leaq	(%rsi,%r11), %r8
	movl	%r9d, %ecx
	movl	%r9d, 136(%rsp)         # 4-byte Spill
	andl	$15, %ecx
	movl	%edx, %edi
	andl	$15, %edi
	movl	%ecx, %ebx
	subl	%edi, %ebx
	leal	(%rbp,%rcx), %r13d
	movl	%r13d, %ebp
	addl	$-16, %ebp
	jle	.LBB4_10
# BB#94:                                # %if.else.609
	movq	%r13, 192(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	cmpl	%ebx, %ebp
	jle	.LBB4_95
# BB#129:                               # %if.else.844
	movl	%ebp, %eax
	sarl	$3, %eax
	andl	$-2, %eax
	movl	176(%rsp), %r13d        # 4-byte Reload
	subl	%eax, %r13d
	movq	184(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	movl	%edx, %eax
	movzwl	mono_copy_masks(%rax,%rax), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	andl	$15, %eax
	movzwl	mono_copy_masks(%rax,%rax), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	notl	%eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	cmpl	%edi, %edx
	movq	%rdx, %rdi
	movl	160(%rsp), %esi         # 4-byte Reload
	jne	.LBB4_178
# BB#130:                               # %if.then.860
	testl	%esi, %esi
	movl	136(%rsp), %ebx         # 4-byte Reload
	je	.LBB4_136
# BB#131:                               # %if.then.860
	cmpl	$1, %esi
	jne	.LBB4_132
# BB#149:                               # %for.cond.907.preheader
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	movl	176(%rsp), %r10d        # 4-byte Reload
	xorl	$65535, %r10d           # imm = 0xFFFF
	movq	192(%rsp), %rax         # 8-byte Reload
	addl	$-32, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%r13d, %r11d
	movl	%ecx, %r12d
	movq	%rdi, %rdx
	addl	$-33, %edx
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	notl	%eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	leaq	2(%rax,%rax), %r9
	incl	%eax
	andl	$3, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	negl	%eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB4_150:                              # %for.cond.907
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_153 Depth 2
                                        #     Child Loop BB4_157 Depth 2
	movzwl	(%r14), %eax
	andl	%r10d, %eax
	movzwl	(%r8), %ecx
	xorl	%r15d, %ecx
	andl	176(%rsp), %ecx         # 4-byte Folded Reload
	orl	%eax, %ecx
	movw	%cx, (%r14)
	movq	192(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB4_151
# BB#152:                               # %while.body.923.lr.ph
                                        #   in Loop: Header=BB4_150 Depth=1
	movq	160(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movl	152(%rsp), %esi         # 4-byte Reload
	movl	$0, %r13d
	movl	%eax, %ecx
	movq	%r8, %rdi
	movq	%r14, %rbx
                                        # implicit-def: EAX
	je	.LBB4_155
	.align	16, 0x90
.LBB4_153:                              # %while.body.923.prol
                                        #   Parent Loop BB4_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	movq	%r13, %rbx
	movzwl	2(%r8,%rbx), %ecx
	xorl	%r15d, %ecx
	movw	%cx, 2(%r14,%rbx)
	leal	-16(%rax), %ecx
	leaq	2(%rbx), %r13
	incl	%esi
	jne	.LBB4_153
# BB#154:                               #   in Loop: Header=BB4_150 Depth=1
	leaq	2(%r8,%rbx), %rdi
	leaq	2(%r14,%rbx), %rbx
.LBB4_155:                              # %while.body.923.lr.ph.split
                                        #   in Loop: Header=BB4_150 Depth=1
	cmpl	$48, %edx
	jb	.LBB4_159
# BB#156:                               # %while.body.923.lr.ph.split.split
                                        #   in Loop: Header=BB4_150 Depth=1
	addq	$8, %rdi
	addq	$8, %rbx
	.align	16, 0x90
.LBB4_157:                              # %while.body.923
                                        #   Parent Loop BB4_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	movzwl	-6(%rdi), %ecx
	xorl	%r15d, %ecx
	movw	%cx, -6(%rbx)
	movzwl	-4(%rdi), %ecx
	xorl	%r15d, %ecx
	movw	%cx, -4(%rbx)
	movzwl	-2(%rdi), %ecx
	xorl	%r15d, %ecx
	movw	%cx, -2(%rbx)
	movzwl	(%rdi), %ecx
	xorl	%r15d, %ecx
	movw	%cx, (%rbx)
	addq	$8, %rdi
	addq	$8, %rbx
	movl	%eax, %ecx
	addl	$-64, %ecx
	jns	.LBB4_157
# BB#158:                               # %while.cond.919.while.end.929_crit_edge.unr-lcssa
                                        #   in Loop: Header=BB4_150 Depth=1
	addl	$-48, %eax
.LBB4_159:                              # %while.cond.919.while.end.929_crit_edge
                                        #   in Loop: Header=BB4_150 Depth=1
	addq	%r9, %r14
	addq	%r9, %r8
	jmp	.LBB4_160
.LBB4_151:                              #   in Loop: Header=BB4_150 Depth=1
	movl	184(%rsp), %eax         # 4-byte Reload
.LBB4_160:                              # %while.end.929
                                        #   in Loop: Header=BB4_150 Depth=1
	testl	%eax, %eax
	jle	.LBB4_162
# BB#161:                               # %if.then.932
                                        #   in Loop: Header=BB4_150 Depth=1
	movw	2(%r14), %ax
	movl	144(%rsp), %ecx         # 4-byte Reload
	andw	%cx, %ax
	movzwl	2(%r8), %ecx
	xorl	%r15d, %ecx
	andl	168(%rsp), %ecx         # 4-byte Folded Reload
	orl	%eax, %ecx
	movw	%cx, 2(%r14)
.LBB4_162:                              # %if.end.944
                                        #   in Loop: Header=BB4_150 Depth=1
	addq	%r11, %r8
	addq	%r12, %r14
	xorl	%eax, %eax
	decl	%ebp
	jne	.LBB4_150
	jmp	.LBB4_273
.LBB4_10:                               # %if.then.62
	movq	%r11, 152(%rsp)         # 8-byte Spill
	movslq	%r13d, %rdx
	movzwl	mono_copy_masks(%rdx,%rdx), %r11d
	movl	%r11d, %r9d
	notl	%r9d
	movl	%ecx, %edx
	movzwl	mono_copy_masks(%rdx,%rdx), %edx
	andl	%edx, %r9d
	testl	%ebx, %ebx
	js	.LBB4_57
# BB#11:                                # %if.then.73
	cmpl	%edi, %ecx
	movl	136(%rsp), %ebp         # 4-byte Reload
	jne	.LBB4_32
# BB#12:                                # %if.then.76
	movl	160(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB4_21
# BB#13:                                # %if.then.76
	cmpl	$1, %ecx
	movl	176(%rsp), %ebx         # 4-byte Reload
	jne	.LBB4_14
# BB#18:                                # %for.cond.92.preheader
	movzwl	(%r14), %ecx
	movl	%edx, %ebp
	xorl	$65535, %ebp            # imm = 0xFFFF
	orl	%r11d, %ebp
	andl	%ebp, %ecx
	movzwl	(%r8), %edi
	xorl	%r15d, %edi
	andl	%r9d, %edi
	orl	%ecx, %edi
	movw	%di, (%r14)
	cmpl	$1, %r12d
	je	.LBB4_272
# BB#19:                                # %if.end.107.lr.ph
	movl	128(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	subl	120(%rsp), %ecx         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %ecx
	cmovgel	%ecx, %r10d
	addl	$2, %r10d
	movslq	%ebx, %rdx
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdi
	addq	%rdi, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	addq	%rcx, %rdi
	addq	%rdi, %rax
.LBB4_20:                               # %if.end.107
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %edi
	andl	%ebp, %edi
	movzwl	(%rsi), %ebx
	xorl	%r15d, %ebx
	andl	%r9d, %ebx
	orl	%edi, %ebx
	movw	%bx, (%rax)
	addq	%rdx, %rsi
	addq	%rcx, %rax
	incl	%r10d
	jne	.LBB4_20
	jmp	.LBB4_272
.LBB4_95:                               # %if.then.612
	movl	%r12d, %edi
	movl	$16, %r12d
	subl	%ebx, %r12d
	movl	%edx, %edx
	movzwl	mono_copy_masks(%rdx,%rdx), %edx
	movl	%edx, 192(%rsp)         # 4-byte Spill
	movslq	%ebp, %rdx
	movzwl	mono_copy_masks(%rdx,%rdx), %r13d
	movl	%r13d, %r9d
	notl	%r9d
	movl	160(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	je	.LBB4_101
# BB#96:                                # %if.then.612
	cmpl	$1, %edx
	jne	.LBB4_97
# BB#109:                               # %for.cond.691.preheader
	movl	192(%rsp), %edx         # 4-byte Reload
	xorl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, 168(%rsp)         # 4-byte Spill
	movq	%rbx, %rcx
	movslq	%ecx, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movslq	%r12d, %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movslq	176(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	144(%rsp), %rdx         # 8-byte Reload
	leaq	2(%rdx,%rax), %rdx
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	184(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_110:                              # %for.cond.691
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rdx), %edi
	andl	168(%rsp), %edi         # 4-byte Folded Reload
	cmpl	$7, %ecx
	movq	%rcx, %r14
	jg	.LBB4_112
# BB#111:                               # %cond.true.698
                                        #   in Loop: Header=BB4_110 Depth=1
	movzwl	(%r8), %ebx
	movl	%r13d, %eax
	movl	%ebx, %r13d
	movb	%r14b, %cl
	shrl	%cl, %r13d
	movq	160(%rsp), %rcx         # 8-byte Reload
	movzwl	right_masks2(%rcx,%rcx), %r11d
	andl	%r13d, %r11d
	movl	%eax, %r13d
	movb	%r12b, %cl
	shll	%cl, %ebx
	addl	%r11d, %ebx
	jmp	.LBB4_113
	.align	16, 0x90
.LBB4_112:                              # %cond.false.710
                                        #   in Loop: Header=BB4_110 Depth=1
	movzbl	(%r8), %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
.LBB4_113:                              # %cond.end.715
                                        #   in Loop: Header=BB4_110 Depth=1
	xorl	%r15d, %ebx
	andl	192(%rsp), %ebx         # 4-byte Folded Reload
	orl	%edi, %ebx
	movw	%bx, -2(%rdx)
	movw	(%rdx), %cx
	andw	%r13w, %cx
	movzwl	%cx, %ebx
	movzwl	(%r8), %edi
	cmpl	$7, %r12d
	jg	.LBB4_115
# BB#114:                               # %cond.true.728
                                        #   in Loop: Header=BB4_110 Depth=1
	movl	%edi, %esi
	movb	%r12b, %cl
	shll	%cl, %esi
	movq	152(%rsp), %rax         # 8-byte Reload
	movzwl	left_masks2(%rax,%rax), %eax
	andl	%esi, %eax
	movq	%r14, %rcx
	shrl	%cl, %edi
	addl	%eax, %edi
	jmp	.LBB4_116
	.align	16, 0x90
.LBB4_115:                              # %cond.false.740
                                        #   in Loop: Header=BB4_110 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movq	%r14, %rcx
	shrl	%cl, %edi
	movzbl	%dil, %edi
.LBB4_116:                              # %cond.end.746
                                        #   in Loop: Header=BB4_110 Depth=1
	xorl	%r15d, %edi
	andl	%r9d, %edi
	orl	%ebx, %edi
	movw	%di, (%rdx)
	addq	%rbp, %rdx
	addq	176(%rsp), %r8          # 8-byte Folded Reload
	incl	%r10d
	jne	.LBB4_110
	jmp	.LBB4_272
.LBB4_178:                              # %if.else.1016
	movl	%ebx, %r10d
	negl	%r10d
	andl	$15, %r10d
	leaq	2(%r8), %rdx
	testl	%ebx, %ebx
	cmovnsq	%r8, %rdx
	movq	%rdx, %r8
	shrl	$31, %ebx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movl	136(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %r9d
	subl	92(%rsp), %r9d          # 4-byte Folded Reload
	andl	$15, %r9d
	testl	%esi, %esi
	je	.LBB4_185
# BB#179:                               # %if.else.1016
	cmpl	$1, %esi
	jne	.LBB4_180
# BB#213:                               # %for.cond.1237.preheader
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movl	%r10d, %r11d
	movl	%r9d, %r12d
	movl	176(%rsp), %eax         # 4-byte Reload
	xorl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	notl	%eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	addl	$-33, %edi
	subl	%eax, %edi
	shrl	$4, %edi
	leaq	2(%rdi,%rdi), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB4_214:                              # %for.cond.1237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_224 Depth 2
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB4_215
# BB#218:                               # %cond.false.1262
                                        #   in Loop: Header=BB4_214 Depth=1
	movzwl	-2(%r8), %edx
	cmpl	$7, %r10d
	ja	.LBB4_220
# BB#219:                               # %cond.true.1265
                                        #   in Loop: Header=BB4_214 Depth=1
	movl	%edx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movzwl	left_masks2(%r11,%r11), %ebp
	andl	%eax, %ebp
	movb	%r9b, %cl
	shrl	%cl, %edx
	addl	%ebp, %edx
	movzbl	(%r8), %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	andl	$65280, %eax            # imm = 0xFF00
	addl	%edx, %eax
	jmp	.LBB4_221
	.align	16, 0x90
.LBB4_215:                              # %cond.true.1240
                                        #   in Loop: Header=BB4_214 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_217
# BB#216:                               # %cond.true.1243
                                        #   in Loop: Header=BB4_214 Depth=1
	movzwl	(%r8), %eax
	movl	%eax, %edx
	movb	%r9b, %cl
	shrl	%cl, %edx
	movzwl	right_masks2(%r12,%r12), %ebp
	andl	%edx, %ebp
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%ebp, %eax
	jmp	.LBB4_221
.LBB4_220:                              # %cond.false.1286
                                        #   in Loop: Header=BB4_214 Depth=1
	andl	$65280, %edx            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %edx
	movzbl	%dl, %edx
	movzwl	(%r8), %eax
	movl	%eax, %ebp
	movb	%r9b, %cl
	shrl	%cl, %ebp
	movzwl	right_masks2(%r12,%r12), %ebx
	andl	%ebp, %ebx
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	jmp	.LBB4_221
.LBB4_217:                              # %cond.false.1255
                                        #   in Loop: Header=BB4_214 Depth=1
	movzbl	(%r8), %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	andl	$65280, %eax            # imm = 0xFF00
.LBB4_221:                              # %cond.end.1309
                                        #   in Loop: Header=BB4_214 Depth=1
	movl	184(%rsp), %esi         # 4-byte Reload
	movzwl	(%r14), %ecx
	andl	192(%rsp), %ecx         # 4-byte Folded Reload
	xorl	%r15d, %eax
	andl	176(%rsp), %eax         # 4-byte Folded Reload
	orl	%ecx, %eax
	movw	%ax, (%r14)
	cmpl	$16, %esi
	jl	.LBB4_222
# BB#223:                               # %while.body.1323.lr.ph
                                        #   in Loop: Header=BB4_214 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %r13
	addq	$2, %r14
	movl	%esi, %edx
	movl	%esi, 184(%rsp)         # 4-byte Spill
	movq	%r8, %rax
	movq	%r8, 112(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_224:                              # %while.body.1323
                                        #   Parent Loop BB4_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax), %r8d
	cmpl	$7, %r10d
	ja	.LBB4_226
# BB#225:                               # %cond.true.1326
                                        #   in Loop: Header=BB4_224 Depth=2
	movl	%r8d, %ebp
	movb	%r10b, %cl
	shll	%cl, %ebp
	movzwl	left_masks2(%r11,%r11), %ebx
	andl	%ebp, %ebx
	movb	%r9b, %cl
	shrl	%cl, %r8d
	addl	%ebx, %r8d
	movzbl	2(%rax), %ebx
	addq	$2, %rax
	movb	%r10b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	addl	%r8d, %ebx
	jmp	.LBB4_227
	.align	16, 0x90
.LBB4_226:                              # %cond.false.1344
                                        #   in Loop: Header=BB4_224 Depth=2
	andl	$65280, %r8d            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %r8d
	movzbl	%r8b, %ebp
	movzwl	2(%rax), %ebx
	addq	$2, %rax
	movl	%ebx, %edi
	movb	%r9b, %cl
	shrl	%cl, %edi
	movzwl	right_masks2(%r12,%r12), %esi
	andl	%edi, %esi
	movb	%r10b, %cl
	shll	%cl, %ebx
	addl	%ebp, %ebx
	addl	%esi, %ebx
.LBB4_227:                              # %cond.end.1362
                                        #   in Loop: Header=BB4_224 Depth=2
	xorl	%r15d, %ebx
	movw	%bx, (%r14)
	addl	$-16, %edx
	addq	$2, %r14
	cmpl	$15, %edx
	jg	.LBB4_224
# BB#228:                               # %while.cond.1320.while.end.1369_crit_edge
                                        #   in Loop: Header=BB4_214 Depth=1
	movq	112(%rsp), %r8          # 8-byte Reload
	addq	136(%rsp), %r8          # 8-byte Folded Reload
	jmp	.LBB4_229
	.align	16, 0x90
.LBB4_222:                              #   in Loop: Header=BB4_214 Depth=1
	movl	%esi, %edx
	movl	%esi, 184(%rsp)         # 4-byte Spill
	movq	%r14, %r13
.LBB4_229:                              # %while.end.1369
                                        #   in Loop: Header=BB4_214 Depth=1
	testl	%edx, %edx
	jle	.LBB4_239
# BB#230:                               # %if.then.1372
                                        #   in Loop: Header=BB4_214 Depth=1
	movzwl	(%r8), %ebx
	cmpl	$7, %r10d
	ja	.LBB4_232
# BB#231:                               # %cond.true.1375
                                        #   in Loop: Header=BB4_214 Depth=1
	movl	%ebx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movzwl	left_masks2(%r11,%r11), %esi
	andl	%eax, %esi
	movb	%r9b, %cl
	shrl	%cl, %ebx
	addl	%esi, %ebx
	jmp	.LBB4_233
.LBB4_232:                              # %cond.false.1387
                                        #   in Loop: Header=BB4_214 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %ebx
.LBB4_233:                              # %cond.end.1393
                                        #   in Loop: Header=BB4_214 Depth=1
	cmpl	%r9d, %edx
	jle	.LBB4_238
# BB#234:                               # %if.then.1397
                                        #   in Loop: Header=BB4_214 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_236
# BB#235:                               # %cond.true.1400
                                        #   in Loop: Header=BB4_214 Depth=1
	movzwl	2(%r8), %eax
	movl	%eax, %edx
	movb	%r9b, %cl
	shrl	%cl, %edx
	movzwl	right_masks2(%r12,%r12), %esi
	andl	%edx, %esi
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%esi, %eax
	jmp	.LBB4_237
.LBB4_236:                              # %cond.false.1414
                                        #   in Loop: Header=BB4_214 Depth=1
	movzbl	2(%r8), %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	andl	$65280, %eax            # imm = 0xFF00
.LBB4_237:                              # %cond.end.1420
                                        #   in Loop: Header=BB4_214 Depth=1
	addl	%eax, %ebx
.LBB4_238:                              # %if.end.1423
                                        #   in Loop: Header=BB4_214 Depth=1
	movw	2(%r13), %ax
	movl	144(%rsp), %ecx         # 4-byte Reload
	andw	%cx, %ax
	xorl	%r15d, %ebx
	andl	168(%rsp), %ebx         # 4-byte Folded Reload
	orl	%eax, %ebx
	movw	%bx, 2(%r13)
.LBB4_239:                              # %if.end.1433
                                        #   in Loop: Header=BB4_214 Depth=1
	addq	128(%rsp), %r8          # 8-byte Folded Reload
	addq	120(%rsp), %r13         # 8-byte Folded Reload
	decl	160(%rsp)               # 4-byte Folded Spill
	movq	%r13, %r14
	jne	.LBB4_214
	jmp	.LBB4_272
.LBB4_57:                               # %if.else.270
	movl	%r12d, %edi
	cmpl	%ebx, %ebp
	movl	136(%rsp), %ebp         # 4-byte Reload
	jle	.LBB4_58
# BB#76:                                # %if.else.413
	movl	%ebx, %r12d
	negl	%r12d
	leal	16(%rbx), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movq	%rbx, %rcx
	movl	160(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB4_82
# BB#77:                                # %if.else.413
	cmpl	$1, %eax
	movq	152(%rsp), %rbx         # 8-byte Reload
	jne	.LBB4_78
# BB#87:                                # %for.cond.477.preheader
	xorl	$65535, %edx            # imm = 0xFFFF
	orl	%r11d, %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movslq	192(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	2(%rbx,%rsi), %rsi
	movslq	176(%rsp), %r11         # 4-byte Folded Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rcx, %rax
	movq	184(%rsp), %r13         # 8-byte Reload
.LBB4_88:                               # %for.cond.477
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %ebp
	andl	168(%rsp), %ebp         # 4-byte Folded Reload
	movzwl	-2(%rsi), %edi
	cmpl	$-7, %eax
	jl	.LBB4_90
# BB#89:                                # %cond.true.484
                                        #   in Loop: Header=BB4_88 Depth=1
	movl	%edi, %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	movq	160(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %edx
	andl	%ebx, %edx
	movl	192(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%rsi), %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	addl	%edi, %ebx
	jmp	.LBB4_91
.LBB4_90:                               # %cond.false.502
                                        #   in Loop: Header=BB4_88 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movl	192(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edi
	movl	%r9d, %r8d
	movq	%r13, %r9
	movzbl	%dil, %r13d
	movzwl	(%rsi), %ebx
	movl	%ebx, %edi
	shrl	%cl, %edi
	movq	144(%rsp), %rcx         # 8-byte Reload
	movzwl	right_masks2(%rcx,%rcx), %edx
	andl	%edi, %edx
	movb	%r12b, %cl
	shll	%cl, %ebx
	addl	%r13d, %ebx
	movq	%r9, %r13
	movl	%r8d, %r9d
	addl	%edx, %ebx
.LBB4_91:                               # %cond.end.520
                                        #   in Loop: Header=BB4_88 Depth=1
	xorl	%r15d, %ebx
	andl	%r9d, %ebx
	orl	%ebp, %ebx
	movw	%bx, (%r14)
	addq	%r13, %r14
	addq	%r11, %rsi
	incl	%r10d
	jne	.LBB4_88
	jmp	.LBB4_272
.LBB4_32:                               # %if.else
	movl	%r12d, %edi
	movl	$16, %r12d
	subl	%ebx, %r12d
	movl	160(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB4_38
# BB#33:                                # %if.else
	cmpl	$1, %eax
	jne	.LBB4_34
# BB#43:                                # %for.cond.180.preheader
	movl	%edx, %r13d
	xorl	$65535, %r13d           # imm = 0xFFFF
	orl	%r11d, %r13d
	movq	%rbx, %rbp
	movslq	%ebp, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movslq	176(%rsp), %r11         # 4-byte Folded Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	184(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB4_44:                               # %for.cond.180
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %ebx
	andl	%r13d, %ebx
	cmpl	$7, %ebp
	jg	.LBB4_46
# BB#45:                                # %cond.true.187
                                        #   in Loop: Header=BB4_44 Depth=1
	movzwl	(%r8), %edi
	movl	%edi, %esi
	movb	%bpl, %cl
	shrl	%cl, %esi
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	right_masks2(%rcx,%rcx), %edx
	andl	%esi, %edx
	movb	%r12b, %cl
	shll	%cl, %edi
	addl	%edx, %edi
	jmp	.LBB4_47
.LBB4_46:                               # %cond.false.199
                                        #   in Loop: Header=BB4_44 Depth=1
	movzbl	(%r8), %edi
	movb	%r12b, %cl
	shll	%cl, %edi
	andl	$65280, %edi            # imm = 0xFF00
.LBB4_47:                               # %cond.end.204
                                        #   in Loop: Header=BB4_44 Depth=1
	xorl	%r15d, %edi
	andl	%r9d, %edi
	orl	%ebx, %edi
	movw	%di, (%r14)
	addq	%rax, %r14
	addq	%r11, %r8
	incl	%r10d
	jne	.LBB4_44
	jmp	.LBB4_272
.LBB4_101:                              # %for.cond.624.preheader
	movq	%rbx, %rbp
	movslq	%ebp, %r14
	movslq	%r12d, %r13
	movslq	176(%rsp), %r11         # 4-byte Folded Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	2(%rcx,%rax), %rdx
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	.align	16, 0x90
.LBB4_102:                              # %for.cond.624
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ebp
	jg	.LBB4_104
# BB#103:                               # %cond.true.627
                                        #   in Loop: Header=BB4_102 Depth=1
	movzwl	(%r8), %ebx
	movl	%ebx, %edi
	movb	%bpl, %cl
	shrl	%cl, %edi
	movzwl	right_masks2(%r14,%r14), %esi
	andl	%edi, %esi
	movb	%r12b, %cl
	shll	%cl, %ebx
	addl	%esi, %ebx
	jmp	.LBB4_105
	.align	16, 0x90
.LBB4_104:                              # %cond.false.639
                                        #   in Loop: Header=BB4_102 Depth=1
	movzbl	(%r8), %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
.LBB4_105:                              # %cond.end.644
                                        #   in Loop: Header=BB4_102 Depth=1
	xorl	%r15d, %ebx
	andl	192(%rsp), %ebx         # 4-byte Folded Reload
	movzwl	-2(%rdx), %ecx
	orl	%ebx, %ecx
	movw	%cx, -2(%rdx)
	movzwl	(%r8), %ebx
	cmpl	$7, %r12d
	jg	.LBB4_107
# BB#106:                               # %cond.true.654
                                        #   in Loop: Header=BB4_102 Depth=1
	movl	%ebx, %esi
	movb	%r12b, %cl
	shll	%cl, %esi
	movzwl	left_masks2(%r13,%r13), %edi
	andl	%esi, %edi
	movb	%bpl, %cl
	shrl	%cl, %ebx
	addl	%edi, %ebx
	jmp	.LBB4_108
	.align	16, 0x90
.LBB4_107:                              # %cond.false.666
                                        #   in Loop: Header=BB4_102 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%bpl, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %ebx
.LBB4_108:                              # %cond.end.672
                                        #   in Loop: Header=BB4_102 Depth=1
	xorl	%r15d, %ebx
	andl	%r9d, %ebx
	movzwl	(%rdx), %ecx
	orl	%ebx, %ecx
	movw	%cx, (%rdx)
	addq	184(%rsp), %rdx         # 8-byte Folded Reload
	addq	%r11, %r8
	incl	%r10d
	jne	.LBB4_102
	jmp	.LBB4_272
.LBB4_97:                               # %if.then.612
	cmpl	$2, %edx
	movl	176(%rsp), %edx         # 4-byte Reload
	jne	.LBB4_122
# BB#98:                                # %for.cond.764.preheader
	movq	%rbx, %rbp
	movslq	%ebp, %r9
	xorl	$65535, 192(%rsp)       # 4-byte Folded Spill
                                        # imm = 0xFFFF
	movslq	%r12d, %r11
	movslq	%edx, %r14
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	2(%rcx,%rax), %rbx
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	184(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB4_99:                               # %for.cond.764
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ebp
	jg	.LBB4_117
# BB#100:                               # %cond.true.767
                                        #   in Loop: Header=BB4_99 Depth=1
	movzwl	(%r8), %edi
	movl	%edi, %eax
	movb	%bpl, %cl
	shrl	%cl, %eax
	movzwl	right_masks2(%r9,%r9), %esi
	andl	%eax, %esi
	movb	%r12b, %cl
	shll	%cl, %edi
	addl	%esi, %edi
	jmp	.LBB4_118
	.align	16, 0x90
.LBB4_117:                              # %cond.false.779
                                        #   in Loop: Header=BB4_99 Depth=1
	movzbl	(%r8), %edi
	movb	%r12b, %cl
	shll	%cl, %edi
	andl	$65280, %edi            # imm = 0xFF00
.LBB4_118:                              # %cond.end.784
                                        #   in Loop: Header=BB4_99 Depth=1
	xorl	%r15d, %edi
	orl	192(%rsp), %edi         # 4-byte Folded Reload
	movzwl	-2(%rbx), %eax
	andl	%edi, %eax
	movw	%ax, -2(%rbx)
	movzwl	(%r8), %edi
	cmpl	$7, %r12d
	jg	.LBB4_120
# BB#119:                               # %cond.true.795
                                        #   in Loop: Header=BB4_99 Depth=1
	movl	%edi, %eax
	movb	%r12b, %cl
	shll	%cl, %eax
	movzwl	left_masks2(%r11,%r11), %esi
	andl	%eax, %esi
	movb	%bpl, %cl
	shrl	%cl, %edi
	addl	%esi, %edi
	jmp	.LBB4_121
	.align	16, 0x90
.LBB4_120:                              # %cond.false.807
                                        #   in Loop: Header=BB4_99 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movb	%bpl, %cl
	shrl	%cl, %edi
	movzbl	%dil, %edi
.LBB4_121:                              # %cond.end.813
                                        #   in Loop: Header=BB4_99 Depth=1
	xorl	%r15d, %edi
	orl	%r13d, %edi
	movzwl	(%rbx), %eax
	andl	%edi, %eax
	movw	%ax, (%rbx)
	addq	%rdx, %rbx
	addq	%r14, %r8
	incl	%r10d
	jne	.LBB4_99
	jmp	.LBB4_272
.LBB4_58:                               # %if.then.273
	leal	16(%rbx), %r12d
	movl	%ebx, %r13d
	negl	%r13d
	movl	160(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	movl	176(%rsp), %eax         # 4-byte Reload
	je	.LBB4_64
# BB#59:                                # %if.then.273
	cmpl	$1, %esi
	jne	.LBB4_60
# BB#69:                                # %for.cond.319.preheader
	xorl	$65535, %edx            # imm = 0xFFFF
	orl	%r11d, %edx
	movl	%edx, %r11d
	movslq	%r13d, %rdx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	%r13d, 192(%rsp)        # 4-byte Spill
	movslq	%eax, %r13
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rbx, %rax
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB4_70:                               # %for.cond.319
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %edi
	andl	%r11d, %edi
	movzwl	(%r8), %ebx
	cmpl	$-7, %eax
	jl	.LBB4_72
# BB#71:                                # %cond.true.326
                                        #   in Loop: Header=BB4_70 Depth=1
	movl	%ebx, %edx
	movl	192(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %edx
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %esi
	andl	%edx, %esi
	movb	%r12b, %cl
	shrl	%cl, %ebx
	addl	%esi, %ebx
	jmp	.LBB4_73
.LBB4_72:                               # %cond.false.338
                                        #   in Loop: Header=BB4_70 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%r12b, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %ebx
.LBB4_73:                               # %cond.end.344
                                        #   in Loop: Header=BB4_70 Depth=1
	xorl	%r15d, %ebx
	andl	%r9d, %ebx
	orl	%edi, %ebx
	movw	%bx, (%r14)
	addq	%rbp, %r14
	addq	%r13, %r8
	incl	%r10d
	jne	.LBB4_70
	jmp	.LBB4_272
.LBB4_136:                              # %for.cond.863.preheader
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movl	%r12d, %ebp
	movq	192(%rsp), %rax         # 8-byte Reload
	leal	-32(%rax), %r10d
	movl	%r13d, %r9d
	movl	%ecx, %r11d
	addl	$-33, %edi
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	notl	%ecx
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	movq	%rdi, %r13
	subl	%ecx, %r13d
	shrl	$4, %r13d
	leaq	2(%r13,%r13), %r12
	movl	%r13d, %ecx
	andl	$1, %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	addl	$-48, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB4_137:                              # %for.cond.863
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_143 Depth 2
	movzwl	(%r8), %ecx
	xorl	%r15d, %ecx
	andl	176(%rsp), %ecx         # 4-byte Folded Reload
	movzwl	(%r14), %edx
	orl	%ecx, %edx
	movw	%dx, (%r14)
	testl	%r10d, %r10d
	js	.LBB4_138
# BB#139:                               # %while.body.lr.ph
                                        #   in Loop: Header=BB4_137 Depth=1
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	movl	%r10d, %edi
	movq	%r8, %rcx
	movq	%r14, %rbx
	jne	.LBB4_141
# BB#140:                               # %while.body.prol
                                        #   in Loop: Header=BB4_137 Depth=1
	leaq	2(%r8), %rcx
	leaq	2(%r14), %rbx
	movzwl	2(%r8), %edx
	xorl	%r15d, %edx
	movzwl	2(%r14), %edi
	orl	%edx, %edi
	movw	%di, 2(%r14)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edi
.LBB4_141:                              # %while.body.lr.ph.split
                                        #   in Loop: Header=BB4_137 Depth=1
	testl	%r13d, %r13d
	movl	%r10d, %edx
	je	.LBB4_145
# BB#142:                               # %while.body.lr.ph.split.split
                                        #   in Loop: Header=BB4_137 Depth=1
	addq	$4, %rcx
	addq	$4, %rbx
	.align	16, 0x90
.LBB4_143:                              # %while.body
                                        #   Parent Loop BB4_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %edx
	movzwl	-2(%rcx), %esi
	xorl	%r15d, %esi
	movzwl	-2(%rbx), %eax
	orl	%esi, %eax
	movw	%ax, -2(%rbx)
	movzwl	(%rcx), %eax
	xorl	%r15d, %eax
	movzwl	(%rbx), %esi
	orl	%eax, %esi
	movw	%si, (%rbx)
	addq	$4, %rcx
	addq	$4, %rbx
	addl	$-32, %edi
	jns	.LBB4_143
# BB#144:                               # %while.cond.while.end_crit_edge.unr-lcssa
                                        #   in Loop: Header=BB4_137 Depth=1
	addl	$-16, %edx
.LBB4_145:                              # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB4_137 Depth=1
	addq	%r12, %r14
	addq	%r12, %r8
	jmp	.LBB4_146
.LBB4_138:                              #   in Loop: Header=BB4_137 Depth=1
	movl	184(%rsp), %edx         # 4-byte Reload
.LBB4_146:                              # %while.end
                                        #   in Loop: Header=BB4_137 Depth=1
	testl	%edx, %edx
	jle	.LBB4_148
# BB#147:                               # %if.then.883
                                        #   in Loop: Header=BB4_137 Depth=1
	movzwl	2(%r8), %eax
	xorl	%r15d, %eax
	andl	168(%rsp), %eax         # 4-byte Folded Reload
	movzwl	2(%r14), %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%r14)
.LBB4_148:                              # %if.end.892
                                        #   in Loop: Header=BB4_137 Depth=1
	addq	%r9, %r8
	addq	%r11, %r14
	decl	%ebp
	jne	.LBB4_137
	jmp	.LBB4_272
.LBB4_132:                              # %if.then.860
	movl	%ebp, %eax
	movl	%r12d, %ebp
	cmpl	$2, %esi
	jne	.LBB4_173
# BB#133:                               # %for.cond.959.preheader
	movl	%eax, 184(%rsp)         # 4-byte Spill
	xorl	$65535, 176(%rsp)       # 4-byte Folded Spill
                                        # imm = 0xFFFF
	movq	192(%rsp), %rax         # 8-byte Reload
	leal	-32(%rax), %r10d
	movl	%r13d, %r9d
	movl	%ecx, %r11d
	addl	$-33, %edi
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	notl	%ecx
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	movq	%rdi, %r13
	subl	%ecx, %r13d
	shrl	$4, %r13d
	leaq	2(%r13,%r13), %r12
	movl	%r13d, %ecx
	andl	$1, %ecx
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	addl	$-48, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB4_134:                              # %for.cond.959
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_167 Depth 2
	movzwl	(%r8), %ecx
	xorl	%r15d, %ecx
	orl	176(%rsp), %ecx         # 4-byte Folded Reload
	movzwl	(%r14), %edx
	andl	%ecx, %edx
	movw	%dx, (%r14)
	testl	%r10d, %r10d
	js	.LBB4_135
# BB#163:                               # %while.body.973.lr.ph
                                        #   in Loop: Header=BB4_134 Depth=1
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	movl	%r10d, %edi
	movq	%r8, %rcx
	movq	%r14, %rbx
	jne	.LBB4_165
# BB#164:                               # %while.body.973.prol
                                        #   in Loop: Header=BB4_134 Depth=1
	leaq	2(%r8), %rcx
	leaq	2(%r14), %rbx
	movzwl	2(%r8), %edx
	xorl	%r15d, %edx
	movzwl	2(%r14), %edi
	andl	%edx, %edi
	movw	%di, 2(%r14)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edi
.LBB4_165:                              # %while.body.973.lr.ph.split
                                        #   in Loop: Header=BB4_134 Depth=1
	testl	%r13d, %r13d
	movl	%r10d, %edx
	je	.LBB4_169
# BB#166:                               # %while.body.973.lr.ph.split.split
                                        #   in Loop: Header=BB4_134 Depth=1
	addq	$4, %rcx
	addq	$4, %rbx
	.align	16, 0x90
.LBB4_167:                              # %while.body.973
                                        #   Parent Loop BB4_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %edx
	movzwl	-2(%rcx), %esi
	xorl	%r15d, %esi
	movzwl	-2(%rbx), %eax
	andl	%esi, %eax
	movw	%ax, -2(%rbx)
	movzwl	(%rcx), %eax
	xorl	%r15d, %eax
	movzwl	(%rbx), %esi
	andl	%eax, %esi
	movw	%si, (%rbx)
	addq	$4, %rcx
	addq	$4, %rbx
	addl	$-32, %edi
	jns	.LBB4_167
# BB#168:                               # %while.cond.969.while.end.981_crit_edge.unr-lcssa
                                        #   in Loop: Header=BB4_134 Depth=1
	addl	$-16, %edx
.LBB4_169:                              # %while.cond.969.while.end.981_crit_edge
                                        #   in Loop: Header=BB4_134 Depth=1
	addq	%r12, %r14
	addq	%r12, %r8
	jmp	.LBB4_170
.LBB4_135:                              #   in Loop: Header=BB4_134 Depth=1
	movl	184(%rsp), %edx         # 4-byte Reload
.LBB4_170:                              # %while.end.981
                                        #   in Loop: Header=BB4_134 Depth=1
	testl	%edx, %edx
	jle	.LBB4_172
# BB#171:                               # %if.then.984
                                        #   in Loop: Header=BB4_134 Depth=1
	movzwl	2(%r8), %eax
	xorl	%r15d, %eax
	orl	144(%rsp), %eax         # 4-byte Folded Reload
	movzwl	2(%r14), %ecx
	andl	%eax, %ecx
	movw	%cx, 2(%r14)
.LBB4_172:                              # %if.end.994
                                        #   in Loop: Header=BB4_134 Depth=1
	addq	%r9, %r8
	addq	%r11, %r14
	decl	%ebp
	jne	.LBB4_134
	jmp	.LBB4_272
.LBB4_185:                              # %for.cond.1030.preheader
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movl	%r10d, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%r9d, %r12d
	movl	%r13d, %r11d
	movq	%r11, 128(%rsp)         # 8-byte Spill
	movl	%ecx, %r13d
	movq	%r13, 120(%rsp)         # 8-byte Spill
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	notl	%eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	addl	$-33, %edi
	subl	%eax, %edi
	shrl	$4, %edi
	leaq	2(%rdi,%rdi), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_186:                              # %for.cond.1030
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_197 Depth 2
	testl	%ebp, %ebp
	je	.LBB4_187
# BB#190:                               # %cond.false.1055
                                        #   in Loop: Header=BB4_186 Depth=1
	movzwl	-2(%r8), %ebx
	cmpl	$7, %r10d
	ja	.LBB4_192
# BB#191:                               # %cond.true.1058
                                        #   in Loop: Header=BB4_186 Depth=1
	movl	%ebx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %edx
	andl	%eax, %edx
	movb	%r9b, %cl
	shrl	%cl, %ebx
	addl	%edx, %ebx
	movzbl	(%r8), %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	andl	$65280, %edx            # imm = 0xFF00
	addl	%ebx, %edx
	jmp	.LBB4_194
	.align	16, 0x90
.LBB4_187:                              # %cond.true.1033
                                        #   in Loop: Header=BB4_186 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_189
# BB#188:                               # %cond.true.1036
                                        #   in Loop: Header=BB4_186 Depth=1
	movzwl	(%r8), %edx
	movl	%edx, %ebx
	movb	%r9b, %cl
	shrl	%cl, %ebx
	movzwl	right_masks2(%r12,%r12), %eax
	andl	%ebx, %eax
	movb	%r10b, %cl
	shll	%cl, %edx
	jmp	.LBB4_193
.LBB4_192:                              # %cond.false.1079
                                        #   in Loop: Header=BB4_186 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %edi
	movzwl	(%r8), %edx
	movl	%edx, %ebx
	movb	%r9b, %cl
	shrl	%cl, %ebx
	movzwl	right_masks2(%r12,%r12), %eax
	andl	%ebx, %eax
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	%edi, %edx
.LBB4_193:                              # %cond.end.1102
                                        #   in Loop: Header=BB4_186 Depth=1
	addl	%eax, %edx
	jmp	.LBB4_194
.LBB4_189:                              # %cond.false.1048
                                        #   in Loop: Header=BB4_186 Depth=1
	movzbl	(%r8), %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	andl	$65280, %edx            # imm = 0xFF00
.LBB4_194:                              # %cond.end.1102
                                        #   in Loop: Header=BB4_186 Depth=1
	movl	184(%rsp), %ecx         # 4-byte Reload
	xorl	%r15d, %edx
	andl	176(%rsp), %edx         # 4-byte Folded Reload
	movzwl	(%r14), %eax
	orl	%edx, %eax
	movw	%ax, (%r14)
	cmpl	$16, %ecx
	jl	.LBB4_195
# BB#196:                               # %while.body.1113.lr.ph
                                        #   in Loop: Header=BB4_186 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rsi
	addq	$2, %r14
	movl	%ecx, %edx
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	movq	%r8, %r13
	.align	16, 0x90
.LBB4_197:                              # %while.body.1113
                                        #   Parent Loop BB4_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r13), %r11d
	cmpl	$7, %r10d
	ja	.LBB4_199
# BB#198:                               # %cond.true.1116
                                        #   in Loop: Header=BB4_197 Depth=2
	movl	%r11d, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %ebx
	andl	%eax, %ebx
	movb	%r9b, %cl
	shrl	%cl, %r11d
	addl	%ebx, %r11d
	movzbl	2(%r13), %ebx
	addq	$2, %r13
	movb	%r10b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	addl	%r11d, %ebx
	jmp	.LBB4_200
	.align	16, 0x90
.LBB4_199:                              # %cond.false.1134
                                        #   in Loop: Header=BB4_197 Depth=2
	andl	$65280, %r11d           # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %r11d
	movzbl	%r11b, %eax
	movzwl	2(%r13), %ebx
	addq	$2, %r13
	movl	%ebx, %ebp
	movb	%r9b, %cl
	shrl	%cl, %ebp
	movzwl	right_masks2(%r12,%r12), %edi
	andl	%ebp, %edi
	movb	%r10b, %cl
	shll	%cl, %ebx
	addl	%eax, %ebx
	addl	%edi, %ebx
.LBB4_200:                              # %cond.end.1152
                                        #   in Loop: Header=BB4_197 Depth=2
	xorl	%r15d, %ebx
	movzwl	(%r14), %eax
	orl	%ebx, %eax
	movw	%ax, (%r14)
	addl	$-16, %edx
	addq	$2, %r14
	cmpl	$15, %edx
	jg	.LBB4_197
# BB#201:                               # %while.cond.1110.while.end.1161_crit_edge
                                        #   in Loop: Header=BB4_186 Depth=1
	addq	144(%rsp), %r8          # 8-byte Folded Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	jmp	.LBB4_202
	.align	16, 0x90
.LBB4_195:                              #   in Loop: Header=BB4_186 Depth=1
	movl	%ecx, %edx
	movl	%ecx, 184(%rsp)         # 4-byte Spill
	movq	%r14, %rsi
.LBB4_202:                              # %while.end.1161
                                        #   in Loop: Header=BB4_186 Depth=1
	testl	%edx, %edx
	jle	.LBB4_212
# BB#203:                               # %if.then.1164
                                        #   in Loop: Header=BB4_186 Depth=1
	movzwl	(%r8), %ebx
	cmpl	$7, %r10d
	ja	.LBB4_205
# BB#204:                               # %cond.true.1167
                                        #   in Loop: Header=BB4_186 Depth=1
	movl	%ebx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %edi
	andl	%eax, %edi
	movb	%r9b, %cl
	shrl	%cl, %ebx
	addl	%edi, %ebx
	jmp	.LBB4_206
.LBB4_205:                              # %cond.false.1179
                                        #   in Loop: Header=BB4_186 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %ebx
.LBB4_206:                              # %cond.end.1185
                                        #   in Loop: Header=BB4_186 Depth=1
	cmpl	%r9d, %edx
	jle	.LBB4_211
# BB#207:                               # %if.then.1189
                                        #   in Loop: Header=BB4_186 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_209
# BB#208:                               # %cond.true.1192
                                        #   in Loop: Header=BB4_186 Depth=1
	movzwl	2(%r8), %edx
	movl	%edx, %eax
	movb	%r9b, %cl
	shrl	%cl, %eax
	movzwl	right_masks2(%r12,%r12), %edi
	andl	%eax, %edi
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	%edi, %edx
	jmp	.LBB4_210
.LBB4_209:                              # %cond.false.1206
                                        #   in Loop: Header=BB4_186 Depth=1
	movzbl	2(%r8), %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	andl	$65280, %edx            # imm = 0xFF00
.LBB4_210:                              # %cond.end.1212
                                        #   in Loop: Header=BB4_186 Depth=1
	addl	%edx, %ebx
.LBB4_211:                              # %if.end.1215
                                        #   in Loop: Header=BB4_186 Depth=1
	xorl	%r15d, %ebx
	andl	168(%rsp), %ebx         # 4-byte Folded Reload
	movzwl	2(%rsi), %eax
	orl	%ebx, %eax
	movw	%ax, 2(%rsi)
.LBB4_212:                              # %if.end.1222
                                        #   in Loop: Header=BB4_186 Depth=1
	addq	%r11, %r8
	addq	%r13, %rsi
	decl	160(%rsp)               # 4-byte Folded Spill
	movq	%rsi, %r14
	jne	.LBB4_186
	jmp	.LBB4_272
.LBB4_180:                              # %if.else.1016
	cmpl	$2, %esi
	jne	.LBB4_263
# BB#181:                               # %for.cond.1448.preheader
	movl	%r10d, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%r9d, %r11d
	xorl	$65535, 176(%rsp)       # 4-byte Folded Spill
                                        # imm = 0xFFFF
	movl	%r13d, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	decl	%ebx
	subl	112(%rsp), %ebx         # 4-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	notl	%eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	addl	$-33, %edi
	subl	%eax, %edi
	shrl	$4, %edi
	leaq	2(%rdi,%rdi), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB4_182:                              # %for.cond.1448
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_247 Depth 2
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB4_183
# BB#241:                               # %cond.false.1473
                                        #   in Loop: Header=BB4_182 Depth=1
	movzwl	-2(%r8), %edx
	cmpl	$7, %r10d
	ja	.LBB4_243
# BB#242:                               # %cond.true.1476
                                        #   in Loop: Header=BB4_182 Depth=1
	movl	%edx, %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %esi
	andl	%eax, %esi
	movb	%r9b, %cl
	shrl	%cl, %edx
	addl	%esi, %edx
	movzbl	(%r8), %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	andl	$65280, %eax            # imm = 0xFF00
	addl	%edx, %eax
	jmp	.LBB4_244
.LBB4_183:                              # %cond.true.1451
                                        #   in Loop: Header=BB4_182 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_240
# BB#184:                               # %cond.true.1454
                                        #   in Loop: Header=BB4_182 Depth=1
	movzwl	(%r8), %eax
	movl	%eax, %edx
	movb	%r9b, %cl
	shrl	%cl, %edx
	movzwl	right_masks2(%r11,%r11), %esi
	andl	%edx, %esi
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%esi, %eax
	jmp	.LBB4_244
.LBB4_243:                              # %cond.false.1497
                                        #   in Loop: Header=BB4_182 Depth=1
	andl	$65280, %edx            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %edx
	movzbl	%dl, %edx
	movzwl	(%r8), %eax
	movl	%eax, %esi
	movb	%r9b, %cl
	shrl	%cl, %esi
	movl	%ebp, %edi
	movzwl	right_masks2(%r11,%r11), %ebx
	andl	%esi, %ebx
	movb	%r10b, %cl
	shll	%cl, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	jmp	.LBB4_244
.LBB4_240:                              # %cond.false.1466
                                        #   in Loop: Header=BB4_182 Depth=1
	movzbl	(%r8), %eax
	movb	%r10b, %cl
	shll	%cl, %eax
	andl	$65280, %eax            # imm = 0xFF00
.LBB4_244:                              # %cond.end.1520
                                        #   in Loop: Header=BB4_182 Depth=1
	xorl	%r15d, %eax
	orl	176(%rsp), %eax         # 4-byte Folded Reload
	movzwl	(%r14), %ecx
	andl	%eax, %ecx
	movw	%cx, (%r14)
	cmpl	$16, %ebp
	jl	.LBB4_245
# BB#246:                               # %while.body.1532.lr.ph
                                        #   in Loop: Header=BB4_182 Depth=1
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %r13
	addq	$2, %r14
	movl	%ebp, %edx
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movq	%r8, %rax
	.align	16, 0x90
.LBB4_247:                              # %while.body.1532
                                        #   Parent Loop BB4_182 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax), %r12d
	cmpl	$7, %r10d
	ja	.LBB4_249
# BB#248:                               # %cond.true.1535
                                        #   in Loop: Header=BB4_247 Depth=2
	movl	%r12d, %esi
	movb	%r10b, %cl
	shll	%cl, %esi
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %ebx
	andl	%esi, %ebx
	movb	%r9b, %cl
	shrl	%cl, %r12d
	addl	%ebx, %r12d
	movzbl	2(%rax), %ebx
	addq	$2, %rax
	movb	%r10b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	addl	%r12d, %ebx
	jmp	.LBB4_250
	.align	16, 0x90
.LBB4_249:                              # %cond.false.1553
                                        #   in Loop: Header=BB4_247 Depth=2
	andl	$65280, %r12d           # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %r12d
	movzbl	%r12b, %esi
	movzwl	2(%rax), %ebx
	addq	$2, %rax
	movl	%ebx, %ebp
	movb	%r9b, %cl
	shrl	%cl, %ebp
	movzwl	right_masks2(%r11,%r11), %edi
	andl	%ebp, %edi
	movb	%r10b, %cl
	shll	%cl, %ebx
	addl	%esi, %ebx
	addl	%edi, %ebx
.LBB4_250:                              # %cond.end.1571
                                        #   in Loop: Header=BB4_247 Depth=2
	xorl	%r15d, %ebx
	movzwl	(%r14), %ecx
	andl	%ebx, %ecx
	movw	%cx, (%r14)
	addl	$-16, %edx
	addq	$2, %r14
	cmpl	$15, %edx
	jg	.LBB4_247
# BB#251:                               # %while.cond.1529.while.end.1580_crit_edge
                                        #   in Loop: Header=BB4_182 Depth=1
	addq	136(%rsp), %r8          # 8-byte Folded Reload
	movl	160(%rsp), %r12d        # 4-byte Reload
	movl	184(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB4_252
.LBB4_245:                              #   in Loop: Header=BB4_182 Depth=1
	movl	%ebp, %edx
	movq	%r14, %r13
.LBB4_252:                              # %while.end.1580
                                        #   in Loop: Header=BB4_182 Depth=1
	testl	%edx, %edx
	jle	.LBB4_262
# BB#253:                               # %if.then.1583
                                        #   in Loop: Header=BB4_182 Depth=1
	movzwl	(%r8), %eax
	cmpl	$7, %r10d
	ja	.LBB4_255
# BB#254:                               # %cond.true.1586
                                        #   in Loop: Header=BB4_182 Depth=1
	movl	%eax, %esi
	movb	%r10b, %cl
	shll	%cl, %esi
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %edi
	andl	%esi, %edi
	movb	%r9b, %cl
	shrl	%cl, %eax
	addl	%edi, %eax
	jmp	.LBB4_256
.LBB4_255:                              # %cond.false.1598
                                        #   in Loop: Header=BB4_182 Depth=1
	andl	$65280, %eax            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %eax
	movzbl	%al, %eax
.LBB4_256:                              # %cond.end.1604
                                        #   in Loop: Header=BB4_182 Depth=1
	cmpl	%r9d, %edx
	jle	.LBB4_261
# BB#257:                               # %if.then.1608
                                        #   in Loop: Header=BB4_182 Depth=1
	cmpl	$7, %r9d
	ja	.LBB4_259
# BB#258:                               # %cond.true.1611
                                        #   in Loop: Header=BB4_182 Depth=1
	movzwl	2(%r8), %edx
	movl	%edx, %esi
	movb	%r9b, %cl
	shrl	%cl, %esi
	movzwl	right_masks2(%r11,%r11), %edi
	andl	%esi, %edi
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	%edi, %edx
	jmp	.LBB4_260
.LBB4_259:                              # %cond.false.1625
                                        #   in Loop: Header=BB4_182 Depth=1
	movzbl	2(%r8), %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	andl	$65280, %edx            # imm = 0xFF00
.LBB4_260:                              # %cond.end.1631
                                        #   in Loop: Header=BB4_182 Depth=1
	addl	%edx, %eax
.LBB4_261:                              # %if.end.1634
                                        #   in Loop: Header=BB4_182 Depth=1
	xorl	%r15d, %eax
	orl	144(%rsp), %eax         # 4-byte Folded Reload
	movzwl	2(%r13), %ecx
	andl	%eax, %ecx
	movw	%cx, 2(%r13)
.LBB4_262:                              # %if.end.1642
                                        #   in Loop: Header=BB4_182 Depth=1
	addq	168(%rsp), %r8          # 8-byte Folded Reload
	addq	128(%rsp), %r13         # 8-byte Folded Reload
	decl	%r12d
	movq	%r13, %r14
	jne	.LBB4_182
	jmp	.LBB4_272
.LBB4_122:                              # %sw.default.832
	movl	$-1, %eax
	movl	$64764, %ecx            # imm = 0xFCFC
	movq	96(%rsp), %rdx          # 8-byte Reload
	btq	%rdx, %rcx
	movl	136(%rsp), %esi         # 4-byte Reload
	jae	.LBB4_273
# BB#123:                               # %cond.false.835
	movl	%esi, %eax
	movl	128(%rsp), %edx         # 4-byte Reload
	orl	%edx, %eax
	js	.LBB4_125
# BB#124:
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB4_126
.LBB4_21:                               # %for.cond.preheader
	movzwl	(%r8), %edx
	xorl	%r15d, %edx
	andl	%r9d, %edx
	movzwl	(%r14), %edi
	orl	%edx, %edi
	movw	%di, (%r14)
	cmpl	$1, %r12d
	movl	176(%rsp), %edx         # 4-byte Reload
	je	.LBB4_272
# BB#22:                                # %if.end.86.lr.ph
	movl	128(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	subl	120(%rsp), %ecx         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %ecx
	cmovgel	%ecx, %r10d
	addl	$2, %r10d
	movslq	%edx, %rdx
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdi
	addq	%rdi, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	addq	%rcx, %rdi
	addq	%rdi, %rax
.LBB4_23:                               # %if.end.86
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %edi
	xorl	%r15d, %edi
	andl	%r9d, %edi
	movzwl	(%rax), %ebx
	orl	%edi, %ebx
	movw	%bx, (%rax)
	addq	%rdx, %rsi
	addq	%rcx, %rax
	incl	%r10d
	jne	.LBB4_23
	jmp	.LBB4_272
.LBB4_14:                               # %if.then.76
	cmpl	$2, %ecx
	jne	.LBB4_24
# BB#15:                                # %for.cond.114.preheader
	movzwl	(%r8), %ecx
	xorl	%r15d, %ecx
	movl	%edx, %ebp
	xorl	$65535, %ebp            # imm = 0xFFFF
	orl	%r11d, %ebp
	orl	%ebp, %ecx
	movzwl	(%r14), %edi
	andl	%ecx, %edi
	movw	%di, (%r14)
	cmpl	$1, %r12d
	je	.LBB4_272
# BB#16:                                # %if.end.127.lr.ph
	movl	128(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	subl	120(%rsp), %ecx         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %ecx
	cmovgel	%ecx, %r10d
	addl	$2, %r10d
	movslq	%ebx, %rdx
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdi
	addq	%rdi, %rsi
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	addq	%rcx, %rdi
	addq	%rdi, %rax
.LBB4_17:                               # %if.end.127
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %edi
	xorl	%r15d, %edi
	orl	%ebp, %edi
	movzwl	(%rax), %ebx
	andl	%edi, %ebx
	movw	%bx, (%rax)
	addq	%rdx, %rsi
	addq	%rcx, %rax
	incl	%r10d
	jne	.LBB4_17
	jmp	.LBB4_272
.LBB4_38:                               # %for.cond.141.preheader
	movq	%rbx, %rbp
	movslq	%ebp, %r11
	movslq	176(%rsp), %rdx         # 4-byte Folded Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	184(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB4_39:                               # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ebp
	jg	.LBB4_41
# BB#40:                                # %cond.true.144
                                        #   in Loop: Header=BB4_39 Depth=1
	movzwl	(%r8), %ebx
	movl	%ebx, %edi
	movb	%bpl, %cl
	shrl	%cl, %edi
	movzwl	right_masks2(%r11,%r11), %esi
	andl	%edi, %esi
	movb	%r12b, %cl
	shll	%cl, %ebx
	addl	%esi, %ebx
	jmp	.LBB4_42
.LBB4_41:                               # %cond.false.156
                                        #   in Loop: Header=BB4_39 Depth=1
	movzbl	(%r8), %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
.LBB4_42:                               # %cond.end.161
                                        #   in Loop: Header=BB4_39 Depth=1
	xorl	%r15d, %ebx
	andl	%r9d, %ebx
	movzwl	(%r14), %ecx
	orl	%ebx, %ecx
	movw	%cx, (%r14)
	addq	%rax, %r14
	addq	%rdx, %r8
	incl	%r10d
	jne	.LBB4_39
	jmp	.LBB4_272
.LBB4_34:                               # %if.else
	cmpl	$2, %eax
	jne	.LBB4_50
# BB#35:                                # %for.cond.222.preheader
	movq	%rbx, %rax
	movslq	%eax, %r9
	xorl	$65535, %edx            # imm = 0xFFFF
	orl	%r11d, %edx
	movslq	176(%rsp), %r11         # 4-byte Folded Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	decl	%ecx
	subl	120(%rsp), %ecx         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %ecx
	cmovgel	%ecx, %r10d
	incl	%r10d
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB4_36:                               # %for.cond.222
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %eax
	jg	.LBB4_48
# BB#37:                                # %cond.true.225
                                        #   in Loop: Header=BB4_36 Depth=1
	movzwl	(%r8), %edi
	movl	%edi, %esi
	movb	%al, %cl
	shrl	%cl, %esi
	movzwl	right_masks2(%r9,%r9), %ebx
	andl	%esi, %ebx
	movb	%r12b, %cl
	shll	%cl, %edi
	addl	%ebx, %edi
	jmp	.LBB4_49
.LBB4_48:                               # %cond.false.237
                                        #   in Loop: Header=BB4_36 Depth=1
	movzbl	(%r8), %edi
	movb	%r12b, %cl
	shll	%cl, %edi
	andl	$65280, %edi            # imm = 0xFF00
.LBB4_49:                               # %cond.end.242
                                        #   in Loop: Header=BB4_36 Depth=1
	xorl	%r15d, %edi
	orl	%edx, %edi
	movzwl	(%r14), %ecx
	andl	%edi, %ecx
	movw	%cx, (%r14)
	addq	%rbp, %r14
	addq	%r11, %r8
	incl	%r10d
	jne	.LBB4_36
	jmp	.LBB4_272
.LBB4_173:                              # %sw.default.1008
	movl	$-1, %eax
	movl	$64764, %ecx            # imm = 0xFCFC
	movq	96(%rsp), %rdx          # 8-byte Reload
	btq	%rdx, %rcx
	jae	.LBB4_273
# BB#174:                               # %cond.false.1011
	movl	%ebx, %eax
	movl	128(%rsp), %edx         # 4-byte Reload
	orl	%edx, %eax
	js	.LBB4_176
# BB#175:
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB4_177
.LBB4_263:                              # %sw.default.1656
	movl	$-1, %eax
	movl	$64764, %ecx            # imm = 0xFCFC
	movq	96(%rsp), %rdx          # 8-byte Reload
	btq	%rdx, %rcx
	jae	.LBB4_273
# BB#264:                               # %cond.false.1659
	movl	%ebx, %eax
	movl	128(%rsp), %edx         # 4-byte Reload
	orl	%edx, %eax
	js	.LBB4_266
# BB#265:
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB4_267
.LBB4_82:                               # %for.cond.419.preheader
	movl	%r9d, %r8d
	movslq	%r12d, %r13
	movslq	192(%rsp), %r9          # 4-byte Folded Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	2(%rax,%rsi), %rsi
	movslq	176(%rsp), %r11         # 4-byte Folded Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rcx, %rax
.LBB4_83:                               # %for.cond.419
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rsi), %edi
	cmpl	$-7, %eax
	jl	.LBB4_85
# BB#84:                                # %cond.true.422
                                        #   in Loop: Header=BB4_83 Depth=1
	movl	%edi, %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	movzwl	left_masks2(%r13,%r13), %edx
	andl	%ebx, %edx
	movl	192(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%rsi), %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	addl	%edi, %ebx
	jmp	.LBB4_86
.LBB4_85:                               # %cond.false.440
                                        #   in Loop: Header=BB4_83 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movl	192(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edi
	movzbl	%dil, %ebp
	movzwl	(%rsi), %ebx
	movl	%ebx, %edi
	shrl	%cl, %edi
	movzwl	right_masks2(%r9,%r9), %edx
	andl	%edi, %edx
	movb	%r12b, %cl
	shll	%cl, %ebx
	addl	%ebp, %ebx
	addl	%edx, %ebx
.LBB4_86:                               # %cond.end.458
                                        #   in Loop: Header=BB4_83 Depth=1
	xorl	%r15d, %ebx
	andl	%r8d, %ebx
	movzwl	(%r14), %ecx
	orl	%ebx, %ecx
	movw	%cx, (%r14)
	addq	184(%rsp), %r14         # 8-byte Folded Reload
	addq	%r11, %rsi
	incl	%r10d
	jne	.LBB4_83
	jmp	.LBB4_272
.LBB4_78:                               # %if.else.413
	cmpl	$2, %eax
	movl	176(%rsp), %eax         # 4-byte Reload
	jne	.LBB4_50
# BB#79:                                # %for.cond.538.preheader
	movslq	%r12d, %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movl	%edx, %r9d
	xorl	$65535, %r9d            # imm = 0xFFFF
	orl	%r11d, %r9d
	movslq	192(%rsp), %r8          # 4-byte Folded Reload
	leaq	2(%rbx,%rsi), %rsi
	movslq	%eax, %r13
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rcx, %rbp
	movq	184(%rsp), %rax         # 8-byte Reload
.LBB4_80:                               # %for.cond.538
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rsi), %ebx
	cmpl	$-7, %ebp
	jl	.LBB4_92
# BB#81:                                # %cond.true.541
                                        #   in Loop: Header=BB4_80 Depth=1
	movl	%ebx, %edx
	movb	%r12b, %cl
	shll	%cl, %edx
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzwl	left_masks2(%rcx,%rcx), %edi
	andl	%edx, %edi
	movl	192(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %ebx
	addl	%edi, %ebx
	movzbl	(%rsi), %edx
	movb	%r12b, %cl
	shll	%cl, %edx
	andl	$65280, %edx            # imm = 0xFF00
	addl	%ebx, %edx
	jmp	.LBB4_93
.LBB4_92:                               # %cond.false.559
                                        #   in Loop: Header=BB4_80 Depth=1
	andl	$65280, %ebx            # imm = 0xFF00
	movb	%r8b, %cl
	shrl	%cl, %ebx
	movzbl	%bl, %r11d
	movzwl	(%rsi), %edx
	movl	%edx, %ebx
	movb	%r8b, %cl
	shrl	%cl, %ebx
	movzwl	right_masks2(%r8,%r8), %edi
	andl	%ebx, %edi
	movb	%r12b, %cl
	shll	%cl, %edx
	addl	%r11d, %edx
	addl	%edi, %edx
.LBB4_93:                               # %cond.end.577
                                        #   in Loop: Header=BB4_80 Depth=1
	xorl	%r15d, %edx
	orl	%r9d, %edx
	movzwl	(%r14), %ecx
	andl	%edx, %ecx
	movw	%cx, (%r14)
	addq	%rax, %r14
	addq	%r13, %rsi
	incl	%r10d
	jne	.LBB4_80
	jmp	.LBB4_272
.LBB4_64:                               # %for.cond.279.preheader
	movslq	%r13d, %r11
	movslq	%eax, %rsi
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rbx, %rax
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB4_65:                               # %for.cond.279
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r8), %edi
	cmpl	$-7, %eax
	jl	.LBB4_67
# BB#66:                                # %cond.true.282
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	%edi, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	movzwl	left_masks2(%r11,%r11), %edx
	andl	%ebx, %edx
	movb	%r12b, %cl
	shrl	%cl, %edi
	addl	%edx, %edi
	jmp	.LBB4_68
.LBB4_67:                               # %cond.false.294
                                        #   in Loop: Header=BB4_65 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movb	%r12b, %cl
	shrl	%cl, %edi
	movzbl	%dil, %edi
.LBB4_68:                               # %cond.end.300
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%r15d, %edi
	andl	%r9d, %edi
	movzwl	(%r14), %ecx
	orl	%edi, %ecx
	movw	%cx, (%r14)
	addq	%rbp, %r14
	addq	%rsi, %r8
	incl	%r10d
	jne	.LBB4_65
	jmp	.LBB4_272
.LBB4_60:                               # %if.then.273
	cmpl	$2, %esi
	jne	.LBB4_50
# BB#61:                                # %for.cond.362.preheader
	movslq	%r13d, %r9
	xorl	$65535, %edx            # imm = 0xFFFF
	orl	%r11d, %edx
	movslq	%eax, %r11
	movl	128(%rsp), %eax         # 4-byte Reload
	decl	%eax
	subl	120(%rsp), %eax         # 4-byte Folded Reload
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	incl	%r10d
	movq	%rbx, %rax
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB4_62:                               # %for.cond.362
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r8), %edi
	cmpl	$-7, %eax
	jl	.LBB4_74
# BB#63:                                # %cond.true.365
                                        #   in Loop: Header=BB4_62 Depth=1
	movl	%edi, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	movzwl	left_masks2(%r9,%r9), %esi
	andl	%ebx, %esi
	movb	%r12b, %cl
	shrl	%cl, %edi
	addl	%esi, %edi
	jmp	.LBB4_75
.LBB4_74:                               # %cond.false.377
                                        #   in Loop: Header=BB4_62 Depth=1
	andl	$65280, %edi            # imm = 0xFF00
	movb	%r12b, %cl
	shrl	%cl, %edi
	movzbl	%dil, %edi
.LBB4_75:                               # %cond.end.383
                                        #   in Loop: Header=BB4_62 Depth=1
	xorl	%r15d, %edi
	orl	%edx, %edi
	movzwl	(%r14), %ecx
	andl	%edi, %ecx
	movw	%cx, (%r14)
	addq	%rbp, %r14
	addq	%r11, %r8
	incl	%r10d
	jne	.LBB4_62
	jmp	.LBB4_272
.LBB4_50:                               # %sw.default.261
	movl	$-1, %eax
	movl	$64764, %ecx            # imm = 0xFCFC
	movq	96(%rsp), %rdx          # 8-byte Reload
	btq	%rdx, %rcx
	jae	.LBB4_273
# BB#51:                                # %cond.false.264
	movl	%ebp, %eax
	movl	128(%rsp), %esi         # 4-byte Reload
	orl	%esi, %eax
	js	.LBB4_53
# BB#52:
	movl	%edi, %edx
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB4_54
.LBB4_24:                               # %sw.default
	movl	$-1, %eax
	movl	$64764, %ecx            # imm = 0xFCFC
	movq	96(%rsp), %rdx          # 8-byte Reload
	btq	%rdx, %rcx
	jae	.LBB4_273
# BB#25:                                # %cond.false.134
	movl	%ebp, %eax
	movl	128(%rsp), %edx         # 4-byte Reload
	orl	%edx, %eax
	js	.LBB4_27
# BB#26:
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB4_28
.LBB4_125:                              # %if.then.i.868
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	movq	80(%rsp), %rbp          # 8-byte Reload
	addl	%eax, %ebp
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%edx, %ecx
	sarl	$31, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	andl	%edx, %ecx
	addl	%ecx, %edi
	movl	%eax, %edx
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
.LBB4_126:                              # %do.body.10.i.884
	subl	%esi, %r8d
	cmpl	%r8d, %ebp
	cmovlel	%ebp, %r8d
	subl	%edx, %r9d
	cmpl	%r9d, %edi
	cmovlel	%edi, %r9d
	testl	%r8d, %r8d
	jle	.LBB4_272
# BB#127:                               # %do.body.10.i.884
	testl	%r9d, %r9d
	jle	.LBB4_272
# BB#128:                               # %do.end.34.i.891
	movslq	%edx, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	movq	280(%rsp), %rcx
	negl	%ecx
	jmp	.LBB4_271
.LBB4_53:                               # %if.then.i.763
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
	movq	80(%rsp), %rbx          # 8-byte Reload
	addl	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	cmovsl	%eax, %ebp
	movl	%esi, %ecx
	sarl	$31, %ecx
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	andl	%esi, %ecx
	movl	%edi, %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
.LBB4_54:                               # %do.body.10.i.779
	subl	%ebp, %r8d
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%esi, %r9d
	cmpl	%r9d, %edx
	cmovlel	%edx, %r9d
	testl	%r8d, %r8d
	jle	.LBB4_272
# BB#55:                                # %do.body.10.i.779
	testl	%r9d, %r9d
	jle	.LBB4_272
# BB#56:                                # %do.end.34.i.786
	movslq	%esi, %rax
	jmp	.LBB4_31
.LBB4_176:                              # %if.then.i.903
	movl	%ebx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	movq	80(%rsp), %rsi          # 8-byte Reload
	addl	%eax, %esi
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovsl	%eax, %ebx
	movl	%edx, %ecx
	sarl	$31, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	andl	%edx, %ecx
	addl	%ecx, %ebp
	movl	%eax, %edx
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
.LBB4_177:                              # %do.body.10.i.919
	subl	%ebx, %r8d
	cmpl	%r8d, %esi
	cmovlel	%esi, %r8d
	subl	%edx, %r9d
	cmpl	%r9d, %ebp
	cmovlel	%ebp, %r9d
	jmp	.LBB4_268
.LBB4_266:                              # %if.then.i.938
	movl	%ebx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	movq	80(%rsp), %rsi          # 8-byte Reload
	addl	%eax, %esi
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovsl	%eax, %ebx
	movl	%edx, %ecx
	sarl	$31, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	andl	%edx, %ecx
	addl	%ecx, %r12d
	movl	%eax, %edx
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
.LBB4_267:                              # %do.body.10.i.954
	subl	%ebx, %r8d
	cmpl	%r8d, %esi
	cmovlel	%esi, %r8d
	subl	%edx, %r9d
	cmpl	%r9d, %r12d
	cmovlel	%r12d, %r9d
.LBB4_268:                              # %do.body.10.i.954
	testl	%r8d, %r8d
	jle	.LBB4_272
# BB#269:                               # %do.body.10.i.954
	testl	%r9d, %r9d
	jle	.LBB4_272
# BB#270:                               # %do.end.34.i.961
	movslq	%edx, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	movq	280(%rsp), %rcx
	negl	%ecx
	movl	%ebx, %esi
	jmp	.LBB4_271
.LBB4_27:                               # %if.then.i
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
	movq	80(%rsp), %rsi          # 8-byte Reload
	addl	%eax, %esi
	xorl	%eax, %eax
	testl	%ebp, %ebp
	cmovsl	%eax, %ebp
	movl	%edx, %ecx
	sarl	$31, %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	andl	%edx, %ecx
	addl	%ecx, %r12d
	movl	%eax, %edx
	movl	120(%rsp), %r9d         # 4-byte Reload
	movl	112(%rsp), %r8d         # 4-byte Reload
.LBB4_28:                               # %do.body.10.i
	subl	%ebp, %r8d
	cmpl	%r8d, %esi
	cmovlel	%esi, %r8d
	subl	%edx, %r9d
	cmpl	%r9d, %r12d
	cmovlel	%r12d, %r9d
	testl	%r8d, %r8d
	jle	.LBB4_272
# BB#29:                                # %do.body.10.i
	testl	%r9d, %r9d
	jle	.LBB4_272
# BB#30:                                # %do.end.34.i
	movslq	%edx, %rax
.LBB4_31:                               # %cleanup.1678
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	movq	280(%rsp), %rcx
	negl	%ecx
	movl	%ebp, %esi
.LBB4_271:                              # %cleanup.1678
	movq	184(%rsp), %rdx         # 8-byte Reload
	callq	bits_fill_rectangle
.LBB4_272:                              # %cleanup.1678
	xorl	%eax, %eax
.LBB4_273:                              # %cleanup.1678
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mem_mono_copy_mono, .Lfunc_end4-mem_mono_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mono_strip_tile_rectangle,@function
mem_mono_strip_tile_rectangle:          # @mem_mono_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 96
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	104(%rsp), %r10
	movq	96(%rsp), %rax
	xorl	%r11d, %r11d
	testq	%rax, %rax
	movl	$15, %ebx
	cmovel	%r11d, %ebx
	cmpq	$-1, %rax
	movl	$10, %ebp
	cmovnel	%ebx, %ebp
	testq	%r10, %r10
	movl	$240, %ebx
	cmovel	%r11d, %ebx
	cmpq	$-1, %r10
	movl	$160, %eax
	cmovnel	%ebx, %eax
	orl	%ebp, %eax
	cmpl	$170, %eax
	jne	.LBB5_1
# BB#2:                                 # %if.then
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gx_default_strip_tile_rectangle # TAILCALL
.LBB5_1:                                # %if.end
	movl	120(%rsp), %ebp
	movl	112(%rsp), %ebx
	movl	%eax, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%ebx, 48(%rsp)
	movl	%r9d, 40(%rsp)
	movl	%r8d, 32(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	$0, 8(%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	callq	mem_mono_strip_copy_rop_dev
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem_mono_strip_tile_rectangle, .Lfunc_end5-mem_mono_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem1_word_fill_rectangle,@function
mem1_word_fill_rectangle:               # @mem1_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%esi, %r15d
	movl	%edx, %eax
	orl	%r15d, %eax
	jns	.LBB6_2
# BB#1:                                 # %if.then
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%r15d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%esi, %r8d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB6_2:                                # %do.body.10
	movl	832(%rdi), %ebp
	movl	836(%rdi), %ebx
	subl	%r15d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	subl	%edx, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	testl	%ebp, %ebp
	jle	.LBB6_5
# BB#3:                                 # %do.body.10
	testl	%ebx, %ebx
	jle	.LBB6_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r12
	movl	1736(%rdi), %r13d
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	negl	%r14d
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	bits_fill_rectangle
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB6_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mem1_word_fill_rectangle, .Lfunc_end6-mem1_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem1_word_copy_mono,@function
mem1_word_copy_mono:                    # @mem1_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 144
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdi, %r12
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%ebx, %ebp
	jns	.LBB7_1
# BB#2:                                 # %if.then
	movl	%ebx, %ebp
	sarl	$31, %ebp
	andl	%ebx, %ebp
	leal	(%rdi,%rbp), %edi
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovsl	%r15d, %ebx
	subl	%ebp, %edx
	testl	%eax, %eax
	js	.LBB7_3
.LBB7_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
.LBB7_4:                                # %if.end.8
	movl	832(%r12), %r14d
	movl	836(%r12), %r13d
	subl	%ebx, %r14d
	cmpl	%r14d, %edi
	cmovlel	%edi, %r14d
	subl	%r15d, %r13d
	cmpl	%r13d, %r9d
	cmovlel	%r9d, %r13d
	testl	%r14d, %r14d
	jle	.LBB7_7
# BB#5:                                 # %if.end.8
	testl	%r13d, %r13d
	jle	.LBB7_7
# BB#6:                                 # %do.end.26
	movq	176(%rsp), %rbp
	movslq	%r15d, %rax
	movq	2576(%r12), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	1736(%r12), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, %rbp
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r9d
	movl	%ebx, %edx
	movl	%r14d, %ecx
	movl	%r13d, %r8d
	callq	mem_swap_byte_rect
	movq	%rbp, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%r12, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	mem_mono_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%ebx, %edx
	movl	%r14d, %ecx
	movl	%r13d, %r8d
	callq	mem_swap_byte_rect
.LBB7_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB7_4
.Lfunc_end7:
	.size	mem1_word_copy_mono, .Lfunc_end7-mem1_word_copy_mono
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image1"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	mem_mono_device,@object # @mem_mono_device
	.section	.rodata,"a",@progbits
	.globl	mem_mono_device
	.align	8
mem_mono_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	mem_mono_map_rgb_color
	.quad	mem_mono_map_color_rgb
	.quad	mem_mono_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_mono_copy_mono
	.quad	gx_default_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_no_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	mem_mono_strip_tile_rectangle
	.quad	mem_mono_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_mono_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image1w"
	.size	.L.str.2, 8

	.type	mem_mono_word_device,@object # @mem_mono_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_mono_word_device
	.align	8
mem_mono_word_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	mem_mono_map_rgb_color
	.quad	mem_mono_map_color_rgb
	.quad	mem1_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem1_word_copy_mono
	.quad	gx_default_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_no_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_no_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_word_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_mono_word_device, 2792

	.type	copy_modes,@object      # @copy_modes
	.align	16
copy_modes:
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.zero	8
	.zero	8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	8
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.size	copy_modes, 128

	.type	right_masks2,@object    # @right_masks2
	.section	.rodata.str2.16,"aMS",@progbits,2
	.align	16
right_masks2:
	.short	65535                   # 0xffff
	.short	32639                   # 0x7f7f
	.short	16191                   # 0x3f3f
	.short	7967                    # 0x1f1f
	.short	3855                    # 0xf0f
	.short	1799                    # 0x707
	.short	771                     # 0x303
	.short	257                     # 0x101
	.short	0                       # 0x0
	.size	right_masks2, 18

	.type	left_masks2,@object     # @left_masks2
	.align	16
left_masks2:
	.short	65535                   # 0xffff
	.short	65278                   # 0xfefe
	.short	64764                   # 0xfcfc
	.short	63736                   # 0xf8f8
	.short	61680                   # 0xf0f0
	.short	57568                   # 0xe0e0
	.short	49344                   # 0xc0c0
	.short	32896                   # 0x8080
	.short	0                       # 0x0
	.size	left_masks2, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
