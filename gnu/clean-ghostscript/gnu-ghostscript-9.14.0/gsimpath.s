	.text
	.file	"gsimpath.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1048576000              # float 0.25
	.text
	.globl	gs_imagepath
	.align	16, 0x90
	.type	gs_imagepath,@function
gs_imagepath:                           # @gs_imagepath
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
	movl	%edx, %r13d
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movl	%esi, 48(%rsp)
	movl	%r13d, 52(%rsp)
	leal	7(%rsi), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rsi,%rax), %eax
	sarl	$3, %eax
	movl	%eax, 56(%rsp)
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB0_26
	.align	16, 0x90
.LBB0_2:                                # %for.cond.6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	%r13d, %r15d
	leal	-1(%r15), %r13d
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_1
# BB#3:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	-2(%r15), %r14d
	movq	24(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_4:                                # %for.body.8
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %eax
	testl	%eax, %eax
	jle	.LBB0_1
# BB#5:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_4 Depth=2
	leal	-1(%rax), %r12d
	testl	%r15d, %r15d
	jle	.LBB0_17
# BB#6:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	48(%rsp), %rsi
	cmpl	%r12d, %esi
	jle	.LBB0_17
# BB#7:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	%rsi, %rbp
	shrq	$32, %rbp
	cmpl	%r13d, %ebp
	jle	.LBB0_17
# BB#8:                                 # %get_pixel.exit
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	56(%rsp), %r8d
	movl	%r8d, %edx
	imull	%r13d, %edx
	movl	%r12d, %ecx
	notl	%ecx
	movl	%r12d, %ebx
	sarl	$3, %ebx
	leal	(%rdx,%rbx), %edi
	movslq	%edi, %rdi
	movq	40(%rsp), %r9
	movzbl	(%r9,%rdi), %r10d
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%cl, %ecx
	btl	%ecx, %r10d
	jae	.LBB0_17
# BB#9:                                 # %lor.lhs.false.i.39
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$2, %r15d
	jl	.LBB0_12
# BB#10:                                # %lor.lhs.false.i.39
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	%r14d, %ebp
	jle	.LBB0_12
# BB#11:                                # %get_pixel.exit57
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	%r8d, %ecx
	imull	%r14d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r9,%rcx), %ecx
	testl	%edi, %ecx
	jne	.LBB0_17
.LBB0_12:                               # %lor.lhs.false.i.63
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	%eax, %esi
	jle	.LBB0_18
# BB#13:                                # %get_pixel.exit81
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	%eax, %ecx
	notl	%ecx
	sarl	$3, %eax
	addl	%eax, %edx
	movslq	%edx, %rdx
	movzbl	(%r9,%rdx), %esi
	andb	$7, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movzbl	%cl, %ecx
	btl	%ecx, %esi
	jae	.LBB0_18
# BB#14:                                # %lor.lhs.false.i.87
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$2, %r15d
	jl	.LBB0_17
# BB#15:                                # %lor.lhs.false.i.87
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	%r14d, %ebp
	jle	.LBB0_17
# BB#16:                                # %get_pixel.exit105
                                        #   in Loop: Header=BB0_4 Depth=2
	imull	%r14d, %r8d
	addl	%eax, %r8d
	movslq	%r8d, %rax
	movzbl	(%r9,%rax), %eax
	testl	%edx, %eax
	je	.LBB0_17
.LBB0_18:                               # %land.lhs.true.20
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$1, %ecx
	leaq	32(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	trace_from
	testl	%eax, %eax
	jne	.LBB0_17
# BB#19:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	$0, 68(%rsp)
	movq	$0, 60(%rsp)
	xorl	%ecx, %ecx
	leaq	32(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	trace_from
	testl	%eax, %eax
	js	.LBB0_26
# BB#20:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	60(%rsp), %edx
	movq	64(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	orl	%edx, %esi
	je	.LBB0_21
# BB#22:                                # %if.else.i
                                        #   in Loop: Header=BB0_4 Depth=2
	testl	%eax, %eax
	je	.LBB0_24
# BB#23:                                # %if.then.9.i
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	32(%rsp), %rdi
	imull	%eax, %edx
	cvtsi2ssl	%edx, %xmm0
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	%ecx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	callq	gs_rlineto
	testl	%eax, %eax
	js	.LBB0_26
.LBB0_24:                               # %if.end.22.i
                                        #   in Loop: Header=BB0_4 Depth=2
	movq	$0, 60(%rsp)
	movl	$1, %eax
	jmp	.LBB0_25
.LBB0_21:                               # %if.then.5.i
                                        #   in Loop: Header=BB0_4 Depth=2
	incl	%eax
.LBB0_25:                               # %if.end.29
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	%eax, 68(%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	gs_closepath
	testl	%eax, %eax
	js	.LBB0_26
	.align	16, 0x90
.LBB0_17:                               # %for.cond.6.backedge
                                        #   in Loop: Header=BB0_4 Depth=2
	leal	1(%r12), %eax
	cmpl	$1, %eax
	jg	.LBB0_4
.LBB0_1:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %r15d
	jge	.LBB0_2
.LBB0_26:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_imagepath, .Lfunc_end0-gs_imagepath
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	3196059648              # float -0.25
.LCPI1_1:
	.long	1048576000              # float 0.25
	.text
	.align	16, 0x90
	.type	trace_from,@function
trace_from:                             # @trace_from
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
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
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
	movl	%ecx, %r8d
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r9
	testl	%r8d, %r8d
	je	.LBB1_2
# BB#1:                                 # %entry.while.body.preheader_crit_edge
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_9
.LBB1_2:                                # %if.then
	leal	1(%rsi), %eax
	movl	$1, %ebp
	cmpl	$-1, %esi
	jl	.LBB1_3
# BB#4:                                 # %lor.lhs.false.i
	testl	%edx, %edx
	jle	.LBB1_3
# BB#5:                                 # %lor.lhs.false.i
	cmpl	%eax, 16(%r9)
	jle	.LBB1_3
# BB#6:                                 # %lor.lhs.false.4.i
	movq	%rsi, %r14
	movl	%r8d, %r15d
	leal	-1(%rdx), %ecx
	cmpl	%ecx, 20(%r9)
	jle	.LBB1_8
# BB#7:                                 # %if.end.i
	imull	24(%r9), %ecx
	movl	%eax, %edi
	notl	%edi
	movl	%eax, %esi
	sarl	$3, %esi
	addl	%ecx, %esi
	movslq	%esi, %rcx
	movq	8(%r9), %rsi
	movzbl	(%rsi,%rcx), %ecx
	andb	$7, %dil
	movzbl	%dil, %esi
	btl	%esi, %ecx
	sbbl	%ebp, %ebp
	andl	$2, %ebp
	orl	$1, %ebp
	jmp	.LBB1_8
.LBB1_3:
	movq	%rsi, %r14
	movl	%r8d, %r15d
.LBB1_8:                                # %get_pixel.exit
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	(%r9), %rdi
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%ebp, %xmm1
	mulss	.LCPI1_0(%rip), %xmm1
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	%rdx, %rbp
	movq	%r9, %rbx
	callq	gs_moveto
	movq	%rbx, %r9
	movq	%rbp, %rdx
	testl	%eax, %eax
	movl	%r15d, %r8d
	movq	%r14, %rsi
	js	.LBB1_78
.LBB1_9:                                # %while.body.preheader
	movq	%r9, 8(%rsp)            # 8-byte Spill
	xorl	%r10d, %r10d
	movl	$-1, %r12d
	movl	%edx, %edi
	movl	%esi, %r13d
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_75:                               # %if.end.105
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%r8d, %r8d
	movl	%ecx, %r12d
	je	.LBB1_10
# BB#76:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%edx, %edi
	sete	%bl
	cmpl	%esi, %r13d
	movl	%edi, %eax
	setg	%dil
	cmpl	%edx, %eax
	movl	%eax, %ebp
	movl	$1, %eax
	jg	.LBB1_78
# BB#77:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB1_10 Depth=1
	andb	%dil, %bl
	movl	%ecx, %r12d
	movl	%ebp, %edi
	je	.LBB1_10
	jmp	.LBB1_78
.LBB1_24:                               # %if.else
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$1, %ebx
	subl	52(%rsp), %ebx          # 4-byte Folded Reload
	je	.LBB1_32
# BB#25:                                # %if.then.i
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r12d, %eax
	jne	.LBB1_28
# BB#26:                                # %land.lhs.true.i.183
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r10d, 32(%r9)
	jne	.LBB1_28
# BB#27:                                # %if.then.5.i.186
                                        #   in Loop: Header=BB1_10 Depth=1
	addl	%ebx, 36(%r9)
	jmp	.LBB1_31
.LBB1_66:                               # %if.else.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB1_68
# BB#67:                                # %if.then.9.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	(%r9), %rdi
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	32(%r9), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movl	%r8d, %r14d
	movq	%rdx, %r13
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	callq	gs_rlineto
	movl	36(%rsp), %r11d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %r8d
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_68:                               # %if.end.22.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r12d, 28(%r9)
	movl	%r10d, 32(%r9)
	movl	$4, 36(%r9)
.LBB1_69:                               # %if.end.86
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%ebp, %edi
	movl	%r12d, %ecx
	movl	%ebx, %r13d
	jmp	.LBB1_70
.LBB1_28:                               # %if.else.i.189
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB1_30
# BB#29:                                # %if.then.9.i.204
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	(%r9), %rdi
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	32(%r9), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	%rdx, %rbp
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	callq	gs_rlineto
	movl	36(%rsp), %r11d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movl	20(%rsp), %r8d          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_30:                               # %if.end.22.i.206
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r12d, 28(%r9)
	movl	%r10d, 32(%r9)
	movl	%ebx, 36(%r9)
.LBB1_31:                               # %if.end.40
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r12d, %eax
.LBB1_32:                               # %if.end.40
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r15d, %eax
	jne	.LBB1_35
# BB#33:                                # %land.lhs.true.i.214
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r11d, 32(%r9)
	jne	.LBB1_35
# BB#34:                                # %if.then.5.i.217
                                        #   in Loop: Header=BB1_10 Depth=1
	addl	$3, 36(%r9)
	jmp	.LBB1_38
.LBB1_35:                               # %if.else.i.220
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB1_37
# BB#36:                                # %if.then.9.i.235
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	(%r9), %rdi
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	32(%r9), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	callq	gs_rlineto
	movl	36(%rsp), %r11d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%rbx, %r9
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movl	20(%rsp), %r8d          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_37:                               # %if.end.22.i.237
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r15d, 28(%r9)
	movl	%r11d, 32(%r9)
	movl	$3, 36(%r9)
	jmp	.LBB1_38
.LBB1_21:                               # %if.else.i.158
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%eax, %eax
	je	.LBB1_23
# BB#22:                                # %if.then.9.i.173
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	(%r9), %rdi
	imull	%eax, %ecx
	imull	%r11d, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movl	%r8d, %ebx
	movq	%rdx, %rbp
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	callq	gs_rlineto
	movl	36(%rsp), %r11d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movl	%ebx, %r8d
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_23:                               # %if.end.22.i.175
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r15d, 28(%r9)
	movl	%r11d, 32(%r9)
	movl	$2, 36(%r9)
.LBB1_38:                               # %if.end.47
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$3, 52(%rsp)            # 4-byte Folded Spill
.LBB1_39:                               # %if.end.47
                                        #   in Loop: Header=BB1_10 Depth=1
	negl	%r10d
	movl	%r13d, %edi
	movl	%r10d, %ecx
	movl	%r12d, %r10d
	movl	%r14d, %r13d
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r15d
	subl	%r10d, %r15d
	leal	(%r10,%r12), %r11d
	movl	%r13d, %r14d
	movl	%r13d, %ebp
	addl	%r15d, %r14d
	js	.LBB1_40
# BB#11:                                # %lor.lhs.false.i.99
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r11d, %r13d
	addl	%edi, %r13d
	js	.LBB1_40
# BB#12:                                # %lor.lhs.false.i.99
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r14d, 16(%r9)
	jle	.LBB1_40
# BB#13:                                # %lor.lhs.false.4.i.102
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r13d, 20(%r9)
	jle	.LBB1_40
# BB#14:                                # %get_pixel.exit117
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	24(%r9), %eax
	imull	%r13d, %eax
	movl	%r14d, %ecx
	notl	%ecx
	movl	%edi, %ebx
	movl	%r14d, %edi
	sarl	$3, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movq	8(%r9), %rdi
	movzbl	(%rdi,%rax), %eax
	movl	%ebx, %edi
	andb	$7, %cl
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	jae	.LBB1_40
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%r8d, %r8d
	jne	.LBB1_39
# BB#16:                                # %if.then.20
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	28(%r9), %eax
	cmpl	%r11d, %eax
	jne	.LBB1_24
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	32(%r9), %ecx
	movl	%ecx, %edi
	addl	%r15d, %edi
	jne	.LBB1_24
# BB#18:                                # %if.then.28
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %edi
	leal	-1(%rdi), %eax
	movl	%eax, 36(%r9)
	cmpl	%r15d, %r11d
	jne	.LBB1_21
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r15d, %ecx
	jne	.LBB1_21
# BB#20:                                # %if.then.5.i.155
                                        #   in Loop: Header=BB1_10 Depth=1
	incl	%edi
	movl	%edi, 36(%r9)
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_40:                               # %if.else.52
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%ebp, %r13d
	movl	%r13d, %ebx
	addl	%r12d, %ebx
	js	.LBB1_45
# BB#41:                                # %lor.lhs.false.i.245
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r10d, %ebp
	addl	%edi, %ebp
	js	.LBB1_45
# BB#42:                                # %lor.lhs.false.i.245
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%ebx, 16(%r9)
	jle	.LBB1_45
# BB#43:                                # %lor.lhs.false.4.i.248
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%ebp, 20(%r9)
	jle	.LBB1_45
# BB#44:                                # %get_pixel.exit263
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	24(%r9), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	notl	%ecx
	movl	%edi, %r14d
	movl	%ebx, %edi
	sarl	$3, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movq	8(%r9), %rdi
	movzbl	(%rdi,%rax), %eax
	movl	%r14d, %edi
	andb	$7, %cl
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	jae	.LBB1_45
# BB#62:                                # %if.else.74
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%r8d, %r8d
	jne	.LBB1_69
# BB#63:                                # %if.then.76
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	28(%r9), %eax
	cmpl	%r12d, %eax
	jne	.LBB1_66
# BB#64:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r10d, 32(%r9)
	jne	.LBB1_66
# BB#65:                                # %if.then.5.i
                                        #   in Loop: Header=BB1_10 Depth=1
	addl	$4, 36(%r9)
	jmp	.LBB1_69
	.align	16, 0x90
.LBB1_45:                               # %if.then.57
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%r8d, %r8d
	jne	.LBB1_61
# BB#46:                                # %if.then.59
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$3, %ebx
	subl	52(%rsp), %ebx          # 4-byte Folded Reload
	movl	28(%r9), %eax
	je	.LBB1_54
# BB#47:                                # %if.then.i.267
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r12d, %eax
	jne	.LBB1_50
# BB#48:                                # %land.lhs.true.i.270
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%r10d, 32(%r9)
	jne	.LBB1_50
# BB#49:                                # %if.then.5.i.273
                                        #   in Loop: Header=BB1_10 Depth=1
	addl	%ebx, 36(%r9)
	jmp	.LBB1_53
.LBB1_50:                               # %if.else.i.276
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB1_52
# BB#51:                                # %if.then.9.i.291
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movq	(%r9), %rdi
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	32(%r9), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	%rdx, %rbp
	movq	%r9, %r14
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movl	%r11d, %r13d
	callq	gs_rlineto
	movl	52(%rsp), %edi          # 4-byte Reload
	movl	%r13d, %r11d
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r14, %r9
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movl	20(%rsp), %r8d          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_52:                               # %if.end.22.i.293
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r12d, 28(%r9)
	movl	%r10d, 32(%r9)
	movl	%ebx, 36(%r9)
.LBB1_53:                               # %if.end.65
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r12d, %eax
.LBB1_54:                               # %if.end.65
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r15d, %ebx
	negl	%ebx
	cmpl	%r11d, %eax
	jne	.LBB1_57
# BB#55:                                # %land.lhs.true.i.122
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%ebx, 32(%r9)
	jne	.LBB1_57
# BB#56:                                # %if.then.5.i.125
                                        #   in Loop: Header=BB1_10 Depth=1
	incl	36(%r9)
	jmp	.LBB1_60
	.align	16, 0x90
.LBB1_57:                               # %if.else.i.128
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	36(%r9), %ecx
	testl	%ecx, %ecx
	je	.LBB1_59
# BB#58:                                # %if.then.9.i.143
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movq	(%r9), %rdi
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	imull	32(%r9), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	%rdx, %rbp
	movq	%r9, %r14
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movl	%r11d, %r13d
	callq	gs_rlineto
	movl	52(%rsp), %edi          # 4-byte Reload
	movl	%r13d, %r11d
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r14, %r9
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movl	20(%rsp), %r8d          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_78
.LBB1_59:                               # %if.end.22.i.145
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r11d, 28(%r9)
	movl	%ebx, 32(%r9)
	movl	$1, 36(%r9)
.LBB1_60:                               # %if.end.72
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$1, 52(%rsp)            # 4-byte Folded Spill
.LBB1_61:                               # %if.end.72
                                        #   in Loop: Header=BB1_10 Depth=1
	negl	%r12d
	movl	%r10d, %ecx
	movl	%r12d, %r10d
.LBB1_70:                               # %if.end.86
                                        #   in Loop: Header=BB1_10 Depth=1
	andl	%r11d, %r15d
	cmpl	$-1, %r15d
	movl	%ecx, %r12d
	je	.LBB1_10
# BB#71:                                # %if.end.86
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	$-1, %ecx
	movl	%ecx, %r12d
	jne	.LBB1_10
# BB#72:                                # %if.end.86
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%r10d, %r10d
	movl	%ecx, %r12d
	jne	.LBB1_10
# BB#73:                                # %if.then.98
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%edx, %edi
	jne	.LBB1_75
# BB#74:                                # %if.then.98
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	cmpl	%esi, %r13d
	jne	.LBB1_75
.LBB1_78:                               # %cleanup.119
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	trace_from, .Lfunc_end1-trace_from
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
