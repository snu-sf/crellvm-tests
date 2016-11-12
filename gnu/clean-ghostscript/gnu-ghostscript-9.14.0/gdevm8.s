	.text
	.file	"gdevm8.bc"
	.align	16, 0x90
	.type	mem_mapped8_fill_rectangle,@function
mem_mapped8_fill_rectangle:             # @mem_mapped8_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
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
.LBB0_2:                                # %do.body.10
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	subl	%edx, %r10d
	cmpl	%r10d, %r8d
	cmovlel	%r8d, %r10d
	testl	%eax, %eax
	jle	.LBB0_5
# BB#3:                                 # %do.body.10
	testl	%r10d, %r10d
	jle	.LBB0_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %r8
	movq	2576(%rdi), %rdx
	movslq	%esi, %rcx
	addq	(%rdx,%r8,8), %rcx
	movl	1736(%rdi), %esi
	movzbl	%r9b, %edx
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movl	%r10d, %r8d
	callq	bytes_fill_rectangle
.LBB0_5:                                # %cleanup
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	mem_mapped8_fill_rectangle, .Lfunc_end0-mem_mapped8_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mapped8_copy_mono,@function
mem_mapped8_copy_mono:                  # @mem_mapped8_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
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
	movl	%ecx, %r10d
	movl	72(%rsp), %r8d
	movl	64(%rsp), %ecx
	movl	56(%rsp), %eax
	movl	%eax, %ebx
	orl	%r9d, %ebx
	js	.LBB1_2
# BB#1:
	movl	%eax, %ebp
	jmp	.LBB1_5
.LBB1_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	leal	(%rcx,%rbx), %ecx
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	cmovsl	%ebp, %r9d
	subl	%ebx, %edx
	testl	%eax, %eax
	js	.LBB1_4
# BB#3:
	movl	%eax, %ebp
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.5
	addl	%eax, %r8d
	imull	%r10d, %eax
	cltq
	subq	%rax, %rsi
.LBB1_5:                                # %if.end.8
	movl	832(%rdi), %eax
	movl	836(%rdi), %r15d
	subl	%r9d, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	subl	%ebp, %r15d
	cmpl	%r15d, %r8d
	cmovlel	%r8d, %r15d
	testl	%eax, %eax
	jle	.LBB1_59
# BB#6:                                 # %if.end.8
	testl	%r15d, %r15d
	jle	.LBB1_59
# BB#7:                                 # %do.end.26
	movq	88(%rsp), %rax
	movq	80(%rsp), %rbx
	movl	1736(%rdi), %ecx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	2576(%rdi), %rdi
	movslq	%r9d, %r14
	addq	(%rdi,%rcx,8), %r14
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movl	%edx, %r12d
	andl	$7, %r12d
	movl	%r12d, -44(%rsp)        # 4-byte Spill
	cmpl	$-1, %eax
	je	.LBB1_87
# BB#8:                                 # %if.then.33
	cmpl	$-1, %ebx
	je	.LBB1_49
# BB#9:                                 # %if.then.37
	testl	%r15d, %r15d
	jle	.LBB1_59
# BB#10:                                # %while.body.lr.ph.i
	orl	$-8, %edx
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leal	(%rdx,%rcx), %ecx
	movl	%ecx, -20(%rsp)         # 4-byte Spill
	movl	$128, %edx
	movb	%r12b, %cl
	shrl	%cl, %edx
	movl	%edx, -48(%rsp)         # 4-byte Spill
	movslq	%r10d, %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	%r12d, %ecx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_11:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
	movzbl	(%rsi), %ebp
	cmpl	$0, -20(%rsp)           # 4-byte Folded Reload
	js	.LBB1_12
# BB#13:                                # %if.then.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%rsi), %r10
	cmpl	$6, %r12d
	jbe	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_11 Depth=1
	movq	%r14, %r13
	movl	-20(%rsp), %edx         # 4-byte Reload
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r14, %r13
	movl	-48(%rsp), %edi         # 4-byte Reload
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_15:                               # %if.then.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, -8(%rsp)          # 8-byte Spill
	movq	%r14, %r13
	movl	-20(%rsp), %edx         # 4-byte Reload
	movq	%r14, %r9
	movq	%r14, %r15
	movq	%r14, %rdi
	movq	%r14, %r11
	movq	%r14, %r8
	movq	%r14, %r12
	movq	-56(%rsp), %rcx         # 8-byte Reload
	jmpq	*.LJTI1_1(,%rcx,8)
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, -8(%rsp)          # 8-byte Spill
	incq	%r10
	movl	%ecx, %edx
.LBB1_17:                               # %enter0.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r13), %r9
	testb	$-128, %bpl
	jne	.LBB1_18
# BB#19:                                # %if.else.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r13)
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_18:                               # %if.then.9.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r13)
.LBB1_20:                               # %enter1.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r9), %r15
	testb	$64, %bpl
	jne	.LBB1_21
# BB#22:                                # %if.else.16.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r9)
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_21:                               # %if.then.14.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r9)
.LBB1_23:                               # %enter2.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r15), %rdi
	testb	$32, %bpl
	jne	.LBB1_24
# BB#25:                                # %if.else.23.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r15)
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_24:                               # %if.then.21.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r15)
.LBB1_26:                               # %enter3.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%rdi), %r11
	testb	$16, %bpl
	jne	.LBB1_27
# BB#28:                                # %if.else.30.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%rdi)
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_27:                               # %if.then.28.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%rdi)
.LBB1_29:                               # %enter4.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r11), %r8
	testb	$8, %bpl
	jne	.LBB1_30
# BB#31:                                # %if.else.37.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r11)
	jmp	.LBB1_32
	.align	16, 0x90
.LBB1_30:                               # %if.then.35.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r11)
.LBB1_32:                               # %enter5.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r8), %r12
	testb	$4, %bpl
	jne	.LBB1_33
# BB#34:                                # %if.else.44.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r8)
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_33:                               # %if.then.42.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r8)
.LBB1_35:                               # %enter6.i
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	1(%r12), %r13
	testb	$2, %bpl
	jne	.LBB1_36
# BB#37:                                # %if.else.51.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%bl, (%r12)
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_36:                               # %if.then.49.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, (%r12)
.LBB1_38:                               # %enter7.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-8(%rsp), %r15          # 8-byte Reload
.LBB1_39:                               # %enter7.i
                                        #   in Loop: Header=BB1_11 Depth=1
	testb	$1, %bpl
	movb	%bl, %cl
	je	.LBB1_41
# BB#40:                                # %enter7.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%al, %cl
.LBB1_41:                               # %enter7.i
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	%cl, (%r13)
	incq	%r13
	movzbl	(%r10), %ebp
	movl	%edx, %ecx
	addl	$-8, %ecx
	movl	$128, %edi
	jns	.LBB1_16
# BB#42:                                #   in Loop: Header=BB1_11 Depth=1
	movl	-44(%rsp), %r12d        # 4-byte Reload
.LBB1_43:                               # %while.cond.71.preheader.i
                                        #   in Loop: Header=BB1_11 Depth=1
	testl	%edx, %edx
	jle	.LBB1_48
# BB#44:                                # %while.body.74.i.preheader
                                        #   in Loop: Header=BB1_11 Depth=1
	incl	%edx
	.align	16, 0x90
.LBB1_45:                               # %while.body.74.i
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %edi
	movb	%bl, %cl
	je	.LBB1_47
# BB#46:                                # %while.body.74.i
                                        #   in Loop: Header=BB1_45 Depth=2
	movb	%al, %cl
.LBB1_47:                               # %while.body.74.i
                                        #   in Loop: Header=BB1_45 Depth=2
	movb	%cl, (%r13)
	incq	%r13
	shrl	%edi
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB1_45
.LBB1_48:                               # %while.end.i
                                        #   in Loop: Header=BB1_11 Depth=1
	addq	-40(%rsp), %rsi         # 8-byte Folded Reload
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r15d
	leal	-1(%r15), %ecx
	movl	%ecx, %r15d
	jg	.LBB1_11
	jmp	.LBB1_59
.LBB1_87:                               # %if.else.42
	cmpl	$-1, %ebx
	je	.LBB1_59
# BB#88:                                # %if.then.46
	testl	%r15d, %r15d
	jle	.LBB1_59
# BB#89:                                # %while.body.lr.ph.i.49
	orl	$-8, %edx
	movq	-32(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %r8d
	movl	$128, %r13d
	movb	%r12b, %cl
	shrl	%cl, %r13d
	movslq	%r10d, %r9
	movl	%r12d, %r11d
	jmp	.LBB1_90
	.align	16, 0x90
.LBB1_100:                              # %enter0.i.60
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	jne	.LBB1_102
# BB#101:                               # %if.then.9.i.61
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_102:                              # %if.end.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_103:                              # %enter1.i.66
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$64, %dl
	jne	.LBB1_105
# BB#104:                               # %if.then.13.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_105:                              # %if.end.14.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_106:                              # %enter2.i.71
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$32, %dl
	jne	.LBB1_108
# BB#107:                               # %if.then.18.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_108:                              # %if.end.19.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_109:                              # %enter3.i.76
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$16, %dl
	jne	.LBB1_111
# BB#110:                               # %if.then.23.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_111:                              # %if.end.24.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_112:                              # %enter4.i.83
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$8, %dl
	jne	.LBB1_114
# BB#113:                               # %if.then.28.i.84
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_114:                              # %if.end.29.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_115:                              # %enter5.i.89
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$4, %dl
	jne	.LBB1_117
# BB#116:                               # %if.then.33.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_117:                              # %if.end.34.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_118:                              # %enter6.i.94
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$2, %dl
	jne	.LBB1_120
# BB#119:                               # %if.then.38.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_120:                              # %if.end.39.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
.LBB1_121:                              # %enter7.i.99
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$1, %dl
	jne	.LBB1_123
# BB#122:                               # %if.then.43.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	%bl, (%rdi)
.LBB1_123:                              # %if.end.44.i
                                        #   in Loop: Header=BB1_90 Depth=1
	incq	%rdi
	movzbl	(%r10), %edx
	movl	%ebp, %ecx
	addl	$-8, %ecx
	movl	$128, %eax
	js	.LBB1_92
# BB#124:                               #   in Loop: Header=BB1_90 Depth=1
	incq	%r10
	movl	%ecx, %ebp
	jmp	.LBB1_100
	.align	16, 0x90
.LBB1_90:                               # %while.body.i.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
	movzbl	(%rsi), %edx
	testl	%r8d, %r8d
	js	.LBB1_91
# BB#98:                                # %if.then.i.53
                                        #   in Loop: Header=BB1_90 Depth=1
	leaq	1(%rsi), %r10
	movq	%r14, %rdi
	movl	%r8d, %ebp
	cmpl	$6, %r12d
	ja	.LBB1_121
# BB#99:                                # %if.then.i.53
                                        #   in Loop: Header=BB1_90 Depth=1
	jmpq	*.LJTI1_2(,%r11,8)
	.align	16, 0x90
.LBB1_91:                               #   in Loop: Header=BB1_90 Depth=1
	movq	%r14, %rdi
	movl	%r13d, %eax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebp
.LBB1_92:                               # %while.cond.55.preheader.i
                                        #   in Loop: Header=BB1_90 Depth=1
	testl	%ebp, %ebp
	jle	.LBB1_97
# BB#93:                                # %while.body.58.i.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	incl	%ebp
	.align	16, 0x90
.LBB1_94:                               # %while.body.58.i
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edx, %eax
	jne	.LBB1_96
# BB#95:                                # %if.then.61.i
                                        #   in Loop: Header=BB1_94 Depth=2
	movb	%bl, (%rdi)
.LBB1_96:                               # %if.end.62.i
                                        #   in Loop: Header=BB1_94 Depth=2
	incq	%rdi
	shrl	%eax
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_94
.LBB1_97:                               # %while.end.i.106
                                        #   in Loop: Header=BB1_90 Depth=1
	addq	%r9, %rsi
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r15d
	leal	-1(%r15), %eax
	movl	%eax, %r15d
	jg	.LBB1_90
	jmp	.LBB1_59
.LBB1_49:                               # %if.else
	testl	%r15d, %r15d
	jle	.LBB1_59
# BB#50:                                # %while.body.lr.ph.i.114
	orl	$-8, %edx
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leal	(%rdx,%rcx), %r8d
	movl	$128, %r13d
	movb	%r12b, %cl
	shrl	%cl, %r13d
	movslq	%r10d, %r9
	movl	%r12d, %r11d
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_62:                               # %enter0.i.129
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$-128, %bpl
	je	.LBB1_64
# BB#63:                                # %if.then.9.i.130
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_64:                               # %if.end.i.132
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_65:                               # %enter1.i.139
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$64, %bpl
	je	.LBB1_67
# BB#66:                                # %if.then.13.i.140
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_67:                               # %if.end.14.i.142
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_68:                               # %enter2.i.149
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$32, %bpl
	je	.LBB1_70
# BB#69:                                # %if.then.18.i.150
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_70:                               # %if.end.19.i.152
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_71:                               # %enter3.i.159
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$16, %bpl
	je	.LBB1_73
# BB#72:                                # %if.then.23.i.160
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_73:                               # %if.end.24.i.162
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_74:                               # %enter4.i.169
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$8, %bpl
	je	.LBB1_76
# BB#75:                                # %if.then.28.i.170
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_76:                               # %if.end.29.i.172
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_77:                               # %enter5.i.179
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$4, %bpl
	je	.LBB1_79
# BB#78:                                # %if.then.33.i.180
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_79:                               # %if.end.34.i.182
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_80:                               # %enter6.i.189
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$2, %bpl
	je	.LBB1_82
# BB#81:                                # %if.then.38.i.190
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_82:                               # %if.end.39.i.192
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
.LBB1_83:                               # %enter7.i.199
                                        #   in Loop: Header=BB1_51 Depth=1
	testb	$1, %bpl
	je	.LBB1_85
# BB#84:                                # %if.then.43.i.200
                                        #   in Loop: Header=BB1_51 Depth=1
	movb	%al, (%rdi)
.LBB1_85:                               # %if.end.44.i.206
                                        #   in Loop: Header=BB1_51 Depth=1
	incq	%rdi
	movzbl	(%r10), %ebp
	movl	%ebx, %ecx
	addl	$-8, %ecx
	movl	$128, %edx
	js	.LBB1_53
# BB#86:                                #   in Loop: Header=BB1_51 Depth=1
	incq	%r10
	movl	%ecx, %ebx
	jmp	.LBB1_62
	.align	16, 0x90
.LBB1_51:                               # %while.body.i.121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_55 Depth 2
	movzbl	(%rsi), %ebp
	testl	%r8d, %r8d
	js	.LBB1_52
# BB#60:                                # %if.then.i.122
                                        #   in Loop: Header=BB1_51 Depth=1
	leaq	1(%rsi), %r10
	movq	%r14, %rdi
	movl	%r8d, %ebx
	cmpl	$6, %r12d
	ja	.LBB1_83
# BB#61:                                # %if.then.i.122
                                        #   in Loop: Header=BB1_51 Depth=1
	jmpq	*.LJTI1_0(,%r11,8)
	.align	16, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_51 Depth=1
	movq	%r14, %rdi
	movl	%r13d, %edx
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebx
.LBB1_53:                               # %while.cond.55.preheader.i.212
                                        #   in Loop: Header=BB1_51 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_58
# BB#54:                                # %while.body.58.i.218.preheader
                                        #   in Loop: Header=BB1_51 Depth=1
	incl	%ebx
	.align	16, 0x90
.LBB1_55:                               # %while.body.58.i.218
                                        #   Parent Loop BB1_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %edx
	je	.LBB1_57
# BB#56:                                # %if.then.61.i.219
                                        #   in Loop: Header=BB1_55 Depth=2
	movb	%al, (%rdi)
.LBB1_57:                               # %if.end.62.i.224
                                        #   in Loop: Header=BB1_55 Depth=2
	incq	%rdi
	shrl	%edx
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB1_55
.LBB1_58:                               # %while.end.i.228
                                        #   in Loop: Header=BB1_51 Depth=1
	addq	%r9, %rsi
	addq	-16(%rsp), %r14         # 8-byte Folded Reload
	cmpl	$1, %r15d
	leal	-1(%r15), %ecx
	movl	%ecx, %r15d
	jg	.LBB1_51
.LBB1_59:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mem_mapped8_copy_mono, .Lfunc_end1-mem_mapped8_copy_mono
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_62
	.quad	.LBB1_65
	.quad	.LBB1_68
	.quad	.LBB1_71
	.quad	.LBB1_74
	.quad	.LBB1_77
	.quad	.LBB1_80
.LJTI1_1:
	.quad	.LBB1_17
	.quad	.LBB1_20
	.quad	.LBB1_23
	.quad	.LBB1_26
	.quad	.LBB1_29
	.quad	.LBB1_32
	.quad	.LBB1_35
.LJTI1_2:
	.quad	.LBB1_100
	.quad	.LBB1_103
	.quad	.LBB1_106
	.quad	.LBB1_109
	.quad	.LBB1_112
	.quad	.LBB1_115
	.quad	.LBB1_118

	.text
	.align	16, 0x90
	.type	mem_mapped8_copy_color,@function
mem_mapped8_copy_color:                 # @mem_mapped8_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r11d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB2_2
# BB#1:
	movl	%eax, %esi
	movl	%r8d, %ebx
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	subl	%ebx, %edx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	addl	%r8d, %ebx
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %esi
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.8
	movl	832(%rdi), %r8d
	movl	836(%rdi), %eax
	subl	%r9d, %r8d
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%esi, %eax
	cmpl	%eax, %r11d
	cmovlel	%r11d, %eax
	testl	%r8d, %r8d
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	movslq	%esi, %rsi
	movq	2576(%rdi), %rbx
	movslq	%r9d, %r9
	addq	(%rbx,%rsi,8), %r9
	movl	1736(%rdi), %esi
	movslq	%edx, %rdx
	addq	%rdx, %r10
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_mapped8_copy_color, .Lfunc_end2-mem_mapped8_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem8_word_fill_rectangle,@function
mem8_word_fill_rectangle:               # @mem8_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 80
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%esi, %r15d
	movl	%edx, %eax
	orl	%r15d, %eax
	jns	.LBB3_2
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
.LBB3_2:                                # %do.body.10
	movl	832(%rdi), %ebx
	movl	836(%rdi), %ebp
	subl	%r15d, %ebx
	cmpl	%ebx, %ecx
	cmovlel	%ecx, %ebx
	subl	%edx, %ebp
	cmpl	%ebp, %r8d
	cmovlel	%r8d, %ebp
	testl	%ebx, %ebx
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%ebp, %ebp
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r12
	movl	1736(%rdi), %r13d
	leal	(,%r15,8), %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	leal	(,%rbx,8), %r14d
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
	movslq	%r15d, %rax
	leaq	(%rax,%r12), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %edx
	movl	%r13d, %esi
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	bytes_fill_rectangle
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem8_word_fill_rectangle, .Lfunc_end3-mem8_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem8_word_copy_mono,@function
mem8_word_copy_mono:                    # @mem8_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 144
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%r15d, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%r15d, %ebx
	sarl	$31, %ebx
	andl	%r15d, %ebx
	leal	(%rdi,%rbx), %edi
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	cmovsl	%ebp, %r15d
	subl	%ebx, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
.LBB4_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%r15d, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%ebp, %rax
	movq	2576(%r13), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	1736(%r13), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, 176(%rsp)
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r9d
	leal	(,%r15,8), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	leal	(,%r12,8), %ebx
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%r15d, %r9d
	callq	mem_mapped8_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
.LBB4_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_4
.Lfunc_end4:
	.size	mem8_word_copy_mono, .Lfunc_end4-mem8_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem8_word_copy_color,@function
mem8_word_copy_color:                   # @mem8_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 96
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	112(%rsp), %r10d
	movl	104(%rsp), %eax
	movl	96(%rsp), %ebp
	movl	%ebp, %edi
	orl	%r9d, %edi
	js	.LBB5_2
# BB#1:
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %r15d
	movl	%ebp, %r8d
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %r15d
	cmovsl	%r8d, %r15d
	andl	%r9d, %edi
	leal	(%rax,%rdi), %eax
	subl	%edi, %edx
	testl	%ebp, %ebp
	js	.LBB5_4
# BB#3:
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%ebp, %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	movl	%edx, 20(%rsp)          # 4-byte Spill
	addl	%ebp, %r10d
	imull	%ecx, %ebp
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movslq	%ebp, %rcx
	subq	%rcx, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
.LBB5_5:                                # %if.end.8
	movl	832(%r13), %ebp
	movl	836(%r13), %ebx
	subl	%r15d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	subl	%r8d, %ebx
	cmpl	%ebx, %r10d
	cmovlel	%r10d, %ebx
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebx, %ebx
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	movslq	%r8d, %r12
	movq	2576(%r13), %rax
	movq	(%rax,%r12,8), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	1736(%r13), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	leal	(,%r15,8), %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	leal	(,%rbp,8), %r14d
	movl	$1, %r9d
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	movq	2576(%r13), %rax
	movslq	%r15d, %rdi
	addq	(%rax,%r12,8), %rdi
	movl	1736(%r13), %esi
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	bytes_copy_rectangle
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem8_word_copy_color, .Lfunc_end5-mem8_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image8"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_mapped8_device,@object # @mem_mapped8_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped8_device
	.align	8
mem_mapped8_device:
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem_mapped8_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_mapped8_copy_mono
	.quad	mem_mapped8_copy_color
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
	.quad	gx_default_copy_alpha
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
	.quad	mem_gray8_rgb24_strip_copy_rop
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
	.size	mem_mapped8_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image8w"
	.size	.L.str.2, 8

	.type	mem_mapped8_word_device,@object # @mem_mapped8_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped8_word_device
	.align	8
mem_mapped8_word_device:
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
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
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem8_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem8_word_copy_mono
	.quad	mem8_word_copy_color
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
	.quad	gx_default_copy_alpha
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
	.size	mem_mapped8_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
