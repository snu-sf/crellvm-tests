	.text
	.file	"gdevstc4.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI0_1:
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
.LCPI0_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	stc_fs2
	.align	16, 0x90
	.type	stc_fs2,@function
stc_fs2:                                # @stc_fs2
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%r8, %r14
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %r15
	leal	(%r13,%r13,2), %edi
	testl	%r13d, %r13d
	jle	.LBB0_94
# BB#1:                                 # %if.then
	testq	%r12, %r12
	je	.LBB0_99
# BB#2:                                 # %if.else
	movb	(%rcx), %al
	testb	%al, %al
	jne	.LBB0_5
# BB#3:                                 # %lor.lhs.false
	leaq	1(%rcx), %rsi
	leal	-1(%rdi), %eax
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_25
# BB#4:
	xorl	%eax, %eax
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
.LBB0_5:                                # %for.body.preheader
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movzbl	(%r12), %ecx
	movzbl	%al, %edx
	leal	-256(%rdx), %eax
	testb	$-128, %dl
	cmovel	%edx, %eax
	addl	%ecx, %eax
	cmpl	$255, %eax
	movl	$255, %edx
	cmovlel	%eax, %edx
	movb	$-1, %cl
	jg	.LBB0_7
# BB#6:                                 # %for.body.preheader
	movb	%al, %cl
.LBB0_7:                                # %for.body.preheader
	testl	%edx, %edx
	jns	.LBB0_9
# BB#8:
	xorl	%ecx, %ecx
.LBB0_9:                                # %for.body.preheader
	movl	%edi, %eax
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	decl	%eax
	movb	%cl, (%r12)
	je	.LBB0_25
# BB#10:                                # %for.body.for.body_crit_edge.lr.ph
	movq	40(%rsp), %rbx          # 8-byte Reload
	leaq	1(%rbx), %rcx
	leal	-2(%r13,%r13,2), %esi
	incq	%rsi
	xorl	%edi, %edi
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	movq	%rsi, %r8
	andq	%r9, %r8
	je	.LBB0_11
# BB#12:                                # %vector.memcheck
	leaq	1(%r12), %rbp
	leal	-2(%r13,%r13,2), %edx
	leaq	1(%rbx,%rdx), %rbx
	xorl	%edi, %edi
	cmpq	%rbx, %rbp
	ja	.LBB0_15
# BB#13:                                # %vector.memcheck
	leaq	1(%r12,%rdx), %rdx
	cmpq	%rdx, %rcx
	ja	.LBB0_15
# BB#14:
	movq	%r12, %rdx
	jmp	.LBB0_18
.LBB0_94:                               # %if.else.210
	movl	$-1, %ebx
	cmpl	$3, 100(%r15)
	jne	.LBB0_100
# BB#95:                                # %if.end.214
	movq	%rcx, %rdx
	movq	18488(%r15), %rax
	movl	$-2, %ebx
	testq	%rax, %rax
	je	.LBB0_100
# BB#96:                                # %lor.lhs.false.218
	movl	16(%rax), %eax
	movl	%eax, %ecx
	andl	$24, %ecx
	cmpl	$8, %ecx
	movq	%rdx, %rcx
	jne	.LBB0_100
# BB#97:                                # %if.end.225
	movl	$-3, %ebx
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB0_100
# BB#98:                                # %if.end.232
	negl	%edi
.LBB0_99:                               # %cleanup
	movslq	%edi, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	callq	memset
	jmp	.LBB0_100
.LBB0_11:
	movq	%r12, %rdx
	jmp	.LBB0_18
.LBB0_15:                               # %vector.body.preheader
	addq	%r8, %rcx
	subl	%r8d, %eax
	leaq	(%r12,%r8), %rdx
	leaq	5(%r12), %rbp
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	5(%rdi), %rbx
	leal	-2(%r13,%r13,2), %edi
	incq	%rdi
	andq	%r9, %rdi
	pxor	%xmm12, %xmm12
	movdqa	.LCPI0_0(%rip), %xmm8   # xmm8 = [128,128,128,128]
	pcmpeqd	%xmm9, %xmm9
	movdqa	.LCPI0_1(%rip), %xmm10  # xmm10 = [4294967040,4294967040,4294967040,4294967040]
	movdqa	.LCPI0_2(%rip), %xmm11  # xmm11 = [255,255,255,255]
	.align	16, 0x90
.LBB0_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rbx), %xmm7         # xmm7 = mem[0],zero,zero,zero
	movdqa	%xmm7, %xmm6
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	movd	(%rbx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movdqa	%xmm2, %xmm5
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	movd	-4(%rbp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm12, %xmm3   # xmm3 = xmm3[0],xmm12[0],xmm3[1],xmm12[1],xmm3[2],xmm12[2],xmm3[3],xmm12[3],xmm3[4],xmm12[4],xmm3[5],xmm12[5],xmm3[6],xmm12[6],xmm3[7],xmm12[7]
	punpcklwd	%xmm12, %xmm3   # xmm3 = xmm3[0],xmm12[0],xmm3[1],xmm12[1],xmm3[2],xmm12[2],xmm3[3],xmm12[3]
	punpcklbw	%xmm12, %xmm1   # xmm1 = xmm1[0],xmm12[0],xmm1[1],xmm12[1],xmm1[2],xmm12[2],xmm1[3],xmm12[3],xmm1[4],xmm12[4],xmm1[5],xmm12[5],xmm1[6],xmm12[6],xmm1[7],xmm12[7]
	punpcklwd	%xmm12, %xmm1   # xmm1 = xmm1[0],xmm12[0],xmm1[1],xmm12[1],xmm1[2],xmm12[2],xmm1[3],xmm12[3]
	punpcklbw	%xmm12, %xmm7   # xmm7 = xmm7[0],xmm12[0],xmm7[1],xmm12[1],xmm7[2],xmm12[2],xmm7[3],xmm12[3],xmm7[4],xmm12[4],xmm7[5],xmm12[5],xmm7[6],xmm12[6],xmm7[7],xmm12[7]
	punpcklwd	%xmm12, %xmm7   # xmm7 = xmm7[0],xmm12[0],xmm7[1],xmm12[1],xmm7[2],xmm12[2],xmm7[3],xmm12[3]
	punpcklbw	%xmm12, %xmm2   # xmm2 = xmm2[0],xmm12[0],xmm2[1],xmm12[1],xmm2[2],xmm12[2],xmm2[3],xmm12[3],xmm2[4],xmm12[4],xmm2[5],xmm12[5],xmm2[6],xmm12[6],xmm2[7],xmm12[7]
	punpcklwd	%xmm12, %xmm2   # xmm2 = xmm2[0],xmm12[0],xmm2[1],xmm12[1],xmm2[2],xmm12[2],xmm2[3],xmm12[3]
	pand	%xmm8, %xmm6
	pand	%xmm8, %xmm5
	pcmpeqd	%xmm12, %xmm6
	movdqa	%xmm6, %xmm4
	pxor	%xmm9, %xmm4
	pcmpeqd	%xmm12, %xmm5
	movdqa	%xmm5, %xmm0
	pxor	%xmm9, %xmm0
	pandn	%xmm7, %xmm4
	por	%xmm10, %xmm7
	pandn	%xmm2, %xmm0
	por	%xmm10, %xmm2
	pandn	%xmm7, %xmm6
	por	%xmm4, %xmm6
	pandn	%xmm2, %xmm5
	por	%xmm0, %xmm5
	paddd	%xmm3, %xmm6
	paddd	%xmm1, %xmm5
	movdqa	%xmm6, %xmm0
	pcmpgtd	%xmm11, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm11, %xmm1
	movdqa	%xmm11, %xmm2
	pand	%xmm0, %xmm2
	pandn	%xmm6, %xmm0
	por	%xmm2, %xmm0
	movdqa	%xmm11, %xmm2
	pand	%xmm1, %xmm2
	pandn	%xmm5, %xmm1
	por	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pandn	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	pcmpgtd	%xmm1, %xmm0
	pandn	%xmm1, %xmm0
	pand	%xmm11, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -4(%rbp)
	pand	%xmm11, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, (%rbp)
	addq	$8, %rbp
	addq	$8, %rbx
	addq	$-8, %rdi
	jne	.LBB0_16
# BB#17:
	movq	%r8, %rdi
.LBB0_18:                               # %middle.block
	cmpq	%rdi, %rsi
	je	.LBB0_25
# BB#19:                                # %for.body.for.body_crit_edge.preheader
	incq	%rdx
	movl	$255, %esi
	.align	16, 0x90
.LBB0_20:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %edi
	movzbl	(%rcx), %ebx
	leal	-256(%rbx), %ebp
	testb	$-128, %bl
	cmovel	%ebx, %ebp
	addl	%edi, %ebp
	cmpl	$255, %ebp
	movl	%ebp, %ebx
	cmovgl	%esi, %ebx
	movb	$-1, %dil
	jg	.LBB0_22
# BB#21:                                # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=1
	movb	%bpl, %dil
.LBB0_22:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=1
	testl	%ebx, %ebx
	jns	.LBB0_24
# BB#23:                                #   in Loop: Header=BB0_20 Depth=1
	xorl	%edi, %edi
.LBB0_24:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=1
	incq	%rcx
	decl	%eax
	movb	%dil, (%rdx)
	leaq	1(%rdx), %rdx
	jne	.LBB0_20
.LBB0_25:                               # %if.end.25
	leaq	88(%rsp), %rbp
	leaq	76(%rsp), %rax
	movl	$0, 84(%rsp)
	movl	$0, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 64(%rsp)
	cmpl	$0, 18872(%r15)
	je	.LBB0_58
# BB#26:                                # %if.then.35
	xorl	%edx, %edx
	testl	%r13d, %r13d
	movq	56(%rsp), %rbx          # 8-byte Reload
	je	.LBB0_27
# BB#28:                                # %for.body.39.preheader
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rcx
	addq	$-3, 40(%rsp)           # 8-byte Folded Spill
	leal	(%r13,%r13,2), %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	%ebx, %r15d
	.align	16, 0x90
.LBB0_29:                               # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movq	%rbp, %rbx
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	leaq	(%r12,%r13), %rbp
	movq	%rbp, %rdi
	callq	escp2c_pick_best
	movzbl	(%r12,%r13), %ecx
	movzbl	(%rax), %edx
	movb	%dl, (%r12,%r13)
	subl	%edx, %ecx
	jne	.LBB0_30
# BB#42:                                # %if.else.94
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$0, (%rbx)
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	%rbx, %r11
	movq	%r14, %rbx
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_30:                               # %if.then.51
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	%ecx, %edx
	sarl	%edx
	movl	%ecx, %esi
	sarl	$4, %esi
	movl	%esi, (%rbx)
	cmpl	$3, %r15d
	movq	%rbx, %r11
	movq	%r14, %rbx
	jl	.LBB0_36
# BB#31:                                # %if.then.56
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	%rbx, %r9
	movl	%edx, %ebx
	subl	%esi, %ebx
	movzbl	3(%r12,%r13), %edi
	addl	%ebx, %edi
	cmpl	$255, %edi
	movl	%edi, %r10d
	movl	$255, %ebx
	cmovgl	%ebx, %r10d
	movb	$-1, %r8b
	jg	.LBB0_33
# BB#32:                                # %if.then.56
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%dil, %r8b
.LBB0_33:                               # %if.then.56
                                        #   in Loop: Header=BB0_29 Depth=1
	testl	%r10d, %r10d
	jns	.LBB0_35
# BB#34:                                #   in Loop: Header=BB0_29 Depth=1
	xorl	%r8d, %r8d
.LBB0_35:                               # %if.then.56
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	%r9, %rbx
	movb	%r8b, 3(%r12,%r13)
.LBB0_36:                               # %if.end.70
                                        #   in Loop: Header=BB0_29 Depth=1
	sarl	$2, %ecx
	subl	%esi, %ecx
	subl	%ecx, %edx
	movq	48(%rsp), %r10          # 8-byte Reload
	addl	%edx, (%r10)
	cmpl	%ebx, %r15d
	jge	.LBB0_43
# BB#37:                                # %if.then.77
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	addl	(%rdx), %ecx
	cmpl	$127, %ecx
	movl	%ecx, %esi
	movl	$127, %edx
	cmovgl	%edx, %esi
	movb	$127, %dl
	jg	.LBB0_39
# BB#38:                                # %if.then.77
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%cl, %dl
.LBB0_39:                               # %if.then.77
                                        #   in Loop: Header=BB0_29 Depth=1
	cmpl	$-128, %esi
	movb	$-128, %cl
	jl	.LBB0_41
# BB#40:                                # %if.then.77
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%dl, %cl
.LBB0_41:                               # %if.then.77
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%cl, (%rdx,%r13)
.LBB0_43:                               # %for.inc.96
                                        #   in Loop: Header=BB0_29 Depth=1
	movzbl	1(%rbp), %ecx
	movzbl	1(%rax), %edx
	movb	%dl, 1(%rbp)
	subl	%edx, %ecx
	jne	.LBB0_44
# BB#117:                               # %if.else.94.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$0, 4(%r11)
	jmp	.LBB0_118
	.align	16, 0x90
.LBB0_44:                               # %if.then.51.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	%ecx, %edx
	sarl	%edx
	movl	%ecx, %esi
	sarl	$4, %esi
	movl	%esi, 4(%r11)
	cmpl	$3, %r15d
	jl	.LBB0_50
# BB#45:                                # %if.then.56.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	%r11, %r14
	movq	%rbx, %r9
	movl	%edx, %ebx
	subl	%esi, %ebx
	movzbl	4(%r12,%r13), %edi
	addl	%ebx, %edi
	cmpl	$255, %edi
	movl	%edi, %r11d
	movl	$255, %ebx
	cmovgl	%ebx, %r11d
	movb	$-1, %r8b
	jg	.LBB0_47
# BB#46:                                # %if.then.56.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%dil, %r8b
.LBB0_47:                               # %if.then.56.1
                                        #   in Loop: Header=BB0_29 Depth=1
	testl	%r11d, %r11d
	jns	.LBB0_49
# BB#48:                                #   in Loop: Header=BB0_29 Depth=1
	xorl	%r8d, %r8d
.LBB0_49:                               # %if.then.56.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	%r9, %rbx
	movq	%r14, %r11
	movb	%r8b, 4(%r12,%r13)
.LBB0_50:                               # %if.end.70.1
                                        #   in Loop: Header=BB0_29 Depth=1
	sarl	$2, %ecx
	subl	%esi, %ecx
	subl	%ecx, %edx
	addl	%edx, 4(%r10)
	cmpl	%ebx, %r15d
	jge	.LBB0_118
# BB#51:                                # %if.then.77.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	addl	4(%rdx), %ecx
	cmpl	$127, %ecx
	movl	%ecx, %esi
	movl	$127, %edx
	cmovgl	%edx, %esi
	movb	$127, %dl
	jg	.LBB0_53
# BB#52:                                # %if.then.77.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%cl, %dl
.LBB0_53:                               # %if.then.77.1
                                        #   in Loop: Header=BB0_29 Depth=1
	cmpl	$-128, %esi
	movb	$-128, %cl
	jl	.LBB0_55
# BB#54:                                # %if.then.77.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%dl, %cl
.LBB0_55:                               # %if.then.77.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%cl, 1(%rdx,%r13)
.LBB0_118:                              # %for.inc.96.1
                                        #   in Loop: Header=BB0_29 Depth=1
	movzbl	2(%rbp), %ecx
	movzbl	2(%rax), %eax
	movb	%al, 2(%rbp)
	subl	%eax, %ecx
	jne	.LBB0_119
# BB#131:                               # %if.else.94.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$0, 8(%r11)
	movq	56(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_132
	.align	16, 0x90
.LBB0_119:                              # %if.then.51.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	%ecx, %eax
	sarl	%eax
	movl	%ecx, %edx
	sarl	$4, %edx
	movl	%edx, 8(%r11)
	cmpl	$3, %r15d
	jl	.LBB0_125
# BB#120:                               # %if.then.56.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	%eax, %esi
	subl	%edx, %esi
	movzbl	5(%r12,%r13), %edi
	addl	%esi, %edi
	cmpl	$255, %edi
	movl	%edi, %ebp
	movl	$255, %esi
	cmovgl	%esi, %ebp
	movb	$-1, %sil
	jg	.LBB0_122
# BB#121:                               # %if.then.56.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%dil, %sil
.LBB0_122:                              # %if.then.56.2
                                        #   in Loop: Header=BB0_29 Depth=1
	testl	%ebp, %ebp
	jns	.LBB0_124
# BB#123:                               #   in Loop: Header=BB0_29 Depth=1
	xorl	%esi, %esi
.LBB0_124:                              # %if.then.56.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%sil, 5(%r12,%r13)
.LBB0_125:                              # %if.end.70.2
                                        #   in Loop: Header=BB0_29 Depth=1
	sarl	$2, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	addl	%eax, 8(%r10)
	cmpl	%ebx, %r15d
	movq	56(%rsp), %rbp          # 8-byte Reload
	jge	.LBB0_132
# BB#126:                               # %if.then.77.2
                                        #   in Loop: Header=BB0_29 Depth=1
	addl	8(%rbp), %ecx
	cmpl	$127, %ecx
	movl	%ecx, %edx
	movl	$127, %eax
	cmovgl	%eax, %edx
	movb	$127, %al
	jg	.LBB0_128
# BB#127:                               # %if.then.77.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%cl, %al
.LBB0_128:                              # %if.then.77.2
                                        #   in Loop: Header=BB0_29 Depth=1
	cmpl	$-128, %edx
	movb	$-128, %cl
	jl	.LBB0_130
# BB#129:                               # %if.then.77.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movb	%al, %cl
.LBB0_130:                              # %if.then.77.2
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	%cl, 2(%rax,%r13)
.LBB0_132:                              # %for.inc.96.2
                                        #   in Loop: Header=BB0_29 Depth=1
	addl	$-3, %r15d
	leaq	3(%r13), %rdx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%edx, %eax
	movq	%r10, %rcx
	movq	%r11, %rax
	jne	.LBB0_29
# BB#56:                                # %for.cond.37.for.end.108_crit_edge
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	3(%rcx,%r13), %rcx
	movb	(%r10), %al
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	xorl	%edx, %edx
	jmp	.LBB0_57
.LBB0_58:                               # %if.else.118
	testl	%r13d, %r13d
	movq	56(%rsp), %rbx          # 8-byte Reload
	je	.LBB0_59
# BB#60:                                # %for.body.126.lr.ph
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %r15
	leal	(%r13,%r13,2), %r11d
	movq	%r11, 32(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movslq	%r11d, %rcx
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	2(%rcx,%rsi), %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leaq	(%rcx,%r12), %rsi
	movq	%r12, (%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_61:                               # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rcx, %r13
	leaq	-3(%rsi,%r13), %rdi
	movq	%r11, %r14
	movq	%rsi, %r12
	callq	escp2c_pick_best
	movq	%r12, %rsi
	movq	%r14, %r11
	leal	(%r11,%r13), %r8d
	movzbl	-1(%rsi,%r13), %edx
	movzbl	2(%rax), %ecx
	movb	%cl, -1(%rsi,%r13)
	subl	%ecx, %edx
	jne	.LBB0_62
# BB#74:                                # %if.else.184
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$0, (%rbp)
	movq	%rbp, %r14
	movq	%r15, %rbp
	movq	48(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_62:                               # %if.then.140
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	%edx, %r9d
	sarl	%r9d
	movl	%edx, %edi
	sarl	$4, %edi
	movl	%edi, (%rbp)
	cmpl	$3, %r8d
	movq	%rbp, %r14
	movq	%r15, %rbp
	movq	48(%rsp), %r12          # 8-byte Reload
	jl	.LBB0_68
# BB#63:                                # %if.then.146
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%r12, %r11
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movl	%r9d, %ebp
	subl	%edi, %ebp
	movzbl	-4(%rsi,%r13), %ecx
	addl	%ebp, %ecx
	cmpl	$255, %ecx
	movl	%ecx, %ebx
	movl	$255, %ebp
	cmovgl	%ebp, %ebx
	movb	$-1, %r10b
	jg	.LBB0_65
# BB#64:                                # %if.then.146
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%cl, %r10b
.LBB0_65:                               # %if.then.146
                                        #   in Loop: Header=BB0_61 Depth=1
	testl	%ebx, %ebx
	jns	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_61 Depth=1
	xorl	%r10d, %r10d
.LBB0_67:                               # %if.then.146
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%r15, %rbx
	movq	%r11, %r12
	movq	32(%rsp), %r11          # 8-byte Reload
	movb	%r10b, -4(%rsi,%r13)
	movq	56(%rsp), %rbp          # 8-byte Reload
.LBB0_68:                               # %if.end.160
                                        #   in Loop: Header=BB0_61 Depth=1
	sarl	$2, %edx
	subl	%edi, %edx
	subl	%edx, %r9d
	addl	%r9d, (%r12)
	cmpl	%ebx, %r8d
	jge	.LBB0_75
# BB#69:                                # %if.then.167
                                        #   in Loop: Header=BB0_61 Depth=1
	addl	(%rbp), %edx
	cmpl	$127, %edx
	movl	%edx, %edi
	movl	$127, %ecx
	cmovgl	%ecx, %edi
	movb	$127, %cl
	jg	.LBB0_71
# BB#70:                                # %if.then.167
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%dl, %cl
.LBB0_71:                               # %if.then.167
                                        #   in Loop: Header=BB0_61 Depth=1
	cmpl	$-128, %edi
	movb	$-128, %dl
	jl	.LBB0_73
# BB#72:                                # %if.then.167
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%cl, %dl
.LBB0_73:                               # %if.then.167
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movb	%dl, (%rcx,%r13)
.LBB0_75:                               # %for.inc.186
                                        #   in Loop: Header=BB0_61 Depth=1
	movzbl	-2(%rsi,%r13), %edx
	movzbl	1(%rax), %ecx
	movb	%cl, -2(%rsi,%r13)
	subl	%ecx, %edx
	jne	.LBB0_76
# BB#101:                               # %if.else.184.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$0, 4(%r14)
	jmp	.LBB0_102
	.align	16, 0x90
.LBB0_76:                               # %if.then.140.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	%edx, %ecx
	sarl	%ecx
	movl	%edx, %edi
	sarl	$4, %edi
	movl	%edi, 4(%r14)
	cmpl	$3, %r8d
	jl	.LBB0_82
# BB#77:                                # %if.then.146.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%r12, %r11
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rbx, %r9
	movl	%ecx, %ebp
	subl	%edi, %ebp
	movzbl	-5(%rsi,%r13), %ebx
	movq	%rsi, %r15
	addl	%ebp, %ebx
	cmpl	$255, %ebx
	movl	%ebx, %esi
	movl	$255, %ebp
	cmovgl	%ebp, %esi
	movb	$-1, %r10b
	jg	.LBB0_79
# BB#78:                                # %if.then.146.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%bl, %r10b
.LBB0_79:                               # %if.then.146.1
                                        #   in Loop: Header=BB0_61 Depth=1
	testl	%esi, %esi
	jns	.LBB0_81
# BB#80:                                #   in Loop: Header=BB0_61 Depth=1
	xorl	%r10d, %r10d
.LBB0_81:                               # %if.then.146.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%r9, %rbx
	movq	%r11, %r12
	movq	32(%rsp), %r11          # 8-byte Reload
	movb	%r10b, -5(%r15,%r13)
	movq	%r15, %rsi
	movq	56(%rsp), %rbp          # 8-byte Reload
.LBB0_82:                               # %if.end.160.1
                                        #   in Loop: Header=BB0_61 Depth=1
	sarl	$2, %edx
	subl	%edi, %edx
	subl	%edx, %ecx
	addl	%ecx, 4(%r12)
	cmpl	%ebx, %r8d
	jge	.LBB0_102
# BB#83:                                # %if.then.167.1
                                        #   in Loop: Header=BB0_61 Depth=1
	addl	4(%rbp), %edx
	cmpl	$127, %edx
	movl	%edx, %edi
	movl	$127, %ecx
	cmovgl	%ecx, %edi
	movb	$127, %cl
	jg	.LBB0_85
# BB#84:                                # %if.then.167.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%dl, %cl
.LBB0_85:                               # %if.then.167.1
                                        #   in Loop: Header=BB0_61 Depth=1
	cmpl	$-128, %edi
	movb	$-128, %dl
	jl	.LBB0_87
# BB#86:                                # %if.then.167.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%cl, %dl
.LBB0_87:                               # %if.then.167.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movb	%dl, -1(%rcx,%r13)
.LBB0_102:                              # %for.inc.186.1
                                        #   in Loop: Header=BB0_61 Depth=1
	movzbl	-3(%rsi,%r13), %edx
	movzbl	(%rax), %eax
	movb	%al, -3(%rsi,%r13)
	subl	%eax, %edx
	jne	.LBB0_103
# BB#115:                               # %if.else.184.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$0, 8(%r14)
	jmp	.LBB0_116
	.align	16, 0x90
.LBB0_103:                              # %if.then.140.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	%edx, %eax
	sarl	%eax
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	%ecx, 8(%r14)
	cmpl	$3, %r8d
	jl	.LBB0_109
# BB#104:                               # %if.then.146.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%rsi, %r15
	movq	%rbx, %r10
	movq	%r12, %r9
	movq	%rbp, %rbx
	movl	%eax, %edi
	subl	%ecx, %edi
	movzbl	-6(%r15,%r13), %esi
	addl	%edi, %esi
	cmpl	$255, %esi
	movl	%esi, %ebp
	movl	$255, %edi
	cmovgl	%edi, %ebp
	movb	$-1, %dil
	jg	.LBB0_106
# BB#105:                               # %if.then.146.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%sil, %dil
.LBB0_106:                              # %if.then.146.2
                                        #   in Loop: Header=BB0_61 Depth=1
	testl	%ebp, %ebp
	jns	.LBB0_108
# BB#107:                               #   in Loop: Header=BB0_61 Depth=1
	xorl	%edi, %edi
.LBB0_108:                              # %if.then.146.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	%rbx, %rbp
	movq	%r9, %r12
	movq	%r10, %rbx
	movq	%r15, %rsi
	movb	%dil, -6(%rsi,%r13)
.LBB0_109:                              # %if.end.160.2
                                        #   in Loop: Header=BB0_61 Depth=1
	sarl	$2, %edx
	subl	%ecx, %edx
	subl	%edx, %eax
	addl	%eax, 8(%r12)
	cmpl	%ebx, %r8d
	jge	.LBB0_116
# BB#110:                               # %if.then.167.2
                                        #   in Loop: Header=BB0_61 Depth=1
	addl	8(%rbp), %edx
	cmpl	$127, %edx
	movl	%edx, %ecx
	movl	$127, %eax
	cmovgl	%eax, %ecx
	movb	$127, %al
	jg	.LBB0_112
# BB#111:                               # %if.then.167.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%dl, %al
.LBB0_112:                              # %if.then.167.2
                                        #   in Loop: Header=BB0_61 Depth=1
	cmpl	$-128, %ecx
	movb	$-128, %cl
	jl	.LBB0_114
# BB#113:                               # %if.then.167.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movb	%al, %cl
.LBB0_114:                              # %if.then.167.2
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	%cl, -2(%rax,%r13)
.LBB0_116:                              # %for.inc.186.2
                                        #   in Loop: Header=BB0_61 Depth=1
	leaq	-3(%r13), %rcx
	movl	%ecx, %eax
	addl	%r11d, %eax
	movq	%r12, %r15
	movq	%r14, %rax
	jne	.LBB0_61
# BB#88:                                # %for.cond.124.for.end.198_crit_edge
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	-3(%rax,%r13), %rax
	movb	(%r12), %cl
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r12, %rdx
	movq	(%rsp), %r12            # 8-byte Reload
	jmp	.LBB0_89
.LBB0_27:
	leaq	64(%rsp), %r10
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	$-3, %rcx
	xorl	%eax, %eax
.LBB0_57:                               # %for.end.108
	movb	%al, (%rcx)
	movb	4(%r10), %al
	movb	%al, 1(%rcx)
	movb	8(%r10), %al
	movb	%al, 2(%rcx)
	jmp	.LBB0_90
.LBB0_59:
	movq	%r13, 24(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rdx
	movslq	%ebx, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	2(%rcx,%rax), %rax
	xorl	%ecx, %ecx
.LBB0_89:                               # %for.end.198
	movb	%cl, (%rax)
	movb	4(%rdx), %cl
	movb	%cl, 1(%rax)
	movb	8(%rdx), %cl
	movb	%cl, 2(%rax)
	movl	$1, %edx
	movq	24(%rsp), %r13          # 8-byte Reload
.LBB0_90:                               # %if.end.208
	movl	%edx, 18872(%r15)
	testl	%r13d, %r13d
	je	.LBB0_93
# BB#91:                                # %for.body.i.preheader
	imull	$-3, %r13d, %eax
	.align	16, 0x90
.LBB0_92:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r12), %cl
	movb	1(%r12), %dl
	andb	$4, %cl
	andb	$2, %dl
	orb	%cl, %dl
	movb	2(%r12), %cl
	andb	$1, %cl
	orb	%dl, %cl
	movb	%cl, (%r14)
	incq	%r14
	addq	$3, %r12
	addl	$3, %eax
	jne	.LBB0_92
.LBB0_93:                               # %escp2c_conv_stc.exit
	xorl	%ebx, %ebx
.LBB0_100:                              # %cleanup
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	stc_fs2, .Lfunc_end0-stc_fs2
	.cfi_endproc

	.align	16, 0x90
	.type	escp2c_pick_best,@function
escp2c_pick_best:                       # @escp2c_pick_best
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
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movzbl	(%rdi), %r12d
	movzbl	1(%rdi), %ecx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	movzbl	2(%rdi), %edx
	movl	%ecx, %esi
	shrl	%esi
	movl	%r12d, %eax
	subl	%esi, %eax
	imull	%r12d, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%edx, %r15d
	shrl	%r15d
	movl	%ecx, %edi
	subl	%r15d, %edi
	imull	%ecx, %edi
	movq	%rcx, %r8
	movl	%r12d, %r10d
	shrl	%r10d
	movl	%edx, %r13d
	subl	%r10d, %r13d
	imull	%edx, %r13d
	leal	(%r13,%rax), %ebx
	addl	%edi, %ebx
	leal	-255(%r12), %ecx
	movl	%ecx, %r14d
	subl	%esi, %r14d
	imull	%ecx, %r14d
	movl	%ecx, %r11d
	sarl	%r11d
	movl	%edx, %eax
	subl	%r11d, %eax
	imull	%edx, %eax
	leal	(%rax,%r14), %ebp
	addl	%edi, %ebp
	cmpl	%ebx, %ebp
	movl	$escp2c_pick_best.colour, %esi
	movl	$escp2c_pick_best.colour+3, %r9d
	cmovgeq	%rsi, %r9
	cmovgl	%ebx, %ebp
	leal	-255(%r8), %edi
	movl	%edi, %esi
	sarl	%esi
	movl	%ecx, %r8d
	subl	%esi, %r8d
	imull	%ecx, %r8d
	movl	%edi, %ebx
	subl	%r15d, %ebx
	imull	%edi, %ebx
	leal	(%rax,%rbx), %eax
	addl	%r8d, %eax
	cmpl	%ebp, %eax
	movl	$escp2c_pick_best.colour+9, %ecx
	cmovgeq	%r9, %rcx
	cmovgl	%ebp, %eax
	movl	%r12d, %ebp
	subl	%esi, %ebp
	imull	%r12d, %ebp
	addl	%r13d, %ebx
	addl	%ebp, %ebx
	cmpl	%eax, %ebx
	movl	$escp2c_pick_best.colour+6, %esi
	cmovgeq	%rcx, %rsi
	cmovgl	%eax, %ebx
	addl	$-255, %edx
	movl	%edx, %r9d
	sarl	%r9d
	movl	%edi, %ecx
	subl	%r9d, %ecx
	imull	%edi, %ecx
	movl	%edx, %eax
	subl	%r10d, %eax
	imull	%edx, %eax
	leal	(%rbp,%rax), %edi
	addl	%ecx, %edi
	cmpl	%ebx, %edi
	movl	$escp2c_pick_best.colour+18, %ebp
	cmovgeq	%rsi, %rbp
	cmovgl	%ebx, %edi
	movl	%edx, %esi
	subl	%r11d, %esi
	imull	%edx, %esi
	leal	(%r8,%rsi), %edx
	addl	%ecx, %edx
	cmpl	%edi, %edx
	movl	$escp2c_pick_best.colour+21, %ecx
	cmovgeq	%rbp, %rcx
	cmovgl	%edi, %edx
	movq	-16(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %edi
	subl	%r9d, %edi
	imull	%ebp, %edi
	addl	%r14d, %esi
	addl	%edi, %esi
	cmpl	%edx, %esi
	movl	$escp2c_pick_best.colour+15, %ebp
	cmovgeq	%rcx, %rbp
	cmovgl	%edx, %esi
	movq	-8(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	addl	%edi, %eax
	cmpl	%esi, %eax
	movl	$escp2c_pick_best.colour+12, %eax
	cmovgeq	%rbp, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	escp2c_pick_best, .Lfunc_end1-escp2c_pick_best
	.cfi_endproc

	.type	escp2c_pick_best.colour,@object # @escp2c_pick_best.colour
	.data
	.align	16
escp2c_pick_best.colour:
	.zero	3
	.asciz	"\377\000"
	.asciz	"\000\377"
	.asciz	"\377\377"
	.ascii	"\000\000\377"
	.ascii	"\377\000\377"
	.ascii	"\000\377\377"
	.zero	3,255
	.size	escp2c_pick_best.colour, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
