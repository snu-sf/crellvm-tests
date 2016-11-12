	.text
	.file	"gxhintn1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4618441417868443648     # double 6
.LCPI0_1:
	.quad	4613937818241073152     # double 3
.LCPI0_2:
	.quad	4621819117588971520     # double 10
.LCPI0_3:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI0_4:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI0_5:
	.quad	-4541763675970600960    # double -1.0E+5
.LCPI0_7:
	.quad	4591870180066957722     # double 0.10000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_6:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	t1_hinter__fix_contour_signs
	.align	16, 0x90
	.type	t1_hinter__fix_contour_signs,@function
t1_hinter__fix_contour_signs:           # @t1_hinter__fix_contour_signs
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
	subq	$664, %rsp              # imm = 0x298
.Ltmp6:
	.cfi_def_cfa_offset 720
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
	movq	%rdi, %r13
	movq	%r13, 240(%rsp)         # 8-byte Spill
	movl	9656(%r13), %eax
	leal	-1(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB0_8
# BB#1:                                 # %for.body.lr.ph
	movl	$1, %esi
	jmp	.LBB0_2
.LBB0_51:                               # %for.cond.285.preheader.i.for.body.302.lr.ph.i_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r12, 208(%rsp)         # 8-byte Spill
.LBB0_56:                               # %for.body.302.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
.LBB0_57:                               # %for.body.310.lr.ph.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
                                        #         Child Loop BB0_61 Depth 4
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rax
	leaq	528(%rsp,%rax), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movb	$0, (%rcx,%rax)
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_58:                               # %for.body.310.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_61 Depth 4
	cmpl	%edx, %ecx
	je	.LBB0_76
# BB#59:                                # %if.then.313.i
                                        #   in Loop: Header=BB0_58 Depth=3
	movq	%rcx, %rsi
	movzbl	331(%rsp,%rsi), %eax
	movq	7696(%r13), %rcx
	movq	%rdx, %rbp
	movzbl	331(%rsp,%rbp), %edx
	movl	(%rcx,%rdx,4), %edi
	movl	4(%rcx,%rdx,4), %edx
	decl	%edx
	movl	%edx, 296(%rsp)         # 4-byte Spill
	xorpd	%xmm3, %xmm3
	cmpl	%edx, %edi
	jge	.LBB0_74
# BB#60:                                #   in Loop: Header=BB0_58 Depth=3
	movq	%rbp, 224(%rsp)         # 8-byte Spill
	movslq	(%rcx,%rax,4), %rcx
	movq	5472(%r13), %rax
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %esi
	movl	%esi, 260(%rsp)         # 4-byte Spill
	movl	4(%rax,%rcx), %r8d
	movl	%r8d, 256(%rsp)         # 4-byte Spill
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_143:                              # %if.end.84.i.for.body.i.221_crit_edge.i
                                        #   in Loop: Header=BB0_61 Depth=4
	movq	5472(%r13), %rax
	movl	%r12d, %edi
.LBB0_61:                               # %for.body.i.221.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        #       Parent Loop BB0_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movapd	%xmm3, 304(%rsp)        # 16-byte Spill
	leal	1(%rdi), %r12d
	movslq	%r12d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	movl	(%rax,%rdx), %r15d
	movl	4(%rax,%rdx), %ebp
	subl	%esi, %r15d
	subl	%r8d, %ebp
	movl	(%rax,%rcx), %ebx
	movl	4(%rax,%rcx), %r14d
	subl	%esi, %ebx
	subl	%r8d, %r14d
	cmpl	$0, 24(%rax,%rcx)
	je	.LBB0_70
# BB#62:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	cvtsi2sdl	%r15d, %xmm2
	cvtsi2sdl	%r14d, %xmm3
	movapd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsi2sdl	%ebp, %xmm1
	cvtsi2sdl	%ebx, %xmm4
	movapd	%xmm1, %xmm5
	mulsd	%xmm4, %xmm5
	subsd	%xmm5, %xmm0
	mulsd	%xmm4, %xmm2
	mulsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm13, %xmm1
	jne	.LBB0_69
	jp	.LBB0_69
# BB#63:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	ucomisd	%xmm13, %xmm0
	movapd	304(%rsp), %xmm3        # 16-byte Reload
	jne	.LBB0_66
	jnp	.LBB0_6
	jmp	.LBB0_66
.LBB0_66:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	ucomisd	%xmm0, %xmm13
	jbe	.LBB0_67
# BB#68:                                # %if.then.17.i.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_72
	.align	16, 0x90
.LBB0_70:                               # %if.else.i.224.i
                                        #   in Loop: Header=BB0_61 Depth=4
	leal	2(%rdi), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %edx
	movl	4(%rax,%rcx), %ecx
	subl	%esi, %edx
	movl	%edx, 280(%rsp)         # 4-byte Spill
	subl	%r8d, %ecx
	movl	%ecx, 264(%rsp)         # 4-byte Spill
	movl	%ecx, %r9d
	addl	$3, %edi
	movq	%rdi, 272(%rsp)         # 8-byte Spill
	movslq	%edi, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %r12d
	movl	4(%rax,%rcx), %r13d
	subl	%esi, %r12d
	subl	%r8d, %r13d
	movl	%ebx, 636(%rsp)
	movl	%r14d, 640(%rsp)
	movl	%edx, 644(%rsp)
	movl	%r9d, 648(%rsp)
	movl	%r12d, 628(%rsp)
	movl	%r13d, 632(%rsp)
	movl	$256, %ecx              # imm = 0x100
	movl	%r15d, %edi
	movl	%ebp, %esi
	leaq	608(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%r13d, 16(%rsp)
	movq	240(%rsp), %r13         # 8-byte Reload
	movl	%r12d, 8(%rsp)
	movl	264(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movl	%eax, %edi
	movl	%r15d, %esi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	movl	280(%rsp), %r9d         # 4-byte Reload
	callq	curve_winding_angle_rec
	movq	272(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r12d
	jmp	.LBB0_71
	.align	16, 0x90
.LBB0_69:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	callq	atan2
.LBB0_71:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	ucomisd	.LCPI0_5(%rip), %xmm0
	xorps	%xmm13, %xmm13
	movapd	304(%rsp), %xmm3        # 16-byte Reload
	movl	260(%rsp), %esi         # 4-byte Reload
	movl	256(%rsp), %r8d         # 4-byte Reload
	jne	.LBB0_72
	jnp	.LBB0_6
.LBB0_72:                               # %if.end.84.i.i
                                        #   in Loop: Header=BB0_61 Depth=4
	addsd	%xmm0, %xmm3
	cmpl	296(%rsp), %r12d        # 4-byte Folded Reload
	jl	.LBB0_143
	jmp	.LBB0_73
.LBB0_67:                               #   in Loop: Header=BB0_61 Depth=4
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_72
.LBB0_73:                               #   in Loop: Header=BB0_58 Depth=3
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	224(%rsp), %rbp         # 8-byte Reload
.LBB0_74:                               # %if.end.335.i
                                        #   in Loop: Header=BB0_58 Depth=3
	movapd	%xmm3, %xmm0
	xorpd	.LCPI0_6(%rip), %xmm0
	movapd	%xmm3, %xmm1
	cmpltsd	%xmm13, %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	232(%rsp), %rax         # 8-byte Reload
	setbe	(%rbp,%rax)
	cmpq	%rbp, %rsi
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	jle	.LBB0_76
# BB#75:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_58 Depth=3
	leaq	(%rdx,%rdx,4), %rax
	leaq	528(%rsp,%rax), %rax
	cmpb	$0, (%rcx,%rax)
	jne	.LBB0_6
.LBB0_76:                               # %for.inc.353.i
                                        #   in Loop: Header=BB0_58 Depth=3
	incq	%rdx
	cmpq	248(%rsp), %rdx         # 8-byte Folded Reload
	jl	.LBB0_58
# BB#77:                                # %for.inc.356.i
                                        #   in Loop: Header=BB0_57 Depth=2
	incq	%rcx
	xorl	%esi, %esi
	cmpq	248(%rsp), %rcx         # 8-byte Folded Reload
	jl	.LBB0_57
# BB#78:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
	movq	208(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB0_79
.LBB0_92:                               # %for.inc.417.i
                                        #   in Loop: Header=BB0_79 Depth=2
	incl	%r9d
	movq	%r14, %rbp
.LBB0_79:                               # %for.cond.359.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #         Child Loop BB0_83 Depth 4
	cmpl	%ebp, %r9d
	jge	.LBB0_93
# BB#80:                                # %for.body.366.lr.ph.i
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	%rbp, %r14
	movslq	%r9d, %rax
	leaq	(%rax,%rax,4), %rcx
	leaq	528(%rsp,%rcx), %r10
	leaq	528(%rsp,%rax), %r8
	leaq	528(%rsp), %r11
	xorl	%ebp, %ebp
.LBB0_81:                               # %for.body.366.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_83 Depth 4
	cmpl	%ebp, %r9d
	je	.LBB0_91
# BB#82:                                # %for.body.373.lr.ph.i
                                        #   in Loop: Header=BB0_81 Depth=3
	leaq	(%r10,%rbp), %rbx
	movq	%r11, %rdi
	movq	%r8, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_83:                               # %for.body.373.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        #       Parent Loop BB0_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%edx, %ebp
	je	.LBB0_90
# BB#84:                                # %land.lhs.true.376.i
                                        #   in Loop: Header=BB0_83 Depth=4
	cmpb	$0, (%rbx)
	je	.LBB0_90
# BB#85:                                # %land.lhs.true.383.i
                                        #   in Loop: Header=BB0_83 Depth=4
	cmpb	$0, (%rdi)
	je	.LBB0_90
# BB#86:                                # %if.then.390.i
                                        #   in Loop: Header=BB0_83 Depth=4
	cmpb	$0, (%rcx)
	jne	.LBB0_6
# BB#87:                                # %if.end.397.i
                                        #   in Loop: Header=BB0_83 Depth=4
	movl	$1, %eax
	cmpb	$0, (%r10,%rdx)
	je	.LBB0_89
# BB#88:                                # %select.mid
                                        #   in Loop: Header=BB0_83 Depth=4
	movl	%esi, %eax
.LBB0_89:                               # %select.end
                                        #   in Loop: Header=BB0_83 Depth=4
	movb	$1, (%r10,%rdx)
	movl	%eax, %esi
	.align	16, 0x90
.LBB0_90:                               # %for.inc.410.i
                                        #   in Loop: Header=BB0_83 Depth=4
	incq	%rdx
	addq	$5, %rcx
	incq	%rdi
	cmpq	248(%rsp), %rdx         # 8-byte Folded Reload
	jl	.LBB0_83
.LBB0_91:                               # %for.inc.414.i
                                        #   in Loop: Header=BB0_81 Depth=3
	incq	%rbp
	addq	$5, %r11
	cmpq	248(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB0_81
	jmp	.LBB0_92
.LBB0_93:                               # %do.cond.i
                                        #   in Loop: Header=BB0_79 Depth=2
	testl	%esi, %esi
	movl	$0, %esi
	movl	$0, %r9d
	jne	.LBB0_79
# BB#94:                                # %for.cond.427.preheader.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$20, %edx
	leaq	496(%rsp), %rdi
	callq	memset
	movl	%ebp, %eax
	andl	$1, %eax
	leaq	529(%rsp), %rdx
	xorl	%ecx, %ecx
.LBB0_95:                               # %for.body.430.lr.ph.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_102 Depth 3
	testl	%eax, %eax
	jne	.LBB0_97
# BB#96:                                #   in Loop: Header=BB0_95 Depth=2
	xorl	%edi, %edi
	jmp	.LBB0_100
.LBB0_97:                               # %for.body.430.i.prol
                                        #   in Loop: Header=BB0_95 Depth=2
	leaq	(%rbx,%rbx,4), %rsi
	cmpb	$0, 528(%rsp,%rsi)
	je	.LBB0_99
# BB#98:                                # %if.then.436.i.prol
                                        #   in Loop: Header=BB0_95 Depth=2
	incl	496(%rsp,%rbx,4)
	incl	%ecx
.LBB0_99:                               # %for.body.430.lr.ph.i.split
                                        #   in Loop: Header=BB0_95 Depth=2
	movl	$1, %edi
.LBB0_100:                              # %for.body.430.lr.ph.i.split
                                        #   in Loop: Header=BB0_95 Depth=2
	cmpl	$1, %ebp
	je	.LBB0_107
# BB#101:                               # %for.body.430.lr.ph.i.split.split
                                        #   in Loop: Header=BB0_95 Depth=2
	movl	%ebp, %esi
	subl	%edi, %esi
	leaq	(%rdi,%rdx), %rdi
.LBB0_102:                              # %for.body.430.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, -1(%rdi)
	je	.LBB0_104
# BB#103:                               # %if.then.436.i
                                        #   in Loop: Header=BB0_102 Depth=3
	incl	496(%rsp,%rbx,4)
	incl	%ecx
.LBB0_104:                              # %for.inc.442.i
                                        #   in Loop: Header=BB0_102 Depth=3
	cmpb	$0, (%rdi)
	je	.LBB0_106
# BB#105:                               # %if.then.436.i.1
                                        #   in Loop: Header=BB0_102 Depth=3
	incl	496(%rsp,%rbx,4)
	incl	%ecx
.LBB0_106:                              # %for.inc.442.i.1
                                        #   in Loop: Header=BB0_102 Depth=3
	addq	$2, %rdi
	addl	$-2, %esi
	jne	.LBB0_102
.LBB0_107:                              # %for.inc.445.i
                                        #   in Loop: Header=BB0_95 Depth=2
	incq	%rbx
	addq	$5, %rdx
	cmpl	%ebp, %ebx
	jne	.LBB0_95
# BB#108:                               # %for.end.447.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	movl	$0, %r12d
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	je	.LBB0_6
.LBB0_109:                              # %for.body.459.lr.ph.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_113 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_137 Depth 5
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm12
	movapd	%xmm1, %xmm11
	movapd	%xmm0, %xmm10
	xorl	%esi, %esi
	movq	%r12, %rbp
.LBB0_110:                              # %for.body.459.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_113 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_137 Depth 5
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	leaq	(%rbp,%rbp,4), %rax
	leaq	528(%rsp,%rax), %rax
	cmpb	$0, (%rsi,%rax)
	je	.LBB0_121
# BB#111:                               # %if.then.465.i
                                        #   in Loop: Header=BB0_110 Depth=3
	movzbl	331(%rsp,%rbp), %edx
	movzbl	331(%rsp,%rsi), %eax
	movq	7696(%r13), %rcx
	movl	(%rcx,%rdx,4), %r12d
	movl	4(%rcx,%rdx,4), %edx
	decl	%edx
	movl	%edx, 124(%rsp)         # 4-byte Spill
	cmpl	%edx, %r12d
	jge	.LBB0_121
# BB#112:                               # %for.body.lr.ph.i.194.i
                                        #   in Loop: Header=BB0_110 Depth=3
	movl	(%rcx,%rax,4), %edi
	movl	%edi, 116(%rsp)         # 4-byte Spill
	movl	4(%rcx,%rax,4), %eax
	decl	%eax
	movl	%eax, 304(%rsp)         # 4-byte Spill
.LBB0_113:                              # %for.body.i.195.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_137 Depth 5
	leal	1(%r12), %ebx
	movslq	%ebx, %rcx
	movq	5472(%r13), %rax
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	cmpl	$0, 24(%rax,%rcx)
	je	.LBB0_118
# BB#114:                               # %for.cond.16.preheader.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	cmpl	304(%rsp), %edi         # 4-byte Folded Reload
	jge	.LBB0_120
# BB#115:                               # %for.body.18.lr.ph.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	movl	%ebx, 120(%rsp)         # 4-byte Spill
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movslq	%r12d, %rcx
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	movl	%edi, %ebx
	jmp	.LBB0_116
.LBB0_135:                              # %for.cond.16.backedge.for.body.18_crit_edge.i.i
                                        #   in Loop: Header=BB0_116 Depth=5
	movq	5472(%r13), %rax
	movl	%r14d, %ebx
.LBB0_116:                              # %for.body.18.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        #         Parent Loop BB0_113 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	1(%rbx), %r14d
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	cmpl	$0, 24(%rax,%rbp)
	je	.LBB0_131
# BB#117:                               # %if.then.25.i.i
                                        #   in Loop: Header=BB0_116 Depth=5
	movq	280(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %edi
	movl	4(%rax,%rcx), %esi
	movq	296(%rsp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx), %edx
	movl	4(%rax,%rcx), %ecx
	movslq	%ebx, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$4, %rbx
	movl	(%rax,%rbx), %r8d
	movl	4(%rax,%rbx), %r9d
	movl	(%rax,%rbp), %ebx
	movl	4(%rax,%rbp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	callq	intersect_bar_bar
	testl	%eax, %eax
	movsd	.LCPI0_0(%rip), %xmm10  # xmm10 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	je	.LBB0_133
	jmp	.LBB0_6
.LBB0_131:                              # %if.else.i.i
                                        #   in Loop: Header=BB0_116 Depth=5
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	callq	t1_hinter__intersect_curve_bar
	testl	%eax, %eax
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm10
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	jne	.LBB0_6
# BB#132:                               # %if.end.30.i.i
                                        #   in Loop: Header=BB0_116 Depth=5
	addl	$3, %ebx
	movl	%ebx, %r14d
.LBB0_133:                              # %for.cond.16.backedge.i.i
                                        #   in Loop: Header=BB0_116 Depth=5
	cmpl	304(%rsp), %r14d        # 4-byte Folded Reload
	jl	.LBB0_135
	jmp	.LBB0_134
.LBB0_118:                              # %for.cond.35.preheader.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	cmpl	304(%rsp), %edi         # 4-byte Folded Reload
	jge	.LBB0_119
# BB#136:                               # %for.body.37.lr.ph.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	movslq	%r12d, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	2(%r12), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leal	3(%r12), %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%edi, %ebp
	jmp	.LBB0_137
.LBB0_141:                              # %for.cond.35.backedge.for.body.37_crit_edge.i.i
                                        #   in Loop: Header=BB0_137 Depth=5
	movq	5472(%r13), %rax
	movl	%ebx, %ebp
.LBB0_137:                              # %for.body.37.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        #         Parent Loop BB0_113 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	1(%rbp), %ebx
	movslq	%ebx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	cmpl	$0, 24(%rax,%rcx)
	je	.LBB0_142
# BB#138:                               # %if.then.44.i.i
                                        #   in Loop: Header=BB0_137 Depth=5
	movq	%r13, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movl	%ebp, %edx
	callq	t1_hinter__intersect_curve_bar
	testl	%eax, %eax
	movsd	.LCPI0_0(%rip), %xmm10  # xmm10 = mem[0],zero
	jmp	.LBB0_139
.LBB0_142:                              # %if.else.50.i.i
                                        #   in Loop: Header=BB0_137 Depth=5
	movslq	%ebp, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	movl	(%rax,%rdx), %edi
	movl	%edi, 224(%rsp)         # 4-byte Spill
	movl	4(%rax,%rdx), %edx
	movl	%edx, 280(%rsp)         # 4-byte Spill
	movl	(%rax,%rcx), %r8d
	movl	%r8d, 264(%rsp)         # 4-byte Spill
	movl	4(%rax,%rcx), %r9d
	movl	%r9d, 272(%rsp)         # 4-byte Spill
	leal	2(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %r11d
	movl	%r11d, 260(%rsp)        # 4-byte Spill
	movl	4(%rax,%rcx), %r10d
	movl	%r10d, 216(%rsp)        # 4-byte Spill
	addl	$3, %ebp
	movslq	%ebp, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %esi
	movl	%esi, 204(%rsp)         # 4-byte Spill
	movl	4(%rax,%rcx), %r12d
	movl	%r12d, 200(%rsp)        # 4-byte Spill
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %edx
	movl	%edx, 256(%rsp)         # 4-byte Spill
	movl	4(%rax,%rcx), %ecx
	movl	%ecx, 232(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %r15d
	movl	%r15d, 172(%rsp)        # 4-byte Spill
	movl	4(%rax,%rcx), %ecx
	movl	%ecx, 188(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %r14d
	movl	%r14d, 168(%rsp)        # 4-byte Spill
	movq	%r13, 240(%rsp)         # 8-byte Spill
	movl	4(%rax,%rcx), %ecx
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movq	296(%rsp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx), %r13d
	movl	%r13d, 184(%rsp)        # 4-byte Spill
	movl	4(%rax,%rcx), %ebx
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	movl	%r8d, 636(%rsp)
	movl	%r9d, 640(%rsp)
	movl	%r11d, 644(%rsp)
	movl	%r10d, 648(%rsp)
	movl	%esi, 628(%rsp)
	movl	%r12d, 632(%rsp)
	movl	$256, %ecx              # imm = 0x100
	movl	280(%rsp), %esi         # 4-byte Reload
	leaq	608(%rsp), %r12
	movq	%r12, %rdx
	callq	gx_curve_log2_samples
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	%r13d, 636(%rsp)
	movl	%ebx, 640(%rsp)
	movl	%r15d, 644(%rsp)
	movl	188(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, 648(%rsp)
	movl	%r14d, 628(%rsp)
	movl	180(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, 632(%rsp)
	movl	$256, %ecx              # imm = 0x100
	movl	256(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %edi
	movl	232(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	gx_curve_log2_samples
	movl	%r13d, 88(%rsp)
	movq	240(%rsp), %r13         # 8-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 80(%rsp)
	movl	%r15d, 72(%rsp)
	movl	172(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 64(%rsp)
	movl	176(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 56(%rsp)
	movl	184(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r14d, 32(%rsp)
	movl	200(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 24(%rsp)
	movl	204(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movl	216(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	260(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movl	192(%rsp), %edi         # 4-byte Reload
	movl	%eax, %esi
	movl	264(%rsp), %r8d         # 4-byte Reload
	movl	272(%rsp), %r9d         # 4-byte Reload
	movl	224(%rsp), %edx         # 4-byte Reload
	movl	280(%rsp), %ecx         # 4-byte Reload
	callq	intersect_curve_curve_rec
	testl	%eax, %eax
	movl	%ebp, %ebx
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm10
.LBB0_139:                              # %if.then.44.i.i
                                        #   in Loop: Header=BB0_137 Depth=5
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	jne	.LBB0_6
# BB#140:                               # %for.cond.35.backedge.i.i
                                        #   in Loop: Header=BB0_137 Depth=5
	cmpl	304(%rsp), %ebx         # 4-byte Folded Reload
	jl	.LBB0_141
.LBB0_134:                              #   in Loop: Header=BB0_113 Depth=4
	movapd	%xmm1, %xmm12
	movapd	%xmm0, %xmm11
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	116(%rsp), %edi         # 4-byte Reload
	movl	120(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_120
.LBB0_119:                              # %for.cond.35.preheader.for.end.57_crit_edge.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	addl	$3, %r12d
	movl	%r12d, %ebx
.LBB0_120:                              # %for.cond.backedge.i.i
                                        #   in Loop: Header=BB0_113 Depth=4
	cmpl	%edx, %ebx
	movl	%ebx, %r12d
	jl	.LBB0_113
.LBB0_121:                              # %for.inc.477.i
                                        #   in Loop: Header=BB0_110 Depth=3
	incq	%rsi
	cmpq	248(%rsp), %rsi         # 8-byte Folded Reload
	jl	.LBB0_110
# BB#122:                               # %for.inc.480.i
                                        #   in Loop: Header=BB0_109 Depth=2
	incq	%rbp
	cmpq	248(%rsp), %rbp         # 8-byte Folded Reload
	movq	%rbp, %r12
	movl	$0, %r10d
	movapd	%xmm10, %xmm0
	movapd	%xmm11, %xmm1
	movapd	%xmm12, %xmm2
	xorpd	%xmm3, %xmm3
	jl	.LBB0_109
.LBB0_123:                              # %for.body.486.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_129 Depth 3
	movapd	%xmm2, %xmm12
	movapd	%xmm1, %xmm11
	movapd	%xmm0, %xmm10
	movq	%r13, %rbp
	ucomisd	560(%rsp,%r10,8), %xmm3
	seta	%cl
	movb	496(%rsp,%r10,4), %dl
	andb	$1, %dl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%edx, %ecx
	je	.LBB0_130
# BB#124:                               # %if.then.495.i
                                        #   in Loop: Header=BB0_123 Depth=2
	movzbl	331(%rsp,%r10), %ecx
	movq	7696(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	4(%rdx,%rcx,4), %eax
	leal	(%rax,%rsi), %edx
	movl	%edx, %r11d
	shrl	$31, %r11d
	addl	%edx, %r11d
	sarl	%r11d
	leal	1(%rsi), %edi
	cmpl	%r11d, %edi
	jge	.LBB0_130
# BB#125:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_123 Depth=2
	movslq	%edi, %r9
	leal	1(%r11), %edx
	subl	%esi, %edx
	leal	-2(%r11), %r8d
	testb	$1, %dl
	je	.LBB0_127
# BB#126:                               # %for.body.i.i.prol
                                        #   in Loop: Header=BB0_123 Depth=2
	leal	-1(%rsi,%rax), %edx
	subl	%edi, %edx
	movq	%rbp, %rcx
	movq	5472(%rcx), %rbx
	leaq	(%r9,%r9,2), %rbp
	shlq	$4, %rbp
	movups	(%rbx,%rbp), %xmm0
	movups	16(%rbx,%rbp), %xmm1
	movups	32(%rbx,%rbp), %xmm2
	movaps	%xmm2, 640(%rsp)
	movaps	%xmm1, 624(%rsp)
	movaps	%xmm0, 608(%rsp)
	movslq	%edx, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movups	(%rbx,%rdx), %xmm0
	movups	16(%rbx,%rdx), %xmm1
	movups	32(%rbx,%rdx), %xmm2
	movups	%xmm2, 32(%rbx,%rbp)
	movups	%xmm1, 16(%rbx,%rbp)
	movups	%xmm0, (%rbx,%rbp)
	movq	5472(%rcx), %rdi
	movq	%rcx, %rbp
	movapd	608(%rsp), %xmm0
	movapd	624(%rsp), %xmm1
	movapd	640(%rsp), %xmm2
	movupd	%xmm2, 32(%rdi,%rdx)
	movupd	%xmm1, 16(%rdi,%rdx)
	movupd	%xmm0, (%rdi,%rdx)
	leal	2(%rsi), %edi
	incq	%r9
.LBB0_127:                              # %for.body.lr.ph.i.i.split
                                        #   in Loop: Header=BB0_123 Depth=2
	cmpl	%esi, %r8d
	je	.LBB0_130
# BB#128:                               # %for.body.lr.ph.i.i.split.split
                                        #   in Loop: Header=BB0_123 Depth=2
	leaq	(%r9,%r9,2), %rdx
	shlq	$4, %rdx
	addq	$48, %rdx
	leal	-1(%rsi,%rax), %ebx
	leal	1(%r9), %esi
	movl	%ebx, %eax
	subl	%esi, %eax
	subl	%r9d, %ebx
	subl	%edi, %r11d
.LBB0_129:                              # %for.body.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rcx
	movq	5472(%rcx), %rbp
	movups	-48(%rbp,%rdx), %xmm0
	movups	-32(%rbp,%rdx), %xmm1
	movups	-16(%rbp,%rdx), %xmm2
	movaps	%xmm2, 640(%rsp)
	movaps	%xmm1, 624(%rsp)
	movaps	%xmm0, 608(%rsp)
	movslq	%ebx, %rbx
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movups	(%rbp,%rsi), %xmm0
	movups	16(%rbp,%rsi), %xmm1
	movups	32(%rbp,%rsi), %xmm2
	movups	%xmm2, -16(%rbp,%rdx)
	movups	%xmm1, -32(%rbp,%rdx)
	movups	%xmm0, -48(%rbp,%rdx)
	movq	5472(%rcx), %rbp
	movaps	608(%rsp), %xmm0
	movaps	624(%rsp), %xmm1
	movaps	640(%rsp), %xmm2
	movups	%xmm2, 32(%rbp,%rsi)
	movups	%xmm1, 16(%rbp,%rsi)
	movups	%xmm0, (%rbp,%rsi)
	movq	5472(%rcx), %rsi
	movups	(%rsi,%rdx), %xmm0
	movups	16(%rsi,%rdx), %xmm1
	movups	32(%rsi,%rdx), %xmm2
	movaps	%xmm2, 640(%rsp)
	movaps	%xmm1, 624(%rsp)
	movaps	%xmm0, 608(%rsp)
	cltq
	movq	%rax, %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	movups	(%rsi,%rdi), %xmm0
	movups	16(%rsi,%rdi), %xmm1
	movups	32(%rsi,%rdi), %xmm2
	movups	%xmm2, 32(%rsi,%rdx)
	movups	%xmm1, 16(%rsi,%rdx)
	movups	%xmm0, (%rsi,%rdx)
	movq	5472(%rcx), %rsi
	movq	%rcx, %rbp
	movapd	608(%rsp), %xmm0
	movapd	624(%rsp), %xmm1
	movapd	640(%rsp), %xmm2
	movupd	%xmm2, 32(%rsi,%rdi)
	movupd	%xmm1, 16(%rsi,%rdi)
	movupd	%xmm0, (%rsi,%rdi)
	addq	$96, %rdx
	addl	$-2, %eax
	addl	$-2, %ebx
	addl	$-2, %r11d
	jne	.LBB0_129
.LBB0_130:                              # %for.inc.500.i
                                        #   in Loop: Header=BB0_123 Depth=2
	incq	%r10
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r10d
	movq	%rbp, %r13
	movapd	%xmm10, %xmm0
	movapd	%xmm11, %xmm1
	movapd	%xmm12, %xmm2
	xorpd	%xmm3, %xmm3
	jne	.LBB0_123
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_41 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #         Child Loop BB0_61 Depth 4
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #         Child Loop BB0_83 Depth 4
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_102 Depth 3
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_113 Depth 4
                                        #           Child Loop BB0_116 Depth 5
                                        #           Child Loop BB0_137 Depth 5
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_129 Depth 3
	movq	7744(%r13), %rcx
	movslq	-4(%rcx,%rsi,4), %rdi
	movslq	(%rcx,%rsi,4), %rcx
	leaq	-1(%rcx), %r10
	movl	%r10d, %edx
	subl	%edi, %edx
	cmpl	$4, %edx
	jg	.LBB0_7
# BB#3:                                 # %if.end.10
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	cmpl	%edi, %r10d
	je	.LBB0_6
# BB#4:                                 # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%edi, %ecx
	jle	.LBB0_5
# BB#9:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	7696(%r13), %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movq	5472(%r13), %r11
	movq	%rdi, 280(%rsp)         # 8-byte Spill
	movl	(%rax,%rdi,4), %r15d
	leaq	52(%r11), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_10:                               # %for.body.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
	movl	%r15d, %eax
	movslq	%eax, %r8
	movq	304(%rsp), %rax         # 8-byte Reload
	movl	4(%rax,%r13,4), %r15d
	leal	-1(%r15), %esi
	leaq	(%r8,%r8,2), %rax
	shlq	$4, %rax
	movl	(%r11,%rax), %r14d
	cvtsi2sdl	%r14d, %xmm0
	movq	%r12, %rbx
	shlq	$5, %rbx
	movsd	%xmm0, 352(%rsp,%rbx)
	movsd	%xmm0, 336(%rsp,%rbx)
	movl	4(%r11,%rax), %edi
	cvtsi2sdl	%edi, %xmm1
	movsd	%xmm1, 360(%rsp,%rbx)
	movsd	%xmm1, 344(%rsp,%rbx)
	cmpl	%esi, %r8d
	jge	.LBB0_22
# BB#11:                                # %for.body.26.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	leaq	352(%rsp,%rbx), %rcx
	leaq	336(%rsp,%rbx), %rax
	leaq	360(%rsp,%rbx), %rdx
	leaq	344(%rsp,%rbx), %rbp
	leaq	(,%r8,4), %rbx
	leaq	(%rbx,%rbx,2), %rbx
	movq	296(%rsp), %r9          # 8-byte Reload
	leaq	(%r9,%rbx,4), %rbx
	subl	%r8d, %esi
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm3
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_21:                               # %if.end.92.for.body.26_crit_edge.i
                                        #   in Loop: Header=BB0_12 Depth=3
	movl	-4(%rbx), %r14d
	movl	(%rbx), %edi
	leaq	48(%rbx), %rbx
.LBB0_12:                               # %for.body.26.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r14d, %xmm4
	ucomisd	%xmm4, %xmm3
	jbe	.LBB0_14
# BB#13:                                # %if.then.44.i
                                        #   in Loop: Header=BB0_12 Depth=3
	movsd	%xmm4, (%rax)
	movapd	%xmm4, %xmm3
.LBB0_14:                               # %if.end.50.i
                                        #   in Loop: Header=BB0_12 Depth=3
	ucomisd	%xmm0, %xmm4
	jbe	.LBB0_16
# BB#15:                                # %if.then.58.i
                                        #   in Loop: Header=BB0_12 Depth=3
	movsd	%xmm4, (%rcx)
	movapd	%xmm4, %xmm0
.LBB0_16:                               # %if.end.64.i
                                        #   in Loop: Header=BB0_12 Depth=3
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%edi, %xmm4
	ucomisd	%xmm4, %xmm2
	jbe	.LBB0_18
# BB#17:                                # %if.then.72.i
                                        #   in Loop: Header=BB0_12 Depth=3
	movsd	%xmm4, (%rbp)
	movapd	%xmm4, %xmm2
.LBB0_18:                               # %if.end.78.i
                                        #   in Loop: Header=BB0_12 Depth=3
	ucomisd	%xmm1, %xmm4
	jbe	.LBB0_20
# BB#19:                                # %if.then.86.i
                                        #   in Loop: Header=BB0_12 Depth=3
	movsd	%xmm4, (%rdx)
	movapd	%xmm4, %xmm1
.LBB0_20:                               # %if.end.92.i
                                        #   in Loop: Header=BB0_12 Depth=3
	decl	%esi
	jne	.LBB0_21
.LBB0_22:                               # %for.end.i
                                        #   in Loop: Header=BB0_10 Depth=2
	incq	%r12
	cmpq	%r10, %r13
	leaq	1(%r13), %r13
	jl	.LBB0_10
# BB#23:                                # %for.end.96.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%esi, %esi
	movl	$5, %edx
	leaq	331(%rsp), %rdi
	callq	memset
	testl	%r12d, %r12d
	movq	240(%rsp), %r13         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm10
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm11
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm12
	xorps	%xmm13, %xmm13
	movq	280(%rsp), %r15         # 8-byte Reload
	jle	.LBB0_6
# BB#24:                                # %for.body.100.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %r8
	leal	-1(%r8), %r14d
	leaq	392(%rsp), %rbp
	leaq	332(%rsp), %rdi
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB0_25:                               # %for.body.100.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
	movq	%r10, %r11
	leaq	1(%r11), %r10
	cmpq	%r8, %r10
	jge	.LBB0_26
# BB#43:                                # %for.body.105.lr.ph.i
                                        #   in Loop: Header=BB0_25 Depth=2
	movq	%r11, %rcx
	shlq	$5, %rcx
	movsd	336(%rsp,%rcx), %xmm0   # xmm0 = mem[0],zero
	leaq	352(%rsp,%rcx), %rbx
	leaq	344(%rsp,%rcx), %rax
	leaq	360(%rsp,%rcx), %r9
	movq	%rbp, %rdx
	movq	%rdi, %rsi
	movl	%r14d, %ecx
	.align	16, 0x90
.LBB0_44:                               # %for.body.105.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ucomisd	-8(%rdx), %xmm0
	ja	.LBB0_49
# BB#45:                                # %if.end.117.i
                                        #   in Loop: Header=BB0_44 Depth=3
	movsd	-24(%rdx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	(%rbx), %xmm1
	ja	.LBB0_49
# BB#46:                                # %if.end.129.i
                                        #   in Loop: Header=BB0_44 Depth=3
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	(%rdx), %xmm1
	ja	.LBB0_49
# BB#47:                                # %if.end.141.i
                                        #   in Loop: Header=BB0_44 Depth=3
	movsd	-16(%rdx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	(%r9), %xmm1
	ja	.LBB0_49
# BB#48:                                # %if.end.153.i
                                        #   in Loop: Header=BB0_44 Depth=3
	movb	$1, (%rsi)
	movb	$1, 331(%rsp,%r11)
	.align	16, 0x90
.LBB0_49:                               # %for.inc.158.i
                                        #   in Loop: Header=BB0_44 Depth=3
	incq	%rsi
	addq	$32, %rdx
	decl	%ecx
	jne	.LBB0_44
.LBB0_26:                               # %for.cond.97.loopexit.i
                                        #   in Loop: Header=BB0_25 Depth=2
	decl	%r14d
	incq	%rdi
	addq	$32, %rbp
	cmpl	%r12d, %r10d
	jne	.LBB0_25
# BB#27:                                # %for.body.167.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
	testb	$1, %r12b
                                        # implicit-def: EDI
	movl	$0, %esi
	je	.LBB0_30
# BB#28:                                # %for.body.167.i.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%edi, %edi
	cmpb	$0, 331(%rsp)
	movl	$1, %ecx
	movl	$0, %esi
	je	.LBB0_30
# BB#29:                                # %if.then.170.i.prol
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	%r15b, 331(%rsp)
	movl	$1, %edi
	movl	$1, %ecx
	movl	$1, %esi
.LBB0_30:                               # %for.body.167.lr.ph.i.split
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, %r12d
	je	.LBB0_37
# BB#31:                                # %for.body.167.lr.ph.i.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	subl	%ecx, %r12d
	movl	%r15d, %edx
	leaq	332(%rsp), %rax
	leaq	(%rax,%rcx), %rax
	leaq	(%rdx,%rcx), %rcx
	xorl	%edx, %edx
	movl	%esi, %edi
	.align	16, 0x90
.LBB0_32:                               # %for.body.167.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, -1(%rax,%rdx)
	je	.LBB0_34
# BB#33:                                # %if.then.170.i
                                        #   in Loop: Header=BB0_32 Depth=2
	movslq	%edi, %rdi
	leal	(%rcx,%rdx), %esi
	movb	%sil, 331(%rsp,%rdi)
	incl	%edi
.LBB0_34:                               # %for.inc.177.i
                                        #   in Loop: Header=BB0_32 Depth=2
	cmpb	$0, (%rax,%rdx)
	je	.LBB0_36
# BB#35:                                # %if.then.170.i.1
                                        #   in Loop: Header=BB0_32 Depth=2
	movslq	%edi, %rdi
	leal	1(%rcx,%rdx), %esi
	movb	%sil, 331(%rsp,%rdi)
	incl	%edi
.LBB0_36:                               # %for.inc.177.i.1
                                        #   in Loop: Header=BB0_32 Depth=2
	addq	$2, %rdx
	cmpl	%edx, %r12d
	jne	.LBB0_32
.LBB0_37:                               # %for.end.179.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$2, %edi
	movq	%rdi, %r12
	jl	.LBB0_6
# BB#38:                                # %for.body.187.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	7696(%r13), %r8
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB0_39:                               # %for.body.187.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	movzbl	331(%rsp,%r9), %eax
	movl	(%r8,%rax,4), %edi
	movl	4(%r8,%rax,4), %r10d
	decl	%r10d
	xorpd	%xmm0, %xmm0
	cmpl	%r10d, %edi
	jge	.LBB0_54
# BB#40:                                # %for.body.204.lr.ph.i
                                        #   in Loop: Header=BB0_39 Depth=2
	movq	5472(%r13), %rsi
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB0_41:                               # %for.body.204.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	1(%rdi), %eax
	movslq	%eax, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	cmpl	$0, 24(%rsi,%rcx)
	movl	(%rsi,%rdx), %r14d
	movl	4(%rsi,%rdx), %ebx
	movl	(%rsi,%rcx), %ebp
	movl	4(%rsi,%rcx), %r15d
	je	.LBB0_52
# BB#42:                                # %if.then.211.i
                                        #   in Loop: Header=BB0_41 Depth=3
	cvtsi2sdl	%r14d, %xmm2
	cvtsi2sdl	%r15d, %xmm1
	mulsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebx, %xmm2
	cvtsi2sdl	%ebp, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	jmp	.LBB0_53
	.align	16, 0x90
.LBB0_52:                               # %if.else.i
                                        #   in Loop: Header=BB0_41 Depth=3
	leal	2(%rdi), %eax
	cltq
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movl	4(%rsi,%rcx), %r11d
	addl	$3, %edi
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$4, %rdx
	movl	4(%rsi,%rdx), %eax
	cvtsi2sdl	%ebx, %xmm1
	cvtsi2sdl	%ebp, %xmm2
	cvtsi2sdl	%eax, %xmm8
	addl	%r11d, %eax
	cvtsi2sdl	%eax, %xmm9
	mulsd	%xmm2, %xmm9
	mulsd	%xmm10, %xmm2
	cvtsi2sdl	(%rsi,%rcx), %xmm5
	movapd	%xmm5, %xmm6
	mulsd	%xmm11, %xmm6
	addsd	%xmm2, %xmm6
	xorps	%xmm2, %xmm2
	cvtsi2sdl	(%rsi,%rdx), %xmm2
	addsd	%xmm2, %xmm6
	mulsd	%xmm1, %xmm6
	cvtsi2sdl	%r15d, %xmm7
	movapd	%xmm7, %xmm3
	mulsd	%xmm10, %xmm3
	cvtsi2sdl	%r11d, %xmm4
	movapd	%xmm4, %xmm1
	mulsd	%xmm11, %xmm1
	addsd	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%r14d, %xmm3
	addsd	%xmm8, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm6, %xmm1
	movapd	%xmm7, %xmm3
	mulsd	%xmm5, %xmm3
	mulsd	%xmm2, %xmm7
	addsd	%xmm3, %xmm7
	addsd	%xmm4, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	addsd	%xmm5, %xmm5
	mulsd	%xmm8, %xmm5
	subsd	%xmm5, %xmm4
	subsd	%xmm9, %xmm4
	mulsd	%xmm11, %xmm4
	subsd	%xmm4, %xmm1
	divsd	%xmm12, %xmm1
	movl	%edi, %eax
.LBB0_53:                               # %for.cond.201.backedge.i
                                        #   in Loop: Header=BB0_41 Depth=3
	addsd	%xmm1, %xmm0
	cmpl	%r10d, %eax
	movl	%eax, %edi
	jl	.LBB0_41
.LBB0_54:                               # %for.end.279.i
                                        #   in Loop: Header=BB0_39 Depth=2
	movsd	%xmm0, 560(%rsp,%r9,8)
	incq	%r9
	cmpl	%r12d, %r9d
	jne	.LBB0_39
# BB#50:                                # %for.cond.285.preheader.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, %r12d
	jle	.LBB0_51
# BB#64:                                # %for.body.288.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movsd	560(%rsp), %xmm0        # xmm0 = mem[0],zero
	movslq	%r12d, %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r12, 208(%rsp)         # 8-byte Spill
	movl	$1, %eax
	.align	16, 0x90
.LBB0_65:                               # %for.body.288.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	560(%rsp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm13
	ja	.LBB0_6
# BB#55:                                # %for.cond.285.i
                                        #   in Loop: Header=BB0_65 Depth=2
	incq	%rax
	cmpq	248(%rsp), %rax         # 8-byte Folded Reload
	jl	.LBB0_65
	jmp	.LBB0_56
.LBB0_5:                                # %for.end.96.thread.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%esi, %esi
	movl	$5, %edx
	leaq	331(%rsp), %rdi
	callq	memset
.LBB0_6:                                # %t1_hinter__fix_subglyph_contour_signs.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	9656(%r13), %eax
	movq	288(%rsp), %rsi         # 8-byte Reload
.LBB0_7:                                # %cleanup
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%eax, %rcx
	cmpq	%rcx, %rsi
	leaq	1(%rsi), %rsi
	jl	.LBB0_2
.LBB0_8:                                # %cleanup.12
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	t1_hinter__fix_contour_signs, .Lfunc_end0-t1_hinter__fix_contour_signs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	-4541763675970600960    # double -1.0E+5
.LCPI1_1:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI1_2:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI1_4:
	.quad	4591870180066957722     # double 0.10000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_3:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	curve_winding_angle_rec,@function
curve_winding_angle_rec:                # @curve_winding_angle_rec
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
	subq	$104, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 160
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
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movl	176(%rsp), %r15d
	movl	168(%rsp), %r14d
	cvtsi2sdl	%esi, %xmm5
	cmpl	$1, %edi
	jg	.LBB1_8
# BB#1:                                 # %if.then
	cvtsi2sdl	%r15d, %xmm2
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	%edx, %xmm1
	cvtsi2sdl	%r14d, %xmm3
	movapd	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm5
	mulsd	%xmm2, %xmm1
	addsd	%xmm5, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB1_7
	jp	.LBB1_7
# BB#2:                                 # %if.then.i
	ucomisd	%xmm2, %xmm0
	jne	.LBB1_4
	jp	.LBB1_4
# BB#3:
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_45
.LBB1_8:                                # %if.else
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	160(%rsp), %ebx
	cvtsi2sdl	%r13d, %xmm4
	movapd	%xmm5, %xmm0
	mulsd	%xmm4, %xmm0
	cvtsi2sdl	%edx, %xmm3
	cvtsi2sdl	%ebp, %xmm6
	movapd	%xmm3, %xmm1
	mulsd	%xmm6, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm5, %xmm2
	mulsd	%xmm6, %xmm2
	movapd	%xmm3, %xmm1
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB1_14
	jp	.LBB1_14
# BB#9:                                 # %if.then.i.85
	ucomisd	%xmm2, %xmm0
	jne	.LBB1_11
	jp	.LBB1_11
# BB#10:
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_15
.LBB1_7:                                # %if.else.i
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	atan2                   # TAILCALL
.LBB1_14:                               # %if.else.i.90
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movsd	%xmm4, 96(%rsp)         # 8-byte Spill
	movsd	%xmm6, 80(%rsp)         # 8-byte Spill
	callq	atan2
	movsd	80(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	96(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm0, %xmm2
	jmp	.LBB1_15
.LBB1_4:                                # %if.end.i
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_5
# BB#6:                                 # %if.then.17.i
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_45
.LBB1_11:                               # %if.end.i.87
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_12
# BB#13:                                # %if.then.17.i.88
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_15
.LBB1_5:
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_45
.LBB1_12:
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB1_15:                               # %bar_winding_angle.exit92
	cvtsi2sdl	%ebx, %xmm3
	movapd	%xmm6, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsi2sdl	%r12d, %xmm5
	movapd	%xmm4, %xmm1
	mulsd	%xmm5, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm6
	mulsd	%xmm3, %xmm4
	addsd	%xmm6, %xmm4
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm4
	jne	.LBB1_21
	jp	.LBB1_21
# BB#16:                                # %if.then.i.105
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_18
	jp	.LBB1_18
# BB#17:
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.i.110
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movapd	%xmm4, %xmm1
	movsd	%xmm3, 96(%rsp)         # 8-byte Spill
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	callq	atan2
	movsd	32(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	96(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB1_22
.LBB1_18:                               # %if.end.i.107
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_19
# BB#20:                                # %if.then.17.i.108
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_22
.LBB1_19:
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_22:                               # %bar_winding_angle.exit112
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r15d, %xmm4
	movapd	%xmm5, %xmm0
	mulsd	%xmm4, %xmm0
	cvtsi2sdl	%r14d, %xmm6
	movapd	%xmm3, %xmm1
	mulsd	%xmm6, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm5
	mulsd	%xmm4, %xmm3
	addsd	%xmm5, %xmm3
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm3
	jne	.LBB1_28
	jp	.LBB1_28
# BB#23:                                # %if.then.i.125
	ucomisd	%xmm1, %xmm0
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jne	.LBB1_25
	jp	.LBB1_25
# BB#24:
	movsd	.LCPI1_0(%rip), %xmm5   # xmm5 = mem[0],zero
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.i.130
	movapd	%xmm3, %xmm1
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm6, 24(%rsp)         # 8-byte Spill
	callq	atan2
	movsd	24(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm0, %xmm5
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB1_29
.LBB1_25:                               # %if.end.i.127
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.LBB1_26
# BB#27:                                # %if.then.17.i.128
	movsd	.LCPI1_2(%rip), %xmm5   # xmm5 = mem[0],zero
	jmp	.LBB1_29
.LBB1_26:
	movsd	.LCPI1_1(%rip), %xmm5   # xmm5 = mem[0],zero
.LBB1_29:                               # %bar_winding_angle.exit132
	movapd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm0
	movapd	%xmm2, %xmm3
	mulsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm6, %xmm2
	mulsd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB1_35
	jp	.LBB1_35
# BB#30:                                # %if.then.i.145
	ucomisd	%xmm2, %xmm0
	movapd	80(%rsp), %xmm4         # 16-byte Reload
	jne	.LBB1_32
	jp	.LBB1_32
# BB#31:
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.i.150
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	callq	atan2
	movsd	72(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	80(%rsp), %xmm4         # 16-byte Reload
	jmp	.LBB1_36
.LBB1_32:                               # %if.end.i.147
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_33
# BB#34:                                # %if.then.17.i.148
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_36
.LBB1_33:
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB1_36:                               # %bar_winding_angle.exit152
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_37
	jnp	.LBB1_42
.LBB1_37:                               # %bar_winding_angle.exit152
	ucomisd	.LCPI1_0(%rip), %xmm5
	jne	.LBB1_38
	jnp	.LBB1_42
.LBB1_38:                               # %bar_winding_angle.exit152
	ucomisd	.LCPI1_0(%rip), %xmm1
	jne	.LBB1_39
	jnp	.LBB1_42
.LBB1_39:                               # %bar_winding_angle.exit152
	ucomisd	.LCPI1_0(%rip), %xmm4
	jne	.LBB1_40
	jnp	.LBB1_42
.LBB1_40:                               # %bar_winding_angle.exit152
	addsd	%xmm1, %xmm4
	addsd	%xmm5, %xmm4
	addsd	%xmm0, %xmm4
	movapd	.LCPI1_3(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm1
	xorpd	%xmm2, %xmm2
	movapd	%xmm4, %xmm3
	cmpltsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
	andnpd	%xmm4, %xmm2
	andpd	%xmm1, %xmm3
	orpd	%xmm2, %xmm3
	movsd	.LCPI1_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm3, %xmm1
	jbe	.LBB1_42
# BB#41:                                # %if.then.16
	xorpd	.LCPI1_3(%rip), %xmm0
	jmp	.LBB1_45
.LBB1_42:                               # %if.else.18
	movq	56(%rsp), %rsi          # 8-byte Reload
	leal	(%rbp,%rsi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	40(%rsp), %rdx          # 8-byte Reload
	leal	(%r13,%rdx), %eax
	movl	%eax, %r8d
	shrl	$31, %r8d
	addl	%eax, %r8d
	sarl	%r8d
	leal	(%rbp,%r12), %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	leal	(%r13,%rbx), %edi
	movl	%edi, %ebp
	shrl	$31, %ebp
	addl	%edi, %ebp
	sarl	%ebp
	leal	(%r12,%r14), %edi
	movq	%rbx, %r9
	movl	%edi, %ebx
	shrl	$31, %ebx
	addl	%edi, %ebx
	sarl	%ebx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	leal	(%r9,%r15), %edi
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	%edi, %r14d
	shrl	$31, %r14d
	addl	%edi, %r14d
	sarl	%r14d
	leal	(%rax,%rcx), %edi
	movl	%edi, %r9d
	shrl	$31, %r9d
	addl	%edi, %r9d
	sarl	%r9d
	leal	(%rbp,%r8), %r10d
	movl	%r10d, %edi
	shrl	$31, %edi
	addl	%r10d, %edi
	sarl	%edi
	leal	(%rax,%rbx), %eax
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%r13d
	leal	(%rbp,%r14), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	leal	(%r13,%r9), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	leal	(%rbp,%rdi), %eax
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%ebx
	sarl	%r15d
	movl	52(%rsp), %r12d         # 4-byte Reload
	decl	%r12d
	movl	%edi, (%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r12d, %edi
	callq	curve_winding_angle_rec
	movapd	%xmm0, %xmm1
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_43
	jnp	.LBB1_45
.LBB1_43:                               # %if.end
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	%r12d, %edi
	movl	%ebx, %esi
	movl	%r15d, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movq	96(%rsp), %r9           # 8-byte Reload
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	callq	curve_winding_angle_rec
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_44
	jnp	.LBB1_45
.LBB1_44:                               # %if.end.50
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
.LBB1_45:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	curve_winding_angle_rec, .Lfunc_end1-curve_winding_angle_rec
	.cfi_endproc

	.align	16, 0x90
	.type	t1_hinter__intersect_curve_bar,@function
t1_hinter__intersect_curve_bar:         # @t1_hinter__intersect_curve_bar
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
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 192
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movslq	%edx, %rbp
	movq	5472(%rdi), %rax
	leaq	(%rbp,%rbp,2), %rcx
	shlq	$4, %rcx
	movl	(%rax,%rcx), %r9d
	movl	4(%rax,%rcx), %r8d
	incl	%ebp
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movl	(%rax,%rdi), %ebp
	movl	4(%rax,%rdi), %edi
	subl	%r9d, %ebp
	movl	%ebp, 84(%rsp)          # 4-byte Spill
	movl	%ebp, %r12d
	negl	%r12d
	cmovll	%ebp, %r12d
	subl	%r8d, %edi
	movl	%edi, 80(%rsp)          # 4-byte Spill
	movl	%edi, %ebp
	negl	%ebp
	cmovll	%edi, %ebp
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %rdi
	shlq	$4, %rdi
	movl	(%rax,%rdi), %ebx
	movl	4(%rax,%rdi), %edi
	subl	%r9d, %ebx
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	subl	%r8d, %edi
	movl	%edi, 72(%rsp)          # 4-byte Spill
	leal	1(%rsi), %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movl	(%rax,%rdi), %ebx
	movl	4(%rax,%rdi), %ecx
	subl	%r9d, %ebx
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	subl	%r8d, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	leal	2(%rsi), %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movl	(%rax,%rdi), %edx
	movl	4(%rax,%rdi), %r13d
	subl	%r9d, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	subl	%r8d, %r13d
	addl	$3, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	movl	(%rax,%rsi), %r14d
	movl	4(%rax,%rsi), %r15d
	subl	%r9d, %r14d
	subl	%r8d, %r15d
	movl	%ebx, 116(%rsp)
	movl	%ecx, 120(%rsp)
	movl	%edx, 124(%rsp)
	movl	%r13d, 128(%rsp)
	movl	%r14d, 108(%rsp)
	movl	%r15d, 112(%rsp)
	xorl	%ebx, %ebx
	leaq	88(%rsp), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$256, %ecx              # imm = 0x100
	callq	gx_curve_log2_samples
	orl	%r12d, %ebp
	movslq	%ebp, %rdx
	movq	%rdx, %rcx
	sarq	$63, %rcx
	shrq	$56, %rcx
	addq	%rdx, %rcx
	shrq	$8, %rcx
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_1:                                # %while.body.i
                                        #   in Loop: Header=BB2_2 Depth=1
	sarl	%ecx
	incl	%ebx
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jne	.LBB2_1
# BB#3:                                 # %bar_samples.exit
	movl	%r15d, 40(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r13d, 24(%rsp)
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movl	64(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rsp)
	movl	%ebx, %edi
	movl	%eax, %esi
	movl	84(%rsp), %edx          # 4-byte Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	movl	76(%rsp), %r8d          # 4-byte Reload
	movl	72(%rsp), %r9d          # 4-byte Reload
	callq	intersect_curve_bar_rec
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	t1_hinter__intersect_curve_bar, .Lfunc_end2-t1_hinter__intersect_curve_bar
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	intersect_bar_bar,@function
intersect_bar_bar:                      # @intersect_bar_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jne	.LBB3_2
# BB#1:                                 # %entry
	cmpl	%esi, %ecx
	je	.LBB3_15
.LBB3_2:                                # %if.end
	cmpl	%r8d, %edx
	jne	.LBB3_4
# BB#3:                                 # %if.end
	cmpl	%r9d, %ecx
	je	.LBB3_15
.LBB3_4:                                # %if.end.6
	movl	$1, %eax
	subl	%edi, %r8d
	jne	.LBB3_6
# BB#5:                                 # %if.end.6
	cmpl	%esi, %r9d
	je	.LBB3_15
.LBB3_6:                                # %if.end.11
	movl	88(%rsp), %ebp
	movl	80(%rsp), %ebx
	movl	%ebx, %r10d
	subl	%edi, %r10d
	jne	.LBB3_8
# BB#7:                                 # %if.end.11
	cmpl	%esi, %ebp
	je	.LBB3_15
.LBB3_8:                                # %if.end.21
	cmpl	%ebx, %edx
	jne	.LBB3_10
# BB#9:                                 # %if.end.21
	cmpl	%ebp, %ecx
	je	.LBB3_15
.LBB3_10:                               # %if.else
	movl	%r8d, %r11d
	negl	%r11d
	cmovll	%r8d, %r11d
	movl	%r10d, %ebx
	negl	%ebx
	cmovll	%r10d, %ebx
	movd	%ebp, %xmm0
	movd	%ecx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%r9d, %xmm2
	movd	%edx, %xmm0
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movd	%esi, %xmm1
	movd	%edi, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psubd	%xmm2, %xmm0
	movd	%xmm0, %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %r9d
	movl	%r9d, %ebp
	negl	%ebp
	cmovll	%r9d, %ebp
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %r14d
	movl	%r14d, %esi
	negl	%esi
	cmovll	%r14d, %esi
	orl	%edi, %eax
	orl	%r11d, %eax
	orl	%ebp, %eax
	orl	%ebx, %eax
	orl	%esi, %eax
	cmpl	$1048576, %eax          # imm = 0x100000
	jl	.LBB3_14
# BB#11:
	movdqa	.LCPI3_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	.align	16, 0x90
.LBB3_12:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sarl	%eax
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	psrld	$31, %xmm2
	paddd	%xmm2, %xmm0
	psrad	$1, %xmm0
	cmpl	$1048575, %eax          # imm = 0xFFFFF
	jg	.LBB3_12
# BB#13:                                # %while.end.loopexit
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %ecx
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %r8d
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %r10d
	movl	%r8d, %r9d
	movl	%r10d, %r14d
.LBB3_14:                               # %while.end
	leaq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	44(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r10d, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	gx_intersect_small_bars
.LBB3_15:                               # %return
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	intersect_bar_bar, .Lfunc_end3-intersect_bar_bar
	.cfi_endproc

	.align	16, 0x90
	.type	intersect_curve_bar_rec,@function
intersect_curve_bar_rec:                # @intersect_curve_bar_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 208
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movl	248(%rsp), %r10d
	movl	240(%rsp), %eax
	cmpl	$1, %edi
	jg	.LBB4_2
# BB#1:                                 # %if.then
	movl	%r10d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	callq	intersect_bar_bar
	jmp	.LBB4_26
.LBB4_2:                                # %if.else
	testl	%r14d, %r14d
	cvtsi2sdl	%r14d, %xmm0
	movapd	%xmm0, %xmm3
	js	.LBB4_4
# BB#3:                                 # %if.else
	xorpd	%xmm3, %xmm3
.LBB4_4:                                # %if.else
	xorpd	%xmm2, %xmm2
	js	.LBB4_6
# BB#5:                                 # %if.else
	movapd	%xmm0, %xmm2
.LBB4_6:                                # %if.else
	movl	224(%rsp), %r11d
	movl	208(%rsp), %ecx
	testl	%r13d, %r13d
	cvtsi2sdl	%r13d, %xmm8
	movapd	%xmm8, %xmm9
	js	.LBB4_8
# BB#7:                                 # %if.else
	xorpd	%xmm9, %xmm9
.LBB4_8:                                # %if.else
	cvtsi2sdl	%r8d, %xmm5
	cvtsi2sdl	%ecx, %xmm4
	movapd	%xmm4, %xmm7
	maxsd	%xmm5, %xmm7
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r11d, %xmm0
	movapd	%xmm0, %xmm6
	maxsd	%xmm7, %xmm6
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, %xmm7
	maxsd	%xmm6, %xmm7
	xorl	%ebx, %ebx
	ucomisd	%xmm7, %xmm3
	ja	.LBB4_25
# BB#9:                                 # %if.else
	minsd	%xmm5, %xmm4
	minsd	%xmm4, %xmm0
	minsd	%xmm0, %xmm1
	ucomisd	%xmm2, %xmm1
	ja	.LBB4_25
# BB#10:                                # %if.else
	movl	232(%rsp), %r15d
	movl	216(%rsp), %edx
	cvtsi2sdl	%r9d, %xmm5
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%edx, %xmm4
	movapd	%xmm4, %xmm0
	maxsd	%xmm5, %xmm0
	cvtsi2sdl	%r15d, %xmm3
	movapd	%xmm3, %xmm1
	maxsd	%xmm0, %xmm1
	cvtsi2sdl	%r10d, %xmm2
	movapd	%xmm2, %xmm0
	maxsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm9
	ja	.LBB4_25
# BB#11:                                # %if.end.178
	minsd	%xmm5, %xmm4
	minsd	%xmm4, %xmm3
	testl	%r13d, %r13d
	minsd	%xmm3, %xmm2
	xorpd	%xmm1, %xmm1
	js	.LBB4_13
# BB#12:                                # %if.end.178
	movapd	%xmm8, %xmm1
.LBB4_13:                               # %if.end.178
	ucomisd	%xmm1, %xmm2
	ja	.LBB4_25
# BB#14:                                # %if.end.188
	movl	%edi, 140(%rsp)         # 4-byte Spill
	leal	(%rcx,%r8), %edi
	movl	%edi, %ebp
	shrl	$31, %ebp
	addl	%edi, %ebp
	sarl	%ebp
	leal	(%rdx,%r9), %edi
	movq	%r8, 144(%rsp)          # 8-byte Spill
	movl	%edi, %ebx
	shrl	$31, %ebx
	addl	%edi, %ebx
	sarl	%ebx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leal	(%rcx,%r11), %edi
	movl	%edi, %ecx
	shrl	$31, %ecx
	addl	%edi, %ecx
	sarl	%ecx
	leal	(%rdx,%r15), %edi
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
	leal	(%r11,%rax), %eax
	movl	%eax, %r11d
	shrl	$31, %r11d
	addl	%eax, %r11d
	sarl	%r11d
	leal	(%r15,%r10), %eax
	movq	%rbp, %r8
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	leal	(%rcx,%r8), %eax
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	leal	(%rdx,%rbx), %eax
	movl	%eax, %r12d
	shrl	$31, %r12d
	addl	%eax, %r12d
	sarl	%r12d
	leal	(%rcx,%r11), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	leal	(%rdx,%rbp), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	leal	(%rcx,%r15), %eax
	movl	%eax, %r10d
	shrl	$31, %r10d
	addl	%eax, %r10d
	leal	(%rbx,%r12), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%r10d
	sarl	%edi
	cmpl	$1, %esi
	jg	.LBB4_17
# BB#15:                                # %if.then.215
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%r11, 112(%rsp)         # 8-byte Spill
	movl	140(%rsp), %eax         # 4-byte Reload
	decl	%eax
	movl	%edi, 40(%rsp)
	movl	%edi, 124(%rsp)         # 4-byte Spill
	movl	%r10d, 32(%rsp)
	movl	%r10d, 140(%rsp)        # 4-byte Spill
	movl	%r12d, 24(%rsp)
	movl	%eax, %r12d
	movl	%r15d, 16(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	%r12d, %edi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movl	%esi, %r15d
	movq	144(%rsp), %r8          # 8-byte Reload
	callq	intersect_curve_bar_rec
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB4_25
# BB#16:                                # %if.end.218
	movl	248(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	240(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%r12d, %edi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movl	140(%rsp), %r8d         # 4-byte Reload
	movl	124(%rsp), %r9d         # 4-byte Reload
	callq	intersect_curve_bar_rec
	testl	%eax, %eax
	jne	.LBB4_25
	jmp	.LBB4_24
.LBB4_17:                               # %if.else.224
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%r11, 112(%rsp)         # 8-byte Spill
	movl	%r14d, %eax
	shrl	$31, %eax
	leal	(%rax,%r14), %edx
	sarl	%edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	shrl	$31, %eax
	leal	(%rax,%r13), %ecx
	sarl	%ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	140(%rsp), %ebp         # 4-byte Reload
	decl	%ebp
	decl	%esi
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)
	movl	%edi, 124(%rsp)         # 4-byte Spill
	movl	%r10d, 32(%rsp)
	movl	%r10d, 140(%rsp)        # 4-byte Spill
	movl	%r12d, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	%ebp, %edi
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%rax, %rbx
	callq	intersect_curve_bar_rec
	testl	%eax, %eax
	je	.LBB4_19
# BB#18:
	movl	$1, %ebx
	jmp	.LBB4_25
.LBB4_19:                               # %if.end.232
	movl	248(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	240(%rsp), %eax
	movl	%eax, 32(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 24(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%ebp, %edi
	movl	84(%rsp), %esi          # 4-byte Reload
	movl	92(%rsp), %edx          # 4-byte Reload
	movl	88(%rsp), %ecx          # 4-byte Reload
	movl	140(%rsp), %r8d         # 4-byte Reload
	movl	124(%rsp), %r9d         # 4-byte Reload
	callq	intersect_curve_bar_rec
	testl	%eax, %eax
	je	.LBB4_21
# BB#20:
	movl	$1, %ebx
	jmp	.LBB4_25
.LBB4_21:                               # %if.end.238
	movl	92(%rsp), %edx          # 4-byte Reload
	subl	%edx, %r14d
	movl	88(%rsp), %esi          # 4-byte Reload
	subl	%esi, %r13d
	movq	144(%rsp), %r8          # 8-byte Reload
	subl	%edx, %r8d
	movq	64(%rsp), %r9           # 8-byte Reload
	subl	%esi, %r9d
	movq	56(%rsp), %rax          # 8-byte Reload
	subl	%edx, %eax
	subl	%esi, %ebx
	subl	%edx, %r15d
	subl	%esi, %r12d
	movl	140(%rsp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movl	124(%rsp), %edx         # 4-byte Reload
	subl	%esi, %edx
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	%edx, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	%ebp, %edi
	movl	84(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	movl	%r13d, %ecx
	callq	intersect_curve_bar_rec
	testl	%eax, %eax
	movl	%ebp, %edi
	je	.LBB4_23
# BB#22:
	movl	$1, %ebx
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.254
	movq	104(%rsp), %r8          # 8-byte Reload
	movl	92(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %r8d
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	88(%rsp), %esi          # 4-byte Reload
	subl	%esi, %ebx
	movq	112(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	movq	72(%rsp), %rbp          # 8-byte Reload
	subl	%esi, %ebp
	movl	240(%rsp), %eax
	subl	%ecx, %eax
	movl	248(%rsp), %ecx
	subl	%esi, %ecx
	movl	%ecx, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	84(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movl	140(%rsp), %r8d         # 4-byte Reload
	movl	124(%rsp), %r9d         # 4-byte Reload
	callq	intersect_curve_bar_rec
	testl	%eax, %eax
	movl	$1, %ebx
	jne	.LBB4_25
.LBB4_24:                               # %if.end.275
	xorl	%ebx, %ebx
.LBB4_25:                               # %cleanup.276
	movl	%ebx, %eax
.LBB4_26:                               # %cleanup.276
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	intersect_curve_bar_rec, .Lfunc_end4-intersect_curve_bar_rec
	.cfi_endproc

	.align	16, 0x90
	.type	intersect_curve_curve_rec,@function
intersect_curve_curve_rec:              # @intersect_curve_curve_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 288
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%ecx, %ebx
	movl	%edx, %r15d
	movl	376(%rsp), %r10d
	movl	368(%rsp), %ecx
	movl	328(%rsp), %r9d
	movl	320(%rsp), %ebp
	movl	312(%rsp), %r13d
	movl	304(%rsp), %edx
	cmpl	$1, %edi
	jg	.LBB5_3
# BB#1:                                 # %entry
	cmpl	$1, %esi
	jg	.LBB5_3
# BB#2:                                 # %if.then
	movl	%r10d, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	%r15d, %edi
	movl	%ebx, %esi
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	callq	intersect_bar_bar
	jmp	.LBB5_24
.LBB5_3:                                # %if.else
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movl	360(%rsp), %edx
	movl	352(%rsp), %eax
	movl	344(%rsp), %r11d
	cmpl	$1, %edi
	jg	.LBB5_8
# BB#4:                                 # %if.then.3
	movq	%rbp, %rbx
	movq	%rax, %r14
	movl	304(%rsp), %eax
	movq	%rax, %rdi
	subl	%r15d, %edi
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	movq	224(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %r13d
	movl	%r13d, %edi
	negl	%edi
	cmovll	%r13d, %edi
	orl	%eax, %edi
	movslq	%edi, %rdi
	movq	%rdi, %rax
	sarq	$63, %rax
	shrq	$56, %rax
	addq	%rdi, %rax
	shrq	$8, %rax
	xorl	%edi, %edi
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_5:                                # %while.body.i
                                        #   in Loop: Header=BB5_6 Depth=1
	sarl	%eax
	incl	%edi
.LBB5_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB5_5
# BB#7:                                 # %bar_samples.exit
	movq	%rbx, %r8
	subl	%r15d, %r8d
	movq	224(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %r9d
	movl	336(%rsp), %eax
	movq	%rax, %r12
	subl	%r15d, %r12d
	subl	%ebx, %r11d
	subl	%r15d, %r14d
	subl	%ebx, %edx
	subl	%r15d, %ecx
	subl	%ebx, %r10d
	movl	%r10d, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r12d, (%rsp)
	movq	216(%rsp), %rdx         # 8-byte Reload
	movl	%r13d, %ecx
	callq	intersect_curve_bar_rec
	jmp	.LBB5_24
.LBB5_8:                                # %if.else.17
	movl	296(%rsp), %r11d
	movl	288(%rsp), %r14d
	cmpl	$1, %esi
	jg	.LBB5_14
# BB#9:                                 # %if.then.19
	movl	%edi, %esi
	subl	%ebp, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	movq	%rcx, %rdx
	subl	%r9d, %r10d
	movl	%r10d, %edi
	negl	%edi
	cmovll	%r10d, %edi
	orl	%eax, %edi
	movslq	%edi, %rdi
	movq	%rdi, %rax
	sarq	$63, %rax
	shrq	$56, %rax
	addq	%rdi, %rax
	shrq	$8, %rax
	xorl	%edi, %edi
	jmp	.LBB5_11
	.align	16, 0x90
.LBB5_10:                               # %while.body.i.275
                                        #   in Loop: Header=BB5_11 Depth=1
	sarl	%eax
	incl	%edi
.LBB5_11:                               # %while.body.i.275
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB5_10
# BB#12:                                # %bar_samples.exit277
	subl	%ebp, %r15d
	movq	224(%rsp), %rbx         # 8-byte Reload
	subl	%r9d, %ebx
	subl	%ebp, %r8d
	subl	%r9d, %r12d
	subl	%ebp, %r14d
	subl	%r9d, %r11d
	movl	304(%rsp), %eax
	subl	%ebp, %eax
	subl	%r9d, %r13d
	movl	%r13d, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	%r10d, %ecx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	callq	intersect_curve_bar_rec
	jmp	.LBB5_24
.LBB5_14:                               # %if.else.35
	movq	%rbp, %rbx
	cvtsi2sdl	%r15d, %xmm8
	cvtsi2sdl	%r8d, %xmm1
	movapd	%xmm1, %xmm0
	minsd	%xmm8, %xmm0
	cvtsi2sdl	%r14d, %xmm3
	movapd	%xmm3, %xmm4
	minsd	%xmm0, %xmm4
	movl	304(%rsp), %ebp
	cvtsi2sdl	%ebp, %xmm10
	movapd	%xmm10, %xmm0
	minsd	%xmm4, %xmm0
	cvtsi2sdl	%ebx, %xmm9
	movl	336(%rsp), %ebp
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ebp, %xmm4
	movapd	%xmm4, %xmm7
	maxsd	%xmm9, %xmm7
	cvtsi2sdl	%eax, %xmm5
	movapd	%xmm5, %xmm6
	maxsd	%xmm7, %xmm6
	cvtsi2sdl	%ecx, %xmm2
	movapd	%xmm2, %xmm7
	maxsd	%xmm6, %xmm7
	xorl	%ecx, %ecx
	ucomisd	%xmm7, %xmm0
	ja	.LBB5_21
# BB#15:                                # %if.else.35
	maxsd	%xmm8, %xmm1
	maxsd	%xmm1, %xmm3
	maxsd	%xmm3, %xmm10
	minsd	%xmm9, %xmm4
	minsd	%xmm4, %xmm5
	minsd	%xmm5, %xmm2
	ucomisd	%xmm10, %xmm2
	ja	.LBB5_21
# BB#16:                                # %if.else.35
	movq	224(%rsp), %rax         # 8-byte Reload
	cvtsi2sdl	%eax, %xmm8
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r12d, %xmm2
	movapd	%xmm2, %xmm1
	minsd	%xmm8, %xmm1
	xorps	%xmm10, %xmm10
	cvtsi2sdl	%r11d, %xmm10
	movapd	%xmm10, %xmm4
	minsd	%xmm1, %xmm4
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm3, %xmm1
	minsd	%xmm4, %xmm1
	cvtsi2sdl	%r9d, %xmm9
	movl	344(%rsp), %r14d
	movq	%r14, %rax
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm4
	movapd	%xmm4, %xmm7
	maxsd	%xmm9, %xmm7
	cvtsi2sdl	%edx, %xmm6
	movapd	%xmm6, %xmm5
	maxsd	%xmm7, %xmm5
	cvtsi2sdl	%r10d, %xmm0
	movapd	%xmm0, %xmm7
	maxsd	%xmm5, %xmm7
	ucomisd	%xmm7, %xmm1
	ja	.LBB5_21
# BB#17:                                # %if.end.313
	movl	%edi, 212(%rsp)         # 4-byte Spill
	movl	%esi, 216(%rsp)         # 4-byte Spill
	maxsd	%xmm8, %xmm2
	maxsd	%xmm2, %xmm10
	minsd	%xmm9, %xmm4
	minsd	%xmm4, %xmm6
	minsd	%xmm6, %xmm0
	maxsd	%xmm10, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB5_21
# BB#18:                                # %if.end.325
	leal	(%r8,%r15), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	(%r12,%rax), %eax
	movl	%eax, %r9d
	shrl	$31, %r9d
	addl	%eax, %r9d
	sarl	%r9d
	movq	%r9, 192(%rsp)          # 8-byte Spill
	movl	288(%rsp), %eax
	movq	%rax, %rdx
	leal	(%r8,%rdx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	leal	(%r12,%r11), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	304(%rsp), %r13d
	leal	(%rdx,%r13), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movl	312(%rsp), %eax
	leal	(%r11,%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	leal	(%rdi,%rsi), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	movq	%rsi, %rbp
	leal	(%rcx,%r9), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	%rsi, %r8
	leal	(%rdi,%rbx), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leal	(%rsi,%rbp), %eax
	movl	%eax, %r11d
	shrl	$31, %r11d
	addl	%eax, %r11d
	leal	(%rcx,%r8), %eax
	movl	%eax, %r9d
	shrl	$31, %r9d
	addl	%eax, %r9d
	movl	336(%rsp), %eax
	movq	%rax, %rsi
	movl	320(%rsp), %r14d
	leal	(%rsi,%r14), %eax
	movl	%eax, %r8d
	shrl	$31, %r8d
	addl	%eax, %r8d
	movl	328(%rsp), %ebx
	movq	%rbx, %rax
	movl	344(%rsp), %ebx
	leal	(%rbx,%rax), %eax
	movl	%eax, %r12d
	shrl	$31, %r12d
	addl	%eax, %r12d
	movl	352(%rsp), %ecx
	leal	(%rsi,%rcx), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	movl	360(%rsp), %ebp
	leal	(%rbx,%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	movl	368(%rsp), %eax
	leal	(%rcx,%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	leal	(%rbp,%r10), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%r8d
	movq	%r8, 104(%rsp)          # 8-byte Spill
	sarl	%esi
	leal	(%rsi,%r8), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%r12d
	sarl	%edx
	leal	(%rdx,%r12), %eax
	movl	%eax, %r14d
	shrl	$31, %r14d
	addl	%eax, %r14d
	sarl	%ecx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	(%rsi,%rcx), %eax
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%ebx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	leal	(%rdx,%rbx), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebp
	sarl	%r13d
	leal	(%r13,%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%r14d
	sarl	%ebx
	leal	(%rbx,%r14), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%r11d
	movl	%r11d, 172(%rsp)        # 4-byte Spill
	sarl	%r9d
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	sarl	%ecx
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	sarl	%edx
	movl	%edx, 160(%rsp)         # 4-byte Spill
	movl	212(%rsp), %edi         # 4-byte Reload
	decl	%edi
	movl	%edi, 212(%rsp)         # 4-byte Spill
	movl	216(%rsp), %esi         # 4-byte Reload
	decl	%esi
	movl	%esi, 216(%rsp)         # 4-byte Spill
	movl	328(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	320(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	%r12d, 56(%rsp)
	movl	%r8d, 48(%rsp)
	movl	%r14d, 72(%rsp)
	movl	%ebp, 64(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%edx, 88(%rsp)
	movl	%ecx, 80(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r15d, %edx
	movq	224(%rsp), %rcx         # 8-byte Reload
	movq	200(%rsp), %r8          # 8-byte Reload
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	intersect_curve_curve_rec
	movl	$1, %ecx
	testl	%eax, %eax
	jne	.LBB5_21
# BB#19:                                # %if.end.376
	movl	376(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	368(%rsp), %eax
	movl	%eax, 80(%rsp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 72(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%r13d, 48(%rsp)
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	172(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	200(%rsp), %r8          # 8-byte Reload
	movl	212(%rsp), %edi         # 4-byte Reload
	movq	192(%rsp), %r9          # 8-byte Reload
	movl	216(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	movq	224(%rsp), %rcx         # 8-byte Reload
	callq	intersect_curve_curve_rec
	testl	%eax, %eax
	je	.LBB5_22
# BB#20:
	movl	$1, %ecx
	jmp	.LBB5_21
.LBB5_22:                               # %if.end.382
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movq	%r13, 224(%rsp)         # 8-byte Spill
	movq	152(%rsp), %r13         # 8-byte Reload
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, 88(%rsp)
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 80(%rsp)
	movl	%r14d, 72(%rsp)
	movl	%ebp, 64(%rsp)
	movl	%r12d, 56(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 48(%rsp)
	movl	328(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	320(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	312(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	304(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, 8(%rsp)
	movq	136(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, (%rsp)
	movl	212(%rsp), %edi         # 4-byte Reload
	movl	%edi, %r12d
	movl	216(%rsp), %esi         # 4-byte Reload
	movl	172(%rsp), %edx         # 4-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	%r15d, %r8d
	movq	128(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %r9d
	callq	intersect_curve_curve_rec
	testl	%eax, %eax
	movl	376(%rsp), %eax
	movl	$1, %ecx
	je	.LBB5_23
.LBB5_21:                               # %cleanup.395
	movl	%ecx, %eax
.LBB5_24:                               # %cleanup.395
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_23:                               # %if.end.388
	movl	%eax, 88(%rsp)
	movl	368(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	%r13d, 72(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	%eax, 48(%rsp)
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	312(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	304(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%r12d, %edi
	movl	216(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	movl	172(%rsp), %edx         # 4-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	callq	intersect_curve_curve_rec
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB5_24
.Lfunc_end5:
	.size	intersect_curve_curve_rec, .Lfunc_end5-intersect_curve_curve_rec
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
