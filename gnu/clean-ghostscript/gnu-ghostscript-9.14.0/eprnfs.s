	.text
	.file	"eprnfs.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.globl	eprn_split_FS
	.align	16, 0x90
	.type	eprn_split_FS,@function
eprn_split_FS:                          # @eprn_split_FS
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
	subq	$520, %rsp              # imm = 0x208
.Ltmp6:
	.cfi_def_cfa_offset 576
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
	movl	%r9d, %ebp
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	576(%rsp), %rdi
	testl	%ecx, %ecx
	je	.LBB0_1
# BB#119:                               # %if.else.3
	cmpl	$4, %ecx
	jne	.LBB0_171
# BB#120:                               # %if.else.3
	cmpl	$2, %r8d
	jne	.LBB0_171
# BB#121:                               # %if.else.3
	cmpl	$2, %ebp
	jne	.LBB0_171
# BB#122:                               # %if.then.8
	movl	8(%r15), %eax
	movq	(%rdi), %rcx
	movq	%rcx, 240(%rsp)
	movq	16(%rdi), %rcx
	movq	%rcx, 248(%rsp)
	movq	32(%rdi), %rcx
	movq	%rcx, 256(%rsp)
	movq	48(%rdi), %rcx
	movq	%rcx, 264(%rsp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	$2, %ecx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	cmpl	$4, %eax
	jl	.LBB0_169
# BB#123:                               # %for.body.6.lr.ph.i.56
	movq	%r15, %r10
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%r13d, %eax
	sarl	$2, %eax
	decl	%eax
	cltq
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	$8, %edi
	movl	$-4, %ecx
	movl	$4, %edx
	xorl	%esi, %esi
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1]
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_124:                              # %for.body.6.i.57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_127 Depth 2
	movl	%edx, 140(%rsp)         # 4-byte Spill
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movq	%rbx, %r8
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	cmpl	$8, %edi
	jne	.LBB0_126
# BB#125:                               # %for.cond.8.preheader.i
                                        #   in Loop: Header=BB0_124 Depth=1
	movq	240(%rsp), %rax
	movb	$0, (%rax)
	movq	248(%rsp), %rax
	movb	$0, (%rax)
	movq	256(%rsp), %rax
	movb	$0, (%rax)
	movq	264(%rsp), %rax
	movb	$0, (%rax)
	xorl	%edi, %edi
.LBB0_126:                              # %if.end.i.60
                                        #   in Loop: Header=BB0_124 Depth=1
	movl	%edi, 120(%rsp)         # 4-byte Spill
	addq	$3, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	addq	$3, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movslq	%esi, %rsi
	leal	(,%r15,4), %r9d
	leal	4(,%r15,4), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	leal	8(,%r15,4), %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	leaq	240(%rsp), %r11
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_127:                              # %for.body.18.i
                                        #   Parent Loop BB0_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10), %rbp
	leaq	(%rbp,%rsi), %rbx
	movzbl	3(%r14,%rbx), %r12d
	movb	%r12b, %al
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, %edx
	negl	%edx
	movzbl	%dl, %edx
	movq	(%r11), %rdi
	movb	(%rdi), %cl
	addb	%cl, %cl
	orb	%cl, %al
	subl	%edx, %r12d
	movb	%al, (%rdi)
	je	.LBB0_165
# BB#128:                               # %if.then.37.i
                                        #   in Loop: Header=BB0_127 Depth=2
	imull	$7, %r12d, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%eax, %edx
	sarl	$4, %edx
	movl	%r12d, %r13d
	subl	%edx, %r13d
	cmpq	192(%rsp), %r15         # 8-byte Folded Reload
	jge	.LBB0_129
# BB#130:                               # %if.then.43.i
                                        #   in Loop: Header=BB0_127 Depth=2
	leaq	7(%rbp,%rsi), %rcx
	movzbl	7(%r14,%rbx), %eax
	addl	%eax, %edx
	js	.LBB0_131
# BB#132:                               # %if.else.i.68
                                        #   in Loop: Header=BB0_127 Depth=2
	cmpl	$256, %edx              # imm = 0x100
	jl	.LBB0_134
# BB#133:                               # %if.then.52.i.69
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$-1, (%rcx,%r14)
	leal	-255(%r13,%rdx), %r13d
	movb	$-1, %dl
	jmp	.LBB0_135
	.align	16, 0x90
.LBB0_129:                              #   in Loop: Header=BB0_127 Depth=2
	movq	%r8, %rdi
	jmp	.LBB0_138
.LBB0_131:                              # %if.end.58.i.thread
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$0, (%rcx,%r14)
	addl	%r12d, %eax
	movl	%eax, %r13d
	movq	%r8, %rdi
	jmp	.LBB0_138
.LBB0_134:                              # %if.else.55.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%dl, (%rcx,%r14)
.LBB0_135:                              # %if.end.58.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movq	%r8, %rdi
	movq	176(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	cmpl	%eax, %r15d
	jne	.LBB0_138
# BB#136:                               # %if.end.58.i
                                        #   in Loop: Header=BB0_127 Depth=2
	testb	%dl, %dl
	je	.LBB0_138
# BB#137:                               # %if.then.65.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	addl	$4, 8(%r10)
	.align	16, 0x90
.LBB0_138:                              # %if.end.70.i
                                        #   in Loop: Header=BB0_127 Depth=2
	leal	(%r12,%r12,2), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%eax, %edx
	sarl	$4, %edx
	movl	%r13d, %r8d
	subl	%edx, %r8d
	testq	%r15, %r15
	jle	.LBB0_147
# BB#139:                               # %if.then.76.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movq	(%rdi), %rcx
	addq	168(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	(%r14,%rcx), %eax
	addl	%eax, %edx
	js	.LBB0_140
# BB#141:                               # %if.else.90.i
                                        #   in Loop: Header=BB0_127 Depth=2
	cmpl	$256, %edx              # imm = 0x100
	jl	.LBB0_143
# BB#142:                               # %if.then.93.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$-1, (%rcx,%r14)
	leal	-255(%r8,%rdx), %r8d
	movb	$-1, %dl
	jmp	.LBB0_144
.LBB0_140:                              # %if.end.99.i.thread
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$0, (%rcx,%r14)
	addl	%r13d, %eax
	movl	%eax, %r8d
	jmp	.LBB0_147
.LBB0_143:                              # %if.else.96.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%dl, (%rcx,%r14)
.LBB0_144:                              # %if.end.99.i
                                        #   in Loop: Header=BB0_127 Depth=2
	testb	%dl, %dl
	je	.LBB0_147
# BB#145:                               # %if.end.99.i
                                        #   in Loop: Header=BB0_127 Depth=2
	cmpl	%r9d, 8(%rdi)
	jge	.LBB0_147
# BB#146:                               # %if.then.108.i.76
                                        #   in Loop: Header=BB0_127 Depth=2
	movl	%r9d, 8(%rdi)
	.align	16, 0x90
.LBB0_147:                              # %if.end.112.i
                                        #   in Loop: Header=BB0_127 Depth=2
	leal	(%r12,%r12,4), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	addl	%eax, %edx
	sarl	$4, %edx
	movq	(%rdi), %rax
	leaq	3(%rax,%rsi), %rbx
	addq	%rsi, %rax
	movzbl	3(%r14,%rax), %eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.LBB0_148
# BB#149:                               # %if.else.128.i
                                        #   in Loop: Header=BB0_127 Depth=2
	subl	%edx, %r8d
	cmpl	$256, %ecx              # imm = 0x100
	jl	.LBB0_151
# BB#150:                               # %if.then.131.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$-1, (%rbx,%r14)
	leal	-255(%r8,%rcx), %r8d
	movb	$-1, %cl
	jmp	.LBB0_152
.LBB0_148:                              # %if.end.137.i.thread
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	$0, (%rbx,%r14)
	addl	%r8d, %eax
	movl	%eax, %r8d
	jmp	.LBB0_155
.LBB0_151:                              # %if.else.134.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%cl, (%rbx,%r14)
.LBB0_152:                              # %if.end.137.i
                                        #   in Loop: Header=BB0_127 Depth=2
	testb	%cl, %cl
	je	.LBB0_155
# BB#153:                               # %if.end.137.i
                                        #   in Loop: Header=BB0_127 Depth=2
	cmpl	%r9d, 8(%rdi)
	jg	.LBB0_155
# BB#154:                               # %if.then.146.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rdi)
.LBB0_155:                              # %if.end.150.i
                                        #   in Loop: Header=BB0_127 Depth=2
	cmpq	192(%rsp), %r15         # 8-byte Folded Reload
	jge	.LBB0_156
# BB#157:                               # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movq	(%rdi), %rcx
	movq	%rdi, %rbp
	addq	160(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	(%r14,%rcx), %ebx
	addl	%r8d, %ebx
	cmpl	$255, %ebx
	movl	%ebx, %edx
	movl	$255, %eax
	cmovgl	%eax, %edx
	movb	$-1, %al
	jg	.LBB0_159
# BB#158:                               # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%bl, %al
.LBB0_159:                              # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	xorl	%edi, %edi
	testl	%ebx, %ebx
	cmovsl	%edi, %edx
	js	.LBB0_161
# BB#160:                               # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%al, %dil
.LBB0_161:                              # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movb	%dil, (%r14,%rcx)
	movl	184(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 8(%rbp)
	jge	.LBB0_164
# BB#162:                               # %if.then.153.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movzbl	%dl, %eax
	testl	%eax, %eax
	je	.LBB0_164
# BB#163:                               # %if.then.181.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rbp)
.LBB0_164:                              # %for.inc.188.i
                                        #   in Loop: Header=BB0_127 Depth=2
	movq	%rbp, %r8
	jmp	.LBB0_165
	.align	16, 0x90
.LBB0_156:                              #   in Loop: Header=BB0_127 Depth=2
	movq	%rdi, %r8
.LBB0_165:                              # %for.inc.188.i
                                        #   in Loop: Header=BB0_127 Depth=2
	leaq	-1(%r14), %rax
	addq	$3, %r14
	addq	$8, %r11
	testq	%r14, %r14
	movq	%rax, %r14
	jg	.LBB0_127
# BB#166:                               # %for.end.189.i
                                        #   in Loop: Header=BB0_124 Depth=1
	movl	120(%rsp), %edi         # 4-byte Reload
	cmpl	$7, %edi
	jne	.LBB0_168
# BB#167:                               # %for.cond.193.preheader.i
                                        #   in Loop: Header=BB0_124 Depth=1
	movdqa	240(%rsp), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, 240(%rsp)
	movdqa	256(%rsp), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, 256(%rsp)
.LBB0_168:                              # %for.inc.203.i
                                        #   in Loop: Header=BB0_124 Depth=1
	incq	%r15
	incl	%edi
	movq	176(%rsp), %rax         # 8-byte Reload
	cltq
	movl	144(%rsp), %ecx         # 4-byte Reload
	addl	$4, %ecx
	movl	140(%rsp), %edx         # 4-byte Reload
	addl	$4, %edx
	movq	128(%rsp), %rsi         # 8-byte Reload
	addl	$4, %esi
	cmpq	%rax, %r15
	movq	%r8, %rbx
	jl	.LBB0_124
.LBB0_169:                              # %split_colour_CMYK_2.exit
	leaq	240(%rsp), %r8
	movl	$0, %edi
	movl	$2, %esi
	movl	$4, %edx
	jmp	.LBB0_170
.LBB0_1:                                # %if.then
	cmpl	$2, %r8d
	jne	.LBB0_47
# BB#2:                                 # %if.then.2
	movl	8(%r15), %r9d
	movq	(%rdi), %rax
	movq	%rax, 240(%rsp)
	testl	%r9d, %r9d
	jle	.LBB0_46
# BB#3:                                 # %for.body.lr.ph.i
	movq	%r15, %r12
	decl	%r13d
	movslq	%r13d, %r10
	movl	$8, %r14d
	xorl	%esi, %esi
	movl	$255, %r8d
	.align	16, 0x90
.LBB0_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r15
	cmpl	$8, %r14d
	jne	.LBB0_6
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	240(%rsp), %rax
	movb	$0, (%rax)
	xorl	%r14d, %r14d
.LBB0_6:                                # %if.end.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%r12), %rbp
	movzbl	(%rbp,%rsi), %edi
	movb	%dil, %al
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, %edx
	negl	%edx
	movzbl	%dl, %edx
	movq	240(%rsp), %rbx
	movb	(%rbx), %cl
	addb	%cl, %cl
	orb	%cl, %al
	subl	%edx, %edi
	movb	%al, (%rbx)
	jne	.LBB0_8
# BB#7:                                 #   in Loop: Header=BB0_4 Depth=1
	movq	%r15, %rbx
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_8:                                # %if.then.12.i
                                        #   in Loop: Header=BB0_4 Depth=1
	imull	$7, %edi, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%ecx, %eax
	sarl	$4, %eax
	movl	%edi, %r11d
	subl	%eax, %r11d
	cmpq	%r10, %rsi
	jge	.LBB0_9
# BB#10:                                # %if.then.17.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movzbl	1(%rbp,%rsi), %ebx
	addl	%ebx, %eax
	js	.LBB0_11
# BB#12:                                # %if.else.i
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	movq	%r15, %rbx
	jl	.LBB0_14
# BB#13:                                # %if.then.26.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$-1, 1(%rbp,%rsi)
	leal	-255(%r11,%rax), %r11d
	movb	$-1, %al
	jmp	.LBB0_15
	.align	16, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r15, %rbx
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.32.i.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$0, 1(%rbp,%rsi)
	addl	%edi, %ebx
	movl	%ebx, %r11d
	movq	%r15, %rbx
	jmp	.LBB0_18
.LBB0_14:                               # %if.else.29.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%al, 1(%rbp,%rsi)
.LBB0_15:                               # %if.end.32.i
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	-1(%r9), %ecx
	cmpl	%ecx, %esi
	jne	.LBB0_18
# BB#16:                                # %if.end.32.i
                                        #   in Loop: Header=BB0_4 Depth=1
	testb	%al, %al
	je	.LBB0_18
# BB#17:                                # %if.then.39.i
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%r9d
	incl	8(%r12)
	.align	16, 0x90
.LBB0_18:                               # %if.end.43.i
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rdi,%rdi,2), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%ecx, %eax
	sarl	$4, %eax
	movl	%r11d, %ebp
	subl	%eax, %ebp
	testq	%rsi, %rsi
	jle	.LBB0_27
# BB#19:                                # %if.then.49.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %rcx
	movq	(%rcx), %rbx
	movzbl	-1(%rbx,%rsi), %edx
	addl	%edx, %eax
	js	.LBB0_20
# BB#21:                                # %if.else.60.i
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB0_23
# BB#22:                                # %if.then.63.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$-1, -1(%rbx,%rsi)
	leal	-255(%rbp,%rax), %ebp
	movb	$-1, %al
	jmp	.LBB0_24
.LBB0_20:                               # %if.end.69.i.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$0, -1(%rbx,%rsi)
	addl	%r11d, %edx
	movl	%edx, %ebp
	movq	%rcx, %rbx
	jmp	.LBB0_27
.LBB0_23:                               # %if.else.66.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%al, -1(%rbx,%rsi)
.LBB0_24:                               # %if.end.69.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rcx, %rbx
	testb	%al, %al
	je	.LBB0_27
# BB#25:                                # %if.end.69.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	8(%rbx), %rax
	cmpq	%rsi, %rax
	jge	.LBB0_27
# BB#26:                                # %if.then.77.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%esi, 8(%rbx)
	.align	16, 0x90
.LBB0_27:                               # %if.end.80.i
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%eax, %edi
	sarl	$4, %edi
	movq	(%rbx), %rdx
	movq	%rbx, %rcx
	movzbl	(%rdx,%rsi), %ebx
	movl	%ebx, %eax
	addl	%edi, %eax
	js	.LBB0_28
# BB#29:                                # %if.else.93.i
                                        #   in Loop: Header=BB0_4 Depth=1
	subl	%edi, %ebp
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB0_31
# BB#30:                                # %if.then.96.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$-1, (%rdx,%rsi)
	leal	-255(%rbp,%rax), %ebp
	movb	$-1, %al
	jmp	.LBB0_32
.LBB0_28:                               # %if.end.102.i.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	$0, (%rdx,%rsi)
	addl	%ebp, %ebx
	movl	%ebx, %ebp
	movq	%rcx, %rbx
	jmp	.LBB0_35
.LBB0_31:                               # %if.else.99.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%al, (%rdx,%rsi)
.LBB0_32:                               # %if.end.102.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rcx, %rbx
	testb	%al, %al
	je	.LBB0_35
# BB#33:                                # %if.end.102.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	8(%rbx), %rax
	cmpq	%rsi, %rax
	jg	.LBB0_35
# BB#34:                                # %if.then.110.i
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	1(%rsi), %eax
	movl	%eax, 8(%rbx)
.LBB0_35:                               # %if.end.113.i
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	%r10, %rsi
	jge	.LBB0_43
# BB#36:                                # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rdx
	movq	%rbx, %r11
	movzbl	1(%rdx,%rsi), %edi
	addl	%ebp, %edi
	cmpl	$255, %edi
	movl	%edi, %eax
	cmovgl	%r8d, %eax
	movb	$-1, %bl
	jg	.LBB0_38
# BB#37:                                # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%dil, %bl
.LBB0_38:                               # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%ebp, %ebp
	testl	%edi, %edi
	cmovsl	%ebp, %eax
	js	.LBB0_40
# BB#39:                                # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%bl, %bpl
.LBB0_40:                               # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movb	%bpl, 1(%rdx,%rsi)
	leaq	2(%rsi), %rcx
	movq	%r11, %rbx
	movslq	8(%rbx), %rdx
	cmpq	%rcx, %rdx
	jge	.LBB0_43
# BB#41:                                # %if.then.116.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_43
# BB#42:                                # %if.then.140.i
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	2(%rsi), %eax
	movl	%eax, 8(%rbx)
	.align	16, 0x90
.LBB0_43:                               # %if.end.145.i
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$7, %r14d
	jne	.LBB0_45
# BB#44:                                # %if.then.148.i
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	240(%rsp)
.LBB0_45:                               # %for.inc.i
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	%rsi
	incl	%r14d
	movslq	%r9d, %rax
	cmpq	%rax, %rsi
	jl	.LBB0_4
.LBB0_46:                               # %split_Gray_2.exit
	leaq	240(%rsp), %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	576(%rsp), %rcx
	jmp	.LBB0_318
.LBB0_171:                              # %if.else.9
	cmpl	$2, %r8d
	ja	.LBB0_233
# BB#172:                               # %if.else.9
	cmpl	$2, %ebp
	jne	.LBB0_233
# BB#173:                               # %if.then.13
	leal	-3(%rcx), %r8d
	cmpl	$2, %r8d
	movl	$3, %edx
	adcl	$0, %edx
	movl	8(%r15), %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_174:                              # %for.body.i.93
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbp
	movq	%rbp, 240(%rsp,%rsi,8)
	incq	%rsi
	addq	$16, %rdi
	cmpq	%rdx, %rsi
	jl	.LBB0_174
# BB#175:                               # %for.cond.11.preheader.i
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	leal	(%rsi,%rax), %esi
	sarl	$2, %esi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	cmpl	$4, %eax
	jl	.LBB0_232
# BB#176:                               # %for.body.13.lr.ph.i
	movq	%rbx, %r11
	cmpl	$2, %r8d
	sbbq	%rcx, %rcx
	cmpl	$2, %r8d
	movl	$3, %eax
	adcq	$0, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%r13d, %eax
	sarl	$2, %eax
	decl	%eax
	andl	$1, %ecx
	orq	$2, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movslq	%eax, %r9
	movl	%edx, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	andl	$3, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	subq	%rcx, %rsi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	subq	%rcx, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$8, %r8d
	movl	$-4, %ebp
	movl	$4, %r10d
	xorl	%ebx, %ebx
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1]
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_177:                              # %for.body.13.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_178 Depth 2
                                        #     Child Loop BB0_180 Depth 2
                                        #     Child Loop BB0_224 Depth 2
                                        #     Child Loop BB0_227 Depth 2
                                        #     Child Loop BB0_230 Depth 2
	cmpl	$8, %r8d
	movl	$0, %eax
	jne	.LBB0_179
	.align	16, 0x90
.LBB0_178:                              # %for.body.17.i
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	240(%rsp,%rax,8), %rcx
	movb	$0, (%rcx)
	incq	%rax
	xorl	%r8d, %r8d
	cmpq	%rdx, %rax
	jl	.LBB0_178
.LBB0_179:                              # %if.end.i.99
                                        #   in Loop: Header=BB0_177 Depth=1
	movslq	%ebp, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	%ebp, 144(%rsp)         # 4-byte Spill
	movslq	%r10d, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	%r10d, 140(%rsp)        # 4-byte Spill
	movslq	%ebx, %r13
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leal	(,%r14,4), %r12d
	leal	4(,%r14,4), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	leal	8(,%r14,4), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_180:                              # %for.body.25.i
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rbx
	leaq	(%rbx,%r13), %rcx
	movzbl	(%rbp,%rcx), %esi
	movb	%sil, %al
	shrb	$7, %al
	movb	%al, 204(%rsp,%rbp)
	movzbl	%al, %eax
	negl	%eax
	movzbl	%al, %eax
	subl	%eax, %esi
	je	.LBB0_218
# BB#181:                               # %if.then.40.i
                                        #   in Loop: Header=BB0_180 Depth=2
	imull	$7, %esi, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%eax, %edi
	sarl	$4, %edi
	movl	%esi, %r10d
	subl	%edi, %r10d
	cmpq	%r9, %r14
	jge	.LBB0_182
# BB#183:                               # %if.then.46.i
                                        #   in Loop: Header=BB0_180 Depth=2
	leaq	4(%rbx,%r13), %rbx
	movzbl	4(%rbp,%rcx), %ecx
	addl	%ecx, %edi
	js	.LBB0_184
# BB#185:                               # %if.else.i.103
                                        #   in Loop: Header=BB0_180 Depth=2
	cmpl	$256, %edi              # imm = 0x100
	jl	.LBB0_187
# BB#186:                               # %if.then.55.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$-1, (%rbx,%rbp)
	leal	-255(%r10,%rdi), %r10d
	movb	$-1, %dil
	jmp	.LBB0_188
	.align	16, 0x90
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=2
	movq	%r11, %rbx
	jmp	.LBB0_191
.LBB0_184:                              # %if.end.61.i.thread
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$0, (%rbx,%rbp)
	addl	%esi, %ecx
	movl	%ecx, %r10d
	movq	%r11, %rbx
	jmp	.LBB0_191
.LBB0_187:                              # %if.else.58.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%dil, (%rbx,%rbp)
.LBB0_188:                              # %if.end.61.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movq	%r11, %rbx
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	cmpl	%eax, %r14d
	jne	.LBB0_191
# BB#189:                               # %if.end.61.i
                                        #   in Loop: Header=BB0_180 Depth=2
	testb	%dil, %dil
	je	.LBB0_191
# BB#190:                               # %if.then.68.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	addl	$4, 8(%r15)
	.align	16, 0x90
.LBB0_191:                              # %if.end.73.i
                                        #   in Loop: Header=BB0_180 Depth=2
	leal	(%rsi,%rsi,2), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%eax, %edi
	sarl	$4, %edi
	movl	%r10d, %r11d
	subl	%edi, %r11d
	testq	%r14, %r14
	jle	.LBB0_200
# BB#192:                               # %if.then.79.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movq	(%rbx), %rcx
	addq	176(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	(%rbp,%rcx), %eax
	addl	%eax, %edi
	js	.LBB0_193
# BB#194:                               # %if.else.93.i.117
                                        #   in Loop: Header=BB0_180 Depth=2
	cmpl	$256, %edi              # imm = 0x100
	jl	.LBB0_196
# BB#195:                               # %if.then.96.i.120
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$-1, (%rcx,%rbp)
	leal	-255(%r11,%rdi), %r11d
	movb	$-1, %dil
	jmp	.LBB0_197
.LBB0_193:                              # %if.end.102.i.124.thread
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$0, (%rcx,%rbp)
	addl	%r10d, %eax
	movl	%eax, %r11d
	jmp	.LBB0_200
.LBB0_196:                              # %if.else.99.i.122
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%dil, (%rcx,%rbp)
.LBB0_197:                              # %if.end.102.i.124
                                        #   in Loop: Header=BB0_180 Depth=2
	testb	%dil, %dil
	je	.LBB0_200
# BB#198:                               # %if.end.102.i.124
                                        #   in Loop: Header=BB0_180 Depth=2
	cmpl	%r12d, 8(%rbx)
	jge	.LBB0_200
# BB#199:                               # %if.then.111.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movl	%r12d, 8(%rbx)
	.align	16, 0x90
.LBB0_200:                              # %if.end.115.i
                                        #   in Loop: Header=BB0_180 Depth=2
	leal	(%rsi,%rsi,4), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%eax, %edi
	sarl	$4, %edi
	movq	(%rbx), %rcx
	addq	%r13, %rcx
	movzbl	(%rbp,%rcx), %esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.LBB0_201
# BB#202:                               # %if.else.131.i
                                        #   in Loop: Header=BB0_180 Depth=2
	subl	%edi, %r11d
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB0_204
# BB#203:                               # %if.then.134.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$-1, (%rcx,%rbp)
	leal	-255(%r11,%rax), %r11d
	movb	$-1, %al
	jmp	.LBB0_205
.LBB0_201:                              # %if.end.140.i.thread
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	$0, (%rcx,%rbp)
	addl	%r11d, %esi
	movl	%esi, %r11d
	jmp	.LBB0_208
.LBB0_204:                              # %if.else.137.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%al, (%rcx,%rbp)
.LBB0_205:                              # %if.end.140.i
                                        #   in Loop: Header=BB0_180 Depth=2
	testb	%al, %al
	je	.LBB0_208
# BB#206:                               # %if.end.140.i
                                        #   in Loop: Header=BB0_180 Depth=2
	cmpl	%r12d, 8(%rbx)
	jg	.LBB0_208
# BB#207:                               # %if.then.149.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rbx)
.LBB0_208:                              # %if.end.153.i
                                        #   in Loop: Header=BB0_180 Depth=2
	cmpq	%r9, %r14
	jge	.LBB0_209
# BB#210:                               # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movq	(%rbx), %rax
	movq	%rbx, %r10
	addq	168(%rsp), %rax         # 8-byte Folded Reload
	movzbl	(%rbp,%rax), %edi
	addl	%r11d, %edi
	cmpl	$255, %edi
	movl	%edi, %ecx
	movl	$255, %esi
	cmovgl	%esi, %ecx
	movb	$-1, %bl
	jg	.LBB0_212
# BB#211:                               # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%dil, %bl
.LBB0_212:                              # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	xorl	%esi, %esi
	testl	%edi, %edi
	cmovsl	%esi, %ecx
	js	.LBB0_214
# BB#213:                               # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%bl, %sil
.LBB0_214:                              # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movb	%sil, (%rbp,%rax)
	movl	192(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 8(%r10)
	jge	.LBB0_217
# BB#215:                               # %if.then.156.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movzbl	%cl, %eax
	testl	%eax, %eax
	je	.LBB0_217
# BB#216:                               # %if.then.185.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movl	192(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%r10)
.LBB0_217:                              # %for.inc.192.i
                                        #   in Loop: Header=BB0_180 Depth=2
	movq	%r10, %r11
	jmp	.LBB0_218
	.align	16, 0x90
.LBB0_209:                              #   in Loop: Header=BB0_180 Depth=2
	movq	%rbx, %r11
.LBB0_218:                              # %for.inc.192.i
                                        #   in Loop: Header=BB0_180 Depth=2
	testq	%rbp, %rbp
	leaq	-1(%rbp), %rbp
	jg	.LBB0_180
# BB#219:                               # %for.end.193.i
                                        #   in Loop: Header=BB0_177 Depth=1
	movq	152(%rsp), %rcx         # 8-byte Reload
	cmpl	$3, %ecx
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rax
	leaq	240(%rsp), %rdi
	movq	%rdi, %rbp
	jne	.LBB0_224
# BB#220:                               # %land.lhs.true.196.i
                                        #   in Loop: Header=BB0_177 Depth=1
	movzbl	204(%rsp), %r10d
	movzbl	205(%rsp), %eax
	cmpl	%eax, %r10d
	movq	%rbx, %rax
	movq	%rdi, %rbp
	jne	.LBB0_224
# BB#221:                               # %land.lhs.true.203.i
                                        #   in Loop: Header=BB0_177 Depth=1
	testb	%r10b, %r10b
	movq	%rbx, %rax
	movq	%rdi, %rbp
	je	.LBB0_224
# BB#222:                               # %land.lhs.true.203.i
                                        #   in Loop: Header=BB0_177 Depth=1
	movzbl	206(%rsp), %eax
	movzbl	%r10b, %esi
	cmpl	%eax, %esi
	movq	%rbx, %rax
	movq	%rdi, %rbp
	jne	.LBB0_224
# BB#223:                               # %if.then.215.i
                                        #   in Loop: Header=BB0_177 Depth=1
	movb	%r10b, 207(%rsp)
	movb	$0, 206(%rsp)
	movw	$0, 204(%rsp)
	movq	%rbx, %rax
	movq	%rdi, %rbp
	.align	16, 0x90
.LBB0_224:                              # %for.body.225.i
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp), %rsi
	movb	(%rsi), %bl
	addb	%bl, %bl
	orb	203(%rsp,%rax), %bl
	movb	%bl, (%rsi)
	addq	$8, %rbp
	decq	%rax
	testq	%rax, %rax
	jg	.LBB0_224
# BB#225:                               # %for.end.238.i
                                        #   in Loop: Header=BB0_177 Depth=1
	cmpl	$7, %r8d
	movl	144(%rsp), %ebp         # 4-byte Reload
	movl	140(%rsp), %r10d        # 4-byte Reload
	movq	128(%rsp), %rbx         # 8-byte Reload
	jne	.LBB0_231
# BB#226:                               # %overflow.checked280
                                        #   in Loop: Header=BB0_177 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edx
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	256(%rsp), %rsi
	movl	$0, %edi
	je	.LBB0_229
	.align	16, 0x90
.LBB0_227:                              # %vector.body276
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-16(%rsi), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	(%rsi), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -16(%rsi)
	movdqa	%xmm2, (%rsi)
	addq	$32, %rsi
	addq	$-4, %rax
	jne	.LBB0_227
# BB#228:                               #   in Loop: Header=BB0_177 Depth=1
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB0_229:                              # %middle.block277
                                        #   in Loop: Header=BB0_177 Depth=1
	cmpq	%rdi, 104(%rsp)         # 8-byte Folded Reload
	je	.LBB0_231
	.align	16, 0x90
.LBB0_230:                              # %for.body.245.i
                                        #   Parent Loop BB0_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	240(%rsp,%rdi,8)
	incq	%rdi
	cmpq	%rdx, %rdi
	jl	.LBB0_230
.LBB0_231:                              # %for.inc.252.i
                                        #   in Loop: Header=BB0_177 Depth=1
	incq	%r14
	incl	%r8d
	movq	184(%rsp), %rax         # 8-byte Reload
	cltq
	addl	$4, %ebp
	addl	$4, %r10d
	addl	$4, %ebx
	cmpq	%rax, %r14
	jl	.LBB0_177
.LBB0_232:                              # %split_colour_at_most_2.exit
	cmpl	$1, %ecx
	sete	%al
	movzbl	%al, %edi
	leaq	240(%rsp), %r8
	movl	$2, %esi
	movq	576(%rsp), %rcx
	movq	184(%rsp), %r9          # 8-byte Reload
	jmp	.LBB0_318
.LBB0_47:                               # %if.else
	movl	%r8d, %edi
	movq	%r8, %rbp
	callq	eprn_bits_for_levels
	movq	%rbp, %r11
	movl	%eax, %ecx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movl	8(%r15), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	$256, %eax              # imm = 0x100
	xorl	%edx, %edx
	divl	%r11d
	movl	%eax, 152(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB0_54
# BB#48:                                # %for.body.i.25.preheader
	movq	192(%rsp), %rdx         # 8-byte Reload
	leal	-1(%rdx), %ecx
	xorl	%eax, %eax
	testb	$3, %dl
	je	.LBB0_51
# BB#49:                                # %for.body.i.25.prol.preheader
	movq	192(%rsp), %rdx         # 8-byte Reload
	andl	$3, %edx
	xorl	%eax, %eax
	movq	576(%rsp), %rsi
	.align	16, 0x90
.LBB0_50:                               # %for.body.i.25.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	movq	%rdi, 240(%rsp,%rax,8)
	incq	%rax
	addq	$16, %rsi
	cmpl	%eax, %edx
	jne	.LBB0_50
.LBB0_51:                               # %for.body.i.25.preheader.split
	cmpl	$3, %ecx
	jb	.LBB0_54
# BB#52:                                # %for.body.i.25.preheader.split.split
	movq	192(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	264(%rsp,%rax,8), %rdx
	addq	$3, %rax
	shlq	$4, %rax
	movq	576(%rsp), %rsi
	leaq	(%rax,%rsi), %rax
	.align	16, 0x90
.LBB0_53:                               # %for.body.i.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rax), %rsi
	movq	%rsi, -24(%rdx)
	movq	-32(%rax), %rsi
	movq	%rsi, -16(%rdx)
	movq	-16(%rax), %rsi
	movq	%rsi, -8(%rdx)
	movq	(%rax), %rsi
	movq	%rsi, (%rdx)
	addq	$32, %rdx
	addq	$64, %rax
	addl	$-4, %ecx
	jne	.LBB0_53
.LBB0_54:                               # %for.cond.4.preheader.i
	movq	176(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_118
# BB#55:                                # %for.body.6.lr.ph.i
	movq	%r15, 184(%rsp)         # 8-byte Spill
	decl	%r13d
	decl	%r11d
	movslq	%r13d, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	setle	%r8b
	movb	%r8b, 140(%rsp)         # 1-byte Spill
	leal	-1(%rcx), %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rdx, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	-4(%rax), %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	shrl	$2, %edx
	incl	%edx
	movl	%ecx, %esi
	andl	$1, %esi
	movl	%esi, 128(%rsp)         # 4-byte Spill
	andl	$3, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
	andl	$3, %edx
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movl	%ecx, %r10d
	andl	$3, %r10d
	leal	-4(%rax), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$8, %r12d
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1]
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_56:                               # %for.body.6.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_116 Depth 2
	movq	%rbx, %r9
	cmpl	$8, %r12d
	setne	%al
	movl	$0, %ecx
	cmovel	%ecx, %r12d
	orb	%r8b, %al
	jne	.LBB0_62
# BB#57:                                # %for.body.10.i.preheader
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	movl	$0, %eax
	je	.LBB0_59
	.align	16, 0x90
.LBB0_58:                               # %for.body.10.i.prol
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	240(%rsp,%rax,8), %rdx
	movb	$0, (%rdx)
	incq	%rax
	cmpl	%eax, %r10d
	jne	.LBB0_58
.LBB0_59:                               # %for.body.10.i.preheader.split
                                        #   in Loop: Header=BB0_56 Depth=1
	xorl	%r12d, %r12d
	movq	168(%rsp), %rcx         # 8-byte Reload
	cmpl	$3, %ecx
	jb	.LBB0_62
# BB#60:                                # %for.body.10.i.preheader.split.split
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	leaq	264(%rsp), %rcx
	leaq	(%rcx,%rax,8), %rax
	.align	16, 0x90
.LBB0_61:                               # %for.body.10.i
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rax), %rsi
	movb	$0, (%rsi)
	movq	-16(%rax), %rsi
	movb	$0, (%rsi)
	movq	-8(%rax), %rsi
	movb	$0, (%rsi)
	movq	(%rax), %rsi
	movb	$0, (%rsi)
	addq	$32, %rax
	addl	$-4, %edx
	jne	.LBB0_61
.LBB0_62:                               # %if.end.i.32
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r8
	movzbl	(%r8,%r14), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	divl	152(%rsp)               # 4-byte Folded Reload
	movl	%eax, %r13d
	imull	$255, %r13d, %eax
	xorl	%edx, %edx
	divl	%r11d
	movq	%r11, %r15
	movq	192(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB0_68
# BB#63:                                # %for.body.26.i.preheader
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$0, 128(%rsp)           # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB0_65
# BB#64:                                # %for.body.26.i.prol
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	240(%rsp), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%esi, %ebx
	movb	%bl, (%rdx)
	shrl	%r13d
	movl	$1, %esi
.LBB0_65:                               # %for.body.26.i.preheader.split
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB0_68
# BB#66:                                # %for.body.26.i.preheader.split.split
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	subl	%esi, %edx
	leaq	248(%rsp), %rcx
	leaq	(%rcx,%rsi,8), %rsi
	.align	16, 0x90
.LBB0_67:                               # %for.body.26.i
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rsi), %rbx
	movzbl	(%rbx), %r11d
	addl	%r11d, %r11d
	movl	%r13d, %ebp
	andl	$1, %ebp
	orl	%r11d, %ebp
	movb	%bpl, (%rbx)
	movl	%r13d, %ebp
	shrl	%ebp
	movq	(%rsi), %rbx
	movzbl	(%rbx), %ecx
	addl	%ecx, %ecx
	andl	$1, %ebp
	orl	%ecx, %ebp
	movb	%bpl, (%rbx)
	shrl	$2, %r13d
	andl	$63, %r13d
	addq	$16, %rsi
	addl	$-2, %edx
	jne	.LBB0_67
.LBB0_68:                               # %for.end.38.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	%eax, %edi
	jne	.LBB0_70
# BB#69:                                #   in Loop: Header=BB0_56 Depth=1
	movq	%r9, %rbx
	movq	%r15, %r11
	movb	140(%rsp), %r8b         # 1-byte Reload
	jmp	.LBB0_106
	.align	16, 0x90
.LBB0_70:                               # %if.then.41.i
                                        #   in Loop: Header=BB0_56 Depth=1
	subl	%eax, %edi
	imull	$7, %edi, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%ecx, %eax
	sarl	$4, %eax
	movl	%edi, %edx
	subl	%eax, %edx
	cmpq	144(%rsp), %r14         # 8-byte Folded Reload
	movq	%r9, %rbx
	jge	.LBB0_71
# BB#72:                                # %if.then.47.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movzbl	1(%r8,%r14), %esi
	addl	%esi, %eax
	js	.LBB0_73
# BB#74:                                # %if.else.i.37
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB0_76
# BB#75:                                # %if.then.56.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$-1, 1(%r8,%r14)
	leal	-255(%rdx,%rax), %edx
	movb	$-1, %al
	jmp	.LBB0_77
.LBB0_73:                               # %if.end.62.i.thread
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$0, 1(%r8,%r14)
	addl	%edi, %esi
	movl	%esi, %edx
.LBB0_71:                               #   in Loop: Header=BB0_56 Depth=1
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	%r15, %r11
	movb	140(%rsp), %r8b         # 1-byte Reload
	jmp	.LBB0_80
.LBB0_76:                               # %if.else.59.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%al, 1(%r8,%r14)
.LBB0_77:                               # %if.end.62.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	%r15, %r11
	movb	140(%rsp), %r8b         # 1-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %ecx
	cmpl	%ecx, %r14d
	jne	.LBB0_80
# BB#78:                                # %if.end.62.i
                                        #   in Loop: Header=BB0_56 Depth=1
	testb	%al, %al
	je	.LBB0_80
# BB#79:                                # %if.then.69.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	incl	8(%r9)
	.align	16, 0x90
.LBB0_80:                               # %if.end.74.i
                                        #   in Loop: Header=BB0_56 Depth=1
	leal	(%rdi,%rdi,2), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%eax, %esi
	sarl	$4, %esi
	movl	%edx, %eax
	subl	%esi, %eax
	testq	%r14, %r14
	jle	.LBB0_89
# BB#81:                                # %if.then.80.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	(%rbx), %rbp
	movq	%rbx, %rcx
	movzbl	-1(%r14,%rbp), %ebx
	addl	%ebx, %esi
	js	.LBB0_82
# BB#83:                                # %if.else.91.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$256, %esi              # imm = 0x100
	jl	.LBB0_85
# BB#84:                                # %if.then.94.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$-1, -1(%rbp,%r14)
	leal	-255(%rax,%rsi), %eax
	movb	$-1, %sil
	jmp	.LBB0_86
.LBB0_82:                               # %if.end.100.i.thread
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$0, -1(%rbp,%r14)
	addl	%edx, %ebx
	movl	%ebx, %eax
	movq	%rcx, %rbx
	jmp	.LBB0_89
.LBB0_85:                               # %if.else.97.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%sil, -1(%rbp,%r14)
.LBB0_86:                               # %if.end.100.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	%rcx, %rbx
	testb	%sil, %sil
	je	.LBB0_89
# BB#87:                                # %if.end.100.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movslq	8(%rbx), %rcx
	cmpq	%r14, %rcx
	jge	.LBB0_89
# BB#88:                                # %if.then.108.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movl	%r14d, 8(%rbx)
	.align	16, 0x90
.LBB0_89:                               # %if.end.111.i
                                        #   in Loop: Header=BB0_56 Depth=1
	leal	(%rdi,%rdi,4), %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	shrl	$28, %edi
	addl	%ecx, %edi
	sarl	$4, %edi
	movq	(%rbx), %rsi
	movzbl	(%rsi,%r14), %ebp
	movl	%ebp, %edx
	addl	%edi, %edx
	js	.LBB0_90
# BB#91:                                # %if.else.124.i
                                        #   in Loop: Header=BB0_56 Depth=1
	subl	%edi, %eax
	cmpl	$256, %edx              # imm = 0x100
	jl	.LBB0_93
# BB#92:                                # %if.then.127.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$-1, (%rsi,%r14)
	leal	-255(%rax,%rdx), %eax
	movb	$-1, %dl
	jmp	.LBB0_94
.LBB0_90:                               # %if.end.133.i.thread
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	$0, (%rsi,%r14)
	addl	%eax, %ebp
	movl	%ebp, %eax
	jmp	.LBB0_97
.LBB0_93:                               # %if.else.130.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%dl, (%rsi,%r14)
.LBB0_94:                               # %if.end.133.i
                                        #   in Loop: Header=BB0_56 Depth=1
	testb	%dl, %dl
	je	.LBB0_97
# BB#95:                                # %if.end.133.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movslq	8(%rbx), %rcx
	cmpq	%r14, %rcx
	jg	.LBB0_97
# BB#96:                                # %if.then.141.i
                                        #   in Loop: Header=BB0_56 Depth=1
	leal	1(%r14), %ecx
	movl	%ecx, 8(%rbx)
.LBB0_97:                               # %if.end.144.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpq	144(%rsp), %r14         # 8-byte Folded Reload
	jge	.LBB0_98
# BB#99:                                # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	(%rbx), %rdx
	movq	%rbx, %rcx
	movzbl	1(%r14,%rdx), %esi
	addl	%eax, %esi
	cmpl	$255, %esi
	movl	%esi, %eax
	movl	$255, %edi
	cmovgl	%edi, %eax
	movb	$-1, %bl
	jg	.LBB0_101
# BB#100:                               # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%sil, %bl
.LBB0_101:                              # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	%r9, 184(%rsp)          # 8-byte Spill
	xorl	%edi, %edi
	testl	%esi, %esi
	cmovsl	%edi, %eax
	js	.LBB0_103
# BB#102:                               # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%bl, %dil
.LBB0_103:                              # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%dil, 1(%r14,%rdx)
	leaq	2(%r14), %rdx
	movq	%rcx, %rbx
	movslq	8(%rbx), %rcx
	cmpq	%rdx, %rcx
	jge	.LBB0_106
# BB#104:                               # %if.then.147.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_106
# BB#105:                               # %if.then.171.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movl	%edx, 8(%rbx)
	jmp	.LBB0_106
	.align	16, 0x90
.LBB0_98:                               #   in Loop: Header=BB0_56 Depth=1
	movq	%r9, 184(%rsp)          # 8-byte Spill
.LBB0_106:                              # %if.end.176.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$7, %r12d
	setne	%al
	orb	%r8b, %al
	jne	.LBB0_117
# BB#107:                               # %overflow.checked306
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	je	.LBB0_114
# BB#108:                               # %vector.body302.preheader
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	$0, %edx
	je	.LBB0_110
	.align	16, 0x90
.LBB0_109:                              # %vector.body302.prol
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	240(%rsp,%rdx,8), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	256(%rsp,%rdx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, 240(%rsp,%rdx,8)
	movdqa	%xmm2, 256(%rsp,%rdx,8)
	addq	$4, %rdx
	incq	%rax
	jne	.LBB0_109
.LBB0_110:                              # %vector.body302.preheader.split
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpq	$12, 104(%rsp)          # 8-byte Folded Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	jb	.LBB0_114
# BB#111:                               # %vector.body302.preheader.split.split
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	subq	%rdx, %rax
	leaq	352(%rsp), %rcx
	leaq	(%rcx,%rdx,8), %rdx
	.align	16, 0x90
.LBB0_112:                              # %vector.body302
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-112(%rdx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-96(%rdx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -112(%rdx)
	movdqa	%xmm2, -96(%rdx)
	movdqa	-80(%rdx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-64(%rdx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -80(%rdx)
	movdqa	%xmm2, -64(%rdx)
	movdqa	-48(%rdx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-32(%rdx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -48(%rdx)
	movdqa	%xmm2, -32(%rdx)
	movdqa	-16(%rdx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	(%rdx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -16(%rdx)
	movdqa	%xmm2, (%rdx)
	subq	$-128, %rdx
	addq	$-16, %rax
	jne	.LBB0_112
# BB#113:                               #   in Loop: Header=BB0_56 Depth=1
	movq	160(%rsp), %rsi         # 8-byte Reload
.LBB0_114:                              # %middle.block303
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpq	%rsi, 120(%rsp)         # 8-byte Folded Reload
	je	.LBB0_117
# BB#115:                               # %for.body.183.i.preheader
                                        #   in Loop: Header=BB0_56 Depth=1
	movq	192(%rsp), %rax         # 8-byte Reload
	subl	%esi, %eax
	leaq	240(%rsp,%rsi,8), %rdx
	.align	16, 0x90
.LBB0_116:                              # %for.body.183.i
                                        #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	(%rdx)
	addq	$8, %rdx
	decl	%eax
	jne	.LBB0_116
.LBB0_117:                              # %for.inc.190.i
                                        #   in Loop: Header=BB0_56 Depth=1
	incq	%r14
	incl	%r12d
	movq	176(%rsp), %rax         # 8-byte Reload
	cltq
	cmpq	%rax, %r14
	jl	.LBB0_56
.LBB0_118:                              # %split_Gray.exit
	leaq	240(%rsp), %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	192(%rsp), %rdx         # 8-byte Reload
.LBB0_170:                              # %if.end.17
	movq	576(%rsp), %rcx
	movq	176(%rsp), %r9          # 8-byte Reload
	jmp	.LBB0_318
.LBB0_233:                              # %if.else.14
	movq	%r15, %r12
	movq	%rbx, %r15
	movl	%r8d, %edi
	movq	%r8, %rbx
	callq	eprn_bits_for_levels
	movl	%eax, %r14d
	movl	%ebp, %edi
	callq	eprn_bits_for_levels
	movq	%rbx, %r9
	movl	%eax, %r10d
	leal	(%r10,%r10,2), %esi
	addl	%r14d, %esi
	movl	8(%r12), %ecx
	movl	%ecx, %edi
	sarl	$31, %edi
	shrl	$30, %edi
	xorl	%eax, %eax
	testl	%r9d, %r9d
	movl	$0, %edx
	je	.LBB0_235
# BB#234:                               # %if.then.i.148
	movl	$256, %eax              # imm = 0x100
	xorl	%edx, %edx
	divl	%r9d
	leal	-1(%r9), %edx
.LBB0_235:                              # %if.end.i.150
	leal	(%rdi,%rcx), %edi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movl	%eax, 236(%rsp)
	movl	%edx, 220(%rsp)
	movl	%r14d, 508(%rsp)
	movl	$256, %eax              # imm = 0x100
	xorl	%edx, %edx
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	divl	%ebp
	leal	-1(%rbp), %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	%eax, 224(%rsp)
	movl	%edi, 208(%rsp)
	movl	%esi, 496(%rsp)
	movl	%eax, 228(%rsp)
	movl	%edi, 212(%rsp)
	leal	(%r14,%r10,2), %edx
	movl	%edx, 500(%rsp)
	movl	%eax, 232(%rsp)
	movl	%edi, 216(%rsp)
	movl	%r10d, %eax
	addl	%r14d, %eax
	movl	%eax, 504(%rsp)
	testl	%esi, %esi
	jle	.LBB0_242
# BB#236:                               # %for.body.23.i.preheader
	leal	(%r10,%r10,2), %eax
	leal	(%r14,%rax), %edi
	leal	-1(%r14,%rax), %r8d
	xorl	%eax, %eax
	testb	$3, %dil
	je	.LBB0_239
# BB#237:                               # %for.body.23.i.prol.preheader
	leal	(%r10,%r10,2), %eax
	leal	(%rax,%r14), %edi
	andl	$3, %edi
	xorl	%eax, %eax
	movq	576(%rsp), %rbx
	.align	16, 0x90
.LBB0_238:                              # %for.body.23.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movq	%rdx, 240(%rsp,%rax,8)
	incq	%rax
	addq	$16, %rbx
	cmpl	%eax, %edi
	jne	.LBB0_238
.LBB0_239:                              # %for.body.23.i.preheader.split
	cmpl	$3, %r8d
	jb	.LBB0_242
# BB#240:                               # %for.body.23.i.preheader.split.split
	leal	(%r10,%r10,2), %edx
	leal	(%rdx,%r14), %edx
	subl	%eax, %edx
	leaq	264(%rsp,%rax,8), %rdi
	addq	$3, %rax
	shlq	$4, %rax
	movq	576(%rsp), %rbp
	leaq	(%rax,%rbp), %rax
	.align	16, 0x90
.LBB0_241:                              # %for.body.23.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rax), %rbx
	movq	%rbx, -24(%rdi)
	movq	-32(%rax), %rbx
	movq	%rbx, -16(%rdi)
	movq	-16(%rax), %rbx
	movq	%rbx, -8(%rdi)
	movq	(%rax), %rbx
	movq	%rbx, (%rdi)
	addq	$32, %rdi
	addq	$64, %rax
	addl	$-4, %edx
	jne	.LBB0_241
.LBB0_242:                              # %for.cond.31.preheader.i
	movq	192(%rsp), %rax         # 8-byte Reload
	sarl	$2, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	cmpl	$4, %ecx
	jl	.LBB0_243
# BB#244:                               # %for.body.33.lr.ph.i
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%r13d, %eax
	sarl	$2, %eax
	decl	%eax
	testl	%r9d, %r9d
	setne	%cl
	decl	%r9d
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movzbl	%cl, %ecx
	orq	$2, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movslq	%eax, %r13
	testl	%esi, %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	setle	%r8b
	movb	%r8b, 104(%rsp)         # 1-byte Spill
	leal	(%r10,%r10,2), %eax
	movl	%r14d, %ecx
	addl	%eax, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leal	-1(%r14,%rax), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rdx, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	-4(%rax), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	shrl	$2, %edx
	incl	%edx
	andl	$3, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
	andl	$3, %edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	andl	$3, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	-4(%rax), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$8, %ebx
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1]
	movl	$-4, %esi
	movl	$4, %edi
	movl	$0, %ebp
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB0_245:                              # %for.body.33.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_247 Depth 2
                                        #     Child Loop BB0_250 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_302 Depth 3
                                        #     Child Loop BB0_308 Depth 2
                                        #     Child Loop BB0_311 Depth 2
                                        #     Child Loop BB0_315 Depth 2
	cmpl	$8, %ebx
	setne	%al
	movl	$0, %ecx
	cmovel	%ecx, %ebx
	orb	%r8b, %al
	jne	.LBB0_251
# BB#246:                               # %for.body.38.i.preheader
                                        #   in Loop: Header=BB0_245 Depth=1
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	movq	64(%rsp), %rdx          # 8-byte Reload
	je	.LBB0_248
	.align	16, 0x90
.LBB0_247:                              # %for.body.38.i.prol
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	240(%rsp,%rax,8), %rcx
	movb	$0, (%rcx)
	incq	%rax
	cmpl	%eax, %edx
	jne	.LBB0_247
.LBB0_248:                              # %for.body.38.i.preheader.split
                                        #   in Loop: Header=BB0_245 Depth=1
	xorl	%ebx, %ebx
	movq	88(%rsp), %rcx          # 8-byte Reload
	cmpl	$3, %ecx
	jb	.LBB0_251
# BB#249:                               # %for.body.38.i.preheader.split.split
                                        #   in Loop: Header=BB0_245 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	leaq	264(%rsp), %rdx
	leaq	(%rdx,%rax,8), %rax
	.align	16, 0x90
.LBB0_250:                              # %for.body.38.i
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rax), %rdx
	movb	$0, (%rdx)
	movq	-16(%rax), %rdx
	movb	$0, (%rdx)
	movq	-8(%rax), %rdx
	movb	$0, (%rdx)
	movq	(%rax), %rdx
	movb	$0, (%rdx)
	addq	$32, %rax
	addl	$-4, %ecx
	jne	.LBB0_250
.LBB0_251:                              # %if.end.44.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movslq	%esi, %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	%esi, 140(%rsp)         # 4-byte Spill
	movslq	%edi, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	%edi, 128(%rsp)         # 4-byte Spill
	movslq	%ebp, %r8
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	leal	(,%r11,4), %r10d
	leal	4(,%r11,4), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	leal	8(,%r11,4), %r14d
	movq	144(%rsp), %r9          # 8-byte Reload
	.align	16, 0x90
.LBB0_252:                              # %for.body.47.i
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12), %rcx
	leaq	(%rcx,%r8), %rbx
	movzbl	(%r9,%rbx), %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	224(%rsp,%r9,4)
	movb	%al, 204(%rsp,%r9)
	imull	$255, %eax, %eax
	xorl	%edx, %edx
	divl	208(%rsp,%r9,4)
	subl	%eax, %esi
	je	.LBB0_287
# BB#253:                               # %if.then.69.i.165
                                        #   in Loop: Header=BB0_252 Depth=2
	imull	$7, %esi, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%edx, %eax
	sarl	$4, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	cmpq	%r13, %r11
	jge	.LBB0_262
# BB#254:                               # %if.then.75.i
                                        #   in Loop: Header=BB0_252 Depth=2
	leaq	4(%rcx,%r8), %rcx
	movzbl	4(%r9,%rbx), %ebx
	addl	%ebx, %eax
	js	.LBB0_255
# BB#256:                               # %if.else.83.i
                                        #   in Loop: Header=BB0_252 Depth=2
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB0_258
# BB#257:                               # %if.then.86.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$-1, (%rcx,%r9)
	leal	-255(%rdx,%rax), %edx
	movb	$-1, %al
	jmp	.LBB0_259
.LBB0_255:                              # %if.end.92.i.thread
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$0, (%rcx,%r9)
	addl	%esi, %ebx
	movl	%ebx, %edx
	jmp	.LBB0_262
.LBB0_258:                              # %if.else.89.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%al, (%rcx,%r9)
.LBB0_259:                              # %if.end.92.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movq	192(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %ecx
	cmpl	%ecx, %r11d
	jne	.LBB0_262
# BB#260:                               # %if.end.92.i
                                        #   in Loop: Header=BB0_252 Depth=2
	testb	%al, %al
	je	.LBB0_262
# BB#261:                               # %if.then.99.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	addl	$4, 8(%r12)
	.align	16, 0x90
.LBB0_262:                              # %if.end.104.i
                                        #   in Loop: Header=BB0_252 Depth=2
	leal	(%rsi,%rsi,2), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	addl	%eax, %ecx
	sarl	$4, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testq	%r11, %r11
	jle	.LBB0_271
# BB#263:                               # %if.then.110.i.175
                                        #   in Loop: Header=BB0_252 Depth=2
	movq	(%r15), %rbx
	addq	184(%rsp), %rbx         # 8-byte Folded Reload
	movzbl	(%r9,%rbx), %edi
	addl	%edi, %ecx
	js	.LBB0_264
# BB#265:                               # %if.else.124.i.179
                                        #   in Loop: Header=BB0_252 Depth=2
	cmpl	$256, %ecx              # imm = 0x100
	jl	.LBB0_267
# BB#266:                               # %if.then.127.i.182
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$-1, (%rbx,%r9)
	leal	-255(%rax,%rcx), %eax
	movb	$-1, %cl
	jmp	.LBB0_268
.LBB0_264:                              # %if.end.133.i.187.thread
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$0, (%rbx,%r9)
	addl	%edx, %edi
	movl	%edi, %eax
	jmp	.LBB0_271
.LBB0_267:                              # %if.else.130.i.184
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%cl, (%rbx,%r9)
.LBB0_268:                              # %if.end.133.i.187
                                        #   in Loop: Header=BB0_252 Depth=2
	testb	%cl, %cl
	je	.LBB0_271
# BB#269:                               # %if.end.133.i.187
                                        #   in Loop: Header=BB0_252 Depth=2
	cmpl	%r10d, 8(%r15)
	jge	.LBB0_271
# BB#270:                               # %if.then.142.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movl	%r10d, 8(%r15)
	.align	16, 0x90
.LBB0_271:                              # %if.end.146.i
                                        #   in Loop: Header=BB0_252 Depth=2
	leal	(%rsi,%rsi,4), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%ecx, %esi
	sarl	$4, %esi
	movq	(%r15), %rdx
	addq	%r8, %rdx
	movzbl	(%r9,%rdx), %edi
	movl	%edi, %ecx
	addl	%esi, %ecx
	js	.LBB0_272
# BB#273:                               # %if.else.162.i
                                        #   in Loop: Header=BB0_252 Depth=2
	subl	%esi, %eax
	cmpl	$256, %ecx              # imm = 0x100
	jl	.LBB0_275
# BB#274:                               # %if.then.165.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$-1, (%rdx,%r9)
	leal	-255(%rax,%rcx), %eax
	movb	$-1, %cl
	jmp	.LBB0_276
.LBB0_272:                              # %if.end.171.i.thread
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	$0, (%rdx,%r9)
	addl	%eax, %edi
	movl	%edi, %eax
	jmp	.LBB0_279
.LBB0_275:                              # %if.else.168.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%cl, (%rdx,%r9)
.LBB0_276:                              # %if.end.171.i
                                        #   in Loop: Header=BB0_252 Depth=2
	testb	%cl, %cl
	je	.LBB0_279
# BB#277:                               # %if.end.171.i
                                        #   in Loop: Header=BB0_252 Depth=2
	cmpl	%r10d, 8(%r15)
	jg	.LBB0_279
# BB#278:                               # %if.then.180.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movl	168(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 8(%r15)
.LBB0_279:                              # %if.end.184.i
                                        #   in Loop: Header=BB0_252 Depth=2
	cmpq	%r13, %r11
	jge	.LBB0_287
# BB#280:                               # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movq	(%r15), %rcx
	addq	176(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	(%r9,%rcx), %edx
	addl	%eax, %edx
	cmpl	$255, %edx
	movl	%edx, %eax
	movl	$255, %esi
	cmovgl	%esi, %eax
	movb	$-1, %bl
	jg	.LBB0_282
# BB#281:                               # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%dl, %bl
.LBB0_282:                              # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	xorl	%esi, %esi
	testl	%edx, %edx
	cmovsl	%esi, %eax
	js	.LBB0_284
# BB#283:                               # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%bl, %sil
.LBB0_284:                              # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movb	%sil, (%r9,%rcx)
	cmpl	%r14d, 8(%r15)
	jge	.LBB0_287
# BB#285:                               # %if.then.187.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.LBB0_287
# BB#286:                               # %if.then.216.i
                                        #   in Loop: Header=BB0_252 Depth=2
	movl	%r14d, 8(%r15)
	.align	16, 0x90
.LBB0_287:                              # %for.inc.223.i
                                        #   in Loop: Header=BB0_252 Depth=2
	testq	%r9, %r9
	leaq	-1(%r9), %r9
	jg	.LBB0_252
# BB#288:                               # %for.end.224.i
                                        #   in Loop: Header=BB0_245 Depth=1
	xorl	%ebp, %ebp
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$3, %eax
	jne	.LBB0_294
# BB#289:                               # %land.lhs.true.227.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movzbl	204(%rsp), %esi
	movzbl	205(%rsp), %eax
	cmpl	%eax, %esi
	jne	.LBB0_294
# BB#290:                               # %land.lhs.true.234.i
                                        #   in Loop: Header=BB0_245 Depth=1
	testb	%sil, %sil
	je	.LBB0_294
# BB#291:                               # %land.lhs.true.234.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movzbl	206(%rsp), %eax
	movzbl	%sil, %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_294
# BB#292:                               # %if.then.246.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	imull	%eax, %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	movl	36(%rsp), %ecx          # 4-byte Reload
	divl	%ecx
	testl	%edx, %edx
	jne	.LBB0_294
# BB#293:                               # %if.then.254.i
                                        #   in Loop: Header=BB0_245 Depth=1
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%ecx
	movb	%al, 207(%rsp)
	movb	$0, 206(%rsp)
	movw	$0, 204(%rsp)
	.align	16, 0x90
.LBB0_294:                              # %while.cond.preheader.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movq	144(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB0_295:                              # %while.cond.preheader.i
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_302 Depth 3
	movl	496(%rsp,%r14,4), %r10d
	cmpl	%r10d, %ebp
	jge	.LBB0_296
# BB#297:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB0_295 Depth=2
	movslq	%r10d, %rsi
	movb	204(%rsp,%r14), %al
	movslq	%ebp, %r8
	movl	%r10d, %edi
	subl	%ebp, %edi
	leaq	-1(%rsi), %rbp
	testb	$1, %dil
	jne	.LBB0_299
# BB#298:                               #   in Loop: Header=BB0_295 Depth=2
	movq	%r8, %rdi
	jmp	.LBB0_300
	.align	16, 0x90
.LBB0_296:                              #   in Loop: Header=BB0_295 Depth=2
	movl	%ebp, %r10d
	jmp	.LBB0_304
	.align	16, 0x90
.LBB0_299:                              # %while.body.i.prol
                                        #   in Loop: Header=BB0_295 Depth=2
	movq	240(%rsp,%r8,8), %rdi
	movb	(%rdi), %r9b
	addb	%r9b, %r9b
	movb	%al, %cl
	andb	$1, %cl
	orb	%r9b, %cl
	movb	%cl, (%rdi)
	shrb	%al
	leaq	1(%r8), %rdi
.LBB0_300:                              # %while.body.lr.ph.i.split
                                        #   in Loop: Header=BB0_295 Depth=2
	cmpq	%r8, %rbp
	je	.LBB0_303
# BB#301:                               # %while.body.lr.ph.i.split.split
                                        #   in Loop: Header=BB0_295 Depth=2
	subq	%rdi, %rsi
	leaq	248(%rsp), %rcx
	leaq	(%rcx,%rdi,8), %rbp
	.align	16, 0x90
.LBB0_302:                              # %while.body.i
                                        #   Parent Loop BB0_245 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbp), %rcx
	movb	(%rcx), %dl
	addb	%dl, %dl
	movb	%al, %bl
	andb	$1, %bl
	orb	%dl, %bl
	movb	%bl, (%rcx)
	movb	%al, %cl
	shrb	%cl
	movq	(%rbp), %rdx
	movb	(%rdx), %bl
	addb	%bl, %bl
	andb	$1, %cl
	orb	%bl, %cl
	movb	%cl, (%rdx)
	shrb	$2, %al
	addq	$16, %rbp
	addq	$-2, %rsi
	jne	.LBB0_302
.LBB0_303:                              # %while.cond.for.inc.286_crit_edge.i
                                        #   in Loop: Header=BB0_295 Depth=2
	movb	%al, 204(%rsp,%r14)
.LBB0_304:                              # %for.inc.286.i
                                        #   in Loop: Header=BB0_295 Depth=2
	testq	%r14, %r14
	leaq	-1(%r14), %r14
	movl	%r10d, %ebp
	jg	.LBB0_295
# BB#305:                               # %for.end.288.i
                                        #   in Loop: Header=BB0_245 Depth=1
	movl	112(%rsp), %ebx         # 4-byte Reload
	cmpl	$7, %ebx
	setne	%al
	movb	104(%rsp), %r8b         # 1-byte Reload
	orb	%r8b, %al
	movl	140(%rsp), %esi         # 4-byte Reload
	movl	128(%rsp), %edi         # 4-byte Reload
	movl	120(%rsp), %ebp         # 4-byte Reload
	jne	.LBB0_316
# BB#306:                               # %overflow.checked
                                        #   in Loop: Header=BB0_245 Depth=1
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_313
# BB#307:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_245 Depth=1
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, %ecx
	je	.LBB0_309
	.align	16, 0x90
.LBB0_308:                              # %vector.body.prol
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	240(%rsp,%rcx,8), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	256(%rsp,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, 240(%rsp,%rcx,8)
	movdqa	%xmm2, 256(%rsp,%rcx,8)
	addq	$4, %rcx
	incq	%rax
	jne	.LBB0_308
.LBB0_309:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_245 Depth=1
	cmpq	$12, 56(%rsp)           # 8-byte Folded Reload
	movq	160(%rsp), %rdx         # 8-byte Reload
	jb	.LBB0_313
# BB#310:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_245 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	subq	%rcx, %rax
	leaq	352(%rsp), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	16, 0x90
.LBB0_311:                              # %vector.body
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-112(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-96(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -112(%rcx)
	movdqa	%xmm2, -96(%rcx)
	movdqa	-80(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-64(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -80(%rcx)
	movdqa	%xmm2, -64(%rcx)
	movdqa	-48(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-32(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -48(%rcx)
	movdqa	%xmm2, -32(%rcx)
	movdqa	-16(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -16(%rcx)
	movdqa	%xmm2, (%rcx)
	subq	$-128, %rcx
	addq	$-16, %rax
	jne	.LBB0_311
# BB#312:                               #   in Loop: Header=BB0_245 Depth=1
	movq	160(%rsp), %rdx         # 8-byte Reload
.LBB0_313:                              # %middle.block
                                        #   in Loop: Header=BB0_245 Depth=1
	cmpq	%rdx, 80(%rsp)          # 8-byte Folded Reload
	je	.LBB0_316
# BB#314:                               # %for.body.295.i.preheader
                                        #   in Loop: Header=BB0_245 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	subl	%edx, %eax
	leaq	240(%rsp,%rdx,8), %rcx
	.align	16, 0x90
.LBB0_315:                              # %for.body.295.i
                                        #   Parent Loop BB0_245 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	(%rcx)
	addq	$8, %rcx
	decl	%eax
	jne	.LBB0_315
.LBB0_316:                              # %for.inc.302.i
                                        #   in Loop: Header=BB0_245 Depth=1
	incq	%r11
	incl	%ebx
	movq	192(%rsp), %rax         # 8-byte Reload
	cltq
	addl	$4, %esi
	addl	$4, %edi
	addl	$4, %ebp
	cmpq	%rax, %r11
	jl	.LBB0_245
	jmp	.LBB0_317
.LBB0_243:
	movl	%esi, 12(%rsp)          # 4-byte Spill
.LBB0_317:                              # %split_colour.exit
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edi
	leaq	240(%rsp), %r8
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	576(%rsp), %rcx
	movq	192(%rsp), %r9          # 8-byte Reload
.LBB0_318:                              # %if.end.17
	callq	eprn_finalize
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	eprn_split_FS, .Lfunc_end0-eprn_split_FS
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
