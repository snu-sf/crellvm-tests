	.text
	.file	"gxipixel.bc"
	.globl	gx_image_enum_alloc
	.align	16, 0x90
	.type	gx_image_enum_alloc,@function
gx_image_enum_alloc:                    # @gx_image_enum_alloc
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rcx
	movq	%rsi, %rbx
	movl	32(%rdi), %r15d
	movl	36(%rdi), %ebp
	movl	$-15, %eax
	movl	%ebp, %edx
	orl	%r15d, %edx
	js	.LBB0_18
# BB#1:                                 # %if.end
	movl	40(%rdi), %edx
	cmpl	$2, 568(%rdi)
	jae	.LBB0_2
# BB#4:                                 # %sw.bb
	cmpl	$16, %edx
	ja	.LBB0_18
# BB#5:                                 # %sw.bb
	movl	$69910, %esi            # imm = 0x11116
	btl	%edx, %esi
	jb	.LBB0_6
	jmp	.LBB0_18
.LBB0_2:                                # %if.end
	jne	.LBB0_6
# BB#3:                                 # %sw.bb.3
	decl	%edx
	cmpl	$7, %edx
	ja	.LBB0_18
.LBB0_6:                                # %sw.epilog.9
	testq	%rbx, %rbx
	je	.LBB0_13
# BB#7:                                 # %if.then.10
	movl	(%rbx), %esi
	testl	%esi, %esi
	js	.LBB0_18
# BB#8:                                 # %lor.lhs.false.12
	movl	4(%rbx), %edx
	testl	%edx, %edx
	js	.LBB0_18
# BB#9:                                 # %lor.lhs.false.15
	movl	8(%rbx), %edi
	cmpl	%esi, %edi
	jl	.LBB0_18
# BB#10:                                # %lor.lhs.false.20
	movl	12(%rbx), %esi
	cmpl	%ebp, %esi
	jg	.LBB0_18
# BB#11:                                # %lor.lhs.false.20
	cmpl	%r15d, %edi
	jg	.LBB0_18
# BB#12:                                # %lor.lhs.false.20
	cmpl	%edx, %esi
	jl	.LBB0_18
.LBB0_13:                               # %if.end.36
	movl	$st_gx_image_enum, %esi
	movl	$.L.str, %edx
	movq	%rcx, %rdi
	callq	*72(%rcx)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_18
# BB#14:                                # %if.end.39
	testq	%rbx, %rbx
	je	.LBB0_16
# BB#15:                                # %if.then.41
	movl	(%rbx), %edx
	movl	%edx, 1144(%rcx)
	movl	4(%rbx), %eax
	movl	%eax, 1148(%rcx)
	movl	8(%rbx), %r15d
	subl	%edx, %r15d
	movl	%r15d, 1152(%rcx)
	movl	12(%rbx), %ebp
	subl	%eax, %ebp
	movl	%ebp, 1156(%rcx)
	jmp	.LBB0_17
.LBB0_16:                               # %if.else
	movl	$0, 1144(%rcx)
	movl	$0, 1148(%rcx)
	movl	%r15d, 1152(%rcx)
	movl	%ebp, 1156(%rcx)
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB0_17:                               # %if.end.68
	movl	%edx, 1160(%rcx)
	movl	%eax, 1164(%rcx)
	movl	%r15d, 1168(%rcx)
	movl	%ebp, 1172(%rcx)
	movq	%rcx, (%r14)
	xorl	%eax, %eax
.LBB0_18:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_image_enum_alloc, .Lfunc_end0-gx_image_enum_alloc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4643211215818981376     # double 256
.LCPI1_2:
	.quad	4571153621781053440     # double 0.00390625
.LCPI1_3:
	.quad	-4616189618054758400    # double -1
.LCPI1_8:
	.quad	4602678819172646912     # double 0.5
.LCPI1_18:
	.quad	4625478292286210048     # double 17
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_4:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI1_7:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI1_11:
	.quad	4674734214187319296     # double 3.276000e+04
	.quad	4643176031446892544     # double 2.550000e+02
.LCPI1_13:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI1_14:
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
.LCPI1_15:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_5:
	.long	1065353216              # float 1
.LCPI1_6:
	.long	1090519040              # float 8
.LCPI1_9:
	.long	3472883712              # float -2.14748365E+9
.LCPI1_10:
	.long	1325400064              # float 2.14748365E+9
.LCPI1_12:
	.long	3212836864              # float -1
.LCPI1_16:
	.long	1132396544              # float 255
.LCPI1_17:
	.long	1199570688              # float 65535
	.text
	.globl	gx_image_enum_begin
	.align	16, 0x90
	.type	gx_image_enum_begin,@function
gx_image_enum_begin:                    # @gx_image_enum_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp15:
	.cfi_def_cfa_offset 1280
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, 336(%rsp)         # 8-byte Spill
	movq	1288(%rsp), %rbx
	movl	568(%rcx), %eax
	movl	%eax, 260(%rsp)         # 4-byte Spill
	movl	32(%rcx), %eax
	movl	36(%rcx), %edi
	movl	40(%rcx), %r15d
	movzbl	1118(%rbx), %edx
	movl	%edx, 332(%rsp)         # 4-byte Spill
	movq	576(%rcx), %rdx
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	movl	$252, %edx
	testq	%rbp, %rbp
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movl	212(%rbp), %edx
.LBB1_2:                                # %cond.end
	cmpl	$8, %r15d
	setg	247(%rsp)               # 1-byte Folded Spill
	movq	$0, 23112(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24792(%rbx)
	movl	%eax, 568(%rbx)
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movl	%edi, 572(%rbx)
	movq	%rdi, 280(%rsp)         # 8-byte Spill
	leaq	132(%rbp), %rax
	testq	%r12, %r12
	cmoveq	%rax, %r12
	leaq	8(%rcx), %rdi
	movss	8(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%r12), %xmm0
	jne	.LBB1_20
	jp	.LBB1_20
# BB#3:                                 # %land.lhs.true
	movss	12(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%r12), %xmm0
	jne	.LBB1_20
	jp	.LBB1_20
# BB#4:                                 # %land.lhs.true.19
	movss	16(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%r12), %xmm0
	jne	.LBB1_20
	jp	.LBB1_20
# BB#5:                                 # %land.lhs.true.24
	movss	20(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	12(%r12), %xmm0
	jne	.LBB1_20
	jp	.LBB1_20
# BB#6:                                 # %if.then.29
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movq	%rdi, 392(%rsp)         # 8-byte Spill
	movl	%edx, 240(%rsp)         # 4-byte Spill
	movq	%r8, 232(%rsp)          # 8-byte Spill
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%xmm0, %xmm1            # xmm1 = xmm0[0],zero
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 1184(%rsp)
	movdqa	%xmm1, 1168(%rsp)
	movq	16(%r12), %xmm0         # xmm0 = mem[0],zero
	movq	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	subps	%xmm1, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movaps	%xmm0, 1200(%rsp)
	jmp	.LBB1_7
.LBB1_20:                               # %if.else
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movl	%edx, 240(%rsp)         # 4-byte Spill
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	movq	%r8, 232(%rsp)          # 8-byte Spill
	leaq	1168(%rsp), %rsi
	movq	%rdi, 392(%rsp)         # 8-byte Spill
	callq	gs_matrix_invert_to_double
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_22
# BB#21:                                # %lor.lhs.false
	leaq	1168(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rdi, %rdx
	callq	gs_matrix_multiply_double
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_22
.LBB1_7:                                # %if.end.51
	testq	%rbp, %rbp
	je	.LBB1_10
# BB#8:                                 # %land.lhs.true.54
	cmpl	$0, (%rbp)
	je	.LBB1_10
# BB#9:                                 # %land.lhs.true.56
	cmpq	$0, 1856(%rbp)
	jne	.LBB1_46
.LBB1_10:                               # %if.else.60
	cmpb	$0, 1118(%rbx)
	je	.LBB1_46
# BB#11:                                # %lor.lhs.false.63
	cmpl	$0, 24500(%rbx)
	jne	.LBB1_46
# BB#12:                                # %if.else.67
	testq	%rbp, %rbp
	je	.LBB1_15
# BB#13:                                # %land.lhs.true.70
	cmpl	$0, 300(%rbp)
	jne	.LBB1_15
# BB#14:                                # %land.lhs.true.73
	cmpl	$0, 304(%rbp)
	je	.LBB1_46
.LBB1_15:                               # %if.else.78
	movsd	1176(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_32
	jp	.LBB1_32
# BB#16:                                # %land.lhs.true.82
	movsd	1184(%rsp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jne	.LBB1_32
	jp	.LBB1_32
# BB#17:                                # %if.then.86
	movq	304(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_26
# BB#18:                                # %if.then.89
	movsd	1168(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_23
# BB#19:                                # %if.then.93
	movsd	1200(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	$255, %ecx
	jmp	.LBB1_25
.LBB1_22:                               # %if.then.49
	movl	$.L.str, %edx
	movq	1280(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB1_365
.LBB1_32:                               # %if.else.214
	movsd	1168(%rsp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jne	.LBB1_46
	jp	.LBB1_46
# BB#33:                                # %land.lhs.true.218
	movsd	1192(%rsp), %xmm1       # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB1_46
	jp	.LBB1_46
# BB#34:                                # %if.then.222
	movq	280(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_40
# BB#35:                                # %if.then.225
	movsd	1184(%rsp), %xmm1       # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB1_37
# BB#36:                                # %if.then.229
	movsd	1200(%rsp), %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm3   # xmm3 = mem[0],zero
	addsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	andl	$-256, %eax
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
	addl	$255, %ecx
	jmp	.LBB1_39
.LBB1_23:                               # %if.else.113
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_26
# BB#24:                                # %if.then.117
	movsd	1200(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	$255, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB1_25:                               # %if.end.147
	andl	$-256, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1200(%rsp)
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1168(%rsp)
.LBB1_26:                               # %if.end.147
	movq	280(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_46
# BB#27:                                # %if.then.150
	movsd	1192(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_30
# BB#28:                                # %if.then.154
	movsd	1208(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	$255, %ecx
	jmp	.LBB1_29
.LBB1_30:                               # %if.else.179
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_46
# BB#31:                                # %if.then.183
	movsd	1208(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	$255, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB1_29:                               # %while.cond
	andl	$-256, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1208(%rsp)
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1192(%rsp)
	jmp	.LBB1_46
.LBB1_37:                               # %if.else.257
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_40
# BB#38:                                # %if.then.261
	movsd	1200(%rsp), %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm3   # xmm3 = mem[0],zero
	addsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	addl	$255, %eax
	andl	$-256, %eax
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
.LBB1_39:                               # %if.end.291
	andl	$-256, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 1200(%rsp)
	subl	%eax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 1184(%rsp)
.LBB1_40:                               # %if.end.291
	movq	304(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_46
# BB#41:                                # %if.then.294
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_43
# BB#42:                                # %if.then.298
	movsd	1208(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	$255, %ecx
	jmp	.LBB1_45
.LBB1_43:                               # %if.else.326
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_46
# BB#44:                                # %if.then.330
	movsd	1208(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	$255, %eax
	andl	$-256, %eax
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB1_45:                               # %while.cond
	andl	$-256, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1208(%rsp)
	subl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 1176(%rsp)
.LBB1_46:                               # %while.cond
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	testq	%r13, %r13
	je	.LBB1_60
# BB#47:                                # %while.body
	leaq	1080(%rsp), %rsi
	movq	400(%rsp), %rdi         # 8-byte Reload
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB1_60
# BB#48:                                # %lor.lhs.false.372
	leaq	1080(%rsp), %rdi
	movq	392(%rsp), %rsi         # 8-byte Reload
	movq	%rdi, %rdx
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB1_60
# BB#49:                                # %if.end.378
	leaq	1064(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_cpath_outer_box
	cvtsi2sdl	1064(%rsp), %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 408(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1068(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 416(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1072(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 424(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1076(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 432(%rsp)
	leaq	408(%rsp), %rdi
	leaq	1080(%rsp), %rsi
	leaq	1104(%rsp), %rdx
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB1_60
# BB#50:                                # %if.end.406
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	1104(%rsp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r10d
	addsd	1112(%rsp), %xmm0
	cvttsd2si	%xmm0, %r9d
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	1120(%rsp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	1128(%rsp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movss	1080(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movss	1084(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	.LCPI1_4(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm3, %xmm4
	xorps	%xmm0, %xmm4
	xorpd	%xmm1, %xmm1
	movaps	%xmm3, %xmm5
	cmpltss	%xmm1, %xmm5
	andps	%xmm5, %xmm4
	andnps	%xmm3, %xmm5
	orps	%xmm4, %xmm5
	movss	1092(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm4
	xorps	%xmm0, %xmm4
	movaps	%xmm3, %xmm6
	cmpltss	%xmm1, %xmm6
	andps	%xmm6, %xmm4
	andnps	%xmm3, %xmm6
	orps	%xmm4, %xmm6
	maxss	%xmm5, %xmm6
	movaps	%xmm2, %xmm3
	xorps	%xmm0, %xmm3
	movaps	%xmm2, %xmm4
	cmpltss	%xmm1, %xmm4
	andps	%xmm4, %xmm3
	andnps	%xmm2, %xmm4
	orps	%xmm3, %xmm4
	maxss	%xmm6, %xmm4
	movss	1088(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm0
	movaps	%xmm2, %xmm3
	cmpltss	%xmm1, %xmm3
	andps	%xmm3, %xmm0
	andnps	%xmm2, %xmm3
	orps	%xmm0, %xmm3
	maxss	%xmm4, %xmm3
	addss	.LCPI1_5(%rip), %xmm3
	mulss	.LCPI1_6(%rip), %xmm3
	cvttss2si	%xmm3, %edi
	leal	1(%rdi), %ebp
	subl	%ebp, %r10d
	leal	1(%rdi,%rsi), %esi
	movl	1160(%rbx), %eax
	movq	%rbx, %rcx
	movl	1168(%rcx), %ebx
	movl	%eax, %edx
	subl	%r10d, %edx
	jge	.LBB1_51
# BB#52:                                # %if.then.534
	xorl	%eax, %eax
	addl	%edx, %ebx
	cmovsl	%eax, %ebx
	movl	%ebx, 1168(%rcx)
	movl	%r10d, 1160(%rcx)
	movq	%rcx, %rdx
	jmp	.LBB1_53
.LBB1_51:
	movq	%rcx, %rdx
	movl	%eax, %r10d
.LBB1_53:                               # %if.end.554
	subl	%ebp, %r9d
	addl	%r10d, %ebx
	cmpl	%esi, %ebx
	movq	%rdx, %rbx
	jle	.LBB1_55
# BB#54:                                # %if.then.564
	xorl	%eax, %eax
	subl	%r10d, %esi
	cmovsl	%eax, %esi
	movl	%esi, 1168(%rbx)
.LBB1_55:                               # %if.end.580
	leal	1(%rdi,%r8), %ecx
	movl	1164(%rbx), %esi
	movl	1172(%rbx), %edx
	movl	%esi, %eax
	subl	%r9d, %eax
	jge	.LBB1_56
# BB#57:                                # %if.then.587
	xorl	%esi, %esi
	addl	%eax, %edx
	cmovsl	%esi, %edx
	movl	%edx, 1172(%rbx)
	movl	%r9d, 1164(%rbx)
	jmp	.LBB1_58
.LBB1_56:
	movl	%esi, %r9d
.LBB1_58:                               # %if.end.607
	addl	%r9d, %edx
	cmpl	%ecx, %edx
	jle	.LBB1_60
# BB#59:                                # %if.then.617
	xorl	%eax, %eax
	subl	%r9d, %ecx
	cmovsl	%eax, %ecx
	movl	%ecx, 1172(%rbx)
.LBB1_60:                               # %while.end
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movl	1144(%rbx), %eax
	movl	1160(%rbx), %ecx
	movl	1168(%rbx), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	jle	.LBB1_64
# BB#61:                                # %lor.lhs.false.647
	movl	1152(%rbx), %edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.LBB1_64
# BB#62:                                # %lor.lhs.false.657
	movl	1148(%rbx), %ecx
	movl	1164(%rbx), %edx
	movl	1172(%rbx), %esi
	addl	%edx, %esi
	cmpl	%ecx, %esi
	jle	.LBB1_64
# BB#63:                                # %lor.lhs.false.667
	addl	1156(%rbx), %ecx
	cmpl	%edx, %ecx
	jg	.LBB1_65
.LBB1_64:                               # %if.then.677
	movl	%eax, 1160(%rbx)
	movl	1148(%rbx), %eax
	movl	%eax, 1164(%rbx)
	movq	$0, 1168(%rbx)
.LBB1_65:                               # %if.end.690
	movsd	1168(%rsp), %xmm0       # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 1120(%rbx)
	movsd	1176(%rsp), %xmm4       # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	movss	%xmm1, 1124(%rbx)
	movsd	1184(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, 392(%rsp)        # 8-byte Spill
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 1128(%rbx)
	movsd	1192(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, 400(%rsp)        # 8-byte Spill
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 1132(%rbx)
	movsd	1200(%rsp), %xmm2       # xmm2 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 1136(%rbx)
	movsd	1208(%rsp), %xmm1       # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm3
	movss	%xmm3, 1140(%rbx)
	movl	%r15d, %eax
	sarl	%eax
	movl	%r15d, 292(%rsp)        # 4-byte Spill
	movl	%r15d, %r14d
	sarl	$2, %r14d
	incl	%r14d
	cmpl	$8, %r15d
	cmovll	%eax, %r14d
	xorps	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm2
	movq	1280(%rsp), %r15
	movq	280(%rsp), %rbp         # 8-byte Reload
	jbe	.LBB1_67
# BB#66:                                # %if.then.726
	mulsd	.LCPI1_1(%rip), %xmm2
	cvttsd2si	%xmm2, %ecx
	jmp	.LBB1_68
.LBB1_67:                               # %if.else.730
	movapd	.LCPI1_7(%rip), %xmm3   # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	incl	%eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm2, %xmm3
	mulsd	.LCPI1_1(%rip), %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$8, %eax
	subl	%eax, %ecx
.LBB1_68:                               # %if.end.742
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB1_70
# BB#69:                                # %if.then.746
	movsd	%xmm4, 384(%rsp)        # 8-byte Spill
	movq	%r15, %r12
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	mulsd	.LCPI1_1(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jmp	.LBB1_71
.LBB1_70:                               # %if.else.750
	movsd	%xmm4, 384(%rsp)        # 8-byte Spill
	movq	%r15, %r12
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movapd	.LCPI1_7(%rip), %xmm2   # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	incl	%eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	.LCPI1_1(%rip), %xmm2
	cvttsd2si	%xmm2, %ecx
	shll	$8, %eax
	subl	%eax, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
.LBB1_71:                               # %if.end.763
	movq	304(%rsp), %rax         # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, 376(%rsp)        # 8-byte Spill
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_74
# BB#72:                                # %if.else.i
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_74
# BB#73:                                # %if.else.5.i
	cvttss2si	%xmm0, %eax
.LBB1_74:                               # %float2fixed_rounded_boxed.exit
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorpd	%xmm2, %xmm2
	movsd	384(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movl	$0, %r15d
	jne	.LBB1_75
	jnp	.LBB1_78
.LBB1_75:                               # %cond.false.773
	movsd	376(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	callq	floor
	xorpd	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %r15d     # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_78
# BB#76:                                # %if.else.i.731
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_78
# BB#77:                                # %if.else.5.i.733
	cvttss2si	%xmm0, %r15d
.LBB1_78:                               # %cond.end.779
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	movsd	392(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB1_79
	jnp	.LBB1_82
.LBB1_79:                               # %cond.false.787
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	movsd	%xmm1, 392(%rsp)        # 8-byte Spill
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movsd	392(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jae	.LBB1_82
# BB#80:                                # %if.else.i.742
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_82
# BB#81:                                # %if.else.5.i.744
	cvttss2si	%xmm0, %r13d
.LBB1_82:                               # %cond.end.793
	mulsd	400(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	.LCPI1_1(%rip), %xmm1
	addsd	.LCPI1_8(%rip), %xmm1
	movapd	%xmm1, %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_85
# BB#83:                                # %if.else.i.753
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_85
# BB#84:                                # %if.else.5.i.755
	cvttss2si	%xmm0, %eax
.LBB1_85:                               # %float2fixed_rounded_boxed.exit757
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	$1, %r8d
	movl	332(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	jne	.LBB1_87
# BB#86:                                # %cond.false.804
	cmpl	$0, 580(%rbx)
	movq	%rbx, %rbp
	setne	%bl
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
	movzbl	%bl, %r8d
	movq	%rbp, %rbx
	addl	%eax, %r8d
.LBB1_87:                               # %cond.end.815
	movl	$image1_enum_procs, %edx
	movq	%rbx, %rdi
	movq	320(%rsp), %rsi         # 8-byte Reload
	movq	336(%rsp), %rcx         # 8-byte Reload
	movl	260(%rsp), %r9d         # 4-byte Reload
	callq	gx_image_enum_common_init
	movl	1152(%rbx), %eax
	movq	%rbx, %rcx
	movl	1156(%rcx), %ebx
	movq	%rcx, %rbp
	movq	304(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB1_89
# BB#88:                                # %cond.end.815
	movq	280(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %ebx
	movl	%r13d, %ecx
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	je	.LBB1_103
.LBB1_89:                               # %if.else.828
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, 400(%rsp)        # 8-byte Spill
	movsd	1168(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_92
# BB#90:                                # %if.else.i.764
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_92
# BB#91:                                # %if.else.5.i.766
	cvttss2si	%xmm0, %eax
.LBB1_92:                               # %float2fixed_rounded_boxed.exit768
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movsd	1176(%rsp), %xmm1       # xmm1 = mem[0],zero
	movl	$0, 164(%rsp)           # 4-byte Folded Spill
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	movl	$0, %eax
	jne	.LBB1_93
	jnp	.LBB1_96
.LBB1_93:                               # %cond.false.842
	movsd	400(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	callq	floor
	xorpd	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_96
# BB#94:                                # %if.else.i.775
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_96
# BB#95:                                # %if.else.5.i.777
	cvttss2si	%xmm0, %eax
.LBB1_96:                               # %cond.end.848
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movsd	1184(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	ucomisd	%xmm2, %xmm0
	jne	.LBB1_97
	jnp	.LBB1_100
.LBB1_97:                               # %cond.false.856
	mulsd	%xmm1, %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	addsd	.LCPI1_8(%rip), %xmm0
	movsd	%xmm1, 400(%rsp)        # 8-byte Spill
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, 164(%rsp) # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movsd	400(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jae	.LBB1_100
# BB#98:                                # %if.else.i.786
	movl	$2147483647, 164(%rsp)  # 4-byte Folded Spill
                                        # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_100
# BB#99:                                # %if.else.5.i.788
	cvttss2si	%xmm0, %eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
.LBB1_100:                              # %cond.end.862
	mulsd	1192(%rsp), %xmm1
	mulsd	.LCPI1_1(%rip), %xmm1
	addsd	.LCPI1_8(%rip), %xmm1
	movapd	%xmm1, %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB1_103
# BB#101:                               # %if.else.i.797
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ucomiss	.LCPI1_10(%rip), %xmm0
	jae	.LBB1_103
# BB#102:                               # %if.else.5.i.799
	cvttss2si	%xmm0, %edx
.LBB1_103:                              # %if.end.871
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	leaq	44(%rax), %r15
	movl	332(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	jne	.LBB1_108
# BB#104:                               # %lor.lhs.false.873
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	callq	*24(%rax)
	cmpl	$1, %eax
	jne	.LBB1_105
.LBB1_108:                              # %if.end.890
	movl	$169984, %esi           # imm = 0x29800
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	leaq	169320(%rax), %rdi
	movl	332(%rsp), %ecx         # 4-byte Reload
	testb	%cl, %cl
	movq	%rbp, %rbx
	movq	%rax, 23112(%rbx)
	movq	%rax, 24432(%rbx)
	movq	%rdi, 24440(%rbx)
	je	.LBB1_106
# BB#109:                               # %if.then.892
	cmpl	$1, 292(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_113
# BB#110:                               # %if.then.892
	cmpq	$0, 344(%rsp)           # 8-byte Folded Reload
	jne	.LBB1_113
# BB#111:                               # %lor.lhs.false.898
	cmpl	$0, 580(%rbx)
	jne	.LBB1_113
# BB#112:                               # %lor.lhs.false.901
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%r15), %xmm0
	jne	.LBB1_115
	jp	.LBB1_115
.LBB1_113:                              # %if.then.906
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	jmp	.LBB1_114
.LBB1_105:                              # %if.end.890.thread
	movq	%rbp, %rbx
	leaq	23120(%rbx), %rax
	movq	%rax, 24432(%rbx)
	leaq	23776(%rbx), %rax
	movq	%rax, 24440(%rbx)
.LBB1_106:                              # %if.else.934
	movl	%r14d, 108(%rsp)        # 4-byte Spill
	movq	%rbx, %r14
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rbx
	callq	*24(%rbx)
	testl	%eax, %eax
	js	.LBB1_107
# BB#120:                               # %if.end.944
	cmpl	$1, 580(%r14)
	sbbl	$-1, %eax
	movl	260(%rsp), %edi         # 4-byte Reload
	cmpl	$1, %edi
	je	.LBB1_123
# BB#121:                               # %if.end.944
	cmpl	$2, %edi
	jne	.LBB1_124
# BB#122:                               # %sw.bb
	movl	$2, %edi
	cmpl	$1, 292(%rsp)           # 4-byte Folded Reload
	jg	.LBB1_124
.LBB1_123:                              # %sw.bb.953
	cmpl	$1, %eax
	movl	%eax, %ecx
	setne	%al
	movzbl	%al, %edi
	movl	%ecx, %eax
.LBB1_124:                              # %sw.epilog
	xorl	%ebp, %ebp
	movq	344(%rsp), %rcx         # 8-byte Reload
	cmpq	$0, 64(%rcx)
	movq	320(%rsp), %rsi         # 8-byte Reload
	movq	%r15, 296(%rsp)         # 8-byte Spill
	jne	.LBB1_126
# BB#125:                               # %if.else.961
	movq	%rsi, %rbp
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r12         # 8-byte Reload
	movl	%edi, %r15d
	movq	%r12, %rdi
	movq	248(%rsp), %rsi         # 8-byte Reload
	movl	%eax, 316(%rsp)         # 4-byte Spill
	callq	*48(%rbx)
	movl	%r15d, %edi
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%rbp, %rsi
	cmpq	%r12, %rax
	sete	%al
	movzbl	%al, %ebp
	movl	316(%rsp), %eax         # 4-byte Reload
.LBB1_126:                              # %if.end.965
	cmpl	$1, %eax
	jne	.LBB1_134
# BB#127:                               # %if.then.i
	movl	%eax, %ebx
	movl	292(%rsp), %eax         # 4-byte Reload
	cmpl	$8, %eax
	je	.LBB1_131
# BB#128:                               # %if.then.i
	cmpl	$4, %eax
	jne	.LBB1_129
# BB#136:                               # %sw.bb.22.i.i
	movq	23112(%r14), %rax
	movq	$gx_dc_type_data_none, 158032(%rax)
	movq	$gx_dc_type_data_none, 146744(%rax)
	movq	$gx_dc_type_data_none, 135456(%rax)
	movq	$gx_dc_type_data_none, 124168(%rax)
	movq	$gx_dc_type_data_none, 101592(%rax)
	movq	$gx_dc_type_data_none, 90304(%rax)
	movq	$gx_dc_type_data_none, 79016(%rax)
	movq	$gx_dc_type_data_none, 67728(%rax)
	movq	$gx_dc_type_data_none, 45152(%rax)
	movq	$gx_dc_type_data_none, 33864(%rax)
	movq	$gx_dc_type_data_none, 22576(%rax)
	movq	$gx_dc_type_data_none, 11288(%rax)
	movl	108(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_137
.LBB1_107:                              # %if.then.941
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
.LBB1_114:                              # %cleanup.2265
	callq	*24(%r12)
	movl	$-15, %r14d
.LBB1_365:                              # %cleanup.2265
	movl	%r14d, %eax
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_131:                              # %sw.bb.i.i
	movq	23112(%r14), %rax
	movl	$65, %ecx
	movq	%rax, %rdx
	.align	16, 0x90
.LBB1_132:                              # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$gx_dc_type_data_none, 1992(%rdx)
	movq	$gx_dc_type_data_none, 1328(%rdx)
	movq	$gx_dc_type_data_none, 664(%rdx)
	movq	$gx_dc_type_data_none, (%rdx)
	movl	$0, 2648(%rdx)
	movl	$0, 1984(%rdx)
	movl	$0, 1320(%rdx)
	movl	$0, 656(%rdx)
	movq	$gx_dc_type_data_none, 4648(%rdx)
	movq	$gx_dc_type_data_none, 3984(%rdx)
	movq	$gx_dc_type_data_none, 3320(%rdx)
	movq	$gx_dc_type_data_none, 2656(%rdx)
	movl	$0, 5304(%rdx)
	movl	$0, 4640(%rdx)
	movl	$0, 3976(%rdx)
	movl	$0, 3312(%rdx)
	addq	$5312, %rdx             # imm = 0x14C0
	addl	$-2, %ecx
	cmpl	$1, %ecx
	jg	.LBB1_132
# BB#133:                               # %do.end.i.i
	movl	$1, 656(%rax)
	movl	%ebx, %eax
.LBB1_134:                              # %for.cond.preheader.i
	testl	%eax, %eax
	movl	108(%rsp), %ecx         # 4-byte Reload
	jg	.LBB1_138
# BB#135:
	movl	%eax, 316(%rsp)         # 4-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	%edi, 260(%rsp)         # 4-byte Spill
	movl	292(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB1_208
.LBB1_129:                              # %if.then.i
	cmpl	$2, %eax
	movl	%ebx, %eax
	movl	108(%rsp), %ecx         # 4-byte Reload
	jne	.LBB1_138
# BB#130:                               # %entry.sw.bb.71_crit_edge.i.i
	movl	%eax, %ebx
	movq	23112(%r14), %rax
.LBB1_137:                              # %sw.bb.71.i.i
	movq	$gx_dc_type_data_none, 112880(%rax)
	movq	$gx_dc_type_data_none, 56440(%rax)
	movl	%ebx, %eax
.LBB1_138:                              # %for.body.lr.ph.i
	movl	%eax, 316(%rsp)         # 4-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movslq	%eax, %r13
	movq	%r13, 176(%rsp)         # 8-byte Spill
	movl	$3, %ebx
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movss	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_139:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%rsi,%rax,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	%xmm0, %xmm2
	jne	.LBB1_141
	jp	.LBB1_141
# BB#140:                               # %land.rhs.i
                                        #   in Loop: Header=BB1_139 Depth=1
	movss	48(%rsi,%rax,4), %xmm3  # xmm3 = mem[0],zero,zero,zero
	cmpeqss	%xmm1, %xmm3
	movd	%xmm3, %ecx
	andl	$1, %ecx
.LBB1_141:                              # %land.end.i
                                        #   in Loop: Header=BB1_139 Depth=1
	movzbl	%cl, %ecx
	xorl	%edx, %edx
	ucomiss	.LCPI1_5(%rip), %xmm2
	jne	.LBB1_143
	jp	.LBB1_143
# BB#142:                               # %land.rhs.14.i
                                        #   in Loop: Header=BB1_139 Depth=1
	xorps	%xmm2, %xmm2
	cmpeqss	48(%rsi,%rax,4), %xmm2
	movd	%xmm2, %edx
	andl	$1, %edx
.LBB1_143:                              # %land.end.21.i
                                        #   in Loop: Header=BB1_139 Depth=1
	movzbl	%dl, %edx
	addl	%edx, %edx
	orl	%ecx, %edx
	andl	%edx, %ebx
	addq	$2, %rax
	cmpq	%r13, %rax
	jl	.LBB1_139
# BB#144:                               # %for.body.27.lr.ph.i
	movl	%ebx, %r8d
	andl	$1, %r8d
	movl	%r8d, 272(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	movl	%ebx, 276(%rsp)         # 4-byte Spill
	andl	$2, %esi
	shrl	%esi
	movl	292(%rsp), %r12d        # 4-byte Reload
	cmpl	$9, %r12d
	setl	%al
	andb	%al, %sil
	cmpl	$2, %r12d
	setg	%cl
	testl	%edi, %edi
	movl	%edi, 260(%rsp)         # 4-byte Spill
	setne	%bl
	orb	%cl, %bl
	movb	%bl, 267(%rsp)          # 1-byte Spill
	movl	$1, %edi
	movb	%r12b, %cl
	shll	%cl, %edi
	movq	%rdi, 384(%rsp)         # 8-byte Spill
	movslq	%edi, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %ebx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movslq	%ebx, %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	cvtsi2ssl	%edx, %xmm9
	movss	%xmm9, 228(%rsp)        # 4-byte Spill
	movzbl	%al, %eax
	movsd	.LCPI1_11(,%rax,8), %xmm8 # xmm8 = mem[0],zero
	movsd	%xmm8, 216(%rsp)        # 8-byte Spill
	leaq	408(%rsp,%rcx), %rax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	orb	%r8b, %sil
	movl	%esi, 268(%rsp)         # 4-byte Spill
	leaq	1(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	-1(%rcx), %rsi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	andl	$7, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	andq	%rax, 128(%rsp)         # 8-byte Folded Spill
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cvtdq2ps	%xmm0, %xmm11
	movaps	%xmm11, 192(%rsp)       # 16-byte Spill
	andl	$7, %edi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	negq	%rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	leaq	1528(%r14), %rdx
	movss	.LCPI1_16(%rip), %xmm10 # xmm10 = mem[0],zero,zero,zero
	movdqa	.LCPI1_13(%rip), %xmm7  # xmm7 = [0,1,2,3]
	movaps	.LCPI1_14(%rip), %xmm12 # xmm12 = [2.550000e+02,2.550000e+02,2.550000e+02,2.550000e+02]
	movdqa	.LCPI1_15(%rip), %xmm13 # xmm13 = [255,255,255,255]
	movsd	.LCPI1_18(%rip), %xmm14 # xmm14 = mem[0],zero
	leaq	408(%rsp), %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_145:                              # %for.body.27.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_170 Depth 2
                                        #     Child Loop BB1_173 Depth 2
                                        #     Child Loop BB1_179 Depth 2
                                        #     Child Loop BB1_182 Depth 2
                                        #     Child Loop BB1_192 Depth 2
                                        #     Child Loop BB1_194 Depth 2
                                        #     Child Loop BB1_151 Depth 2
                                        #     Child Loop BB1_154 Depth 2
                                        #     Child Loop BB1_160 Depth 2
                                        #     Child Loop BB1_164 Depth 2
                                        #     Child Loop BB1_201 Depth 2
	imulq	$332, %rsi, %rbx        # imm = 0x14C
	leal	(%rsi,%rsi), %eax
	cmpl	$0, 272(%rsp)           # 4-byte Folded Reload
	leaq	1528(%r14,%rbx), %rdi
	cltq
	movq	296(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	movl	$image_init_colors.default_decode, %r15d
	cmovneq	%rax, %r15
	movl	268(%rsp), %ecx         # 4-byte Reload
	testb	%cl, %cl
	movl	$0, %ecx
	cmovel	%ecx, %ebp
	movl	$image_init_colors.default_decode, %ecx
	cmovneq	%rax, %rcx
	cmoveq	%rax, %r15
	cmpb	$0, 267(%rsp)           # 1-byte Folded Reload
	je	.LBB1_165
# BB#146:                               # %if.then.45.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%rbx, 376(%rsp)         # 8-byte Spill
	movq	%rsi, 360(%rsp)         # 8-byte Spill
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	%ebp, 372(%rsp)         # 4-byte Spill
	cmpl	$8, %r12d
	jg	.LBB1_195
# BB#147:                               # %if.then.48.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	352(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	ucomiss	.LCPI1_5(%rip), %xmm1
	jne	.LBB1_148
	jnp	.LBB1_159
.LBB1_148:                              # %if.then.48.i
                                        #   in Loop: Header=BB1_145 Depth=1
	ucomiss	.LCPI1_12(%rip), %xmm1
	jne	.LBB1_149
	jnp	.LBB1_159
.LBB1_149:                              # %overflow.checked
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movl	$0, %eax
	movq	400(%rsp), %rcx         # 8-byte Reload
	je	.LBB1_153
# BB#150:                               # %vector.ph
                                        #   in Loop: Header=BB1_145 Depth=1
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm0, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movq	%rcx, %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_151:                              # %vector.body
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%ecx, %xmm4
	pshufd	$0, %xmm4, %xmm4        # xmm4 = xmm4[0,0,0,0]
	paddd	%xmm7, %xmm4
	cvtdq2ps	%xmm4, %xmm4
	mulps	%xmm2, %xmm4
	divps	%xmm11, %xmm4
	addps	%xmm3, %xmm4
	mulps	%xmm12, %xmm4
	cvttps2dq	%xmm4, %xmm4
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm13, %xmm5
	movdqa	%xmm13, %xmm6
	pand	%xmm5, %xmm6
	pandn	%xmm4, %xmm5
	por	%xmm6, %xmm5
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm4, %xmm6
	pandn	%xmm5, %xmm6
	pand	%xmm13, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rax)
	addq	$4, %rcx
	addq	$4, %rax
	cmpq	%rcx, %rdx
	jne	.LBB1_151
# BB#152:                               #   in Loop: Header=BB1_145 Depth=1
	movq	%rdx, %rax
.LBB1_153:                              # %middle.block
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpq	%rax, 88(%rsp)          # 8-byte Folded Reload
	je	.LBB1_195
	.align	16, 0x90
.LBB1_154:                              # %for.body.14.i.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	divss	%xmm9, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm10, %xmm2
	cvttss2si	%xmm2, %edx
	cmpl	$255, %edx
	movb	$-1, %cl
	jg	.LBB1_156
# BB#155:                               # %for.body.14.i.i
                                        #   in Loop: Header=BB1_154 Depth=2
	movb	%dl, %cl
.LBB1_156:                              # %for.body.14.i.i
                                        #   in Loop: Header=BB1_154 Depth=2
	testl	%edx, %edx
	jns	.LBB1_158
# BB#157:                               #   in Loop: Header=BB1_154 Depth=2
	xorl	%ecx, %ecx
.LBB1_158:                              # %for.body.14.i.i
                                        #   in Loop: Header=BB1_154 Depth=2
	movq	400(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movb	%cl, (%rdx,%rax)
	incq	%rax
	movq	384(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB1_154
	jmp	.LBB1_195
	.align	16, 0x90
.LBB1_165:                              # %if.else.52.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	%rsi, 360(%rsp)         # 8-byte Spill
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	ucomiss	.LCPI1_5(%rip), %xmm1
	jne	.LBB1_166
	jnp	.LBB1_178
.LBB1_166:                              # %if.else.52.i
                                        #   in Loop: Header=BB1_145 Depth=1
	ucomiss	.LCPI1_12(%rip), %xmm1
	jne	.LBB1_167
	jnp	.LBB1_178
.LBB1_167:                              # %for.cond.11.preheader.i.112.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%rbx, 376(%rsp)         # 8-byte Spill
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	%ebp, 372(%rsp)         # 4-byte Spill
	cmpl	$31, %r12d
	je	.LBB1_195
# BB#168:                               # %overflow.checked990
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movl	$0, %eax
	je	.LBB1_172
# BB#169:                               # %vector.ph996
                                        #   in Loop: Header=BB1_145 Depth=1
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm0, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_170:                              # %vector.body986
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%eax, %xmm4
	pshufd	$0, %xmm4, %xmm4        # xmm4 = xmm4[0,0,0,0]
	paddd	%xmm7, %xmm4
	cvtdq2ps	%xmm4, %xmm4
	mulps	%xmm2, %xmm4
	divps	%xmm11, %xmm4
	addps	%xmm3, %xmm4
	mulps	%xmm12, %xmm4
	cvttps2dq	%xmm4, %xmm4
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm13, %xmm5
	movdqa	%xmm13, %xmm6
	pand	%xmm5, %xmm6
	pandn	%xmm4, %xmm5
	por	%xmm6, %xmm5
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm4, %xmm6
	pandn	%xmm5, %xmm6
	pand	%xmm13, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, 408(%rsp,%rax)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.LBB1_170
# BB#171:                               #   in Loop: Header=BB1_145 Depth=1
	movq	%rcx, %rax
.LBB1_172:                              # %middle.block987
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpq	%rax, 88(%rsp)          # 8-byte Folded Reload
	je	.LBB1_183
	.align	16, 0x90
.LBB1_173:                              # %for.body.14.i.150.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	divss	%xmm9, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm10, %xmm2
	cvttss2si	%xmm2, %edx
	cmpl	$255, %edx
	movb	$-1, %cl
	jg	.LBB1_175
# BB#174:                               # %for.body.14.i.150.i
                                        #   in Loop: Header=BB1_173 Depth=2
	movb	%dl, %cl
.LBB1_175:                              # %for.body.14.i.150.i
                                        #   in Loop: Header=BB1_173 Depth=2
	testl	%edx, %edx
	jns	.LBB1_177
# BB#176:                               #   in Loop: Header=BB1_173 Depth=2
	xorl	%ecx, %ecx
.LBB1_177:                              # %for.body.14.i.150.i
                                        #   in Loop: Header=BB1_173 Depth=2
	movb	%cl, 408(%rsp,%rax)
	incq	%rax
	movq	384(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB1_173
	jmp	.LBB1_183
	.align	16, 0x90
.LBB1_178:                              # %if.then.i.124.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%rbx, 376(%rsp)         # 8-byte Spill
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	%ebp, 372(%rsp)         # 4-byte Spill
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	idivq	152(%rsp)               # 8-byte Folded Reload
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ebp
	mulss	.LCPI1_17(%rip), %xmm0
	cvttss2si	%xmm0, %rdx
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r8, %rcx
	je	.LBB1_180
	.align	16, 0x90
.LBB1_179:                              # %for.body.i.134.i.prol
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%dh, (%rcx)  # NOREX
	incq	%rcx
	addl	%ebp, %edx
	incq	%rsi
	jne	.LBB1_179
.LBB1_180:                              # %if.then.i.124.i.split
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpq	$7, 144(%rsp)           # 8-byte Folded Reload
	jb	.LBB1_183
# BB#181:                               # %if.then.i.124.i.split.split
                                        #   in Loop: Header=BB1_145 Depth=1
	imull	$7, %ebp, %r8d
	leal	(%rbp,%rbp), %r10d
	leal	(%r10,%r10,2), %r9d
	leal	(%rbp,%rbp,4), %r11d
	leal	(,%rbp,4), %r14d
	leal	(%rbp,%rbp,2), %esi
	.align	16, 0x90
.LBB1_182:                              # %for.body.i.134.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%dh, (%rcx)  # NOREX
	leal	(%rdx,%rbp), %ebx
	movb	%bh, 1(%rcx)  # NOREX
	leal	(%r10,%rdx), %eax
	movb	%ah, 2(%rcx)  # NOREX
	leal	(%rsi,%rdx), %eax
	movb	%ah, 3(%rcx)  # NOREX
	leal	(%r14,%rdx), %eax
	movb	%ah, 4(%rcx)  # NOREX
	leal	(%r11,%rdx), %eax
	movb	%ah, 5(%rcx)  # NOREX
	leal	(%r9,%rdx), %eax
	movb	%ah, 6(%rcx)  # NOREX
	leal	(%rdx,%r8), %eax
	movb	%ah, 7(%rcx)  # NOREX
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addl	%ebp, %ebx
	addq	$8, %rcx
	cmpq	392(%rsp), %rcx         # 8-byte Folded Reload
	movl	%ebx, %edx
	jne	.LBB1_182
.LBB1_183:                              # %image_init_map.exit151.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpl	$2, %r12d
	jne	.LBB1_184
# BB#193:                               # %sw.bb.106.i
                                        #   in Loop: Header=BB1_145 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_194:                              # %for.body.113.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movb	408(%rsp,%rcx), %dl
	movb	%dl, (%rdi)
	movl	%eax, %edx
	andl	$2, %edx
	movb	408(%rsp,%rdx), %bl
	movb	%bl, 1(%rdi)
	movb	408(%rsp,%rcx), %cl
	movb	%cl, 2(%rdi)
	orl	$1, %edx
	movb	408(%rsp,%rdx), %cl
	movb	%cl, 3(%rdi)
	addl	$2, %eax
	addq	$4, %rdi
	cmpl	$16, %eax
	jne	.LBB1_194
	jmp	.LBB1_195
.LBB1_184:                              # %image_init_map.exit151.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpl	$1, %r12d
	jne	.LBB1_195
# BB#185:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movzbl	408(%rsp), %eax
	cmpl	$255, %eax
	jne	.LBB1_186
# BB#190:                               # %land.lhs.true.73.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpb	$0, 409(%rsp)
	movl	$0, %eax
	jne	.LBB1_192
# BB#191:                               # %if.then.78.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$lookup4x1to32_inverted, %esi
	movl	$64, %edx
	movss	%xmm9, 228(%rsp)        # 4-byte Spill
	movsd	%xmm8, 216(%rsp)        # 8-byte Spill
	movaps	%xmm11, 192(%rsp)       # 16-byte Spill
	jmp	.LBB1_189
.LBB1_159:                              # %if.then.i.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	idivq	152(%rsp)               # 8-byte Folded Reload
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %r14d
	mulss	.LCPI1_17(%rip), %xmm0
	cvttss2si	%xmm0, %rcx
	movl	$0, %esi
	movq	%rdi, %rdx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	400(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_162
	.align	16, 0x90
.LBB1_160:                              # %for.body.i.i.prol
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	movb	%ch, (%rbx,%rdx)  # NOREX
	addl	%r14d, %ecx
	leaq	1(%rdx), %rsi
	cmpq	%rsi, %rax
	jne	.LBB1_160
# BB#161:                               #   in Loop: Header=BB1_145 Depth=1
	leaq	1(%rbx,%rdx), %rdx
.LBB1_162:                              # %if.then.i.i.split
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpq	$7, 144(%rsp)           # 8-byte Folded Reload
	jb	.LBB1_195
# BB#163:                               # %if.then.i.i.split.split
                                        #   in Loop: Header=BB1_145 Depth=1
	addq	24(%rsp), %rdi          # 8-byte Folded Reload
	imull	$7, %r14d, %r8d
	leal	(%r14,%r14), %r10d
	leal	(%r10,%r10,2), %r9d
	leal	(%r14,%r14,4), %r11d
	leal	(,%r14,4), %esi
	leal	(%r14,%r14,2), %ebp
	.align	16, 0x90
.LBB1_164:                              # %for.body.i.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%ch, (%rdx)  # NOREX
	leal	(%rcx,%r14), %ebx
	movb	%bh, 1(%rdx)  # NOREX
	leal	(%r10,%rcx), %eax
	movb	%ah, 2(%rdx)  # NOREX
	leal	(%rbp,%rcx), %eax
	movb	%ah, 3(%rdx)  # NOREX
	leal	(%rsi,%rcx), %eax
	movb	%ah, 4(%rdx)  # NOREX
	leal	(%r11,%rcx), %eax
	movb	%ah, 5(%rdx)  # NOREX
	leal	(%r9,%rcx), %eax
	movb	%ah, 6(%rdx)  # NOREX
	leal	(%rcx,%r8), %eax
	movb	%ah, 7(%rdx)  # NOREX
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addl	%r14d, %ebx
	addq	$8, %rdx
	cmpq	%rdi, %rdx
	movl	%ebx, %ecx
	jne	.LBB1_164
	jmp	.LBB1_195
.LBB1_186:                              # %sw.bb.i
                                        #   in Loop: Header=BB1_145 Depth=1
	testb	%al, %al
	movl	$0, %eax
	jne	.LBB1_192
# BB#187:                               # %land.lhs.true.62.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movzbl	409(%rsp), %eax
	cmpl	$255, %eax
	movl	$0, %eax
	je	.LBB1_188
	.align	16, 0x90
.LBB1_192:                              # %for.body.84.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movb	408(%rsp,%rcx), %cl
	movb	%cl, (%rdi)
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	movb	408(%rsp,%rcx), %cl
	movb	%cl, 1(%rdi)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movb	408(%rsp,%rcx), %cl
	movb	%cl, 2(%rdi)
	movl	%eax, %ecx
	andl	$1, %ecx
	movb	408(%rsp,%rcx), %cl
	movb	%cl, 3(%rdi)
	incq	%rax
	addq	$4, %rdi
	cmpl	$16, %eax
	jne	.LBB1_192
	jmp	.LBB1_195
.LBB1_188:                              # %if.then.67.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$lookup4x1to32_identity, %esi
	movl	$64, %edx
.LBB1_189:                              # %sw.epilog.i
                                        #   in Loop: Header=BB1_145 Depth=1
	callq	memcpy
	movsd	.LCPI1_18(%rip), %xmm14 # xmm14 = mem[0],zero
	movdqa	.LCPI1_15(%rip), %xmm13 # xmm13 = [255,255,255,255]
	movaps	.LCPI1_14(%rip), %xmm12 # xmm12 = [2.550000e+02,2.550000e+02,2.550000e+02,2.550000e+02]
	movdqa	.LCPI1_13(%rip), %xmm7  # xmm7 = [0,1,2,3]
	movss	.LCPI1_16(%rip), %xmm10 # xmm10 = mem[0],zero,zero,zero
	movaps	192(%rsp), %xmm11       # 16-byte Reload
	movsd	216(%rsp), %xmm8        # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movss	228(%rsp), %xmm9        # 4-byte Reload
                                        # xmm9 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB1_195:                              # %if.end.126.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpl	$0, 276(%rsp)           # 4-byte Folded Reload
	movl	(%r15), %ecx
	movq	1288(%rsp), %r14
	movq	376(%rsp), %rdi         # 8-byte Reload
	movl	%ecx, 1784(%r14,%rdi)
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	(%r15), %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm8, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 1848(%r14,%rdi)
	movl	4(%r15), %eax
	movl	%eax, 1844(%r14,%rdi)
	je	.LBB1_197
# BB#196:                               # %if.then.139.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$0, 1852(%r14,%rdi)
	xorps	%xmm0, %xmm0
	movq	352(%rsp), %rax         # 8-byte Reload
	cmpneqss	(%rax), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	movl	%eax, 1856(%r14,%rdi)
	leaq	408(%rsp), %r8
	jmp	.LBB1_203
	.align	16, 0x90
.LBB1_197:                              # %if.else.143.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpl	$4, %r12d
	leaq	408(%rsp), %r8
	jg	.LBB1_202
# BB#198:                               # %if.then.146.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$15, %eax
	xorl	%edx, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	idivl	%esi
	movl	$1, 1852(%r14,%rdi)
	movl	$15, %edx
	subl	%eax, %edx
	jle	.LBB1_203
# BB#199:                               # %for.body.156.i.preheader
                                        #   in Loop: Header=BB1_145 Depth=1
	movd	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm14, %xmm2
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	%edx, %rcx
	leaq	(%r14,%rdi), %rdx
	movss	%xmm0, 1784(%rdx,%rcx,4)
	subl	%eax, %ecx
	jle	.LBB1_203
# BB#200:                               #   in Loop: Header=BB1_145 Depth=1
	leaq	1784(%r14,%rdi), %rsi
	leaq	1848(%r14,%rdi), %rdi
	.align	16, 0x90
.LBB1_201:                              # %for.body.156.for.body.156_crit_edge.i
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm14, %xmm1
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movslq	%ecx, %rcx
	movss	%xmm0, 1784(%rdx,%rcx,4)
	subl	%eax, %ecx
	jg	.LBB1_201
	jmp	.LBB1_203
.LBB1_202:                              # %if.else.173.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	$2, 1852(%r14,%rdi)
	.align	16, 0x90
.LBB1_203:                              # %if.end.176.i
                                        #   in Loop: Header=BB1_145 Depth=1
	cmpl	$1, 316(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_207
# BB#204:                               # %if.then.179.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	(%r15), %eax
	movl	%eax, 416(%rsp)
	movq	344(%rsp), %r12         # 8-byte Reload
	movq	(%r12), %rax
	movq	24432(%r14), %rdx
	movl	$1, %r9d
	movq	%r8, %rdi
	movq	%r12, %rsi
	movq	248(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rcx
	movq	336(%rsp), %rbx         # 8-byte Reload
	movq	%r8, %r14
	movq	%rbx, %r8
	callq	*72(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_366
# BB#205:                               # %if.end.186.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	4(%r15), %eax
	movl	%eax, 416(%rsp)
	movq	(%r12), %rax
	movq	1288(%rsp), %rcx
	movq	24440(%rcx), %rdx
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rcx
	movq	%rbx, %r8
	callq	*72(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_366
# BB#206:                               # %cleanup.thread154.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movl	292(%rsp), %r12d        # 4-byte Reload
	movq	176(%rsp), %r13         # 8-byte Reload
	movss	228(%rsp), %xmm9        # 4-byte Reload
                                        # xmm9 = mem[0],zero,zero,zero
	movsd	216(%rsp), %xmm8        # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movaps	192(%rsp), %xmm11       # 16-byte Reload
	movss	.LCPI1_16(%rip), %xmm10 # xmm10 = mem[0],zero,zero,zero
	movdqa	.LCPI1_13(%rip), %xmm7  # xmm7 = [0,1,2,3]
	movaps	.LCPI1_14(%rip), %xmm12 # xmm12 = [2.550000e+02,2.550000e+02,2.550000e+02,2.550000e+02]
	movdqa	.LCPI1_15(%rip), %xmm13 # xmm13 = [255,255,255,255]
	movsd	.LCPI1_18(%rip), %xmm14 # xmm14 = mem[0],zero
	movq	%r14, %r8
	movq	1288(%rsp), %r14
.LBB1_207:                              # %for.inc.205.i
                                        #   in Loop: Header=BB1_145 Depth=1
	movq	360(%rsp), %rsi         # 8-byte Reload
	incq	%rsi
	movq	400(%rsp), %rdx         # 8-byte Reload
	addq	$332, %rdx              # imm = 0x14C
	cmpq	%r13, %rsi
	movl	372(%rsp), %ebp         # 4-byte Reload
	jl	.LBB1_145
.LBB1_208:                              # %if.end.971
	movl	%r12d, 292(%rsp)        # 4-byte Spill
	movq	344(%rsp), %rdi         # 8-byte Reload
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	1280(%rsp), %r15
	movq	%r15, %r8
	je	.LBB1_219
# BB#209:                               # %land.lhs.true.974
	movq	344(%rsp), %rax         # 8-byte Reload
	cmpq	$0, 48(%rax)
	jne	.LBB1_219
# BB#210:                               # %if.then.977
	leaq	24796(%r14), %rbx
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdx
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %r15
	movq	%r8, %r14
	callq	gs_colorspace_set_icc_equivalent
	movq	%r14, %r8
	movq	%r15, %r14
	cmpl	$0, (%rbx)
	je	.LBB1_219
# BB#211:                               # %if.then.984
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB1_214
# BB#212:                               # %do.end.992
	decq	8(%rsi)
	jne	.LBB1_214
# BB#213:                               # %do.end.1005
	movq	16(%rsi), %rdi
	movl	$.L.str.1, %edx
	movq	%r8, %rbx
	callq	*24(%rsi)
	movq	%rbx, %r8
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	$0, 48(%rax)
.LBB1_214:                              # %do.body.1023
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	64(%rax), %rsi
	testq	%rsi, %rsi
	movq	248(%rsp), %rax         # 8-byte Reload
	je	.LBB1_217
# BB#215:                               # %do.end.1030
	decq	288(%rsi)
	jne	.LBB1_217
# BB#216:                               # %do.end.1045
	movq	296(%rsi), %rdi
	movq	%r14, %r15
	movq	%rax, %r14
	movl	$.L.str.1, %edx
	movq	%r8, %rbx
	callq	*304(%rsi)
	movq	%rbx, %r8
	movq	%r14, %rax
	movq	%r15, %r14
	movq	344(%rsp), %rcx         # 8-byte Reload
	movq	$0, 64(%rcx)
.LBB1_217:                              # %do.end.1063
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	336(%rax), %rax
	movq	32(%rax), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 64(%rcx)
	testq	%rax, %rax
	je	.LBB1_219
# BB#218:                               # %do.body.1069
	incq	288(%rax)
.LBB1_219:                              # %if.end.1083
	movl	240(%rsp), %esi         # 4-byte Reload
	movl	%esi, %ebx
	shll	$4, %ebx
	movq	320(%rsp), %rdx         # 8-byte Reload
	cmpl	$0, 572(%rdx)
	movq	40(%rsp), %r12          # 8-byte Reload
	je	.LBB1_220
# BB#221:                               # %if.else.1091
	movl	%ebx, %eax
	xorl	%esi, %eax
	testb	$-16, %al
	je	.LBB1_222
# BB#223:                               # %land.lhs.true.1096
	movl	$gx_dc_type_data_pure, %eax
	movq	232(%rsp), %rcx         # 8-byte Reload
	cmpq	%rax, (%rcx)
	movq	%rcx, %rax
	je	.LBB1_225
# BB#224:
	movq	%r14, %rbx
	jmp	.LBB1_229
.LBB1_366:                              # %if.then.969
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$572, %edx              # imm = 0x23C
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
	movl	%eax, %r14d
	jmp	.LBB1_365
.LBB1_220:                              # %if.then.1085
	andl	$240, %ebx
	andl	$-753, %esi             # imm = 0xFFFFFFFFFFFFFD0F
	orl	%ebx, %esi
	movq	%r14, %rbx
	jmp	.LBB1_229
.LBB1_222:
	movq	%r14, %rbx
	jmp	.LBB1_229
.LBB1_115:                              # %if.end.909
	movl	%r14d, 108(%rsp)        # 4-byte Spill
	movq	$-1, 8(%rax)
	movq	$gx_dc_type_data_pure, (%rax)
	movl	$0, 360(%rax)
	movq	$-1, 169328(%rax)
	movq	$gx_dc_type_data_pure, 169320(%rax)
	movl	$0, 169680(%rax)
	movl	$656, %edx              # imm = 0x290
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	memcpy
	leaq	1528(%rbx), %rdi
	movq	%r15, 296(%rsp)         # 8-byte Spill
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$lookup4x1to32_inverted, %esi
	ucomiss	(%r15), %xmm0
	ja	.LBB1_117
# BB#116:                               # %select.mid
	movl	$lookup4x1to32_identity, %esi
.LBB1_117:                              # %select.end
	movl	$64, %edx
	callq	memcpy
	movl	$0, 1852(%rbx)
	movl	240(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	andl	$-205, %ecx
	orl	%eax, %ecx
	movl	$1, %ebp
	movl	$1, 316(%rsp)           # 4-byte Folded Spill
	movq	%r12, %r8
	movq	%r13, %r12
	movl	%ecx, %r13d
	jmp	.LBB1_118
.LBB1_225:                              # %if.then.i.810
	movq	%r12, %r13
	movq	%r8, %r12
	movl	%ebp, 372(%rsp)         # 4-byte Spill
	movl	%esi, %r15d
	movq	%rdx, %rbp
	movq	8(%rax), %rsi
	leaq	408(%rsp), %rdx
	movq	336(%rsp), %rdi         # 8-byte Reload
	callq	*1192(%rdi)
	movw	410(%rsp), %ax
	orw	408(%rsp), %ax
	orw	412(%rsp), %ax
	je	.LBB1_227
# BB#226:
	movq	%r14, %rbx
	movq	%rbp, %rdx
	movl	%r15d, %esi
	jmp	.LBB1_228
.LBB1_227:                              # %if.then.1100
	andl	$240, %ebx
	movl	%r15d, %esi
	andl	$-241, %esi
	orl	%ebx, %esi
	movq	%r14, %rbx
	movq	%rbp, %rdx
.LBB1_228:                              # %if.end.1106
	movl	372(%rsp), %ebp         # 4-byte Reload
	movq	%r12, %r8
	movq	%r13, %r12
.LBB1_229:                              # %if.end.1106
	movl	$204, %r13d
	cmpl	$204, %esi
	jne	.LBB1_231
# BB#230:
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	jmp	.LBB1_118
.LBB1_231:                              # %land.lhs.true.1109
	movl	316(%rsp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_232
# BB#233:                               # %land.lhs.true.1109
	cmpl	$1, 292(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_232
# BB#234:                               # %land.lhs.true.1109
	movl	%esi, %eax
	shll	$4, %eax
	xorl	%esi, %eax
	andl	$240, %eax
	jne	.LBB1_232
# BB#235:                               # %land.lhs.true.1121
	movq	24432(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	movl	$1, 316(%rsp)           # 4-byte Folded Spill
	cmpq	%rcx, (%rax)
	je	.LBB1_236
.LBB1_232:
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movl	%esi, %r13d
.LBB1_118:                              # %if.end.1183
	movb	%bpl, 1271(%rbx)
	movq	304(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movb	247(%rsp), %cl          # 1-byte Reload
	shll	%cl, %ebp
	addl	$15, %ebp
	movl	316(%rsp), %r14d        # 4-byte Reload
	imull	%r14d, %ebp
	movl	$.L.str.4, %edx
	movq	%r8, %rdi
	movl	%ebp, %esi
	movq	%r8, %r15
	callq	*64(%r15)
	testq	%rax, %rax
	je	.LBB1_119
# BB#261:                               # %if.end.1203
	movl	292(%rsp), %ecx         # 4-byte Reload
	cmpl	$8, %ecx
	movb	%cl, 576(%rbx)
	movb	%cl, 577(%rbx)
	setg	578(%rbx)
	movb	%r14b, 579(%rbx)
	movl	%r14d, %r9d
	movl	$1, %edx
	movl	260(%rsp), %edi         # 4-byte Reload
	testl	%edi, %edi
	movl	$1, %esi
	movq	320(%rsp), %r8          # 8-byte Reload
	je	.LBB1_265
# BB#262:                               # %if.end.1203
	cmpl	$2, %edi
	jne	.LBB1_263
# BB#264:                               # %sw.bb.1215
	imull	%r9d, %ecx
	movl	%r9d, %edx
	movl	%ecx, %esi
	jmp	.LBB1_265
.LBB1_119:                              # %if.then.1200
	movl	$.L.str, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	movl	$-25, %r14d
	jmp	.LBB1_365
.LBB1_263:                              # %if.end.1203
	movl	$-100, %r14d
	cmpl	$1, %edi
	movl	%r9d, %edx
	movl	%r9d, %esi
	jne	.LBB1_365
.LBB1_265:                              # %sw.epilog.1219
	movb	247(%rsp), %cl          # 1-byte Reload
	shll	%cl, %edx
	movl	%esi, 44(%rbx)
	movb	%dl, 1117(%rbx)
	movb	564(%r8), %cl
	movb	%cl, 1119(%rbx)
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	%edx, 1184(%rbx)
	movl	120(%rsp), %edi         # 4-byte Reload
	movl	%edi, 1188(%rbx)
	movl	164(%rsp), %esi         # 4-byte Reload
	movl	%esi, 1192(%rbx)
	movl	76(%rsp), %r8d          # 4-byte Reload
	movl	%r8d, 1196(%rbx)
	xorl	%ecx, %ecx
	orl	%esi, %edi
	je	.LBB1_267
# BB#266:                               # %cond.false.1231
	orl	%r8d, %edx
	setne	%cl
	movzbl	%cl, %ecx
	incl	%ecx
.LBB1_267:                              # %cond.end.1238
	movl	%ecx, 1264(%rbx)
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 1216(%rbx)
	movq	344(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 1224(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rax, 1232(%rbx)
	movl	%ebp, 1240(%rbx)
	movq	$0, 1248(%rbx)
	movq	$0, 24448(%rbx)
	movq	$0, 24456(%rbx)
	movq	$0, 24464(%rbx)
	movq	$0, 24488(%rbx)
	movl	$0, 24808(%rbx)
	movl	$0, 1256(%rbx)
	cmpl	$0, 332(%rsp)           # 4-byte Folded Reload
	movl	$240, %eax
	movl	$204, %ecx
	cmovnel	%eax, %ecx
	cmpl	%ecx, %r13d
	movl	%r13d, 372(%rsp)        # 4-byte Spill
	setne	1268(%rbx)
	movb	$0, 1270(%rbx)
	movq	80(%rsp), %rbp          # 8-byte Reload
	leaq	1152(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB1_268
# BB#269:                               # %if.else.1253
	movq	%rbp, %rdi
	callq	gx_cpath_outer_box
	movl	%eax, %r14d
	leaq	1136(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_inner_box
	orl	%r14d, %eax
	sete	%al
	shlb	$4, %al
	jmp	.LBB1_270
.LBB1_268:                              # %if.then.1251
	movq	336(%rsp), %rdi         # 8-byte Reload
	callq	*1432(%rdi)
	movups	1152(%rsp), %xmm0
	movaps	%xmm0, 1136(%rsp)
	xorl	%eax, %eax
.LBB1_270:                              # %if.end.1261
	movq	304(%rsp), %r15         # 8-byte Reload
	movb	%al, 1269(%rbx)
	movups	1152(%rsp), %xmm0
	movups	%xmm0, 1272(%rbx)
	movaps	1136(%rsp), %xmm0
	movups	%xmm0, 1288(%rbx)
	movl	$240, 1304(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1320(%rbx)
	movq	$0, 1336(%rbx)
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	movl	%r12d, %esi
	sarl	$31, %esi
	andl	%r12d, %esi
	addl	%eax, %esi
	xorl	%r11d, %r11d
	testl	%ecx, %ecx
	movl	$0, %eax
	cmovnsl	%ecx, %eax
	testl	%r12d, %r12d
	movl	$0, %edi
	cmovnsl	%r12d, %edi
	addl	%eax, %edi
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	movq	168(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%eax, %ebp
	testl	%ecx, %ecx
	movl	$0, %eax
	cmovnsl	%ecx, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %r11d
	addl	%eax, %r11d
	movl	1264(%rbx), %r8d
	testl	%r8d, %r8d
	movl	%r15d, %ecx
	movq	280(%rsp), %r13         # 8-byte Reload
	movl	%r13d, %r9d
	movq	64(%rsp), %r10          # 8-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
	je	.LBB1_274
# BB#271:                               # %if.end.1261
	cmpl	$1, %r8d
	jne	.LBB1_272
# BB#273:                               # %sw.bb.1334
	movl	%r13d, %ecx
	movl	%r15d, %r9d
.LBB1_274:                              # %sw.epilog.1336
	movq	%rdx, %rax
	movl	%edi, %edx
	subl	%esi, %edx
	cmpl	$255, %edx
	jg	.LBB1_275
# BB#276:                               # %sw.epilog.1336
	cmpl	$1, %ecx
	movq	%rax, %rdx
	jne	.LBB1_278
# BB#277:                               # %if.then.1344
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%r12,%rax), %ecx
	sarl	%ecx
	leal	(%r10,%rcx), %r10d
	andl	$-256, %r10d
	orl	$128, %r10d
	subl	%ecx, %r10d
	jmp	.LBB1_278
.LBB1_275:
	movq	%rax, %rdx
.LBB1_278:                              # %if.end.1356
	movl	%r11d, %ecx
	subl	%ebp, %ecx
	cmpl	$255, %ecx
	jg	.LBB1_272
# BB#279:                               # %if.end.1356
	movq	%rsi, 392(%rsp)         # 8-byte Spill
	movl	%edi, 400(%rsp)         # 4-byte Spill
	cmpl	$1, %r9d
	jne	.LBB1_281
# BB#280:                               # %if.then.1364
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %eax
	sarl	%eax
	leal	(%r14,%rax), %r14d
	andl	$-256, %r14d
	orl	$128, %r14d
	subl	%eax, %r14d
	jmp	.LBB1_281
.LBB1_272:
	movq	%rsi, 392(%rsp)         # 8-byte Spill
	movl	%edi, 400(%rsp)         # 4-byte Spill
.LBB1_281:                              # %if.end.1377
	movl	%r10d, 1372(%rbx)
	movq	%rbx, %rsi
	leal	-1(%r13), %ebx
	movl	%ebx, 1376(%rsi)
	testl	%r13d, %r13d
	je	.LBB1_285
# BB#282:                               # %if.else.1402
	movq	%rbp, 376(%rsp)         # 8-byte Spill
	movl	%r11d, 384(%rsp)        # 4-byte Spill
	movq	%rdx, %r11
	testl	%r12d, %r12d
	js	.LBB1_283
# BB#286:                               # %if.else.1443
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	movl	%edx, %ecx
	movl	%eax, 1380(%rsi)
	jmp	.LBB1_287
.LBB1_285:                              # %if.then.1483
	movq	%rbp, 376(%rsp)         # 8-byte Spill
	movl	%r11d, 384(%rsp)        # 4-byte Spill
	movl	$0, 1380(%rsi)
	movl	$0, 1384(%rsi)
	leaq	1388(%rsi), %r9
	movl	$0, 1388(%rsi)
	leaq	1392(%rsi), %rbp
	movl	%r14d, 1392(%rsi)
	leaq	1396(%rsi), %rdi
	movl	%ebx, 1396(%rsi)
	movl	$0, 1400(%rsi)
	movl	$0, 1404(%rsi)
	xorl	%ecx, %ecx
	jmp	.LBB1_294
.LBB1_283:                              # %if.then.1406
	movl	%r12d, %edi
	negl	%edi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	divl	%r13d
	movl	%eax, %ebp
	negl	%eax
	movl	%eax, 1380(%rsi)
	movl	%edi, %eax
	cltd
	idivl	%r13d
	movl	%edx, 1384(%rsi)
	testl	%edx, %edx
	je	.LBB1_288
# BB#284:                               # %if.then.1425
	notl	%ebp
	movl	%ebp, 1380(%rsi)
	movl	%r13d, %ecx
	subl	%edx, %ecx
.LBB1_287:                              # %if.else.1494
	movl	%ecx, 1384(%rsi)
.LBB1_288:                              # %if.else.1494
	leaq	1388(%rsi), %r9
	movl	%r13d, 1388(%rsi)
	leaq	1392(%rsi), %rbp
	movl	%r14d, 1392(%rsi)
	leaq	1396(%rsi), %rdi
	movl	%ebx, 1396(%rsi)
	testl	%r11d, %r11d
	js	.LBB1_289
# BB#292:                               # %if.else.1537
	movl	%r11d, %eax
	cltd
	idivl	%r13d
	movl	%eax, 1400(%rsi)
	movl	%edx, 1404(%rsi)
	jmp	.LBB1_293
.LBB1_289:                              # %if.then.1498
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	%r11d, %r12d
	negl	%r12d
	xorl	%edx, %edx
	movl	%r12d, %eax
	divl	%r13d
	movl	%eax, %r15d
	negl	%eax
	movl	%eax, 1400(%rsi)
	movl	%r12d, %eax
	cltd
	idivl	%r13d
	movl	%edx, 1404(%rsi)
	testl	%edx, %edx
	je	.LBB1_290
# BB#291:                               # %if.then.1518
	notl	%r15d
	movl	%r15d, 1400(%rsi)
	movl	%r13d, %eax
	subl	%edx, %eax
	movl	%eax, 1404(%rsi)
.LBB1_290:
	movq	304(%rsp), %r15         # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB1_293:                              # %if.end.1553
	movq	%r11, %rdx
.LBB1_294:                              # %if.end.1553
	movl	%r13d, 1408(%rsi)
	testl	%r8d, %r8d
	movq	184(%rsp), %r8          # 8-byte Reload
	cmovel	%r8d, %r12d
	movq	112(%rsp), %rax         # 8-byte Reload
	cmovnel	%eax, %edx
	movl	%r12d, 1180(%rsi)
	movl	%edx, 1176(%rsi)
	movslq	(%rbp), %rax
	movl	%eax, %edx
	andl	$-2147483393, %edx      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %edx      # imm = 0xFFFFFFFF80000080
	jne	.LBB1_296
# BB#295:                               # %cond.true.1592
	sarl	$8, %eax
	incl	%eax
	jmp	.LBB1_297
.LBB1_296:                              # %cond.false.1600
	addq	$127, %rax
	shrq	$8, %rax
.LBB1_297:                              # %cond.end.1610
	movl	%eax, 1508(%rsi)
	movl	1148(%rsi), %eax
	testl	%eax, %eax
	jne	.LBB1_298
	jmp	.LBB1_305
	.align	16, 0x90
.LBB1_303:                              # %if.end.1711.do.body.1623_crit_edge
                                        #   in Loop: Header=BB1_298 Depth=1
	movl	1376(%rsi), %ebx
	movl	1384(%rsi), %ecx
.LBB1_298:                              # %do.body.1623
                                        # =>This Inner Loop Header: Depth=1
	subl	%ecx, %ebx
	movl	%ebx, 1376(%rsi)
	movl	1372(%rsi), %ecx
	jns	.LBB1_300
# BB#299:                               # %if.then.1642
                                        #   in Loop: Header=BB1_298 Depth=1
	incl	%ecx
	movl	%ecx, 1372(%rsi)
	addl	(%r9), %ebx
	movl	%ebx, 1376(%rsi)
.LBB1_300:                              # %if.end.1660
                                        #   in Loop: Header=BB1_298 Depth=1
	decl	%eax
	addl	1380(%rsi), %ecx
	movl	%ecx, 1372(%rsi)
	movl	(%rdi), %edx
	subl	1404(%rsi), %edx
	movl	%edx, (%rdi)
	movl	(%rbp), %ecx
	jns	.LBB1_302
# BB#301:                               # %if.then.1693
                                        #   in Loop: Header=BB1_298 Depth=1
	incl	%ecx
	movl	%ecx, (%rbp)
	addl	1408(%rsi), %edx
	movl	%edx, (%rdi)
.LBB1_302:                              # %if.end.1711
                                        #   in Loop: Header=BB1_298 Depth=1
	addl	1400(%rsi), %ecx
	movl	%ecx, (%rbp)
	testl	%eax, %eax
	jne	.LBB1_303
# BB#304:                               # %if.end.1726.loopexit
	movl	1372(%rsi), %r10d
.LBB1_305:                              # %if.end.1726
	movq	%r10, %r11
	movl	%r11d, 1364(%rsi)
	movl	%r11d, 1356(%rsi)
	movl	(%rbp), %ebx
	movl	%ebx, 1368(%rsi)
	movl	%ebx, 1360(%rsi)
	movl	%r11d, 1412(%rsi)
	leal	-1(%r15), %edi
	movl	%edi, 1416(%rsi)
	testl	%r15d, %r15d
	je	.LBB1_309
# BB#306:                               # %if.else.1770
	testl	%r8d, %r8d
	js	.LBB1_307
# BB#310:                               # %if.else.1813
	movl	%r8d, %eax
	cltd
	idivl	%r15d
	movl	%edx, %r9d
	movl	%eax, %r13d
	movl	%r13d, 1420(%rsi)
	movl	%r9d, 1424(%rsi)
	jmp	.LBB1_311
.LBB1_309:                              # %if.then.1856
	movl	$0, 1420(%rsi)
	movl	$0, 1424(%rsi)
	movl	%r15d, 1428(%rsi)
	leaq	1432(%rsi), %r12
	movl	%ebx, 1432(%rsi)
	leaq	1436(%rsi), %r14
	movl	%edi, 1436(%rsi)
	movl	$0, 1440(%rsi)
	movl	$0, 1444(%rsi)
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movq	%r15, %r10
	xorl	%r15d, %r15d
	jmp	.LBB1_315
.LBB1_307:                              # %if.then.1774
	negl	%r8d
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	movl	%r8d, %eax
	divl	%r15d
	movl	%eax, %ecx
	movl	%ecx, %r13d
	negl	%r13d
	movl	%r13d, 1420(%rsi)
	movl	%r8d, %eax
	cltd
	idivl	%r15d
	movl	%edx, 1424(%rsi)
	testl	%edx, %edx
	je	.LBB1_311
# BB#308:                               # %if.then.1794
	notl	%ecx
	movl	%ecx, 1420(%rsi)
	movl	%r15d, %r9d
	subl	%edx, %r9d
	movl	%r9d, 1424(%rsi)
	movl	%ecx, %r13d
.LBB1_311:                              # %if.else.1867
	movl	%r15d, 1428(%rsi)
	leaq	1432(%rsi), %r12
	movl	%ebx, 1432(%rsi)
	leaq	1436(%rsi), %r14
	movl	%edi, 1436(%rsi)
	movq	112(%rsp), %rbp         # 8-byte Reload
	testl	%ebp, %ebp
	js	.LBB1_312
# BB#314:                               # %if.else.1910
	movl	%ebp, %eax
	cltd
	idivl	%r15d
	movl	%edx, %ecx
	movq	%r15, %r10
	movl	%eax, %r15d
	movl	%r15d, 1440(%rsi)
	movl	%ecx, 1444(%rsi)
	jmp	.LBB1_315
.LBB1_312:                              # %if.then.1871
	negl	%ebp
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%r15d
	movl	%eax, %r8d
	movq	%r15, %r10
	movl	%r8d, %r15d
	negl	%r15d
	movl	%r15d, 1440(%rsi)
	movl	%ebp, %eax
	cltd
	idivl	%r10d
	movl	%edx, 1444(%rsi)
	testl	%edx, %edx
	je	.LBB1_315
# BB#313:                               # %if.then.1891
	notl	%r8d
	movl	%r8d, 1440(%rsi)
	movl	%r10d, %ecx
	subl	%edx, %ecx
	movl	%ecx, 1444(%rsi)
	movl	%r8d, %r15d
.LBB1_315:                              # %if.end.1926
	leaq	1412(%rsi), %r8
	movl	%r10d, 1448(%rsi)
	movl	1144(%rsi), %eax
	testl	%eax, %eax
	je	.LBB1_337
# BB#316:                               # %while.body.1960.lr.ph
	imull	%eax, %r13d
	addl	%r13d, %r11d
	movl	%r11d, (%r8)
	testb	$1, %al
	jne	.LBB1_318
# BB#317:
	movl	%edi, %edx
	movl	%eax, %ebp
	jmp	.LBB1_320
.LBB1_318:                              # %while.body.1960.prol
	leal	-1(%rax), %ebp
	movl	%edi, %edx
	subl	%r9d, %edx
	jns	.LBB1_320
# BB#319:                               # %if.then.1979.prol
	incl	%r11d
	movl	%r11d, (%r8)
	addl	%r10d, %edx
.LBB1_320:                              # %while.body.1960.lr.ph.split
	cmpl	$1, %eax
	je	.LBB1_326
	.align	16, 0x90
.LBB1_321:                              # %while.body.1960
                                        # =>This Inner Loop Header: Depth=1
	subl	%r9d, %edx
	jns	.LBB1_323
# BB#322:                               # %if.then.1979
                                        #   in Loop: Header=BB1_321 Depth=1
	incl	%r11d
	movl	%r11d, (%r8)
	addl	%r10d, %edx
.LBB1_323:                              # %while.cond.1957.backedge
                                        #   in Loop: Header=BB1_321 Depth=1
	addl	$-2, %ebp
	subl	%r9d, %edx
	jns	.LBB1_325
# BB#324:                               # %if.then.1979.1
                                        #   in Loop: Header=BB1_321 Depth=1
	incl	%r11d
	movl	%r11d, (%r8)
	addl	%r10d, %edx
.LBB1_325:                              # %while.cond.1957.backedge.1
                                        #   in Loop: Header=BB1_321 Depth=1
	testl	%ebp, %ebp
	jne	.LBB1_321
.LBB1_326:                              # %while.body.2022.lr.ph
	movq	1288(%rsp), %rbp
	movl	%edx, 1416(%rbp)
	imull	%eax, %r15d
	addl	%r15d, %ebx
	movl	%ebx, (%r12)
	testb	$1, %al
	jne	.LBB1_328
# BB#327:
	movl	%eax, %edx
	jmp	.LBB1_330
.LBB1_328:                              # %while.body.2022.prol
	leal	-1(%rax), %edx
	subl	%ecx, %edi
	jns	.LBB1_330
# BB#329:                               # %if.then.2041.prol
	incl	%ebx
	movl	%ebx, (%r12)
	addl	%r10d, %edi
.LBB1_330:                              # %while.body.2022.lr.ph.split
	cmpl	$1, %eax
	je	.LBB1_336
	.align	16, 0x90
.LBB1_331:                              # %while.body.2022
                                        # =>This Inner Loop Header: Depth=1
	subl	%ecx, %edi
	jns	.LBB1_333
# BB#332:                               # %if.then.2041
                                        #   in Loop: Header=BB1_331 Depth=1
	incl	%ebx
	movl	%ebx, (%r12)
	addl	%r10d, %edi
.LBB1_333:                              # %while.cond.2019.backedge
                                        #   in Loop: Header=BB1_331 Depth=1
	addl	$-2, %edx
	subl	%ecx, %edi
	jns	.LBB1_335
# BB#334:                               # %if.then.2041.1
                                        #   in Loop: Header=BB1_331 Depth=1
	incl	%ebx
	movl	%ebx, (%r12)
	addl	%r10d, %edi
.LBB1_335:                              # %while.cond.2019.backedge.1
                                        #   in Loop: Header=BB1_331 Depth=1
	testl	%edx, %edx
	jne	.LBB1_331
.LBB1_336:                              # %if.end.2063.loopexit
	movl	%edi, (%r14)
.LBB1_337:                              # %if.end.2063
	movq	1288(%rsp), %r13
	cmpb	$0, 1269(%r13)
	movl	400(%rsp), %edx         # 4-byte Reload
	movq	392(%rsp), %rax         # 8-byte Reload
	jne	.LBB1_339
# BB#338:                               # %if.then.2076
	leal	(%rax,%r11), %eax
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	movslq	1136(%rsp), %rcx
	addq	$127, %rcx
	andq	$-256, %rcx
	cmpq	%rcx, %rax
	setl	%al
	addl	%edx, %r11d
	movslq	%r11d, %rcx
	addq	$127, %rcx
	andq	$-256, %rcx
	movslq	1144(%rsp), %rdx
	addq	$127, %rdx
	andq	$-256, %rdx
	cmpq	%rdx, %rcx
	setge	%cl
	addb	%cl, %cl
	orb	%al, %cl
	movq	376(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	movslq	1140(%rsp), %rdx
	addq	$127, %rdx
	andq	$-256, %rdx
	cmpq	%rdx, %rax
	setl	%al
	shlb	$2, %al
	orb	%cl, %al
	addl	384(%rsp), %ebx         # 4-byte Folded Reload
	movslq	%ebx, %rcx
	addq	$127, %rcx
	andq	$-256, %rcx
	movslq	1148(%rsp), %rdx
	addq	$127, %rdx
	andq	$-256, %rdx
	cmpq	%rdx, %rcx
	setge	%cl
	shlb	$3, %cl
	orb	%al, %cl
	movb	%cl, 1269(%r13)
.LBB1_339:                              # %if.end.2130
	movq	$0, 1344(%r13)
	movl	$0, 1352(%r13)
	cmpl	$1, 44(%r13)
	movq	%r13, %rsi
	jne	.LBB1_340
# BB#341:                               # %land.rhs
	movzbl	576(%rsi), %eax
	cmpl	%eax, 48(%rsi)
	setne	%al
	jmp	.LBB1_342
.LBB1_340:
	xorl	%eax, %eax
.LBB1_342:                              # %land.end
	movq	336(%rsp), %r15         # 8-byte Reload
	movl	108(%rsp), %r9d         # 4-byte Reload
	movzbl	%al, %r10d
	movq	sample_unpack_12_proc(%rip), %rax
	movq	%rax, gx_image_enum_begin.procs+80(%rip)
	movq	%rax, gx_image_enum_begin.procs+32(%rip)
	movq	sample_unpack_16_proc(%rip), %rax
	movq	%rax, gx_image_enum_begin.procs+88(%rip)
	movq	%rax, gx_image_enum_begin.procs+40(%rip)
	testb	%r10b, %r10b
	je	.LBB1_349
# BB#343:                               # %if.then.2145
	movl	48(%rsi), %eax
	movzbl	576(%rsi), %edi
	cltd
	idivl	%edi
	movl	$1, %edx
	cmpl	$2, %eax
	jl	.LBB1_348
# BB#344:                               # %for.body.lr.ph
	movq	296(%rsp), %rcx         # 8-byte Reload
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movslq	%eax, %rbx
	movl	$3, %edi
	movl	$1, %edx
.LBB1_345:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebp
	movslq	%ebp, %rbp
	movq	296(%rsp), %rcx         # 8-byte Reload
	ucomiss	(%rcx,%rbp,4), %xmm0
	jne	.LBB1_348
	jp	.LBB1_348
# BB#346:                               # %lor.lhs.false.2160
                                        #   in Loop: Header=BB1_345 Depth=1
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	%edi, %rbp
	ucomiss	(%rcx,%rbp,4), %xmm1
	jne	.LBB1_348
	jp	.LBB1_348
# BB#347:                               # %for.inc
                                        #   in Loop: Header=BB1_345 Depth=1
	incq	%rdx
	addl	$2, %edi
	cmpq	%rbx, %rdx
	jl	.LBB1_345
.LBB1_348:                              # %for.end
	xorl	%edi, %edi
	cmpl	%eax, %edx
	cmovel	%edi, %r10d
.LBB1_349:                              # %if.end.2175
	movslq	%r9d, %rdx
	movslq	%r10d, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	gx_image_enum_begin.procs(%rax,%rdx,8), %rax
	movq	%rax, 1200(%rsi)
	cmpl	$4, %edx
	jl	.LBB1_352
# BB#350:                               # %if.end.2175
	testq	%rax, %rax
	je	.LBB1_351
.LBB1_352:                              # %do.end.2197
	movq	32(%r8), %rax
	movq	%rax, 1484(%rsi)
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 1468(%rsi)
	movups	%xmm0, 1452(%rsi)
	movl	gx_image_class_table_count(%rip), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	je	.LBB1_356
# BB#353:                               # %for.body.2204.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_354:                              # %for.body.2204
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	*gx_image_class_table(,%rbp,8)
	movq	%rax, 1208(%rbx)
	movq	%rbx, %rsi
	testq	%rax, %rax
	jne	.LBB1_356
# BB#355:                               # %for.inc.2212
                                        #   in Loop: Header=BB1_354 Depth=1
	incq	%rbp
	cmpl	%r14d, %ebp
	jb	.LBB1_354
.LBB1_356:                              # %for.end.2214
	cmpl	%r14d, %ebp
	jne	.LBB1_357
.LBB1_351:                              # %if.then.2185
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	gx_default_end_image
	movl	$-15, %r14d
	jmp	.LBB1_365
.LBB1_357:                              # %cleanup.cont.2224
	movq	80(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	movq	%rsi, %r12
	je	.LBB1_361
# BB#358:                               # %cleanup.cont.2224
	movb	1269(%r12), %al
	testb	%al, %al
	je	.LBB1_361
# BB#359:                               # %if.then.2230
	movl	$st_device_clip, %esi
	movl	$.L.str.5, %edx
	movq	1280(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_367
# BB#360:                               # %cleanup.2239.thread
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	gx_make_clip_device_in_heap
	movq	%r14, 1320(%r12)
.LBB1_361:                              # %if.end.2242
	xorl	%r14d, %r14d
	cmpb	$0, 1268(%r12)
	je	.LBB1_365
# BB#362:                               # %if.then.2245
	leaq	408(%rsp), %rdi
	movl	$.L.str.6, %edx
	movq	1280(%rsp), %rsi
	callq	gx_alloc_rop_texture_device
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_364
# BB#363:                               # %cleanup.2261.thread
	movq	408(%rsp), %rdi
	movq	1320(%r12), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r15
	movq	%r15, %rsi
	movl	372(%rsp), %edx         # 4-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	callq	gx_make_rop_texture_device
	movq	408(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	408(%rsp), %rax
	movq	%rax, 1328(%r12)
	jmp	.LBB1_365
.LBB1_236:                              # %if.then.i.824
	movq	%r12, %r13
	movq	%r8, %r12
	movl	%ebp, %r15d
	movl	%esi, %ebp
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movq	8(%rax), %rsi
	leaq	408(%rsp), %rdx
	movq	336(%rsp), %rdi         # 8-byte Reload
	callq	*1192(%rdi)
	movzwl	408(%rsp), %edx
	movzwl	410(%rsp), %eax
	movl	%eax, %esi
	orl	%edx, %esi
	movw	412(%rsp), %cx
	orw	%cx, %si
	je	.LBB1_237
# BB#240:                               # %cleanup.i.829
	andl	%edx, %eax
	andl	%eax, %ecx
	movl	$1, %r14d
	movzwl	%cx, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movq	%r12, %r8
	jne	.LBB1_241
	jmp	.LBB1_238
.LBB1_237:                              # %cleanup.thread.i.825
	xorl	%r14d, %r14d
	movq	%r12, %r8
.LBB1_238:                              # %land.lhs.true.1126
	movq	24440(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	movq	%r13, %r12
	je	.LBB1_242
# BB#239:
	movl	%ebp, %eax
	movl	%r15d, %ebp
	movl	%eax, %r13d
	jmp	.LBB1_118
.LBB1_364:                              # %cleanup.2261
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gx_default_end_image
	movl	%ebp, %r14d
	jmp	.LBB1_365
.LBB1_367:                              # %cleanup.2239
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gx_default_end_image
	movl	$-25, %r14d
	jmp	.LBB1_365
.LBB1_242:                              # %if.then.i.846
	movq	%r12, %r13
	movq	%r8, %r12
	movq	8(%rax), %rsi
	leaq	408(%rsp), %rdx
	movq	336(%rsp), %rdi         # 8-byte Reload
	callq	*1192(%rdi)
	movzwl	408(%rsp), %edx
	movzwl	410(%rsp), %eax
	movl	%eax, %esi
	orl	%edx, %esi
	movw	412(%rsp), %cx
	orw	%cx, %si
	je	.LBB1_243
# BB#244:                               # %cleanup.i.851
	andl	%edx, %eax
	andl	%eax, %ecx
	movl	$1, %eax
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movq	%r12, %r8
	je	.LBB1_245
.LBB1_241:
	movl	$1, 316(%rsp)           # 4-byte Folded Spill
.LBB1_246:
	movl	%ebp, %eax
	movl	%r15d, %ebp
	movq	%r13, %r12
	movl	%eax, %r13d
	jmp	.LBB1_118
.LBB1_243:                              # %cleanup.thread.i.847
	xorl	%eax, %eax
	movq	%r12, %r8
.LBB1_245:                              # %color_draws_b_w.exit854
	movl	%r14d, %ecx
	xorl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_246
# BB#247:                               # %if.then.1132
	movq	%r8, %r12
	movl	%ebp, 240(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	je	.LBB1_248
# BB#249:                               # %if.then.1134
	movq	24432(%rbx), %rbp
	leaq	408(%rsp), %r14
	movl	$656, %edx              # imm = 0x290
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	24440(%rbx), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	%rbp, %rdi
	callq	memcpy
	movq	24440(%rbx), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	%r14, %rsi
	callq	memcpy
	movl	240(%rsp), %edx         # 4-byte Reload
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$51, %eax
	movl	%edx, %ecx
	andl	$51, %ecx
	shll	$2, %ecx
	andl	$-256, %edx
	orl	%ecx, %edx
	orl	%eax, %edx
	jmp	.LBB1_250
.LBB1_248:
	movl	240(%rsp), %edx         # 4-byte Reload
.LBB1_250:                              # %if.end.1146
	movl	%r15d, %ebp
	cmpl	$186, %edx
	jg	.LBB1_256
# BB#251:                               # %if.end.1146
	cmpl	$34, %edx
	jne	.LBB1_252
# BB#259:                               # %sw.bb.1168
	movq	24432(%rbx), %rsi
	movq	24440(%rbx), %rdi
	movl	$656, %edx              # imm = 0x290
	callq	memcpy
	jmp	.LBB1_260
.LBB1_256:                              # %if.end.1146
	cmpl	$187, %edx
	je	.LBB1_254
# BB#257:                               # %if.end.1146
	cmpl	$238, %edx
	jne	.LBB1_258
.LBB1_260:                              # %sw.bb.1171
	leaq	1528(%rbx), %rdi
	movl	$lookup4x1to32_identity, %esi
	jmp	.LBB1_255
.LBB1_252:                              # %if.end.1146
	cmpl	$136, %edx
	jne	.LBB1_258
# BB#253:                               # %sw.bb.1147
	movq	24432(%rbx), %rsi
	movq	24440(%rbx), %rdi
	movl	$656, %edx              # imm = 0x290
	callq	memcpy
.LBB1_254:                              # %sw.bb.1150
	leaq	1528(%rbx), %rdi
	movl	$lookup4x1to32_inverted, %esi
.LBB1_255:                              # %rmask
	movl	$64, %edx
	callq	memcpy
	movb	$1, 1118(%rbx)
	movq	24432(%rbx), %rax
	movq	$-1, 8(%rax)
	movq	$gx_dc_type_data_pure, (%rax)
	movl	$0, 360(%rax)
	movl	$0, 1852(%rbx)
	movl	$1, 316(%rsp)           # 4-byte Folded Spill
	movl	$1, 332(%rsp)           # 4-byte Folded Spill
	movq	%r12, %r8
	movq	%r13, %r12
	movl	$240, %r13d
	jmp	.LBB1_118
.LBB1_258:
	movq	%r12, %r8
	movq	%r13, %r12
	movl	%edx, %r13d
	jmp	.LBB1_118
.Lfunc_end1:
	.size	gx_image_enum_begin, .Lfunc_end1-gx_image_enum_begin
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1132396544              # float 255
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.zero	16,1
.LCPI2_2:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI2_3:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
.LCPI2_4:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
.LCPI2_5:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	14                      # 0xe
	.byte	15                      # 0xf
.LCPI2_6:
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	18                      # 0x12
	.byte	19                      # 0x13
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	22                      # 0x16
	.byte	23                      # 0x17
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
	.text
	.globl	image_init_color_cache
	.align	16, 0x90
	.type	image_init_color_cache,@function
image_init_color_cache:                 # @image_init_color_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp28:
	.cfi_def_cfa_offset 512
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movq	%rdi, %r14
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movq	16(%r14), %rax
	movslq	100(%rax), %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movl	$1, %ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	movl	24792(%r14), %r15d
	movl	24804(%r14), %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movq	1224(%r14), %rdi
	callq	gs_color_space_get_index
	movq	24448(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB2_1
# BB#2:                                 # %if.end
	cmpl	$10, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.7
	movl	%eax, %r13d
	movq	1224(%r14), %rax
	movq	40(%rax), %rdi
	callq	gs_color_space_num_components
	movl	%eax, 200(%rsp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_1:                                # %if.then
	movl	$.L__func__.image_init_color_cache, %edi
	movl	$.L.str.2, %esi
	movl	$1017, %edx             # imm = 0x3F9
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB2_145
.LBB2_4:                                # %if.else
	movl	216(%rsp), %ecx         # 4-byte Reload
	orl	%r15d, %ecx
	movl	$1, 200(%rsp)           # 4-byte Folded Spill
	movl	%eax, %r13d
	jne	.LBB2_6
# BB#5:                                 # %if.else
	movl	116(%rdx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB2_145
.LBB2_6:                                # %if.end.17
	movq	24(%r14), %rdi
	movl	$st_color_cache, %esi
	movl	$.L__func__.image_init_color_cache, %edx
	callq	*72(%rdi)
	movq	%rax, 24456(%r14)
	movq	24(%r14), %rdi
	movl	%ebx, %esi
	movb	%r12b, %cl
	shll	%cl, %esi
	movl	%esi, 176(%rsp)         # 4-byte Spill
	movl	$.L__func__.image_init_color_cache, %edx
	callq	*64(%rdi)
	movq	24456(%r14), %rcx
	movq	%rax, 8(%rcx)
	movq	24(%r14), %rdi
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movslq	%ebp, %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %rbp
	movl	$.L__func__.image_init_color_cache, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	24456(%r14), %rcx
	movq	%rax, (%rcx)
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memset
	movl	$1, 192(%rsp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	je	.LBB2_10
# BB#7:                                 # %if.then.43
	cmpl	$2, 1852(%r14)
	jne	.LBB2_10
# BB#8:                                 # %if.then.i
	movq	1224(%r14), %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	jne	.LBB2_10
# BB#9:                                 # %lor.lhs.false.i
	movq	1224(%r14), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
.LBB2_10:                               # %if.end.45
	movq	24448(%r14), %rax
	cmpl	$0, 116(%rax)
	je	.LBB2_51
# BB#11:                                # %if.then.49
	movl	216(%rsp), %eax         # 4-byte Reload
	orl	%r15d, %eax
	je	.LBB2_16
# BB#12:                                # %for.cond.preheader
	xorl	%eax, %eax
	cmpl	$31, %r12d
	je	.LBB2_145
# BB#13:                                # %for.body.lr.ph
	leal	-1(%rbx), %ecx
	incq	%rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rcx, %r12
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %r12
	leaq	-16(%r12), %rdx
	shrq	$4, %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	addq	$8, %rax
	andq	%rcx, %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	andl	$1, %edx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	leal	-1(%rbx), %eax
	incq	%rax
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_38 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_49 Depth 2
	testl	%r15d, %r15d
	je	.LBB2_15
# BB#19:                                # %if.then.56
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	1852(%r14), %eax
	testl	%eax, %eax
	je	.LBB2_20
# BB#21:                                # %if.then.56
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$2, %eax
	jne	.LBB2_22
# BB#24:                                # %sw.bb.11.i
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$0, 192(%rsp)           # 4-byte Folded Reload
	movzbl	%bpl, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	1848(%r14), %xmm0
	addss	1784(%r14), %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB2_26
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_14 Depth=1
	movb	%bpl, %al
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_14 Depth=1
	movb	%bpl, %al
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_22:                               # %if.then.56
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_27
# BB#23:                                # %sw.bb.1.i
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	%rbp, %rax
	shrq	$2, %rax
	andl	$60, %eax
	movss	1784(%r14,%rax), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB2_25:                               # %sw.bb.11.i
                                        #   in Loop: Header=BB2_14 Depth=1
	mulss	%xmm1, %xmm0
.LBB2_26:                               # %sw.bb.11.i
                                        #   in Loop: Header=BB2_14 Depth=1
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	maxss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.LBB2_28
.LBB2_27:                               # %sw.default.i
                                        #   in Loop: Header=BB2_14 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_28:                               # %if.end.60
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$10, %r13d
	jne	.LBB2_30
# BB#29:                                # %if.then.62
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	1224(%r14), %rdi
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	leaq	448(%rsp), %rsi
	callq	gs_cspace_indexed_lookup_bytes
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_30:                               # %if.else.66
                                        #   in Loop: Header=BB2_14 Depth=1
	movb	%al, 448(%rsp)
.LBB2_31:                               # %if.end.67
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	je	.LBB2_50
# BB#32:                                # %for.cond.70.preheader
                                        #   in Loop: Header=BB2_14 Depth=1
	testl	%ebx, %ebx
	movdqa	.LCPI2_1(%rip), %xmm3   # xmm3 = [257,257,257,257,257,257,257,257]
	jle	.LBB2_146
# BB#33:                                # %overflow.checked310
                                        #   in Loop: Header=BB2_14 Depth=1
	testq	%r12, %r12
	movl	$0, %esi
	pxor	%xmm2, %xmm2
	je	.LBB2_40
# BB#34:                                # %vector.body306.preheader
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB2_36
# BB#35:                                # %vector.body306.prol
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	448(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	456(%rsp), %xmm1        # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, 240(%rsp)
	movdqa	%xmm1, 256(%rsp)
	movl	$16, %edx
.LBB2_36:                               # %vector.body306.preheader.split
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	movq	%r12, %rsi
	je	.LBB2_40
# BB#37:                                # %vector.body306.preheader.split.split
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	%r12, %rax
	subq	%rdx, %rax
	leaq	472(%rsp), %rcx
	leaq	(%rcx,%rdx), %rcx
	leaq	288(%rsp), %rsi
	leaq	(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB2_38:                               # %vector.body306
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rcx), %xmm1        # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, -48(%rdx)
	movdqa	%xmm1, -32(%rdx)
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$32, %rcx
	addq	$64, %rdx
	addq	$-32, %rax
	jne	.LBB2_38
# BB#39:                                #   in Loop: Header=BB2_14 Depth=1
	movq	%r12, %rsi
.LBB2_40:                               # %middle.block307
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpq	%rsi, 200(%rsp)         # 8-byte Folded Reload
	je	.LBB2_43
# BB#41:                                # %for.body.73.preheader
                                        #   in Loop: Header=BB2_14 Depth=1
	leaq	448(%rsp,%rsi), %rax
	leaq	240(%rsp,%rsi,2), %rcx
	movl	%ebx, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB2_42:                               # %for.body.73
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movw	%si, (%rcx)
	incq	%rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB2_42
.LBB2_43:                               # %for.end
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	1216(%r14), %rsi
	movq	16(%r14), %rdx
	leaq	240(%rsp), %rdi
	callq	cmap_transfer
	testl	%ebx, %ebx
	jle	.LBB2_50
# BB#44:                                # %overflow.checked
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpq	$0, 184(%rsp)           # 8-byte Folded Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	452(%rsp), %rcx
	leaq	248(%rsp), %rdx
	movl	$0, %esi
	pxor	%xmm3, %xmm3
	movdqa	.LCPI2_2(%rip), %xmm4   # xmm4 = [65281,65281,65281,65281]
	movdqa	.LCPI2_3(%rip), %xmm5   # xmm5 = [8388608,8388608,8388608,8388608]
	movdqa	.LCPI2_4(%rip), %xmm6   # xmm6 = [255,255,255,255]
	je	.LBB2_47
	.align	16, 0x90
.LBB2_45:                               # %vector.body
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddd	%xmm5, %xmm0
	paddd	%xmm5, %xmm1
	psrld	$24, %xmm0
	psrld	$24, %xmm1
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%rcx)
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rcx)
	addq	$16, %rdx
	addq	$8, %rcx
	addq	$-8, %rax
	jne	.LBB2_45
# BB#46:                                #   in Loop: Header=BB2_14 Depth=1
	movq	184(%rsp), %rsi         # 8-byte Reload
.LBB2_47:                               # %middle.block
                                        #   in Loop: Header=BB2_14 Depth=1
	cmpq	%rsi, 200(%rsp)         # 8-byte Folded Reload
	je	.LBB2_50
# BB#48:                                # %for.body.88.preheader
                                        #   in Loop: Header=BB2_14 Depth=1
	leaq	240(%rsp,%rsi,2), %rax
	leaq	448(%rsp,%rsi), %rcx
	movl	%ebx, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB2_49:                               # %for.body.88
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB2_49
	jmp	.LBB2_50
	.align	16, 0x90
.LBB2_146:                              # %for.end.thread
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	1216(%r14), %rsi
	movq	16(%r14), %rdx
	leaq	240(%rsp), %rdi
	callq	cmap_transfer
.LBB2_50:                               # %if.end.102
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	%rbp, %rdi
	imulq	%rbx, %rdi
	movq	24456(%r14), %rax
	addq	8(%rax), %rdi
	leaq	448(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	incq	%rbp
	xorl	%eax, %eax
	cmpq	224(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB2_14
	jmp	.LBB2_145
.LBB2_51:                               # %if.else.135
	movq	24(%r14), %rdi
	movl	200(%rsp), %esi         # 4-byte Reload
	movb	%r12b, %cl
	shll	%cl, %esi
	movl	%esi, 168(%rsp)         # 4-byte Spill
	movl	$.L__func__.image_init_color_cache, %edx
	callq	*64(%rdi)
	testl	%r15d, %r15d
	je	.LBB2_81
# BB#52:                                # %if.then.143
	cmpl	$10, %r13d
	jne	.LBB2_53
# BB#55:                                # %for.cond.146.preheader
	cmpl	$31, %r12d
	je	.LBB2_54
# BB#56:                                # %for.body.149.lr.ph
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	movq	%rbx, %r13
	movslq	200(%rsp), %rbp         # 4-byte Folded Reload
	xorl	%ebx, %ebx
	leaq	448(%rsp), %r12
	movq	%rax, %r15
	movq	%rax, 64(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_57:                               # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movl	1852(%r14), %eax
	cmpl	$2, %eax
	je	.LBB2_62
# BB#58:                                # %for.body.149
                                        #   in Loop: Header=BB2_57 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_59
# BB#63:                                # %sw.bb.1.i.176
                                        #   in Loop: Header=BB2_57 Depth=1
	movq	%rbx, %rax
	shrq	$2, %rax
	andl	$60, %eax
	movss	1784(%r14,%rax), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB2_64
	.align	16, 0x90
.LBB2_62:                               # %sw.bb.11.i.190
                                        #   in Loop: Header=BB2_57 Depth=1
	cmpl	$0, 192(%rsp)           # 4-byte Folded Reload
	movzbl	%bl, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	1848(%r14), %xmm0
	addss	1784(%r14), %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB2_65
.LBB2_64:                               # %sw.bb.11.i.190
                                        #   in Loop: Header=BB2_57 Depth=1
	mulss	%xmm1, %xmm0
.LBB2_65:                               # %sw.bb.11.i.190
                                        #   in Loop: Header=BB2_57 Depth=1
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	maxss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_59:                               # %for.body.149
                                        #   in Loop: Header=BB2_57 Depth=1
	testl	%eax, %eax
	jne	.LBB2_60
# BB#61:                                # %for.body.149.image_cache_decode.exit192_crit_edge
                                        #   in Loop: Header=BB2_57 Depth=1
	movb	%bl, %al
	jmp	.LBB2_66
.LBB2_60:                               #   in Loop: Header=BB2_57 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_66:                               # %image_cache_decode.exit192
                                        #   in Loop: Header=BB2_57 Depth=1
	movq	1224(%r14), %rdi
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movq	%r12, %rsi
	callq	gs_cspace_indexed_lookup_bytes
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	incq	%rbx
	addq	%rbp, %r15
	cmpq	224(%rsp), %rbx         # 8-byte Folded Reload
	jl	.LBB2_57
# BB#67:
	movq	%r13, %rbx
	jmp	.LBB2_68
.LBB2_16:                               # %for.cond.115.preheader
	xorl	%eax, %eax
	cmpl	$31, %r12d
	je	.LBB2_145
# BB#17:                                # %for.body.118.lr.ph
	movq	%r14, %r15
	leaq	448(%rsp), %r14
	movq	%rbx, %r12
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	224(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB2_18:                               # %for.body.118
                                        # =>This Inner Loop Header: Depth=1
	movq	1224(%r15), %rdi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movq	%r14, %rsi
	callq	gs_cspace_indexed_lookup_bytes
	movq	24456(%r15), %rax
	movq	8(%rax), %rdi
	addq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	incq	%rbp
	addq	%r12, %rbx
	cmpq	%r13, %rbp
	jl	.LBB2_18
	jmp	.LBB2_144
.LBB2_81:                               # %if.else.176
	cmpl	$10, %r13d
	jne	.LBB2_82
# BB#94:                                # %if.then.178
	movq	1224(%r14), %rdi
	cmpl	$0, 96(%rdi)
	movl	72(%rdi), %edx
	movq	184(%rsp), %rbp         # 8-byte Reload
	jne	.LBB2_96
# BB#95:                                # %if.then.178
	leal	-1(%rbp), %ecx
	cmpl	%ecx, %edx
	jl	.LBB2_96
# BB#105:                               # %if.else.222
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movq	24(%r14), %rdi
	movl	$.L__func__.image_init_color_cache, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	1224(%r14), %rax
	movq	80(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	jmp	.LBB2_69
.LBB2_53:                               # %for.cond.165.preheader
	cmpl	$31, %r12d
	jne	.LBB2_70
.LBB2_54:
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB2_68
.LBB2_82:                               # %for.cond.231.preheader
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	cmpl	$31, %r12d
	movq	224(%rsp), %rbp         # 8-byte Reload
	je	.LBB2_83
# BB#85:                                # %for.body.234.preheader
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	testq	%rbp, %rbp
	movl	$1, %r8d
	cmovgq	%rbp, %r8
	xorl	%edx, %edx
	movq	%r8, %rcx
	andq	$-32, %rcx
	je	.LBB2_92
# BB#86:                                # %vector.body332.preheader
	testq	%rbp, %rbp
	movl	$1, %edi
	cmovgq	%rbp, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rsi
	shrq	$5, %rsi
	xorl	%edx, %edx
	btq	$5, %rdi
	jb	.LBB2_88
# BB#87:                                # %vector.body332.prol
	movaps	.LCPI2_5(%rip), %xmm0   # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movups	%xmm0, (%rax)
	movdqa	.LCPI2_6(%rip), %xmm0   # xmm0 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	movdqu	%xmm0, 16(%rax)
	movl	$32, %edx
.LBB2_88:                               # %vector.body332.preheader.split
	testq	%rsi, %rsi
	je	.LBB2_91
# BB#89:                                # %vector.body332.preheader.split.split
	movdqa	.LCPI2_5(%rip), %xmm0   # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movdqa	.LCPI2_6(%rip), %xmm1   # xmm1 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	.align	16, 0x90
.LBB2_90:                               # %vector.body332
                                        # =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm2
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm2, %xmm2      # xmm2 = xmm2[0,1,0,3]
	pshuflw	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,1,2,3,4,4,4,4]
	movdqa	%xmm2, %xmm3
	paddb	%xmm0, %xmm3
	paddb	%xmm1, %xmm2
	movdqu	%xmm3, (%rax,%rdx)
	movdqu	%xmm2, 16(%rax,%rdx)
	leal	32(%rdx), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm2, %xmm2      # xmm2 = xmm2[0,1,0,3]
	pshuflw	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,1,2,3,4,4,4,4]
	movdqa	%xmm2, %xmm3
	paddb	%xmm0, %xmm3
	paddb	%xmm1, %xmm2
	movdqu	%xmm3, 32(%rax,%rdx)
	movdqu	%xmm2, 48(%rax,%rdx)
	addq	$64, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB2_90
.LBB2_91:
	movq	%rcx, %rdx
.LBB2_92:                               # %middle.block333
	cmpq	%rdx, %r8
	movl	176(%rsp), %r12d        # 4-byte Reload
	jne	.LBB2_106
# BB#93:
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	184(%rsp), %rbp         # 8-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB2_109
.LBB2_70:                               # %for.body.168.lr.ph
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	xorl	%edx, %edx
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	192(%rsp), %esi         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB2_71:                               # %for.body.168
                                        # =>This Inner Loop Header: Depth=1
	movl	1852(%r14), %ecx
	cmpl	$2, %ecx
	je	.LBB2_76
# BB#72:                                # %for.body.168
                                        #   in Loop: Header=BB2_71 Depth=1
	cmpl	$1, %ecx
	jne	.LBB2_73
# BB#75:                                # %sw.bb.1.i.204
                                        #   in Loop: Header=BB2_71 Depth=1
	movq	%rdx, %rcx
	shrq	$2, %rcx
	andl	$60, %ecx
	movss	1784(%r14,%rcx), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB2_77
	.align	16, 0x90
.LBB2_76:                               # %sw.bb.11.i.218
                                        #   in Loop: Header=BB2_71 Depth=1
	testl	%esi, %esi
	movzbl	%dl, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	1848(%r14), %xmm1
	addss	1784(%r14), %xmm1
	je	.LBB2_78
.LBB2_77:                               # %sw.bb.11.i.218
                                        #   in Loop: Header=BB2_71 Depth=1
	mulss	%xmm0, %xmm1
.LBB2_78:                               # %sw.bb.11.i.218
                                        #   in Loop: Header=BB2_71 Depth=1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ecx
	movb	%cl, (%rax,%rdx)
	jmp	.LBB2_80
	.align	16, 0x90
.LBB2_73:                               # %for.body.168
                                        #   in Loop: Header=BB2_71 Depth=1
	testl	%ecx, %ecx
	jne	.LBB2_79
# BB#74:                                # %sw.bb.i.194
                                        #   in Loop: Header=BB2_71 Depth=1
	movb	%dl, (%rax,%rdx)
	jmp	.LBB2_80
.LBB2_79:                               # %sw.default.i.219
                                        #   in Loop: Header=BB2_71 Depth=1
	movb	$0, (%rax,%rdx)
	.align	16, 0x90
.LBB2_80:                               # %image_cache_decode.exit220
                                        #   in Loop: Header=BB2_71 Depth=1
	incq	%rdx
	cmpq	%rdi, %rdx
	jl	.LBB2_71
.LBB2_83:
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB2_68:                               # %if.end.242
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB2_69:                               # %if.end.242
	movl	176(%rsp), %r12d        # 4-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
.LBB2_109:                              # %if.end.242
	movl	%ebp, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movl	200(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %esi
	leaq	408(%rsp), %r15
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	callq	gsicc_init_buffer
	movl	%ebp, 24(%rsp)
	movl	%r12d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%bl, %esi
	leaq	368(%rsp), %rbp
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	callq	gsicc_init_buffer
	movq	24448(%r14), %rsi
	movq	16(%r14), %rdi
	movq	24456(%r14), %rax
	movq	8(%rax), %r9
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movq	64(%rsp), %r8           # 8-byte Reload
	callq	*8(%rsi)
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	je	.LBB2_142
# BB#110:                               # %if.end.242
	cmpl	$31, 160(%rsp)          # 4-byte Folded Reload
	je	.LBB2_142
# BB#111:                               # %for.body.258.lr.ph
	leal	-1(%rbx), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	240(%rsp,%rax,2), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leal	-1(%rbx), %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rdx
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	leaq	240(%rsp,%rax,2), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leal	-1(%rbx), %esi
	incq	%rsi
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rsi
	addq	$-16, %rsi
	shrq	$4, %rsi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	leal	1(%rbx), %edi
	movl	%edi, 160(%rsp)         # 4-byte Spill
	leal	1(%rbx), %edi
	movl	%edi, 96(%rsp)          # 4-byte Spill
	andq	%rax, %rdx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	leaq	8(%rax), %rdx
	andq	%rcx, %rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	andl	$1, %esi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %edx
	incq	%rdx
	andq	%rax, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rcx, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	pxor	%xmm3, %xmm3
	movdqa	.LCPI2_1(%rip), %xmm7   # xmm7 = [257,257,257,257,257,257,257,257]
	xorl	%ebp, %ebp
	movl	$24, %r15d
	movl	$1, %r12d
	movl	$4, %r13d
	.align	16, 0x90
.LBB2_112:                              # %for.body.258
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_127 Depth 2
                                        #     Child Loop BB2_133 Depth 2
                                        #     Child Loop BB2_140 Depth 2
	testl	%ebx, %ebx
	jle	.LBB2_147
# BB#113:                               # %overflow.checked394
                                        #   in Loop: Header=BB2_112 Depth=1
	imulq	%rbp, %rbx
	movq	24456(%r14), %rax
	movq	%r14, %rdi
	movq	8(%rax), %r14
	leaq	(%r14,%rbx), %r8
	cmpq	$0, 216(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	je	.LBB2_122
# BB#114:                               # %vector.memcheck409
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rax
	leaq	(%rax,%r14), %rax
	leaq	240(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_116
# BB#115:                               # %vector.memcheck409
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	152(%rsp), %r8          # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB2_122
.LBB2_116:                              # %vector.body390.preheader
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB2_118
# BB#117:                               # %vector.body390.prol
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	(%r8), %xmm0            # xmm0 = mem[0],zero
	movq	8(%r8), %xmm1           # xmm1 = mem[0],zero
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	pmullw	%xmm7, %xmm0
	pmullw	%xmm7, %xmm1
	movdqa	%xmm0, 240(%rsp)
	movdqa	%xmm1, 256(%rsp)
	movl	$16, %edx
.LBB2_118:                              # %vector.body390.preheader.split
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	movq	216(%rsp), %rax         # 8-byte Reload
	je	.LBB2_122
# BB#119:                               # %vector.body390.preheader.split.split
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	subq	%rdx, %rax
	leaq	(%rdx,%r15), %rcx
	leaq	(%rcx,%r14), %rcx
	leaq	288(%rsp), %rsi
	leaq	(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB2_120:                              # %vector.body390
                                        #   Parent Loop BB2_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rcx), %xmm1        # xmm1 = mem[0],zero
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	pmullw	%xmm7, %xmm0
	pmullw	%xmm7, %xmm1
	movdqa	%xmm0, -48(%rdx)
	movdqa	%xmm1, -32(%rdx)
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	pmullw	%xmm7, %xmm0
	pmullw	%xmm7, %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$32, %rcx
	addq	$64, %rdx
	addq	$-32, %rax
	jne	.LBB2_120
# BB#121:                               #   in Loop: Header=BB2_112 Depth=1
	movq	216(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB2_122:                              # %middle.block391
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	cmpq	%rax, 192(%rsp)         # 8-byte Folded Reload
	je	.LBB2_128
# BB#123:                               # %for.body.267.preheader
                                        #   in Loop: Header=BB2_112 Depth=1
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	160(%rsp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB2_125
# BB#124:                               # %for.body.267.prol
                                        #   in Loop: Header=BB2_112 Depth=1
	movzbl	(%r8,%rax), %edx
	imull	$257, %edx, %edx        # imm = 0x101
	movw	%dx, 240(%rsp,%rax,2)
	orq	$1, %rax
.LBB2_125:                              # %for.body.267.preheader.split
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	232(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	je	.LBB2_128
# BB#126:                               # %for.body.267.preheader.split.split
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	232(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	(%rax,%r12), %rdx
	leaq	(%rdx,%r14), %rdx
	leaq	242(%rsp), %rsi
	leaq	(%rsi,%rax,2), %rax
	.align	16, 0x90
.LBB2_127:                              # %for.body.267
                                        #   Parent Loop BB2_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdx), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movw	%si, -2(%rax)
	movzbl	(%rdx), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movw	%si, (%rax)
	addq	$2, %rdx
	addq	$4, %rax
	addl	$-2, %ecx
	jne	.LBB2_127
.LBB2_128:                              # %for.end.282
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	1216(%rdi), %rsi
	movq	16(%rdi), %rdx
	leaq	240(%rsp), %rdi
	movq	%r8, %rbx
	callq	cmap_transfer
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	pxor	%xmm3, %xmm3
	movdqa	.LCPI2_2(%rip), %xmm0   # xmm0 = [65281,65281,65281,65281]
	movdqa	%xmm0, %xmm4
	movdqa	.LCPI2_3(%rip), %xmm0   # xmm0 = [8388608,8388608,8388608,8388608]
	movdqa	%xmm0, %xmm5
	movdqa	.LCPI2_4(%rip), %xmm0   # xmm0 = [255,255,255,255]
	movdqa	%xmm0, %xmm6
	movdqa	.LCPI2_1(%rip), %xmm7   # xmm7 = [257,257,257,257,257,257,257,257]
	jle	.LBB2_141
# BB#129:                               # %overflow.checked364
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	$0, 184(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	je	.LBB2_135
# BB#130:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	128(%rsp), %rbx         # 8-byte Folded Reload
	ja	.LBB2_132
# BB#131:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	leaq	(%rax,%r14), %rax
	leaq	240(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	jbe	.LBB2_135
.LBB2_132:                              # %vector.body360.preheader
                                        #   in Loop: Header=BB2_112 Depth=1
	leaq	(%r14,%r13), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	248(%rsp), %rdx
	.align	16, 0x90
.LBB2_133:                              # %vector.body360
                                        #   Parent Loop BB2_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddd	%xmm5, %xmm0
	paddd	%xmm5, %xmm1
	psrld	$24, %xmm0
	psrld	$24, %xmm1
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%rax)
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rax)
	addq	$16, %rdx
	addq	$8, %rax
	addq	$-8, %rcx
	jne	.LBB2_133
# BB#134:                               #   in Loop: Header=BB2_112 Depth=1
	movq	184(%rsp), %rax         # 8-byte Reload
.LBB2_135:                              # %middle.block361
                                        #   in Loop: Header=BB2_112 Depth=1
	cmpq	%rax, 176(%rsp)         # 8-byte Folded Reload
	je	.LBB2_141
# BB#136:                               # %for.body.289.preheader
                                        #   in Loop: Header=BB2_112 Depth=1
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	96(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB2_138
# BB#137:                               # %for.body.289.prol
                                        #   in Loop: Header=BB2_112 Depth=1
	movzwl	240(%rsp,%rax,2), %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	movb	%dl, (%rbx,%rax)
	orq	$1, %rax
.LBB2_138:                              # %for.body.289.preheader.split
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	232(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	cmpl	%ecx, %edx
	je	.LBB2_141
# BB#139:                               # %for.body.289.preheader.split.split
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	232(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	242(%rsp), %rdx
	leaq	(%rdx,%rax,2), %rdx
	addq	%r12, %rax
	addq	%rax, %r14
	.align	16, 0x90
.LBB2_140:                              # %for.body.289
                                        #   Parent Loop BB2_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rdx), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, -1(%r14)
	movzwl	(%rdx), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%r14)
	addq	$4, %rdx
	addq	$2, %r14
	addl	$-2, %ecx
	jne	.LBB2_140
	jmp	.LBB2_141
	.align	16, 0x90
.LBB2_147:                              # %for.end.282.thread
                                        #   in Loop: Header=BB2_112 Depth=1
	movq	1216(%r14), %rsi
	movq	16(%r14), %rdx
	leaq	240(%rsp), %rdi
	callq	cmap_transfer
	movdqa	.LCPI2_1(%rip), %xmm7   # xmm7 = [257,257,257,257,257,257,257,257]
	pxor	%xmm3, %xmm3
.LBB2_141:                              # %for.inc.303
                                        #   in Loop: Header=BB2_112 Depth=1
	incq	%rbp
	movq	232(%rsp), %rbx         # 8-byte Reload
	addq	%rbx, %r15
	addq	%rbx, %r12
	addq	%rbx, %r13
	cmpq	224(%rsp), %rbp         # 8-byte Folded Reload
	movq	208(%rsp), %r14         # 8-byte Reload
	jl	.LBB2_112
.LBB2_142:                              # %if.end.306
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB2_144
# BB#143:                               # %if.then.308
	movq	24(%r14), %rdi
	movl	$.L__func__.image_init_color_cache, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB2_144:                              # %cleanup
	xorl	%eax, %eax
.LBB2_145:                              # %cleanup
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_96:                               # %for.cond.188.preheader
	movq	%r14, %r13
	xorl	%r14d, %r14d
	testl	%edx, %edx
	js	.LBB2_100
# BB#97:                                # %for.body.195.lr.ph
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movslq	200(%rsp), %r12         # 4-byte Folded Reload
	xorl	%r14d, %r14d
	leaq	448(%rsp), %r15
	movq	%rax, %rbp
	movq	%rax, 64(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_98:                               # %for.body.195
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movq	%r15, %rsi
	callq	gs_cspace_indexed_lookup_bytes
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	1224(%r13), %rdi
	movslq	72(%rdi), %rax
	addq	%r12, %rbp
	cmpq	%rax, %r14
	leaq	1(%r14), %r14
	jl	.LBB2_98
# BB#99:                                # %for.cond.188.for.cond.209.preheader_crit_edge
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	160(%rsp), %r12d        # 4-byte Reload
.LBB2_100:                              # %for.cond.209.preheader
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	movq	184(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %r14d
	jge	.LBB2_101
# BB#102:                               # %for.body.212.lr.ph
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movslq	200(%rsp), %r15         # 4-byte Folded Reload
	movslq	%r14d, %rcx
	imulq	%r15, %rcx
	movq	%rax, %rbp
	movq	%rax, 64(%rsp)          # 8-byte Spill
	addq	%rcx, %rbp
	movl	%edx, %ebx
	subl	%r14d, %ebx
	leaq	448(%rsp), %r12
	.align	16, 0x90
.LBB2_103:                              # %for.body.212
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %rbp
	decl	%ebx
	jne	.LBB2_103
# BB#104:
	movq	%r13, %r14
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_68
.LBB2_106:
	movl	168(%rsp), %ecx         # 4-byte Reload
	.align	16, 0x90
.LBB2_107:                              # %for.body.234
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rax,%rdx)
	incq	%rdx
	cmpq	%rbp, %rdx
	jl	.LBB2_107
# BB#108:
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	184(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_109
.LBB2_101:
	movl	%r12d, 160(%rsp)        # 4-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	movq	%rdx, %rbp
	jmp	.LBB2_69
.Lfunc_end2:
	.size	image_init_color_cache, .Lfunc_end2-image_init_color_cache
	.cfi_endproc

	.globl	image_init_clues
	.align	16, 0x90
	.type	image_init_clues,@function
image_init_clues:                       # @image_init_clues
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %edx
	movl	$8, %eax
	cmovel	%esi, %eax
	cmpl	$8, %eax
	je	.LBB3_4
# BB#1:                                 # %entry
	cmpl	$4, %eax
	jne	.LBB3_2
# BB#7:                                 # %sw.bb.22
	movq	23112(%rdi), %rax
	movq	$gx_dc_type_data_none, 158032(%rax)
	movq	$gx_dc_type_data_none, 146744(%rax)
	movq	$gx_dc_type_data_none, 135456(%rax)
	movq	$gx_dc_type_data_none, 124168(%rax)
	movq	$gx_dc_type_data_none, 101592(%rax)
	movq	$gx_dc_type_data_none, 90304(%rax)
	movq	$gx_dc_type_data_none, 79016(%rax)
	movq	$gx_dc_type_data_none, 67728(%rax)
	movq	$gx_dc_type_data_none, 45152(%rax)
	movq	$gx_dc_type_data_none, 33864(%rax)
	movq	$gx_dc_type_data_none, 22576(%rax)
	movq	$gx_dc_type_data_none, 11288(%rax)
	jmp	.LBB3_8
.LBB3_4:                                # %sw.bb
	movq	23112(%rdi), %rax
	movl	$65, %ecx
	movq	%rax, %rdx
	.align	16, 0x90
.LBB3_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$gx_dc_type_data_none, 1992(%rdx)
	movq	$gx_dc_type_data_none, 1328(%rdx)
	movq	$gx_dc_type_data_none, 664(%rdx)
	movq	$gx_dc_type_data_none, (%rdx)
	movl	$0, 2648(%rdx)
	movl	$0, 1984(%rdx)
	movl	$0, 1320(%rdx)
	movl	$0, 656(%rdx)
	movq	$gx_dc_type_data_none, 4648(%rdx)
	movq	$gx_dc_type_data_none, 3984(%rdx)
	movq	$gx_dc_type_data_none, 3320(%rdx)
	movq	$gx_dc_type_data_none, 2656(%rdx)
	movl	$0, 5304(%rdx)
	movl	$0, 4640(%rdx)
	movl	$0, 3976(%rdx)
	movl	$0, 3312(%rdx)
	addq	$5312, %rdx             # imm = 0x14C0
	addl	$-2, %ecx
	cmpl	$1, %ecx
	jg	.LBB3_5
# BB#6:                                 # %do.end
	movl	$1, 656(%rax)
	retq
.LBB3_2:                                # %entry
	cmpl	$2, %eax
	jne	.LBB3_9
# BB#3:                                 # %entry.sw.bb.71_crit_edge
	movq	23112(%rdi), %rax
.LBB3_8:                                # %sw.bb.71
	movq	$gx_dc_type_data_none, 112880(%rax)
	movq	$gx_dc_type_data_none, 56440(%rax)
.LBB3_9:                                # %sw.epilog
	retq
.Lfunc_end3:
	.size	image_init_clues, .Lfunc_end3-image_init_clues
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	3212836864              # float -1
.LCPI4_5:
	.long	1132396544              # float 255
.LCPI4_6:
	.long	1199570688              # float 65535
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_2:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI4_3:
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
.LCPI4_4:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	image_init_map
	.align	16, 0x90
	.type	image_init_map,@function
image_init_map:                         # @image_init_map
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
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movss	(%rdx), %xmm9           # xmm9 = mem[0],zero,zero,zero
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	%xmm9, %xmm1
	ucomiss	.LCPI4_0(%rip), %xmm1
	jne	.LBB4_1
	jnp	.LBB4_14
.LBB4_1:                                # %entry
	ucomiss	.LCPI4_1(%rip), %xmm1
	jne	.LBB4_2
	jnp	.LBB4_14
.LBB4_2:                                # %for.cond.11.preheader
	testl	%esi, %esi
	jle	.LBB4_22
# BB#3:                                 # %for.body.14.lr.ph
	leal	-1(%rsi), %ecx
	cvtsi2ssl	%ecx, %xmm8
	leaq	1(%rcx), %rbx
	xorl	%edx, %edx
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	movq	%rbx, %rax
	andq	%r8, %rax
	je	.LBB4_7
# BB#4:                                 # %vector.ph
	movaps	%xmm1, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm8, %xmm4
	shufps	$0, %xmm4, %xmm4        # xmm4 = xmm4[0,0,0,0]
	movaps	%xmm9, %xmm5
	shufps	$0, %xmm5, %xmm5        # xmm5 = xmm5[0,0,0,0]
	incq	%rcx
	andq	%r8, %rcx
	xorl	%edx, %edx
	movdqa	.LCPI4_2(%rip), %xmm10  # xmm10 = [0,1,2,3]
	movaps	.LCPI4_3(%rip), %xmm11  # xmm11 = [2.550000e+02,2.550000e+02,2.550000e+02,2.550000e+02]
	movdqa	.LCPI4_4(%rip), %xmm7   # xmm7 = [255,255,255,255]
	.align	16, 0x90
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	paddd	%xmm10, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	mulps	%xmm3, %xmm0
	divps	%xmm4, %xmm0
	addps	%xmm5, %xmm0
	mulps	%xmm11, %xmm0
	cvttps2dq	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pcmpgtd	%xmm7, %xmm0
	movdqa	%xmm7, %xmm2
	pand	%xmm0, %xmm2
	pandn	%xmm6, %xmm0
	por	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pandn	%xmm0, %xmm2
	pand	%xmm7, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdi,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB4_5
# BB#6:
	movq	%rax, %rdx
.LBB4_7:                                # %middle.block
	cmpq	%rdx, %rbx
	je	.LBB4_22
# BB#8:                                 # %for.body.14.preheader
	movl	%esi, %eax
	movss	.LCPI4_5(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB4_9:                                # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	divss	%xmm8, %xmm0
	addss	%xmm9, %xmm0
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %esi
	cmpl	$255, %esi
	movb	$-1, %cl
	jg	.LBB4_11
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB4_9 Depth=1
	movb	%sil, %cl
.LBB4_11:                               # %for.body.14
                                        #   in Loop: Header=BB4_9 Depth=1
	testl	%esi, %esi
	jns	.LBB4_13
# BB#12:                                #   in Loop: Header=BB4_9 Depth=1
	xorl	%ecx, %ecx
.LBB4_13:                               # %for.body.14
                                        #   in Loop: Header=BB4_9 Depth=1
	movb	%cl, (%rdi,%rdx)
	incq	%rdx
	cmpl	%edx, %eax
	jne	.LBB4_9
	jmp	.LBB4_22
.LBB4_14:                               # %if.then
	leal	-1(%rsi), %eax
	movslq	%eax, %rcx
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	idivq	%rcx
	testl	%esi, %esi
	je	.LBB4_22
# BB#15:                                # %for.body.lr.ph
	movslq	%esi, %rbx
	cvtsi2ssq	%rax, %xmm0
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r15d
	mulss	.LCPI4_6(%rip), %xmm9
	cvttss2si	%xmm9, %rcx
	leaq	-1(%rbx), %r8
	testb	$7, %bl
	je	.LBB4_16
# BB#17:                                # %for.body.prol.preheader
	andl	$7, %esi
	negq	%rsi
	movq	%rdi, %rdx
	.align	16, 0x90
.LBB4_18:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	%ch, (%rdx)  # NOREX
	incq	%rdx
	addl	%r15d, %ecx
	incq	%rsi
	jne	.LBB4_18
	jmp	.LBB4_19
.LBB4_16:
	movq	%rdi, %rdx
.LBB4_19:                               # %for.body.lr.ph.split
	cmpq	$7, %r8
	jb	.LBB4_22
# BB#20:                                # %for.body.lr.ph.split.split
	addq	%rbx, %rdi
	imull	$7, %r15d, %r8d
	leal	(%r15,%r15), %r10d
	leal	(%r10,%r10,2), %r9d
	leal	(%r15,%r15,4), %r11d
	leal	(,%r15,4), %r14d
	leal	(%r15,%r15,2), %esi
	.align	16, 0x90
.LBB4_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%ch, (%rdx)  # NOREX
	leal	(%rcx,%r15), %ebx
	movb	%bh, 1(%rdx)  # NOREX
	leal	(%r10,%rcx), %eax
	movb	%ah, 2(%rdx)  # NOREX
	leal	(%rsi,%rcx), %eax
	movb	%ah, 3(%rdx)  # NOREX
	leal	(%r14,%rcx), %eax
	movb	%ah, 4(%rdx)  # NOREX
	leal	(%r11,%rcx), %eax
	movb	%ah, 5(%rdx)  # NOREX
	leal	(%r9,%rcx), %eax
	movb	%ah, 6(%rdx)  # NOREX
	leal	(%rcx,%r8), %eax
	movb	%ah, 7(%rdx)  # NOREX
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addl	%r15d, %ebx
	addq	$8, %rdx
	cmpq	%rdi, %rdx
	movl	%ebx, %ecx
	jne	.LBB4_21
.LBB4_22:                               # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	image_init_map, .Lfunc_end4-image_init_map
	.cfi_endproc

	.globl	gx_image_scale_mask_colors
	.align	16, 0x90
	.type	gx_image_scale_mask_colors,@function
gx_image_scale_mask_colors:             # @gx_image_scale_mask_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movb	576(%rdi), %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	decl	%r8d
	movl	$255, %eax
	xorl	%edx, %edx
	idivl	%r8d
	leal	(%rsi,%rsi), %ecx
	movslq	%ecx, %rcx
	movl	584(%rdi,%rcx,4), %edx
	imull	%eax, %edx
	movl	%edx, 584(%rdi,%rcx,4)
	imull	588(%rdi,%rcx,4), %eax
	movl	%eax, 588(%rdi,%rcx,4)
	movslq	%esi, %rsi
	imulq	$332, %rsi, %rsi        # imm = 0x14C
	cmpl	$0, 1852(%rdi,%rsi)
	jne	.LBB5_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 1856(%rdi,%rsi)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movl	$255, %r8d
	movl	$255, %esi
	subl	%eax, %esi
	movl	%esi, 584(%rdi,%rcx,4)
	subl	%edx, %r8d
	movl	%r8d, 588(%rdi,%rcx,4)
.LBB5_3:                                # %if.end
	retq
.Lfunc_end5:
	.size	gx_image_scale_mask_colors, .Lfunc_end5-gx_image_scale_mask_colors
	.cfi_endproc

	.globl	gx_has_transfer
	.align	16, 0x90
	.type	gx_has_transfer,@function
gx_has_transfer:                        # @gx_has_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	.LBB6_4
# BB#1:                                 # %for.body.lr.ph
	movslq	%esi, %rcx
	xorl	%edx, %edx
	movl	$gs_identity_transfer, %esi
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	496(%rdi,%rdx,8), %rax
	cmpq	%rsi, 24(%rax)
	movl	$1, %eax
	jne	.LBB6_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=1
	incq	%rdx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jl	.LBB6_3
.LBB6_4:                                # %cleanup
	retq
.Lfunc_end6:
	.size	gx_has_transfer, .Lfunc_end6-gx_has_transfer
	.cfi_endproc

	.align	16, 0x90
	.type	image_enum_enum_ptrs,@function
image_enum_enum_ptrs:                   # @image_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movl	%ecx, %ebx
	movl	%ebx, %eax
	cmpl	$12, %ebx
	jbe	.LBB7_1
# BB#2:                                 # %sw.default
	addl	$-13, %ebx
	movzbl	579(%rsi), %r9d
	movl	$8, %ecx
	cmpl	$1, %r9d
	jne	.LBB7_6
# BB#3:                                 # %if.else
	movzbl	577(%rsi), %ecx
	cmpl	$8, %ecx
	ja	.LBB7_5
# BB#4:                                 # %lor.lhs.false
	movl	$sample_unpack_copy, %eax
	cmpq	%rax, 1200(%rsi)
	jne	.LBB7_6
.LBB7_5:                                # %if.then.7
	movl	$1, %ecx
.LBB7_6:                                # %if.end.8
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	$3, %edx
	shll	%cl, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ebx
	jge	.LBB7_27
# BB#7:                                 # %if.end.12
	movzbl	%r9b, %eax
	cmpl	$1, %eax
	jne	.LBB7_11
# BB#8:                                 # %if.then.17
	movq	23112(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_11
# BB#9:                                 # %if.then.20
	movslq	%ebx, %rax
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %r9
	shrq	$63, %r9
	shrq	$32, %rcx
	leal	(%rcx,%r9), %r10d
	decl	%r8d
	movl	$255, %eax
	xorl	%edx, %edx
	idivl	%r8d
	imull	%r10d, %eax
	cltq
	imulq	$664, %rax, %rax        # imm = 0x298
	cmpq	$0, (%rsi,%rax)
	je	.LBB7_11
# BB#10:                                # %if.end.43
	movq	32(%rsp), %rdx
	addq	%rax, %rsi
	addl	%r9d, %ecx
	leal	(%rcx,%rcx,2), %eax
	subl	%eax, %ebx
	movq	%rdx, (%rsp)
	movl	$656, %edx              # imm = 0x290
	movl	$st_device_color, %r9d
	movl	%ebx, %ecx
	movq	%r14, %r8
	callq	*st_device_color+32(%rip)
	testq	%rax, %rax
	jne	.LBB7_27
.LBB7_11:                               # %if.then.46
	movq	$0, (%r14)
	jmp	.LBB7_26
.LBB7_1:                                # %entry
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_12:                               # %sw.bb
	movq	1216(%rsi), %rax
	jmp	.LBB7_25
.LBB7_13:                               # %sw.bb.50
	movq	1224(%rsi), %rax
	jmp	.LBB7_25
.LBB7_14:                               # %sw.bb.52
	movq	16(%rsi), %rax
	jmp	.LBB7_25
.LBB7_15:                               # %sw.bb.54
	movq	1232(%rsi), %rax
	jmp	.LBB7_25
.LBB7_16:                               # %sw.bb.56
	movq	1248(%rsi), %rax
	jmp	.LBB7_25
.LBB7_17:                               # %sw.bb.58
	movq	1320(%rsi), %rax
	jmp	.LBB7_25
.LBB7_18:                               # %sw.bb.60
	movq	1328(%rsi), %rax
	jmp	.LBB7_25
.LBB7_19:                               # %sw.bb.62
	movq	1336(%rsi), %rax
	jmp	.LBB7_25
.LBB7_20:                               # %sw.bb.64
	movq	24448(%rsi), %rax
	jmp	.LBB7_25
.LBB7_21:                               # %sw.bb.66
	movq	24456(%rsi), %rax
	jmp	.LBB7_25
.LBB7_22:                               # %sw.bb.68
	movq	24464(%rsi), %rax
	jmp	.LBB7_25
.LBB7_23:                               # %sw.bb.70
	movq	24488(%rsi), %rax
	jmp	.LBB7_25
.LBB7_24:                               # %sw.bb.72
	movq	23112(%rsi), %rax
.LBB7_25:                               # %cleanup.75
	movq	%rax, (%r14)
.LBB7_26:                               # %cleanup.75
	movl	$ptr_struct_procs, %eax
.LBB7_27:                               # %cleanup.75
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	image_enum_enum_ptrs, .Lfunc_end7-image_enum_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_12
	.quad	.LBB7_13
	.quad	.LBB7_14
	.quad	.LBB7_15
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_20
	.quad	.LBB7_21
	.quad	.LBB7_22
	.quad	.LBB7_23
	.quad	.LBB7_24

	.text
	.align	16, 0x90
	.type	image_enum_reloc_ptrs,@function
image_enum_reloc_ptrs:                  # @image_enum_reloc_ptrs
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
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdi, %r12
	movq	(%r14), %rax
	movq	1216(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1216(%r12)
	movq	(%r14), %rax
	movq	1224(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1224(%r12)
	movq	(%r14), %rax
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 16(%r12)
	movq	(%r14), %rax
	movq	1232(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1232(%r12)
	movq	(%r14), %rax
	movq	1248(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1248(%r12)
	movq	(%r14), %rax
	movq	1320(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1320(%r12)
	movq	(%r14), %rax
	movq	1328(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1328(%r12)
	movq	(%r14), %rax
	movq	1336(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1336(%r12)
	movq	(%r14), %rax
	movq	24448(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24448(%r12)
	movq	(%r14), %rax
	movq	24456(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24456(%r12)
	movq	(%r14), %rax
	movq	24464(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24464(%r12)
	movq	(%r14), %rax
	movq	24488(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24488(%r12)
	movq	(%r14), %rax
	movq	23112(%r12), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 23112(%r12)
	movzbl	579(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB8_6
# BB#1:                                 # %if.else
	movzbl	577(%r12), %ecx
	cmpl	$8, %ecx
	ja	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	movl	$sample_unpack_copy, %eax
	cmpq	%rax, 1200(%r12)
	jne	.LBB8_4
.LBB8_3:                                # %if.then.44
	movl	$1, %ecx
.LBB8_4:                                # %for.cond.preheader
	movq	st_device_color+40(%rip), %r15
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	movl	$255, %eax
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, %ebp
	movl	$656, %esi              # imm = 0x290
	movl	$st_device_color, %edx
	movq	%r14, %rcx
	callq	*%r15
	movl	%ebp, %ebx
	.align	16, 0x90
.LBB8_5:                                # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	imulq	$664, %rbx, %rdi        # imm = 0x298
	addq	23112(%r12), %rdi
	movl	$656, %esi              # imm = 0x290
	movl	$st_device_color, %edx
	movq	%r14, %rcx
	callq	*%r15
	addl	%ebp, %ebx
	cmpl	$256, %ebx              # imm = 0x100
	jl	.LBB8_5
.LBB8_6:                                # %if.end.54
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	image_enum_reloc_ptrs, .Lfunc_end8-image_enum_reloc_ptrs
	.cfi_endproc

	.type	st_gx_image_enum,@object # @st_gx_image_enum
	.section	.rodata,"a",@progbits
	.align	8
st_gx_image_enum:
	.long	24816                   # 0x60f0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	image_enum_enum_ptrs
	.quad	image_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gx_image_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_default_begin_image"
	.size	.L.str, 23

	.type	image1_enum_procs,@object # @image1_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
image1_enum_procs:
	.quad	gx_image1_plane_data
	.quad	gx_image1_end_image
	.quad	gx_image1_flush
	.quad	0
	.size	image1_enum_procs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_image_enum_begin"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./base/gxipixel.c"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Image colors initialization failed"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image buffer"
	.size	.L.str.4, 13

	.type	gx_image_enum_begin.procs,@object # @gx_image_enum_begin.procs
	.data
	.align	16
gx_image_enum_begin.procs:
	.quad	sample_unpack_1
	.quad	sample_unpack_2
	.quad	sample_unpack_4
	.quad	sample_unpack_8
	.quad	0
	.quad	0
	.quad	sample_unpack_1_interleaved
	.quad	sample_unpack_2_interleaved
	.quad	sample_unpack_4_interleaved
	.quad	sample_unpack_8_interleaved
	.quad	0
	.quad	0
	.size	gx_image_enum_begin.procs, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image clipper"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image RasterOp"
	.size	.L.str.6, 15

	.type	.L__func__.image_init_color_cache,@object # @__func__.image_init_color_cache
.L__func__.image_init_color_cache:
	.asciz	"image_init_color_cache"
	.size	.L__func__.image_init_color_cache, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ICC Link not created during image render color"
	.size	.L.str.7, 47

	.type	st_color_cache,@object  # @st_color_cache
	.section	.rodata,"a",@progbits
	.align	8
st_color_cache:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	color_cache_reloc_ptrs
	.size	st_color_cache, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gx_image_enum"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_image_color_cache"
	.size	.L.str.9, 21

	.type	color_cache_reloc_ptrs,@object # @color_cache_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
color_cache_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	color_cache_enum_ptrs
	.size	color_cache_reloc_ptrs, 24

	.type	color_cache_enum_ptrs,@object # @color_cache_enum_ptrs
	.align	2
color_cache_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	color_cache_enum_ptrs, 8

	.type	image_init_colors.default_decode,@object # @image_init_colors.default_decode
	.align	16
image_init_colors.default_decode:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	image_init_colors.default_decode, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
