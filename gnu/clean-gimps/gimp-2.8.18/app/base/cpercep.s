	.text
	.file	"cpercep.bc"
	.globl	cpercep_init
	.align	16, 0x90
	.type	cpercep_init,@function
cpercep_init:                           # @cpercep_init
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
	cmpl	$0, cpercep_init.initialized
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	rgbxyzrgb_init
	movl	$1, cpercep_init.initialized
.LBB0_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cpercep_init, .Lfunc_end0-cpercep_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4605290906914914304     # double 0.78999999538064003
.LCPI1_1:
	.quad	4591870177489977344     # double 0.099999964237213134
.LCPI1_2:
	.quad	4584304133036572672     # double 0.030000001192092896
.LCPI1_3:
	.quad	4588807732127072256     # double 0.059999998658895493
.LCPI1_4:
	.quad	4603579539312869376     # double 0.60000002384185791
.LCPI1_5:
	.quad	4599616371662258176     # double 0.33000001311302185
.LCPI1_6:
	.quad	4594572340058128384     # double 0.15000000596046448
.LCPI1_7:
	.quad	4599075939685498880     # double 0.30000001192092896
.LCPI1_8:
	.quad	4603939826939461632     # double 0.63999998569488525
.LCPI1_9:
	.quad	4607582863822181362     # double 1.0889166567405906
.LCPI1_10:
	.quad	4606736104958244192     # double 0.95044920966544665
.LCPI1_11:
	.quad	4612136378497499136     # double 2.2000000476837158
	.text
	.align	16, 0x90
	.type	rgbxyzrgb_init,@function
rgbxyzrgb_init:                         # @rgbxyzrgb_init
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
	subq	$192, %rsp
	movsd	.LCPI1_11, %xmm0        # xmm0 = mem[0],zero
	callq	init_powtable
	leaq	-160(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI1_4, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI1_5, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI1_6, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI1_7, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI1_8, %xmm8         # xmm8 = mem[0],zero
	movsd	.LCPI1_9, %xmm9         # xmm9 = mem[0],zero
	movsd	.LCPI1_10, %xmm10       # xmm10 = mem[0],zero
	movsd	%xmm10, xnn
	movsd	%xmm9, znn
	movsd	%xmm8, -80(%rbp)
	movsd	%xmm7, -72(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	callq	Minvert
	movabsq	$Mrgb_to_xyz, %rdi
	movabsq	$Mxyz_to_rgb, %rsi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	xnn, %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	znn, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	xnn, %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	znn, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	xnn, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	znn, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+8
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+16
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+24
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+32
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+40
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+48
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+56
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	%xmm0, Mrgb_to_xyz+64
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	Minvert
	movl	%eax, -192(%rbp)        # 4-byte Spill
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rgbxyzrgb_init, .Lfunc_end1-rgbxyzrgb_init
	.cfi_endproc

	.globl	cpercep_rgb_to_space
	.align	16, 0x90
	.type	cpercep_rgb_to_space,@function
cpercep_rgb_to_space:                   # @cpercep_rgb_to_space
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
	subq	$48, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	cvttsd2si	-8(%rbp), %r9d
	movslq	%r9d, %rdx
	movsd	powtable(,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	cvttsd2si	-16(%rbp), %r9d
	movslq	%r9d, %rdx
	movsd	powtable(,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	cvttsd2si	-24(%rbp), %r9d
	movslq	%r9d, %rdx
	movsd	powtable(,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	rgb_to_xyz
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	xyz_to_lab
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cpercep_rgb_to_space, .Lfunc_end2-cpercep_rgb_to_space
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_to_xyz,@function
rgb_to_xyz:                             # @rgb_to_xyz
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
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	Mrgb_to_xyz, %xmm0      # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mrgb_to_xyz+8, %xmm1    # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mrgb_to_xyz+16, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	Mrgb_to_xyz+24, %xmm0   # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mrgb_to_xyz+32, %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mrgb_to_xyz+40, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	Mrgb_to_xyz+48, %xmm0   # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mrgb_to_xyz+56, %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mrgb_to_xyz+64, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rgb_to_xyz, .Lfunc_end3-rgb_to_xyz
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4576258758421774336     # double 0.0088560003787279129
.LCPI4_1:
	.quad	4651156726538567680     # double 903.29998779296875
.LCPI4_2:
	.quad	4625196817309499392     # double 16
.LCPI4_3:
	.quad	4637863191261478912     # double 116
.LCPI4_4:
	.quad	4641240890982006784     # double 200
.LCPI4_5:
	.quad	4647503709213818880     # double 500
	.text
	.align	16, 0x90
	.type	xyz_to_lab,@function
xyz_to_lab:                             # @xyz_to_lab
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
	subq	$96, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_5
# BB#1:                                 # %if.then
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_3
# BB#2:                                 # %if.then.2
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cbrt
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.4
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB4_6:                                # %if.end.5
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ffunc
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	xnn, %xmm0
	callq	ffunc
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	znn, %xmm1
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ffunc
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xyz_to_lab, .Lfunc_end4-xyz_to_lab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4569156756193673216     # double 0.0030402475968003273
.LCPI5_2:
	.quad	4624084990936743936     # double 14.024999618530273
.LCPI5_3:
	.quad	4643440353934835712     # double 269.02499389648438
.LCPI5_4:
	.quad	4601177619117899776     # double 0.4166666567325592
.LCPI5_5:
	.quad	4659463317306212352     # double 3294.60009765625
	.text
	.globl	cpercep_space_to_rgb
	.align	16, 0x90
	.type	cpercep_space_to_rgb,@function
cpercep_space_to_rgb:                   # @cpercep_space_to_rgb
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
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	lab_to_xyz
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	xyz_to_rgb
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_2
# BB#1:                                 # %cond.true
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_2:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB5_4
# BB#3:                                 # %cond.true.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false.3
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB5_5:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB5_6:                                # %cond.end.4
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_8
# BB#7:                                 # %cond.true.7
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB5_12
.LBB5_8:                                # %cond.false.8
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB5_10
# BB#9:                                 # %cond.true.10
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false.11
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB5_11:                               # %cond.end.12
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB5_12:                               # %cond.end.14
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_14
# BB#13:                                # %cond.true.17
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_14:                               # %cond.false.18
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB5_16
# BB#15:                                # %cond.true.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB5_17
.LBB5_16:                               # %cond.false.21
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB5_17:                               # %cond.end.22
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB5_18:                               # %cond.end.24
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	ucomisd	-8(%rbp), %xmm1
	jb	.LBB5_20
# BB#19:                                # %if.then
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB5_21:                               # %if.end
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB5_23
# BB#22:                                # %if.then.29
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.31
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB5_24:                               # %if.end.35
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB5_26
# BB#25:                                # %if.then.37
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB5_27
.LBB5_26:                               # %if.else.39
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB5_27:                               # %if.end.43
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cpercep_space_to_rgb, .Lfunc_end5-cpercep_space_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4620692758120628224     # double 7.9995918273925781
.LCPI6_1:
	.quad	4594137509516017664     # double 0.13793103396892548
.LCPI6_2:
	.quad	4620453401203834880     # double 7.7870001792907715
.LCPI6_3:
	.quad	4651156726538567680     # double 903.29998779296875
.LCPI6_4:
	.quad	4637863191261478912     # double 116
.LCPI6_5:
	.quad	4625196817309499392     # double 16
.LCPI6_6:
	.quad	4641240890982006784     # double 200
.LCPI6_7:
	.quad	4647503709213818880     # double 500
	.text
	.align	16, 0x90
	.type	lab_to_xyz,@function
lab_to_xyz:                             # @lab_to_xyz
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
	subq	$96, %rsp
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_5, %xmm1         # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm2         # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -40(%rbp)
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB6_3:                                # %if.end
	movsd	.LCPI6_7, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	xnn, %xmm0              # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ffunc_inv
	movsd	.LCPI6_6, %xmm1         # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	znn, %xmm0              # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ffunc_inv
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lab_to_xyz, .Lfunc_end6-lab_to_xyz
	.cfi_endproc

	.align	16, 0x90
	.type	xyz_to_rgb,@function
xyz_to_rgb:                             # @xyz_to_rgb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	Mxyz_to_rgb, %xmm0      # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mxyz_to_rgb+8, %xmm1    # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mxyz_to_rgb+16, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	Mxyz_to_rgb+24, %xmm0   # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mxyz_to_rgb+32, %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mxyz_to_rgb+40, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	Mxyz_to_rgb+48, %xmm0   # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	Mxyz_to_rgb+56, %xmm1   # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	Mxyz_to_rgb+64, %xmm1   # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xyz_to_rgb, .Lfunc_end7-xyz_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4612586738567610368     # double 2.4000000953674316
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_1:
	.long	1065814589              # float 1.05499995
.LCPI8_2:
	.long	1029785518              # float 0.0549999997
.LCPI8_3:
	.long	1132396544              # float 255
.LCPI8_4:
	.long	1162733978              # float 3294.6001
	.text
	.align	16, 0x90
	.type	init_powtable,@function
init_powtable:                          # @init_powtable
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
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$11, -12(%rbp)
	jge	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movss	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movslq	-12(%rbp), %rax
	movsd	%xmm0, powtable(,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	jmp	.LBB8_5
.LBB8_5:                                # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB8_8
# BB#6:                                 # %for.body.5
                                        #   in Loop: Header=BB8_5 Depth=1
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movss	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI8_3, %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtsi2ssl	-12(%rbp), %xmm4
	divss	%xmm3, %xmm4
	addss	%xmm2, %xmm4
	divss	%xmm0, %xmm4
	cvtss2sd	%xmm4, %xmm0
	callq	pow
	movslq	-12(%rbp), %rax
	movsd	%xmm0, powtable(,%rax,8)
# BB#7:                                 # %for.inc.12
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_5
.LBB8_8:                                # %for.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	init_powtable, .Lfunc_end8-init_powtable
	.cfi_endproc

	.align	16, 0x90
	.type	Minvert,@function
Minvert:                                # @Minvert
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsd	32(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	64(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	40(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	56(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	56(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	64(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	40(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	32(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 16(%rsi)
	movq	-16(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	64(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 24(%rsi)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	64(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	48(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 32(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	40(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 40(%rsi)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	56(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	32(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	48(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 48(%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	56(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 56(%rsi)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	32(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 64(%rsi)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	mulsd	(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	mulsd	24(%rsi), %xmm2
	addsd	%xmm2, %xmm1
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	mulsd	48(%rsi), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	movl	$1, -4(%rbp)
.LBB9_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Minvert, .Lfunc_end9-Minvert
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4576258758421774336     # double 0.0088560003787279129
.LCPI10_1:
	.quad	4594137509516017664     # double 0.13793103396892548
.LCPI10_2:
	.quad	4620453401203834880     # double 7.7870001792907715
	.text
	.align	16, 0x90
	.type	ffunc,@function
ffunc:                                  # @ffunc
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
	subq	$16, %rsp
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cbrt
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB10_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ffunc, .Lfunc_end10-ffunc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4596622126085046272     # double 0.20689299702644348
.LCPI11_1:
	.quad	4620453401203834880     # double 7.7870001792907715
.LCPI11_2:
	.quad	4594137509516017664     # double 0.13793103396892548
	.text
	.align	16, 0x90
	.type	ffunc_inv,@function
ffunc_inv:                              # @ffunc_inv
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
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -8(%rbp)
.LBB11_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ffunc_inv, .Lfunc_end11-ffunc_inv
	.cfi_endproc

	.type	cpercep_init.initialized,@object # @cpercep_init.initialized
	.local	cpercep_init.initialized
	.comm	cpercep_init.initialized,4,4
	.type	powtable,@object        # @powtable
	.local	powtable
	.comm	powtable,2048,16
	.type	xnn,@object             # @xnn
	.local	xnn
	.comm	xnn,8,8
	.type	znn,@object             # @znn
	.local	znn
	.comm	znn,8,8
	.type	Mrgb_to_xyz,@object     # @Mrgb_to_xyz
	.local	Mrgb_to_xyz
	.comm	Mrgb_to_xyz,72,16
	.type	Mxyz_to_rgb,@object     # @Mxyz_to_rgb
	.local	Mxyz_to_rgb
	.comm	Mxyz_to_rgb,72,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
