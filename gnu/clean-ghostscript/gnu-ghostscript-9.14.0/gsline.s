	.text
	.file	"gsline.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_setlinewidth
	.align	16, 0x90
	.type	gs_setlinewidth,@function
gs_setlinewidth:                        # @gs_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	fabs
	mulsd	.LCPI0_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_setlinewidth, .Lfunc_end0-gs_setlinewidth
	.cfi_endproc

	.globl	gs_currentlinewidth
	.align	16, 0x90
	.type	gs_currentlinewidth,@function
gs_currentlinewidth:                    # @gs_currentlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	movss	24(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	retq
.Lfunc_end1:
	.size	gs_currentlinewidth, .Lfunc_end1-gs_currentlinewidth
	.cfi_endproc

	.globl	gs_setlinecap
	.align	16, 0x90
	.type	gs_setlinecap,@function
gs_setlinecap:                          # @gs_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %esi
	ja	.LBB2_2
# BB#1:                                 # %if.end
	movl	%esi, 28(%rdi)
	movl	%esi, 32(%rdi)
	movl	%esi, 36(%rdi)
	xorl	%eax, %eax
.LBB2_2:                                # %return
	retq
.Lfunc_end2:
	.size	gs_setlinecap, .Lfunc_end2-gs_setlinecap
	.cfi_endproc

	.globl	gs_setlinestartcap
	.align	16, 0x90
	.type	gs_setlinestartcap,@function
gs_setlinestartcap:                     # @gs_setlinestartcap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %esi
	ja	.LBB3_2
# BB#1:                                 # %if.end
	movl	%esi, 28(%rdi)
	xorl	%eax, %eax
.LBB3_2:                                # %return
	retq
.Lfunc_end3:
	.size	gs_setlinestartcap, .Lfunc_end3-gs_setlinestartcap
	.cfi_endproc

	.globl	gs_setlineendcap
	.align	16, 0x90
	.type	gs_setlineendcap,@function
gs_setlineendcap:                       # @gs_setlineendcap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %esi
	ja	.LBB4_2
# BB#1:                                 # %if.end
	movl	%esi, 32(%rdi)
	xorl	%eax, %eax
.LBB4_2:                                # %return
	retq
.Lfunc_end4:
	.size	gs_setlineendcap, .Lfunc_end4-gs_setlineendcap
	.cfi_endproc

	.globl	gs_setlinedashcap
	.align	16, 0x90
	.type	gs_setlinedashcap,@function
gs_setlinedashcap:                      # @gs_setlinedashcap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %esi
	ja	.LBB5_2
# BB#1:                                 # %if.end
	movl	%esi, 36(%rdi)
	xorl	%eax, %eax
.LBB5_2:                                # %return
	retq
.Lfunc_end5:
	.size	gs_setlinedashcap, .Lfunc_end5-gs_setlinedashcap
	.cfi_endproc

	.globl	gs_currentlinecap
	.align	16, 0x90
	.type	gs_currentlinecap,@function
gs_currentlinecap:                      # @gs_currentlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	28(%rdi), %eax
	retq
.Lfunc_end6:
	.size	gs_currentlinecap, .Lfunc_end6-gs_currentlinecap
	.cfi_endproc

	.globl	gs_setlinejoin
	.align	16, 0x90
	.type	gs_setlinejoin,@function
gs_setlinejoin:                         # @gs_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$4, %esi
	ja	.LBB7_2
# BB#1:                                 # %if.end
	movl	%esi, 40(%rdi)
	xorl	%eax, %eax
.LBB7_2:                                # %return
	retq
.Lfunc_end7:
	.size	gs_setlinejoin, .Lfunc_end7-gs_setlinejoin
	.cfi_endproc

	.globl	gs_currentlinejoin
	.align	16, 0x90
	.type	gs_currentlinejoin,@function
gs_currentlinejoin:                     # @gs_currentlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	40(%rdi), %eax
	retq
.Lfunc_end8:
	.size	gs_currentlinejoin, .Lfunc_end8-gs_currentlinejoin
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4611686243607369273     # double 2.0001000000000002
.LCPI9_2:
	.quad	4611685568067425167     # double 1.9999
.LCPI9_3:
	.quad	-4616189618054758400    # double -1
.LCPI9_4:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	gx_set_miter_limit
	.align	16, 0x90
	.type	gx_set_miter_limit,@function
gx_set_miter_limit:                     # @gx_set_miter_limit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 32
.Ltmp4:
	.cfi_offset %rbx, -16
	movapd	%xmm0, %xmm1
	movq	%rdi, %rbx
	movl	$-15, %eax
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB9_8
# BB#1:                                 # %if.end
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 24(%rbx)
	mulsd	%xmm1, %xmm1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_4
# BB#2:                                 # %if.end
	ucomisd	.LCPI9_2(%rip), %xmm1
	jbe	.LBB9_4
# BB#3:                                 # %if.then.5
	movl	$1232348160, 28(%rbx)   # imm = 0x49742400
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB9_6
# BB#5:                                 # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB9_6:                                # %if.else.split
	addsd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI9_4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 28(%rbx)
.LBB9_7:                                # %return
	xorl	%eax, %eax
.LBB9_8:                                # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gx_set_miter_limit, .Lfunc_end9-gx_set_miter_limit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4611686243607369273     # double 2.0001000000000002
.LCPI10_2:
	.quad	4611685568067425167     # double 1.9999
.LCPI10_3:
	.quad	-4616189618054758400    # double -1
.LCPI10_4:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	gs_setmiterlimit
	.align	16, 0x90
	.type	gs_setmiterlimit,@function
gs_setmiterlimit:                       # @gs_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -16
	movapd	%xmm0, %xmm1
	movq	%rdi, %rbx
	movl	$-15, %eax
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB10_8
# BB#1:                                 # %if.end.i
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 48(%rbx)
	mulsd	%xmm1, %xmm1
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_4
# BB#2:                                 # %if.end.i
	ucomisd	.LCPI10_2(%rip), %xmm1
	jbe	.LBB10_4
# BB#3:                                 # %if.then.5.i
	movl	$1232348160, 52(%rbx)   # imm = 0x49742400
	jmp	.LBB10_7
.LBB10_4:                               # %if.else.i
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB10_6
# BB#5:                                 # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB10_6:                               # %if.else.i.split
	addsd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI10_4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 52(%rbx)
.LBB10_7:                               # %gx_set_miter_limit.exit
	xorl	%eax, %eax
.LBB10_8:                               # %gx_set_miter_limit.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	gs_setmiterlimit, .Lfunc_end10-gs_setmiterlimit
	.cfi_endproc

	.globl	gs_currentmiterlimit
	.align	16, 0x90
	.type	gs_currentmiterlimit,@function
gs_currentmiterlimit:                   # @gs_currentmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	movss	48(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end11:
	.size	gs_currentmiterlimit, .Lfunc_end11-gs_currentmiterlimit
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_set_dash
	.align	16, 0x90
	.type	gx_set_dash,@function
gx_set_dash:                            # @gx_set_dash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 128
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movapd	%xmm0, %xmm2
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	movl	%r15d, %edx
	movl	%edx, %r14d
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
	xorps	%xmm3, %xmm3
	.align	16, 0x90
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edi, %r14d
	je	.LBB12_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movss	(%rbp,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	incq	%rdi
	ucomiss	%xmm1, %xmm0
	addss	%xmm1, %xmm3
	movl	$-15, %eax
	jbe	.LBB12_1
	jmp	.LBB12_33
.LBB12_3:                               # %while.end
	testl	%r15d, %r15d
	je	.LBB12_4
# BB#8:                                 # %if.else
	movl	$-15, %eax
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm3
	jne	.LBB12_9
	jnp	.LBB12_33
.LBB12_9:                               # %if.end.12
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	testb	$1, %r15b
	jne	.LBB12_10
# BB#13:                                # %if.else.34
	cvtss2sd	%xmm3, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movss	%xmm3, 60(%rsp)         # 4-byte Spill
	callq	floor
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	divss	60(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm4
	movl	$1, %r13d
	jmp	.LBB12_14
.LBB12_4:                               # %if.then.3
	xorps	%xmm1, %xmm1
	xorl	%r12d, %r12d
	movl	$1, %r13d
	testq	%rcx, %rcx
	je	.LBB12_32
# BB#5:                                 # %if.then.3
	movss	%xmm3, 60(%rsp)         # 4-byte Spill
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB12_6
# BB#7:                                 # %if.then.6
	movl	$.L.str, %edx
	movq	%rcx, %rdi
	callq	*24(%rcx)
	xorps	%xmm1, %xmm1
	xorl	%r12d, %r12d
	xorl	%esi, %esi
.LBB12_6:
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB12_32
.LBB12_10:                              # %if.then.14
	movaps	%xmm3, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movss	%xmm3, 60(%rsp)         # 4-byte Spill
	callq	floor
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	divss	8(%rsp), %xmm0          # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	movss	60(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm4
	ucomiss	%xmm1, %xmm4
	sbbl	%r13d, %r13d
	ucomiss	%xmm1, %xmm4
	jb	.LBB12_12
# BB#11:                                # %if.then.14
	subss	%xmm1, %xmm4
.LBB12_12:                              # %if.then.14
	andl	$1, %r13d
.LBB12_14:                              # %while.cond.51.preheader
	movss	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm4
	xorl	%r12d, %r12d
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm4
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jae	.LBB12_16
# BB#15:
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB12_20
.LBB12_16:                              # %land.rhs.preheader
	xorl	%r12d, %r12d
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB12_17:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ucomiss	%xmm0, %xmm1
	jne	.LBB12_19
	jp	.LBB12_19
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB12_17 Depth=1
	ucomiss	%xmm0, %xmm4
	jbe	.LBB12_20
.LBB12_19:                              # %while.body.61
                                        #   in Loop: Header=BB12_17 Depth=1
	xorl	$1, %r13d
	movss	4(%rbp,%r12,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	incq	%r12
	subss	%xmm1, %xmm4
	ucomiss	%xmm0, %xmm4
	jae	.LBB12_17
.LBB12_20:                              # %while.end.65
	shlq	$2, %r8
	testq	%rdi, %rdi
	je	.LBB12_21
# BB#22:                                # %if.then.67
	movss	%xmm3, 60(%rsp)         # 4-byte Spill
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB12_23
# BB#24:                                # %if.else.73
	cmpl	%r14d, 8(%rbx)
	jne	.LBB12_26
# BB#25:
	movaps	%xmm4, 32(%rsp)         # 16-byte Spill
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB12_28
.LBB12_21:
	movaps	%xmm4, 32(%rsp)         # 16-byte Spill
	jmp	.LBB12_28
.LBB12_23:                              # %if.then.70
	movaps	%xmm4, 32(%rsp)         # 16-byte Spill
	movl	$.L.str.1, %edx
	movl	%r8d, %esi
	movq	%r8, %r14
	callq	*64(%rdi)
	jmp	.LBB12_27
.LBB12_26:                              # %if.then.76
	movaps	%xmm4, 32(%rsp)         # 16-byte Spill
	movl	$.L.str.1, %ecx
	movq	%rdx, %rsi
	movl	%r8d, %edx
	movq	%r8, %r14
	callq	*16(%rdi)
.LBB12_27:                              # %if.end.80
	movq	%rax, %rdx
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movl	$-25, %eax
	testq	%rdx, %rdx
	movq	%r14, %r8
	je	.LBB12_33
.LBB12_28:                              # %if.end.85
	cmpq	%rbp, %rdx
	je	.LBB12_29
# BB#30:                                # %if.then.88
	movq	%rdx, %rdi
	movq	%rdx, %r14
	movq	%rbp, %rsi
	movq	%r8, %rdx
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movss	%xmm3, 60(%rsp)         # 4-byte Spill
	callq	memcpy
	movq	%r14, %rsi
	movss	60(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB12_31
.LBB12_29:
	movq	%rbp, %rsi
.LBB12_31:                              # %if.end.96
	movaps	32(%rsp), %xmm1         # 16-byte Reload
.LBB12_32:                              # %if.end.96
	movq	%rsi, (%rbx)
	movl	%r15d, 8(%rbx)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 12(%rbx)
	movss	%xmm3, 20(%rbx)
	movl	%r13d, 24(%rbx)
	movl	%r12d, 28(%rbx)
	xorps	.LCPI12_0(%rip), %xmm1
	movss	%xmm1, 32(%rbx)
	xorl	%eax, %eax
.LBB12_33:                              # %cleanup.103
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_set_dash, .Lfunc_end12-gx_set_dash
	.cfi_endproc

	.globl	gs_setdash
	.align	16, 0x90
	.type	gs_setdash,@function
gs_setdash:                             # @gs_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rcx
	addq	$88, %rdi
	jmp	gx_set_dash             # TAILCALL
.Lfunc_end13:
	.size	gs_setdash, .Lfunc_end13-gs_setdash
	.cfi_endproc

	.globl	gs_currentdash_length
	.align	16, 0x90
	.type	gs_currentdash_length,@function
gs_currentdash_length:                  # @gs_currentdash_length
	.cfi_startproc
# BB#0:                                 # %entry
	movl	96(%rdi), %eax
	retq
.Lfunc_end14:
	.size	gs_currentdash_length, .Lfunc_end14-gs_currentdash_length
	.cfi_endproc

	.globl	gs_currentdash_pattern
	.align	16, 0x90
	.type	gs_currentdash_pattern,@function
gs_currentdash_pattern:                 # @gs_currentdash_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	88(%rdi), %rax
	retq
.Lfunc_end15:
	.size	gs_currentdash_pattern, .Lfunc_end15-gs_currentdash_pattern
	.cfi_endproc

	.globl	gs_currentdash_offset
	.align	16, 0x90
	.type	gs_currentdash_offset,@function
gs_currentdash_offset:                  # @gs_currentdash_offset
	.cfi_startproc
# BB#0:                                 # %entry
	movss	100(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end16:
	.size	gs_currentdash_offset, .Lfunc_end16-gs_currentdash_offset
	.cfi_endproc

	.globl	gs_currentlineparams
	.align	16, 0x90
	.type	gs_currentlineparams,@function
gs_currentlineparams:                   # @gs_currentlineparams
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	24(%rdi), %rax
	retq
.Lfunc_end17:
	.size	gs_currentlineparams, .Lfunc_end17-gs_currentlineparams
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI18_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gs_imager_setflat
	.align	16, 0x90
	.type	gs_imager_setflat,@function
gs_imager_setflat:                      # @gs_imager_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB18_3
# BB#1:                                 # %if.else
	ucomisd	.LCPI18_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	jbe	.LBB18_3
# BB#2:                                 # %if.then.2
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB18_3:                               # %if.end.3
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 296(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	gs_imager_setflat, .Lfunc_end18-gs_imager_setflat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI19_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gs_setflat
	.align	16, 0x90
	.type	gs_setflat,@function
gs_setflat:                             # @gs_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB19_3
# BB#1:                                 # %if.else.i
	ucomisd	.LCPI19_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	jbe	.LBB19_3
# BB#2:                                 # %if.then.2.i
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB19_3:                               # %gs_imager_setflat.exit
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 296(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	gs_setflat, .Lfunc_end19-gs_setflat
	.cfi_endproc

	.globl	gs_currentflat
	.align	16, 0x90
	.type	gs_currentflat,@function
gs_currentflat:                         # @gs_currentflat
	.cfi_startproc
# BB#0:                                 # %entry
	movss	296(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end20:
	.size	gs_currentflat, .Lfunc_end20-gs_currentflat
	.cfi_endproc

	.globl	gs_setstrokeadjust
	.align	16, 0x90
	.type	gs_setstrokeadjust,@function
gs_setstrokeadjust:                     # @gs_setstrokeadjust
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 308(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	gs_setstrokeadjust, .Lfunc_end21-gs_setstrokeadjust
	.cfi_endproc

	.globl	gs_currentstrokeadjust
	.align	16, 0x90
	.type	gs_currentstrokeadjust,@function
gs_currentstrokeadjust:                 # @gs_currentstrokeadjust
	.cfi_startproc
# BB#0:                                 # %entry
	movl	308(%rdi), %eax
	retq
.Lfunc_end22:
	.size	gs_currentstrokeadjust, .Lfunc_end22-gs_currentstrokeadjust
	.cfi_endproc

	.globl	gs_setdashadapt
	.align	16, 0x90
	.type	gs_setdashadapt,@function
gs_setdashadapt:                        # @gs_setdashadapt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 104(%rdi)
	retq
.Lfunc_end23:
	.size	gs_setdashadapt, .Lfunc_end23-gs_setdashadapt
	.cfi_endproc

	.globl	gs_imager_currentdashadapt
	.align	16, 0x90
	.type	gs_imager_currentdashadapt,@function
gs_imager_currentdashadapt:             # @gs_imager_currentdashadapt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	104(%rdi), %eax
	retq
.Lfunc_end24:
	.size	gs_imager_currentdashadapt, .Lfunc_end24-gs_imager_currentdashadapt
	.cfi_endproc

	.globl	gs_currentdashadapt
	.align	16, 0x90
	.type	gs_currentdashadapt,@function
gs_currentdashadapt:                    # @gs_currentdashadapt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	104(%rdi), %eax
	retq
.Lfunc_end25:
	.size	gs_currentdashadapt, .Lfunc_end25-gs_currentdashadapt
	.cfi_endproc

	.globl	gs_setcurvejoin
	.align	16, 0x90
	.type	gs_setcurvejoin,@function
gs_setcurvejoin:                        # @gs_setcurvejoin
	.cfi_startproc
# BB#0:                                 # %entry
	leal	1(%rsi), %ecx
	movl	$-15, %eax
	cmpl	$5, %ecx
	ja	.LBB26_2
# BB#1:                                 # %if.end
	movl	%esi, 44(%rdi)
	xorl	%eax, %eax
.LBB26_2:                               # %return
	retq
.Lfunc_end26:
	.size	gs_setcurvejoin, .Lfunc_end26-gs_setcurvejoin
	.cfi_endproc

	.globl	gs_currentcurvejoin
	.align	16, 0x90
	.type	gs_currentcurvejoin,@function
gs_currentcurvejoin:                    # @gs_currentcurvejoin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	44(%rdi), %eax
	retq
.Lfunc_end27:
	.size	gs_currentcurvejoin, .Lfunc_end27-gs_currentcurvejoin
	.cfi_endproc

	.globl	gs_setaccuratecurves
	.align	16, 0x90
	.type	gs_setaccuratecurves,@function
gs_setaccuratecurves:                   # @gs_setaccuratecurves
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 312(%rdi)
	retq
.Lfunc_end28:
	.size	gs_setaccuratecurves, .Lfunc_end28-gs_setaccuratecurves
	.cfi_endproc

	.globl	gs_imager_currentaccuratecurves
	.align	16, 0x90
	.type	gs_imager_currentaccuratecurves,@function
gs_imager_currentaccuratecurves:        # @gs_imager_currentaccuratecurves
	.cfi_startproc
# BB#0:                                 # %entry
	movl	312(%rdi), %eax
	retq
.Lfunc_end29:
	.size	gs_imager_currentaccuratecurves, .Lfunc_end29-gs_imager_currentaccuratecurves
	.cfi_endproc

	.globl	gs_currentaccuratecurves
	.align	16, 0x90
	.type	gs_currentaccuratecurves,@function
gs_currentaccuratecurves:               # @gs_currentaccuratecurves
	.cfi_startproc
# BB#0:                                 # %entry
	movl	312(%rdi), %eax
	retq
.Lfunc_end30:
	.size	gs_currentaccuratecurves, .Lfunc_end30-gs_currentaccuratecurves
	.cfi_endproc

	.globl	gx_set_dot_length
	.align	16, 0x90
	.type	gx_set_dot_length,@function
gx_set_dot_length:                      # @gx_set_dot_length
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB31_2
# BB#1:                                 # %if.end
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rdi)
	movl	%esi, 36(%rdi)
	xorl	%eax, %eax
.LBB31_2:                               # %return
	retq
.Lfunc_end31:
	.size	gx_set_dot_length, .Lfunc_end31-gx_set_dot_length
	.cfi_endproc

	.globl	gs_setdotlength
	.align	16, 0x90
	.type	gs_setdotlength,@function
gs_setdotlength:                        # @gs_setdotlength
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB32_2
# BB#1:                                 # %if.end.i
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rdi)
	movl	%esi, 60(%rdi)
	xorl	%eax, %eax
.LBB32_2:                               # %gx_set_dot_length.exit
	retq
.Lfunc_end32:
	.size	gs_setdotlength, .Lfunc_end32-gs_setdotlength
	.cfi_endproc

	.globl	gs_currentdotlength
	.align	16, 0x90
	.type	gs_currentdotlength,@function
gs_currentdotlength:                    # @gs_currentdotlength
	.cfi_startproc
# BB#0:                                 # %entry
	movss	56(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end33:
	.size	gs_currentdotlength, .Lfunc_end33-gs_currentdotlength
	.cfi_endproc

	.globl	gs_currentdotlength_absolute
	.align	16, 0x90
	.type	gs_currentdotlength_absolute,@function
gs_currentdotlength_absolute:           # @gs_currentdotlength_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	movl	60(%rdi), %eax
	retq
.Lfunc_end34:
	.size	gs_currentdotlength_absolute, .Lfunc_end34-gs_currentdotlength_absolute
	.cfi_endproc

	.globl	gs_setdotorientation
	.align	16, 0x90
	.type	gs_setdotorientation,@function
gs_setdotorientation:                   # @gs_setdotorientation
	.cfi_startproc
# BB#0:                                 # %entry
	movss	136(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB35_2
	jp	.LBB35_2
# BB#1:                                 # %land.lhs.true
	movss	140(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB35_2
	jnp	.LBB35_4
.LBB35_2:                               # %lor.lhs.false
	movss	132(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB35_5
	jp	.LBB35_5
# BB#3:                                 # %land.lhs.true.10
	movss	144(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB35_5
	jp	.LBB35_5
.LBB35_4:                               # %if.then
	leaq	64(%rdi), %rsi
	jmp	gs_currentmatrix        # TAILCALL
.LBB35_5:                               # %return
	movl	$-15, %eax
	retq
.Lfunc_end35:
	.size	gs_setdotorientation, .Lfunc_end35-gs_setdotorientation
	.cfi_endproc

	.globl	gs_dotorientation
	.align	16, 0x90
	.type	gs_dotorientation,@function
gs_dotorientation:                      # @gs_dotorientation
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	64(%rdi), %rsi
	jmp	gs_setmatrix            # TAILCALL
.Lfunc_end36:
	.size	gs_dotorientation, .Lfunc_end36-gs_dotorientation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_set_dash(old pattern)"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_set_dash(pattern)"
	.size	.L.str.1, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
