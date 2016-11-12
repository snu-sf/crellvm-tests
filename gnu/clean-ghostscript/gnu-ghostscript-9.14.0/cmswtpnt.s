	.text
	.file	"cmswtpnt.bc"
	.globl	cmsD50_XYZ
	.align	16, 0x90
	.type	cmsD50_XYZ,@function
cmsD50_XYZ:                             # @cmsD50_XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$cmsD50_XYZ.D50XYZ, %eax
	retq
.Lfunc_end0:
	.size	cmsD50_XYZ, .Lfunc_end0-cmsD50_XYZ
	.cfi_endproc

	.globl	cmsD50_xyY
	.align	16, 0x90
	.type	cmsD50_xyY,@function
cmsD50_xyY:                             # @cmsD50_xyY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$cmsD50_xyY.D50xyY, %edi
	movl	$cmsD50_XYZ.D50XYZ, %esi
	callq	cmsXYZ2xyY
	movl	$cmsD50_xyY.D50xyY, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	cmsD50_xyY, .Lfunc_end1-cmsD50_xyY
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4661014508095930368     # double 4000
.LCPI2_1:
	.quad	4664418596095524864     # double 7000
.LCPI2_2:
	.quad	4672601161629433856     # double 25000
.LCPI2_3:
	.quad	-4481700220488384512    # double -1.0E+9
.LCPI2_4:
	.quad	4611700429946195490     # double 2.0064000000000002
.LCPI2_5:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI2_6:
	.quad	4611243764943980121     # double 1.9017999999999999
.LCPI2_7:
	.quad	4652007308841189376     # double 1000
.LCPI2_8:
	.quad	4598084426976788627     # double 0.24748000000000001
.LCPI2_9:
	.quad	4597708286335910643     # double 0.23704
.LCPI2_10:
	.quad	4616873039298211873     # double 4.6070000000000002
.LCPI2_11:
	.quad	4613865310287072487     # double 2.9678
.LCPI2_12:
	.quad	4591806048808263966     # double 0.099110000000000003
.LCPI2_13:
	.quad	4597961316577374827     # double 0.244063
.LCPI2_14:
	.quad	-4609434218613702656    # double -3
.LCPI2_15:
	.quad	4613645084265294070     # double 2.8700000000000001
.LCPI2_16:
	.quad	-4624746457346762342    # double -0.27500000000000002
	.text
	.globl	cmsWhitePointFromTemp
	.align	16, 0x90
	.type	cmsWhitePointFromTemp,@function
cmsWhitePointFromTemp:                  # @cmsWhitePointFromTemp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 16
.Ltmp2:
	.cfi_offset %rbx, -16
	testq	%rdi, %rdi
	je	.LBB2_9
# BB#1:                                 # %cond.end
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	.LCPI2_0(%rip), %xmm0
	jb	.LBB2_4
# BB#2:                                 # %cond.end
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm0, %xmm3
	jb	.LBB2_4
# BB#3:                                 # %if.then
	movsd	.LCPI2_3(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	mulsd	.LCPI2_10(%rip), %xmm3
	movsd	.LCPI2_5(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	.LCPI2_11(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movsd	.LCPI2_7(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	.LCPI2_12(%rip), %xmm1
	addsd	%xmm2, %xmm1
	addsd	.LCPI2_13(%rip), %xmm1
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
	ucomisd	.LCPI2_1(%rip), %xmm0
	jbe	.LBB2_10
# BB#5:                                 # %if.else
	movsd	.LCPI2_2(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm0, %xmm3
	jb	.LBB2_10
# BB#6:                                 # %if.then.14
	movsd	.LCPI2_3(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	mulsd	.LCPI2_4(%rip), %xmm3
	movsd	.LCPI2_5(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	.LCPI2_6(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movsd	.LCPI2_7(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	.LCPI2_8(%rip), %xmm1
	addsd	%xmm2, %xmm1
	addsd	.LCPI2_9(%rip), %xmm1
.LBB2_7:                                # %if.end.25
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	.LCPI2_14(%rip), %xmm0
	movsd	.LCPI2_15(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	addsd	.LCPI2_16(%rip), %xmm2
	movsd	%xmm1, (%rdi)
	movsd	%xmm2, 8(%rdi)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 16(%rdi)
	movl	$1, %ebx
	jmp	.LBB2_8
.LBB2_10:                               # %if.else.24
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB2_8:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB2_9:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$54, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsWhitePointFromTemp, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	cmsWhitePointFromTemp, .Lfunc_end2-cmsWhitePointFromTemp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618441417868443648     # double 6
.LCPI3_1:
	.quad	4609434218613702656     # double 1.5
.LCPI3_2:
	.quad	4613937818241073152     # double 3
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_4:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI3_5:
	.quad	0                       # double 0
	.text
	.globl	cmsTempFromWhitePoint
	.align	16, 0x90
	.type	cmsTempFromWhitePoint,@function
cmsTempFromWhitePoint:                  # @cmsTempFromWhitePoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB3_10
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB3_11
# BB#2:                                 # %cond.end.4
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm1
	addsd	.LCPI3_1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	mulsd	.LCPI3_2(%rip), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$isotempdata+24, %ebx
	xorpd	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movsd	-24(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	-8(%rbx), %xmm1
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	-16(%rbx), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	mulsd	%xmm0, %xmm0
	addsd	.LCPI3_3(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB3_6
# BB#5:                                 # %call.sqrt
                                        #   in Loop: Header=BB3_4 Depth=1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB3_6:                                # %for.body.split
                                        #   in Loop: Header=BB3_4 Depth=1
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	testq	%r15, %r15
	movapd	%xmm1, %xmm2
	je	.LBB3_3
# BB#7:                                 # %for.body.split
                                        #   in Loop: Header=BB3_4 Depth=1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB3_8
.LBB3_3:                                # %for.cond
                                        #   in Loop: Header=BB3_4 Depth=1
	incq	%r15
	addq	$32, %rbx
	xorl	%eax, %eax
	cmpq	$30, %r15
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB3_4
	jmp	.LBB3_9
.LBB3_8:                                # %if.then
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm0
	subsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm3
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI3_4(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%r14)
	movl	$1, %eax
.LBB3_9:                                # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB3_10:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$151, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsTempFromWhitePoint, %ecx
	callq	__assert_fail
.LBB3_11:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$152, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsTempFromWhitePoint, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	cmsTempFromWhitePoint, .Lfunc_end3-cmsTempFromWhitePoint
	.cfi_endproc

	.globl	_cmsAdaptationMatrix
	.align	16, 0x90
	.type	_cmsAdaptationMatrix,@function
_cmsAdaptationMatrix:                   # @_cmsAdaptationMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 40
	subq	$392, %rsp              # imm = 0x188
.Ltmp14:
	.cfi_def_cfa_offset 432
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r12, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	.L_cmsAdaptationMatrix.LamRigg+64(%rip), %rax
	movq	%rax, 64(%rsp)
	movups	.L_cmsAdaptationMatrix.LamRigg+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	.L_cmsAdaptationMatrix.LamRigg+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	.L_cmsAdaptationMatrix.LamRigg+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	.L_cmsAdaptationMatrix.LamRigg(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	testq	%rsi, %rsi
	leaq	(%rsp), %rbx
	cmovneq	%rsi, %rbx
	movq	64(%rbx), %rax
	movq	%rax, 144(%rsp)
	movupd	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movupd	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movaps	%xmm3, 128(%rsp)
	movapd	%xmm2, 112(%rsp)
	movapd	%xmm1, 96(%rsp)
	movapd	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	leaq	320(%rsp), %rsi
	callq	_cmsMAT3inverse
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB4_2
# BB#1:                                 # %if.end.i
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r12), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r12), %xmm2         # xmm2 = mem[0],zero
	leaq	296(%rsp), %r12
	movq	%r12, %rdi
	callq	_cmsVEC3init
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r15), %xmm2         # xmm2 = mem[0],zero
	leaq	248(%rsp), %r15
	movq	%r15, %rdi
	callq	_cmsVEC3init
	leaq	272(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_cmsMAT3eval
	leaq	224(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_cmsMAT3eval
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	divsd	272(%rsp), %xmm0
	leaq	152(%rsp), %r15
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	movq	%r15, %rdi
	callq	_cmsVEC3init
	leaq	176(%rsp), %rdi
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	divsd	280(%rsp), %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	callq	_cmsVEC3init
	leaq	200(%rsp), %rdi
	movsd	240(%rsp), %xmm2        # xmm2 = mem[0],zero
	divsd	288(%rsp), %xmm2
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	callq	_cmsVEC3init
	leaq	80(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_cmsMAT3per
	leaq	320(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	_cmsMAT3per
	movl	$1, %eax
.LBB4_2:                                # %ComputeChromaticAdaptation.exit
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	_cmsAdaptationMatrix, .Lfunc_end4-_cmsAdaptationMatrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_cmsBuildRGB2XYZtransferMatrix
	.align	16, 0x90
	.type	_cmsBuildRGB2XYZtransferMatrix,@function
_cmsBuildRGB2XYZtransferMatrix:         # @_cmsBuildRGB2XYZtransferMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 40
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp23:
	.cfi_def_cfa_offset 496
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r12, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	(%rdx), %xmm3           # xmm3 = mem[0],zero
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	32(%rdx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	48(%rdx), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	movsd	56(%rdx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	leaq	96(%rsp), %r15
	movq	%r15, %rdi
	movapd	%xmm3, %xmm0
	callq	_cmsVEC3init
	leaq	120(%rsp), %rdi
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	leaq	144(%rsp), %rdi
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	subsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	subsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm1
	subsd	56(%rsp), %xmm1         # 8-byte Folded Reload
	subsd	80(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	subsd	48(%rsp), %xmm2         # 8-byte Folded Reload
	subsd	72(%rsp), %xmm2         # 8-byte Folded Reload
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	callq	_cmsVEC3init
	leaq	168(%rsp), %rsi
	movq	%r15, %rdi
	callq	_cmsMAT3inverse
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB5_3
# BB#1:                                 # %if.end
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	subsd	%xmm3, %xmm2
	divsd	%xmm3, %xmm2
	leaq	264(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsVEC3init
	leaq	240(%rsp), %rdi
	leaq	168(%rsp), %rsi
	movq	%rbx, %rdx
	callq	_cmsMAT3eval
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	240(%rsp), %xmm0
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	248(%rsp), %xmm1
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	256(%rsp), %xmm2
	movq	%r12, %rdi
	callq	_cmsVEC3init
	leaq	24(%r12), %rdi
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	240(%rsp), %xmm0
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	248(%rsp), %xmm1
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	256(%rsp), %xmm2
	callq	_cmsVEC3init
	leaq	48(%r12), %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	240(%rsp), %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	248(%rsp), %xmm1
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	256(%rsp), %xmm2
	callq	_cmsVEC3init
	leaq	432(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	cmsxyY2XYZ
	xorl	%ebx, %ebx
	leaq	360(%rsp), %rdi
	xorl	%esi, %esi
	movl	$cmsD50_XYZ.D50XYZ, %ecx
	movq	%r15, %rdx
	callq	_cmsAdaptationMatrix
	testl	%eax, %eax
	je	.LBB5_3
# BB#2:                                 # %if.end.i
	movq	64(%r12), %rax
	movq	%rax, 352(%rsp)
	movupd	(%r12), %xmm0
	movupd	16(%r12), %xmm1
	movupd	32(%r12), %xmm2
	movupd	48(%r12), %xmm3
	movapd	%xmm3, 336(%rsp)
	movapd	%xmm2, 320(%rsp)
	movapd	%xmm1, 304(%rsp)
	movapd	%xmm0, 288(%rsp)
	leaq	360(%rsp), %rsi
	leaq	288(%rsp), %rdx
	movq	%r12, %rdi
	callq	_cmsMAT3per
	movl	$1, %ebx
.LBB5_3:                                # %cleanup
	movl	%ebx, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	_cmsBuildRGB2XYZtransferMatrix, .Lfunc_end5-_cmsBuildRGB2XYZtransferMatrix
	.cfi_endproc

	.globl	cmsAdaptToIlluminant
	.align	16, 0x90
	.type	cmsAdaptToIlluminant,@function
cmsAdaptToIlluminant:                   # @cmsAdaptToIlluminant
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
	subq	$128, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 160
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB6_7
# BB#1:                                 # %cond.end
	testq	%rcx, %rcx
	je	.LBB6_8
# BB#2:                                 # %cond.end.4
	testq	%rax, %rax
	je	.LBB6_9
# BB#3:                                 # %cond.end.8
	testq	%rbx, %rbx
	je	.LBB6_10
# BB#4:                                 # %cond.end.12
	xorl	%r15d, %r15d
	leaq	56(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_cmsAdaptationMatrix
	testl	%eax, %eax
	je	.LBB6_6
# BB#5:                                 # %if.end
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsVEC3init
	leaq	(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdx
	callq	_cmsMAT3eval
	movaps	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movq	16(%rsp), %rax
	movq	%rax, 16(%r14)
	movl	$1, %r15d
.LBB6_6:                                # %cleanup
	movl	%r15d, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB6_7:                                # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$334, %edx              # imm = 0x14E
	movl	$.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant, %ecx
	callq	__assert_fail
.LBB6_8:                                # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$335, %edx              # imm = 0x14F
	movl	$.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant, %ecx
	callq	__assert_fail
.LBB6_9:                                # %cond.false.7
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$336, %edx              # imm = 0x150
	movl	$.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant, %ecx
	callq	__assert_fail
.LBB6_10:                               # %cond.false.11
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$337, %edx              # imm = 0x151
	movl	$.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	cmsAdaptToIlluminant, .Lfunc_end6-cmsAdaptToIlluminant
	.cfi_endproc

	.type	cmsD50_XYZ.D50XYZ,@object # @cmsD50_XYZ.D50XYZ
	.data
	.align	8
cmsD50_XYZ.D50XYZ:
	.quad	4606859961066697680     # double 0.96419999999999995
	.quad	4607182418800017408     # double 1
	.quad	4605605258210512260     # double 0.82489999999999996
	.size	cmsD50_XYZ.D50XYZ, 24

	.type	cmsD50_xyY.D50xyY,@object # @cmsD50_xyY.D50xyY
	.local	cmsD50_xyY.D50xyY
	.comm	cmsD50_xyY.D50xyY,24,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(WhitePoint != ((void*)0))"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmswtpnt.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__.cmsWhitePointFromTemp,@object # @__PRETTY_FUNCTION__.cmsWhitePointFromTemp
.L__PRETTY_FUNCTION__.cmsWhitePointFromTemp:
	.asciz	"cmsBool cmsWhitePointFromTemp(cmsCIExyY *, cmsFloat64Number)"
	.size	.L__PRETTY_FUNCTION__.cmsWhitePointFromTemp, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cmsWhitePointFromTemp: invalid temp"
	.size	.L.str.2, 36

	.type	.L__PRETTY_FUNCTION__.cmsTempFromWhitePoint,@object # @__PRETTY_FUNCTION__.cmsTempFromWhitePoint
.L__PRETTY_FUNCTION__.cmsTempFromWhitePoint:
	.asciz	"cmsBool cmsTempFromWhitePoint(cmsFloat64Number *, const cmsCIExyY *)"
	.size	.L__PRETTY_FUNCTION__.cmsTempFromWhitePoint, 69

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(TempK != ((void*)0))"
	.size	.L.str.3, 22

	.type	isotempdata,@object     # @isotempdata
	.section	.rodata,"a",@progbits
	.align	16
isotempdata:
	.quad	0                       # double 0
	.quad	4595655365481770076     # double 0.18006
	.quad	4598418774213124612     # double 0.26351999999999998
	.quad	-4625434247081854365    # double -0.24340999999999999
	.quad	4621819117588971520     # double 10
	.quad	4595676982759981454     # double 0.18065999999999999
	.quad	4598461468337592085     # double 0.26589000000000002
	.quad	-4625110528340638973    # double -0.25479000000000002
	.quad	4626322717216342016     # double 20
	.quad	4595701122053984160     # double 0.18132999999999999
	.quad	4598507765341761453     # double 0.26845999999999998
	.quad	-4624858867193461510    # double -0.26876
	.quad	4629137466983448576     # double 30
	.quad	4595728143651748383     # double 0.18207999999999999
	.quad	4598556944649692339     # double 0.27118999999999999
	.quad	-4624559287746248825    # double -0.28538999999999998
	.quad	4630826316843712512     # double 40
	.quad	4595758768129214503     # double 0.18293000000000001
	.quad	4598608826117399647     # double 0.27406999999999998
	.quad	-4624211429711030727    # double -0.30470000000000003
	.quad	4632233691727265792     # double 50
	.quad	4595792995486382518     # double 0.18387999999999999
	.quad	4598663229600898283     # double 0.27709
	.quad	-4623814212223896650    # double -0.32674999999999998
	.quad	4633641066610819072     # double 60
	.quad	4595831186011222620     # double 0.18493999999999999
	.quad	4598719434524247867     # double 0.28021000000000001
	.quad	-4623367274996876402    # double -0.35155999999999998
	.quad	4634626229029306368     # double 70
	.quad	4595873339703734808     # double 0.18611
	.quad	4598777260743463304     # double 0.28342000000000001
	.quad	-4622870257741999794    # double -0.37914999999999999
	.quad	4635329916471083008     # double 80
	.quad	4595919816851889272     # double 0.18740000000000001
	.quad	4598835987682604215     # double 0.28667999999999999
	.quad	-4622322620027311541    # double -0.40955000000000003
	.quad	4636033603912859648     # double 90
	.quad	4595970257167715821     # double 0.1888
	.quad	4598895255053700411     # double 0.28997000000000001
	.quad	-4621724001564841455    # double -0.44278000000000001
	.quad	4636737291354636288     # double 100
	.quad	4596025020939184646     # double 0.19031999999999999
	.quad	4598954522424796607     # double 0.29326000000000002
	.quad	-4621073681778649156    # double -0.47887999999999997
	.quad	4638496509959077888     # double 125
	.quad	4596179944766366191     # double 0.19461999999999999
	.quad	4599101339772648885     # double 0.30141000000000001
	.quad	-4619954267055269945    # double -0.58204
	.quad	4639481672377565184     # double 150
	.quad	4596360088751461011     # double 0.19961999999999999
	.quad	4599241852081022844     # double 0.30920999999999998
	.quad	-4618849353922690868    # double -0.70470999999999995
	.quad	4640361281679785984     # double 175
	.quad	4596562930878677778     # double 0.20524999999999999
	.quad	4599372636614201683     # double 0.31646999999999997
	.quad	-4617549615070231742    # double -0.84901000000000004
	.quad	4641240890982006784     # double 200
	.quad	4596785228556284786     # double 0.21142
	.quad	4599492432364289739     # double 0.32312000000000002
	.quad	-4616107652541540257    # double -1.0182
	.quad	4642120500284227584     # double 225
	.quad	4597024820056460897     # double 0.21807000000000001
	.quad	4599599978323391346     # double 0.32908999999999999
	.quad	-4615213237655544476    # double -1.2168000000000001
	.quad	4643000109586448384     # double 250
	.quad	4597278462787474403     # double 0.22511
	.quad	4599695454635491601     # double 0.33439000000000002
	.quad	-4614157593902888832    # double -1.4512
	.quad	4643545467353825280     # double 275
	.quad	4597543634733533978     # double 0.23247000000000001
	.quad	4599779221588560692     # double 0.33904000000000001
	.quad	-4612902891046703412    # double -1.7298
	.quad	4643985272004935680     # double 300
	.quad	4597818534454788673     # double 0.24010000000000001
	.quad	4599851999758538999     # double 0.34308
	.quad	-4611542578779256154    # double -2.0636999999999999
	.quad	4644425076656046080     # double 325
	.quad	4598067853730159903     # double 0.24701999999999999
	.quad	4599914509721366902     # double 0.34655000000000002
	.quad	-4610631950934601839    # double -2.4681000000000002
	.quad	4644864881307156480     # double 350
	.quad	4598281684640467455     # double 0.25591000000000003
	.quad	4599967832340954968     # double 0.34950999999999999
	.quad	-4609515058227013956    # double -2.9641000000000002
	.quad	4645304685958266880     # double 375
	.quad	4598427421124409164     # double 0.26400000000000001
	.quad	4600012688193243578     # double 0.35199999999999998
	.quad	-4608125022202026053    # double -3.5813999999999999
	.quad	4645744490609377280     # double 400
	.quad	4598574778904216726     # double 0.27217999999999998
	.quad	4600049977998158206     # double 0.35407
	.quad	-4606773379363861483    # double -4.3632999999999997
	.quad	4646184295260487680     # double 425
	.quad	4598722677115979573     # double 0.28038999999999997
	.quad	4600080602475624325     # double 0.35576999999999998
	.quad	-4605632955348220589    # double -5.3761999999999999
	.quad	4646624099911598080     # double 450
	.quad	4598871115759697705     # double 0.28863
	.quad	4600105282201582316     # double 0.35714000000000001
	.quad	-4604112990473983046    # double -6.7262000000000004
	.quad	4647063904562708480     # double 475
	.quad	4599019194115445647     # double 0.29685
	.quad	4600124917895957651     # double 0.35822999999999999
	.quad	-4602343582475384521    # double -8.5954999999999995
	.quad	4647503709213818880     # double 500
	.quad	4599166912183223399     # double 0.30504999999999999
	.quad	4600140049990705616     # double 0.35907
	.quad	-4600807573527474471    # double -11.324
	.quad	4647829164655640576     # double 525
	.quad	4599313729531075677     # double 0.31319999999999998
	.quad	4600151038773796400     # double 0.35968
	.quad	-4598384636927949144    # double -15.628
	.quad	4648049066981195776     # double 550
	.quad	4599459466015017387     # double 0.32129000000000002
	.quad	4600158784965155477     # double 0.36010999999999999
	.quad	-4596113415340870861    # double -23.324999999999999
	.quad	4648268969306750976     # double 575
	.quad	4599603941491063432     # double 0.32930999999999999
	.quad	4600163648852753037     # double 0.36037999999999998
	.quad	-4592437352145029693    # double -40.770000000000003
	.quad	4648488871632306176     # double 600
	.quad	4599746795671243624     # double 0.33723999999999998
	.quad	4600165990724559270     # double 0.36051
	.quad	-4585477179658416947    # double -116.45
	.size	isotempdata, 992

	.type	.L_cmsAdaptationMatrix.LamRigg,@object # @_cmsAdaptationMatrix.LamRigg
	.align	8
.L_cmsAdaptationMatrix.LamRigg:
	.quad	4606237563598195078     # double 8.951000e-01
	.quad	4598470655680831921     # double 2.664000e-01
	.quad	-4628388968725379600    # double -1.614000e-01
	.quad	-4618439616428592700    # double -7.502000e-01
	.quad	4610395737134146257     # double 1.713500e+00
	.quad	4585449848438178343     # double 3.670000e-02
	.quad	4585766901851945225     # double 3.890000e-02
	.quad	-4633771671000012816    # double -6.850000e-02
	.quad	4607315725348987575     # double 1.029600e+00
	.size	.L_cmsAdaptationMatrix.LamRigg, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"(Result != ((void*)0))"
	.size	.L.str.4, 23

	.type	.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant,@object # @__PRETTY_FUNCTION__.cmsAdaptToIlluminant
.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant:
	.asciz	"cmsBool cmsAdaptToIlluminant(cmsCIEXYZ *, const cmsCIEXYZ *, const cmsCIEXYZ *, const cmsCIEXYZ *)"
	.size	.L__PRETTY_FUNCTION__.cmsAdaptToIlluminant, 99

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(SourceWhitePt != ((void*)0))"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(Illuminant != ((void*)0))"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(Value != ((void*)0))"
	.size	.L.str.7, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
