	.text
	.file	"gxpdash.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	0                       # double 0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_2:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_4:
	.zero	16
	.text
	.globl	gx_path_add_dash_expansion
	.align	16, 0x90
	.type	gx_path_add_dash_expansion,@function
gx_path_add_dash_expansion:             # @gx_path_add_dash_expansion
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
	subq	$232, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 288
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
	movq	%rsi, %r15
	movq	%r15, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	%rdx, %rdi
	movq	%rdx, %rbp
	callq	gs_currentlineparams
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 72(%rax)
	je	.LBB0_83
# BB#1:                                 # %if.end
	movq	56(%r14), %rax
	movq	24(%rax), %rcx
	xorl	%r10d, %r10d
	testq	%rcx, %rcx
	movq	%rbp, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	je	.LBB0_82
# BB#2:                                 # %for.body.lr.ph
	leaq	36(%rax), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	28(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_10 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_51 Depth 4
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	64(%rax), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movl	20(%rcx), %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movl	24(%rcx), %edx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	cmpl	$0, 88(%rax)
	je	.LBB0_4
# BB#5:                                 # %land.rhs.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, 88(%rcx)
	setne	%bl
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%ebx, %ebx
.LBB0_6:                                # %land.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	testb	%bl, %bl
	movq	8(%rsp), %rax           # 8-byte Reload
	cmovneq	24(%rsp), %rax          # 8-byte Folded Reload
	movl	(%rax), %r13d
	movq	%r15, %rdi
	movl	84(%rsp), %esi          # 4-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB0_7
# BB#8:                                 # %top.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movzbl	%bl, %edx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	leal	(,%rdx,4), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	shll	$31, %edx
	sarl	$31, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movl	$-2, 92(%rsp)           # 4-byte Folded Spill
	movl	$1, %esi
.LBB0_9:                                # %top.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_51 Depth 4
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	72(%rcx), %edx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	88(%rcx), %edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
	movl	92(%rcx), %edx
	movl	%edx, 176(%rsp)         # 4-byte Spill
	movss	96(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movl	%eax, %r10d
	movq	72(%rsp), %r15          # 8-byte Reload
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, %edx
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r11d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_10
.LBB0_78:                               # %if.end.338.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	%r8d, 88(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r13d
	movl	96(%rsp), %eax          # 4-byte Reload
	movl	%eax, %edx
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r11d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	36(%rsp), %esi          # 4-byte Reload
	.align	16, 0x90
.LBB0_10:                               # %while.cond.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #         Child Loop BB0_51 Depth 4
	movq	8(%r15), %r15
	testq	%r15, %r15
	je	.LBB0_79
# BB#11:                                # %land.rhs.14.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movw	16(%r15), %bp
	testw	%bp, %bp
	je	.LBB0_79
# BB#12:                                # %while.body.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	20(%r15), %ecx
	movl	24(%r15), %ebx
	movl	%ecx, %r14d
	subl	%r11d, %r14d
	movl	%ebx, %r12d
	subl	%edx, %r12d
	movl	%r12d, %eax
	orl	%r14d, %eax
	jne	.LBB0_19
# BB#13:                                # %if.then.29.i
                                        #   in Loop: Header=BB0_10 Depth=3
	xorpd	%xmm5, %xmm5
	movb	$1, %r8b
	cmpl	$1, %r13d
	je	.LBB0_14
# BB#15:                                # %if.then.29.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movss	56(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_2, %xmm0
	xorps	%xmm0, %xmm0
	xorpd	%xmm4, %xmm4
	movapd	%xmm1, %xmm3
	jne	.LBB0_27
	jp	.LBB0_27
# BB#16:                                # %if.then.34.i
                                        #   in Loop: Header=BB0_10 Depth=3
	testl	%esi, %esi
	jne	.LBB0_10
# BB#17:                                # %if.then.34.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movzwl	%bp, %eax
	cmpl	$2, %eax
	jne	.LBB0_10
# BB#18:                                #   in Loop: Header=BB0_10 Depth=3
	movw	$2, %bp
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=3
	xorps	%xmm0, %xmm0
	xorpd	%xmm4, %xmm4
	movapd	%xmm1, %xmm3
	jmp	.LBB0_27
.LBB0_19:                               # %if.else.43.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movw	%bp, %r13w
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movsd	%xmm2, 184(%rsp)        # 8-byte Spill
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	cvtsi2sdl	%r14d, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	cvtsi2sdl	%r12d, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movq	%rdi, %rbp
	leaq	208(%rsp), %rsi
	callq	gs_imager_idtransform
	testl	%eax, %eax
	js	.LBB0_21
# BB#20:                                # %if.else.43.if.end.52_crit_edge.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movsd	208(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB0_22
.LBB0_21:                               # %if.then.49.i
                                        #   in Loop: Header=BB0_10 Depth=3
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 208(%rsp)
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
.LBB0_22:                               # %if.end.52.i
                                        #   in Loop: Header=BB0_10 Depth=3
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_24
# BB#23:                                # %call.sqrt
                                        #   in Loop: Header=BB0_10 Depth=3
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_24:                               # %if.end.52.i.split
                                        #   in Loop: Header=BB0_10 Depth=3
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movq	%rbp, %rdi
	callq	gs_imager_currentdashadapt
	testl	%eax, %eax
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB0_26
# BB#25:                                # %if.then.62.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movq	56(%rsp), %rbp          # 8-byte Reload
	movss	84(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	callq	ceil
	movsd	160(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movl	72(%rbp), %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	88(%rbp), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	92(%rbp), %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movss	96(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
.LBB0_26:                               # %if.end.72.i
                                        #   in Loop: Header=BB0_10 Depth=3
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	movl	100(%rsp), %ecx         # 4-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
	movl	132(%rsp), %r10d        # 4-byte Reload
	movq	200(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %r11         # 8-byte Reload
	movw	%r13w, %bp
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	136(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB0_27:                               # %if.end.73.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movsd	%xmm5, 136(%rsp)        # 8-byte Spill
	movsd	%xmm4, 120(%rsp)        # 8-byte Spill
	movsd	%xmm3, 160(%rsp)        # 8-byte Spill
	ucomisd	%xmm2, %xmm5
	jbe	.LBB0_28
# BB#29:                                # %while.body.77.lr.ph.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movw	%bp, 132(%rsp)          # 2-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movapd	%xmm5, %xmm6
	movl	92(%rsp), %ebp          # 4-byte Reload
	movl	68(%rsp), %r9d          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	176(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB0_30:                               # %while.body.77.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	132(%rsp), %esi         # 2-byte Folded Reload
	movapd	%xmm2, %xmm0
	divsd	%xmm5, %xmm0
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	mulsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %eax
	leal	(%r11,%rcx), %r11d
	leal	(%rdx,%rax), %edx
	cmpl	$5, %esi
	je	.LBB0_39
# BB#31:                                # %while.body.77.i
                                        #   in Loop: Header=BB0_30 Depth=4
	testl	%r8d, %r8d
	je	.LBB0_39
# BB#32:                                # %if.then.88.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	js	.LBB0_38
# BB#33:                                # %if.then.91.i
                                        #   in Loop: Header=BB0_30 Depth=4
	ucomisd	%xmm2, %xmm6
	jb	.LBB0_36
# BB#34:                                # %land.lhs.true.94.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	addl	%edx, %ecx
	cmpl	$127, %ecx
	jg	.LBB0_36
# BB#35:                                # %if.then.110.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movzwl	18(%r15), %eax
	andl	%ebp, %eax
	orl	%eax, %r9d
	orl	$8, %r9d
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	200(%rsp), %rdx         # 8-byte Reload
	movl	%r14d, %ecx
	movl	%ebp, %r13d
	movl	%r8d, %ebp
	movl	%r12d, %r8d
	movsd	%xmm2, 184(%rsp)        # 8-byte Spill
	movsd	%xmm6, 176(%rsp)        # 8-byte Spill
	callq	gx_path_add_dash_notes
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_39:                               # %if.else.126.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movsd	%xmm6, 176(%rsp)        # 8-byte Spill
	xorl	%r10d, %r10d
	testl	%r13d, %r13d
	jg	.LBB0_80
# BB#40:                                # %if.end.130.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%r11d, %esi
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movl	%r8d, %r13d
	movsd	%xmm2, 184(%rsp)        # 8-byte Spill
	callq	gx_path_add_point
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%r13d, %r8d
	movl	%eax, %r10d
	andl	$-2, %ebp
	xorl	%r13d, %r13d
	movsd	160(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	176(%rsp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	jmp	.LBB0_41
	.align	16, 0x90
.LBB0_36:                               # %if.else.116.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movzwl	18(%r15), %eax
	andl	%ebp, %eax
	orl	%eax, %r9d
	orl	$8, %r9d
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%r9d, %ecx
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	200(%rsp), %rdx         # 8-byte Reload
	movl	%ebp, %r13d
	movl	%r8d, %ebp
	movsd	%xmm2, 184(%rsp)        # 8-byte Spill
	movsd	%xmm6, 176(%rsp)        # 8-byte Spill
	callq	gx_path_add_line_notes
.LBB0_37:                               # %if.end.124.i
                                        #   in Loop: Header=BB0_30 Depth=4
	movsd	176(%rsp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%ebp, %r8d
	movl	%r13d, %ebp
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	%eax, %r10d
	movsd	160(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB0_38:                               # %if.end.124.i
                                        #   in Loop: Header=BB0_30 Depth=4
	orl	$1, %ebp
.LBB0_41:                               # %if.end.133.i
                                        #   in Loop: Header=BB0_30 Depth=4
	testl	%r10d, %r10d
	movsd	120(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	136(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	js	.LBB0_80
# BB#42:                                # %cleanup.i
                                        #   in Loop: Header=BB0_30 Depth=4
	testl	%r8d, %r8d
	sete	%al
	subsd	%xmm2, %xmm6
	movzbl	%al, %r8d
	incl	%ebx
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	movl	$0, %eax
	cmovel	%eax, %ebx
	movslq	%ebx, %rax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	movl	$4, %r9d
	ucomisd	%xmm2, %xmm6
	movq	200(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %r11         # 8-byte Reload
	ja	.LBB0_30
	jmp	.LBB0_43
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=3
	movw	%bp, 132(%rsp)          # 2-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movapd	%xmm5, %xmm6
	movl	92(%rsp), %ebp          # 4-byte Reload
	movl	68(%rsp), %r9d          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	176(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
.LBB0_43:                               # %while.end.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	movq	%r15, %rax
	movl	100(%rsp), %esi         # 4-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
	jne	.LBB0_48
	.align	16, 0x90
.LBB0_44:                               # %while.cond.155.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	8(%rax), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_49
# BB#45:                                # %land.rhs.158.i
                                        #   in Loop: Header=BB0_44 Depth=4
	cmpw	$0, 16(%rax)
	je	.LBB0_49
# BB#46:                                # %while.body.164.i
                                        #   in Loop: Header=BB0_44 Depth=4
	movl	20(%rax), %ecx
	cmpl	%esi, %ecx
	jne	.LBB0_48
# BB#47:                                # %while.body.164.i
                                        #   in Loop: Header=BB0_44 Depth=4
	cmpl	%ebx, %ecx
	je	.LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_10 Depth=3
	movl	$8, %ecx
.LBB0_49:                               # %on.preheader.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%r9d, 68(%rsp)          # 4-byte Spill
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	subsd	%xmm6, %xmm2
	movzwl	132(%rsp), %eax         # 2-byte Folded Reload
	movl	%eax, 136(%rsp)         # 4-byte Spill
	cmpl	$5, %eax
	je	.LBB0_50
# BB#53:                                # %on.preheader.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movsd	%xmm3, 160(%rsp)        # 8-byte Spill
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	movapd	%xmm2, %xmm0
	jne	.LBB0_54
	jmp	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_10 Depth=3
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movsd	%xmm3, 160(%rsp)        # 8-byte Spill
	movq	%r11, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	.align	16, 0x90
.LBB0_51:                               # %if.else.246.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsd	%xmm0, 184(%rsp)        # 8-byte Spill
	movl	%r8d, %ebp
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %edx
	callq	gx_path_add_point
	movsd	184(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %r10d
	andl	$-2, 92(%rsp)           # 4-byte Folded Spill
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_52
# BB#64:                                # %land.lhs.true.251.i
                                        #   in Loop: Header=BB0_51 Depth=4
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_68
# BB#65:                                # %lor.lhs.false.255.i
                                        #   in Loop: Header=BB0_51 Depth=4
	movw	16(%rax), %cx
	testw	%cx, %cx
	je	.LBB0_68
# BB#66:                                # %lor.lhs.false.261.i
                                        #   in Loop: Header=BB0_51 Depth=4
	ucomisd	.LCPI0_3, %xmm1
	jne	.LBB0_67
	jnp	.LBB0_68
.LBB0_67:                               # %lor.lhs.false.261.i
                                        #   in Loop: Header=BB0_51 Depth=4
	movzwl	%cx, %ecx
	cmpl	$5, %ecx
	jne	.LBB0_52
	.align	16, 0x90
.LBB0_68:                               # %if.then.270.i
                                        #   in Loop: Header=BB0_51 Depth=4
	testl	%r10d, %r10d
	movl	176(%rsp), %ebx         # 4-byte Reload
	js	.LBB0_80
# BB#69:                                # %if.end.274.i
                                        #   in Loop: Header=BB0_51 Depth=4
	incl	%ebx
	movq	168(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %ebx
	movl	$0, %ecx
	cmovel	%ecx, %ebx
	testq	%rax, %rax
	movslq	%ebx, %rcx
	movq	152(%rsp), %rdx         # 8-byte Reload
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	160(%rsp), %xmm2        # 8-byte Folded Reload
	je	.LBB0_72
# BB#70:                                # %lor.lhs.false.287.i
                                        #   in Loop: Header=BB0_51 Depth=4
	movzwl	16(%rax), %eax
	cmpl	$5, %eax
	je	.LBB0_72
# BB#71:                                # %lor.lhs.false.287.i
                                        #   in Loop: Header=BB0_51 Depth=4
	testw	%ax, %ax
	jne	.LBB0_73
.LBB0_72:                               # %on.backedge.i
                                        #   in Loop: Header=BB0_51 Depth=4
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	$1, %r8d
	cmpl	$5, 136(%rsp)           # 4-byte Folded Reload
	movapd	%xmm2, %xmm0
	movl	100(%rsp), %esi         # 4-byte Reload
	movl	96(%rsp), %ebx          # 4-byte Reload
	je	.LBB0_51
.LBB0_54:                               # %if.then.182.i
                                        #   in Loop: Header=BB0_10 Depth=3
	testl	%r13d, %r13d
	js	.LBB0_55
# BB#56:                                # %if.then.185.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movsd	%xmm2, 184(%rsp)        # 8-byte Spill
	jle	.LBB0_59
# BB#57:                                # %if.then.185.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movzwl	16(%r15), %eax
	movzwl	%ax, %eax
	cmpl	$2, %eax
	jne	.LBB0_59
# BB#58:                                # %if.then.193.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movzwl	18(%r15), %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	andl	%ebx, %eax
	movl	132(%rsp), %esi         # 4-byte Reload
	orl	68(%rsp), %esi          # 4-byte Folded Reload
	orl	%eax, %esi
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movl	%r8d, %ebp
	callq	gx_path_close_subpath_notes
	movl	%ebp, %r8d
	movl	%eax, %r10d
	orl	$1, %ebx
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	jmp	.LBB0_63
.LBB0_55:                               #   in Loop: Header=BB0_10 Depth=3
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	176(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_77
.LBB0_59:                               # %if.else.200.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%r8d, 88(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%ebx, %eax
	movq	200(%rsp), %rdx         # 8-byte Reload
	subl	%edx, %eax
	movl	%ebx, %edx
	movl	%eax, %edi
	negl	%edi
	cmovll	%eax, %edi
	addl	%ecx, %edi
	cmpl	$127, %edi
	setg	%al
	movzwl	18(%r15), %ecx
	movl	92(%rsp), %ebp          # 4-byte Reload
	andl	%ebp, %ecx
	movl	132(%rsp), %r9d         # 4-byte Reload
	orl	68(%rsp), %r9d          # 4-byte Folded Reload
	orl	%ecx, %r9d
	movl	20(%rsp), %ecx          # 4-byte Reload
	orb	%al, %cl
	je	.LBB0_60
# BB#61:                                # %if.else.235.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movl	%r9d, %ecx
	callq	gx_path_add_line_notes
	jmp	.LBB0_62
.LBB0_52:                               #   in Loop: Header=BB0_10 Depth=3
	movl	%ebp, %r8d
	movl	176(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_76
.LBB0_60:                               # %if.then.228.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movl	%r14d, %ecx
	movl	%r12d, %r8d
	callq	gx_path_add_dash_notes
.LBB0_62:                               # %if.end.334.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	%eax, %r10d
	orl	$1, %ebp
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	movq	%r13, 104(%rsp)         # 8-byte Spill
	movl	88(%rsp), %r8d          # 4-byte Reload
.LBB0_63:                               # %if.end.334.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	176(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_77
.LBB0_73:                               # %if.end.300.i
                                        #   in Loop: Header=BB0_10 Depth=3
	ucomisd	.LCPI0_3, %xmm2
	movl	100(%rsp), %esi         # 4-byte Reload
	movl	96(%rsp), %ecx          # 4-byte Reload
	jne	.LBB0_75
	jp	.LBB0_75
# BB#74:                                # %if.then.303.i
                                        #   in Loop: Header=BB0_10 Depth=3
	movzwl	18(%r15), %eax
	andl	92(%rsp), %eax          # 4-byte Folded Reload
	movl	132(%rsp), %r9d         # 4-byte Reload
	orl	68(%rsp), %r9d          # 4-byte Folded Reload
	orl	%eax, %r9d
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%ecx, %edx
	movl	%r14d, %ecx
	movl	%r12d, %r8d
	callq	gx_path_add_dash_notes
	movl	%eax, %r10d
	incl	%ebx
	xorl	%r8d, %r8d
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	cmovel	%r8d, %ebx
	movslq	%ebx, %rax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	160(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.319.i
                                        #   in Loop: Header=BB0_10 Depth=3
	decl	%ebx
	movq	168(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	testl	%ebx, %ebx
	cmovel	%eax, %ebx
	movl	%ebp, %r8d
.LBB0_76:                               # %if.end.329.i
                                        #   in Loop: Header=BB0_10 Depth=3
	testl	%r13d, %r13d
	movl	$0, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm2
	jg	.LBB0_80
.LBB0_77:                               # %if.end.334.i
                                        #   in Loop: Header=BB0_10 Depth=3
	testl	%r10d, %r10d
	jns	.LBB0_78
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_79:                               # %while.end.352.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	setle	%al
	movl	$1, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ecx          # 4-byte Reload
	testb	%al, %cl
	movl	%r10d, %eax
	movl	$0, %r10d
	jne	.LBB0_9
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %r10d
.LBB0_80:                               # %subpath_expand_dashes.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	testl	%r10d, %r10d
	js	.LBB0_82
# BB#81:                                # %subpath_expand_dashes.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	movq	144(%rsp), %r15         # 8-byte Reload
	jne	.LBB0_3
.LBB0_82:                               # %cleanup
	movl	%r10d, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_83:                               # %if.then
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_copy_reducing   # TAILCALL
.Lfunc_end0:
	.size	gx_path_add_dash_expansion, .Lfunc_end0-gx_path_add_dash_expansion
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
