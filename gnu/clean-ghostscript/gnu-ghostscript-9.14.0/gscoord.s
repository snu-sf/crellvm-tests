	.text
	.file	"gscoord.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	3405774848              # float -8388608
.LCPI0_1:
	.long	1258291200              # float 8388608
.LCPI0_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_initmatrix
	.align	16, 0x90
	.type	gs_initmatrix,@function
gs_initmatrix:                          # @gs_initmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpl	$0, 1676(%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.then.i
	movq	1668(%rbx), %rax
	movq	%rax, 16(%rsp)
	movups	1652(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_3
.LBB0_2:                                # %if.end.i
	movq	1872(%rbx), %r14
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_deviceinitialmatrix
	movss	900(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	884(%r14), %xmm0
	divss	892(%r14), %xmm0
	addss	16(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movss	904(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	888(%r14), %xmm1
	divss	896(%r14), %xmm1
	addss	20(%rsp), %xmm1
	movss	%xmm1, 20(%rsp)
.LBB0_3:                                # %gs_defaultmatrix.exit
	movl	$0, 1648(%rbx)
	movl	$0, 1844(%rbx)
	ucomiss	.LCPI0_0(%rip), %xmm0
	jb	.LBB0_5
# BB#4:                                 # %gs_defaultmatrix.exit
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB0_5
# BB#6:                                 # %land.lhs.true.6
	movss	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm1
	jb	.LBB0_8
# BB#7:                                 # %land.lhs.true.6
	ucomiss	%xmm1, %xmm2
	jbe	.LBB0_8
# BB#11:                                # %cond.true.47
	movss	%xmm0, 148(%rbx)
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 156(%rbx)
	movss	%xmm1, 152(%rbx)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 160(%rbx)
	movl	$1, %eax
	jmp	.LBB0_10
.LBB0_5:                                # %gs_defaultmatrix.exit.cond.false.56_crit_edge
	movl	20(%rsp), %eax
	jmp	.LBB0_9
.LBB0_8:                                # %land.lhs.true.6.cond.false.56_crit_edge
	movd	%xmm1, %eax
.LBB0_9:                                # %cond.false.56
	movss	%xmm0, 148(%rbx)
	movl	%eax, 152(%rbx)
	xorl	%eax, %eax
.LBB0_10:                               # %cond.end.63
	movl	%eax, 164(%rbx)
	movq	16(%rsp), %rax
	movq	%rax, 148(%rbx)
	movaps	(%rsp), %xmm0
	movups	%xmm0, 132(%rbx)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_initmatrix, .Lfunc_end0-gs_initmatrix
	.cfi_endproc

	.globl	gs_defaultmatrix
	.align	16, 0x90
	.type	gs_defaultmatrix,@function
gs_defaultmatrix:                       # @gs_defaultmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	cmpl	$0, 1676(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	1668(%rdi), %rax
	movq	%rax, 16(%rbx)
	movups	1652(%rdi), %xmm0
	movups	%xmm0, (%rbx)
	movl	$1, %eax
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	1872(%rdi), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_deviceinitialmatrix
	movss	900(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	884(%r14), %xmm0
	divss	892(%r14), %xmm0
	addss	16(%rbx), %xmm0
	movss	%xmm0, 16(%rbx)
	movss	904(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	888(%r14), %xmm0
	divss	896(%r14), %xmm0
	addss	20(%rbx), %xmm0
	movss	%xmm0, 20(%rbx)
	xorl	%eax, %eax
.LBB1_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gs_defaultmatrix, .Lfunc_end1-gs_defaultmatrix
	.cfi_endproc

	.globl	gs_setdefaultmatrix
	.align	16, 0x90
	.type	gs_setdefaultmatrix,@function
gs_setdefaultmatrix:                    # @gs_setdefaultmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.else
	movq	16(%rsi), %rax
	movq	%rax, 1668(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, 1652(%rdi)
	movl	$1, %eax
.LBB2_2:                                # %if.end
	movl	%eax, 1676(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gs_setdefaultmatrix, .Lfunc_end2-gs_setdefaultmatrix
	.cfi_endproc

	.globl	gs_currentmatrix
	.align	16, 0x90
	.type	gs_currentmatrix,@function
gs_currentmatrix:                       # @gs_currentmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	148(%rdi), %rax
	movq	%rax, 16(%rsi)
	movups	132(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gs_currentmatrix, .Lfunc_end3-gs_currentmatrix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	3405774848              # float -8388608
.LCPI4_1:
	.long	1258291200              # float 8388608
.LCPI4_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_setcharmatrix
	.align	16, 0x90
	.type	gs_setcharmatrix,@function
gs_setcharmatrix:                       # @gs_setcharmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %rax
	leaq	8(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB4_9
# BB#1:                                 # %if.end
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_0(%rip), %xmm0
	jb	.LBB4_3
# BB#2:                                 # %if.end
	movss	.LCPI4_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB4_3
# BB#4:                                 # %land.lhs.true.7
	movss	28(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_0(%rip), %xmm1
	jb	.LBB4_6
# BB#5:                                 # %land.lhs.true.7
	ucomiss	%xmm1, %xmm2
	jbe	.LBB4_6
# BB#10:                                # %cond.true.48
	movss	%xmm0, 1824(%rbx)
	movss	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 1832(%rbx)
	movss	%xmm1, 1828(%rbx)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 1836(%rbx)
	movl	$1, %eax
	jmp	.LBB4_8
.LBB4_3:                                # %if.end.cond.false.57_crit_edge
	movl	28(%rsp), %eax
	jmp	.LBB4_7
.LBB4_6:                                # %land.lhs.true.7.cond.false.57_crit_edge
	movd	%xmm1, %eax
.LBB4_7:                                # %cond.false.57
	movss	%xmm0, 1824(%rbx)
	movl	%eax, 1828(%rbx)
	xorl	%eax, %eax
.LBB4_8:                                # %cond.end.64
	movl	%eax, 1840(%rbx)
	movq	24(%rsp), %rax
	movq	%rax, 1824(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 1808(%rbx)
	movl	$1, 1844(%rbx)
	xorl	%eax, %eax
.LBB4_9:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_setcharmatrix, .Lfunc_end4-gs_setcharmatrix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	3405774848              # float -8388608
.LCPI5_1:
	.long	1258291200              # float 8388608
.LCPI5_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_currentcharmatrix
	.align	16, 0x90
	.type	gs_currentcharmatrix,@function
gs_currentcharmatrix:                   # @gs_currentcharmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 1844(%rbx)
	jne	.LBB5_11
# BB#1:                                 # %if.then
	movl	$-23, %eax
	testl	%edx, %edx
	je	.LBB5_13
# BB#2:                                 # %if.end
	movq	1792(%rbx), %rdi
	addq	$80, %rdi
	leaq	132(%rbx), %rsi
	leaq	(%rsp), %rdx
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB5_13
# BB#3:                                 # %if.end.i
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_0(%rip), %xmm0
	jb	.LBB5_5
# BB#4:                                 # %if.end.i
	movss	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB5_5
# BB#6:                                 # %land.lhs.true.7.i
	movss	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_0(%rip), %xmm1
	jb	.LBB5_8
# BB#7:                                 # %land.lhs.true.7.i
	ucomiss	%xmm1, %xmm2
	jbe	.LBB5_8
# BB#14:                                # %cond.true.48.i
	movss	%xmm0, 1824(%rbx)
	movss	.LCPI5_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 1832(%rbx)
	movss	%xmm1, 1828(%rbx)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 1836(%rbx)
	movl	$1, %eax
	jmp	.LBB5_10
.LBB5_5:                                # %if.end.cond.false.57_crit_edge.i
	movl	20(%rsp), %eax
	jmp	.LBB5_9
.LBB5_8:                                # %land.lhs.true.7.cond.false.57_crit_edge.i
	movd	%xmm1, %eax
.LBB5_9:                                # %cond.false.57.i
	movss	%xmm0, 1824(%rbx)
	movl	%eax, 1828(%rbx)
	xorl	%eax, %eax
.LBB5_10:                               # %cleanup.thread7
	movl	%eax, 1840(%rbx)
	movq	16(%rsp), %rax
	movq	%rax, 1824(%rbx)
	movups	(%rsp), %xmm0
	movups	%xmm0, 1808(%rbx)
	movl	$1, 1844(%rbx)
.LBB5_11:                               # %if.end.5
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB5_13
# BB#12:                                # %if.then.7
	movq	1824(%rbx), %rcx
	movq	%rcx, 16(%r14)
	movups	1808(%rbx), %xmm0
	movups	%xmm0, (%r14)
.LBB5_13:                               # %return
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gs_currentcharmatrix, .Lfunc_end5-gs_currentcharmatrix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	3405774848              # float -8388608
.LCPI6_1:
	.long	1258291200              # float 8388608
.LCPI6_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_setmatrix
	.align	16, 0x90
	.type	gs_setmatrix,@function
gs_setmatrix:                           # @gs_setmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 1648(%rdi)
	movl	$0, 1844(%rdi)
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_0(%rip), %xmm0
	jb	.LBB6_2
# BB#1:                                 # %entry
	movss	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB6_2
# BB#3:                                 # %land.lhs.true.6
	movss	20(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_0(%rip), %xmm1
	jb	.LBB6_5
# BB#4:                                 # %land.lhs.true.6
	ucomiss	%xmm1, %xmm2
	jbe	.LBB6_5
# BB#8:                                 # %cond.true.47
	movss	%xmm0, 148(%rdi)
	movss	.LCPI6_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 156(%rdi)
	movss	%xmm1, 152(%rdi)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 160(%rdi)
	movl	$1, %eax
	jmp	.LBB6_7
.LBB6_2:                                # %entry.cond.false.56_crit_edge
	movl	20(%rsi), %eax
	jmp	.LBB6_6
.LBB6_5:                                # %land.lhs.true.6.cond.false.56_crit_edge
	movd	%xmm1, %eax
.LBB6_6:                                # %cond.false.56
	movss	%xmm0, 148(%rdi)
	movl	%eax, 152(%rdi)
	xorl	%eax, %eax
.LBB6_7:                                # %cond.end.63
	movl	%eax, 164(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 148(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, 132(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gs_setmatrix, .Lfunc_end6-gs_setmatrix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	3405774848              # float -8388608
.LCPI7_1:
	.long	1258291200              # float 8388608
.LCPI7_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_imager_setmatrix
	.align	16, 0x90
	.type	gs_imager_setmatrix,@function
gs_imager_setmatrix:                    # @gs_imager_setmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jb	.LBB7_2
# BB#1:                                 # %entry
	movss	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB7_2
# BB#3:                                 # %land.lhs.true.6
	movss	20(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm1
	jb	.LBB7_5
# BB#4:                                 # %land.lhs.true.6
	ucomiss	%xmm1, %xmm2
	jbe	.LBB7_5
# BB#8:                                 # %cond.true.47
	movss	%xmm0, 148(%rdi)
	movss	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 156(%rdi)
	movss	%xmm1, 152(%rdi)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 160(%rdi)
	movl	$1, %eax
	jmp	.LBB7_7
.LBB7_2:                                # %entry.cond.false.56_crit_edge
	movl	20(%rsi), %eax
	jmp	.LBB7_6
.LBB7_5:                                # %land.lhs.true.6.cond.false.56_crit_edge
	movd	%xmm1, %eax
.LBB7_6:                                # %cond.false.56
	movss	%xmm0, 148(%rdi)
	movl	%eax, 152(%rdi)
	xorl	%eax, %eax
.LBB7_7:                                # %cond.end.63
	movl	%eax, 164(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 148(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, 132(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	gs_imager_setmatrix, .Lfunc_end7-gs_imager_setmatrix
	.cfi_endproc

	.globl	gs_settocharmatrix
	.align	16, 0x90
	.type	gs_settocharmatrix,@function
gs_settocharmatrix:                     # @gs_settocharmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-23, %eax
	cmpl	$0, 1844(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	1840(%rdi), %eax
	movl	%eax, 164(%rdi)
	movups	1808(%rdi), %xmm0
	movups	1824(%rdi), %xmm1
	movups	%xmm1, 148(%rdi)
	movups	%xmm0, 132(%rdi)
	movl	$0, 1648(%rdi)
	xorl	%eax, %eax
.LBB8_2:                                # %return
	retq
.Lfunc_end8:
	.size	gs_settocharmatrix, .Lfunc_end8-gs_settocharmatrix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	3405774848              # float -8388608
.LCPI9_1:
	.long	1258291200              # float 8388608
.LCPI9_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_translate
	.align	16, 0x90
	.type	gs_translate,@function
gs_translate:                           # @gs_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB9_13
# BB#1:                                 # %if.end
	cvtpd2ps	(%rsp), %xmm1
	movq	148(%rbx), %xmm0        # xmm0 = mem[0],zero
	addps	%xmm1, %xmm0
	cvtps2pd	%xmm0, %xmm1
	movaps	%xmm1, (%rsp)
	movl	$0, 1648(%rbx)
	movl	$0, 1844(%rbx)
	ucomiss	.LCPI9_0(%rip), %xmm0
	jb	.LBB9_11
# BB#2:                                 # %if.end
	movss	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB9_11
# BB#3:                                 # %land.lhs.true.15
	movaps	%xmm0, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	ucomiss	.LCPI9_0(%rip), %xmm2
	jb	.LBB9_11
# BB#4:                                 # %land.lhs.true.15
	ucomiss	%xmm2, %xmm1
	jbe	.LBB9_11
# BB#5:                                 # %cond.true
	movss	%xmm0, 148(%rbx)
	ucomiss	.LCPI9_0(%rip), %xmm0
	jb	.LBB9_8
# BB#6:                                 # %cond.true
	ucomiss	%xmm0, %xmm1
	jbe	.LBB9_8
# BB#7:                                 # %cond.true.38
	movss	.LCPI9_2(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	cvttss2si	%xmm3, %eax
	movl	%eax, 156(%rbx)
.LBB9_8:                                # %cond.end
	movss	%xmm2, 152(%rbx)
	movl	$1, %eax
	ucomiss	.LCPI9_0(%rip), %xmm2
	jb	.LBB9_12
# BB#9:                                 # %cond.end
	ucomiss	%xmm2, %xmm1
	jbe	.LBB9_12
# BB#10:                                # %cond.true.58
	mulss	.LCPI9_2(%rip), %xmm2
	cvttss2si	%xmm2, %ecx
	movl	%ecx, 160(%rbx)
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.67
	movss	%xmm0, 148(%rbx)
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movss	%xmm0, 152(%rbx)
	xorl	%eax, %eax
.LBB9_12:                               # %cond.end.76
	movl	%eax, 164(%rbx)
	xorl	%eax, %eax
.LBB9_13:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gs_translate, .Lfunc_end9-gs_translate
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1258291200              # float 8388608
.LCPI10_1:
	.long	3405774848              # float -8388608
.LCPI10_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_translate_untransformed
	.align	16, 0x90
	.type	gs_translate_untransformed,@function
gs_translate_untransformed:             # @gs_translate_untransformed
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm2
	addss	148(%rdi), %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	addss	152(%rdi), %xmm0
	movl	$0, 1648(%rdi)
	movl	$0, 1844(%rdi)
	movss	%xmm2, 148(%rdi)
	movss	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_5
# BB#1:                                 # %entry
	ucomiss	.LCPI10_1(%rip), %xmm2
	jb	.LBB10_5
# BB#2:                                 # %entry
	ucomiss	%xmm2, %xmm1
	jbe	.LBB10_5
# BB#3:                                 # %entry
	ucomiss	.LCPI10_1(%rip), %xmm0
	jb	.LBB10_5
# BB#4:                                 # %cond.true.54
	movss	.LCPI10_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, 156(%rdi)
	movss	%xmm0, 152(%rdi)
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 160(%rdi)
	movl	$1, %eax
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.63
	movss	%xmm0, 152(%rdi)
	xorl	%eax, %eax
.LBB10_6:                               # %cond.end.72
	movl	%eax, 164(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gs_translate_untransformed, .Lfunc_end10-gs_translate_untransformed
	.cfi_endproc

	.globl	gs_scale
	.align	16, 0x90
	.type	gs_scale,@function
gs_scale:                               # @gs_scale
	.cfi_startproc
# BB#0:                                 # %entry
	movss	132(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, 132(%rdi)
	movss	136(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 136(%rdi)
	movss	140(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 140(%rdi)
	movss	144(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 144(%rdi)
	movl	$0, 1648(%rdi)
	movl	$0, 1844(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	gs_scale, .Lfunc_end11-gs_scale
	.cfi_endproc

	.globl	gs_rotate
	.align	16, 0x90
	.type	gs_rotate,@function
gs_rotate:                              # @gs_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_rotate
	movl	$0, 1648(%rbx)
	movl	$0, 1844(%rbx)
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gs_rotate, .Lfunc_end12-gs_rotate
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	3405774848              # float -8388608
.LCPI13_1:
	.long	1258291200              # float 8388608
.LCPI13_2:
	.long	1132462080              # float 256
	.text
	.globl	gs_concat
	.align	16, 0x90
	.type	gs_concat,@function
gs_concat:                              # @gs_concat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %r14
	leaq	(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB13_9
# BB#1:                                 # %if.end
	movl	$0, 1648(%rbx)
	movl	$0, 1844(%rbx)
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI13_0(%rip), %xmm0
	jb	.LBB13_3
# BB#2:                                 # %if.end
	movss	.LCPI13_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB13_3
# BB#4:                                 # %land.lhs.true.7
	movss	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI13_0(%rip), %xmm1
	jb	.LBB13_6
# BB#5:                                 # %land.lhs.true.7
	ucomiss	%xmm1, %xmm2
	jbe	.LBB13_6
# BB#10:                                # %cond.true.49
	movss	%xmm0, 148(%rbx)
	movss	.LCPI13_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, 156(%rbx)
	movss	%xmm1, 152(%rbx)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ecx, 160(%rbx)
	movl	$1, %ecx
	jmp	.LBB13_8
.LBB13_3:                               # %if.end.cond.false.58_crit_edge
	movl	20(%rsp), %ecx
	jmp	.LBB13_7
.LBB13_6:                               # %land.lhs.true.7.cond.false.58_crit_edge
	movd	%xmm1, %ecx
.LBB13_7:                               # %cond.false.58
	movss	%xmm0, 148(%rbx)
	movl	%ecx, 152(%rbx)
	xorl	%ecx, %ecx
.LBB13_8:                               # %cond.end.65
	movl	%ecx, 164(%rbx)
	movq	16(%rsp), %rcx
	movq	%rcx, 16(%r14)
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
.LBB13_9:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	gs_concat, .Lfunc_end13-gs_concat
	.cfi_endproc

	.globl	gs_transform
	.align	16, 0x90
	.type	gs_transform,@function
gs_transform:                           # @gs_transform
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$132, %rdi
	jmp	gs_point_transform      # TAILCALL
.Lfunc_end14:
	.size	gs_transform, .Lfunc_end14-gs_transform
	.cfi_endproc

	.globl	gs_dtransform
	.align	16, 0x90
	.type	gs_dtransform,@function
gs_dtransform:                          # @gs_dtransform
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$132, %rdi
	jmp	gs_distance_transform   # TAILCALL
.Lfunc_end15:
	.size	gs_dtransform, .Lfunc_end15-gs_dtransform
	.cfi_endproc

	.globl	gs_itransform
	.align	16, 0x90
	.type	gs_itransform,@function
gs_itransform:                          # @gs_itransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 48
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	movss	136(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB16_2
	jp	.LBB16_2
# BB#1:                                 # %land.lhs.true
	movss	140(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB16_2
	jnp	.LBB16_4
.LBB16_2:                               # %lor.lhs.false
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB16_5
	jp	.LBB16_5
# BB#3:                                 # %land.lhs.true.10
	movss	144(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB16_5
	jp	.LBB16_5
.LBB16_4:                               # %if.then
	movq	%r14, %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_point_transform_inverse # TAILCALL
.LBB16_5:                               # %if.else
	cmpl	$0, 1648(%rbx)
	je	.LBB16_7
# BB#6:                                 # %if.else.if.end.21_crit_edge
	addq	$1624, %rbx             # imm = 0x658
	movq	%rbx, %r15
	jmp	.LBB16_9
.LBB16_7:                               # %if.then.16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	leaq	1624(%rbx), %r15
	movq	%r15, %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB16_10
# BB#8:                                 # %ctm_set_inverse.exit.thread
	movl	$1, 1648(%rbx)
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB16_9:                               # %if.end.21
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_point_transform      # TAILCALL
.LBB16_10:                              # %return
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	gs_itransform, .Lfunc_end16-gs_itransform
	.cfi_endproc

	.globl	gs_idtransform
	.align	16, 0x90
	.type	gs_idtransform,@function
gs_idtransform:                         # @gs_idtransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	movss	136(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB17_2
	jp	.LBB17_2
# BB#1:                                 # %land.lhs.true
	movss	140(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB17_2
	jnp	.LBB17_4
.LBB17_2:                               # %lor.lhs.false
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB17_5
	jp	.LBB17_5
# BB#3:                                 # %land.lhs.true.10
	movss	144(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB17_5
	jp	.LBB17_5
.LBB17_4:                               # %if.then
	movq	%r14, %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_distance_transform_inverse # TAILCALL
.LBB17_5:                               # %if.else
	cmpl	$0, 1648(%rbx)
	je	.LBB17_7
# BB#6:                                 # %if.else.if.end.21_crit_edge
	addq	$1624, %rbx             # imm = 0x658
	movq	%rbx, %r15
	jmp	.LBB17_9
.LBB17_7:                               # %if.then.16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	leaq	1624(%rbx), %r15
	movq	%r15, %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB17_10
# BB#8:                                 # %ctm_set_inverse.exit.thread
	movl	$1, 1648(%rbx)
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB17_9:                               # %if.end.21
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_distance_transform   # TAILCALL
.LBB17_10:                              # %return
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gs_idtransform, .Lfunc_end17-gs_idtransform
	.cfi_endproc

	.globl	gs_imager_idtransform
	.align	16, 0x90
	.type	gs_imager_idtransform,@function
gs_imager_idtransform:                  # @gs_imager_idtransform
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$132, %rdi
	jmp	gs_distance_transform_inverse # TAILCALL
.Lfunc_end18:
	.size	gs_imager_idtransform, .Lfunc_end18-gs_imager_idtransform
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI19_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gx_translate_to_fixed
	.align	16, 0x90
	.type	gx_translate_to_fixed,@function
gx_translate_to_fixed:                  # @gx_translate_to_fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 80
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cvtsi2sdl	%r15d, %xmm3
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movss	148(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	152(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cmpl	$0, 164(%rbx)
	je	.LBB19_6
# BB#1:                                 # %if.then
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	.LCPI19_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm4, %xmm1
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	cvttsd2si	%xmm0, %ebp
	movq	1680(%rbx), %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	gx_path_translate
	testl	%eax, %eax
	js	.LBB19_11
# BB#2:                                 # %if.end
	movl	1844(%rbx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB19_8
# BB#3:                                 # %land.lhs.true
	cmpl	$0, 1840(%rbx)
	je	.LBB19_4
# BB#5:                                 # %if.then.17
	addl	%r12d, 1832(%rbx)
	addl	%ebp, 1836(%rbx)
	movl	%ecx, %eax
	jmp	.LBB19_8
.LBB19_6:                               # %if.else
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movq	1680(%rbx), %rdi
	callq	gx_path_is_null
	movl	%eax, %ecx
	movl	$-13, %eax
	testl	%ecx, %ecx
	je	.LBB19_11
# BB#7:                                 # %if.else.if.end.27_crit_edge
	movl	1844(%rbx), %eax
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB19_8
.LBB19_4:
	movl	%ecx, %eax
.LBB19_8:                               # %if.end.27
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 148(%rbx)
	movl	%r15d, 156(%rbx)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 152(%rbx)
	movl	%r14d, 160(%rbx)
	movl	$1, 164(%rbx)
	movl	$0, 1648(%rbx)
	testl	%eax, %eax
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	je	.LBB19_10
# BB#9:                                 # %if.then.42
	movss	1824(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 1824(%rbx)
	movss	1828(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	(%rsp), %xmm3           # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 1828(%rbx)
.LBB19_10:                              # %if.end.53
	movsd	%xmm1, 176(%rbx)
	movsd	%xmm2, 184(%rbx)
	movl	$1, 168(%rbx)
	xorl	%eax, %eax
.LBB19_11:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gx_translate_to_fixed, .Lfunc_end19-gx_translate_to_fixed
	.cfi_endproc

	.globl	gx_scale_char_matrix
	.align	16, 0x90
	.type	gx_scale_char_matrix,@function
gx_scale_char_matrix:                   # @gx_scale_char_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %esi
	je	.LBB20_3
# BB#1:                                 # %if.then
	cvtsi2ssl	%esi, %xmm0
	movss	132(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 132(%rdi)
	movss	140(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 140(%rdi)
	movl	$0, 1648(%rdi)
	cmpl	$0, 1844(%rdi)
	je	.LBB20_3
# BB#2:                                 # %if.then.4
	movss	1808(%rdi), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 1808(%rdi)
	mulss	1816(%rdi), %xmm0
	movss	%xmm0, 1816(%rdi)
.LBB20_3:                               # %if.end.12
	cmpl	$1, %edx
	je	.LBB20_6
# BB#4:                                 # %if.then.15
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	136(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 136(%rdi)
	movss	144(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 144(%rdi)
	movl	$0, 1648(%rdi)
	cmpl	$0, 1844(%rdi)
	je	.LBB20_6
# BB#5:                                 # %if.then.25
	movss	1812(%rdi), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 1812(%rdi)
	mulss	1820(%rdi), %xmm0
	movss	%xmm0, 1820(%rdi)
.LBB20_6:                               # %do.end
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	gx_scale_char_matrix, .Lfunc_end20-gx_scale_char_matrix
	.cfi_endproc

	.globl	gx_matrix_to_fixed_coeff
	.align	16, 0x90
	.type	gx_matrix_to_fixed_coeff,@function
gx_matrix_to_fixed_coeff:               # @gx_matrix_to_fixed_coeff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 96
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$-10000, 68(%rsp)       # imm = 0xFFFFFFFFFFFFD8F0
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 36(%rsp)         # 4-byte Spill
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rsp)         # 4-byte Spill
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movl	$0, 32(%rbx)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm1
	jne	.LBB21_1
	jnp	.LBB21_2
.LBB21_1:                               # %if.then
	leaq	68(%rsp), %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movss	%xmm2, 60(%rsp)         # 4-byte Spill
	callq	frexp
	xorps	%xmm3, %xmm3
	movss	60(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
.LBB21_2:                               # %if.end
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	ucomiss	%xmm3, %xmm2
	movss	%xmm2, 60(%rsp)         # 4-byte Spill
	jne	.LBB21_3
	jnp	.LBB21_6
.LBB21_3:                               # %if.then.7
	leaq	64(%rsp), %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	frexp
	movl	64(%rsp), %eax
	cmpl	68(%rsp), %eax
	jle	.LBB21_5
# BB#4:                                 # %if.then.13
	movl	%eax, 68(%rsp)
.LBB21_5:                               # %if.end.14
	movl	$1, 32(%rbx)
.LBB21_6:                               # %if.end.16
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB21_7
	jnp	.LBB21_10
.LBB21_7:                               # %if.then.20
	leaq	64(%rsp), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	frexp
	movl	64(%rsp), %eax
	cmpl	68(%rsp), %eax
	jle	.LBB21_9
# BB#8:                                 # %if.then.26
	movl	%eax, 68(%rsp)
.LBB21_9:                               # %if.end.27
	movl	$1, 32(%rbx)
	xorps	%xmm2, %xmm2
.LBB21_10:                              # %if.end.29
	movss	44(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	ucomiss	%xmm2, %xmm1
	jne	.LBB21_12
	jp	.LBB21_12
# BB#11:                                # %if.end.29.if.end.41_crit_edge
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movl	68(%rsp), %eax
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB21_14
.LBB21_12:                              # %if.then.33
	leaq	64(%rsp), %rdi
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	frexp
	movl	64(%rsp), %ecx
	movl	68(%rsp), %eax
	cmpl	%eax, %ecx
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jle	.LBB21_14
# BB#13:                                # %if.then.39
	movl	%ecx, 68(%rsp)
	movl	%ecx, %eax
.LBB21_14:                              # %if.end.41
	cmpl	$8, %ebp
	movl	$8, %ecx
	cmovll	%ecx, %ebp
	movl	$63, %edi
	subl	%ebp, %edi
	subl	%eax, %edi
	movl	%edi, 68(%rsp)
	cmpl	$9, %edi
	jl	.LBB21_16
# BB#15:                                # %if.then.53
	leal	-8(%rdi), %eax
	movl	%eax, 36(%rbx)
	leal	-9(%rdi), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	jmp	.LBB21_17
.LBB21_16:                              # %if.else
	movl	$0, 36(%rbx)
	movl	$8, 68(%rsp)
	xorl	%eax, %eax
	movl	$8, %edi
.LBB21_17:                              # %if.end.59
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, 44(%rbx)
	xorl	%eax, %eax
	xorps	%xmm3, %xmm3
	movss	36(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB21_18
	jnp	.LBB21_19
.LBB21_18:                              # %if.else.66
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ldexp
	xorps	%xmm3, %xmm3
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %rax
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB21_19:                              # %if.end.72
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	ucomiss	%xmm3, %xmm0
	jne	.LBB21_20
	jnp	.LBB21_21
.LBB21_20:                              # %if.else.79
	movl	68(%rsp), %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ldexp
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %rax
.LBB21_21:                              # %if.end.85
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	xorps	%xmm2, %xmm2
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	jne	.LBB21_22
	jnp	.LBB21_23
.LBB21_22:                              # %if.else.92
	movl	68(%rsp), %edi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ldexp
	xorps	%xmm2, %xmm2
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %rax
.LBB21_23:                              # %if.end.98
	movq	%rax, 16(%rbx)
	xorl	%eax, %eax
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	jne	.LBB21_24
	jnp	.LBB21_25
.LBB21_24:                              # %if.else.105
	movl	68(%rsp), %edi
	movapd	%xmm1, %xmm0
	callq	ldexp
	cvttsd2si	%xmm0, %rax
.LBB21_25:                              # %if.end.111
	movq	%rax, 24(%rbx)
	movl	%ebp, 40(%rbx)
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gx_matrix_to_fixed_coeff, .Lfunc_end21-gx_matrix_to_fixed_coeff
	.cfi_endproc

	.globl	fixed_coeff_mult
	.align	16, 0x90
	.type	fixed_coeff_mult,@function
fixed_coeff_mult:                       # @fixed_coeff_mult
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 16
	movl	%ecx, %r10d
	movl	36(%rdx), %r8d
	movslq	%edi, %r9
	leal	-1(%r10), %ecx
	movl	$256, %eax              # imm = 0x100
	shlq	%cl, %rax
	addq	%r9, %rax
	movq	$-256, %r9
	movb	%r10b, %cl
	shlq	%cl, %r9
	testq	%r9, %rax
	je	.LBB22_4
# BB#1:                                 # %if.then
	testq	%rsi, %rsi
	js	.LBB22_2
# BB#3:                                 # %cond.false
	movl	$256, %edx              # imm = 0x100
	movb	%r8b, %cl
	shlq	%cl, %rdx
	popq	%rax
	jmp	fixed_mult_quo          # TAILCALL
.LBB22_4:                               # %if.else
	movl	%edi, %eax
	sarl	$8, %eax
	cltq
	imulq	%rsi, %rax
	movzbl	%dil, %ecx
	imulq	%rsi, %rcx
	shrq	$8, %rcx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movslq	44(%rdx), %rax
	addq	%rcx, %rax
	movb	%r8b, %cl
	sarq	%cl, %rax
	popq	%rdx
	retq
.LBB22_2:                               # %cond.true
	negl	%esi
	movl	$256, %edx              # imm = 0x100
	movb	%r8b, %cl
	shlq	%cl, %rdx
	callq	fixed_mult_quo
	negl	%eax
	popq	%rdx
	retq
.Lfunc_end22:
	.size	fixed_coeff_mult, .Lfunc_end22-fixed_coeff_mult
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
