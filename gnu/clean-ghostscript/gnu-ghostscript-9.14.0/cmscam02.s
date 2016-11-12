	.text
	.file	"cmscam02.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	4606281698874543309     # double 9.000000e-01
	.quad	4603489467105573601     # double 5.900000e-01
.LCPI0_1:
	.quad	4605380978949069210     # double 8.000000e-01
	.quad	4602903999154015437     # double 5.250000e-01
.LCPI0_2:
	.quad	4605380978949069210     # double 8.000000e-01
	.quad	4601057523306793533     # double 4.100000e-01
.LCPI0_3:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4604390187031047700     # double 6.900000e-01
.LCPI0_18:
	.quad	4601410605517579380     # double 4.296000e-01
	.quad	4604512684940912178     # double 7.036000e-01
.LCPI0_19:
	.quad	4604775695159150615     # double 7.328000e-01
	.quad	4610323679540108329     # double 1.697500e+00
.LCPI0_20:
	.quad	4595019096926415172     # double 1.624000e-01
	.quad	4573682843331784711     # double 6.100000e-03
.LCPI0_24:
	.quad	4604849366561369656     # double 7.409792e-01
	.quad	4598812085866652452     # double 2.853532e-01
.LCPI0_25:
	.quad	4597023200453588216     # double 2.180250e-01
	.quad	4603797525866303657     # double 6.242014e-01
.LCPI0_26:
	.quad	4586070377353828062     # double 4.100578e-02
	.quad	4591181700337888805     # double 9.044542e-02
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_4:
	.quad	4602678819172646912     # double 0.5
.LCPI0_5:
	.quad	4609344146621155246     # double 1.48
.LCPI0_6:
	.quad	4607182418800017408     # double 1
.LCPI0_7:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI0_8:
	.quad	4604705439004963635     # double 0.72499999999999998
.LCPI0_9:
	.quad	4617315517961601024     # double 5
.LCPI0_10:
	.quad	4616189618054758400     # double 4
.LCPI0_11:
	.quad	4611686018427387904     # double 2
.LCPI0_12:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_13:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI0_14:
	.quad	-4616189618054758400    # double -1
.LCPI0_15:
	.quad	-4592264245034352640    # double -42
.LCPI0_16:
	.quad	4636174341401214976     # double 92
.LCPI0_17:
	.quad	-4624696417350902670    # double -0.27777777777777779
.LCPI0_21:
	.quad	4569063951553953530     # double 0.0030000000000000001
.LCPI0_22:
	.quad	4578993488012379999     # double 0.013599999999999999
.LCPI0_23:
	.quad	4607032899292388708     # double 0.98340000000000005
.LCPI0_27:
	.quad	-4646668250950545007    # double -0.0096279999999999994
.LCPI0_28:
	.quad	-4650152667967843050    # double -0.0056979999999999999
.LCPI0_29:
	.quad	4607251440967906488     # double 1.015326
	.text
	.globl	cmsCIECAM02Init
	.align	16, 0x90
	.type	cmsCIECAM02Init,@function
cmsCIECAM02Init:                        # @cmsCIECAM02Init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$1544, %rsp             # imm = 0x608
.Ltmp4:
	.cfi_def_cfa_offset 1584
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB0_14
# BB#1:                                 # %cond.end
	movl	$368, %esi              # imm = 0x170
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB0_13
# BB#2:                                 # %if.end
	movq	%r14, 360(%r12)
	movq	(%rbx), %rax
	movq	%rax, (%r12)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%r12)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r12)
	movq	32(%rbx), %rax
	movq	%rax, 264(%r12)
	movq	24(%rbx), %rdx
	movq	%rdx, 272(%r12)
	movq	48(%rbx), %rax
	movq	%rax, 352(%r12)
	movl	40(%rbx), %eax
	movl	%eax, 304(%r12)
	movd	%rdx, %xmm0
	movd	%rcx, %xmm1
	cmpl	$2, %eax
	je	.LBB0_8
# BB#3:                                 # %if.end
	cmpl	$3, %eax
	jne	.LBB0_4
# BB#7:                                 # %sw.bb.14
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [8.000000e-01,5.250000e-01]
	jmp	.LBB0_6
.LBB0_8:                                # %sw.bb.18
	movaps	.LCPI0_0(%rip), %xmm2   # xmm2 = [9.000000e-01,5.900000e-01]
	movups	%xmm2, 280(%r12)
	movabsq	$4606732058837280358, %rax # imm = 0x3FEE666666666666
	jmp	.LBB0_10
.LBB0_4:                                # %if.end
	cmpl	$4, %eax
	jne	.LBB0_9
# BB#5:                                 # %sw.bb
	movaps	.LCPI0_2(%rip), %xmm2   # xmm2 = [8.000000e-01,4.100000e-01]
.LBB0_6:                                # %sw.epilog
	movups	%xmm2, 280(%r12)
	movabsq	$4605380978949069210, %rax # imm = 0x3FE999999999999A
	jmp	.LBB0_10
.LBB0_9:                                # %sw.default
	movaps	.LCPI0_3(%rip), %xmm2   # xmm2 = [1.000000e+00,6.900000e-01]
	movups	%xmm2, 280(%r12)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
.LBB0_10:                               # %sw.epilog
	movq	%rax, 296(%r12)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 312(%r12)
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	addsd	.LCPI0_5(%rip), %xmm0
	movsd	%xmm0, 336(%r12)
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	312(%r12), %xmm0
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	mulsd	.LCPI0_8(%rip), %xmm0
	movsd	%xmm0, 320(%r12)
	movsd	264(%r12), %xmm2        # xmm2 = mem[0],zero
	mulsd	.LCPI0_9(%rip), %xmm2
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 320(%rsp)        # 8-byte Spill
	movsd	.LCPI0_10(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	.LCPI0_7(%rip), %xmm0
	movsd	264(%r12), %xmm1        # xmm1 = mem[0],zero
	mulsd	.LCPI0_9(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 336(%rsp)        # 8-byte Spill
	movsd	320(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	mulsd	.LCPI0_12(%rip), %xmm0
	movsd	%xmm0, 320(%rsp)        # 8-byte Spill
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	264(%r12), %xmm0
	movsd	.LCPI0_13(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	320(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	336(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 344(%r12)
	movsd	352(%r12), %xmm0        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_14(%rip), %xmm0
	jne	.LBB0_12
	jp	.LBB0_12
# BB#11:                                # %if.then.31
	movsd	280(%r12), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	264(%r12), %xmm0
	divsd	.LCPI0_16(%rip), %xmm0
	callq	exp
	mulsd	.LCPI0_17(%rip), %xmm0
	addsd	336(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 352(%r12)
.LBB0_12:                               # %if.end.34
	movapd	%xmm0, 336(%rsp)        # 16-byte Spill
	movq	320(%r12), %rax
	movq	%rax, 328(%r12)
	movups	(%r12), %xmm0
	movaps	%xmm0, 304(%rsp)        # 16-byte Spill
	movsd	16(%r12), %xmm0         # xmm0 = mem[0],zero
	movapd	%xmm0, 320(%rsp)        # 16-byte Spill
	leaq	48(%r12), %r14
	leaq	1272(%rsp), %r15
	movl	$216, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movapd	304(%rsp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm1, 272(%rsp)        # 16-byte Spill
	movapd	.LCPI0_18(%rip), %xmm0  # xmm0 = [4.296000e-01,7.036000e-01]
	mulpd	%xmm1, %xmm0
	movapd	%xmm1, %xmm3
	movapd	.LCPI0_19(%rip), %xmm1  # xmm1 = [7.328000e-01,1.697500e+00]
	mulpd	%xmm2, %xmm1
	movapd	%xmm2, %xmm4
	movapd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	subpd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movaps	320(%rsp), %xmm5        # 16-byte Reload
	movaps	%xmm5, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	.LCPI0_20(%rip), %xmm2
	movapd	%xmm1, %xmm0
	subpd	%xmm2, %xmm0
	addpd	%xmm1, %xmm2
	movsd	%xmm0, %xmm2            # xmm2 = xmm0[0],xmm2[1]
	movapd	%xmm2, 288(%rsp)        # 16-byte Spill
	movsd	.LCPI0_21(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm4, %xmm0
	movsd	.LCPI0_22(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	mulsd	.LCPI0_23(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, 320(%rsp)        # 16-byte Spill
	leaq	1056(%rsp), %rbx
	movl	$216, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	$216, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	16(%r12), %rax
	movq	%rax, 1504(%rsp)
	movups	(%r12), %xmm0
	movaps	%xmm0, 1488(%rsp)
	leaq	72(%r12), %r14
	leaq	1272(%rsp), %r15
	movl	$192, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movapd	336(%rsp), %xmm2        # 16-byte Reload
	subsd	%xmm2, %xmm1
	movapd	%xmm2, %xmm0
	movapd	%xmm2, %xmm3
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movapd	288(%rsp), %xmm4        # 16-byte Reload
	divpd	%xmm4, %xmm0
	movaps	304(%rsp), %xmm2        # 16-byte Reload
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	mulpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	addpd	%xmm2, %xmm0
	mulpd	%xmm4, %xmm0
	movapd	%xmm0, 304(%rsp)        # 16-byte Spill
	movapd	%xmm3, %xmm0
	movapd	320(%rsp), %xmm2        # 16-byte Reload
	divsd	%xmm2, %xmm0
	mulsd	272(%rsp), %xmm0        # 16-byte Folded Reload
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, 336(%rsp)        # 16-byte Spill
	movq	1504(%rsp), %rax
	movq	%rax, 1040(%rsp)
	movaps	1488(%rsp), %xmm0
	movaps	%xmm0, 1024(%rsp)
	leaq	832(%rsp), %rbx
	movl	$192, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	1040(%rsp), %rax
	movq	%rax, 16(%r12)
	movaps	1024(%rsp), %xmm0
	movups	%xmm0, (%r12)
	movaps	288(%rsp), %xmm0        # 16-byte Reload
	movups	%xmm0, 24(%r12)
	movapd	320(%rsp), %xmm0        # 16-byte Reload
	movsd	%xmm0, 40(%r12)
	movl	$192, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movaps	%xmm2, 1520(%rsp)
	movaps	%xmm1, 1504(%rsp)
	movaps	%xmm0, 1488(%rsp)
	movq	%r12, %r14
	addq	$96, %r14
	leaq	1272(%rsp), %r15
	movl	$168, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movapd	304(%rsp), %xmm3        # 16-byte Reload
	movapd	%xmm3, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	%xmm3, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	.LCPI0_24(%rip), %xmm1
	movapd	%xmm3, %xmm2
	movapd	%xmm3, %xmm4
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	mulpd	.LCPI0_25(%rip), %xmm2
	addpd	%xmm1, %xmm2
	movaps	336(%rsp), %xmm3        # 16-byte Reload
	movaps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	.LCPI0_26(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, 320(%rsp)        # 16-byte Spill
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm4, %xmm1
	mulsd	.LCPI0_28(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_29(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 288(%rsp)        # 8-byte Spill
	movaps	1488(%rsp), %xmm0
	movaps	1504(%rsp), %xmm1
	movaps	1520(%rsp), %xmm2
	movaps	%xmm2, 816(%rsp)
	movaps	%xmm1, 800(%rsp)
	movaps	%xmm0, 784(%rsp)
	leaq	616(%rsp), %rbx
	movl	$168, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movaps	784(%rsp), %xmm0
	movaps	800(%rsp), %xmm1
	movaps	816(%rsp), %xmm2
	movups	%xmm2, 32(%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movaps	304(%rsp), %xmm0        # 16-byte Reload
	movups	%xmm0, 48(%r12)
	movapd	336(%rsp), %xmm0        # 16-byte Reload
	movsd	%xmm0, 64(%r12)
	movaps	320(%rsp), %xmm0        # 16-byte Reload
	movups	%xmm0, 72(%r12)
	movsd	288(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%r12)
	movl	$168, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$33, %ecx
	movq	%rsp, %rdi
	movq	%r12, %rsi
	rep;movsq
	leaq	352(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	NonlinearCompression
	movl	$264, %edx              # imm = 0x108
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r12, %rax
.LBB0_13:                               # %cleanup
	addq	$1544, %rsp             # imm = 0x608
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB0_14:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$363, %edx              # imm = 0x16B
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Init, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	cmsCIECAM02Init, .Lfunc_end0-cmsCIECAM02Init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4636737291354636288     # double 100
.LCPI1_1:
	.quad	4601237667291888353     # double 0.41999999999999998
.LCPI1_2:
	.quad	4645744490609377280     # double 400
.LCPI1_3:
	.quad	4628329633800288993     # double 27.129999999999999
.LCPI1_4:
	.quad	-4586634745500139520    # double -100
.LCPI1_5:
	.quad	-4577627546245398528    # double -400
.LCPI1_6:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI1_7:
	.quad	4626322717216342016     # double 20
.LCPI1_8:
	.quad	-4624206025391477883    # double -0.30499999999999999
	.text
	.align	16, 0x90
	.type	NonlinearCompression,@function
NonlinearCompression:                   # @NonlinearCompression
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	48(%rsp), %r15
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	344(%rbx), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	divsd	.LCPI1_4(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	divsd	.LCPI1_0(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB1_3:                                # %for.inc
	mulsd	%xmm0, %xmm1
	addsd	.LCPI1_3(%rip), %xmm0
	divsd	%xmm0, %xmm1
	addsd	.LCPI1_6(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 96(%r15)
	movsd	80(%r15), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	mulsd	344(%rbx), %xmm0
	jbe	.LBB1_4
# BB#5:                                 # %if.then.1
	divsd	.LCPI1_4(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB1_6
.LBB1_4:                                # %if.else.1
	divsd	.LCPI1_0(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB1_6:                                # %for.inc.1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI1_3(%rip), %xmm0
	divsd	%xmm0, %xmm1
	addsd	.LCPI1_6(%rip), %xmm1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 104(%r15)
	movsd	88(%r15), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	mulsd	344(%rbx), %xmm0
	jbe	.LBB1_7
# BB#8:                                 # %if.then.2
	divsd	.LCPI1_4(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB1_9
.LBB1_7:                                # %if.else.2
	divsd	.LCPI1_0(%rip), %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB1_9:                                # %for.inc.2
	mulsd	%xmm0, %xmm1
	addsd	.LCPI1_3(%rip), %xmm0
	divsd	%xmm0, %xmm1
	addsd	.LCPI1_6(%rip), %xmm1
	movsd	%xmm1, 112(%r15)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	divsd	.LCPI1_7(%rip), %xmm1
	addsd	%xmm0, %xmm1
	addsd	.LCPI1_8(%rip), %xmm1
	mulsd	320(%rbx), %xmm1
	movsd	%xmm1, 160(%r15)
	movl	$264, %edx              # imm = 0x108
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	NonlinearCompression, .Lfunc_end1-NonlinearCompression
	.cfi_endproc

	.globl	cmsCIECAM02Done
	.align	16, 0x90
	.type	cmsCIECAM02Done,@function
cmsCIECAM02Done:                        # @cmsCIECAM02Done
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB2_1
# BB#2:                                 # %if.then
	movq	360(%rax), %rdi
	movq	%rax, %rsi
	jmp	_cmsFree                # TAILCALL
.LBB2_1:                                # %if.end
	retq
.Lfunc_end2:
	.size	cmsCIECAM02Done, .Lfunc_end2-cmsCIECAM02Done
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4604775695159150615     # double 0.73280000000000001
.LCPI3_1:
	.quad	4601410605517579380     # double 0.42959999999999998
.LCPI3_2:
	.quad	-4628352939928360636    # double -0.16239999999999999
.LCPI3_6:
	.quad	4607182418800017408     # double 1
.LCPI3_10:
	.quad	-4646668250950545007    # double -0.0096279999999999994
.LCPI3_11:
	.quad	-4650152667967843050    # double -0.0056979999999999999
.LCPI3_12:
	.quad	4607251440967906488     # double 1.015326
.LCPI3_13:
	.quad	4636737291354636288     # double 100
.LCPI3_14:
	.quad	4601237667291888353     # double 0.41999999999999998
.LCPI3_15:
	.quad	4645744490609377280     # double 400
.LCPI3_16:
	.quad	4628329633800288993     # double 27.129999999999999
.LCPI3_17:
	.quad	-4586634745500139520    # double -100
.LCPI3_18:
	.quad	-4577627546245398528    # double -400
.LCPI3_19:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_20:
	.quad	4626322717216342016     # double 20
.LCPI3_21:
	.quad	-4624206025391477883    # double -0.30499999999999999
.LCPI3_22:
	.quad	-4600427019358961664    # double -12
.LCPI3_23:
	.quad	4622382067542392832     # double 11
.LCPI3_24:
	.quad	4621256167635550208     # double 9
.LCPI3_25:
	.quad	4633260481410478360     # double 57.295779505601047
.LCPI3_26:
	.quad	4640537203540230144     # double 180
.LCPI3_27:
	.quad	4645040803167600640     # double 360
.LCPI3_28:
	.quad	4636033603912859648     # double 90
.LCPI3_29:
	.quad	4643457506423603200     # double 270
.LCPI3_30:
	.quad	4651668997571104453     # double 961.53846153846155
.LCPI3_31:
	.quad	4580687790477189905     # double 0.017453292522222223
.LCPI3_32:
	.quad	4611686018427387904     # double 2
.LCPI3_33:
	.quad	4615739258092021350     # double 3.7999999999999998
.LCPI3_34:
	.quad	4616189618054758400     # double 4
.LCPI3_35:
	.quad	4602678819172646912     # double 0.5
.LCPI3_36:
	.quad	4598175219545276416     # double 0.25
.LCPI3_37:
	.quad	4607407598781385933     # double 1.05
.LCPI3_38:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI3_39:
	.quad	4598895795485655695     # double 0.28999999999999998
.LCPI3_40:
	.quad	4610064722561534525     # double 1.6399999999999999
.LCPI3_41:
	.quad	4604750475001237340     # double 0.72999999999999998
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_3:
	.quad	4610323679540108329     # double 1.697500e+00
	.quad	4569063951553953530     # double 3.000000e-03
.LCPI3_4:
	.quad	4604512684940912178     # double 7.036000e-01
	.quad	4578993488012379999     # double 1.360000e-02
.LCPI3_5:
	.quad	4573682843331784711     # double 6.100000e-03
	.quad	4607032899292388708     # double 9.834000e-01
.LCPI3_7:
	.quad	4604849366561369656     # double 7.409792e-01
	.quad	4598812085866652452     # double 2.853532e-01
.LCPI3_8:
	.quad	4597023200453588216     # double 2.180250e-01
	.quad	4603797525866303657     # double 6.242014e-01
.LCPI3_9:
	.quad	4586070377353828062     # double 4.100578e-02
	.quad	4591181700337888805     # double 9.044542e-02
	.text
	.globl	cmsCIECAM02Forward
	.align	16, 0x90
	.type	cmsCIECAM02Forward,@function
cmsCIECAM02Forward:                     # @cmsCIECAM02Forward
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$1608, %rsp             # imm = 0x648
.Ltmp22:
	.cfi_def_cfa_offset 1664
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB3_24
# BB#1:                                 # %cond.end
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB3_25
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	je	.LBB3_26
# BB#3:                                 # %cond.end.8
	leaq	992(%rsp), %rdi
	xorl	%esi, %esi
	movl	$264, %edx              # imm = 0x108
	callq	memset
	movq	(%rbx), %rbp
	movq	8(%rbx), %r14
	movq	16(%rbx), %r15
	movups	(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)         # 16-byte Spill
	movd	%rbp, %xmm0
	movd	%r14, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 64(%rsp)         # 16-byte Spill
	movd	%r15, %xmm0
	movaps	%xmm0, 112(%rsp)        # 16-byte Spill
	leaq	1040(%rsp), %r12
	leaq	1264(%rsp), %r13
	movl	$216, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movd	%rbp, %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	movd	%r14, %xmm1
	mulsd	.LCPI3_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	112(%rsp), %xmm2        # 16-byte Reload
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	movapd	64(%rsp), %xmm3         # 16-byte Reload
	mulpd	.LCPI3_3(%rip), %xmm3
	movapd	80(%rsp), %xmm1         # 16-byte Reload
	mulpd	.LCPI3_4(%rip), %xmm1
	movapd	%xmm3, %xmm0
	subpd	%xmm1, %xmm0
	addpd	%xmm3, %xmm1
	movsd	%xmm0, %xmm1            # xmm1 = xmm0[0],xmm1[1]
	movapd	%xmm2, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI3_5(%rip), %xmm0
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
	leaq	776(%rsp), %rbx
	movl	$216, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	%rbp, 992(%rsp)
	movq	%r14, 1000(%rsp)
	movq	%r15, 1008(%rsp)
	movl	$216, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	1008(%rsp), %rax
	movq	%rax, 1552(%rsp)
	movaps	992(%rsp), %xmm0
	movaps	%xmm0, 1536(%rsp)
	leaq	1064(%rsp), %r15
	leaq	1264(%rsp), %r12
	movl	$192, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	40(%rsp), %rbp          # 8-byte Reload
	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
	movsd	352(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI3_6(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movupd	24(%rbp), %xmm3
	movapd	%xmm1, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	divpd	%xmm3, %xmm4
	divsd	40(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm4, %xmm0
	addsd	%xmm2, %xmm1
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	addpd	%xmm0, %xmm2
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	movapd	112(%rsp), %xmm3        # 16-byte Reload
	unpcklpd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0]
	mulpd	%xmm2, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movapd	%xmm3, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	movq	1552(%rsp), %rax
	movq	%rax, 768(%rsp)
	movaps	1536(%rsp), %xmm0
	movaps	%xmm0, 752(%rsp)
	leaq	560(%rsp), %rbx
	movl	$192, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	768(%rsp), %rax
	movq	%rax, 1008(%rsp)
	movaps	752(%rsp), %xmm0
	movaps	%xmm0, 992(%rsp)
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	movsd	%xmm0, 1016(%rsp)
	movaps	112(%rsp), %xmm0        # 16-byte Reload
	movaps	%xmm0, 1024(%rsp)
	movl	$192, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movaps	992(%rsp), %xmm0
	movaps	1008(%rsp), %xmm1
	movaps	1024(%rsp), %xmm2
	movaps	%xmm2, 1568(%rsp)
	movaps	%xmm1, 1552(%rsp)
	movaps	%xmm0, 1536(%rsp)
	leaq	1088(%rsp), %r15
	leaq	1264(%rsp), %r12
	movl	$168, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movaps	48(%rsp), %xmm3         # 16-byte Reload
	movaps	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI3_7(%rip), %xmm0
	movaps	%xmm3, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movaps	%xmm3, %xmm2
	movaps	%xmm3, %xmm4
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	mulpd	.LCPI3_8(%rip), %xmm2
	addpd	%xmm0, %xmm2
	movaps	64(%rsp), %xmm3         # 16-byte Reload
	movaps	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI3_9(%rip), %xmm0
	addpd	%xmm2, %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	movsd	.LCPI3_10(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm4, %xmm0
	mulsd	.LCPI3_11(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI3_12(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movaps	1536(%rsp), %xmm0
	movaps	1552(%rsp), %xmm1
	movaps	1568(%rsp), %xmm2
	movaps	%xmm2, 544(%rsp)
	movaps	%xmm1, 528(%rsp)
	movaps	%xmm0, 512(%rsp)
	leaq	344(%rsp), %rbx
	movl	$168, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movaps	512(%rsp), %xmm0
	movaps	528(%rsp), %xmm1
	movaps	544(%rsp), %xmm2
	movaps	%xmm2, 1024(%rsp)
	movaps	%xmm1, 1008(%rsp)
	movaps	%xmm0, 992(%rsp)
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movaps	%xmm0, 1040(%rsp)
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	movsd	%xmm0, 1056(%rsp)
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 1064(%rsp)
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1080(%rsp)
	movl	$168, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	1056(%rsp), %rax
	movq	%rax, 1600(%rsp)
	movaps	992(%rsp), %xmm0
	movaps	1008(%rsp), %xmm1
	movaps	1024(%rsp), %xmm2
	movaps	1040(%rsp), %xmm3
	movaps	%xmm3, 1584(%rsp)
	movaps	%xmm2, 1568(%rsp)
	movaps	%xmm1, 1552(%rsp)
	movaps	%xmm0, 1536(%rsp)
	movq	1144(%rsp), %rax
	movq	%rax, 1520(%rsp)
	movups	1112(%rsp), %xmm0
	movups	1128(%rsp), %xmm1
	movaps	%xmm1, 1504(%rsp)
	movaps	%xmm0, 1488(%rsp)
	movups	1240(%rsp), %xmm0
	movaps	%xmm0, 1344(%rsp)
	movups	1224(%rsp), %xmm0
	movaps	%xmm0, 1328(%rsp)
	movups	1160(%rsp), %xmm0
	movups	1176(%rsp), %xmm1
	movups	1192(%rsp), %xmm2
	movups	1208(%rsp), %xmm3
	movaps	%xmm3, 1312(%rsp)
	movaps	%xmm2, 1296(%rsp)
	movaps	%xmm1, 1280(%rsp)
	movaps	%xmm0, 1264(%rsp)
	movsd	344(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	96(%rsp), %xmm2         # 16-byte Reload
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB3_5
# BB#4:                                 # %if.then.i.39
	divsd	.LCPI3_17(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_18(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.i.42
	divsd	.LCPI3_13(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_15(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB3_6:                                # %for.inc.i
	mulsd	%xmm0, %xmm1
	addsd	.LCPI3_16(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	344(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	jbe	.LBB3_7
# BB#8:                                 # %if.then.1.i
	divsd	.LCPI3_17(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_18(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB3_9
.LBB3_7:                                # %if.else.1.i
	divsd	.LCPI3_13(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_15(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB3_9:                                # %for.inc.1.i
	mulsd	%xmm0, %xmm1
	addsd	.LCPI3_16(%rip), %xmm0
	divsd	%xmm0, %xmm1
	leaq	1112(%rsp), %r15
	leaq	1160(%rsp), %rbx
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI3_19(%rip), %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	addsd	.LCPI3_19(%rip), %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	344(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	jbe	.LBB3_10
# BB#11:                                # %if.then.2.i
	divsd	.LCPI3_17(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_18(%rip), %xmm5  # xmm5 = mem[0],zero
	jmp	.LBB3_12
.LBB3_10:                               # %if.else.2.i
	divsd	.LCPI3_13(%rip), %xmm0
	movsd	.LCPI3_14(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_15(%rip), %xmm5  # xmm5 = mem[0],zero
.LBB3_12:                               # %NonlinearCompression.exit
	mulsd	%xmm0, %xmm5
	addsd	.LCPI3_16(%rip), %xmm0
	divsd	%xmm0, %xmm5
	addsd	.LCPI3_19(%rip), %xmm5
	movsd	112(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm0
	addsd	%xmm0, %xmm0
	movsd	64(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm0
	movapd	%xmm5, %xmm6
	divsd	.LCPI3_20(%rip), %xmm6
	addsd	%xmm0, %xmm6
	addsd	.LCPI3_21(%rip), %xmm6
	mulsd	320(%rbp), %xmm6
	movq	1600(%rsp), %rax
	movq	%rax, 336(%rsp)
	movaps	1536(%rsp), %xmm0
	movaps	1552(%rsp), %xmm1
	movaps	1568(%rsp), %xmm2
	movaps	1584(%rsp), %xmm3
	movaps	%xmm3, 320(%rsp)
	movaps	%xmm2, 304(%rsp)
	movaps	%xmm1, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movq	1520(%rsp), %rax
	movq	%rax, 256(%rsp)
	movaps	1488(%rsp), %xmm0
	movaps	1504(%rsp), %xmm1
	movaps	%xmm1, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	1344(%rsp), %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	1328(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	1264(%rsp), %xmm0
	movaps	1280(%rsp), %xmm1
	movaps	1296(%rsp), %xmm2
	movaps	1312(%rsp), %xmm3
	movaps	%xmm3, 176(%rsp)
	movaps	%xmm2, 160(%rsp)
	movaps	%xmm1, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 1056(%rsp)
	movaps	272(%rsp), %xmm0
	movaps	288(%rsp), %xmm1
	movaps	304(%rsp), %xmm2
	movaps	320(%rsp), %xmm3
	movaps	%xmm3, 1040(%rsp)
	movaps	%xmm2, 1024(%rsp)
	movaps	%xmm1, 1008(%rsp)
	movaps	%xmm0, 992(%rsp)
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 1064(%rsp)
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1080(%rsp)
	movsd	%xmm4, 1088(%rsp)
	movsd	%xmm7, 1096(%rsp)
	movsd	%xmm5, 1104(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 32(%r15)
	movaps	224(%rsp), %xmm0
	movaps	240(%rsp), %xmm1
	movups	%xmm1, 16(%r15)
	movups	%xmm0, (%r15)
	movsd	%xmm6, 1152(%rsp)
	movaps	208(%rsp), %xmm0
	movups	%xmm0, 80(%rbx)
	movaps	192(%rsp), %xmm0
	movups	%xmm0, 64(%rbx)
	movaps	128(%rsp), %xmm0
	movaps	144(%rsp), %xmm1
	movaps	160(%rsp), %xmm2
	movaps	176(%rsp), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movsd	.LCPI3_22(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm7, %xmm0
	movsd	.LCPI3_23(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addsd	%xmm4, %xmm0
	movapd	%xmm5, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	addsd	%xmm7, %xmm4
	movsd	%xmm4, 112(%rsp)        # 8-byte Spill
	movapd	%xmm5, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm4
	divsd	.LCPI3_24(%rip), %xmm4
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	jne	.LBB3_17
	jp	.LBB3_17
# BB#13:                                # %if.then.i
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	ucomisd	%xmm1, %xmm4
	movapd	%xmm4, %xmm2
	jne	.LBB3_14
	jnp	.LBB3_23
.LBB3_14:                               # %if.else.i
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	jbe	.LBB3_16
# BB#15:
	movsd	.LCPI3_28(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	jmp	.LBB3_23
.LBB3_17:                               # %if.else.24.i
	movapd	%xmm4, %xmm0
	divsd	%xmm2, %xmm0
	jbe	.LBB3_22
# BB#18:                                # %if.then.26.i
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm4
	movsd	%xmm4, 96(%rsp)         # 8-byte Spill
	jbe	.LBB3_20
# BB#19:                                # %if.then.29.i
	callq	atan
	movapd	%xmm0, %xmm1
	mulsd	.LCPI3_25(%rip), %xmm1
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.43.i
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	movsd	%xmm4, 96(%rsp)         # 8-byte Spill
	callq	atan
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	.LCPI3_25(%rip), %xmm1
	addsd	.LCPI3_26(%rip), %xmm1
	jmp	.LBB3_23
.LBB3_16:                               # %if.else.21.i
	movsd	.LCPI3_29(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	jmp	.LBB3_23
.LBB3_20:                               # %if.else.32.i
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB3_21
	jnp	.LBB3_23
.LBB3_21:                               # %if.else.36.i
	callq	atan
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	.LCPI3_25(%rip), %xmm1
	addsd	.LCPI3_27(%rip), %xmm1
.LBB3_23:                               # %if.end.50.i
	movsd	%xmm2, 96(%rsp)         # 8-byte Spill
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	296(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI3_30(%rip), %xmm0
	mulsd	328(%rbp), %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	.LCPI3_31(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI3_32(%rip), %xmm0
	callq	cos
	addsd	.LCPI3_33(%rip), %xmm0
	mulsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	160(%rbp), %xmm0
	movsd	288(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	336(%rbp), %xmm1
	callq	pow
	movsd	.LCPI3_13(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	.LCPI3_34(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	288(%rbp), %xmm2
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	.LCPI3_35(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	.LCPI3_34(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	160(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movsd	344(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI3_36(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI3_35(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	.LCPI3_37(%rip), %xmm2
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI3_38(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_35(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	312(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI3_39(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI3_40(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	.LCPI3_41(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	344(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI3_36(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	.LCPI3_35(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r14)
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%r14)
	addq	$1608, %rsp             # imm = 0x648
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_24:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$441, %edx              # imm = 0x1B9
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Forward, %ecx
	callq	__assert_fail
.LBB3_25:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$442, %edx              # imm = 0x1BA
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Forward, %ecx
	callq	__assert_fail
.LBB3_26:                               # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$443, %edx              # imm = 0x1BB
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Forward, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	cmsCIECAM02Forward, .Lfunc_end3-cmsCIECAM02Forward
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
.LCPI4_2:
	.quad	4598895795485655695     # double 0.28999999999999998
.LCPI4_3:
	.quad	4610064722561534525     # double 1.6399999999999999
.LCPI4_4:
	.quad	4604750475001237340     # double 0.72999999999999998
.LCPI4_5:
	.quad	4607682818758614130     # double 1.1111111111111112
.LCPI4_6:
	.quad	4651668997571104453     # double 961.53846153846155
.LCPI4_7:
	.quad	4580687790477189905     # double 0.017453292522222223
.LCPI4_8:
	.quad	4611686018427387904     # double 2
.LCPI4_9:
	.quad	4615739258092021350     # double 3.7999999999999998
.LCPI4_10:
	.quad	4607182418800017408     # double 1
.LCPI4_11:
	.quad	4599166011463297925     # double 0.30499999999999999
.LCPI4_12:
	.quad	4614050408231757414     # double 3.0499999999999998
.LCPI4_13:
	.quad	4599577980084949193     # double 0.32786885245901637
.LCPI4_14:
	.quad	4602287201813745129     # double 0.47826086956521735
.LCPI4_15:
	.quad	-4642167972854693841    # double -0.019244476122594441
.LCPI4_16:
	.quad	4616994520126435629     # double 4.7148966500356382
.LCPI4_17:
	.quad	4616972852772561965     # double 4.6956521739130439
.LCPI4_20:
	.quad	-4628554454665329427    # double -0.15680684248039914
.LCPI4_21:
	.quad	-4606630302523532928    # double -4.4903777619387029
.LCPI4_23:
	.quad	4628329633800288993     # double 27.129999999999999
.LCPI4_24:
	.quad	4645744490609377280     # double 400
.LCPI4_25:
	.quad	4612543846927839427     # double 2.3809523809523809
.LCPI4_29:
	.quad	-4631501856787818086    # double -0.10000000000000001
.LCPI4_30:
	.quad	-4616189618054758400    # double -1
.LCPI4_31:
	.quad	4609700617707794456     # double 1.5591524816
.LCPI4_32:
	.quad	-4620290389891603658    # double -0.54472286879999987
.LCPI4_33:
	.quad	-4643895255215711072    # double -0.014438380799999984
.LCPI4_40:
	.quad	-4646668250950545007    # double -0.0096279999999999994
.LCPI4_41:
	.quad	-4650152667967843050    # double -0.0056979999999999999
.LCPI4_42:
	.quad	4607251440967906488     # double 1.015326
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_18:
	.quad	4599462420864289651     # double 3.214540e-01
	.quad	4603895400967923760     # double 6.350677e-01
.LCPI4_19:
	.quad	4596563810412746132     # double 2.052744e-01
	.quad	4595870455088788878     # double 1.860299e-01
.LCPI4_22:
	.quad	-4631501856787818086    # double -1.000000e-01
	.quad	-4631501856787818086    # double -1.000000e-01
.LCPI4_26:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
.LCPI4_27:
	.quad	-4616189618054758400    # double -1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
.LCPI4_28:
	.quad	4636737291354636288     # double 1.000000e+02
	.quad	4636737291354636288     # double 1.000000e+02
.LCPI4_34:
	.quad	4577365280958567255     # double 1.077551e-02
	.quad	4611011872849067998     # double 1.850310e+00
.LCPI4_35:
	.quad	4604609305025004037     # double 7.143270e-01
	.quad	4572666845552076583     # double 5.218762e-03
.LCPI4_36:
	.quad	4594066095210064328     # double 1.359489e-01
	.quad	4607038356149133366     # double 9.840058e-01
.LCPI4_37:
	.quad	4607615322810598770     # double 1.096124e+00
	.quad	4601856804154260740     # double 4.543690e-01
.LCPI4_38:
	.quad	4598695277215846651     # double 2.788690e-01
	.quad	4602202032087296452     # double 4.735330e-01
.LCPI4_39:
	.quad	4595752102801765994     # double 1.827450e-01
	.quad	4589859629078111456     # double 7.209800e-02
	.text
	.globl	cmsCIECAM02Reverse
	.align	16, 0x90
	.type	cmsCIECAM02Reverse,@function
cmsCIECAM02Reverse:                     # @cmsCIECAM02Reverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$1576, %rsp             # imm = 0x628
.Ltmp35:
	.cfi_def_cfa_offset 1632
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB4_7
# BB#1:                                 # %cond.end
	testq	%rbp, %rbp
	je	.LBB4_8
# BB#2:                                 # %cond.end.4
	testq	%rdx, %rdx
	je	.LBB4_9
# BB#3:                                 # %cond.end.8
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	976(%rsp), %rdi
	xorl	%esi, %esi
	movl	$264, %edx              # imm = 0x108
	callq	memset
	movq	(%rbp), %r12
	movq	%r12, 1144(%rsp)
	movq	8(%rbp), %r15
	movq	%r15, 1176(%rsp)
	movq	16(%rbp), %rbp
	movq	%rbp, 1112(%rsp)
	movups	1056(%rsp), %xmm0
	movaps	%xmm0, 1456(%rsp)
	movups	1040(%rsp), %xmm0
	movaps	%xmm0, 1440(%rsp)
	movups	976(%rsp), %xmm0
	movups	992(%rsp), %xmm1
	movups	1008(%rsp), %xmm2
	movups	1024(%rsp), %xmm3
	movaps	%xmm3, 1424(%rsp)
	movaps	%xmm2, 1408(%rsp)
	movaps	%xmm1, 1392(%rsp)
	movaps	%xmm0, 1376(%rsp)
	movd	%rbp, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movups	1120(%rsp), %xmm0
	movaps	%xmm0, 1280(%rsp)
	movd	%r12, %xmm3
	movq	1168(%rsp), %rax
	movq	%rax, 1264(%rsp)
	movups	1152(%rsp), %xmm0
	movaps	%xmm0, 1248(%rsp)
	movd	%r15, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	leaq	1184(%rsp), %r14
	movq	1232(%rsp), %rax
	movq	%rax, 1344(%rsp)
	movups	1184(%rsp), %xmm0
	movups	1200(%rsp), %xmm1
	movups	1216(%rsp), %xmm2
	movaps	%xmm2, 1328(%rsp)
	movaps	%xmm1, 1312(%rsp)
	movaps	%xmm0, 1296(%rsp)
	movapd	%xmm3, %xmm0
	divsd	.LCPI4_0(%rip), %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	312(%rbx), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	.LCPI4_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	296(%rbx), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI4_6(%rip), %xmm0
	mulsd	328(%rbx), %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI4_7(%rip), %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI4_8(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	cos
	addsd	.LCPI4_9(%rip), %xmm0
	mulsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	160(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	288(%rbx), %xmm0        # xmm0 = mem[0],zero
	mulsd	336(%rbx), %xmm0
	movsd	.LCPI4_10(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow
	mulsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	48(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	divsd	320(%rbx), %xmm0
	addsd	.LCPI4_11(%rip), %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	callq	fabs
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	callq	fabs
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB4_4
# BB#5:                                 # %if.else.i
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI4_12(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0         # 16-byte Folded Reload
	mulsd	.LCPI4_13(%rip), %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	addsd	.LCPI4_14(%rip), %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	.LCPI4_17(%rip), %xmm1
	addsd	80(%rsp), %xmm1         # 8-byte Folded Reload
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	32(%rsp), %xmm8         # 16-byte Reload
	movapd	48(%rsp), %xmm7         # 16-byte Reload
	divsd	%xmm0, %xmm7
	mulsd	%xmm8, %xmm7
	jmp	.LBB4_6
.LBB4_4:                                # %if.then.i
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI4_12(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0         # 16-byte Folded Reload
	mulsd	.LCPI4_13(%rip), %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	.LCPI4_14(%rip), %xmm1
	addsd	80(%rsp), %xmm1         # 8-byte Folded Reload
	addsd	.LCPI4_15(%rip), %xmm1
	addsd	.LCPI4_16(%rip), %xmm1
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	divsd	%xmm1, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movapd	32(%rsp), %xmm8         # 16-byte Reload
	movapd	48(%rsp), %xmm7         # 16-byte Reload
	divsd	%xmm0, %xmm8
	mulsd	%xmm7, %xmm8
.LBB4_6:                                # %InverseCorrelates.exit
	movapd	64(%rsp), %xmm6         # 16-byte Reload
	mulsd	.LCPI4_13(%rip), %xmm6
	movapd	%xmm8, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	.LCPI4_18(%rip), %xmm1
	movapd	%xmm6, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movaps	%xmm0, %xmm2
	addpd	%xmm1, %xmm2
	subpd	%xmm1, %xmm0
	movsd	%xmm2, %xmm0            # xmm0 = xmm2[0],xmm0[1]
	movapd	%xmm7, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	.LCPI4_19(%rip), %xmm2
	movapd	%xmm0, %xmm1
	addpd	%xmm2, %xmm1
	subpd	%xmm2, %xmm0
	movaps	1456(%rsp), %xmm2
	movaps	%xmm2, 960(%rsp)
	movaps	1440(%rsp), %xmm2
	movaps	%xmm2, 944(%rsp)
	movaps	1376(%rsp), %xmm2
	movaps	1392(%rsp), %xmm3
	movaps	1408(%rsp), %xmm4
	movaps	1424(%rsp), %xmm5
	movaps	%xmm5, 928(%rsp)
	movaps	%xmm4, 912(%rsp)
	movaps	%xmm3, 896(%rsp)
	movaps	%xmm2, 880(%rsp)
	movaps	960(%rsp), %xmm2
	movaps	%xmm2, 1056(%rsp)
	movaps	944(%rsp), %xmm2
	movaps	%xmm2, 1040(%rsp)
	movaps	880(%rsp), %xmm2
	movaps	896(%rsp), %xmm3
	movaps	912(%rsp), %xmm4
	movaps	928(%rsp), %xmm5
	movaps	%xmm5, 1024(%rsp)
	movaps	%xmm4, 1008(%rsp)
	movaps	%xmm3, 992(%rsp)
	movaps	%xmm2, 976(%rsp)
	movlpd	%xmm1, 1072(%rsp)
	movhpd	%xmm0, 1080(%rsp)
	movsd	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1]
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	movsd	.LCPI4_20(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm8, %xmm0
	addsd	%xmm6, %xmm0
	movsd	.LCPI4_21(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm7, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm3
	movaps	1280(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movq	1264(%rsp), %rax
	movq	%rax, 848(%rsp)
	movaps	1248(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movq	1344(%rsp), %rax
	movq	%rax, 816(%rsp)
	movaps	1296(%rsp), %xmm0
	movaps	1312(%rsp), %xmm1
	movaps	1328(%rsp), %xmm2
	movaps	%xmm2, 800(%rsp)
	movaps	%xmm1, 784(%rsp)
	movaps	%xmm0, 768(%rsp)
	leaq	1072(%rsp), %r13
	movsd	%xmm3, 1088(%rsp)
	movsd	%xmm8, 1096(%rsp)
	movsd	%xmm7, 1104(%rsp)
	movq	%rbp, 1112(%rsp)
	movaps	864(%rsp), %xmm0
	leaq	1120(%rsp), %rax
	movups	%xmm0, (%rax)
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1136(%rsp)
	movq	%r12, 1144(%rsp)
	movq	848(%rsp), %rax
	leaq	1152(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movaps	832(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movq	%r15, 1176(%rsp)
	movq	816(%rsp), %rax
	movq	%rax, 48(%r14)
	movaps	768(%rsp), %xmm0
	movaps	784(%rsp), %xmm1
	movaps	800(%rsp), %xmm2
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	1040(%rsp), %rax
	movq	%rax, 1360(%rsp)
	movaps	976(%rsp), %xmm0
	movaps	992(%rsp), %xmm1
	movaps	1008(%rsp), %xmm2
	movaps	1024(%rsp), %xmm3
	movaps	%xmm3, 1344(%rsp)
	movaps	%xmm2, 1328(%rsp)
	movaps	%xmm1, 1312(%rsp)
	movaps	%xmm0, 1296(%rsp)
	leaq	1048(%rsp), %r12
	leaq	1376(%rsp), %r14
	movl	$144, %edx
	movq	%r14, %rdi
	leaq	1096(%rsp), %rbp
	movq	%rbp, %rsi
	callq	memcpy
	movapd	.LCPI4_22(%rip), %xmm0  # xmm0 = [-1.000000e-01,-1.000000e-01]
	addpd	80(%rsp), %xmm0         # 16-byte Folded Reload
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movsd	344(%rbx), %xmm1        # xmm1 = mem[0],zero
	movapd	%xmm1, 48(%rsp)         # 16-byte Spill
	callq	fabs
	movsd	.LCPI4_24(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI4_23(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	.LCPI4_25(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	32(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm1
	cmpltpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	andnpd	.LCPI4_26(%rip), %xmm0
	andpd	.LCPI4_27(%rip), %xmm1
	orpd	%xmm0, %xmm1
	movsd	344(%rbx), %xmm0        # xmm0 = mem[0],zero
	movapd	48(%rsp), %xmm3         # 16-byte Reload
	unpcklpd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0]
	movapd	.LCPI4_28(%rip), %xmm0  # xmm0 = [1.000000e+02,1.000000e+02]
	divpd	%xmm3, %xmm0
	mulpd	%xmm1, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	fabs
	movsd	.LCPI4_24(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI4_23(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	.LCPI4_25(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	mulpd	48(%rsp), %xmm1         # 16-byte Folded Reload
	movapd	%xmm1, 96(%rsp)         # 16-byte Spill
	movsd	.LCPI4_29(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	xorpd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	cmpltsd	%xmm1, %xmm2
	movsd	.LCPI4_30(%rip), %xmm1  # xmm1 = mem[0],zero
	andpd	%xmm2, %xmm1
	movsd	.LCPI4_10(%rip), %xmm3  # xmm3 = mem[0],zero
	andnpd	%xmm3, %xmm2
	orpd	%xmm1, %xmm2
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	344(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	callq	fabs
	movsd	.LCPI4_23(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI4_24(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI4_25(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movq	1360(%rsp), %rax
	movq	%rax, 752(%rsp)
	movaps	1296(%rsp), %xmm0
	movaps	1312(%rsp), %xmm1
	movaps	1328(%rsp), %xmm2
	movaps	1344(%rsp), %xmm3
	movaps	%xmm3, 736(%rsp)
	movaps	%xmm2, 720(%rsp)
	movaps	%xmm1, 704(%rsp)
	movaps	%xmm0, 688(%rsp)
	leaq	544(%rsp), %r15
	movl	$144, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	736(%rsp), %rax
	movq	%rax, 1024(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	704(%rsp), %xmm1
	movaps	720(%rsp), %xmm2
	movaps	%xmm2, 1008(%rsp)
	movaps	%xmm1, 992(%rsp)
	movaps	%xmm0, 976(%rsp)
	movaps	80(%rsp), %xmm0         # 16-byte Reload
	movaps	%xmm0, 1072(%rsp)
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1088(%rsp)
	movl	$144, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movaps	976(%rsp), %xmm0
	movaps	992(%rsp), %xmm1
	movaps	1008(%rsp), %xmm2
	movaps	%xmm2, 1328(%rsp)
	movaps	%xmm1, 1312(%rsp)
	movaps	%xmm0, 1296(%rsp)
	leaq	1376(%rsp), %r15
	movl	$168, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movsd	.LCPI4_31(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	96(%rsp), %xmm2         # 16-byte Reload
	mulsd	%xmm2, %xmm0
	movapd	%xmm2, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	mulsd	.LCPI4_32(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI4_33(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movapd	.LCPI4_34(%rip), %xmm0  # xmm0 = [1.077551e-02,1.850310e+00]
	mulpd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	.LCPI4_35(%rip), %xmm1  # xmm1 = [7.143270e-01,5.218762e-03]
	mulpd	%xmm2, %xmm1
	movapd	%xmm0, %xmm2
	subpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movapd	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI4_36(%rip), %xmm0
	movapd	%xmm1, %xmm2
	subpd	%xmm0, %xmm2
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	movapd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	movaps	1296(%rsp), %xmm0
	movaps	1312(%rsp), %xmm1
	movaps	1328(%rsp), %xmm2
	movaps	%xmm2, 528(%rsp)
	movaps	%xmm1, 512(%rsp)
	movaps	%xmm0, 496(%rsp)
	leaq	328(%rsp), %rbp
	movl	$168, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movaps	496(%rsp), %xmm0
	movaps	512(%rsp), %xmm1
	movaps	%xmm1, 992(%rsp)
	movaps	%xmm0, 976(%rsp)
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 1048(%rsp)
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	movsd	%xmm0, 1064(%rsp)
	movl	$168, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	992(%rsp), %rax
	movq	%rax, 1312(%rsp)
	movaps	976(%rsp), %xmm0
	movaps	%xmm0, 1296(%rsp)
	leaq	1376(%rsp), %rbp
	movl	$192, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movsd	352(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	divsd	24(%rbx), %xmm2
	movsd	.LCPI4_10(%rip), %xmm3  # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	divsd	%xmm2, %xmm4
	movapd	%xmm4, 96(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm2
	divsd	32(%rbx), %xmm2
	addsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	movapd	80(%rsp), %xmm4         # 16-byte Reload
	divsd	%xmm2, %xmm4
	movapd	%xmm4, 80(%rsp)         # 16-byte Spill
	divsd	40(%rbx), %xmm1
	addsd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	divsd	%xmm1, %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	movq	1312(%rsp), %rax
	movq	%rax, 320(%rsp)
	movaps	1296(%rsp), %xmm0
	movaps	%xmm0, 304(%rsp)
	leaq	112(%rsp), %rbx
	movl	$192, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movaps	304(%rsp), %xmm0
	movaps	%xmm0, 976(%rsp)
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1024(%rsp)
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movups	%xmm0, 1032(%rsp)
	movl	$192, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movaps	96(%rsp), %xmm4         # 16-byte Reload
	movaps	%xmm4, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI4_37(%rip), %xmm0
	movaps	80(%rsp), %xmm3         # 16-byte Reload
	movaps	%xmm3, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	.LCPI4_38(%rip), %xmm1
	movapd	%xmm0, %xmm2
	subpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movaps	64(%rsp), %xmm5         # 16-byte Reload
	movaps	%xmm5, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	.LCPI4_39(%rip), %xmm0
	addpd	%xmm1, %xmm0
	movaps	%xmm4, %xmm2
	mulsd	.LCPI4_40(%rip), %xmm2
	movaps	%xmm3, %xmm1
	mulsd	.LCPI4_41(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	mulsd	.LCPI4_42(%rip), %xmm2
	addsd	%xmm1, %xmm2
	movq	24(%rsp), %rax          # 8-byte Reload
	movupd	%xmm0, (%rax)
	movsd	%xmm2, 16(%rax)
	addq	$1576, %rsp             # imm = 0x628
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_7:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$467, %edx              # imm = 0x1D3
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse, %ecx
	callq	__assert_fail
.LBB4_8:                                # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$468, %edx              # imm = 0x1D4
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse, %ecx
	callq	__assert_fail
.LBB4_9:                                # %cond.false.7
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$469, %edx              # imm = 0x1D5
	movl	$.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	cmsCIECAM02Reverse, .Lfunc_end4-cmsCIECAM02Reverse
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(pVC != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmscam02.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__.cmsCIECAM02Init,@object # @__PRETTY_FUNCTION__.cmsCIECAM02Init
.L__PRETTY_FUNCTION__.cmsCIECAM02Init:
	.asciz	"cmsHANDLE cmsCIECAM02Init(cmsContext, const cmsViewingConditions *)"
	.size	.L__PRETTY_FUNCTION__.cmsCIECAM02Init, 68

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(lpMod != ((void*)0))"
	.size	.L.str.2, 22

	.type	.L__PRETTY_FUNCTION__.cmsCIECAM02Forward,@object # @__PRETTY_FUNCTION__.cmsCIECAM02Forward
.L__PRETTY_FUNCTION__.cmsCIECAM02Forward:
	.asciz	"void cmsCIECAM02Forward(cmsHANDLE, const cmsCIEXYZ *, cmsJCh *)"
	.size	.L__PRETTY_FUNCTION__.cmsCIECAM02Forward, 64

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(pIn != ((void*)0))"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(pOut != ((void*)0))"
	.size	.L.str.4, 21

	.type	.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse,@object # @__PRETTY_FUNCTION__.cmsCIECAM02Reverse
.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse:
	.asciz	"void cmsCIECAM02Reverse(cmsHANDLE, const cmsJCh *, cmsCIEXYZ *)"
	.size	.L__PRETTY_FUNCTION__.cmsCIECAM02Reverse, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
