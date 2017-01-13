	.text
	.file	"arcball.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ArcBall_Init
	.align	16, 0x90
	.type	ArcBall_Init,@function
ArcBall_Init:                           # @ArcBall_Init
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
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	qOne, %rax
	movq	%rax, center
	movq	qOne+8, %rax
	movq	%rax, center+8
	movq	qOne+16, %rax
	movq	%rax, center+16
	movq	qOne+24, %rax
	movq	%rax, center+24
	movsd	%xmm0, radius
	movq	qOne, %rax
	movq	%rax, vNow
	movq	qOne+8, %rax
	movq	%rax, vNow+8
	movq	qOne+16, %rax
	movq	%rax, vNow+16
	movq	qOne+24, %rax
	movq	%rax, vNow+24
	movq	vNow, %rax
	movq	%rax, vDown
	movq	vNow+8, %rax
	movq	%rax, vDown+8
	movq	vNow+16, %rax
	movq	%rax, vDown+16
	movq	vNow+24, %rax
	movq	%rax, vDown+24
	movq	qOne, %rax
	movq	%rax, qNow
	movq	qOne+8, %rax
	movq	%rax, qNow+8
	movq	qOne+16, %rax
	movq	%rax, qNow+16
	movq	qOne+24, %rax
	movq	%rax, qNow+24
	movq	qNow, %rax
	movq	%rax, qDown
	movq	qNow+8, %rax
	movq	%rax, qDown+8
	movq	qNow+16, %rax
	movq	%rax, qDown+16
	movq	qNow+24, %rax
	movq	%rax, qDown+24
	movl	$15, -4(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jl	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-4(%rbp), %rax
	movsd	mId(,%rax,8), %xmm0     # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rax
	movsd	%xmm0, mDown(,%rax,8)
	movslq	-4(%rbp), %rax
	movsd	%xmm0, mNow(,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movabsq	$otherAxis, %rax
	movabsq	$mDown, %rcx
	movabsq	$mId, %rdx
	movl	$0, dragging
	movl	$0, showResult
	movl	$0, axisSet
	movq	%rdx, sets+8
	movl	$3, setSizes+4
	movq	%rcx, sets+16
	movl	$3, setSizes+8
	movq	%rax, sets+24
	movl	$1, setSizes+12
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ArcBall_Init, .Lfunc_end0-ArcBall_Init
	.cfi_endproc

	.globl	ArcBall_Place
	.align	16, 0x90
	.type	ArcBall_Place,@function
ArcBall_Place:                          # @ArcBall_Place
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
	leaq	16(%rbp), %rax
	movsd	%xmm0, -8(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, center
	movq	8(%rax), %rcx
	movq	%rcx, center+8
	movq	16(%rax), %rcx
	movq	%rcx, center+16
	movq	24(%rax), %rax
	movq	%rax, center+24
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, radius
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ArcBall_Place, .Lfunc_end1-ArcBall_Place
	.cfi_endproc

	.globl	ArcBall_Mouse
	.align	16, 0x90
	.type	ArcBall_Mouse,@function
ArcBall_Mouse:                          # @ArcBall_Mouse
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
	leaq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, vNow
	movq	8(%rax), %rcx
	movq	%rcx, vNow+8
	movq	16(%rax), %rcx
	movq	%rcx, vNow+16
	movq	24(%rax), %rax
	movq	%rax, vNow+24
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ArcBall_Mouse, .Lfunc_end2-ArcBall_Mouse
	.cfi_endproc

	.globl	ArcBall_UseSet
	.align	16, 0x90
	.type	ArcBall_UseSet,@function
ArcBall_UseSet:                         # @ArcBall_UseSet
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
	movl	%edi, -4(%rbp)
	cmpl	$0, dragging
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, axisSet
.LBB3_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ArcBall_UseSet, .Lfunc_end3-ArcBall_UseSet
	.cfi_endproc

	.globl	ArcBall_Update
	.align	16, 0x90
	.type	ArcBall_Update,@function
ArcBall_Update:                         # @ArcBall_Update
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
	subq	$304, %rsp              # imm = 0x130
	leaq	-48(%rbp), %rdi
	movabsq	$vDown, %rax
	movabsq	$center, %rcx
	movl	axisSet, %edx
	movl	%edx, %esi
	movl	setSizes(,%rsi,4), %edx
	movl	%edx, -4(%rbp)
	movl	axisSet, %edx
	movl	%edx, %esi
	movq	sets(,%rsi,8), %rsi
	movq	%rsi, -16(%rbp)
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	MouseOnSphere
	leaq	-80(%rbp), %rdi
	movabsq	$vNow, %rax
	movabsq	$center, %rcx
	movq	-48(%rbp), %rsi
	movq	%rsi, vFrom
	movq	-40(%rbp), %rsi
	movq	%rsi, vFrom+8
	movq	-32(%rbp), %rsi
	movq	%rsi, vFrom+16
	movq	-24(%rbp), %rsi
	movq	%rsi, vFrom+24
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	MouseOnSphere
	movq	-80(%rbp), %rax
	movq	%rax, vTo
	movq	-72(%rbp), %rax
	movq	%rax, vTo+8
	movq	-64(%rbp), %rax
	movq	%rax, vTo+16
	movq	-56(%rbp), %rax
	movq	%rax, vTo+24
	cmpl	$0, dragging
	je	.LBB4_4
# BB#1:                                 # %if.then
	cmpl	$0, axisSet
	je	.LBB4_3
# BB#2:                                 # %if.then.4
	leaq	-112(%rbp), %rdi
	movabsq	$vFrom, %rax
	movslq	axisIndex, %rcx
	shlq	$5, %rcx
	addq	-16(%rbp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	ConstrainToAxis
	leaq	-144(%rbp), %rdi
	movabsq	$vTo, %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, vFrom
	movq	-104(%rbp), %rcx
	movq	%rcx, vFrom+8
	movq	-96(%rbp), %rcx
	movq	%rcx, vFrom+16
	movq	-88(%rbp), %rcx
	movq	%rcx, vFrom+24
	movslq	axisIndex, %rcx
	shlq	$5, %rcx
	addq	-16(%rbp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	ConstrainToAxis
	movq	-144(%rbp), %rax
	movq	%rax, vTo
	movq	-136(%rbp), %rax
	movq	%rax, vTo+8
	movq	-128(%rbp), %rax
	movq	%rax, vTo+16
	movq	-120(%rbp), %rax
	movq	%rax, vTo+24
.LBB4_3:                                # %if.end
	leaq	-176(%rbp), %rdi
	movabsq	$vFrom, %rax
	movabsq	$vTo, %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	Qt_FromBallPoints
	leaq	-208(%rbp), %rdi
	movabsq	$qDrag, %rax
	movabsq	$qDown, %rcx
	movq	-176(%rbp), %rdx
	movq	%rdx, qDrag
	movq	-168(%rbp), %rdx
	movq	%rdx, qDrag+8
	movq	-160(%rbp), %rdx
	movq	%rdx, qDrag+16
	movq	-152(%rbp), %rdx
	movq	%rdx, qDrag+24
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	callq	Qt_Mul
	movq	-208(%rbp), %rax
	movq	%rax, qNow
	movq	-200(%rbp), %rax
	movq	%rax, qNow+8
	movq	-192(%rbp), %rax
	movq	%rax, qNow+16
	movq	-184(%rbp), %rax
	movq	%rax, qNow+24
	jmp	.LBB4_7
.LBB4_4:                                # %if.else
	cmpl	$0, axisSet
	je	.LBB4_6
# BB#5:                                 # %if.then.14
	movabsq	$vTo, %rax
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	NearestConstraintAxis
	movl	%eax, axisIndex
.LBB4_6:                                # %if.end.15
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.16
	movabsq	$qDown, %rax
	movabsq	$vrFrom, %rdi
	movabsq	$vrTo, %rsi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	Qt_ToBallPoints
	leaq	-240(%rbp), %rdi
	movabsq	$qNow, %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	Qt_Conj
	leaq	-240(%rbp), %rax
	movabsq	$mNow, %rdi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	Qt_ToMatrix
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ArcBall_Update, .Lfunc_end4-ArcBall_Update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	MouseOnSphere,@function
MouseOnSphere:                          # @MouseOnSphere
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
	subq	$96, %rsp
	movq	%rdi, %rax
	leaq	48(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rcx), %xmm0
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rcx), %xmm0
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	callq	sqrt
	movsd	%xmm0, -24(%rbp)
.LBB5_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	MouseOnSphere, .Lfunc_end5-MouseOnSphere
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ConstrainToAxis,@function
ConstrainToAxis:                        # @ConstrainToAxis
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, %rax
	leaq	48(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movq	(%rcx), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rcx), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rcx), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rcx), %rsi
	movq	%rsi, 24(%rsp)
	movq	(%rdx), %rsi
	movq	%rsi, 32(%rsp)
	movq	8(%rdx), %rsi
	movq	%rsi, 40(%rsp)
	movq	16(%rdx), %rsi
	movq	%rsi, 48(%rsp)
	movq	24(%rdx), %rsi
	movq	%rsi, 56(%rsp)
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	V3_Dot
	leaq	-72(%rbp), %rdi
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rsp)
	callq	V3_Scale
	leaq	-104(%rbp), %rdi
	leaq	-72(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movq	(%rax), %rdx
	movq	%rdx, 32(%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 40(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	callq	V3_Sub
	leaq	-32(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	V3_Norm
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_4
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB6_3
# BB#2:                                 # %if.then.3
	leaq	-136(%rbp), %rdi
	leaq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	V3_Negate
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_3:                                # %if.end
	leaq	-32(%rbp), %rax
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movaps	%xmm1, %xmm0
	callq	V3_Scale
	jmp	.LBB6_8
.LBB6_4:                                # %if.end.6
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-256(%rbp), %rax        # 8-byte Reload
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_6
	jp	.LBB6_6
# BB#5:                                 # %if.then.9
	leaq	-168(%rbp), %rdi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	V3_
	movq	-168(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-160(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-152(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-144(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	leaq	-200(%rbp), %rdi
	xorps	%xmm2, %xmm2
	movq	-256(%rbp), %rax        # 8-byte Reload
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	callq	V3_
	leaq	-232(%rbp), %rdi
	leaq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	V3_Unit
	movq	-232(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_7:                                # %if.end.13
	movq	-32(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB6_8:                                # %return
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ConstrainToAxis, .Lfunc_end6-ConstrainToAxis
	.cfi_endproc

	.align	16, 0x90
	.type	Qt_FromBallPoints,@function
Qt_FromBallPoints:                      # @Qt_FromBallPoints
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
	movq	%rdi, %rax
	leaq	48(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	16(%rcx), %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	8(%rcx), %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Qt_FromBallPoints, .Lfunc_end7-Qt_FromBallPoints
	.cfi_endproc

	.align	16, 0x90
	.type	Qt_Mul,@function
Qt_Mul:                                 # @Qt_Mul
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
	movq	%rdi, %rax
	leaq	48(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	24(%rcx), %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	8(%rcx), %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rcx), %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	24(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Qt_Mul, .Lfunc_end8-Qt_Mul
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	NearestConstraintAxis,@function
NearestConstraintAxis:                  # @NearestConstraintAxis
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
	subq	$176, %rsp
	leaq	16(%rbp), %rax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-104(%rbp), %rdi
	movslq	-68(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movq	(%rax), %rdx
	movq	%rdx, 32(%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 40(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	callq	ConstrainToAxis
	leaq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 56(%rsp)
	callq	V3_Dot
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	movl	-72(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	NearestConstraintAxis, .Lfunc_end9-NearestConstraintAxis
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	Qt_ToBallPoints,@function
Qt_ToBallPoints:                        # @Qt_ToBallPoints
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
	subq	$176, %rsp
	leaq	16(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rax), %xmm1
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	V3_
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	-40(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, 24(%rdi)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	leaq	-88(%rbp), %rdi
	xorps	%xmm2, %xmm2
	movq	-8(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	divsd	-24(%rbp), %xmm1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	V3_
	movq	-88(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB10_3:                               # %if.end
	xorps	%xmm0, %xmm0
	movq	-136(%rbp), %rax        # 8-byte Reload
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	subsd	%xmm2, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	8(%rcx), %xmm1
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	8(%rcx), %xmm1
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm2
	subsd	%xmm2, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	ucomisd	24(%rax), %xmm0
	jbe	.LBB10_5
# BB#4:                                 # %if.then.32
	leaq	-120(%rbp), %rdi
	xorps	%xmm2, %xmm2
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	V3_
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB10_5:                               # %if.end.38
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Qt_ToBallPoints, .Lfunc_end10-Qt_ToBallPoints
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611686018427387904     # double 2
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	Qt_ToMatrix,@function
Qt_ToMatrix:                            # @Qt_ToMatrix
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
	pushq	%rax
	leaq	16(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rax), %xmm1
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	16(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	24(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jbe	.LBB11_2
# BB#1:                                 # %cond.true
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -24(%rbp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movaps	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movq	-8(%rbp), %rcx
	movsd	%xmm3, (%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 64(%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movaps	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movq	-8(%rbp), %rcx
	movsd	%xmm3, 40(%rcx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 72(%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-104(%rbp), %xmm0
	movaps	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movq	-8(%rbp), %rcx
	movsd	%xmm3, 80(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 112(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 104(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 96(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 88(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 56(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm2, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 120(%rcx)
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Qt_ToMatrix, .Lfunc_end11-Qt_ToMatrix
	.cfi_endproc

	.align	16, 0x90
	.type	Qt_Conj,@function
Qt_Conj:                                # @Qt_Conj
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
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Qt_Conj, .Lfunc_end12-Qt_Conj
	.cfi_endproc

	.globl	ArcBall_Value
	.align	16, 0x90
	.type	ArcBall_Value,@function
ArcBall_Value:                          # @ArcBall_Value
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
	subq	$16, %rsp
	movabsq	$mNow, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	ArcBall_CopyMat
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ArcBall_Value, .Lfunc_end13-ArcBall_Value
	.cfi_endproc

	.globl	ArcBall_CopyMat
	.align	16, 0x90
	.type	ArcBall_CopyMat,@function
ArcBall_CopyMat:                        # @ArcBall_CopyMat
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	cmpl	$4, -20(%rbp)
	jge	.LBB14_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -24(%rbp)
.LBB14_3:                               # %for.cond.1
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -24(%rbp)
	jge	.LBB14_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB14_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	-16(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB14_3
.LBB14_6:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_7
.LBB14_7:                               # %for.inc.10
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB14_1
.LBB14_8:                               # %for.end.12
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ArcBall_CopyMat, .Lfunc_end14-ArcBall_CopyMat
	.cfi_endproc

	.globl	ArcBall_Values
	.align	16, 0x90
	.type	ArcBall_Values,@function
ArcBall_Values:                         # @ArcBall_Values
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	mNow+16, %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	callq	asin
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_1
	jp	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %if.then
	movsd	mNow+48, %xmm0          # xmm0 = mem[0],zero
	movsd	mNow+80, %xmm1          # xmm1 = mem[0],zero
	callq	atan2
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	mNow+8, %xmm0           # xmm0 = mem[0],zero
	movsd	mNow, %xmm1             # xmm1 = mem[0],zero
	callq	atan2
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movsd	mNow+32, %xmm0          # xmm0 = mem[0],zero
	movsd	mNow+40, %xmm1          # xmm1 = mem[0],zero
	callq	atan2
	xorps	%xmm1, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB15_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ArcBall_Values, .Lfunc_end15-ArcBall_Values
	.cfi_endproc

	.globl	ArcBall_BeginDrag
	.align	16, 0x90
	.type	ArcBall_BeginDrag,@function
ArcBall_BeginDrag:                      # @ArcBall_BeginDrag
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
	movl	$1, dragging
	movq	vNow, %rax
	movq	%rax, vDown
	movq	vNow+8, %rax
	movq	%rax, vDown+8
	movq	vNow+16, %rax
	movq	%rax, vDown+16
	movq	vNow+24, %rax
	movq	%rax, vDown+24
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ArcBall_BeginDrag, .Lfunc_end16-ArcBall_BeginDrag
	.cfi_endproc

	.globl	ArcBall_EndDrag
	.align	16, 0x90
	.type	ArcBall_EndDrag,@function
ArcBall_EndDrag:                        # @ArcBall_EndDrag
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
	movabsq	$mNow, %rdi
	movabsq	$mDown, %rsi
	movl	$0, dragging
	movq	qNow, %rax
	movq	%rax, qDown
	movq	qNow+8, %rax
	movq	%rax, qDown+8
	movq	qNow+16, %rax
	movq	%rax, qDown+16
	movq	qNow+24, %rax
	movq	%rax, qDown+24
	callq	ArcBall_CopyMat
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ArcBall_EndDrag, .Lfunc_end17-ArcBall_EndDrag
	.cfi_endproc

	.align	16, 0x90
	.type	V3_,@function
V3_:                                    # @V3_
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
	movq	%rdi, %rax
	xorps	%xmm3, %xmm3
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-32(%rbp), %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	V3_, .Lfunc_end18-V3_
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Sub,@function
V3_Sub:                                 # @V3_Sub
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
	movq	%rdi, %rax
	leaq	48(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rcx), %xmm0
	movsd	%xmm0, V3_Sub.v
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rcx), %xmm0
	movsd	%xmm0, V3_Sub.v+8
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rcx), %xmm0
	movsd	%xmm0, V3_Sub.v+16
	movq	V3_Sub.v, %rcx
	movq	%rcx, (%rdi)
	movq	V3_Sub.v+8, %rcx
	movq	%rcx, 8(%rdi)
	movq	V3_Sub.v+16, %rcx
	movq	%rcx, 16(%rdi)
	movq	V3_Sub.v+24, %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	V3_Sub, .Lfunc_end19-V3_Sub
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Scale,@function
V3_Scale:                               # @V3_Scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	8(%rcx), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rcx), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-32(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	V3_Scale, .Lfunc_end20-V3_Scale
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Dot,@function
V3_Dot:                                 # @V3_Dot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	leaq	48(%rbp), %rax
	leaq	16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end21:
	.size	V3_Dot, .Lfunc_end21-V3_Dot
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Norm,@function
V3_Norm:                                # @V3_Norm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	V3_Norm, .Lfunc_end22-V3_Norm
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Negate,@function
V3_Negate:                              # @V3_Negate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, V3_Negate.u
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movsd	%xmm0, V3_Negate.u+8
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, V3_Negate.u+16
	movq	V3_Negate.u, %rcx
	movq	%rcx, (%rdi)
	movq	V3_Negate.u+8, %rcx
	movq	%rcx, 8(%rdi)
	movq	V3_Negate.u+16, %rcx
	movq	%rcx, 16(%rdi)
	movq	V3_Negate.u+24, %rcx
	movq	%rcx, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	V3_Negate, .Lfunc_end23-V3_Negate
	.cfi_endproc

	.align	16, 0x90
	.type	V3_Unit,@function
V3_Unit:                                # @V3_Unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	V3_Norm
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB24_1
	jp	.LBB24_1
	jmp	.LBB24_2
.LBB24_1:                               # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, V3_Unit.u
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, V3_Unit.u+8
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, V3_Unit.u+16
	movq	V3_Unit.u, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	V3_Unit.u+8, %rcx
	movq	%rcx, 8(%rdx)
	movq	V3_Unit.u+16, %rcx
	movq	%rcx, 16(%rdx)
	movq	V3_Unit.u+24, %rcx
	movq	%rcx, 24(%rdx)
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	V3_Unit, .Lfunc_end24-V3_Unit
	.cfi_endproc

	.type	qOne,@object            # @qOne
	.data
	.globl	qOne
	.align	8
qOne:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	qOne, 32

	.type	center,@object          # @center
	.local	center
	.comm	center,32,8
	.type	radius,@object          # @radius
	.local	radius
	.comm	radius,8,8
	.type	vDown,@object           # @vDown
	.local	vDown
	.comm	vDown,32,8
	.type	vNow,@object            # @vNow
	.local	vNow
	.comm	vNow,32,8
	.type	qDown,@object           # @qDown
	.local	qDown
	.comm	qDown,32,8
	.type	qNow,@object            # @qNow
	.local	qNow
	.comm	qNow,32,8
	.type	mId,@object             # @mId
	.align	16
mId:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	mId, 128

	.type	mDown,@object           # @mDown
	.local	mDown
	.comm	mDown,128,16
	.type	mNow,@object            # @mNow
	.local	mNow
	.comm	mNow,128,16
	.type	dragging,@object        # @dragging
	.local	dragging
	.comm	dragging,4,4
	.type	showResult,@object      # @showResult
	.local	showResult
	.comm	showResult,4,4
	.type	axisSet,@object         # @axisSet
	.local	axisSet
	.comm	axisSet,4,4
	.type	sets,@object            # @sets
	.local	sets
	.comm	sets,32,16
	.type	setSizes,@object        # @setSizes
	.local	setSizes
	.comm	setSizes,16,16
	.type	otherAxis,@object       # @otherAxis
	.align	16
otherAxis:
	.quad	-4621053505652318536    # double -4.800000e-01
	.quad	4605380978949069210     # double 8.000000e-01
	.quad	4600156803381319434     # double 3.600000e-01
	.quad	4607182418800017408     # double 1.000000e+00
	.size	otherAxis, 32

	.type	vFrom,@object           # @vFrom
	.local	vFrom
	.comm	vFrom,32,8
	.type	vTo,@object             # @vTo
	.local	vTo
	.comm	vTo,32,8
	.type	axisIndex,@object       # @axisIndex
	.local	axisIndex
	.comm	axisIndex,4,4
	.type	qDrag,@object           # @qDrag
	.local	qDrag
	.comm	qDrag,32,8
	.type	vrFrom,@object          # @vrFrom
	.local	vrFrom
	.comm	vrFrom,32,8
	.type	vrTo,@object            # @vrTo
	.local	vrTo
	.comm	vrTo,32,8
	.type	V3_Sub.v,@object        # @V3_Sub.v
	.local	V3_Sub.v
	.comm	V3_Sub.v,32,8
	.type	V3_Negate.u,@object     # @V3_Negate.u
	.local	V3_Negate.u
	.comm	V3_Negate.u,32,8
	.type	V3_Unit.u,@object       # @V3_Unit.u
	.local	V3_Unit.u
	.comm	V3_Unit.u,32,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
