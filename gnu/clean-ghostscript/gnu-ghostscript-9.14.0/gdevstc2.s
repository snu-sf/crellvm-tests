	.text
	.file	"gdevstc2.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI0_0:
	.quad	-4620693217682128896    # double -5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
.LCPI0_2:
	.quad	-4620693217682128896    # double -0.5
.LCPI0_3:
	.quad	4598175219545276416     # double 0.25
.LCPI0_4:
	.quad	4598738169498697728     # double 0.28125
	.text
	.globl	stc_fs
	.align	16, 0x90
	.type	stc_fs,@function
stc_fs:                                 # @stc_fs
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
	movq	%rcx, %rbx
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	testl	%esi, %esi
	jle	.LBB0_14
# BB#1:                                 # %if.then
	movl	100(%rbp), %ecx
	cmpq	$0, (%rbx)
	js	.LBB0_3
# BB#2:                                 # %if.then.2
	movq	$-1, (%rbx)
	movl	60(%rsp), %eax          # 4-byte Reload
	imull	%ecx, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movl	$1, %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %esi
	jmp	.LBB0_4
.LBB0_14:                               # %if.else.90
	movslq	100(%rbp), %r15
	movl	$-1, %eax
	testq	%r15, %r15
	js	.LBB0_15
# BB#16:                                # %if.else.90
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	$4, %r15d
	ja	.LBB0_56
# BB#17:                                # %lor.lhs.false.98
	testq	$-3, %r15
	je	.LBB0_56
# BB#18:                                # %if.end.106
	movq	18488(%rbp), %rcx
	movl	$-2, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_56
# BB#19:                                # %lor.lhs.false.109
	movl	16(%rcx), %eax
	movl	%eax, %edx
	andl	$24, %edx
	cmpl	$16, %edx
	jne	.LBB0_56
# BB#20:                                # %if.end.115
	movl	$-3, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB0_56
# BB#21:                                # %lor.lhs.false.121
	leal	3(%r15,%r15,2), %edx
	cmpl	%edx, 20(%rcx)
	jb	.LBB0_56
# BB#22:                                # %if.end.131
	movl	$-4, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	testb	$-64, %al
	jne	.LBB0_56
# BB#23:                                # %if.end.137
	movq	$1, (%rbx)
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI0_0(,%rax,8), %xmm2 # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rax
	movq	%rax, 8(%rbx)
	movsd	24(%rcx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_25
# BB#24:                                # %if.then.156
	addsd	.LCPI0_1(%rip), %xmm0
	jmp	.LBB0_26
.LBB0_3:                                # %if.else
	movq	$1, (%rbx)
	movl	%ecx, %esi
	negl	%esi
	movl	$1, %eax
	movl	60(%rsp), %edi          # 4-byte Reload
	subl	%edi, %eax
	imull	%esi, %eax
	decl	%edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	$-1, 40(%rsp)           # 8-byte Folded Spill
	movl	%esi, 60(%rsp)          # 4-byte Spill
.LBB0_4:                                # %if.end
	xorl	%edi, %edi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB0_56
# BB#5:                                 # %if.end.12
	cmpl	60(%rsp), %eax          # 4-byte Folded Reload
	je	.LBB0_56
# BB#6:                                 # %for.cond.25.preheader.lr.ph
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movslq	%ecx, %r9
	movq	8(%rbx), %r8
	movq	16(%rbx), %r10
	movq	pixelconversion(,%r9,8), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movslq	%esi, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movslq	%eax, %r12
	leaq	(,%rsi,8), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rsi
	subq	%rax, %rsi
	leal	(%rcx,%rcx), %eax
	cltq
	shlq	$3, %rax
	leaq	24(%rax,%r12,8), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r12,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_13:                               # %for.end.for.cond.25.preheader_crit_edge
                                        #   in Loop: Header=BB0_7 Depth=1
	addq	40(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	100(%rax), %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	%rax, 72(%rsp)          # 8-byte Folded Spill
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
.LBB0_7:                                # %for.cond.25.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	movl	$0, %r9d
	jle	.LBB0_12
# BB#8:                                 # %for.body.29.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	movslq	%ecx, %r13
	xorl	%ecx, %ecx
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB0_9:                                # %for.body.29
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r14), %r11
	addq	(%rdx), %r11
	movq	24(%rbx,%rcx,8), %r15
	addq	%r15, %r11
	addq	$4, %r15
	sarq	$3, %r15
	subq	%r15, %r11
	cmpq	%r10, %r11
	jle	.LBB0_11
# BB#10:                                # %if.then.44
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	$1, %eax
	shll	%cl, %eax
	orl	%eax, %r9d
	subq	%r8, %r11
.LBB0_11:                               # %if.end.46
                                        #   in Loop: Header=BB0_9 Depth=2
	leaq	8(%r11,%r11,2), %rax
	sarq	$4, %rax
	addq	%rax, (%rsi,%r14)
	leaq	(%r11,%r11,4), %rdi
	sarq	$4, %rdi
	movq	24(%rbx,%rcx,8), %rbp
	addq	$4, %rbp
	sarq	$3, %rbp
	addq	%rdi, %rbp
	movq	%rbp, (%rbx,%r14)
	subq	%rdi, %r11
	subq	%rax, %r11
	movq	%r11, 24(%rbx,%rcx,8)
	incq	%rcx
	addq	$8, %r14
	addq	$8, %rdx
	cmpq	%r13, %rcx
	jl	.LBB0_9
.LBB0_12:                               # %for.end
                                        #   in Loop: Header=BB0_7 Depth=1
	movslq	%r9d, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movb	(%rcx,%rax), %al
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	addq	16(%rsp), %r12          # 8-byte Folded Reload
	cmpl	60(%rsp), %r12d         # 4-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	jne	.LBB0_13
	jmp	.LBB0_56
.LBB0_15:
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB0_56:                               # %cleanup.263
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_25:                               # %if.else.162
	addsd	.LCPI0_2(%rip), %xmm0
.LBB0_26:                               # %if.end.168
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 16(%rbx)
	movl	$3, %r12d
	subl	60(%rsp), %r12d         # 4-byte Folded Reload
	imull	%r15d, %r12d
	testb	$1, 18472(%rbp)
	jne	.LBB0_27
# BB#39:                                # %for.cond.189.preheader
	xorl	%edi, %edi
	testl	%r12d, %r12d
	movl	%r15d, %ecx
	movl	$0, %r13d
	jle	.LBB0_43
# BB#40:                                # %for.body.192.preheader
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	24(%rbx), %rbp
	movl	$3, %r14d
	subl	60(%rsp), %r14d         # 4-byte Folded Reload
	imull	%r15d, %r14d
	xorl	%r13d, %r13d
.LBB0_41:                               # %for.body.192
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	cltq
	movq	%rax, (%rbp)
	cmpq	%r13, %rax
	cmovgeq	%rax, %r13
	addq	$8, %rbp
	decl	%r14d
	jne	.LBB0_41
# BB#42:                                # %for.cond.189.for.end.209_crit_edge
	movq	8(%rbx), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	100(%rcx), %ecx
	xorl	%edi, %edi
.LBB0_43:                               # %for.end.209
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	cvtsi2sdq	%r13, %xmm1
	divsd	%xmm1, %xmm0
	testl	%ecx, %ecx
	jle	.LBB0_50
# BB#44:                                # %for.body.219.lr.ph
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	%r13, %rax
	shrq	$63, %rax
	leaq	(%rax,%r13), %rax
	sarq	%rax
	xorl	%edx, %edx
	testb	$1, %cl
	je	.LBB0_46
# BB#45:                                # %for.body.219.prol
	movq	24(%rbx), %rdx
	subq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdx
	movq	%rdx, 24(%rbx)
	movl	$1, %edx
.LBB0_46:                               # %for.body.219.lr.ph.split
	movl	$1, %edi
	cmpl	$1, %ecx
	je	.LBB0_50
# BB#47:
	movslq	%ecx, %rcx
.LBB0_48:                               # %for.body.219
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx,%rdx,8), %rsi
	subq	%rax, %rsi
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rsi, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rsi
	movq	%rsi, 24(%rbx,%rdx,8)
	movq	32(%rbx,%rdx,8), %rsi
	subq	%rax, %rsi
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rsi, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rsi
	movq	%rsi, 32(%rbx,%rdx,8)
	addq	$2, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB0_48
# BB#49:                                # %for.cond.214.for.cond.235.preheader_crit_edge.unr-lcssa
	movl	%edx, %edi
.LBB0_50:                               # %for.cond.235.preheader
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	%r12d, %edi
	jge	.LBB0_56
# BB#51:                                # %for.body.238.lr.ph
	mulsd	.LCPI0_4(%rip), %xmm0
	movq	%r13, %rcx
	shrq	$63, %rcx
	addq	%r13, %rcx
	sarq	%rcx
	movslq	%edi, %rax
	movl	$3, %edx
	subl	60(%rsp), %edx          # 4-byte Folded Reload
	imull	%r15d, %edx
	movl	%edx, %esi
	subl	%edi, %esi
	decl	%edx
	testb	$1, %sil
	je	.LBB0_53
# BB#52:                                # %for.body.238.prol
	movq	24(%rbx,%rax,8), %rsi
	subq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movq	%rsi, 24(%rbx,%rax,8)
	incq	%rax
.LBB0_53:                               # %for.body.238.lr.ph.split
	cmpl	%edi, %edx
	je	.LBB0_56
# BB#54:                                # %for.body.238.lr.ph.split.split
	movl	$3, %edx
	subl	60(%rsp), %edx          # 4-byte Folded Reload
	imull	%r15d, %edx
	subl	%eax, %edx
	leaq	32(%rbx,%rax,8), %rax
.LBB0_55:                               # %for.body.238
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax), %rsi
	subq	%rcx, %rsi
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movq	%rsi, -8(%rax)
	movq	(%rax), %rsi
	subq	%rcx, %rsi
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movq	%rsi, (%rax)
	addq	$16, %rax
	addl	$-2, %edx
	jne	.LBB0_55
	jmp	.LBB0_56
.LBB0_27:                               # %for.cond.178.preheader
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB0_56
# BB#28:                                # %for.body.181.preheader
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	movl	$3, %esi
	subl	60(%rsp), %esi          # 4-byte Folded Reload
	imull	%r15d, %esi
	decl	%esi
	leaq	1(%rsi), %rcx
	xorl	%edx, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	andq	%rax, %rdx
	movl	$0, %edi
	je	.LBB0_36
# BB#29:                                # %vector.body.preheader
	incq	%rsi
	andq	%rax, %rsi
	addq	$-4, %rsi
	movl	%esi, %edi
	shrl	$2, %edi
	incl	%edi
	xorl	%eax, %eax
	testb	$3, %dil
	je	.LBB0_32
# BB#30:                                # %vector.body.prol.preheader
	movl	$3, %edi
	subl	60(%rsp), %edi          # 4-byte Folded Reload
	imull	%r15d, %edi
	andl	$12, %edi
	addl	$-4, %edi
	shrl	$2, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
.LBB0_31:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, 24(%rbx,%rax,8)
	movupd	%xmm0, 40(%rbx,%rax,8)
	addq	$4, %rax
	incq	%rdi
	jne	.LBB0_31
.LBB0_32:                               # %vector.body.preheader.split
	cmpq	$12, %rsi
	jb	.LBB0_35
# BB#33:
	xorpd	%xmm0, %xmm0
.LBB0_34:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	orq	$3, %rsi
	movupd	%xmm0, (%rbx,%rsi,8)
	movupd	%xmm0, 16(%rbx,%rsi,8)
	leaq	4(%rax), %rsi
	orq	$3, %rsi
	movupd	%xmm0, (%rbx,%rsi,8)
	movupd	%xmm0, 16(%rbx,%rsi,8)
	leaq	8(%rax), %rsi
	orq	$3, %rsi
	movupd	%xmm0, (%rbx,%rsi,8)
	movupd	%xmm0, 16(%rbx,%rsi,8)
	leaq	12(%rax), %rsi
	orq	$3, %rsi
	movupd	%xmm0, (%rbx,%rsi,8)
	movupd	%xmm0, 16(%rbx,%rsi,8)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.LBB0_34
.LBB0_35:
	movq	%rdx, %rdi
.LBB0_36:                               # %middle.block
	cmpq	%rdi, %rcx
	je	.LBB0_56
# BB#37:                                # %for.body.181.preheader175
	leaq	24(%rbx,%rdi,8), %rax
	movl	$3, %ecx
	subl	60(%rsp), %ecx          # 4-byte Folded Reload
	imull	%r15d, %ecx
	subl	%edi, %ecx
.LBB0_38:                               # %for.body.181
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB0_38
	jmp	.LBB0_56
.Lfunc_end0:
	.size	stc_fs, .Lfunc_end0-stc_fs
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI1_0:
	.quad	-4620693217682128896    # double -5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	-4620693217682128896    # double -0.5
.LCPI1_3:
	.quad	4598175219545276416     # double 0.25
.LCPI1_4:
	.quad	4598738169498697728     # double 0.28125
	.text
	.globl	stc_fscmyk
	.align	16, 0x90
	.type	stc_fscmyk,@function
stc_fscmyk:                             # @stc_fscmyk
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
	subq	$72, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 128
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
	movq	%rcx, %r15
	movq	%rdi, %rbx
	testl	%esi, %esi
	jle	.LBB1_16
# BB#1:                                 # %if.then
	cmpq	$0, (%r15)
	js	.LBB1_3
# BB#2:                                 # %if.then.2
	movq	$-1, (%r15)
	shll	$2, %esi
	xorl	%edi, %edi
	movl	$1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$4, %ecx
	jmp	.LBB1_4
.LBB1_16:                               # %if.else.196
	movl	$-1, %eax
	cmpl	$4, 100(%rbx)
	jne	.LBB1_43
# BB#17:                                # %if.end.200
	movq	18488(%rbx), %rcx
	movl	$-2, %eax
	testq	%rcx, %rcx
	je	.LBB1_43
# BB#18:                                # %lor.lhs.false
	movl	16(%rcx), %edx
	movq	%rsi, %rdi
	movl	%edx, %esi
	andl	$24, %esi
	cmpl	$16, %esi
	movq	%rdi, %rsi
	jne	.LBB1_43
# BB#19:                                # %if.end.208
	movl	$-3, %eax
	cmpl	$256, %edx              # imm = 0x100
	jb	.LBB1_43
# BB#20:                                # %lor.lhs.false.214
	cmpl	$15, 20(%rcx)
	jb	.LBB1_43
# BB#21:                                # %if.end.224
	movl	$-4, %eax
	testb	$-64, %dl
	jne	.LBB1_43
# BB#22:                                # %if.end.231
	movq	$1, (%r15)
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI1_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, 8(%r15)
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	testb	$2, 18472(%rbx)
	jne	.LBB1_23
# BB#24:                                # %if.else.270
	mulsd	.LCPI1_1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB1_26
# BB#25:                                # %if.then.275
	addsd	.LCPI1_1(%rip), %xmm0
	jmp	.LBB1_27
.LBB1_3:                                # %if.else
	movq	$1, (%r15)
	leal	-4(,%rsi,4), %edi
	decl	%esi
	movslq	%esi, %rax
	addq	%rax, %r8
	movq	$-1, 48(%rsp)           # 8-byte Folded Spill
	movl	$-4, %esi
	movq	$-4, %rcx
.LBB1_4:                                # %if.end
	movq	8(%r15), %r10
	movq	%r10, 16(%rsp)          # 8-byte Spill
	movq	16(%r15), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 24(%r15)
	movupd	%xmm0, 40(%r15)
	xorl	%eax, %eax
	cmpl	%esi, %edi
	je	.LBB1_43
# BB#5:                                 # %for.body.15.lr.ph
	movq	64(%rsp), %rax          # 8-byte Reload
	subq	%r10, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	1(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	32(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	40(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	%edi, %rax
	leaq	88(,%rax,8), %rbx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(,%rcx,8), %rbp
	subq	%rbp, %rbx
	leaq	(%rbx,%r15), %r12
	leaq	88(%r15,%rax,8), %r11
	leaq	(%rdx,%rax,8), %r13
	addl	%ecx, %esi
	leal	(%rdi,%rcx), %eax
	subl	%eax, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_9:                                # %if.end.190.for.body.15_crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	48(%rsp), %r8           # 8-byte Folded Reload
	movq	48(%r15), %rdi
.LBB1_6:                                # %for.body.15
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r13,%r14,8), %rax
	movq	24(%r11,%r14,8), %rdx
	addq	%rax, %rdx
	addq	%rdi, %rdx
	addq	$4, %rdi
	sarq	$3, %rdi
	subq	%rdi, %rdx
	movq	64(%rsp), %rbp          # 8-byte Reload
	cmpq	%rbp, %rdx
	movl	$0, %edi
	cmovgq	%r10, %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	leaq	8(%rsi,%rsi,2), %rdi
	sarq	$4, %rdi
	addq	%rdi, 24(%r12,%r14,8)
	leaq	(%rsi,%rsi,4), %rcx
	sarq	$4, %rcx
	movq	48(%r15), %rbx
	addq	$4, %rbx
	sarq	$3, %rbx
	subq	%rcx, %rsi
	leaq	(%rbx,%rcx), %rcx
	subq	%rdi, %rsi
	cmpq	%rbp, %rdx
	movq	%rcx, 24(%r11,%r14,8)
	movq	%rsi, 48(%r15)
	jle	.LBB1_10
# BB#7:                                 # %for.cond.58.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	(%r13,%r14,8), %rcx
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	(%r11,%r14,8), %rdi
	movq	24(%r15), %rdx
	leaq	4(%rdx), %rsi
	sarq	$3, %rsi
	subq	%r10, %rdi
	addq	%rdx, %rdi
	addq	%rcx, %rdi
	subq	%rsi, %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	cmpq	%rbx, %rdi
	movq	(%rsp), %rbp            # 8-byte Reload
	cmovleq	%rbp, %rdi
	leaq	8(%rdi,%rdi,2), %rcx
	sarq	$4, %rcx
	addq	%rcx, (%r12,%r14,8)
	leaq	(%rdi,%rdi,4), %rdx
	sarq	$4, %rdx
	movq	24(%r15), %rsi
	addq	$4, %rsi
	sarq	$3, %rsi
	leaq	(%rsi,%rdx), %rsi
	movq	%rsi, (%r11,%r14,8)
	subq	%rdx, %rdi
	subq	%rcx, %rdi
	movq	%rdi, 24(%r15)
	movq	8(%r13,%r14,8), %rcx
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	8(%r11,%r14,8), %rdi
	movq	32(%r15), %rdx
	leaq	4(%rdx), %rsi
	sarq	$3, %rsi
	subq	%r10, %rdi
	addq	%rdx, %rdi
	addq	%rcx, %rdi
	subq	%rsi, %rdi
	cmpq	%rbx, %rdi
	cmovleq	%rbp, %rdi
	leaq	8(%rdi,%rdi,2), %rcx
	sarq	$4, %rcx
	addq	%rcx, 8(%r12,%r14,8)
	leaq	(%rdi,%rdi,4), %rdx
	sarq	$4, %rdx
	movq	32(%r15), %rsi
	addq	$4, %rsi
	sarq	$3, %rsi
	leaq	(%rsi,%rdx), %rsi
	movq	%rsi, 8(%r11,%r14,8)
	subq	%rdx, %rdi
	subq	%rcx, %rdi
	movq	%rdi, 32(%r15)
	movq	16(%r13,%r14,8), %rcx
	cmpq	%rax, %rcx
	cmovgeq	%rcx, %rax
	movq	16(%r11,%r14,8), %rdi
	movq	40(%r15), %rcx
	leaq	4(%rcx), %rdx
	sarq	$3, %rdx
	subq	%r10, %rdi
	addq	%rcx, %rdi
	addq	%rax, %rdi
	subq	%rdx, %rdi
	cmpq	%rbx, %rdi
	cmovleq	%rbp, %rdi
	leaq	8(%rdi,%rdi,2), %rax
	sarq	$4, %rax
	addq	%rax, 16(%r12,%r14,8)
	leaq	(%rdi,%rdi,4), %rcx
	sarq	$4, %rcx
	movq	40(%r15), %rdx
	addq	$4, %rdx
	sarq	$3, %rdx
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 16(%r11,%r14,8)
	subq	%rcx, %rdi
	subq	%rax, %rdi
	movq	%rdi, 40(%r15)
	movl	$1, %r9d
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_10:                               # %for.body.120
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	(%r13,%r14,8), %rsi
	movq	(%r11,%r14,8), %rdi
	cmpq	%rax, %rsi
	movq	32(%rsp), %rbp          # 8-byte Reload
	jle	.LBB1_13
# BB#11:                                # %if.then.125
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	24(%r15), %rcx
	leaq	4(%rcx), %rdx
	sarq	$3, %rdx
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	subq	%rdx, %rdi
	xorl	%r9d, %r9d
	cmpq	64(%rsp), %rdi          # 8-byte Folded Reload
	jle	.LBB1_14
# BB#12:                                # %if.then.139
                                        #   in Loop: Header=BB1_6 Depth=1
	subq	16(%rsp), %rdi          # 8-byte Folded Reload
	movl	$8, %r9d
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_13:                               # %if.else.143
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	%rax, %rdi
	movq	24(%r15), %rcx
	addq	%rcx, %rdi
	addq	$4, %rcx
	sarq	$3, %rcx
	subq	%rcx, %rdi
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %rdi
	cmovgq	%rcx, %rdi
	xorl	%r9d, %r9d
.LBB1_14:                               # %if.end.159
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	8(%rdi,%rdi,2), %rcx
	sarq	$4, %rcx
	addq	%rcx, (%r12,%r14,8)
	leaq	(%rdi,%rdi,4), %rdx
	sarq	$4, %rdx
	movq	24(%r15), %rsi
	addq	$4, %rsi
	sarq	$3, %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%r11,%r14,8)
	subq	%rdx, %rdi
	subq	%rcx, %rdi
	movq	%rdi, 24(%r15)
	movq	8(%r13,%r14,8), %rdi
	cmpq	%rax, %rdi
	movq	8(%r11,%r14,8), %r10
	jle	.LBB1_15
# BB#44:                                # %if.then.125.1
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	(%rbp), %rcx
	leaq	4(%rcx), %rdx
	sarq	$3, %rdx
	addq	%rdi, %r10
	addq	%rcx, %r10
	subq	%rdx, %r10
	cmpq	64(%rsp), %r10          # 8-byte Folded Reload
	jle	.LBB1_46
# BB#45:                                # %if.then.139.1
                                        #   in Loop: Header=BB1_6 Depth=1
	subq	16(%rsp), %r10          # 8-byte Folded Reload
	orl	$4, %r9d
	jmp	.LBB1_46
	.align	16, 0x90
.LBB1_15:                               # %if.else.143.1
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	%rax, %r10
	movq	(%rbp), %rcx
	addq	%rcx, %r10
	addq	$4, %rcx
	sarq	$3, %rcx
	subq	%rcx, %r10
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %r10
	cmovgq	%rcx, %r10
.LBB1_46:                               # %if.end.159.1
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	8(%r10,%r10,2), %rcx
	sarq	$4, %rcx
	addq	%rcx, 8(%r12,%r14,8)
	leaq	(%r10,%r10,4), %rdx
	sarq	$4, %rdx
	movq	(%rbp), %rsi
	addq	$4, %rsi
	sarq	$3, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 8(%r11,%r14,8)
	subq	%rdx, %r10
	subq	%rcx, %r10
	movq	%r10, (%rbp)
	movq	16(%r13,%r14,8), %rsi
	cmpq	%rax, %rsi
	movq	16(%r11,%r14,8), %rdi
	jle	.LBB1_47
# BB#48:                                # %if.then.125.2
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx), %rax
	leaq	4(%rax), %rcx
	sarq	$3, %rcx
	addq	%rsi, %rdi
	addq	%rax, %rdi
	subq	%rcx, %rdi
	cmpq	64(%rsp), %rdi          # 8-byte Folded Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, %rbx
	jle	.LBB1_49
# BB#50:                                # %if.then.139.2
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	16(%rsp), %r10          # 8-byte Reload
	subq	%r10, %rdi
	orl	$2, %r9d
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_47:                               # %if.else.143.2
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	%rax, %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rax
	addq	%rax, %rdi
	addq	$4, %rax
	sarq	$3, %rax
	subq	%rax, %rdi
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, %rdi
	cmovgq	%rax, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %r10          # 8-byte Reload
	jmp	.LBB1_51
.LBB1_49:                               #   in Loop: Header=BB1_6 Depth=1
	movq	16(%rsp), %r10          # 8-byte Reload
.LBB1_51:                               # %if.end.159.2
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	8(%rdi,%rdi,2), %rax
	sarq	$4, %rax
	addq	%rax, 16(%r12,%r14,8)
	leaq	(%rdi,%rdi,4), %rcx
	sarq	$4, %rcx
	movq	(%rbx), %rdx
	addq	$4, %rdx
	sarq	$3, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 16(%r11,%r14,8)
	subq	%rcx, %rdi
	subq	%rax, %rdi
	movq	%rdi, (%rbx)
.LBB1_8:                                # %if.end.190
                                        #   in Loop: Header=BB1_6 Depth=1
	movb	%r9b, (%r8)
	addq	40(%rsp), %r14          # 8-byte Folded Reload
	xorl	%eax, %eax
	cmpl	%r14d, %esi
	jne	.LBB1_9
	jmp	.LBB1_43
.LBB1_23:                               # %if.then.251
	movl	18616(%rbx), %ecx
	decl	%ecx
	movq	18584(%rbx), %rdx
	movss	(%rdx,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	(%rdx), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	.LCPI1_1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.281
	addsd	.LCPI1_2(%rip), %xmm0
.LBB1_27:                               # %if.end.288
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 16(%r15)
	movl	$3, %r14d
	subl	%esi, %r14d
	shll	$2, %r14d
	testb	$1, 18472(%rbx)
	jne	.LBB1_28
# BB#31:                                # %for.cond.309.preheader
	testl	%r14d, %r14d
	jle	.LBB1_52
# BB#32:                                # %for.body.312.preheader
	leaq	24(%r15), %rbp
	leal	(,%rsi,4), %eax
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	$12, %r13d
	subl	%eax, %r13d
	xorl	%r12d, %r12d
.LBB1_33:                               # %for.body.312
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	cltq
	movq	%rax, (%rbp)
	cmpq	%r12, %rax
	cmovgeq	%rax, %r12
	addq	$8, %rbp
	decl	%r13d
	jne	.LBB1_33
# BB#34:                                # %for.end.329
	movl	100(%rbx), %eax
	cvtsi2sdq	8(%r15), %xmm0
	cvtsi2sdq	%r12, %xmm1
	divsd	%xmm1, %xmm0
	xorl	%edx, %edx
	testl	%eax, %eax
	movq	56(%rsp), %rdi          # 8-byte Reload
	jg	.LBB1_35
	jmp	.LBB1_37
.LBB1_28:                               # %for.cond.298.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB1_43
# BB#29:                                # %for.body.301.preheader
	shll	$2, %esi
	movl	$11, %ecx
	subl	%esi, %ecx
	incq	%rcx
	addq	$40, %r15
	xorpd	%xmm0, %xmm0
.LBB1_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, -16(%r15)
	movupd	%xmm0, (%r15)
	addq	$32, %r15
	addq	$-4, %rcx
	jne	.LBB1_30
	jmp	.LBB1_43
.LBB1_52:                               # %for.end.329.thread
	movq	%rsi, %rdi
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	xorpd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movl	$4, %eax
	xorl	%r12d, %r12d
.LBB1_35:                               # %for.body.339.lr.ph
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	%r12, %rcx
	shrq	$63, %rcx
	leaq	(%rcx,%r12), %rcx
	sarq	%rcx
	cltq
	xorl	%edx, %edx
.LBB1_36:                               # %for.body.339
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15,%rdx,8), %rsi
	subq	%rcx, %rsi
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rsi, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rsi
	movq	%rsi, 24(%r15,%rdx,8)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB1_36
.LBB1_37:                               # %for.cond.355.preheader
	xorl	%eax, %eax
	cmpl	%r14d, %edx
	jge	.LBB1_43
# BB#38:                                # %for.body.358.lr.ph
	mulsd	.LCPI1_4(%rip), %xmm0
	movq	%r12, %rcx
	shrq	$63, %rcx
	addq	%r12, %rcx
	sarq	%rcx
	movslq	%edx, %rsi
	movl	$12, %ebp
	subl	%edx, %ebp
	shll	$2, %edi
	subl	%edi, %ebp
	movq	%rdi, %rbx
	movl	$11, %edi
	subl	%edx, %edi
	testb	$1, %bpl
	je	.LBB1_40
# BB#39:                                # %for.body.358.prol
	movq	24(%r15,%rsi,8), %rdx
	subq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rdx
	movq	%rdx, 24(%r15,%rsi,8)
	incq	%rsi
.LBB1_40:                               # %for.body.358.lr.ph.split
	cmpl	%ebx, %edi
	je	.LBB1_43
# BB#41:                                # %for.body.358.lr.ph.split.split
	movl	$12, %edx
	subl	%esi, %edx
	subl	%ebx, %edx
	leaq	32(%r15,%rsi,8), %rsi
.LBB1_42:                               # %for.body.358
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %rdi
	subq	%rcx, %rdi
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rdi
	movq	%rdi, -8(%rsi)
	movq	(%rsi), %rdi
	subq	%rcx, %rdi
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rdi
	movq	%rdi, (%rsi)
	addq	$16, %rsi
	addl	$-2, %edx
	jne	.LBB1_42
.LBB1_43:                               # %cleanup.380
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	stc_fscmyk, .Lfunc_end1-stc_fscmyk
	.cfi_endproc

	.type	pixelconversion,@object # @pixelconversion
	.section	.rodata,"a",@progbits
	.align	16
pixelconversion:
	.quad	0
	.quad	grayvals
	.quad	0
	.quad	rgbvals
	.quad	cmykvals
	.size	pixelconversion, 40

	.type	grayvals,@object        # @grayvals
grayvals:
	.ascii	"\000\001"
	.size	grayvals, 2

	.type	rgbvals,@object         # @rgbvals
rgbvals:
	.ascii	"\000\004\002\006\001\005\003\007"
	.size	rgbvals, 8

	.type	cmykvals,@object        # @cmykvals
	.align	16
cmykvals:
	.ascii	"\000\b\004\f\002\n\006\001\001\001\001\001\001\001\001\001"
	.size	cmykvals, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
