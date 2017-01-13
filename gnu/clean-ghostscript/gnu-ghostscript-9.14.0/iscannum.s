	.text
	.file	"iscannum.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4621819117588971520     # double 10
.LCPI0_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_3:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI0_4:
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.text
	.globl	scan_number
	.align	16, 0x90
	.type	scan_number,@function
scan_number:                            # @scan_number
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
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %r10d
	movl	$-18, %r14d
	cmpq	%rsi, %rdi
	jae	.LBB0_153
# BB#1:                                 # %if.else
	leaq	1(%rdi), %rax
	movzbl	(%rdi), %ecx
	movzbl	scan_char_array+4(%rcx), %r11d
	cmpq	$10, %r11
	jae	.LBB0_2
# BB#18:                                # %if.end.23
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rsi, %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	jl	.LBB0_19
# BB#20:                                # %if.then.27
	movzbl	(%rax), %ebp
	movzbl	scan_char_array+4(%rbp), %eax
	cmpq	$10, %rax
	jae	.LBB0_21
# BB#22:                                # %if.end.36
	leaq	(%r11,%r11,4), %rcx
	leaq	(%rax,%rcx,2), %r11
	movzbl	2(%rdi), %ebp
	movzbl	scan_char_array+4(%rbp), %eax
	cmpq	$10, %rax
	jae	.LBB0_23
# BB#24:                                # %if.end.46
	leaq	(%r11,%r11,4), %rcx
	leaq	(%rax,%rcx,2), %r11
	movzbl	3(%rdi), %ebp
	addq	$4, %rdi
	movzbl	scan_char_array+4(%rbp), %eax
	cmpq	$9, %rax
	ja	.LBB0_25
# BB#26:                                # %if.end.59
	movq	%r8, -8(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	leaq	(%r11,%r11,4), %rcx
	leaq	(%rax,%rcx,2), %rbx
	jmp	.LBB0_27
.LBB0_2:                                # %if.then.4
	cmpq	%rsi, %rax
	jae	.LBB0_153
# BB#3:                                 # %if.then.4
	movzbl	%cl, %ecx
	cmpl	$46, %ecx
	jne	.LBB0_153
# BB#4:                                 # %if.else.12
	movzbl	(%rax), %ebp
	movzbl	scan_char_array+4(%rbp), %eax
	cmpl	$9, %eax
	ja	.LBB0_153
# BB#5:                                 # %if.end.22
	addq	$2, %rdi
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	movq	%rdi, %r12
	jmp	.LBB0_6
.LBB0_19:
	movq	%r8, -8(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	movq	%r11, %rbx
	movq	%rax, %rdi
.LBB0_27:                               # %if.end.63
	movl	%r9d, %eax
	andl	$128, %eax
	shrl	$7, %eax
	leaq	1(%rdx), %rcx
	testl	%eax, %eax
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	cmoveq	%rdx, %r15
	movq	$-2147483648, %r11      # imm = 0xFFFFFFFF80000000
	cmoveq	%rcx, %r11
	testb	$64, %r9b
	movq	$-1, %rcx
	cmoveq	%r15, %rcx
	testl	%r10d, %r10d
	cmovsq	%r15, %rcx
	cmpq	%rsi, %rdi
	jae	.LBB0_28
# BB#29:                                # %if.else.75.lr.ph
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %rcx
	.align	16, 0x90
.LBB0_30:                               # %if.else.75
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rdi), %r12
	movzbl	(%rdi), %ebp
	movzbl	scan_char_array+4(%rbp), %r13d
	cmpq	$9, %r13
	ja	.LBB0_45
# BB#31:                                # %if.end.85
                                        #   in Loop: Header=BB0_30 Depth=1
	cmpq	%rdx, %rbx
	jb	.LBB0_44
# BB#32:                                # %land.lhs.true.88
                                        #   in Loop: Header=BB0_30 Depth=1
	ja	.LBB0_34
# BB#33:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_30 Depth=1
	cmpq	%rcx, %r13
	ja	.LBB0_34
.LBB0_44:                               # %for.inc
                                        #   in Loop: Header=BB0_30 Depth=1
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%r13,%rax,2), %rbx
	cmpq	%rsi, %r12
	movq	%r12, %rdi
	jb	.LBB0_30
.LBB0_28:
	xorl	%r14d, %r14d
	movq	%rbx, %r11
	movq	%r8, %r15
	jmp	.LBB0_103
.LBB0_21:                               # %if.then.34
	addq	$2, %rdi
	movq	%rdi, %r12
	jmp	.LBB0_46
.LBB0_23:                               # %if.then.45
	addq	$3, %rdi
	movq	%rdi, %r12
	jmp	.LBB0_46
.LBB0_45:                               # %ind.loopexit
	movq	%rbx, %r11
	movq	%r8, %r15
	movq	-8(%rsp), %r8           # 8-byte Reload
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	jmp	.LBB0_46
.LBB0_34:                               # %lor.lhs.false.if.then.95_crit_edge
	leaq	1(%rdi), %r12
	movabsq	$-3689348814741910323, %rcx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r15, %rax
	mulq	%rcx
	shrq	$3, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB0_106
# BB#35:                                # %land.lhs.true.99
	testl	%r10d, %r10d
	jns	.LBB0_106
# BB#36:                                # %land.lhs.true.99
	movzbl	%r13b, %eax
	cmpl	$8, %eax
	jne	.LBB0_106
# BB#37:                                # %if.then.108
	cmpq	%rsi, %r12
	movq	%r8, %r15
	jae	.LBB0_38
# BB#40:                                # %if.end.115
	leaq	2(%rdi), %r12
	movzbl	1(%rdi), %ebp
	cvtsi2sdq	%r11, %xmm0
	xorpd	.LCPI0_0(%rip), %xmm0
	movl	%ebp, %ecx
	andl	$223, %ecx
	xorl	%eax, %eax
	cmpl	$69, %ecx
	movq	-8(%rsp), %r8           # 8-byte Reload
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	je	.LBB0_118
# BB#41:                                # %if.else.123
	cmpl	$46, %ebp
	jne	.LBB0_39
# BB#42:                                # %if.then.126
	xorl	%eax, %eax
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jae	.LBB0_132
# BB#43:                                # %if.else.130
	movzbl	2(%rdi), %ebp
	addq	$3, %rdi
	movq	%rdi, %r12
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_129
.LBB0_106:                              # %if.else.144
	cvtsi2sdq	%rbx, %xmm0
	movq	%r8, %r15
	movq	-8(%rsp), %r8           # 8-byte Reload
	jmp	.LBB0_107
.LBB0_25:
	movq	%rdi, %r12
.LBB0_46:                               # %ind
	cmpl	$45, %ebp
	jle	.LBB0_47
# BB#49:                                # %ind
	cmpl	$101, %ebp
	je	.LBB0_55
# BB#50:                                # %ind
	cmpl	$69, %ebp
	jne	.LBB0_51
.LBB0_55:                               # %sw.bb.158
	movq	%r11, %rax
	negq	%rax
	testl	%r10d, %r10d
	cmovnsq	%r11, %rax
	cvtsi2sdq	%rax, %xmm0
	xorl	%eax, %eax
	jmp	.LBB0_56
.LBB0_47:                               # %ind
	cmpl	$-1, %ebp
	jne	.LBB0_70
# BB#48:
	xorl	%r14d, %r14d
	jmp	.LBB0_103
.LBB0_51:                               # %ind
	cmpl	$46, %ebp
	jne	.LBB0_102
# BB#52:                                # %sw.bb
	xorl	%eax, %eax
	jmp	.LBB0_53
.LBB0_70:                               # %ind
	cmpl	$35, %ebp
	jne	.LBB0_102
# BB#71:                                # %sw.bb.165
	testl	%r10d, %r10d
	jne	.LBB0_153
# BB#72:                                # %sw.bb.165
	leal	-2(%r11), %eax
	cmpl	$34, %eax
	ja	.LBB0_153
# BB#73:                                # %if.end.175
	leal	-1(%r11), %eax
	testl	%r11d, %eax
	je	.LBB0_74
# BB#90:                                # %if.else.209
	movslq	%r11d, %rcx
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rsi, %r12
	jae	.LBB0_91
# BB#92:
	xorl	%edi, %edi
	movl	$-13, %r14d
.LBB0_93:                               # %if.else.218
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ebp
	incq	%r12
	movzbl	scan_char_array+4(%rbp), %ebp
	cmpl	%r11d, %ebp
	jge	.LBB0_87
# BB#94:                                # %if.end.228
                                        #   in Loop: Header=BB0_93 Depth=1
	cmpq	%rax, %rdi
	jl	.LBB0_97
# BB#95:                                # %land.lhs.true.231
                                        #   in Loop: Header=BB0_93 Depth=1
	jg	.LBB0_153
# BB#96:                                # %land.lhs.true.231
                                        #   in Loop: Header=BB0_93 Depth=1
	cmpq	%rdx, %rbp
	jg	.LBB0_153
.LBB0_97:                               # %for.inc.240
                                        #   in Loop: Header=BB0_93 Depth=1
	imulq	%rcx, %rdi
	addq	%rbp, %rdi
	cmpq	%rsi, %r12
	jb	.LBB0_93
	jmp	.LBB0_98
.LBB0_102:                              # %sw.default
	movq	%r12, (%r8)
	movl	$1, %r14d
.LBB0_103:                              # %iret
	movq	%r11, %rax
	negq	%rax
	testl	%r10d, %r10d
	cmovnsq	%r11, %rax
	testb	$-128, %r9b
	je	.LBB0_105
# BB#104:                               # %cond.end.277
	cltq
.LBB0_105:                              # %cond.end.290
	movq	%rax, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
	jmp	.LBB0_153
.LBB0_38:                               # %if.else.123.thread
	cvtsi2sdq	%r11, %xmm0
	xorpd	.LCPI0_0(%rip), %xmm0
	movl	$-1, %ebp
	movq	-8(%rsp), %r8           # 8-byte Reload
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
.LBB0_39:                               # %if.else.134
	movslq	%ebp, %rax
	movzbl	scan_char_array+4(%rax), %r13d
	cmpl	$10, %r13d
	jae	.LBB0_46
	.align	16, 0x90
.LBB0_107:                              # %for.cond.297
                                        # =>This Inner Loop Header: Depth=1
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
	movzbl	%r13b, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jae	.LBB0_109
# BB#108:                               # %if.else.304
                                        #   in Loop: Header=BB0_107 Depth=1
	movzbl	(%r12), %ebp
	incq	%r12
.LBB0_109:                              # %if.end.307
                                        #   in Loop: Header=BB0_107 Depth=1
	addsd	%xmm1, %xmm0
	movslq	%ebp, %rax
	movzbl	scan_char_array+4(%rax), %r13d
	cmpl	$10, %r13d
	jb	.LBB0_107
# BB#110:                               # %for.end.315
	xorl	%ecx, %ecx
	cmpl	$45, %ebp
	jle	.LBB0_111
# BB#116:                               # %for.end.315
	cmpl	$101, %ebp
	je	.LBB0_117
# BB#120:                               # %for.end.315
	cmpl	$69, %ebp
	jne	.LBB0_121
.LBB0_117:
	xorl	%eax, %eax
	jmp	.LBB0_118
.LBB0_111:                              # %for.end.315
	cmpl	$-1, %ebp
	je	.LBB0_114
# BB#112:                               # %for.end.315
	cmpl	$35, %ebp
	je	.LBB0_153
	jmp	.LBB0_113
.LBB0_121:                              # %for.end.315
	cmpl	$46, %ebp
	jne	.LBB0_113
# BB#122:                               # %sw.bb.316
	xorl	%eax, %eax
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jb	.LBB0_131
	jmp	.LBB0_132
.LBB0_113:                              # %sw.default.324
	movq	%r12, (%r8)
	movl	$1, %ecx
.LBB0_114:                              # %sw.bb.325
	testl	%r10d, %r10d
	jns	.LBB0_152
# BB#115:
	xorpd	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_152
.LBB0_74:                               # %if.then.179
	movl	$-15, %r14d
	movl	$1, %ecx
	cmpl	$7, %r11d
	jle	.LBB0_75
# BB#78:                                # %if.then.179
	cmpl	$8, %r11d
	je	.LBB0_82
# BB#79:                                # %if.then.179
	cmpl	$16, %r11d
	jne	.LBB0_80
# BB#83:                                # %sw.bb.183
	movabsq	$1152921504606846975, %rdx # imm = 0xFFFFFFFFFFFFFFF
	movl	$4, %ecx
	jmp	.LBB0_84
.LBB0_75:                               # %if.then.179
	cmpl	$2, %r11d
	je	.LBB0_84
# BB#76:                                # %if.then.179
	cmpl	$4, %r11d
	jne	.LBB0_153
# BB#77:                                # %sw.bb.181
	movabsq	$4611686018427387903, %rdx # imm = 0x3FFFFFFFFFFFFFFF
	movl	$2, %ecx
	jmp	.LBB0_84
.LBB0_82:                               # %sw.bb.182
	movabsq	$2305843009213693951, %rdx # imm = 0x1FFFFFFFFFFFFFFF
	movl	$3, %ecx
	jmp	.LBB0_84
.LBB0_80:                               # %if.then.179
	cmpl	$32, %r11d
	jne	.LBB0_153
# BB#81:                                # %sw.bb.184
	movabsq	$576460752303423487, %rdx # imm = 0x7FFFFFFFFFFFFFF
	movl	$5, %ecx
.LBB0_84:                               # %for.cond.186.preheader
	cmpq	%rsi, %r12
	jae	.LBB0_91
# BB#85:
	xorl	%edi, %edi
	movl	$-13, %r14d
.LBB0_86:                               # %if.else.190
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	incq	%r12
	movzbl	scan_char_array+4(%rax), %eax
	cmpl	%r11d, %eax
	jge	.LBB0_87
# BB#88:                                # %if.end.200
                                        #   in Loop: Header=BB0_86 Depth=1
	cmpq	%rdx, %rdi
	jg	.LBB0_153
# BB#89:                                # %for.inc.205
                                        #   in Loop: Header=BB0_86 Depth=1
	shlq	%cl, %rdi
	leaq	(%rdi,%rax), %rdi
	cmpq	%rsi, %r12
	jb	.LBB0_86
.LBB0_98:
	xorl	%r14d, %r14d
	jmp	.LBB0_99
.LBB0_91:
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	jmp	.LBB0_99
.LBB0_87:                               # %if.then.199
	movq	%r12, (%r8)
	movl	$1, %r14d
.LBB0_99:                               # %if.end.249
	testb	$-128, %r9b
	jne	.LBB0_100
# BB#101:                               # %if.else.257
	movq	%rdi, 8(%r15)
	movw	$2816, (%r15)           # imm = 0xB00
	jmp	.LBB0_153
.LBB0_100:                              # %if.then.252
	movslq	%edi, %rax
	jmp	.LBB0_105
.LBB0_6:                                # %while.cond
	movslq	%ebp, %rdx
	movzbl	scan_char_array+4(%rdx), %ecx
	cmpl	$45, %edx
	je	.LBB0_8
# BB#7:                                 # %while.cond
	cmpl	$9, %ecx
	ja	.LBB0_13
.LBB0_8:                                # %while.body
	cmpl	$45, %ebp
	je	.LBB0_9
# BB#123:                               # %if.end.360
	cmpq	$214748364, %r11        # imm = 0xCCCCCCC
	jl	.LBB0_127
# BB#124:                               # %land.lhs.true.363
	jg	.LBB0_126
# BB#125:                               # %land.lhs.true.363
	movzbl	%cl, %edx
	cmpl	$8, %edx
	jae	.LBB0_126
.LBB0_127:                              # %if.end.372
	leaq	(%r11,%r11,4), %rdx
	leaq	(%rcx,%rdx,2), %r11
	decl	%eax
.LBB0_53:                               # %sw.bb
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jae	.LBB0_6
# BB#54:                                # %if.else.379
	movzbl	(%r12), %ebp
	incq	%r12
	jmp	.LBB0_6
.LBB0_9:                                # %if.then.342
	movl	$45, %ebp
	testb	$32, %r9b
	je	.LBB0_13
	.align	16, 0x90
.LBB0_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jae	.LBB0_12
# BB#11:                                # %if.else.351
                                        #   in Loop: Header=BB0_10 Depth=1
	movzbl	(%r12), %ebp
	incq	%r12
.LBB0_12:                               # %do.cond
                                        #   in Loop: Header=BB0_10 Depth=1
	movslq	%ebp, %rcx
	movzbl	scan_char_array+4(%rcx), %ecx
	cmpl	$10, %ecx
	jb	.LBB0_10
.LBB0_13:                               # %while.end
	movq	%r11, %rcx
	negq	%rcx
	testl	%r10d, %r10d
	cmovnsq	%r11, %rcx
	cmpl	$-6, %eax
	jl	.LBB0_128
# BB#14:                                # %while.end
	movl	%ebp, %edx
	andl	$-33, %edx
	cmpl	$69, %edx
	je	.LBB0_128
# BB#15:                                # %if.then.396
	xorl	%r14d, %r14d
	cmpl	$-1, %ebp
	je	.LBB0_17
# BB#16:                                # %if.then.399
	movq	%r12, (%r8)
	movl	$1, %r14d
.LBB0_17:                               # %if.end.400
	cvtsi2sdq	%rcx, %xmm0
	negl	%eax
	cltq
	mulsd	scan_number.neg_powers_10(,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movw	$4096, (%r15)           # imm = 0x1000
	jmp	.LBB0_153
.LBB0_128:                              # %if.end.410
	cvtsi2sdq	%rcx, %xmm0
	jmp	.LBB0_56
.LBB0_126:                              # %if.then.370
	cvtsi2sdq	%r11, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_129
.LBB0_56:                               # %fe
	xorl	%ecx, %ecx
	cmpl	$-1, %ebp
	je	.LBB0_137
# BB#57:                                # %fe
	cmpl	$101, %ebp
	je	.LBB0_59
# BB#58:                                # %fe
	cmpl	$69, %ebp
	jne	.LBB0_136
.LBB0_59:                               # %sw.bb.436
	cmpq	%rsi, %r12
	jae	.LBB0_153
# BB#60:                                # %if.else.440
	leaq	1(%r12), %rdi
	movzbl	(%r12), %ecx
	xorl	%edx, %edx
	cmpl	$43, %ecx
	je	.LBB0_63
# BB#61:                                # %if.else.440
	cmpl	$45, %ecx
	jne	.LBB0_65
# BB#62:                                # %sw.bb.444
	movl	$1, %edx
.LBB0_63:                               # %sw.bb.445
	cmpq	%rsi, %rdi
	jae	.LBB0_153
# BB#64:                                # %if.else.449
	movzbl	1(%r12), %ecx
	addq	$2, %r12
	movq	%r12, %rdi
.LBB0_65:                               # %sw.epilog.453
	movzbl	scan_char_array+4(%rcx), %ebp
	cmpl	$9, %ebp
	ja	.LBB0_153
# BB#66:                                # %if.end.460
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdi
	jae	.LBB0_135
# BB#67:
	movl	$-13, %r14d
.LBB0_68:                               # %if.else.465
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ebx
	incq	%rdi
	movzbl	scan_char_array+4(%rbx), %ebx
	cmpl	$10, %ebx
	jae	.LBB0_69
# BB#133:                               # %if.end.475
                                        #   in Loop: Header=BB0_68 Depth=1
	cmpl	$99, %ebp
	jg	.LBB0_153
# BB#134:                               # %for.inc.480
                                        #   in Loop: Header=BB0_68 Depth=1
	leal	(%rbp,%rbp,4), %ebp
	leal	(%rbx,%rbp,2), %ebp
	cmpq	%rsi, %rdi
	jb	.LBB0_68
	jmp	.LBB0_135
.LBB0_136:                              # %sw.default.493
	movq	%r12, (%r8)
	movl	$1, %ecx
	jmp	.LBB0_137
.LBB0_69:                               # %if.then.474
	movq	%rdi, (%r8)
	movl	$1, %ecx
.LBB0_135:                              # %cleanup.490
	movl	%ebp, %esi
	negl	%esi
	testl	%edx, %edx
	cmovel	%ebp, %esi
	addl	%esi, %eax
.LBB0_137:                              # %sw.epilog.495
	testl	%eax, %eax
	jle	.LBB0_143
# BB#138:                               # %while.cond.499.preheader
	cmpl	$7, %eax
	jl	.LBB0_142
# BB#139:
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB0_140:                              # %while.body.502
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	mulsd	%xmm1, %xmm0
	leal	-6(%rdx), %eax
	cmpl	$6, %eax
	jg	.LBB0_140
# BB#141:                               # %while.end.506
	cmpl	$7, %edx
	jl	.LBB0_149
.LBB0_142:                              # %if.then.509
	cltq
	movss	scan_number.powers_10(,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	jmp	.LBB0_149
.LBB0_143:                              # %if.else.515
	jns	.LBB0_149
# BB#144:                               # %while.cond.519.preheader
	cmpl	$-7, %eax
	jg	.LBB0_148
# BB#145:
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB0_146:                              # %while.body.522
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	divsd	%xmm1, %xmm0
	leal	6(%rdx), %eax
	cmpl	$-6, %eax
	jl	.LBB0_146
# BB#147:                               # %while.end.526
	cmpl	$-7, %edx
	jg	.LBB0_149
.LBB0_148:                              # %if.then.529
	negl	%eax
	cltq
	movss	scan_number.powers_10(,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
.LBB0_149:                              # %if.end.537
	xorpd	%xmm1, %xmm1
	movl	$-13, %r14d
	ucomisd	%xmm1, %xmm0
	jae	.LBB0_150
# BB#151:                               # %if.else.545
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_153
	jmp	.LBB0_152
.LBB0_150:                              # %if.then.540
	ucomisd	.LCPI0_3(%rip), %xmm0
	ja	.LBB0_153
.LBB0_152:                              # %rret
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movw	$4096, (%r15)           # imm = 0x1000
	movl	%ecx, %r14d
.LBB0_153:                              # %cleanup.556
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_118:                              # %fs
	testl	%r10d, %r10d
	jns	.LBB0_56
# BB#119:
	xorpd	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_129:                              # %while.cond.412
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rcx
	movzbl	scan_char_array+4(%rcx), %ecx
	cmpl	$9, %ecx
	ja	.LBB0_118
# BB#130:                               # %while.body.418
                                        #   in Loop: Header=BB0_129 Depth=1
	movapd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movzbl	%cl, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	addsd	%xmm2, %xmm0
	decl	%eax
	movl	$-1, %ebp
	cmpq	%rsi, %r12
	jae	.LBB0_129
.LBB0_131:                              # %if.else.426
	movzbl	(%r12), %ebp
	incq	%r12
.LBB0_132:                              # %while.cond.412.outer
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_129
.Lfunc_end0:
	.size	scan_number, .Lfunc_end0-scan_number
	.cfi_endproc

	.type	scan_number.powers_10,@object # @scan_number.powers_10
	.section	.rodata,"a",@progbits
	.align	16
scan_number.powers_10:
	.long	1065353216              # float 1.000000e+00
	.long	1092616192              # float 1.000000e+01
	.long	1120403456              # float 1.000000e+02
	.long	1148846080              # float 1.000000e+03
	.long	1176256512              # float 1.000000e+04
	.long	1203982336              # float 1.000000e+05
	.long	1232348160              # float 1.000000e+06
	.size	scan_number.powers_10, 28

	.type	scan_number.neg_powers_10,@object # @scan_number.neg_powers_10
	.align	16
scan_number.neg_powers_10:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4591870180066957722     # double 1.000000e-01
	.quad	4576918229304087675     # double 1.000000e-02
	.quad	4562254508917369340     # double 1.000000e-03
	.quad	4547007122018943789     # double 1.000000e-04
	.quad	4532020583610935537     # double 1.000000e-05
	.quad	4517329193108106637     # double 1.000000e-06
	.size	scan_number.neg_powers_10, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
