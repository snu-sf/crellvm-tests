	.text
	.file	"gdevescp.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1127481344              # float 180
.LCPI0_1:
	.long	1135869952              # float 360
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_2:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	escp2_print_page,@function
escp2_print_page:                       # @escp2_print_page
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	leal	(,%rax,8), %ecx
	movq	%rax, %r12
	leal	(%rcx,%rcx,2), %ebx
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_2
	jp	.LBB0_2
# BB#1:                                 # %land.lhs.true
	movss	888(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm1
	jne	.LBB0_2
	jnp	.LBB0_5
.LBB0_2:                                # %lor.lhs.false
	movl	$-15, %ebx
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_76
	jp	.LBB0_76
# BB#3:                                 # %land.lhs.true.17
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_4
	jnp	.LBB0_5
.LBB0_4:                                # %land.lhs.true.17
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_76
	jp	.LBB0_76
.LBB0_5:                                # %if.end
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB0_7
# BB#6:                                 # %if.end
	testq	%r13, %r13
	je	.LBB0_7
# BB#11:                                # %if.end.45
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%r14, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rcx
	callq	fwrite
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_13
	jp	.LBB0_13
# BB#12:                                # %if.then.50
	movl	$.L.str.6, %edi
	jmp	.LBB0_14
.LBB0_7:                                # %if.then.28
	movq	104(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_9
# BB#8:                                 # %if.then.29
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB0_9:                                # %if.end.35
	movl	$-25, %ebx
	testq	%r13, %r13
	je	.LBB0_76
# BB#10:                                # %if.then.37
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_76
.LBB0_13:                               # %if.else
	movl	$.L.str.7, %edi
.LBB0_14:                               # %if.then.55
	movl	$1, %esi
	movl	$9, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	cvtsi2sdl	836(%r15), %xmm2
	movss	912(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movss	920(%r15), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %r14d
	cmpl	%eax, %r14d
	jge	.LBB0_75
# BB#15:                                # %for.body.lr.ph
	movss	908(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movss	884(%r15), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	sarl	$3, %eax
	movl	832(%r15), %ecx
	movss	916(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	subl	%edx, %ecx
	sarl	$3, %ecx
	subl	%eax, %ecx
	cltq
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	andl	$31, %ecx
	shll	$3, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	sarl	$5, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	leal	-1(%r12), %eax
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_36 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_44 Depth 5
                                        #         Child Loop BB0_54 Depth 4
                                        #       Child Loop BB0_63 Depth 3
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %r12
	leaq	160(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	160(%rsp), %rdi
	cmpb	$0, (%rdi)
	movl	$0, %ebx
	je	.LBB0_18
# BB#17:                                #   in Loop: Header=BB0_16 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_18:                               # %land.lhs.true.104
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rdi), %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	leal	(%r14,%rbx), %ecx
	cmpl	92(%rsp), %ecx          # 4-byte Folded Reload
	jge	.LBB0_23
# BB#19:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB0_18 Depth=2
	testl	%eax, %eax
	jne	.LBB0_23
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB0_18 Depth=2
	leal	1(%rbx), %ebp
	leal	1(%r14,%rbx), %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	leaq	160(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	160(%rsp), %rdi
	cmpb	$0, (%rdi)
	movl	%ebp, %ebx
	je	.LBB0_18
# BB#21:                                # %while.end.loopexitsplit
                                        #   in Loop: Header=BB0_16 Depth=1
	addl	%ebp, %r14d
	movl	%ebp, %ebx
.LBB0_22:                               # %while.end
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%r14d, %ecx
.LBB0_23:                               # %while.end
                                        #   in Loop: Header=BB0_16 Depth=1
	cmpl	92(%rsp), %ecx          # 4-byte Folded Reload
	je	.LBB0_74
# BB#24:                                # %if.end.116
                                        #   in Loop: Header=BB0_16 Depth=1
	testl	%ebx, %ebx
	je	.LBB0_26
# BB#25:                                # %if.then.118
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$.L.str.8, %edi
	movl	%ecx, %r12d
	movl	$1, %esi
	movl	$5, %edx
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rcx
	callq	fwrite
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	sarl	$8, %ebx
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	%r12d, %ecx
.LBB0_26:                               # %if.end.123
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%ecx, %esi
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movl	44(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpl	$23, %eax
	movl	$0, %ebp
	movq	%r13, %r9
	jg	.LBB0_28
# BB#27:                                # %if.then.127
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	imull	%ecx, %eax
	cltq
	leaq	(%r15,%rax), %rdi
	movl	44(%rsp), %ecx          # 4-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
	xorl	%ebp, %ebp
	movq	32(%rsp), %r9           # 8-byte Reload
	.align	16, 0x90
.LBB0_28:                               # %for.body.138
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
                                        #         Child Loop BB0_36 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_44 Depth 5
                                        #         Child Loop BB0_54 Depth 4
                                        #       Child Loop BB0_63 Depth 3
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rbp, %rax
	imulq	112(%rsp), %rax         # 8-byte Folded Reload
	leaq	(%rax,%r15), %r13
	addq	128(%rsp), %r13         # 8-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %r8
	movq	%r8, 136(%rsp)          # 8-byte Spill
	cmpl	$2, %eax
	jl	.LBB0_29
# BB#30:                                # %for.body.150.lr.ph.lr.ph
                                        #   in Loop: Header=BB0_28 Depth=2
	leaq	1(%r13), %r12
	movq	%r13, %rsi
	.align	16, 0x90
.LBB0_31:                               # %for.body.150
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_36 Depth 4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_44 Depth 5
                                        #         Child Loop BB0_54 Depth 4
	movzbl	(%r13), %eax
	movzbl	(%r12), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_33
# BB#32:                                # %if.then.155
                                        #   in Loop: Header=BB0_31 Depth=3
	addq	$2, %r13
	addq	$2, %r12
	cmpq	%r8, %r12
	jb	.LBB0_31
	jmp	.LBB0_59
.LBB0_33:                               # %if.else.158
                                        #   in Loop: Header=BB0_31 Depth=3
	cmpq	%rsi, %r13
	jbe	.LBB0_36
# BB#34:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB0_31 Depth=3
	movzbl	-1(%r13), %ecx
	movzbl	%al, %eax
	cmpl	%ecx, %eax
	jne	.LBB0_36
# BB#35:                                #   in Loop: Header=BB0_31 Depth=3
	decq	%r13
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_47:                               # %if.end.207
                                        #   in Loop: Header=BB0_36 Depth=4
	movb	$-127, (%r9)
	movb	(%r13), %al
	movb	%al, 1(%r9)
	addq	$2, %r9
	subq	$-128, %r13
	movq	%r13, %rsi
	movq	%r15, %r12
.LBB0_36:                               # %for.cond.170.outer
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_37 Depth 5
                                        #           Child Loop BB0_44 Depth 5
	movb	(%r13), %al
	incq	%r12
	.align	16, 0x90
.LBB0_37:                               # %for.cond.170
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        #         Parent Loop BB0_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r12, %r15
	movq	%r15, %r14
	subq	%r13, %r14
	cmpq	%r8, %r15
	jae	.LBB0_48
# BB#38:                                # %for.cond.170
                                        #   in Loop: Header=BB0_37 Depth=5
	movzbl	%al, %ecx
	movzbl	(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB0_48
# BB#39:                                # %for.body.179
                                        #   in Loop: Header=BB0_37 Depth=5
	leaq	1(%r15), %r12
	cmpq	$128, %r14
	jl	.LBB0_37
# BB#40:                                # %if.then.182
                                        #   in Loop: Header=BB0_36 Depth=4
	cmpq	%rsi, %r13
	jbe	.LBB0_47
# BB#41:                                # %if.then.185
                                        #   in Loop: Header=BB0_36 Depth=4
	movl	%r13d, %r14d
	subl	%esi, %r14d
	cmpl	$129, %r14d
	jl	.LBB0_42
# BB#43:                                # %while.body.193.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=4
	leal	-129(%r14), %ecx
	shrl	$7, %ecx
	movl	%ecx, %eax
	shll	$7, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	imulq	$129, %rcx, %rax
	leaq	129(%r9,%rax), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	shlq	$7, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%r14d, %ebp
	.align	16, 0x90
.LBB0_44:                               # %while.body.193
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        #         Parent Loop BB0_36 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	$127, (%r9)
	leaq	1(%r9), %rdi
	movl	$128, %edx
	movq	%r9, %r12
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r12, %r9
	subq	$-128, %rbx
	addl	$-128, %ebp
	addq	$129, %r9
	cmpl	$128, %ebp
	jg	.LBB0_44
# BB#45:                                # %while.cond.190.while.end.199_crit_edge
                                        #   in Loop: Header=BB0_36 Depth=4
	addl	$-128, %r14d
	subl	72(%rsp), %r14d         # 4-byte Folded Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	128(%rsi,%rax), %rsi
	movq	152(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_46
.LBB0_42:                               #   in Loop: Header=BB0_36 Depth=4
	movq	%r9, %rbp
.LBB0_46:                               # %while.end.199
                                        #   in Loop: Header=BB0_36 Depth=4
	leal	255(%r14), %eax
	leaq	1(%rbp), %rdi
	movb	%al, (%rbp)
	movslq	%r14d, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	leaq	1(%rbp,%rbx), %r9
	movq	136(%rsp), %r8          # 8-byte Reload
	jmp	.LBB0_47
.LBB0_48:                               # %for.end
                                        #   in Loop: Header=BB0_31 Depth=3
	leaq	-1(%r15), %r12
	cmpq	$3, %r14
	jl	.LBB0_49
# BB#50:                                # %if.then.218
                                        #   in Loop: Header=BB0_31 Depth=3
	cmpq	%rsi, %r13
	jbe	.LBB0_57
# BB#51:                                # %if.then.221
                                        #   in Loop: Header=BB0_31 Depth=3
	movl	%r13d, %ecx
	subl	%esi, %ecx
	cmpl	$129, %ecx
	jl	.LBB0_52
# BB#53:                                # %while.body.229.lr.ph
                                        #   in Loop: Header=BB0_31 Depth=3
	leal	-129(%rcx), %edx
	shrl	$7, %edx
	movl	%edx, %eax
	shll	$7, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	imulq	$129, %rdx, %rax
	leaq	129(%r9,%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	shlq	$7, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%ecx, %ebp
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_54:                               # %while.body.229
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        #       Parent Loop BB0_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movb	$127, (%r9)
	leaq	1(%r9), %rdi
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	152(%rsp), %r9          # 8-byte Reload
	subq	$-128, %rbx
	addl	$-128, %ebp
	addq	$129, %r9
	cmpl	$128, %ebp
	jg	.LBB0_54
# BB#55:                                # %while.cond.226.while.end.235_crit_edge
                                        #   in Loop: Header=BB0_31 Depth=3
	movq	80(%rsp), %rcx          # 8-byte Reload
	addl	$-128, %ecx
	subl	52(%rsp), %ecx          # 4-byte Folded Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	128(%rsi,%rax), %rsi
	movq	72(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_56
.LBB0_49:                               #   in Loop: Header=BB0_31 Depth=3
	movq	%r15, %r13
	jmp	.LBB0_58
.LBB0_52:                               #   in Loop: Header=BB0_31 Depth=3
	movq	%r9, %rbp
.LBB0_56:                               # %while.end.235
                                        #   in Loop: Header=BB0_31 Depth=3
	leal	255(%rcx), %eax
	leaq	1(%rbp), %rdi
	movb	%al, (%rbp)
	movslq	%ecx, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	leaq	1(%rbp,%rbx), %r9
	movq	136(%rsp), %r8          # 8-byte Reload
.LBB0_57:                               # %if.end.243
                                        #   in Loop: Header=BB0_31 Depth=3
	movb	$1, %al
	subb	%r14b, %al
	movb	%al, (%r9)
	movb	(%r13), %al
	movb	%al, 1(%r9)
	addq	$2, %r9
	movslq	%r14d, %rsi
	addq	%r13, %rsi
	movq	%rsi, %r13
.LBB0_58:                               # %if.end.255
                                        #   in Loop: Header=BB0_31 Depth=3
	addq	$2, %r12
	cmpq	%r8, %r15
	cmovaeq	%r15, %r12
	cmpq	%r8, %r12
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jb	.LBB0_31
	jmp	.LBB0_59
	.align	16, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_28 Depth=2
	movq	%r13, %rsi
.LBB0_59:                               # %for.end.262
                                        #   in Loop: Header=BB0_28 Depth=2
	cmpq	%r8, %rsi
	jae	.LBB0_66
# BB#60:                                # %if.then.265
                                        #   in Loop: Header=BB0_28 Depth=2
	subl	%esi, %r8d
	cmpl	$129, %r8d
	jl	.LBB0_61
# BB#62:                                # %while.body.273.lr.ph
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	leal	-129(%r8), %r15d
	shrl	$7, %r15d
	movl	%r15d, %r12d
	shll	$7, %r12d
	imulq	$129, %r15, %rax
	leaq	129(%r9,%rax), %r14
	shlq	$7, %r15
	movq	%rsi, %rbx
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%r8d, %ebp
	movq	%r8, 136(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_63:                               # %while.body.273
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$127, (%r9)
	leaq	1(%r9), %rdi
	movl	$128, %edx
	movq	%r9, %r13
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r13, %r9
	subq	$-128, %rbx
	addl	$-128, %ebp
	addq	$129, %r9
	cmpl	$128, %ebp
	jg	.LBB0_63
# BB#64:                                # %while.cond.270.while.end.279_crit_edge
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	136(%rsp), %r8          # 8-byte Reload
	addl	$-128, %r8d
	subl	%r12d, %r8d
	movq	96(%rsp), %rsi          # 8-byte Reload
	leaq	128(%rsi,%r15), %rsi
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_61:                               #   in Loop: Header=BB0_28 Depth=2
	movq	%r9, %r14
.LBB0_65:                               # %while.end.279
                                        #   in Loop: Header=BB0_28 Depth=2
	leal	255(%r8), %eax
	leaq	1(%r14), %rdi
	movb	%al, (%r14)
	movslq	%r8d, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	leaq	1(%r14,%rbx), %r9
.LBB0_66:                               # %for.inc.288
                                        #   in Loop: Header=BB0_28 Depth=2
	incq	%rbp
	cmpq	$24, %rbp
	jne	.LBB0_28
# BB#67:                                # %for.end.290
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%r9, %rbp
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movq	16(%rsp), %r15          # 8-byte Reload
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_69
	jp	.LBB0_69
# BB#68:                                # %if.then.296
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$10, %edi
	jmp	.LBB0_70
	.align	16, 0x90
.LBB0_69:                               # %if.else.298
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$20, %edi
.LBB0_70:                               # %if.end.300
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rbx, %rsi
	callq	fputc
	movq	32(%rsp), %r13          # 8-byte Reload
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_72
	jp	.LBB0_72
# BB#71:                                # %if.then.305
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$10, %edi
	jmp	.LBB0_73
	.align	16, 0x90
.LBB0_72:                               # %if.else.307
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$20, %edi
.LBB0_73:                               # %cleanup.thread
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rbx, %rsi
	callq	fputc
	movl	$24, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	12(%rsp), %edi          # 4-byte Reload
	movq	%rbx, %rsi
	callq	fputc
	movl	8(%rsp), %edi           # 4-byte Reload
	movq	%rbx, %rsi
	callq	fputc
	movq	%rbp, %rdx
	subq	%r13, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.10, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	48(%rsp), %eax          # 4-byte Reload
	addl	$24, %eax
	cmpl	92(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, %r14d
	jl	.LBB0_16
	jmp	.LBB0_75
.LBB0_74:                               # %cleanup
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB0_75:                               # %for.end.327
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	callq	fputs
	movq	%rbx, %rdi
	callq	fflush
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebx, %ebx
.LBB0_76:                               # %cleanup.342
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	escp2_print_page, .Lfunc_end0-escp2_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"st800"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_st800_device,@object # @gs_st800_device
	.section	.rodata,"a",@progbits
	.globl	gs_st800_device
	.align	8
gs_st800_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
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
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3258659635              # float -4.680000e+01
	.long	3270823117              # float -1.224000e+02
	.long	1091945103              # float 9.360000e+00
	.long	1109477294              # float 4.032000e+01
	.long	1104863560              # float 2.736000e+01
	.long	1103353610              # float 2.448000e+01
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
	.zero	584
	.zero	11240
	.quad	escp2_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_st800_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ap3250"
	.size	.L.str.2, 7

	.type	gs_ap3250_device,@object # @gs_ap3250_device
	.section	.rodata,"a",@progbits
	.globl	gs_ap3250_device
	.align	8
gs_ap3250_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
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
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3263273370              # float -6.480000e+01
	.long	3270823117              # float -1.224000e+02
	.long	1095719977              # float 1.296000e+01
	.long	1108533576              # float 3.672000e+01
	.long	1101088686              # float 2.016000e+01
	.long	1103353610              # float 2.448000e+01
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
	.zero	584
	.zero	11240
	.quad	escp2_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_ap3250_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"escp2_print_page(buf1)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"escp2_print_page(buf2)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata,"a",@progbits
.L.str.5:
	.asciz	"\033@\033(G\001\000\001"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033(U\001\000\n\033+\030"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033(U\001\000\024\033+0"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033(v\002\000"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\033.\001"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\r\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\f\033@"
	.size	.L.str.11, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
