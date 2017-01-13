	.text
	.file	"gxchrout.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4562254508917369340     # double 0.001
.LCPI0_2:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.globl	gs_char_flatness
	.align	16, 0x90
	.type	gs_char_flatness,@function
gs_char_flatness:                       # @gs_char_flatness
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 64
.Ltmp2:
	.cfi_offset %rbx, -16
	movapd	%xmm0, %xmm2
	movq	%rdi, %rbx
	movss	132(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	144(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	andpd	.LCPI0_0(%rip), %xmm0
	movapd	%xmm0, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm3
	jne	.LBB0_1
	jnp	.LBB0_3
.LBB0_1:                                # %lor.lhs.false
	ucomisd	%xmm0, %xmm3
	jbe	.LBB0_4
# BB#2:                                 # %lor.lhs.false
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_3
	jnp	.LBB0_4
.LBB0_3:                                # %if.then
	movapd	%xmm0, %xmm3
.LBB0_4:                                # %if.end
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	movss	136(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	140(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_7
	jp	.LBB0_7
# BB#5:                                 # %if.end
	ucomiss	%xmm1, %xmm3
	jne	.LBB0_7
	jp	.LBB0_7
# BB#6:
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	jmp	.LBB0_15
.LBB0_7:                                # %if.then.18
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movss	%xmm3, 12(%rsp)         # 4-byte Spill
	callq	fabs
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	xorps	%xmm1, %xmm1
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	ucomisd	%xmm1, %xmm3
	jne	.LBB0_8
	jnp	.LBB0_10
.LBB0_8:                                # %lor.lhs.false.29
	ucomisd	%xmm2, %xmm3
	jbe	.LBB0_11
# BB#9:                                 # %lor.lhs.false.29
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	jne	.LBB0_10
	jnp	.LBB0_11
.LBB0_10:                               # %if.then.35
	movapd	%xmm2, %xmm3
.LBB0_11:                               # %if.end.36
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm3
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB0_12
	jnp	.LBB0_14
.LBB0_12:                               # %lor.lhs.false.39
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_13
	jnp	.LBB0_15
.LBB0_13:                               # %lor.lhs.false.39
	ucomisd	%xmm0, %xmm3
	jbe	.LBB0_15
.LBB0_14:                               # %if.then.45
	movapd	%xmm0, %xmm3
.LBB0_15:                               # %if.end.47
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	movss	296(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	minsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cmpltsd	.LCPI0_2(%rip), %xmm0
	andnpd	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_char_flatness, .Lfunc_end0-gs_char_flatness
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
