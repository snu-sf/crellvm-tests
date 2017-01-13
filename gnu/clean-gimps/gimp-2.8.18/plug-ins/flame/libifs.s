	.text
	.file	"libifs.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	-4586634745500139520    # double -100
.LCPI0_2:
	.quad	4611686018427387904     # double 2
.LCPI0_3:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_4:
	.quad	-4766078479767192133    # double -1.0E-10
.LCPI0_5:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI0_6:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_7:
	.quad	4607182418800017408     # double 1
.LCPI0_8:
	.quad	4598175219545276416     # double 0.25
.LCPI0_9:
	.quad	4613937818241073152     # double 3
.LCPI0_10:
	.quad	4616189618054758400     # double 4
	.text
	.globl	iterate
	.align	16, 0x90
	.type	iterate,@function
iterate:                                # @iterate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$1664, %rsp             # imm = 0x680
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -480(%rbp)
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -472(%rbp)
	movq	-24(%rbp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -464(%rbp)
	movsd	%xmm0, -504(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	280(%rcx), %xmm0        # xmm0 = mem[0],zero
	addsd	-504(%rbp), %xmm0
	movsd	%xmm0, -504(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-504(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -504(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	280(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -488(%rbp)
	movsd	%xmm0, -496(%rbp)
	movl	$0, -28(%rbp)
.LBB0_5:                                # %for.cond.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$100, -28(%rbp)
	jge	.LBB0_11
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %while.cond
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	-496(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-488(%rbp), %xmm0
	jb	.LBB0_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	280(%rdx), %xmm0        # xmm0 = mem[0],zero
	addsd	-488(%rbp), %xmm0
	movsd	%xmm0, -488(%rbp)
	jmp	.LBB0_7
.LBB0_9:                                # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
	movsd	-504(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-496(%rbp), %xmm0
	movsd	%xmm0, -496(%rbp)
# BB#10:                                # %for.inc.26
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_5
.LBB0_11:                               # %for.end.28
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_12:                               # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_175
# BB#13:                                # %for.body.31
                                        #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	movl	$100, %esi
	callq	g_random_int_range
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movl	-448(%rbp,%rcx,4), %eax
	movl	%eax, -508(%rbp)
	movsd	-480(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_17
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-480(%rbp), %xmm0
	ja	.LBB0_17
# BB#15:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-472(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_17
# BB#16:                                # %lor.lhs.false.41
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-472(%rbp), %xmm0
	jbe	.LBB0_18
.LBB0_17:                               # %if.then
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_18:                               # %if.end
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-480(%rbp), %xmm0
	jne	.LBB0_19
	jp	.LBB0_19
	jmp	.LBB0_20
.LBB0_19:                               # %if.then.48
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_20:                               # %if.end.50
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	288(%rcx), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -464(%rbp)
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	232(%rcx), %xmm1        # xmm1 = mem[0],zero
	mulsd	-480(%rbp), %xmm1
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	248(%rcx), %xmm2        # xmm2 = mem[0],zero
	mulsd	-472(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	264(%rcx), %xmm1
	movsd	%xmm1, -520(%rbp)
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	240(%rcx), %xmm1        # xmm1 = mem[0],zero
	mulsd	-480(%rbp), %xmm1
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	256(%rcx), %xmm2        # xmm2 = mem[0],zero
	mulsd	-472(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	272(%rcx), %xmm1
	movsd	%xmm1, -528(%rbp)
	movsd	%xmm0, -472(%rbp)
	movsd	%xmm0, -480(%rbp)
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_22
# BB#21:                                # %if.then.111
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -544(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-544(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-552(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_22:                               # %if.end.118
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_24
# BB#23:                                # %if.then.125
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -560(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -568(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-560(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-568(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_24:                               # %if.end.136
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_26
# BB#25:                                # %if.then.143
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-520(%rbp), %xmm1
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -592(%rbp)
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-592(%rbp), %xmm0
	movsd	%xmm0, -576(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-592(%rbp), %xmm0
	movsd	%xmm0, -584(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-576(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-584(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_26:                               # %if.end.158
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_28
# BB#27:                                # %if.then.165
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -600(%rbp)
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -608(%rbp)
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -616(%rbp)
	movsd	-608(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-616(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -624(%rbp)
	movsd	-616(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-608(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -632(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-624(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-632(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_28:                               # %if.end.186
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_36
# BB#29:                                # %if.then.193
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_33
# BB#30:                                # %lor.lhs.false.199
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_33
# BB#31:                                # %lor.lhs.false.201
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_33
# BB#32:                                # %lor.lhs.false.203
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_34
.LBB0_33:                               # %if.then.205
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -640(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -640(%rbp)
.LBB0_35:                               # %if.end.207
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-640(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -648(%rbp)
	movsd	-640(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -656(%rbp)
	movsd	-648(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-656(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	-656(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-648(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -672(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-664(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-672(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_36:                               # %if.end.222
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_44
# BB#37:                                # %if.then.229
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_41
# BB#38:                                # %lor.lhs.false.233
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_41
# BB#39:                                # %lor.lhs.false.235
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_41
# BB#40:                                # %lor.lhs.false.237
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_42
.LBB0_41:                               # %if.then.239
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -680(%rbp)
	jmp	.LBB0_43
.LBB0_42:                               # %if.else.242
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -680(%rbp)
.LBB0_43:                               # %if.end.243
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-520(%rbp), %xmm1
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -1344(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-1344(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -688(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-680(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-688(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_44:                               # %if.end.255
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_50
# BB#45:                                # %if.then.262
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -696(%rbp)
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -704(%rbp)
	ucomisd	-696(%rbp), %xmm0
	jbe	.LBB0_47
# BB#46:                                # %if.then.266
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	mulsd	-696(%rbp), %xmm0
	movsd	%xmm0, -696(%rbp)
.LBB0_47:                               # %if.end.268
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-704(%rbp), %xmm0
	jbe	.LBB0_49
# BB#48:                                # %if.then.270
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -704(%rbp)
.LBB0_49:                               # %if.end.272
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-696(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-704(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_50:                               # %if.end.279
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_58
# BB#51:                                # %if.then.286
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_55
# BB#52:                                # %lor.lhs.false.291
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_55
# BB#53:                                # %lor.lhs.false.293
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_55
# BB#54:                                # %lor.lhs.false.295
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_56
.LBB0_55:                               # %if.then.297
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -712(%rbp)
	jmp	.LBB0_57
.LBB0_56:                               # %if.else.299
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -712(%rbp)
.LBB0_57:                               # %if.end.300
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -720(%rbp)
	movsd	-712(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-720(%rbp), %xmm0
	callq	sin
	mulsd	-720(%rbp), %xmm0
	movsd	%xmm0, -728(%rbp)
	movsd	-712(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-720(%rbp), %xmm0
	callq	cos
	mulsd	-720(%rbp), %xmm0
	movsd	%xmm0, -736(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-728(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-736(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_58:                               # %if.end.317
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	64(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_66
# BB#59:                                # %if.then.324
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_63
# BB#60:                                # %lor.lhs.false.330
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_63
# BB#61:                                # %lor.lhs.false.332
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_63
# BB#62:                                # %lor.lhs.false.334
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_64
.LBB0_63:                               # %if.then.336
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -744(%rbp)
	jmp	.LBB0_65
.LBB0_64:                               # %if.else.338
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -744(%rbp)
.LBB0_65:                               # %if.end.339
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -752(%rbp)
	movsd	-752(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-744(%rbp), %xmm0
	movsd	%xmm0, -744(%rbp)
	movsd	-744(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	mulsd	-752(%rbp), %xmm0
	movsd	%xmm0, -760(%rbp)
	movsd	-744(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	movsd	-752(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -768(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-760(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-768(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_66:                               # %if.end.356
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_74
# BB#67:                                # %if.then.363
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_71
# BB#68:                                # %lor.lhs.false.369
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_71
# BB#69:                                # %lor.lhs.false.371
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_71
# BB#70:                                # %lor.lhs.false.373
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_72
.LBB0_71:                               # %if.then.375
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -776(%rbp)
	jmp	.LBB0_73
.LBB0_72:                               # %if.else.377
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -776(%rbp)
.LBB0_73:                               # %if.end.378
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-520(%rbp), %xmm1
	movsd	%xmm1, -792(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-528(%rbp), %xmm1
	movsd	%xmm1, -800(%rbp)
	movsd	-792(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-792(%rbp), %xmm1
	mulsd	-800(%rbp), %xmm1
	mulsd	-800(%rbp), %xmm1
	movsd	%xmm0, -1352(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -784(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-784(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1360(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1360(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-776(%rbp), %xmm1
	movsd	-1352(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-480(%rbp), %xmm1
	movsd	%xmm1, -480(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-784(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -1368(%rbp)      # 8-byte Spill
	callq	cos
	movsd	-1368(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-776(%rbp), %xmm1
	movsd	-1352(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-472(%rbp), %xmm1
	movsd	%xmm1, -472(%rbp)
.LBB0_74:                               # %if.end.397
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	80(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_82
# BB#75:                                # %if.then.404
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_79
# BB#76:                                # %lor.lhs.false.408
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_79
# BB#77:                                # %lor.lhs.false.410
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_79
# BB#78:                                # %lor.lhs.false.412
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_80
.LBB0_79:                               # %if.then.414
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -808(%rbp)
	jmp	.LBB0_81
.LBB0_80:                               # %if.else.416
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -808(%rbp)
.LBB0_81:                               # %if.end.417
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-520(%rbp), %xmm1
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -1376(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-1376(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -816(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-808(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -1384(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	cos
	movsd	-816(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1392(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1392(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-1384(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	-816(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-808(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1400(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-816(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1408(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-1408(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-1400(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	-816(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_82:                               # %if.end.437
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	88(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_90
# BB#83:                                # %if.then.444
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_87
# BB#84:                                # %lor.lhs.false.448
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_87
# BB#85:                                # %lor.lhs.false.450
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_87
# BB#86:                                # %lor.lhs.false.452
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_88
.LBB0_87:                               # %if.then.454
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -824(%rbp)
	jmp	.LBB0_89
.LBB0_88:                               # %if.else.456
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -824(%rbp)
.LBB0_89:                               # %if.end.457
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-520(%rbp), %xmm1
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -1416(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-1416(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -832(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-824(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -1424(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-1424(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-832(%rbp), %xmm1
	addsd	-480(%rbp), %xmm1
	movsd	%xmm1, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-824(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1432(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-1432(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-832(%rbp), %xmm1
	addsd	-472(%rbp), %xmm1
	movsd	%xmm1, -472(%rbp)
.LBB0_90:                               # %if.end.473
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	96(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_98
# BB#91:                                # %if.then.480
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_95
# BB#92:                                # %lor.lhs.false.484
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_95
# BB#93:                                # %lor.lhs.false.486
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_95
# BB#94:                                # %lor.lhs.false.488
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_96
.LBB0_95:                               # %if.then.490
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -840(%rbp)
	jmp	.LBB0_97
.LBB0_96:                               # %if.else.492
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -840(%rbp)
.LBB0_97:                               # %if.end.493
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -848(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-840(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1440(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1440(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-848(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -1448(%rbp)      # 8-byte Spill
	callq	cos
	movsd	-1448(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	-480(%rbp), %xmm1
	movsd	%xmm1, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-840(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1456(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-1456(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-848(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -1464(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1464(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	-472(%rbp), %xmm1
	movsd	%xmm1, -472(%rbp)
.LBB0_98:                               # %if.end.510
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	104(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_106
# BB#99:                                # %if.then.517
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_103
# BB#100:                               # %lor.lhs.false.521
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_103
# BB#101:                               # %lor.lhs.false.523
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_103
# BB#102:                               # %lor.lhs.false.525
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_104
.LBB0_103:                              # %if.then.527
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -856(%rbp)
	jmp	.LBB0_105
.LBB0_104:                              # %if.else.529
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -856(%rbp)
.LBB0_105:                              # %if.end.530
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -864(%rbp)
	movsd	-856(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-864(%rbp), %xmm0
	callq	sin
	movsd	%xmm0, -872(%rbp)
	movsd	-856(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-864(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -880(%rbp)
	movsd	-872(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-872(%rbp), %xmm0
	mulsd	-872(%rbp), %xmm0
	mulsd	-864(%rbp), %xmm0
	movsd	%xmm0, -888(%rbp)
	movsd	-880(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-880(%rbp), %xmm0
	mulsd	-880(%rbp), %xmm0
	mulsd	-864(%rbp), %xmm0
	movsd	%xmm0, -896(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-888(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-888(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_106:                              # %if.end.553
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	112(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_116
# BB#107:                               # %if.then.560
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_111
# BB#108:                               # %lor.lhs.false.566
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_111
# BB#109:                               # %lor.lhs.false.568
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_111
# BB#110:                               # %lor.lhs.false.570
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_112
.LBB0_111:                              # %if.then.572
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -904(%rbp)
	jmp	.LBB0_113
.LBB0_112:                              # %if.else.574
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -904(%rbp)
.LBB0_113:                              # %if.end.575
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	flam3_random_bit
	cmpl	$0, %eax
	je	.LBB0_115
# BB#114:                               # %if.then.577
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	addsd	-904(%rbp), %xmm0
	movsd	%xmm0, -904(%rbp)
.LBB0_115:                              # %if.end.579
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_8, %xmm1         # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	callq	pow
	movsd	%xmm0, -912(%rbp)
	movsd	-912(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-904(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1472(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-1472(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -920(%rbp)
	movsd	-912(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-904(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1480(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1480(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -928(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-920(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-928(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_116:                              # %if.end.594
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	120(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_118
# BB#117:                               # %if.then.601
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	264(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -936(%rbp)
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	272(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -944(%rbp)
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	248(%rcx), %xmm2        # xmm2 = mem[0],zero
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-936(%rbp), %xmm4       # xmm4 = mem[0],zero
	mulsd	-936(%rbp), %xmm4
	addsd	%xmm0, %xmm4
	divsd	%xmm4, %xmm3
	movsd	%xmm0, -1488(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -1496(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1504(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1496(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1504(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -952(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	256(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-944(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-944(%rbp), %xmm3
	movsd	-1488(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm0, -1512(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1520(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1520(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1512(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -960(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-952(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-960(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_118:                              # %if.end.646
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	128(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_126
# BB#119:                               # %if.then.653
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_123
# BB#120:                               # %lor.lhs.false.659
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_123
# BB#121:                               # %lor.lhs.false.661
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_123
# BB#122:                               # %lor.lhs.false.663
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_124
.LBB0_123:                              # %if.then.665
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -968(%rbp)
	jmp	.LBB0_125
.LBB0_124:                              # %if.else.667
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -968(%rbp)
.LBB0_125:                              # %if.end.668
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-520(%rbp), %xmm2
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-528(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -1528(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1536(%rbp)      # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -976(%rbp)
	movsd	-1536(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-976(%rbp), %xmm0
	movsd	-1528(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-976(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -976(%rbp)
	movsd	-976(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-968(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1544(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-1544(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -984(%rbp)
	movsd	-976(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-968(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1552(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-1552(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -992(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-984(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-992(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_126:                              # %if.end.686
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	136(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_128
# BB#127:                               # %if.then.693
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_9, %xmm0         # xmm0 = mem[0],zero
	mulsd	-528(%rbp), %xmm0
	callq	tan
	movsd	.LCPI0_9, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -1000(%rbp)
	mulsd	-520(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	movsd	%xmm0, -1008(%rbp)
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	264(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	-1000(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	%xmm0, -1560(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1568(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1568(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1560(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1016(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	272(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	-1008(%rbp), %xmm2      # xmm2 = mem[0],zero
	movsd	%xmm0, -1576(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1584(%rbp)      # 8-byte Spill
	callq	sin
	movsd	-1584(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1576(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1024(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1016(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1024(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_128:                              # %if.end.726
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	144(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_130
# BB#129:                               # %if.then.733
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -1032(%rbp)
	mulsd	-528(%rbp), %xmm1
	movsd	%xmm1, -1040(%rbp)
	movsd	-1040(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	mulsd	-1032(%rbp), %xmm0
	movsd	%xmm0, -1048(%rbp)
	movsd	-1040(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	mulsd	-1032(%rbp), %xmm0
	movsd	%xmm0, -1056(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1048(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1056(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_130:                              # %if.end.751
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	152(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_138
# BB#131:                               # %if.then.758
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_135
# BB#132:                               # %lor.lhs.false.764
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_135
# BB#133:                               # %lor.lhs.false.766
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_135
# BB#134:                               # %lor.lhs.false.768
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_136
.LBB0_135:                              # %if.then.770
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -1064(%rbp)
	jmp	.LBB0_137
.LBB0_136:                              # %if.else.772
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1064(%rbp)
.LBB0_137:                              # %if.end.773
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -1080(%rbp)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -1088(%rbp)
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -1072(%rbp)
	movsd	-1072(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1080(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -1072(%rbp)
	movsd	-1072(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1088(%rbp), %xmm0
	movsd	%xmm0, -1096(%rbp)
	movsd	-1072(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1080(%rbp), %xmm0
	movsd	%xmm0, -1104(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1096(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1104(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_138:                              # %if.end.789
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	160(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_140
# BB#139:                               # %if.then.796
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	callq	cos
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1592(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cosh
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	-1592(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -1112(%rbp)
	mulsd	-520(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -1600(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sinh
	movsd	-1600(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -1120(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1112(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1120(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_140:                              # %if.end.814
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	168(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_148
# BB#141:                               # %if.then.821
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_145
# BB#142:                               # %lor.lhs.false.828
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_145
# BB#143:                               # %lor.lhs.false.830
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_145
# BB#144:                               # %lor.lhs.false.832
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_146
.LBB0_145:                              # %if.then.834
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -1128(%rbp)
	jmp	.LBB0_147
.LBB0_146:                              # %if.else.836
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1128(%rbp)
.LBB0_147:                              # %if.end.837
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	264(%rcx), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -1144(%rbp)
	movsd	-1144(%rbp), %xmm2      # xmm2 = mem[0],zero
	mulsd	-1144(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -1144(%rbp)
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-520(%rbp), %xmm1
	movsd	-528(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-528(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -1608(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -1136(%rbp)
	movsd	-1136(%rbp), %xmm0      # xmm0 = mem[0],zero
	addsd	-1144(%rbp), %xmm0
	movsd	-1608(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-1144(%rbp), %xmm1
	callq	fmod
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	subsd	-1144(%rbp), %xmm0
	movsd	-1136(%rbp), %xmm2      # xmm2 = mem[0],zero
	subsd	-1144(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -1136(%rbp)
	movsd	-1128(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	mulsd	-1136(%rbp), %xmm0
	movsd	%xmm0, -1152(%rbp)
	movsd	-1128(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	mulsd	-1136(%rbp), %xmm0
	movsd	%xmm0, -1160(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1152(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1160(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_148:                              # %if.end.867
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	176(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_159
# BB#149:                               # %if.then.874
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-520(%rbp), %xmm0
	ja	.LBB0_153
# BB#150:                               # %lor.lhs.false.882
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_153
# BB#151:                               # %lor.lhs.false.884
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-528(%rbp), %xmm0
	ja	.LBB0_153
# BB#152:                               # %lor.lhs.false.886
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_154
.LBB0_153:                              # %if.then.888
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -1168(%rbp)
	jmp	.LBB0_155
.LBB0_154:                              # %if.else.890
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1168(%rbp)
.LBB0_155:                              # %if.end.891
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	264(%rcx), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm3, -1184(%rbp)
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	272(%rcx), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm3, -1192(%rbp)
	movsd	-1184(%rbp), %xmm3      # xmm3 = mem[0],zero
	mulsd	-1184(%rbp), %xmm3
	addsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -1184(%rbp)
	movsd	-1184(%rbp), %xmm1      # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -1200(%rbp)
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-528(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -1176(%rbp)
	movsd	-1168(%rbp), %xmm0      # xmm0 = mem[0],zero
	addsd	-1192(%rbp), %xmm0
	movsd	-1184(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	fmod
	ucomisd	-1200(%rbp), %xmm0
	jbe	.LBB0_157
# BB#156:                               # %cond.true
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-1200(%rbp), %xmm0      # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -1616(%rbp)      # 8-byte Spill
	jmp	.LBB0_158
.LBB0_157:                              # %cond.false
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-1200(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1616(%rbp)      # 8-byte Spill
.LBB0_158:                              # %cond.end
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-1616(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-1168(%rbp), %xmm0
	movsd	%xmm0, -1168(%rbp)
	movsd	-1168(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	mulsd	-1176(%rbp), %xmm0
	movsd	%xmm0, -1208(%rbp)
	movsd	-1168(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	mulsd	-1176(%rbp), %xmm0
	movsd	%xmm0, -1216(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1208(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1216(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_159:                              # %if.end.927
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	184(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_161
# BB#160:                               # %if.then.934
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	mulsd	-536(%rbp), %xmm1
	movsd	-520(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-520(%rbp), %xmm2
	movsd	-528(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-528(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -1624(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1632(%rbp)      # 8-byte Spill
	callq	sqrt
	movsd	-1624(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-1632(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -1224(%rbp)
	movsd	-1224(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-1224(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-528(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_161:                              # %if.end.949
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	192(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_163
# BB#162:                               # %if.then.956
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_10, %xmm1        # xmm1 = mem[0],zero
	movsd	-536(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-520(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-520(%rbp), %xmm3
	movsd	-528(%rbp), %xmm4       # xmm4 = mem[0],zero
	mulsd	-528(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -1232(%rbp)
	movsd	-1232(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-520(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-1232(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-528(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_163:                              # %if.end.970
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	200(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_165
# BB#164:                               # %if.then.977
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -1240(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1240(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-528(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_165:                              # %if.end.986
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	208(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_167
# BB#166:                               # %if.then.993
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	flam3_random01
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1248(%rbp)
	movsd	-1248(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -1256(%rbp)
	movsd	-1248(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -1264(%rbp)
	callq	flam3_random01
	movsd	%xmm0, -1272(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1272(%rbp), %xmm0
	mulsd	-520(%rbp), %xmm0
	mulsd	-1264(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1272(%rbp), %xmm0
	mulsd	-528(%rbp), %xmm0
	mulsd	-1256(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_167:                              # %if.end.1010
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	216(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_169
# BB#168:                               # %if.then.1017
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	flam3_random01
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1280(%rbp)
	movsd	-1280(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -1288(%rbp)
	movsd	-1280(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -1296(%rbp)
	callq	flam3_random01
	movsd	%xmm0, -1304(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1304(%rbp), %xmm0
	mulsd	-1296(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-1304(%rbp), %xmm0
	mulsd	-1288(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_169:                              # %if.end.1036
                                        #   in Loop: Header=BB0_12 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-508(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	224(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -536(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_171
# BB#170:                               # %if.then.1043
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	flam3_random01
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1312(%rbp)
	movsd	-1312(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -1320(%rbp)
	movsd	-1312(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -1328(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -1640(%rbp)      # 8-byte Spill
	callq	flam3_random01
	movsd	%xmm0, -1648(%rbp)      # 8-byte Spill
	callq	flam3_random01
	movsd	-1648(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -1656(%rbp)      # 8-byte Spill
	callq	flam3_random01
	movsd	-1656(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -1664(%rbp)      # 8-byte Spill
	callq	flam3_random01
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-1664(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movsd	-1640(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -1336(%rbp)
	movsd	-1336(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1328(%rbp), %xmm0
	addsd	-480(%rbp), %xmm0
	movsd	%xmm0, -480(%rbp)
	movsd	-1336(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1320(%rbp), %xmm0
	addsd	-472(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
.LBB0_171:                              # %if.end.1065
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB0_173
# BB#172:                               # %if.then.1067
                                        #   in Loop: Header=BB0_12 Depth=1
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-472(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB0_173:                              # %if.end.1080
                                        #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_174
.LBB0_174:                              # %for.inc.1081
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_12
.LBB0_175:                              # %for.end.1083
	addq	$1664, %rsp             # imm = 0x680
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iterate, .Lfunc_end0-iterate
	.cfi_endproc

	.align	16, 0x90
	.type	flam3_random_bit,@function
flam3_random_bit:                       # @flam3_random_bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	cmpl	$0, flam3_random_bit.n
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	g_random_int
	movl	%eax, flam3_random_bit.l
	movl	$20, flam3_random_bit.n
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	flam3_random_bit.l, %eax
	sarl	$1, %eax
	movl	%eax, flam3_random_bit.l
	movl	flam3_random_bit.n, %eax
	addl	$-1, %eax
	movl	%eax, flam3_random_bit.n
.LBB1_3:                                # %if.end
	movl	flam3_random_bit.l, %eax
	andl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	flam3_random_bit, .Lfunc_end1-flam3_random_bit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4733283208332836864     # double 268435455
	.text
	.align	16, 0x90
	.type	flam3_random01,@function
flam3_random01:                         # @flam3_random01
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	g_random_int
	andl	$268435455, %eax        # imm = 0xFFFFFFF
	cvtsi2sdl	%eax, %xmm0
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	flam3_random01, .Lfunc_end2-flam3_random01
	.cfi_endproc

	.globl	mult_matrix
	.align	16, 0x90
	.type	mult_matrix,@function
mult_matrix:                            # @mult_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	8(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	16(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	8(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	16(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mult_matrix, .Lfunc_end3-mult_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4721223822366429368    # double -9.9999999999999995E-8
.LCPI4_1:
	.quad	4502148214488346440     # double 9.9999999999999995E-8
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4655631299166339072     # double 1800
.LCPI4_4:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI4_5:
	.quad	4611686018427387904     # double 2
.LCPI4_6:
	.quad	4616189618054758400     # double 4
.LCPI4_7:
	.quad	4643211215818981376     # double 256
.LCPI4_8:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_9:
	.quad	4594572339843380019     # double 0.14999999999999999
.LCPI4_10:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	interpolate
	.align	16, 0x90
	.type	interpolate,@function
interpolate:                            # @interpolate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$8104, %eax             # imm = 0x1FA8
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB4_78
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movsd	7920(%rax), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB4_4
# BB#3:                                 # %if.then.4
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	jmp	.LBB4_14
.LBB4_4:                                # %if.else
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	movsd	7920(%rcx), %xmm0       # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_6
# BB#5:                                 # %if.then.8
	movl	-12(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_13
.LBB4_6:                                # %if.else.11
	movl	$0, -44(%rbp)
.LBB4_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	movsd	7920(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_7
.LBB4_9:                                # %while.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	subsd	7920(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_12
# BB#10:                                # %land.lhs.true
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	subsd	7920(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_12
# BB#11:                                # %if.then.26
	movl	$8104, %eax             # imm = 0x1FA8
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	imulq	$8104, %rsi, %rsi       # imm = 0x1FA8
	addq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB4_78
.LBB4_12:                               # %if.end.29
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.30
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.31
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	movsd	7920(%rax), %xmm1       # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	movsd	7920(%rax), %xmm2       # xmm2 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	subsd	7920(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7920(%rax)
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cmpl	$0, 8032(%rax)
	je	.LBB4_31
# BB#15:                                # %if.then.47
	movl	$0, -36(%rbp)
.LBB4_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_25 Depth 2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB4_30
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_8, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_9, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm4, -80(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -120(%rbp)
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	8032(%rax), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB4_19
# BB#18:                                # %if.then.60
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB4_19:                               # %if.end.61
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_21
# BB#20:                                # %if.then.65
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB4_21:                               # %if.end.67
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	.LCPI4_10, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	addsd	-80(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	divsd	-80(%rbp), %xmm2
	movsd	%xmm2, -96(%rbp)
	subsd	-96(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB4_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB4_24:                               # %cond.end
                                        #   in Loop: Header=BB4_16 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	subsd	-104(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	movl	$0, -40(%rbp)
.LBB4_25:                               # %for.cond.77
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB4_28
# BB#26:                                # %for.body.80
                                        #   in Loop: Header=BB4_25 Depth=2
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	%xmm1, (%rdx,%rax,8)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	mulsd	-104(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	%xmm1, (%rdx,%rax,8)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB4_25 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc.116
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_16
.LBB4_30:                               # %for.end.118
	jmp	.LBB4_40
.LBB4_31:                               # %if.else.119
	movl	$0, -36(%rbp)
.LBB4_32:                               # %for.cond.120
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB4_39
# BB#33:                                # %for.body.123
                                        #   in Loop: Header=BB4_32 Depth=1
	leaq	-176(%rbp), %rsi
	movslq	-36(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	addq	$1776, %rcx             # imm = 0x6F0
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	rgb2hsv
	leaq	-144(%rbp), %rsi
	movslq	-36(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	addq	$1776, %rcx             # imm = 0x6F0
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	rgb2hsv
	movl	$0, -40(%rbp)
.LBB4_34:                               # %for.cond.138
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB4_37
# BB#35:                                # %for.body.141
                                        #   in Loop: Header=BB4_34 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	mulsd	-176(%rbp,%rax,8), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	mulsd	-144(%rbp,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movsd	%xmm0, -144(%rbp,%rax,8)
# BB#36:                                # %for.inc.151
                                        #   in Loop: Header=BB4_34 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_34
.LBB4_37:                               # %for.end.153
                                        #   in Loop: Header=BB4_32 Depth=1
	leaq	-144(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1776, %rcx             # imm = 0x6F0
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, %rsi
	callq	hsv2rgb
# BB#38:                                # %for.inc.159
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_32
.LBB4_39:                               # %for.end.161
	jmp	.LBB4_40
.LBB4_40:                               # %if.end.162
	movq	-32(%rbp), %rax
	movl	$-1, 7928(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7936(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7936(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7936(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7944(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7944(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7944(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7952(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7952(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7952(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7960(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7960(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 7960(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7964(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7964(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 7964(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7968(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	7968(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 7968(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7976(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7976(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7976(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7984(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7984(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7984(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8000(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8000(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8000(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8008(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8008(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8008(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8016(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	8016(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8016(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7992(%rax), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	mulsd	7992(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 7992(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	8024(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	8024(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8024(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	8028(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-48(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	addq	-8(%rbp), %rax
	cvtsi2sdl	8028(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8028(%rax)
	movl	$0, -36(%rbp)
.LBB4_41:                               # %for.cond.311
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_43 Depth 2
	cmpl	$2, -36(%rbp)
	jge	.LBB4_48
# BB#42:                                # %for.body.314
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -40(%rbp)
.LBB4_43:                               # %for.cond.315
                                        #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -40(%rbp)
	jge	.LBB4_46
# BB#44:                                # %for.body.318
                                        #   in Loop: Header=BB4_43 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$8040, %rdx             # imm = 0x1F68
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$8040, %rdx             # imm = 0x1F68
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$8040, %rdx             # imm = 0x1F68
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$8072, %rdx             # imm = 0x1F88
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	addq	$8072, %rdx             # imm = 0x1F88
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$8072, %rdx             # imm = 0x1F88
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#45:                                # %for.inc.361
                                        #   in Loop: Header=BB4_43 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_43
.LBB4_46:                               # %for.end.363
                                        #   in Loop: Header=BB4_41 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               # %for.inc.364
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_41
.LBB4_48:                               # %for.end.366
	movl	$0, -36(%rbp)
.LBB4_49:                               # %for.cond.367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
                                        #     Child Loop BB4_57 Depth 2
                                        #     Child Loop BB4_61 Depth 2
                                        #     Child Loop BB4_65 Depth 2
                                        #     Child Loop BB4_69 Depth 2
                                        #     Child Loop BB4_73 Depth 2
	cmpl	$6, -36(%rbp)
	jge	.LBB4_78
# BB#50:                                # %for.body.370
                                        #   in Loop: Header=BB4_49 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-36(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	mulsd	280(%rcx), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movslq	-36(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	mulsd	280(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm1, 280(%rcx)
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	280(%rcx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_52
# BB#51:                                # %if.then.394
                                        #   in Loop: Header=BB4_49 Depth=1
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 280(%rcx)
.LBB4_52:                               # %if.end.399
                                        #   in Loop: Header=BB4_49 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	mulsd	288(%rcx), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-36(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	mulsd	288(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 288(%rcx)
	movl	$0, -40(%rbp)
.LBB4_53:                               # %for.cond.418
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -40(%rbp)
	jge	.LBB4_56
# BB#54:                                # %for.body.421
                                        #   in Loop: Header=BB4_53 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#55:                                # %for.inc.446
                                        #   in Loop: Header=BB4_53 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_53
.LBB4_56:                               # %for.end.448
                                        #   in Loop: Header=BB4_49 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -40(%rbp)
.LBB4_57:                               # %for.cond.449
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -40(%rbp)
	jge	.LBB4_60
# BB#58:                                # %for.body.452
                                        #   in Loop: Header=BB4_57 Depth=2
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
# BB#59:                                # %for.inc.460
                                        #   in Loop: Header=BB4_57 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_57
.LBB4_60:                               # %for.end.462
                                        #   in Loop: Header=BB4_49 Depth=1
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -40(%rbp)
.LBB4_61:                               # %for.cond.464
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -40(%rbp)
	jge	.LBB4_64
# BB#62:                                # %for.body.467
                                        #   in Loop: Header=BB4_61 Depth=2
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
# BB#63:                                # %for.inc.475
                                        #   in Loop: Header=BB4_61 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_61
.LBB4_64:                               # %for.end.477
                                        #   in Loop: Header=BB4_49 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addq	$232, %rcx
	movslq	-36(%rbp), %rax
	movslq	-48(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	addq	-8(%rbp), %rdx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rdx
	addq	$232, %rdx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rsi
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rsi
	addq	$232, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	callq	interpolate_matrix
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm3         # xmm3 = mem[0],zero
	mulsd	-24(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -192(%rbp)
	movsd	%xmm0, -184(%rbp)
	movl	$0, -40(%rbp)
.LBB4_65:                               # %for.cond.500
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -40(%rbp)
	jge	.LBB4_68
# BB#66:                                # %for.body.503
                                        #   in Loop: Header=BB4_65 Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$8040, %rcx             # imm = 0x1F68
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$8040, %rcx             # imm = 0x1F68
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	-184(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
# BB#67:                                # %for.inc.516
                                        #   in Loop: Header=BB4_65 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_65
.LBB4_68:                               # %for.end.518
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	$0, -40(%rbp)
.LBB4_69:                               # %for.cond.519
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB4_72
# BB#70:                                # %for.body.522
                                        #   in Loop: Header=BB4_69 Depth=2
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$232, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$232, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
# BB#71:                                # %for.inc.539
                                        #   in Loop: Header=BB4_69 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_69
.LBB4_72:                               # %for.end.541
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	$0, -40(%rbp)
.LBB4_73:                               # %for.cond.542
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -40(%rbp)
	jge	.LBB4_76
# BB#74:                                # %for.body.545
                                        #   in Loop: Header=BB4_73 Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$8072, %rcx             # imm = 0x1F88
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	mulsd	-192(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$8072, %rcx             # imm = 0x1F88
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	232(%rcx), %xmm1
	movsd	%xmm1, 232(%rcx)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	248(%rcx), %xmm1
	movsd	%xmm1, 248(%rcx)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	240(%rcx), %xmm1
	movsd	%xmm1, 240(%rcx)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	addsd	256(%rcx), %xmm1
	movsd	%xmm1, 256(%rcx)
# BB#75:                                # %for.inc.592
                                        #   in Loop: Header=BB4_73 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_73
.LBB4_76:                               # %for.end.594
                                        #   in Loop: Header=BB4_49 Depth=1
	jmp	.LBB4_77
.LBB4_77:                               # %for.inc.595
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_49
.LBB4_78:                               # %for.end.597
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end4:
	.size	interpolate, .Lfunc_end4-interpolate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	interpolate_matrix,@function
interpolate_matrix:                     # @interpolate_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	subsd	-8(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	interpolate_complex
	movl	$1, %eax
	xorl	%r9d, %r9d
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	-24(%rbp), %rsi
	addq	$16, %rsi
	movq	-32(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	interpolate_complex
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	32(%rdx), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	32(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	40(%rdx), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	40(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	interpolate_matrix, .Lfunc_end5-interpolate_matrix
	.cfi_endproc

	.globl	tokenize
	.align	16, 0x90
	.type	tokenize,@function
tokenize:                               # @tokenize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	je	.LBB6_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	movl	-40(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_17
.LBB6_17:                               # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_9
	jmp	.LBB6_18
.LBB6_18:                               # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB6_12
	jmp	.LBB6_15
.LBB6_3:                                # %sw.bb
                                        #   in Loop: Header=BB6_1 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$35, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$2, -40(%rbp)
	jmp	.LBB6_8
.LBB6_5:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movl	$1, -40(%rbp)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.11
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %sw.bb.12
                                        #   in Loop: Header=BB6_1 Depth=1
	movzbl	-41(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB6_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -40(%rbp)
.LBB6_11:                               # %if.end.20
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %sw.bb.21
                                        #   in Loop: Header=BB6_1 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB6_14
# BB#13:                                # %if.then.25
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -40(%rbp)
.LBB6_14:                               # %if.end.26
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %sw.epilog
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_16:                               # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tokenize, .Lfunc_end6-tokenize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4633641066610819072     # double 60
	.text
	.globl	parse_control_point
	.align	16, 0x90
	.type	parse_control_point,@function
parse_control_point:                    # @parse_control_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$8160, %rsp             # imm = 0x1FE0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -8032(%rbp)
	movl	$0, -8036(%rbp)
	movl	$0, -8040(%rbp)
	movl	$0, -8044(%rbp)
	movl	$0, -8048(%rbp)
	movl	$0, -8052(%rbp)
	movq	$0, -8064(%rbp)
	movl	$0, -8024(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpl	$6, -8024(%rbp)
	jge	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm1, 280(%rcx)
	cmpl	$0, -8024(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cvtsi2sdl	%esi, %xmm1
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm1, 288(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx)
	movl	$1, -8028(%rbp)
.LBB7_3:                                # %for.cond.10
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -8028(%rbp)
	jge	.LBB7_6
# BB#4:                                 # %for.body.13
                                        #   in Loop: Header=BB7_3 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-8028(%rbp), %rax
	movslq	-8024(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-8028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8028(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm1, 232(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 240(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 248(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm1, 256(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 264(%rcx)
	movslq	-8024(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 272(%rcx)
# BB#7:                                 # %for.inc.55
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-8024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8024(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end.57
	movl	$0, -8028(%rbp)
.LBB7_9:                                # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -8028(%rbp)
	jge	.LBB7_12
# BB#10:                                # %for.body.61
                                        #   in Loop: Header=BB7_9 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movslq	-8028(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8040, %rcx             # imm = 0x1F68
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm1, (%rcx)
	movslq	-8028(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8040, %rcx             # imm = 0x1F68
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	movslq	-8028(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8072, %rcx             # imm = 0x1F88
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm1, (%rcx)
	movslq	-8028(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8072, %rcx             # imm = 0x1F88
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
# BB#11:                                # %for.inc.76
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	-8028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8028(%rbp)
	jmp	.LBB7_9
.LBB7_12:                               # %for.end.78
	leaq	-8020(%rbp), %rdx
	leaq	-8016(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	tokenize
	movl	$0, -8024(%rbp)
.LBB7_13:                               # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	movl	-8024(%rbp), %eax
	cmpl	-8020(%rbp), %eax
	jge	.LBB7_82
# BB#14:                                # %for.body.82
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8072(%rbp), %rax
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_80
.LBB7_16:                               # %if.else
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_18
# BB#17:                                # %if.then.89
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7920, %rax             # imm = 0x1EF0
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_79
.LBB7_18:                               # %if.else.90
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_20
# BB#19:                                # %if.then.95
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7936, %rax             # imm = 0x1F00
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_78
.LBB7_20:                               # %if.else.96
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_22
# BB#21:                                # %if.then.101
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7944, %rax             # imm = 0x1F08
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_77
.LBB7_22:                               # %if.else.102
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.4, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_24
# BB#23:                                # %if.then.107
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7952, %rax             # imm = 0x1F10
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_76
.LBB7_24:                               # %if.else.108
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.5, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_26
# BB#25:                                # %if.then.113
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7992, %rax             # imm = 0x1F38
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_75
.LBB7_26:                               # %if.else.114
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.6, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_28
# BB#27:                                # %if.then.119
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8144(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8036(%rbp)
	jmp	.LBB7_74
.LBB7_28:                               # %if.else.121
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.7, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_30
# BB#29:                                # %if.then.126
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$7976, %rax             # imm = 0x1F28
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_73
.LBB7_30:                               # %if.else.128
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.8, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_32
# BB#31:                                # %if.then.133
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$8040, %rax             # imm = 0x1F68
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_72
.LBB7_32:                               # %if.else.136
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.9, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_34
# BB#33:                                # %if.then.141
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$8072, %rax             # imm = 0x1F88
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_71
.LBB7_34:                               # %if.else.144
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.10, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_36
# BB#35:                                # %if.then.149
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$8000, %rax             # imm = 0x1F40
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_70
.LBB7_36:                               # %if.else.150
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.11, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_38
# BB#37:                                # %if.then.155
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$8008, %rax             # imm = 0x1F48
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_69
.LBB7_38:                               # %if.else.156
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.12, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_40
# BB#39:                                # %if.then.161
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$8016, %rax             # imm = 0x1F50
	movq	%rax, -8064(%rbp)
	jmp	.LBB7_68
.LBB7_40:                               # %if.else.162
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.13, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_42
# BB#41:                                # %if.then.167
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8096(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8040(%rbp)
	jmp	.LBB7_67
.LBB7_42:                               # %if.else.168
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.14, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_44
# BB#43:                                # %if.then.173
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8104(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8044(%rbp)
	jmp	.LBB7_66
.LBB7_44:                               # %if.else.174
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.15, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_46
# BB#45:                                # %if.then.179
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8112(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8052(%rbp)
	jmp	.LBB7_65
.LBB7_46:                               # %if.else.180
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.16, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_48
# BB#47:                                # %if.then.185
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8080(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8032(%rbp)
	jmp	.LBB7_64
.LBB7_48:                               # %if.else.186
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.17, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_50
# BB#49:                                # %if.then.191
                                        #   in Loop: Header=BB7_13 Depth=1
	cvttsd2si	-8072(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$280, %rdx              # imm = 0x118
	movq	%rdx, -8064(%rbp)
	jmp	.LBB7_63
.LBB7_50:                               # %if.else.197
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.18, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_52
# BB#51:                                # %if.then.202
                                        #   in Loop: Header=BB7_13 Depth=1
	cvttsd2si	-8072(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$288, %rdx              # imm = 0x120
	movq	%rdx, -8064(%rbp)
	jmp	.LBB7_62
.LBB7_52:                               # %if.else.208
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.19, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_54
# BB#53:                                # %if.then.213
                                        #   in Loop: Header=BB7_13 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvttsd2si	-8072(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$232, %rdx
	movq	%rdx, -8064(%rbp)
	cvttsd2si	-8072(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, 280(%rdx)
	jmp	.LBB7_61
.LBB7_54:                               # %if.else.226
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.20, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_56
# BB#55:                                # %if.then.231
                                        #   in Loop: Header=BB7_13 Depth=1
	cvttsd2si	-8072(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movq	%rdx, -8064(%rbp)
	jmp	.LBB7_60
.LBB7_56:                               # %if.else.238
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-8024(%rbp), %rax
	movq	-8016(%rbp,%rax,8), %rsi
	movl	$.L.str.21, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_58
# BB#57:                                # %if.then.243
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-8120(%rbp), %rax
	movq	%rax, -8064(%rbp)
	movl	$1, -8048(%rbp)
	jmp	.LBB7_59
.LBB7_58:                               # %if.else.244
                                        #   in Loop: Header=BB7_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-8024(%rbp), %rcx
	movq	-8016(%rbp,%rcx,8), %rdi
	callq	g_strtod
	movq	-8064(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rsi, -8064(%rbp)
	movsd	%xmm0, (%rcx)
.LBB7_59:                               # %if.end
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_60
.LBB7_60:                               # %if.end.248
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_61
.LBB7_61:                               # %if.end.249
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_62
.LBB7_62:                               # %if.end.250
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_63
.LBB7_63:                               # %if.end.251
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_64
.LBB7_64:                               # %if.end.252
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_65
.LBB7_65:                               # %if.end.253
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_66
.LBB7_66:                               # %if.end.254
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_67
.LBB7_67:                               # %if.end.255
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_68
.LBB7_68:                               # %if.end.256
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_69
.LBB7_69:                               # %if.end.257
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_70
.LBB7_70:                               # %if.end.258
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_71
.LBB7_71:                               # %if.end.259
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_72
.LBB7_72:                               # %if.end.260
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_73
.LBB7_73:                               # %if.end.261
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_74
.LBB7_74:                               # %if.end.262
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_75
.LBB7_75:                               # %if.end.263
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_76
.LBB7_76:                               # %if.end.264
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_77
.LBB7_77:                               # %if.end.265
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_78
.LBB7_78:                               # %if.end.266
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_79
.LBB7_79:                               # %if.end.267
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_80
.LBB7_80:                               # %if.end.268
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_81
.LBB7_81:                               # %for.inc.269
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-8024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8024(%rbp)
	jmp	.LBB7_13
.LBB7_82:                               # %for.end.271
	cmpl	$0, -8032(%rbp)
	je	.LBB7_84
# BB#83:                                # %if.then.273
	movl	$256, %edx              # imm = 0x100
	cvttsd2si	-8080(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 7928(%rcx)
	movq	-16(%rbp), %rcx
	movl	7928(%rcx), %edi
	movq	-16(%rbp), %rcx
	addq	$1776, %rcx             # imm = 0x6F0
	movq	%rcx, %rsi
	callq	get_cmap
	movl	%eax, -8148(%rbp)       # 4-byte Spill
.LBB7_84:                               # %if.end.278
	cmpl	$0, -8036(%rbp)
	je	.LBB7_86
# BB#85:                                # %if.then.280
	cvttsd2si	-8144(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 7960(%rcx)
	cvttsd2si	-8136(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 7964(%rcx)
.LBB7_86:                               # %if.end.285
	cmpl	$0, -8048(%rbp)
	je	.LBB7_88
# BB#87:                                # %if.then.287
	cvttsd2si	-8120(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8032(%rcx)
.LBB7_88:                               # %if.end.290
	cmpl	$0, -8040(%rbp)
	je	.LBB7_90
# BB#89:                                # %if.then.292
	cvttsd2si	-8096(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8024(%rcx)
.LBB7_90:                               # %if.end.295
	cmpl	$0, -8052(%rbp)
	je	.LBB7_92
# BB#91:                                # %if.then.297
	cvttsd2si	-8112(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 7968(%rcx)
.LBB7_92:                               # %if.end.300
	cmpl	$0, -8044(%rbp)
	je	.LBB7_94
# BB#93:                                # %if.then.302
	cvttsd2si	-8104(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8028(%rcx)
.LBB7_94:                               # %if.end.305
	movl	$0, -8024(%rbp)
.LBB7_95:                               # %for.cond.306
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_97 Depth 2
                                        #     Child Loop BB7_101 Depth 2
	cmpl	$6, -8024(%rbp)
	jge	.LBB7_106
# BB#96:                                # %for.body.309
                                        #   in Loop: Header=BB7_95 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8088(%rbp)
	movl	$0, -8028(%rbp)
.LBB7_97:                               # %for.cond.310
                                        #   Parent Loop BB7_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -8028(%rbp)
	jge	.LBB7_100
# BB#98:                                # %for.body.313
                                        #   in Loop: Header=BB7_97 Depth=2
	movslq	-8028(%rbp), %rax
	movslq	-8024(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-8088(%rbp), %xmm0
	movsd	%xmm0, -8088(%rbp)
# BB#99:                                # %for.inc.320
                                        #   in Loop: Header=BB7_97 Depth=2
	movl	-8028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8028(%rbp)
	jmp	.LBB7_97
.LBB7_100:                              # %for.end.322
                                        #   in Loop: Header=BB7_95 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-8088(%rbp), %xmm0
	movsd	%xmm0, -8088(%rbp)
	movl	$0, -8028(%rbp)
.LBB7_101:                              # %for.cond.323
                                        #   Parent Loop BB7_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -8028(%rbp)
	jge	.LBB7_104
# BB#102:                               # %for.body.326
                                        #   in Loop: Header=BB7_101 Depth=2
	movsd	-8088(%rbp), %xmm0      # xmm0 = mem[0],zero
	movslq	-8028(%rbp), %rax
	movslq	-8024(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
# BB#103:                               # %for.inc.333
                                        #   in Loop: Header=BB7_101 Depth=2
	movl	-8028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8028(%rbp)
	jmp	.LBB7_101
.LBB7_104:                              # %for.end.335
                                        #   in Loop: Header=BB7_95 Depth=1
	jmp	.LBB7_105
.LBB7_105:                              # %for.inc.336
                                        #   in Loop: Header=BB7_95 Depth=1
	movl	-8024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8024(%rbp)
	jmp	.LBB7_95
.LBB7_106:                              # %for.end.338
	movl	$6, %eax
	movl	%eax, %esi
	movl	$296, %eax              # imm = 0x128
	movl	%eax, %edx
	movabsq	$compare_xforms, %rcx
	movq	-16(%rbp), %rdi
	callq	qsort
	addq	$8160, %rsp             # imm = 0x1FE0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	parse_control_point, .Lfunc_end7-parse_control_point
	.cfi_endproc

	.align	16, 0x90
	.type	compare_xforms,@function
compare_xforms:                         # @compare_xforms
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-120(%rbp), %rsi
	movsd	232(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-120(%rbp), %rsi
	movsd	240(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-120(%rbp), %rsi
	movsd	248(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-120(%rbp), %rsi
	movsd	256(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-128(%rbp), %rsi
	movsd	232(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-128(%rbp), %rsi
	movsd	240(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-128(%rbp), %rsi
	movsd	248(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	-128(%rbp), %rsi
	movsd	256(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	%rax, %rdi
	callq	det_matrix
	leaq	-96(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)
	callq	det_matrix
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB8_4
# BB#3:                                 # %if.then.42
	movl	$1, -4(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.43
	movl	$0, -4(%rbp)
.LBB8_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	compare_xforms, .Lfunc_end8-compare_xforms
	.cfi_endproc

	.globl	print_control_point
	.align	16, 0x90
	.type	print_control_point,@function
print_control_point:                    # @print_control_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.22, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	cmovneq	%r8, %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movsd	7920(%rcx), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movb	$1, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	cmpl	$-1, 7928(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	7928(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	7960(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	7964(%rax), %r8d
	movq	-16(%rbp), %rax
	movsd	7976(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	7984(%rax), %xmm1       # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8000(%rax), %xmm2       # xmm2 = mem[0],zero
	movb	$3, %al
	callq	fprintf
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %r9
	movl	7968(%r9), %ecx
	movq	-16(%rbp), %r9
	movsd	8008(%r9), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	fprintf
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movsd	8016(%rdx), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	fprintf
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %r9
	movl	8024(%r9), %ecx
	movq	-16(%rbp), %r9
	movl	8028(%r9), %r8d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.30, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %r9
	movsd	7936(%r9), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %r9
	movsd	7952(%r9), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %r9
	movl	8032(%r9), %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$2, %al
	callq	fprintf
	movl	$0, -24(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #     Child Loop BB9_10 Depth 2
	cmpl	$6, -24(%rbp)
	jge	.LBB9_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	280(%rcx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_14
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.31, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %r8
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %r8
	movsd	280(%r8), %xmm0         # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %r8
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %r8
	movsd	288(%r8), %xmm1         # xmm1 = mem[0],zero
	movb	$2, %al
	callq	fprintf
	movabsq	$.L.str.32, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB9_6:                                # %for.cond.23
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -28(%rbp)
	jge	.LBB9_9
# BB#7:                                 # %for.body.25
                                        #   in Loop: Header=BB9_6 Depth=2
	movabsq	$.L.str.33, %rsi
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movb	$1, %al
	callq	fprintf
	movl	%eax, -80(%rbp)         # 4-byte Spill
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_6
.LBB9_9:                                # %for.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.34, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_10:                               # %for.cond.33
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -28(%rbp)
	jge	.LBB9_13
# BB#11:                                # %for.body.35
                                        #   in Loop: Header=BB9_10 Depth=2
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$232, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	addq	$232, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movb	$2, %al
	callq	fprintf
	movl	%eax, -88(%rbp)         # 4-byte Spill
# BB#12:                                # %for.inc.50
                                        #   in Loop: Header=BB9_10 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_10
.LBB9_13:                               # %for.end.52
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_14:                               # %if.end.54
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %for.inc.55
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_3
.LBB9_16:                               # %for.end.57
	movabsq	$.L.str.37, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -96(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	print_control_point, .Lfunc_end9-print_control_point
	.cfi_endproc

	.globl	random_uniform01
	.align	16, 0x90
	.type	random_uniform01,@function
random_uniform01:                       # @random_uniform01
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	callq	g_random_double
	popq	%rbp
	retq
.Lfunc_end10:
	.size	random_uniform01, .Lfunc_end10-random_uniform01
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	-4616189618054758400    # double -1
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	random_uniform11
	.align	16, 0x90
	.type	random_uniform11,@function
random_uniform11:                       # @random_uniform11
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	callq	g_random_double_range
	popq	%rbp
	retq
.Lfunc_end11:
	.size	random_uniform11, .Lfunc_end11-random_uniform11
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	random_gaussian
	.align	16, 0x90
	.type	random_gaussian,@function
random_gaussian:                        # @random_gaussian
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	cmpl	$0, random_gaussian.iset
	jne	.LBB12_7
# BB#1:                                 # %if.then
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	callq	random_uniform11
	movsd	%xmm0, -32(%rbp)
	callq	random_uniform11
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
# BB#3:                                 # %do.cond
                                        #   in Loop: Header=BB12_2 Depth=1
	movb	$1, %al
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -41(%rbp)          # 1-byte Spill
	jae	.LBB12_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB12_2 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%cl, %al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB12_5:                               # %lor.end
                                        #   in Loop: Header=BB12_2 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_2
# BB#6:                                 # %do.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-24(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, random_gaussian.gset
	movl	$1, random_gaussian.iset
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.end
	movl	$0, random_gaussian.iset
	movsd	random_gaussian.gset, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB12_8:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	random_gaussian, .Lfunc_end12-random_gaussian
	.cfi_endproc

	.globl	copy_variation
	.align	16, 0x90
	.type	copy_variation,@function
copy_variation:                         # @copy_variation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	cmpl	$6, -20(%rbp)
	jge	.LBB13_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -24(%rbp)
.LBB13_3:                               # %for.cond.1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -24(%rbp)
	jge	.LBB13_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB13_3 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc.12
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end.14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	copy_variation, .Lfunc_end13-copy_variation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	random_control_point
	.align	16, 0x90
	.type	random_control_point,@function
random_control_point:                   # @random_control_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$256, %edx              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	addq	$1776, %rdi             # imm = 0x6F0
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	get_cmap
	xorl	%edi, %edi
	movl	$9, %esi
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 7920(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_random_int_range
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movl	random_control_point.xform_distrib(,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	cmpl	-12(%rbp), %edx
	jle	.LBB14_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	movl	$18, %esi
	callq	g_random_int_range
	movslq	%eax, %rcx
	movl	random_control_point.var_distrib(,%rcx,4), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB14_3:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_8 Depth 3
                                        #     Child Loop BB14_14 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_22
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 280(%rcx)
	cmpl	$0, -16(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cvtsi2sdl	%esi, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 288(%rcx)
	movl	$0, -28(%rbp)
.LBB14_6:                               # %for.cond.14
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_8 Depth 3
	cmpl	$3, -28(%rbp)
	jge	.LBB14_13
# BB#7:                                 # %for.body.17
                                        #   in Loop: Header=BB14_6 Depth=2
	movl	$0, -32(%rbp)
.LBB14_8:                               # %for.cond.18
                                        #   Parent Loop BB14_4 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$2, -32(%rbp)
	jge	.LBB14_11
# BB#9:                                 # %for.body.21
                                        #   in Loop: Header=BB14_8 Depth=3
	callq	random_uniform11
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	imulq	$296, %rdx, %rdx        # imm = 0x128
	addq	%rdx, %rsi
	addq	$232, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm0, (%rsi,%rax,8)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB14_8 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_8
.LBB14_11:                              # %for.end
                                        #   in Loop: Header=BB14_6 Depth=2
	jmp	.LBB14_12
.LBB14_12:                              # %for.inc.30
                                        #   in Loop: Header=BB14_6 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_6
.LBB14_13:                              # %for.end.32
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	$0, -28(%rbp)
.LBB14_14:                              # %for.cond.33
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -28(%rbp)
	jge	.LBB14_17
# BB#15:                                # %for.body.36
                                        #   in Loop: Header=BB14_14 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#16:                                # %for.inc.43
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_14
.LBB14_17:                              # %for.end.45
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpl	$0, -24(%rbp)
	jl	.LBB14_19
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB14_4 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
	jmp	.LBB14_20
.LBB14_19:                              # %if.else
                                        #   in Loop: Header=BB14_4 Depth=1
	xorl	%edi, %edi
	movl	$15, %esi
	callq	g_random_int_range
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movslq	random_control_point.mixed_var_distrib(,%rcx,4), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %r8
	imulq	$296, %rdx, %rdx        # imm = 0x128
	addq	%rdx, %r8
	movsd	%xmm0, (%r8,%rcx,8)
.LBB14_20:                              # %if.end
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_21
.LBB14_21:                              # %for.inc.63
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB14_4
.LBB14_22:                              # %for.end.65
	jmp	.LBB14_23
.LBB14_23:                              # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -16(%rbp)
	jge	.LBB14_26
# BB#24:                                # %for.body.69
                                        #   in Loop: Header=BB14_23 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$296, %rax, %rax        # imm = 0x128
	addq	%rax, %rcx
	movsd	%xmm0, 280(%rcx)
# BB#25:                                # %for.inc.74
                                        #   in Loop: Header=BB14_23 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB14_23
.LBB14_26:                              # %for.end.76
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	random_control_point, .Lfunc_end14-random_control_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4621819117588971520     # double 10
.LCPI15_1:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI15_2:
	.quad	-4466831549978902528    # double -1.0E+10
.LCPI15_3:
	.quad	4756540486875873280     # double 1.0E+10
.LCPI15_4:
	.quad	4611686018427387904     # double 2
.LCPI15_5:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	estimate_bounding_box
	.align	16, 0x90
	.type	estimate_bounding_box,@function
estimate_bounding_box:                  # @estimate_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_2
	jp	.LBB15_2
# BB#1:                                 # %cond.true
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB15_3:                               # %cond.end
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rdi
	callq	malloc
	movl	$20, %edx
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-152(%rbp), %rcx
	callq	iterate
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_3, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movl	$0, -36(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB15_7:                               # %if.end
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB15_9:                               # %if.end.30
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB15_11
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
.LBB15_11:                              # %if.end.42
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB15_13
# BB#12:                                # %if.then.49
                                        #   in Loop: Header=BB15_4 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB15_13:                              # %if.end.54
                                        #   in Loop: Header=BB15_4 Depth=1
	jmp	.LBB15_14
.LBB15_14:                              # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_4
.LBB15_15:                              # %for.end
	cmpl	$0, -48(%rbp)
	jne	.LBB15_17
# BB#16:                                # %if.then.57
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB15_45
.LBB15_17:                              # %if.end.66
	movsd	.LCPI15_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_5, %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -144(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-72(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -136(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	mulsd	-144(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movl	$0, -36(%rbp)
.LBB15_18:                              # %for.cond.88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_20 Depth 2
	cmpl	$14, -36(%rbp)
	jge	.LBB15_45
# BB#19:                                # %for.body.91
                                        #   in Loop: Header=BB15_18 Depth=1
	movl	$0, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -40(%rbp)
.LBB15_20:                              # %for.cond.92
                                        #   Parent Loop BB15_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_31
# BB#21:                                # %for.body.95
                                        #   in Loop: Header=BB15_20 Depth=2
	movslq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_23
# BB#22:                                # %if.then.102
                                        #   in Loop: Header=BB15_20 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
.LBB15_23:                              # %if.end.104
                                        #   in Loop: Header=BB15_20 Depth=2
	movslq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB15_25
# BB#24:                                # %if.then.111
                                        #   in Loop: Header=BB15_20 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
.LBB15_25:                              # %if.end.113
                                        #   in Loop: Header=BB15_20 Depth=2
	movslq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_27
# BB#26:                                # %if.then.120
                                        #   in Loop: Header=BB15_20 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
.LBB15_27:                              # %if.end.122
                                        #   in Loop: Header=BB15_20 Depth=2
	movslq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB15_29
# BB#28:                                # %if.then.129
                                        #   in Loop: Header=BB15_20 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
.LBB15_29:                              # %if.end.131
                                        #   in Loop: Header=BB15_20 Depth=2
	jmp	.LBB15_30
.LBB15_30:                              # %for.inc.132
                                        #   in Loop: Header=BB15_20 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_20
.LBB15_31:                              # %for.end.134
                                        #   in Loop: Header=BB15_18 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_33
# BB#32:                                # %cond.true.137
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB15_34
.LBB15_33:                              # %cond.false.139
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB15_34:                              # %cond.end.142
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movl	-160(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	jge	.LBB15_36
# BB#35:                                # %cond.true.148
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB15_37
.LBB15_36:                              # %cond.false.150
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB15_37:                              # %cond.end.153
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movl	-168(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	jge	.LBB15_39
# BB#38:                                # %cond.true.159
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB15_40
.LBB15_39:                              # %cond.false.161
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB15_40:                              # %cond.end.164
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movl	-164(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	jge	.LBB15_42
# BB#41:                                # %cond.true.170
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB15_43
.LBB15_42:                              # %cond.false.172
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB15_43:                              # %cond.end.175
                                        #   in Loop: Header=BB15_18 Depth=1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_4, %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
# BB#44:                                # %for.inc.185
                                        #   in Loop: Header=BB15_18 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_18
.LBB15_45:                              # %for.end.187
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	estimate_bounding_box, .Lfunc_end15-estimate_bounding_box
	.cfi_endproc

	.globl	standard_metric
	.align	16, 0x90
	.type	standard_metric,@function
standard_metric:                        # @standard_metric
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$0, -20(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
                                        #     Child Loop BB16_7 Depth 2
                                        #       Child Loop BB16_9 Depth 3
	cmpl	$6, -20(%rbp)
	jge	.LBB16_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	$0, -24(%rbp)
.LBB16_3:                               # %for.cond.1
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$29, -24(%rbp)
	jge	.LBB16_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB16_3 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$296, %rcx, %rcx        # imm = 0x128
	addq	%rcx, %rdx
	subsd	(%rdx,%rax,8), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$0, -24(%rbp)
.LBB16_7:                               # %for.cond.12
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_9 Depth 3
	cmpl	$3, -24(%rbp)
	jge	.LBB16_14
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB16_7 Depth=2
	movl	$0, -28(%rbp)
.LBB16_9:                               # %for.cond.15
                                        #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$2, -28(%rbp)
	jge	.LBB16_12
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB16_9 Depth=3
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	imulq	$296, %rdx, %rdx        # imm = 0x128
	addq	%rdx, %rsi
	addq	$232, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	(%rsi,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	$296, %rdx, %rdx        # imm = 0x128
	addq	%rdx, %rsi
	addq	$232, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	subsd	(%rsi,%rax,8), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# BB#11:                                # %for.inc.36
                                        #   in Loop: Header=BB16_9 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_9
.LBB16_12:                              # %for.end.38
                                        #   in Loop: Header=BB16_7 Depth=2
	jmp	.LBB16_13
.LBB16_13:                              # %for.inc.39
                                        #   in Loop: Header=BB16_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_7
.LBB16_14:                              # %for.end.41
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#15:                                # %for.inc.44
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_1
.LBB16_16:                              # %for.end.46
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end16:
	.size	standard_metric, .Lfunc_end16-standard_metric
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	interpolate_complex,@function
interpolate_complex:                    # @interpolate_complex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-32(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-32(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB17_2:                               # %if.end
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -120(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -128(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	log
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	log
	leaq	-120(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	callq	interpolate_angle
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-152(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	exp
	movsd	%xmm0, -160(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	mulsd	-160(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	mulsd	-160(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.49
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB17_5:                               # %if.end.58
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	interpolate_complex, .Lfunc_end17-interpolate_complex
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4614256656552271028     # double 3.1415926536897931
.LCPI18_1:
	.quad	4614256656551820668     # double 3.1415926534897931
.LCPI18_2:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	interpolate_angle,@function
interpolate_angle:                      # @interpolate_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB18_6
# BB#1:                                 # %if.then
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB18_4
# BB#2:                                 # %lor.lhs.false
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	je	.LBB18_5
.LBB18_4:                               # %if.then.3
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB18_5:                               # %if.end
	jmp	.LBB18_11
.LBB18_6:                               # %if.else
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB18_9
# BB#7:                                 # %lor.lhs.false.6
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_10
# BB#8:                                 # %land.lhs.true.8
	cmpl	$0, -44(%rbp)
	je	.LBB18_10
.LBB18_9:                               # %if.then.10
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB18_10:                              # %if.end.12
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.13
	cmpl	$0, -48(%rbp)
	je	.LBB18_20
# BB#12:                                # %if.then.15
	movsd	interpolate_angle.lastx, %xmm0 # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB18_16
# BB#13:                                # %if.then.17
	movsd	interpolate_angle.lasty, %xmm0 # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_15
# BB#14:                                # %if.then.19
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB18_15:                              # %if.end.21
	jmp	.LBB18_19
.LBB18_16:                              # %if.else.22
	movsd	interpolate_angle.lasty, %xmm0 # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB18_18
# BB#17:                                # %if.then.24
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB18_18:                              # %if.end.26
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.27
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.28
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, interpolate_angle.lastx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, interpolate_angle.lasty
.LBB18_21:                              # %if.end.29
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	interpolate_angle, .Lfunc_end18-interpolate_angle
	.cfi_endproc

	.align	16, 0x90
	.type	det_matrix,@function
det_matrix:                             # @det_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm1
	subsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end19:
	.size	det_matrix, .Lfunc_end19-det_matrix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xform"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"time"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"brightness"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"contrast"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gamma"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"zoom"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image_size"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"center"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pulse"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"wiggle"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pixels_per_unit"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"spatial_filter_radius"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"sample_density"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nbatches"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"white_level"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"spatial_oversample"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cmap"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"density"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"color"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"coefs"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"var"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"cmap_inter"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"# "
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%stime %g\n"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%scmap %d\n"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%simage_size %d %d center %g %g pixels_per_unit %g\n"
	.size	.L.str.26, 52

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%sspatial_oversample %d spatial_filter_radius %g"
	.size	.L.str.27, 49

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" sample_density %g\n"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%snbatches %d white_level %d\n"
	.size	.L.str.29, 30

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%sbrightness %g gamma %g cmap_inter %d\n"
	.size	.L.str.30, 40

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%sxform %d density %g color %g\n"
	.size	.L.str.31, 32

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%svar"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" %g"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\n%scoefs"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	" %g %g"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\n"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s;\n"
	.size	.L.str.37, 5

	.type	random_gaussian.iset,@object # @random_gaussian.iset
	.local	random_gaussian.iset
	.comm	random_gaussian.iset,4,4
	.type	random_gaussian.gset,@object # @random_gaussian.gset
	.local	random_gaussian.gset
	.comm	random_gaussian.gset,8,8
	.type	random_control_point.xform_distrib,@object # @random_control_point.xform_distrib
	.data
	.align	16
random_control_point.xform_distrib:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	random_control_point.xform_distrib, 36

	.type	random_control_point.var_distrib,@object # @random_control_point.var_distrib
	.align	16
random_control_point.var_distrib:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	random_control_point.var_distrib, 72

	.type	random_control_point.mixed_var_distrib,@object # @random_control_point.mixed_var_distrib
	.align	16
random_control_point.mixed_var_distrib:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	5                       # 0x5
	.size	random_control_point.mixed_var_distrib, 60

	.type	interpolate_angle.lastx,@object # @interpolate_angle.lastx
	.local	interpolate_angle.lastx
	.comm	interpolate_angle.lastx,8,8
	.type	interpolate_angle.lasty,@object # @interpolate_angle.lasty
	.local	interpolate_angle.lasty
	.comm	interpolate_angle.lasty,8,8
	.type	flam3_random_bit.n,@object # @flam3_random_bit.n
	.local	flam3_random_bit.n
	.comm	flam3_random_bit.n,4,4
	.type	flam3_random_bit.l,@object # @flam3_random_bit.l
	.local	flam3_random_bit.l
	.comm	flam3_random_bit.l,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
