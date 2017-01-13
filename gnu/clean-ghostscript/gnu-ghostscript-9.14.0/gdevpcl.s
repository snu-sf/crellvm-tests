	.text
	.file	"gdevpcl.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1088946176              # float 7.25
.LCPI0_1:
	.long	1093140480              # float 10.5
.LCPI0_3:
	.long	3212836864              # float -1
.LCPI0_4:
	.long	1091043328              # float 8.5
.LCPI0_5:
	.long	1093664768              # float 11
.LCPI0_6:
	.long	1096810496              # float 14
.LCPI0_7:
	.long	1099431936              # float 17
.LCPI0_21:
	.long	1089470464              # float 7.5
.LCPI0_23:
	.long	1092091904              # float 9.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_2:
	.quad	-4646453807550688133    # double -0.01
.LCPI0_8:
	.quad	4618250014884280402     # double 5.8300000000000001
.LCPI0_9:
	.quad	4620845214169552650     # double 8.2699999999999996
.LCPI0_10:
	.quad	4622770503010253537     # double 11.69
.LCPI0_11:
	.quad	4625348813796923146     # double 16.539999999999999
.LCPI0_12:
	.quad	4627276917387391140     # double 23.390000000000001
.LCPI0_13:
	.quad	4629856635548944302     # double 33.109999999999999
.LCPI0_14:
	.quad	4631784739139412296     # double 46.810000000000002
.LCPI0_15:
	.quad	4619747461760381092     # double 7.1600000000000001
.LCPI0_16:
	.quad	4621886671583382077     # double 10.119999999999999
.LCPI0_17:
	.quad	4624256690887285801     # double 14.33
.LCPI0_18:
	.quad	4616054510065937285     # double 3.9399999999999999
.LCPI0_19:
	.quad	4620546850694239355     # double 7.8700000000000001
.LCPI0_20:
	.quad	4615896884078979318     # double 3.8700000000000001
.LCPI0_22:
	.quad	4616324726043579515     # double 4.1200000000000001
.LCPI0_24:
	.quad	4616561165024016466     # double 4.3300000000000001
.LCPI0_25:
	.quad	4621064764651386962     # double 8.6600000000000001
.LCPI0_26:
	.quad	4618869259833043845     # double 6.3799999999999999
.LCPI0_27:
	.quad	4621261797135084421     # double 9.0099999999999998
.LCPI0_28:
	.quad	4619488504781807288     # double 6.9299999999999997
.LCPI0_29:
	.quad	4621729045596424110     # double 9.8399999999999999
	.text
	.globl	gdev_pcl_paper_size
	.align	16, 0x90
	.type	gdev_pcl_paper_size,@function
gdev_pcl_paper_size:                    # @gdev_pcl_paper_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	832(%rdi), %eax
	movl	836(%rdi), %ecx
	cvtsi2ssl	%eax, %xmm10
	divss	884(%rdi), %xmm10
	cvtsi2ssl	%ecx, %xmm0
	divss	888(%rdi), %xmm0
	cmpl	%ecx, %eax
	movaps	%xmm0, %xmm4
	jg	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm10, %xmm4
.LBB0_2:                                # %entry
	jg	.LBB0_4
# BB#3:                                 # %entry
	movaps	%xmm0, %xmm10
.LBB0_4:                                # %entry
	movss	.LCPI0_0(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm7
	movss	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	subss	%xmm10, %xmm3
	cvtss2sd	%xmm7, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	%cl, %al
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jne	.LBB0_6
# BB#5:                                 # %entry
	movaps	%xmm1, %xmm7
.LBB0_6:                                # %entry
	jne	.LBB0_8
# BB#7:                                 # %entry
	movaps	%xmm1, %xmm3
.LBB0_8:                                # %entry
	cmpb	$1, %al
	movl	$1, %eax
	adcl	$0, %eax
	movss	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm2
	movss	.LCPI0_5(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm6
	ucomisd	%xmm0, %xmm6
	jbe	.LBB0_15
# BB#9:                                 # %entry
	movaps	%xmm5, %xmm0
	subss	%xmm10, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_15
# BB#10:                                # %land.lhs.true.56
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_11
	jnp	.LBB0_14
.LBB0_11:                               # %land.lhs.true.56
	ucomiss	%xmm2, %xmm7
	ja	.LBB0_14
# BB#12:                                # %lor.lhs.false.63
	ucomiss	%xmm7, %xmm2
	jne	.LBB0_15
	jp	.LBB0_15
# BB#13:                                # %lor.lhs.false.63
	ucomiss	%xmm0, %xmm3
	jbe	.LBB0_15
.LBB0_14:                               # %if.then.69
	movl	$2, %eax
	movaps	%xmm2, %xmm7
	movaps	%xmm0, %xmm3
.LBB0_15:                               # %if.end.70
	ucomisd	.LCPI0_2(%rip), %xmm6
	jbe	.LBB0_22
# BB#16:                                # %if.end.70
	movss	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm10, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_22
# BB#17:                                # %land.lhs.true.84
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_18
	jnp	.LBB0_21
.LBB0_18:                               # %land.lhs.true.84
	ucomiss	%xmm2, %xmm7
	ja	.LBB0_21
# BB#19:                                # %lor.lhs.false.91
	ucomiss	%xmm7, %xmm2
	jne	.LBB0_22
	jp	.LBB0_22
# BB#20:                                # %lor.lhs.false.91
	ucomiss	%xmm0, %xmm3
	jbe	.LBB0_22
.LBB0_21:                               # %if.then.97
	movl	$3, %eax
	movaps	%xmm2, %xmm7
	movaps	%xmm0, %xmm3
.LBB0_22:                               # %if.end.98
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm4, %xmm2
	subss	%xmm4, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_29
# BB#23:                                # %if.end.98
	movss	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm10, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_29
# BB#24:                                # %land.lhs.true.112
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_25
	jnp	.LBB0_28
.LBB0_25:                               # %land.lhs.true.112
	ucomiss	%xmm5, %xmm7
	ja	.LBB0_28
# BB#26:                                # %lor.lhs.false.119
	ucomiss	%xmm7, %xmm5
	jne	.LBB0_29
	jp	.LBB0_29
# BB#27:                                # %lor.lhs.false.119
	ucomiss	%xmm0, %xmm3
	jbe	.LBB0_29
.LBB0_28:                               # %if.then.125
	movl	$6, %eax
	movaps	%xmm5, %xmm7
	movaps	%xmm0, %xmm3
.LBB0_29:                               # %if.end.126
	cvtss2sd	%xmm10, %xmm4
	movsd	.LCPI0_8(%rip), %xmm11  # xmm11 = mem[0],zero
	movapd	%xmm11, %xmm0
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm9
	movsd	.LCPI0_9(%rip), %xmm6   # xmm6 = mem[0],zero
	cvtss2sd	%xmm9, %xmm8
	ucomisd	.LCPI0_2(%rip), %xmm8
	jbe	.LBB0_36
# BB#30:                                # %if.end.126
	movapd	%xmm6, %xmm0
	subsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_36
# BB#31:                                # %land.lhs.true.140
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_32
	jnp	.LBB0_35
.LBB0_32:                               # %land.lhs.true.140
	ucomiss	%xmm9, %xmm7
	ja	.LBB0_35
# BB#33:                                # %lor.lhs.false.147
	ucomiss	%xmm7, %xmm9
	jne	.LBB0_36
	jp	.LBB0_36
# BB#34:                                # %lor.lhs.false.147
	ucomiss	%xmm0, %xmm3
	jbe	.LBB0_36
.LBB0_35:                               # %if.then.153
	movl	$25, %eax
	movaps	%xmm9, %xmm7
	movaps	%xmm0, %xmm3
.LBB0_36:                               # %if.end.154
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	movsd	.LCPI0_10(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_43
# BB#37:                                # %if.end.154
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_43
# BB#38:                                # %land.lhs.true.168
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_39
	jnp	.LBB0_42
.LBB0_39:                               # %land.lhs.true.168
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_42
# BB#40:                                # %lor.lhs.false.175
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_43
	jp	.LBB0_43
# BB#41:                                # %lor.lhs.false.175
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_43
.LBB0_42:                               # %if.then.181
	movl	$26, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_43:                               # %if.end.182
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	movsd	.LCPI0_11(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_50
# BB#44:                                # %if.end.182
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_50
# BB#45:                                # %land.lhs.true.196
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_46
	jnp	.LBB0_49
.LBB0_46:                               # %land.lhs.true.196
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_49
# BB#47:                                # %lor.lhs.false.203
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_50
	jp	.LBB0_50
# BB#48:                                # %lor.lhs.false.203
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_50
.LBB0_49:                               # %if.then.209
	movl	$27, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_50:                               # %if.end.210
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	movsd	.LCPI0_12(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_57
# BB#51:                                # %if.end.210
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_57
# BB#52:                                # %land.lhs.true.224
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_53
	jnp	.LBB0_56
.LBB0_53:                               # %land.lhs.true.224
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_56
# BB#54:                                # %lor.lhs.false.231
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_57
	jp	.LBB0_57
# BB#55:                                # %lor.lhs.false.231
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_57
.LBB0_56:                               # %if.then.237
	movl	$28, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_57:                               # %if.end.238
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	movsd	.LCPI0_13(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_64
# BB#58:                                # %if.end.238
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_64
# BB#59:                                # %land.lhs.true.252
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_60
	jnp	.LBB0_63
.LBB0_60:                               # %land.lhs.true.252
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_63
# BB#61:                                # %lor.lhs.false.259
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_64
	jp	.LBB0_64
# BB#62:                                # %lor.lhs.false.259
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_64
.LBB0_63:                               # %if.then.265
	movl	$29, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_64:                               # %if.end.266
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_71
# BB#65:                                # %if.end.266
	movsd	.LCPI0_14(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_71
# BB#66:                                # %land.lhs.true.280
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_67
	jnp	.LBB0_70
.LBB0_67:                               # %land.lhs.true.280
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_70
# BB#68:                                # %lor.lhs.false.287
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_71
	jp	.LBB0_71
# BB#69:                                # %lor.lhs.false.287
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_71
.LBB0_70:                               # %if.then.293
	movl	$30, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_71:                               # %if.end.294
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movsd	.LCPI0_16(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_78
# BB#72:                                # %if.end.294
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_78
# BB#73:                                # %land.lhs.true.308
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_74
	jnp	.LBB0_77
.LBB0_74:                               # %land.lhs.true.308
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_77
# BB#75:                                # %lor.lhs.false.315
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_78
	jp	.LBB0_78
# BB#76:                                # %lor.lhs.false.315
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_78
.LBB0_77:                               # %if.then.321
	movl	$45, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_78:                               # %if.end.322
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_85
# BB#79:                                # %if.end.322
	movsd	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_85
# BB#80:                                # %land.lhs.true.336
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_81
	jnp	.LBB0_84
.LBB0_81:                               # %land.lhs.true.336
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_84
# BB#82:                                # %lor.lhs.false.343
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_85
	jp	.LBB0_85
# BB#83:                                # %lor.lhs.false.343
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_85
.LBB0_84:                               # %if.then.349
	movl	$46, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_85:                               # %if.end.350
	movsd	.LCPI0_18(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_92
# BB#86:                                # %if.end.350
	subsd	%xmm4, %xmm11
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm11, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_92
# BB#87:                                # %land.lhs.true.364
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_88
	jnp	.LBB0_91
.LBB0_88:                               # %land.lhs.true.364
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_91
# BB#89:                                # %lor.lhs.false.371
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_92
	jp	.LBB0_92
# BB#90:                                # %lor.lhs.false.371
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_92
.LBB0_91:                               # %if.then.377
	movl	$71, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_92:                               # %if.end.378
	ucomisd	.LCPI0_2(%rip), %xmm8
	jbe	.LBB0_99
# BB#93:                                # %if.end.378
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_99
# BB#94:                                # %land.lhs.true.392
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_95
	jnp	.LBB0_98
.LBB0_95:                               # %land.lhs.true.392
	ucomiss	%xmm9, %xmm7
	ja	.LBB0_98
# BB#96:                                # %lor.lhs.false.399
	ucomiss	%xmm7, %xmm9
	jne	.LBB0_99
	jp	.LBB0_99
# BB#97:                                # %lor.lhs.false.399
	ucomiss	%xmm0, %xmm3
	jbe	.LBB0_99
.LBB0_98:                               # %if.then.405
	movl	$72, %eax
	movaps	%xmm9, %xmm7
	movaps	%xmm0, %xmm3
.LBB0_99:                               # %if.end.406
	movss	.LCPI0_21(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	subss	%xmm10, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_106
# BB#100:                               # %if.end.406
	movsd	.LCPI0_20(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_106
# BB#101:                               # %land.lhs.true.420
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_102
	jnp	.LBB0_105
.LBB0_102:                              # %land.lhs.true.420
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_105
# BB#103:                               # %lor.lhs.false.427
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_106
	jp	.LBB0_106
# BB#104:                               # %lor.lhs.false.427
	ucomiss	%xmm5, %xmm3
	jbe	.LBB0_106
.LBB0_105:                              # %if.then.433
	movl	$80, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm5, %xmm3
.LBB0_106:                              # %if.end.434
	movss	.LCPI0_23(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	subss	%xmm10, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_113
# BB#107:                               # %if.end.434
	movsd	.LCPI0_22(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_113
# BB#108:                               # %land.lhs.true.448
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_109
	jnp	.LBB0_112
.LBB0_109:                              # %land.lhs.true.448
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_112
# BB#110:                               # %lor.lhs.false.455
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_113
	jp	.LBB0_113
# BB#111:                               # %lor.lhs.false.455
	ucomiss	%xmm5, %xmm3
	jbe	.LBB0_113
.LBB0_112:                              # %if.then.461
	movl	$81, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm5, %xmm3
.LBB0_113:                              # %if.end.462
	movsd	.LCPI0_24(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_120
# BB#114:                               # %if.end.462
	movsd	.LCPI0_25(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_120
# BB#115:                               # %land.lhs.true.476
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_116
	jnp	.LBB0_119
.LBB0_116:                              # %land.lhs.true.476
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_119
# BB#117:                               # %lor.lhs.false.483
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_120
	jp	.LBB0_120
# BB#118:                               # %lor.lhs.false.483
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_120
.LBB0_119:                              # %if.then.489
	movl	$90, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_120:                              # %if.end.490
	movsd	.LCPI0_26(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_127
# BB#121:                               # %if.end.490
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	ucomisd	.LCPI0_2(%rip), %xmm5
	jbe	.LBB0_127
# BB#122:                               # %land.lhs.true.504
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_123
	jnp	.LBB0_126
.LBB0_123:                              # %land.lhs.true.504
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_126
# BB#124:                               # %lor.lhs.false.511
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_127
	jp	.LBB0_127
# BB#125:                               # %lor.lhs.false.511
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_127
.LBB0_126:                              # %if.then.517
	movl	$91, %eax
	movaps	%xmm0, %xmm7
	movaps	%xmm1, %xmm3
.LBB0_127:                              # %if.end.518
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_134
# BB#128:                               # %if.end.518
	movsd	.LCPI0_29(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm2
	ucomisd	.LCPI0_2(%rip), %xmm2
	jbe	.LBB0_134
# BB#129:                               # %land.lhs.true.532
	ucomiss	.LCPI0_3(%rip), %xmm7
	jne	.LBB0_130
	jnp	.LBB0_133
.LBB0_130:                              # %land.lhs.true.532
	ucomiss	%xmm0, %xmm7
	ja	.LBB0_133
# BB#131:                               # %lor.lhs.false.539
	ucomiss	%xmm7, %xmm0
	jne	.LBB0_134
	jp	.LBB0_134
# BB#132:                               # %lor.lhs.false.539
	ucomiss	%xmm1, %xmm3
	jbe	.LBB0_134
.LBB0_133:                              # %if.then.545
	movl	$100, %eax
.LBB0_134:                              # %if.end.546
	retq
.Lfunc_end0:
	.size	gdev_pcl_paper_size, .Lfunc_end0-gdev_pcl_paper_size
	.cfi_endproc

	.globl	gdev_pcl_page_orientation
	.align	16, 0x90
	.type	gdev_pcl_page_orientation,@function
gdev_pcl_page_orientation:              # @gdev_pcl_page_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	movl	836(%rdi), %eax
	cmpl	832(%rdi), %eax
	setl	%al
	movzbl	%al, %eax
	retq
.Lfunc_end1:
	.size	gdev_pcl_page_orientation, .Lfunc_end1-gdev_pcl_page_orientation
	.cfi_endproc

	.globl	gdev_pcl_3bit_map_rgb_color
	.align	16, 0x90
	.type	gdev_pcl_3bit_map_rgb_color,@function
gdev_pcl_3bit_map_rgb_color:            # @gdev_pcl_3bit_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %ecx
	shrl	$13, %ecx
	andl	$4, %ecx
	movzwl	2(%rsi), %edx
	shrl	$14, %edx
	andl	$2, %edx
	movzwl	(%rsi), %eax
	shrl	$15, %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	xorl	$7, %eax
	retq
.Lfunc_end2:
	.size	gdev_pcl_3bit_map_rgb_color, .Lfunc_end2-gdev_pcl_3bit_map_rgb_color
	.cfi_endproc

	.globl	gdev_pcl_3bit_map_color_rgb
	.align	16, 0x90
	.type	gdev_pcl_3bit_map_color_rgb,@function
gdev_pcl_3bit_map_color_rgb:            # @gdev_pcl_3bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	%si, %eax
	xorl	$7, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, (%rdx)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, 2(%rdx)
	shrl	$2, %eax
	negl	%eax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gdev_pcl_3bit_map_color_rgb, .Lfunc_end3-gdev_pcl_3bit_map_color_rgb
	.cfi_endproc

	.globl	gdev_pcl_mode2compress_padded
	.align	16, 0x90
	.type	gdev_pcl_mode2compress_padded,@function
gdev_pcl_mode2compress_padded:          # @gdev_pcl_mode2compress_padded
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	cmpq	%rsi, %rbx
	movq	%rdx, %rbp
	jae	.LBB4_40
# BB#1:
	movq	16(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_28 Depth 2
                                        #     Child Loop BB4_39 Depth 2
	movq	%rbx, %r13
	movq	%r13, %r12
	.align	16, 0x90
.LBB4_4:                                # %while.cond.1
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12), %r15
	movq	%r15, %rax
	shlq	$8, %rax
	xorq	%r15, %rax
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB4_6
# BB#5:                                 # %while.body.3
                                        #   in Loop: Header=BB4_4 Depth=2
	addq	$8, %r12
	cmpq	%rsi, %r12
	jb	.LBB4_4
.LBB4_6:                                # %while.end
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%rsi, %r12
	je	.LBB4_12
# BB#7:                                 # %while.cond.31.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	leaq	8(%r12), %rax
	.align	16, 0x90
.LBB4_8:                                # %while.cond.31
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	cmpq	%rsi, %rbx
	jae	.LBB4_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB4_8 Depth=2
	leaq	8(%rbx), %rax
	cmpq	%r15, (%rbx)
	je	.LBB4_8
.LBB4_10:                               # %while.end.38
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%r13, %r12
	jbe	.LBB4_11
# BB#21:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	-1(%r12), %eax
	movzbl	%r15b, %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_22
# BB#23:                                # %if.then.48
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%al, %eax
	movzbl	-2(%r12), %ecx
	cmpl	%eax, %ecx
	jne	.LBB4_24
# BB#25:                                # %if.else.57
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	-3(%r12), %ecx
	cmpl	%eax, %ecx
	jne	.LBB4_27
# BB#26:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	addq	$-3, %r12
	jmp	.LBB4_28
	.align	16, 0x90
.LBB4_12:                               # %if.then.6
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB4_20
# BB#13:                                # %if.then.6
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%r13, %rsi
	jbe	.LBB4_20
# BB#14:                                # %land.lhs.true.8
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpb	$0, -1(%r12)
	jne	.LBB4_20
# BB#15:                                # %if.then.11
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpb	$0, -2(%r12)
	je	.LBB4_17
# BB#16:                                #   in Loop: Header=BB4_3 Depth=1
	decq	%r12
	jmp	.LBB4_20
	.align	16, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	jmp	.LBB4_28
.LBB4_22:                               #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	jmp	.LBB4_28
.LBB4_24:                               #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	decq	%r12
	jmp	.LBB4_28
.LBB4_27:                               # %select.mid323
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	addq	$-2, %r12
	jmp	.LBB4_28
.LBB4_17:                               # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpb	$0, -3(%r12)
	je	.LBB4_18
# BB#19:                                # %select.mid
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$-2, %r12
	jmp	.LBB4_20
.LBB4_18:                               #   in Loop: Header=BB4_3 Depth=1
	addq	$-3, %r12
	.align	16, 0x90
.LBB4_20:                               # %if.end.27
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$-8, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	jmp	.LBB4_28
	.align	16, 0x90
.LBB4_41:                               # %cleanup
                                        #   in Loop: Header=BB4_28 Depth=2
	cmpl	$127, %eax
	movl	$127, %ecx
	cmoval	%ecx, %eax
	leal	255(%rax), %ecx
	leaq	1(%rbp), %rdi
	movb	%cl, (%rbp)
	movl	%eax, %r14d
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy
	leaq	1(%rbp,%r14), %rbp
	addq	%r14, %r13
.LBB4_28:                               # %for.cond
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rax
	subq	%r13, %rax
	movl	%eax, %edx
	cmpl	$6, %eax
	ja	.LBB4_41
# BB#29:                                # %for.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	$1, %cl
	movb	$2, %sil
	movb	$3, %dil
	movb	$4, %r9b
	movb	$5, %r8b
	jmpq	*.LJTI4_0(,%rdx,8)
.LBB4_30:                               # %sw.bb
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	5(%r13), %cl
	movb	%cl, 6(%rbp)
	movb	$6, %r8b
.LBB4_31:                               # %sw.bb.75
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	4(%r13), %cl
	movb	%cl, 5(%rbp)
	movb	%r8b, %r9b
.LBB4_32:                               # %sw.bb.78
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	3(%r13), %cl
	movb	%cl, 4(%rbp)
	movb	%r9b, %dil
.LBB4_33:                               # %sw.bb.81
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	2(%r13), %cl
	movb	%cl, 3(%rbp)
	movb	%dil, %sil
.LBB4_34:                               # %sw.bb.84
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	1(%r13), %cl
	movb	%cl, 2(%rbp)
	movb	%sil, %cl
.LBB4_35:                               # %sw.bb.87
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	(%r13), %dl
	movb	%dl, 1(%rbp)
	decb	%cl
	movb	%cl, (%rbp)
	incl	%eax
	addq	%rax, %rbp
.LBB4_36:                               # %for.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%ebx, %eax
	subl	%r12d, %eax
	testl	%eax, %eax
	jle	.LBB4_37
# BB#38:                                # %while.body.112.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	$127, %edi
	.align	16, 0x90
.LBB4_39:                               # %while.body.112
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$127, %eax
	movl	%eax, %ecx
	cmovgl	%edi, %ecx
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	movb	%dl, (%rbp)
	movb	%r15b, 1(%rbp)
	addq	$2, %rbp
	subl	%ecx, %eax
	jg	.LBB4_39
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_37:                               #   in Loop: Header=BB4_3 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB4_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	%rsi, %rbx
	jb	.LBB4_3
.LBB4_40:                               # %while.end.122
	movq	16(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ebp
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gdev_pcl_mode2compress_padded, .Lfunc_end4-gdev_pcl_mode2compress_padded
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_36
	.quad	.LBB4_35
	.quad	.LBB4_34
	.quad	.LBB4_33
	.quad	.LBB4_32
	.quad	.LBB4_31
	.quad	.LBB4_30

	.text
	.globl	gdev_pcl_mode2compress
	.align	16, 0x90
	.type	gdev_pcl_mode2compress,@function
gdev_pcl_mode2compress:                 # @gdev_pcl_mode2compress
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	jmp	gdev_pcl_mode2compress_padded # TAILCALL
.Lfunc_end5:
	.size	gdev_pcl_mode2compress, .Lfunc_end5-gdev_pcl_mode2compress
	.cfi_endproc

	.globl	gdev_pcl_mode3compress
	.align	16, 0x90
	.type	gdev_pcl_mode3compress,@function
gdev_pcl_mode3compress:                 # @gdev_pcl_mode3compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	testl	%edi, %edi
	movq	%rcx, %rax
	jle	.LBB6_18
# BB#1:
	movslq	%edi, %rax
	leaq	(%rax,%rsi), %r8
	movq	%rcx, %rax
	.align	16, 0x90
.LBB6_3:                                # %while.cond.1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_17 Depth 2
	movq	%rsi, %r10
	cmpq	%r8, %r10
	movq	%r10, %r14
	jae	.LBB6_6
	.align	16, 0x90
.LBB6_4:                                # %land.rhs
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %esi
	movzbl	(%r14), %edi
	cmpl	%esi, %edi
	jne	.LBB6_6
# BB#5:                                 # %while.body.6
                                        #   in Loop: Header=BB6_4 Depth=2
	incq	%r14
	incq	%rdx
	cmpq	%r8, %r14
	jb	.LBB6_4
.LBB6_6:                                # %while.end
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpq	%r8, %r14
	je	.LBB6_18
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	%r8, %rsi
	subq	%r14, %rsi
	leaq	8(%r14), %r9
	cmpq	$8, %rsi
	cmovleq	%r8, %r9
	movb	(%r14), %bl
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB6_8:                                # %do.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %rdi
	movb	%bl, (%rdx,%rdi)
	leaq	1(%r14,%rdi), %rsi
	cmpq	%r9, %rsi
	jae	.LBB6_10
# BB#9:                                 # %land.rhs.17
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	1(%r14,%rdi), %ebx
	movzbl	1(%rdx,%rdi), %ebp
	leaq	1(%rdi), %r11
	cmpl	%ebp, %ebx
	jne	.LBB6_8
.LBB6_10:                               # %land.rhs.17.do.end_crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	1(%rdx,%rdi), %rdx
	leaq	(%rdi,%r14), %r9
	movl	%esi, %edi
	subl	%r14d, %edi
	movl	%r14d, %r11d
	subl	%r10d, %r11d
	shll	$5, %edi
	addl	$-32, %edi
	cmpl	$30, %r11d
	jg	.LBB6_12
# BB#11:                                # %if.then.33
                                        #   in Loop: Header=BB6_3 Depth=1
	addl	%r11d, %edi
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_12:                               # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	orl	$31, %edi
	movb	%dil, (%rax)
	addl	$-31, %r11d
	leaq	1(%rax), %r10
	cmpl	$255, %r11d
	jl	.LBB6_14
	.align	16, 0x90
.LBB6_13:                               # %while.body.43
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%r10)
	addl	$-255, %r11d
	cmpl	$254, %r11d
	movq	%r10, %rax
	leaq	1(%r10), %r10
	jg	.LBB6_13
.LBB6_14:                               # %while.end.46
                                        #   in Loop: Header=BB6_3 Depth=1
	addq	$2, %rax
	movb	%r11b, (%r10)
.LBB6_15:                               # %while.cond.50.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpq	%rsi, %r14
	jae	.LBB6_2
# BB#16:                                # %while.body.53.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	decq	%r14
	.align	16, 0x90
.LBB6_17:                               # %while.body.53
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	1(%r14), %bl
	incq	%r14
	movb	%bl, (%rax)
	incq	%rax
	cmpq	%r9, %r14
	jb	.LBB6_17
.LBB6_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpq	%r8, %rsi
	jb	.LBB6_3
.LBB6_18:                               # %while.end.61
	subl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gdev_pcl_mode3compress, .Lfunc_end6-gdev_pcl_mode3compress
	.cfi_endproc

	.globl	gdev_pcl_mode9compress
	.align	16, 0x90
	.type	gdev_pcl_mode9compress,@function
gdev_pcl_mode9compress:                 # @gdev_pcl_mode9compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rcx, %r11
	movq	%r11, -48(%rsp)         # 8-byte Spill
	testl	%edi, %edi
	jle	.LBB7_61
# BB#1:
	movslq	%edi, %rax
	leaq	(%rax,%rsi), %rbx
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	movq	-48(%rsp), %r11         # 8-byte Reload
	.align	16, 0x90
.LBB7_3:                                # %while.cond.1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_13 Depth 2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_21 Depth 3
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_39 Depth 3
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_54 Depth 3
                                        #       Child Loop BB7_58 Depth 3
	movq	%rsi, %r8
	cmpq	%rbx, %r8
	movq	%r8, %r9
	jae	.LBB7_6
	.align	16, 0x90
.LBB7_4:                                # %land.rhs
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %ecx
	movzbl	(%r9), %esi
	cmpl	%ecx, %esi
	jne	.LBB7_6
# BB#5:                                 # %while.body.6
                                        #   in Loop: Header=BB7_4 Depth=2
	incq	%r9
	incq	%rdx
	cmpq	%rbx, %r9
	jb	.LBB7_4
.LBB7_6:                                # %while.end
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	%rbx, %r9
	je	.LBB7_61
# BB#7:                                 # %do.body.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB7_8:                                # %do.body
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	leaq	1(%r9,%rcx), %rsi
	cmpq	%rbx, %rsi
	jae	.LBB7_10
# BB#9:                                 # %land.rhs.14
                                        #   in Loop: Header=BB7_8 Depth=2
	movzbl	1(%rdx,%rcx), %edi
	movzbl	(%rsi), %ebp
	leaq	1(%rcx), %rax
	cmpl	%edi, %ebp
	jne	.LBB7_8
.LBB7_10:                               # %land.rhs.14.do.end_crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	leaq	1(%rdx,%rcx), %rdx
	leaq	(%rcx,%r9), %rbp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	cmpq	%rsi, %r9
	jae	.LBB7_11
# BB#12:                                # %while.cond.26.preheader.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	leaq	-3(%rbp), %r12
	movl	%r9d, %ebx
	subl	%r8d, %ebx
	jmp	.LBB7_13
.LBB7_20:                               # %if.else
                                        #   in Loop: Header=BB7_13 Depth=2
	leaq	4(%r15), %r8
	cmpq	%rsi, %r8
	jae	.LBB7_23
	.align	16, 0x90
.LBB7_21:                               # %land.rhs.55
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r8), %ecx
	cmpl	%eax, %ecx
	jne	.LBB7_23
# BB#22:                                # %while.body.61
                                        #   in Loop: Header=BB7_21 Depth=3
	cmpq	%rbp, %r8
	leaq	1(%r8), %r8
	jb	.LBB7_21
	jmp	.LBB7_23
	.align	16, 0x90
.LBB7_13:                               # %while.cond.26.preheader
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_21 Depth 3
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_39 Depth 3
                                        #       Child Loop BB7_44 Depth 3
                                        #       Child Loop BB7_47 Depth 3
                                        #       Child Loop BB7_54 Depth 3
                                        #       Child Loop BB7_58 Depth 3
	cmpq	%r12, %r9
	movq	%r9, %r15
	jbe	.LBB7_15
# BB#14:                                #   in Loop: Header=BB7_13 Depth=2
	xorl	%r14d, %r14d
	jmp	.LBB7_19
	.align	16, 0x90
.LBB7_15:                               # %land.rhs.29
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %r14d
	movzbl	1(%r15), %eax
	cmpl	%eax, %r14d
	jne	.LBB7_18
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_15 Depth=3
	movzbl	2(%r15), %ecx
	movzbl	%r14b, %eax
	cmpl	%ecx, %eax
	jne	.LBB7_18
# BB#17:                                # %land.end.44
                                        #   in Loop: Header=BB7_15 Depth=3
	movzbl	3(%r15), %ecx
	cmpl	%ecx, %eax
	je	.LBB7_20
.LBB7_18:                               # %while.body.45
                                        #   in Loop: Header=BB7_15 Depth=3
	incq	%r15
	cmpq	%r12, %r15
	jbe	.LBB7_15
.LBB7_19:                               #   in Loop: Header=BB7_13 Depth=2
	movq	%rsi, %r15
	movq	%rsi, %r8
.LBB7_23:                               # %if.end.64
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r15d, %r10d
	subl	%r9d, %r10d
	je	.LBB7_49
# BB#24:                                # %if.then.69
                                        #   in Loop: Header=BB7_13 Depth=2
	leal	-1(%r10), %edx
	cmpl	$7, %edx
	movl	%edx, %eax
	movl	$7, %ecx
	cmovgl	%ecx, %eax
	cmpl	$14, %ebx
	jg	.LBB7_26
# BB#25:                                # %if.then.76
                                        #   in Loop: Header=BB7_13 Depth=2
	shll	$3, %ebx
	orl	%eax, %ebx
	movb	%bl, (%r11)
	incq	%r11
	jmp	.LBB7_29
	.align	16, 0x90
.LBB7_26:                               # %if.else.81
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%eax, %ecx
	orl	$120, %ecx
	movb	%cl, (%r11)
	addl	$-15, %ebx
	leaq	1(%r11), %rcx
	cmpl	$255, %ebx
	jl	.LBB7_28
	.align	16, 0x90
.LBB7_27:                               # %while.body.90
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%rcx)
	addl	$-255, %ebx
	cmpl	$254, %ebx
	movq	%rcx, %r11
	leaq	1(%rcx), %rcx
	jg	.LBB7_27
.LBB7_28:                               # %while.end.93
                                        #   in Loop: Header=BB7_13 Depth=2
	addq	$2, %r11
	movb	%bl, (%rcx)
.LBB7_29:                               # %if.end.96
                                        #   in Loop: Header=BB7_13 Depth=2
	cmpl	$7, %eax
	jne	.LBB7_33
# BB#30:                                # %if.then.99
                                        #   in Loop: Header=BB7_13 Depth=2
	leal	-8(%r10), %eax
	cmpl	$255, %eax
	jl	.LBB7_32
	.align	16, 0x90
.LBB7_31:                               # %while.body.104
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%r11)
	incq	%r11
	addl	$-255, %eax
	cmpl	$254, %eax
	jg	.LBB7_31
.LBB7_32:                               # %while.end.107
                                        #   in Loop: Header=BB7_13 Depth=2
	movb	%al, (%r11)
	incq	%r11
.LBB7_33:                               # %for.cond.preheader
                                        #   in Loop: Header=BB7_13 Depth=2
	xorl	%ebx, %ebx
	testl	%r10d, %r10d
	jle	.LBB7_34
# BB#35:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%edx, %edi
	movq	%r15, %rax
	subq	%r9, %rax
	leal	-1(%rax), %esi
	incq	%rsi
	andl	$31, %eax
	xorl	%ecx, %ecx
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movl	$0, %r10d
	movq	%r9, %r13
	movq	%r11, %rax
	je	.LBB7_41
# BB#36:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r15d, %ecx
	subl	%r9d, %ecx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	addl	%ecx, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	leaq	(%r9,%rax), %rbp
	xorl	%ecx, %ecx
	cmpq	%rbp, %r11
	ja	.LBB7_38
# BB#37:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_13 Depth=2
	leaq	(%rax,%r11), %rax
	cmpq	%rax, %r9
	movl	$0, %r10d
	movq	%r9, %r13
	movq	%r11, %rax
	jbe	.LBB7_41
.LBB7_38:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_13 Depth=2
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	leaq	(%r9,%rdx), %r13
	leaq	(%r11,%rdx), %rax
	leaq	16(%r11), %rbx
	leaq	16(%r9), %rbp
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	(%r15,%rcx), %ecx
	subl	%r9d, %ecx
	incq	%rcx
	movl	%r15d, %edi
	subl	%r9d, %edi
	andl	$31, %edi
	subq	%rdi, %rcx
	.align	16, 0x90
.LBB7_39:                               # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$32, %rbx
	addq	$32, %rbp
	addq	$-32, %rcx
	jne	.LBB7_39
# BB#40:                                #   in Loop: Header=BB7_13 Depth=2
	movq	%rdx, %rcx
	movl	%edx, %r10d
	movq	-24(%rsp), %rdi         # 8-byte Reload
.LBB7_41:                               # %middle.block
                                        #   in Loop: Header=BB7_13 Depth=2
	cmpq	%rcx, %rsi
	je	.LBB7_48
# BB#42:                                # %for.body.preheader
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r15d, %ebx
	subl	%r9d, %ebx
	movl	%ebx, %ecx
	subl	%r10d, %ecx
	decl	%ebx
	subl	%r10d, %ebx
	testb	$7, %cl
	je	.LBB7_45
# BB#43:                                # %for.body.prol.preheader
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r15d, %ecx
	subl	%r9d, %ecx
	subl	%r10d, %ecx
	andl	$7, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB7_44:                               # %for.body.prol
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13), %dl
	incq	%r13
	movb	%dl, (%rax)
	incq	%rax
	incl	%r10d
	incl	%ecx
	jne	.LBB7_44
.LBB7_45:                               # %for.body.preheader.split
                                        #   in Loop: Header=BB7_13 Depth=2
	cmpl	$7, %ebx
	jb	.LBB7_48
# BB#46:                                # %for.body.preheader.split.split
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r15d, %ebp
	subl	%r9d, %ebp
	subl	%r10d, %ebp
	.align	16, 0x90
.LBB7_47:                               # %for.body
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13), %cl
	movb	%cl, (%rax)
	movb	1(%r13), %cl
	movb	%cl, 1(%rax)
	movb	2(%r13), %cl
	movb	%cl, 2(%rax)
	movb	3(%r13), %cl
	movb	%cl, 3(%rax)
	movb	4(%r13), %cl
	movb	%cl, 4(%rax)
	movb	5(%r13), %cl
	movb	%cl, 5(%rax)
	movb	6(%r13), %cl
	movb	%cl, 6(%rax)
	movb	7(%r13), %cl
	movb	%cl, 7(%rax)
	addq	$8, %r13
	addq	$8, %rax
	addl	$-8, %ebp
	jne	.LBB7_47
.LBB7_48:                               # %for.cond.if.end.115.loopexit_crit_edge
                                        #   in Loop: Header=BB7_13 Depth=2
	leaq	1(%r11,%rdi), %r11
	xorl	%ebx, %ebx
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movq	-16(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB7_49
	.align	16, 0x90
.LBB7_34:                               #   in Loop: Header=BB7_13 Depth=2
	movq	-8(%rsp), %rsi          # 8-byte Reload
.LBB7_49:                               # %if.end.115
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%r8d, %eax
	subl	%r15d, %eax
	je	.LBB7_50
# BB#51:                                # %if.then.121
                                        #   in Loop: Header=BB7_13 Depth=2
	leal	-2(%rax), %edi
	cmpl	$31, %edi
	movl	$31, %ecx
	cmovgl	%ecx, %edi
	cmpl	$2, %ebx
	jg	.LBB7_53
# BB#52:                                # %if.then.130
                                        #   in Loop: Header=BB7_13 Depth=2
	shll	$5, %ebx
	orl	%edi, %ebx
	orl	$128, %ebx
	movb	%bl, (%r11)
	incq	%r11
	jmp	.LBB7_56
	.align	16, 0x90
.LBB7_53:                               # %if.else.138
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	%edi, %ecx
	orl	$224, %ecx
	movb	%cl, (%r11)
	addl	$-3, %ebx
	leaq	1(%r11), %rcx
	cmpl	$255, %ebx
	jl	.LBB7_55
	.align	16, 0x90
.LBB7_54:                               # %while.body.148
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%rcx)
	addl	$-255, %ebx
	cmpl	$254, %ebx
	movq	%rcx, %r11
	leaq	1(%rcx), %rcx
	jg	.LBB7_54
.LBB7_55:                               # %while.end.151
                                        #   in Loop: Header=BB7_13 Depth=2
	addq	$2, %r11
	movb	%bl, (%rcx)
.LBB7_56:                               # %if.end.154
                                        #   in Loop: Header=BB7_13 Depth=2
	cmpl	$31, %edi
	jne	.LBB7_60
# BB#57:                                # %if.then.157
                                        #   in Loop: Header=BB7_13 Depth=2
	addl	$-33, %eax
	cmpl	$255, %eax
	jl	.LBB7_59
	.align	16, 0x90
.LBB7_58:                               # %while.body.162
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%r11)
	incq	%r11
	addl	$-255, %eax
	cmpl	$254, %eax
	jg	.LBB7_58
.LBB7_59:                               # %while.end.165
                                        #   in Loop: Header=BB7_13 Depth=2
	movb	%al, (%r11)
	incq	%r11
.LBB7_60:                               # %if.end.168
                                        #   in Loop: Header=BB7_13 Depth=2
	movb	%r14b, (%r11)
	incq	%r11
	xorl	%ebx, %ebx
.LBB7_50:                               # %while.cond.22.backedge
                                        #   in Loop: Header=BB7_13 Depth=2
	cmpq	%rsi, %r8
	movq	%r8, %r9
	jb	.LBB7_13
	jmp	.LBB7_2
	.align	16, 0x90
.LBB7_11:                               #   in Loop: Header=BB7_3 Depth=1
	movq	%rdx, -32(%rsp)         # 8-byte Spill
.LBB7_2:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbx, %rsi
	movq	-32(%rsp), %rdx         # 8-byte Reload
	jb	.LBB7_3
.LBB7_61:                               # %while.end.174
	movq	-48(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r11d
	movl	%r11d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gdev_pcl_mode9compress, .Lfunc_end7-gdev_pcl_mode9compress
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
