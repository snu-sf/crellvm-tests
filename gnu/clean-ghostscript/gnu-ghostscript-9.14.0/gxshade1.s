	.text
	.file	"gxshade1.bc"
	.globl	gs_shading_Fb_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_Fb_fill_rectangle,@function
gs_shading_Fb_fill_rectangle:           # @gs_shading_Fb_fill_rectangle
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
	subq	$3400, %rsp             # imm = 0xD48
.Ltmp6:
	.cfi_def_cfa_offset 3456
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
	movq	%r8, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	64(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	callq	shade_init_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_9
# BB#1:                                 # %if.end
	movq	%r12, 368(%rsp)
	leaq	1512(%rsp), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_currentmatrix
	leaq	100(%r12), %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gs_concat
	movl	164(%rbx), %eax
	movl	%eax, 408(%rsp)
	movups	132(%rbx), %xmm0
	movups	148(%rbx), %xmm1
	movups	%xmm1, 392(%rsp)
	movups	%xmm0, 376(%rsp)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_setmatrix
	leaq	1536(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gs_bbox_transform_inverse
	movss	92(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	84(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	88(%r12), %xmm2         # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movapd	1536(%rsp), %xmm1
	movapd	1552(%rsp), %xmm3
	maxpd	%xmm0, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	movss	96(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	cvtps2pd	%xmm2, %xmm0
	minpd	%xmm0, %xmm3
	cvtpd2ps	%xmm3, %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.LBB0_6
# BB#2:                                 # %if.end
	movapd	%xmm1, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	movapd	%xmm0, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	ucomiss	%xmm2, %xmm3
	ja	.LBB0_6
# BB#3:                                 # %for.cond.preheader
	addq	$16, %r12
	movss	%xmm1, 1536(%rsp)
	movss	%xmm3, 1540(%rsp)
	movq	112(%r12), %rdi
	leaq	456(%rsp), %rdx
	leaq	1536(%rsp), %rbx
	movq	%rbx, %rsi
	movaps	%xmm1, 32(%rsp)         # 16-byte Spill
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	movaps	%xmm3, (%rsp)           # 16-byte Spill
	callq	*8(%rdi)
	movaps	32(%rsp), %xmm0         # 16-byte Reload
	movss	%xmm0, 1536(%rsp)
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movss	%xmm0, 1540(%rsp)
	movq	112(%r12), %rdi
	leaq	984(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movss	%xmm0, 1536(%rsp)
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movss	%xmm0, 1540(%rsp)
	movq	112(%r12), %rdi
	leaq	720(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movss	%xmm0, 1536(%rsp)
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movss	%xmm0, 1540(%rsp)
	movq	112(%r12), %rdi
	leaq	1248(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	cvtps2pd	32(%rsp), %xmm0 # 16-byte Folded Reload
	movups	%xmm0, 416(%rsp)
	cvtps2pd	48(%rsp), %xmm0 # 16-byte Folded Reload
	movups	%xmm0, 432(%rsp)
	leaq	2672(%rsp), %rbx
	leaq	64(%rsp), %rsi
	movl	$304, %edx              # imm = 0x130
	movq	%rbx, %rdi
	callq	memcpy
	movq	368(%rsp), %rax
	movq	128(%rax), %rax
	movq	%rax, 3000(%rsp)
	movq	%rbx, %rdi
	callq	init_patch_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_5
# BB#4:                                 # %if.end.i
	leaq	376(%rsp), %rbp
	movl	$0, 3328(%rsp)
	movl	$2, 3016(%rsp)
	movups	(%r14), %xmm0
	movups	%xmm0, 2984(%rsp)
	movsd	416(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	424(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	1536(%rsp), %r14
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_point_transform2fixed
	movsd	424(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	432(%rsp), %xmm0        # xmm0 = mem[0],zero
	leaq	1820(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform2fixed
	movsd	432(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	440(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	2104(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform2fixed
	movsd	416(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	440(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	2388(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform2fixed
	movq	1536(%rsp), %r8
	movl	1820(%rsp), %esi
	leal	(%rsi,%r8,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 1800(%rsp)
	movq	%r8, %r9
	shrq	$32, %r9
	movq	%r9, %rcx
	addq	%rcx, %rcx
	movl	1824(%rsp), %ebp
	leal	(%rcx,%rbp), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdi
	shrq	$63, %rdi
	shrq	$32, %rax
	addl	%edi, %eax
	movl	%eax, 1804(%rsp)
	leal	(%r8,%rsi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdi
	shrq	$63, %rdi
	shrq	$32, %rax
	addl	%edi, %eax
	movl	%eax, 1808(%rsp)
	leal	(%r9,%rbp,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdi
	shrq	$63, %rdi
	shrq	$32, %rax
	addl	%edi, %eax
	movl	%eax, 1812(%rsp)
	movl	$1, 1816(%rsp)
	movq	2104(%rsp), %rax
	leal	(%rax,%rsi,2), %edi
	movslq	%edi, %rdi
	imulq	$1431655766, %rdi, %rdi # imm = 0x55555556
	movq	%rdi, %rbx
	shrq	$63, %rbx
	shrq	$32, %rdi
	addl	%ebx, %edi
	movl	%edi, 2084(%rsp)
	movq	%rax, %rbx
	shrq	$32, %rbx
	leal	(%rbx,%rbp,2), %edi
	movslq	%edi, %rdi
	imulq	$1431655766, %rdi, %rdi # imm = 0x55555556
	movq	%rdi, %rdx
	shrq	$63, %rdx
	shrq	$32, %rdi
	addl	%edx, %edi
	movl	%edi, 2088(%rsp)
	leal	(%rsi,%rax,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	movl	%edx, 2092(%rsp)
	movq	%rbx, %rdi
	addq	%rdi, %rdi
	leal	(%rbp,%rdi), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	movl	%edx, 2096(%rsp)
	movl	$1, 2100(%rsp)
	movl	2388(%rsp), %esi
	leal	(%rsi,%rax,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rbp
	shrq	$63, %rbp
	shrq	$32, %rdx
	addl	%ebp, %edx
	movl	%edx, 2368(%rsp)
	movl	2392(%rsp), %ebp
	leal	(%rdi,%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	movl	%edx, 2372(%rsp)
	leal	(%rax,%rsi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, 2376(%rsp)
	leal	(%rbx,%rbp,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, 2380(%rsp)
	movl	$1, 2384(%rsp)
	leal	(%r8,%rsi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, 2652(%rsp)
	leal	(%r9,%rbp,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, 2656(%rsp)
	leal	(%rsi,%r8,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, 2660(%rsp)
	addl	%ebp, %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 2664(%rsp)
	movl	$1, 2668(%rsp)
	movsd	416(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 1544(%rsp)
	movsd	424(%rsp), %xmm1        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 1548(%rsp)
	movsd	432(%rsp), %xmm2        # xmm2 = mem[0],zero
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, 1828(%rsp)
	movss	%xmm1, 1832(%rsp)
	movss	%xmm2, 2112(%rsp)
	movsd	440(%rsp), %xmm1        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 2116(%rsp)
	movss	%xmm0, 2396(%rsp)
	movss	%xmm1, 2400(%rsp)
	leaq	2672(%rsp), %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	patch_fill
	movl	%eax, %ebx
	movq	%rbp, %rdi
	callq	term_patch_fill_state
	testl	%eax, %eax
	movl	$-28, %ebp
	cmovel	%ebx, %ebp
.LBB0_5:                                # %Fb_fill_region.exit
	movq	360(%rsp), %rdi
	jmp	.LBB0_7
.LBB0_6:                                # %if.then.87
	movq	360(%rsp), %rdi
	xorl	%ebp, %ebp
.LBB0_7:                                # %if.then.87
	testq	%rdi, %rdi
	je	.LBB0_9
# BB#8:                                 # %if.then.142
	callq	gsicc_release_link
.LBB0_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$3400, %rsp             # imm = 0xD48
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_shading_Fb_fill_rectangle, .Lfunc_end0-gs_shading_Fb_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_shading_A_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_A_fill_rectangle,@function
gs_shading_A_fill_rectangle:            # @gs_shading_A_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$952, %rsp              # imm = 0x3B8
.Ltmp19:
	.cfi_def_cfa_offset 1008
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	112(%r13), %rbx
	movss	100(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 56(%rsp)         # 4-byte Spill
	movss	104(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	movq	%r13, 816(%rsp)
	leaq	88(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rcx, %rdx
	movq	%r14, %rcx
	callq	shade_init_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_21
# BB#1:                                 # %if.end.i
	movq	%rbx, 416(%rsp)
	movups	(%r12), %xmm0
	movups	%xmm0, 400(%rsp)
	leaq	88(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_2
# BB#4:                                 # %if.end.15.i
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	56(%rsp), %xmm0         # 4-byte Folded Reload
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	movl	$0, 744(%rsp)
	movl	$1, 424(%rsp)
	movq	84(%r13), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movd	%xmm0, 944(%rsp)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, 948(%rsp)
	movq	92(%r13), %xmm1         # xmm1 = mem[0],zero
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	subps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	cvtps2pd	%xmm1, %xmm2
	movaps	%xmm2, 32(%rsp)         # 16-byte Spill
	movups	%xmm2, 824(%rsp)
	movss	%xmm1, 936(%rsp)
	movss	%xmm0, 940(%rsp)
	movss	%xmm0, 928(%rsp)
	xorps	.LCPI1_0(%rip), %xmm1
	movss	%xmm1, 932(%rsp)
	leaq	928(%rsp), %rsi
	leaq	896(%rsp), %rdx
	movq	%r15, %rdi
	callq	gs_bbox_transform_inverse
	movsd	904(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	920(%rsp), %xmm2        # xmm2 = mem[0],zero
	xorps	%xmm0, %xmm0
	maxsd	%xmm0, %xmm3
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	minsd	%xmm1, %xmm3
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	minsd	%xmm1, %xmm2
	maxsd	%xmm0, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movsd	%xmm3, 864(%rsp)
	movsd	%xmm2, 872(%rsp)
	movq	896(%rsp), %rax
	movq	%rax, 880(%rsp)
	movq	912(%rsp), %rax
	movq	%rax, 888(%rsp)
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	movss	56(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm4
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	movsd	%xmm4, 848(%rsp)
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	%xmm1, 856(%rsp)
	addq	$132, %r14
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	leaq	72(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_distance_transform
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_6
# BB#5:                                 # %call.sqrt
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_6:                                # %if.end.15.i.split
	movsd	%xmm0, 840(%rsp)
	leaq	816(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	A_fill_region
	movl	%eax, %ebp
	cmpl	$0, 120(%r13)
	je	.LBB1_12
# BB#7:                                 # %land.lhs.true.i
	movsd	904(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_12
# BB#8:                                 # %if.then.125.i
	testl	%ebp, %ebp
	js	.LBB1_9
# BB#11:                                # %if.end.135.i
	movsd	%xmm0, 864(%rsp)
	movsd	%xmm1, 872(%rsp)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 856(%rsp)
	movsd	%xmm0, 848(%rsp)
	leaq	816(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	A_fill_region
	movl	%eax, %ebp
.LBB1_12:                               # %if.end.147.i
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cmpl	$0, 124(%r13)
	je	.LBB1_18
# BB#13:                                # %if.end.147.i
	movsd	920(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_18
# BB#14:                                # %if.then.157.i
	testl	%ebp, %ebp
	js	.LBB1_15
# BB#17:                                # %if.end.167.i
	movsd	%xmm1, 864(%rsp)
	movsd	%xmm0, 872(%rsp)
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 856(%rsp)
	movsd	%xmm0, 848(%rsp)
	leaq	816(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	A_fill_region
	movl	%eax, %ebp
.LBB1_18:                               # %if.end.179.i
	movq	384(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_20
# BB#19:                                # %if.then.183.i
	callq	gsicc_release_link
.LBB1_20:                               # %if.end.185.i
	leaq	88(%rsp), %rdi
	callq	term_patch_fill_state
	testl	%eax, %eax
	movl	$-28, %eax
	cmovnel	%eax, %ebp
	jmp	.LBB1_21
.LBB1_2:                                # %if.then.10.i
	movq	384(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# BB#3:                                 # %if.then.12.i
	callq	gsicc_release_link
	jmp	.LBB1_21
.LBB1_15:                               # %if.then.160.i
	movq	384(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# BB#16:                                # %if.then.164.i
	callq	gsicc_release_link
	jmp	.LBB1_21
.LBB1_9:                                # %if.then.128.i
	movq	384(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# BB#10:                                # %if.then.132.i
	callq	gsicc_release_link
.LBB1_21:                               # %gs_shading_A_fill_rectangle_aux.exit
	movl	%ebp, %eax
	addq	$952, %rsp              # imm = 0x3B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_shading_A_fill_rectangle, .Lfunc_end1-gs_shading_A_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4620693217682128896     # double 8
.LCPI2_4:
	.quad	4502148214488346440     # double 9.9999999999999995E-8
.LCPI2_5:
	.quad	4607272490792564818     # double 1.02
.LCPI2_6:
	.quad	4607182418800017408     # double 1
.LCPI2_8:
	.quad	4599075939470750515     # double 0.29999999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_3:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI2_7:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	gs_shading_R_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_R_fill_rectangle,@function
gs_shading_R_fill_rectangle:            # @gs_shading_R_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$1192, %rsp             # imm = 0x4A8
.Ltmp32:
	.cfi_def_cfa_offset 1248
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movss	108(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 216(%rsp)        # 4-byte Spill
	movss	112(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 220(%rsp)        # 4-byte Spill
	movq	84(%rbx), %xmm0         # xmm0 = mem[0],zero
	movdqa	%xmm0, 240(%rsp)        # 16-byte Spill
	movss	92(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 256(%rsp)        # 4-byte Spill
	movss	104(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movq	96(%rbx), %xmm0         # xmm0 = mem[0],zero
	movdqa	%xmm0, 224(%rsp)        # 16-byte Spill
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_2
	jp	.LBB2_2
# BB#1:                                 # %entry
	xorl	%ebp, %ebp
	ucomiss	%xmm0, %xmm2
	jne	.LBB2_2
	jnp	.LBB2_90
.LBB2_2:                                # %if.end.i
	leaq	264(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movss	%xmm2, 188(%rsp)        # 4-byte Spill
	callq	shade_init_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_90
# BB#3:                                 # %if.end.28.i
	movq	120(%rbx), %rax
	movq	%rax, 592(%rsp)
	leaq	264(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_4
# BB#6:                                 # %if.end.40.i
	movss	256(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)        # 16-byte Spill
	movss	188(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)        # 16-byte Spill
	movl	$1, 600(%rsp)
	movups	(%r15), %xmm0
	movups	%xmm0, 576(%rsp)
	movl	$0, 920(%rsp)
	cvtps2pd	240(%rsp), %xmm1 # 16-byte Folded Reload
	movapd	%xmm1, 144(%rsp)        # 16-byte Spill
	cvtps2pd	224(%rsp), %xmm2 # 16-byte Folded Reload
	movapd	%xmm2, 128(%rsp)        # 16-byte Spill
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	movapd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm3
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm1, 112(%rsp)        # 16-byte Spill
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	%xmm2, 96(%rsp)         # 16-byte Spill
	subsd	%xmm1, %xmm2
	movapd	%xmm2, 48(%rsp)         # 16-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_8
# BB#7:                                 # %call.sqrt
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB2_8:                                # %if.end.40.i.split
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	160(%rsp), %xmm4        # 16-byte Reload
	movapd	%xmm4, %xmm2
	mulsd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movapd	192(%rsp), %xmm5        # 16-byte Reload
	mulsd	%xmm5, %xmm1
	mulsd	%xmm5, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm4
	mulsd	%xmm4, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	.LCPI2_2(%rip), %xmm0
	addsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_10
# BB#9:                                 # %is_radial_shading_large.exit.i
	movsd	24(%r14), %xmm0         # xmm0 = mem[0],zero
	subsd	8(%r14), %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	.LCPI2_2(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_52
.LBB2_10:
	movapd	%xmm4, 80(%rsp)         # 16-byte Spill
	leaq	8(%r14), %rbp
	leaq	992(%rsp), %r12
	xorl	%esi, %esi
	movl	$192, %edx
	movq	%r12, %rdi
	callq	memset
	movaps	144(%rsp), %xmm0        # 16-byte Reload
	movaps	%xmm0, 992(%rsp)
	movaps	128(%rsp), %xmm0        # 16-byte Reload
	movaps	%xmm0, 1008(%rsp)
	movups	(%r14), %xmm0
	movaps	%xmm0, 1152(%rsp)
	movaps	%xmm0, 1088(%rsp)
	movq	(%r14), %rax
	movq	%rax, 1168(%rsp)
	movq	%rax, 1104(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 1176(%rsp)
	movq	%rax, 1112(%rsp)
	movups	16(%r14), %xmm0
	movaps	%xmm0, 1120(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 1136(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 1144(%rsp)
	movapd	192(%rsp), %xmm8        # 16-byte Reload
	movapd	%xmm8, %xmm7
	movapd	160(%rsp), %xmm5        # 16-byte Reload
	subsd	%xmm5, %xmm7
	movapd	.LCPI2_3(%rip), %xmm0   # xmm0 = [9223372036854775808,9223372036854775808]
	movapd	%xmm7, %xmm2
	xorpd	%xmm0, %xmm2
	xorpd	%xmm1, %xmm1
	movapd	%xmm7, %xmm3
	cmpltsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm4
	andnpd	%xmm7, %xmm4
	andpd	%xmm2, %xmm3
	orpd	%xmm4, %xmm3
	movapd	80(%rsp), %xmm6         # 16-byte Reload
	movapd	%xmm6, %xmm2
	xorpd	%xmm0, %xmm2
	movapd	%xmm6, %xmm4
	cmpltsd	%xmm1, %xmm4
	andpd	%xmm4, %xmm2
	andnpd	%xmm6, %xmm4
	orpd	%xmm2, %xmm4
	mulsd	.LCPI2_4(%rip), %xmm4
	ucomisd	%xmm4, %xmm3
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 1064(%rsp)
	ja	.LBB2_11
# BB#12:                                # %if.then.47.i
	movapd	%xmm7, 16(%rsp)         # 16-byte Spill
	jmp	.LBB2_13
.LBB2_4:                                # %if.then.34.i
	movq	560(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_90
# BB#5:                                 # %if.then.37.i
	callq	gsicc_release_link
	jmp	.LBB2_90
.LBB2_11:
	xorpd	%xmm5, %xmm0
	divsd	%xmm7, %xmm0
	movapd	%xmm7, 16(%rsp)         # 16-byte Spill
	movapd	%xmm0, %xmm1
.LBB2_13:                               # %if.then.47.i
	movsd	%xmm1, 1056(%rsp)
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm5, %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	mulsd	%xmm8, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	compute_radial_shading_span_extended
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	je	.LBB2_52
# BB#14:                                # %if.end.i.104.i
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	divsd	.LCPI2_5(%rip), %xmm1
	movapd	%xmm1, (%rsp)           # 16-byte Spill
	leaq	992(%rsp), %rdi
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	callq	compute_radial_shading_span_extended
	cmpl	%eax, %ebp
	jne	.LBB2_52
# BB#15:                                # %if.end.70.i.i
	movsd	.LCPI2_5(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	160(%rsp), %xmm0        # 16-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	leaq	992(%rsp), %rdi
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended
	cmpl	%eax, %ebp
	jne	.LBB2_52
# BB#16:                                # %if.end.77.i.i
	leaq	992(%rsp), %rdi
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	(%rsp), %xmm1           # 16-byte Reload
	callq	compute_radial_shading_span_extended
	cmpl	$-1, %eax
	je	.LBB2_52
# BB#17:                                # %if.end.84.i.i
	movss	256(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	188(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_24
# BB#18:                                # %if.then.87.i.i
	movl	1068(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_21
# BB#19:                                # %land.lhs.true.i.i
	cmpl	$0, 1076(%rsp)
	jne	.LBB2_21
# BB#20:                                # %if.then.92.i.i
	movq	1056(%rsp), %rcx
	movq	%rcx, 1024(%rsp)
.LBB2_21:                               # %if.end.96.i.i
	cmpl	$0, 1072(%rsp)
	je	.LBB2_31
# BB#22:                                # %land.lhs.true.100.i.i
	cmpl	$0, 1080(%rsp)
	jne	.LBB2_31
# BB#23:                                # %if.then.104.i.i
	movq	1056(%rsp), %rcx
	movq	%rcx, 1040(%rsp)
	jmp	.LBB2_31
.LBB2_24:                               # %if.else.i.i
	movl	1068(%rsp), %eax
	ucomiss	%xmm1, %xmm0
	jbe	.LBB2_31
# BB#25:                                # %if.then.112.i.i
	testl	%eax, %eax
	je	.LBB2_28
# BB#26:                                # %land.lhs.true.116.i.i
	cmpl	$0, 1076(%rsp)
	jne	.LBB2_28
# BB#27:                                # %if.then.120.i.i
	movq	1056(%rsp), %rcx
	movq	%rcx, 1032(%rsp)
.LBB2_28:                               # %if.end.125.i.i
	cmpl	$0, 1072(%rsp)
	je	.LBB2_31
# BB#29:                                # %land.lhs.true.129.i.i
	cmpl	$0, 1080(%rsp)
	jne	.LBB2_31
# BB#30:                                # %if.then.133.i.i
	movq	1056(%rsp), %rcx
	movq	%rcx, 1048(%rsp)
.LBB2_31:                               # %if.end.140.i.i
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB2_34
# BB#32:                                # %land.lhs.true.144.i.i
	xorps	%xmm0, %xmm0
	ucomisd	1024(%rsp), %xmm0
	jbe	.LBB2_34
# BB#33:                                # %if.then.150.i.i
	movl	$1, %ebp
.LBB2_34:                               # %if.end.151.i.i
	movl	1072(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB2_37
# BB#35:                                # %land.lhs.true.155.i.i
	xorps	%xmm0, %xmm0
	ucomisd	1040(%rsp), %xmm0
	jbe	.LBB2_37
# BB#36:                                # %if.then.161.i.i
	movl	$1, %ebp
.LBB2_37:                               # %if.end.163.i.i
	testl	%eax, %eax
	je	.LBB2_41
# BB#38:                                # %land.lhs.true.167.i.i
	movsd	1032(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_41
# BB#39:                                # %land.lhs.true.173.i.i
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	1024(%rsp), %xmm0
	jbe	.LBB2_41
# BB#40:                                # %if.then.179.i.i
	orl	$2, %ebp
.LBB2_41:                               # %if.end.181.i.i
	testl	%ecx, %ecx
	je	.LBB2_45
# BB#42:                                # %land.lhs.true.185.i.i
	movsd	1048(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_45
# BB#43:                                # %land.lhs.true.191.i.i
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	1040(%rsp), %xmm0
	jbe	.LBB2_45
# BB#44:                                # %if.then.197.i.i
	orl	$4, %ebp
.LBB2_45:                               # %if.end.199.i.i
	testl	%eax, %eax
	je	.LBB2_48
# BB#46:                                # %land.lhs.true.203.i.i
	movsd	1032(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI2_6(%rip), %xmm0
	jbe	.LBB2_48
# BB#47:                                # %if.then.209.i.i
	orl	$8, %ebp
.LBB2_48:                               # %if.end.211.i.i
	testl	%ecx, %ecx
	je	.LBB2_51
# BB#49:                                # %land.lhs.true.215.i.i
	movsd	1048(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI2_6(%rip), %xmm0
	jbe	.LBB2_51
# BB#50:                                # %if.then.221.i.i
	orl	$8, %ebp
.LBB2_51:                               # %if.end.49.i
	testl	%ebp, %ebp
	js	.LBB2_52
# BB#55:                                # %if.else.79.i
	cmpl	$8, %ebp
	jne	.LBB2_56
# BB#59:                                # %if.then.87.i
	leaq	264(%rsp), %rdi
	movq	%r15, %rsi
	movss	220(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	R_fill_rect_with_const_color
	jmp	.LBB2_86
.LBB2_52:                               # %if.then.52.i
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 256(%rsp)        # 8-byte Spill
	movss	220(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 240(%rsp)        # 8-byte Spill
	movl	128(%rbx), %ecx
	leaq	264(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movapd	%xmm2, %xmm0
	callq	R_extensions
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_87
# BB#53:                                # %if.end.68.i
	leaq	264(%rsp), %rdi
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	movaps	112(%rsp), %xmm1        # 16-byte Reload
	movapd	160(%rsp), %xmm2        # 16-byte Reload
	movsd	256(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	128(%rsp), %xmm4        # 16-byte Reload
	movapd	96(%rsp), %xmm5         # 16-byte Reload
	movapd	192(%rsp), %xmm6        # 16-byte Reload
	movsd	240(%rsp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	R_tensor_annulus
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_87
# BB#54:                                # %if.then.71.i
	movl	132(%rbx), %r8d
	leaq	264(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movsd	256(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	240(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB2_85:                               # %if.end.183.i
	callq	R_extensions
.LBB2_86:                               # %if.end.183.i
	movl	%eax, %r15d
.LBB2_87:                               # %if.end.183.i
	movq	560(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_89
# BB#88:                                # %if.then.187.i
	callq	gsicc_release_link
.LBB2_89:                               # %if.end.189.i
	leaq	264(%rsp), %rdi
	callq	term_patch_fill_state
	testl	%eax, %eax
	movl	$-28, %ebp
	cmovel	%r15d, %ebp
.LBB2_90:                               # %gs_shading_R_fill_rectangle_aux.exit
	movl	%ebp, %eax
	addq	$1192, %rsp             # imm = 0x4A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_56:                               # %if.else.79.i
	cmpl	$1, %ebp
	jne	.LBB2_60
# BB#57:                                # %if.then.82.i
	leaq	264(%rsp), %rdi
	movq	%r15, %rsi
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	R_fill_rect_with_const_color
	jmp	.LBB2_86
.LBB2_60:                               # %if.else.89.i
	xorl	%r15d, %r15d
	testb	$1, %bpl
	je	.LBB2_62
# BB#61:                                # %if.then.91.i
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	220(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	128(%rbx), %ecx
	leaq	264(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	R_extensions
	movl	%eax, %r15d
.LBB2_62:                               # %if.end.98.i
	movl	%ebp, %r12d
	andl	$4, %r12d
	testb	$2, %bpl
	movl	$1, %r13d
	movapd	160(%rsp), %xmm11       # 16-byte Reload
	je	.LBB2_74
# BB#63:                                # %if.end.98.i
	testl	%r15d, %r15d
	js	.LBB2_74
# BB#64:                                # %if.then.104.i
	testl	%r12d, %r12d
	movsd	1032(%rsp), %xmm0       # xmm0 = mem[0],zero
	je	.LBB2_70
# BB#65:                                # %land.lhs.true.107.i
	ucomisd	1040(%rsp), %xmm0
	jae	.LBB2_66
.LBB2_70:                               # %if.else.125.i
	movsd	1024(%rsp), %xmm1       # xmm1 = mem[0],zero
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	xorpd	%xmm0, %xmm0
	maxpd	%xmm1, %xmm0
	movapd	.LCPI2_7(%rip), %xmm6   # xmm6 = [1.000000e+00,1.000000e+00]
	minpd	%xmm0, %xmm6
	movapd	%xmm6, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movapd	%xmm3, %xmm0
	subsd	%xmm6, %xmm0
	movapd	%xmm11, %xmm2
	unpcklpd	192(%rsp), %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	movaps	240(%rsp), %xmm1        # 16-byte Reload
	movaps	%xmm1, %xmm8
	movaps	%xmm1, %xmm12
	shufps	$229, %xmm12, %xmm12    # xmm12 = xmm12[1,1,2,3]
	movaps	224(%rsp), %xmm4        # 16-byte Reload
	movaps	%xmm4, %xmm9
	movaps	%xmm4, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	xorl	%r13d, %r13d
	xorps	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm0
	jne	.LBB2_71
	jnp	.LBB2_67
.LBB2_71:                               # %if.else.125.i
	ucomisd	.LCPI2_8(%rip), %xmm0
	movss	216(%rsp), %xmm10       # 4-byte Reload
                                        # xmm10 = mem[0],zero,zero,zero
	movss	220(%rsp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	ja	.LBB2_73
# BB#72:                                # %if.end.16.i.158.i
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm8
	movss	220(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movapd	64(%rsp), %xmm4         # 16-byte Reload
	movapd	%xmm4, %xmm9
	mulsd	%xmm6, %xmm9
	movapd	48(%rsp), %xmm10        # 16-byte Reload
	movapd	%xmm10, %xmm5
	mulsd	%xmm6, %xmm5
	subsd	%xmm8, %xmm0
	movapd	%xmm0, %xmm7
	mulsd	%xmm6, %xmm7
	movaps	16(%rsp), %xmm1         # 16-byte Reload
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm6, %xmm1
	movapd	%xmm11, %xmm2
	unpcklpd	%xmm11, %xmm2   # xmm2 = xmm2[0],xmm11[0]
	addpd	%xmm1, %xmm2
	movapd	%xmm4, %xmm6
	mulsd	%xmm3, %xmm6
	movapd	%xmm10, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm0
	addsd	%xmm8, %xmm7
	addsd	%xmm8, %xmm0
	movapd	144(%rsp), %xmm3        # 16-byte Reload
	addsd	%xmm3, %xmm9
	cvtsd2ss	%xmm9, %xmm8
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	addsd	%xmm1, %xmm5
	cvtsd2ss	%xmm5, %xmm12
	cvtsd2ss	%xmm7, %xmm10
	addsd	%xmm3, %xmm6
	xorps	%xmm9, %xmm9
	cvtsd2ss	%xmm6, %xmm9
	addsd	%xmm1, %xmm4
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm4, %xmm5
	xorps	%xmm7, %xmm7
	cvtsd2ss	%xmm0, %xmm7
	movl	$1, %r13d
	jmp	.LBB2_73
.LBB2_66:                               # %if.then.115.i
	movsd	1024(%rsp), %xmm0       # xmm0 = mem[0],zero
	movhpd	1048(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	maxpd	%xmm0, %xmm1
	movapd	.LCPI2_7(%rip), %xmm6   # xmm6 = [1.000000e+00,1.000000e+00]
	minpd	%xmm1, %xmm6
	movapd	%xmm6, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	movapd	%xmm7, %xmm0
	subsd	%xmm6, %xmm0
	movapd	%xmm11, %xmm2
	unpcklpd	192(%rsp), %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	movaps	240(%rsp), %xmm1        # 16-byte Reload
	movaps	%xmm1, %xmm8
	movaps	%xmm1, %xmm12
	shufps	$229, %xmm12, %xmm12    # xmm12 = xmm12[1,1,2,3]
	movaps	224(%rsp), %xmm3        # 16-byte Reload
	movaps	%xmm3, %xmm9
	movaps	%xmm3, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	xorl	%r13d, %r13d
	xorps	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	jne	.LBB2_68
	jp	.LBB2_68
	jmp	.LBB2_67
.LBB2_68:                               # %if.then.115.i
	ucomisd	.LCPI2_8(%rip), %xmm0
	ja	.LBB2_67
# BB#69:                                # %if.end.16.i.i
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm8
	movss	220(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movapd	64(%rsp), %xmm9         # 16-byte Reload
	movapd	%xmm9, %xmm4
	mulsd	%xmm6, %xmm4
	movapd	48(%rsp), %xmm10        # 16-byte Reload
	movapd	%xmm10, %xmm1
	mulsd	%xmm6, %xmm1
	subsd	%xmm8, %xmm3
	movapd	%xmm3, %xmm5
	mulsd	%xmm6, %xmm5
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm6, %xmm0
	movapd	%xmm11, %xmm2
	unpcklpd	%xmm11, %xmm2   # xmm2 = xmm2[0],xmm11[0]
	addpd	%xmm0, %xmm2
	movapd	%xmm9, %xmm0
	mulsd	%xmm7, %xmm0
	movapd	%xmm10, %xmm6
	mulsd	%xmm7, %xmm6
	mulsd	%xmm7, %xmm3
	addsd	%xmm8, %xmm5
	addsd	%xmm8, %xmm3
	movapd	144(%rsp), %xmm7        # 16-byte Reload
	addsd	%xmm7, %xmm4
	cvtsd2ss	%xmm4, %xmm8
	movapd	112(%rsp), %xmm4        # 16-byte Reload
	addsd	%xmm4, %xmm1
	cvtsd2ss	%xmm1, %xmm12
	cvtsd2ss	%xmm5, %xmm10
	addsd	%xmm7, %xmm0
	cvtsd2ss	%xmm0, %xmm9
	addsd	%xmm4, %xmm6
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm6, %xmm5
	xorps	%xmm7, %xmm7
	cvtsd2ss	%xmm3, %xmm7
	jmp	.LBB2_73
.LBB2_67:
	movss	216(%rsp), %xmm10       # 4-byte Reload
                                        # xmm10 = mem[0],zero,zero,zero
	movss	220(%rsp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
.LBB2_73:                               # %if.end.130.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm8, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm12, %xmm1
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm10, %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm9, %xmm4
	cvtss2sd	%xmm5, %xmm5
	cvtss2sd	%xmm7, %xmm7
	movapd	%xmm2, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	leaq	264(%rsp), %rdi
	callq	R_tensor_annulus
	movapd	160(%rsp), %xmm11       # 16-byte Reload
	movl	%eax, %r15d
.LBB2_74:                               # %if.end.138.i
	testl	%r12d, %r12d
	je	.LBB2_82
# BB#75:                                # %if.end.138.i
	testl	%r15d, %r15d
	js	.LBB2_82
# BB#76:                                # %if.end.138.i
	testl	%r13d, %r13d
	je	.LBB2_82
# BB#77:                                # %if.then.146.i
	xorpd	%xmm0, %xmm0
	maxpd	1040(%rsp), %xmm0
	movapd	.LCPI2_7(%rip), %xmm3   # xmm3 = [1.000000e+00,1.000000e+00]
	minpd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movapd	%xmm0, %xmm4
	subsd	%xmm3, %xmm4
	movapd	%xmm11, %xmm2
	unpcklpd	192(%rsp), %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	movaps	240(%rsp), %xmm1        # 16-byte Reload
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	movaps	224(%rsp), %xmm5        # 16-byte Reload
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	xorpd	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm4
	jne	.LBB2_79
	jp	.LBB2_79
	jmp	.LBB2_78
.LBB2_79:                               # %if.then.146.i
	ucomisd	.LCPI2_8(%rip), %xmm4
	movss	216(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movss	220(%rsp), %xmm6        # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	ja	.LBB2_81
# BB#80:                                # %if.end.16.i.206.i
	movss	216(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm10
	movss	220(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movapd	64(%rsp), %xmm5         # 16-byte Reload
	movapd	%xmm5, %xmm1
	mulsd	%xmm3, %xmm1
	movapd	144(%rsp), %xmm8        # 16-byte Reload
	addsd	%xmm8, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movaps	%xmm1, 240(%rsp)        # 16-byte Spill
	movapd	48(%rsp), %xmm7         # 16-byte Reload
	movapd	%xmm7, %xmm1
	mulsd	%xmm3, %xmm1
	movapd	112(%rsp), %xmm9        # 16-byte Reload
	addsd	%xmm9, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	subsd	%xmm10, %xmm6
	movapd	%xmm6, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm10, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	movaps	16(%rsp), %xmm2         # 16-byte Reload
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	%xmm3, %xmm2
	unpcklpd	%xmm11, %xmm11  # xmm11 = xmm11[0,0]
	addpd	%xmm2, %xmm11
	mulsd	%xmm0, %xmm5
	addsd	%xmm8, %xmm5
	cvtsd2ss	%xmm5, %xmm3
	movapd	%xmm3, 224(%rsp)        # 16-byte Spill
	mulsd	%xmm0, %xmm7
	addsd	%xmm9, %xmm7
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm7, %xmm5
	mulsd	%xmm0, %xmm6
	addsd	%xmm10, %xmm6
	cvtsd2ss	%xmm6, %xmm6
	movapd	%xmm11, %xmm2
	jmp	.LBB2_81
.LBB2_78:
	movss	216(%rsp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movss	220(%rsp), %xmm6        # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
.LBB2_81:                               # %shorten_radial_shading.exit208.i
	movaps	240(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	movaps	224(%rsp), %xmm4        # 16-byte Reload
	cvtss2sd	%xmm4, %xmm4
	cvtss2sd	%xmm5, %xmm5
	xorps	%xmm7, %xmm7
	cvtss2sd	%xmm6, %xmm7
	movapd	%xmm2, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	leaq	264(%rsp), %rdi
	callq	R_tensor_annulus
	movl	%eax, %r15d
.LBB2_82:                               # %if.end.167.i
	testb	$8, %bpl
	je	.LBB2_87
# BB#83:                                # %if.end.167.i
	testl	%r15d, %r15d
	js	.LBB2_87
# BB#84:                                # %if.then.173.i
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	220(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	132(%rbx), %r8d
	leaq	264(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%r14, %rdx
	jmp	.LBB2_85
.Lfunc_end2:
	.size	gs_shading_R_fill_rectangle, .Lfunc_end2-gs_shading_R_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	A_fill_region,@function
A_fill_region:                          # @A_fill_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	subq	$1192, %rsp             # imm = 0x4A8
.Ltmp43:
	.cfi_def_cfa_offset 1232
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movss	84(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	88(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	movsd	48(%rbx), %xmm4         # xmm4 = mem[0],zero
	movapd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movapd	%xmm0, %xmm5
	cvtss2sd	%xmm1, %xmm1
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm4
	addsd	%xmm1, %xmm4
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	movsd	56(%rbx), %xmm6         # xmm6 = mem[0],zero
	movapd	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	movsd	%xmm7, 32(%rsp)         # 8-byte Spill
	mulsd	%xmm0, %xmm6
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	movsd	64(%rbx), %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm3, (%rsp)           # 8-byte Spill
	movsd	72(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movq	8(%r15), %rdi
	addq	$132, %rdi
	mulsd	%xmm3, %xmm0
	addsd	%xmm5, %xmm0
	mulsd	%xmm3, %xmm2
	movapd	%xmm4, %xmm1
	subsd	%xmm2, %xmm1
	leaq	48(%rsp), %r14
	movq	%r14, %rsi
	callq	gs_point_transform2fixed
	movl	$132, %r12d
	movq	8(%r15), %rdi
	addq	%r12, %rdi
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	8(%rbx), %xmm1
	movapd	%xmm1, %xmm2
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	leaq	332(%rsp), %rsi
	callq	gs_point_transform2fixed
	movq	8(%r15), %rdi
	addq	%r12, %rdi
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	8(%rbx), %xmm3          # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm3, %xmm1
	leaq	616(%rsp), %rsi
	callq	gs_point_transform2fixed
	addq	8(%r15), %r12
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	mulsd	8(%rbx), %xmm1
	movapd	%xmm1, %xmm2
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	leaq	900(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_point_transform2fixed
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rsp)
	movsd	40(%rbx), %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 340(%rsp)
	movss	%xmm1, 624(%rsp)
	movss	%xmm0, 908(%rsp)
	movl	$0, 60(%rsp)
	movl	$0, 344(%rsp)
	movl	$0, 628(%rsp)
	movl	$0, 912(%rsp)
	movl	48(%rsp), %r8d
	movl	332(%rsp), %edx
	leal	(%rdx,%r8,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rcx
	addl	%esi, %ecx
	movl	%ecx, 312(%rsp)
	movl	52(%rsp), %r9d
	movl	336(%rsp), %edi
	leal	(%rdi,%r9,2), %esi
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rbx
	shrq	$63, %rbx
	shrq	$32, %rsi
	addl	%ebx, %esi
	movl	%esi, 316(%rsp)
	leal	(%r8,%rdx,2), %esi
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rbx
	shrq	$63, %rbx
	shrq	$32, %rsi
	addl	%ebx, %esi
	movl	%esi, 320(%rsp)
	leal	(%r9,%rdi,2), %esi
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rbx
	shrq	$63, %rbx
	shrq	$32, %rsi
	addl	%ebx, %esi
	movl	%esi, 324(%rsp)
	movl	$1, 328(%rsp)
	movl	616(%rsp), %esi
	leal	(%rsi,%rdx,2), %ebx
	movslq	%ebx, %rbx
	imulq	$1431655766, %rbx, %rbx # imm = 0x55555556
	movq	%rbx, %rax
	shrq	$63, %rax
	shrq	$32, %rbx
	addl	%eax, %ebx
	movl	%ebx, 596(%rsp)
	movl	620(%rsp), %ebx
	leal	(%rbx,%rdi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 600(%rsp)
	leal	(%rdx,%rsi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 604(%rsp)
	leal	(%rdi,%rbx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 608(%rsp)
	movl	$1, 612(%rsp)
	movl	900(%rsp), %edx
	leal	(%rdx,%rsi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 880(%rsp)
	movl	904(%rsp), %edi
	leal	(%rdi,%rbx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 884(%rsp)
	leal	(%rsi,%rdx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 888(%rsp)
	leal	(%rbx,%rdi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 892(%rsp)
	movl	$1, 896(%rsp)
	leal	(%r8,%rdx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 1164(%rsp)
	leal	(%r9,%rdi,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 1168(%rsp)
	leal	(%rdx,%r8,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 1172(%rsp)
	leal	(%rdi,%r9,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, 1176(%rsp)
	movl	$1, 1180(%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	patch_fill
	addq	$1192, %rsp             # imm = 0x4A8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	A_fill_region, .Lfunc_end3-A_fill_region
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	-4721223822366429368    # double -9.9999999999999995E-8
.LCPI4_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	R_extensions,@function
R_extensions:                           # @R_extensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 40
	subq	$200, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 240
.Ltmp53:
	.cfi_offset %rbx, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %ebp
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movss	84(%rsi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movss	%xmm5, 72(%rsp)         # 4-byte Spill
	movss	88(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	%xmm4, 88(%rsp)         # 4-byte Spill
	movss	92(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 120(%rsp)        # 4-byte Spill
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, 104(%rsp)        # 8-byte Spill
	movss	96(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	movss	100(%rsi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	104(%rsi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm2, 112(%rsp)        # 4-byte Spill
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, 96(%rsp)         # 8-byte Spill
	subss	%xmm5, %xmm0
	cvtss2sd	%xmm0, %xmm5
	subss	%xmm4, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movapd	%xmm2, %xmm4
	subsd	%xmm3, %xmm4
	movapd	%xmm4, 16(%rsp)         # 16-byte Spill
	movapd	.LCPI4_0(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm1
	xorpd	%xmm2, %xmm2
	movapd	%xmm4, %xmm3
	cmpltsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
	andnpd	%xmm4, %xmm2
	andpd	%xmm1, %xmm3
	orpd	%xmm2, %xmm3
	movapd	%xmm3, 128(%rsp)        # 16-byte Spill
	mulsd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm0
	addsd	%xmm5, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_2
# BB#1:                                 # %call.sqrt
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_2:                                # %entry.split
	movapd	%xmm0, %xmm1
	movapd	128(%rsp), %xmm2        # 16-byte Reload
	addsd	%xmm2, %xmm1
	mulsd	.LCPI4_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	jae	.LBB4_3
# BB#34:                                # %if.else.92
	divsd	.LCPI4_2(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_62
# BB#35:                                # %if.then.95
	movss	120(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	112(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB4_49
# BB#36:                                # %if.then.98
	testl	%ebp, %ebp
	je	.LBB4_46
# BB#37:                                # %if.then.100
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_39
# BB#38:                                # %call.sqrt301
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_39:                               # %if.then.100.split
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_41
# BB#40:                                # %call.sqrt302
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_41:                               # %if.then.100.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_43
# BB#42:                                # %call.sqrt303
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_43:                               # %if.then.100.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_45
# BB#44:                                # %call.sqrt304
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_45:                               # %if.then.100.split.split.split.split
	movsd	128(%rsp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	maxsd	%xmm0, %xmm7
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm4
	movl	$1, %esi
	movq	%r14, %rdi
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	96(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	R_obtuse_cone
	testl	%eax, %eax
	js	.LBB4_79
.LBB4_46:                               # %if.end.113
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB4_79
# BB#47:                                # %if.end.113
	xorps	%xmm0, %xmm0
	movss	112(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_48
	jnp	.LBB4_79
.LBB4_48:                               # %if.then.118
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	104(%rsp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movapd	%xmm6, %xmm4
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm4
	divsd	%xmm4, %xmm6
	movapd	%xmm0, %xmm4
	subsd	%xmm5, %xmm4
	mulsd	%xmm6, %xmm4
	addsd	%xmm5, %xmm4
	movapd	%xmm1, %xmm5
	subsd	%xmm3, %xmm5
	mulsd	%xmm6, %xmm5
	addsd	%xmm3, %xmm5
	xorpd	%xmm6, %xmm6
	movq	%r14, %rdi
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB4_19
.LBB4_3:                                # %if.then
	movss	120(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	112(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB4_20
# BB#4:                                 # %if.then.33
	testl	%ebp, %ebp
	je	.LBB4_15
# BB#5:                                 # %if.then.34
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 120(%rsp)        # 8-byte Spill
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm3
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_7
# BB#6:                                 # %call.sqrt293
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_7:                                # %if.then.34.split
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_9
# BB#8:                                 # %call.sqrt294
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_9:                                # %if.then.34.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_11
# BB#10:                                # %call.sqrt295
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_11:                               # %if.then.34.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	subsd	120(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_13
# BB#12:                                # %call.sqrt296
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_13:                               # %if.then.34.split.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	ucomisd	104(%rsp), %xmm1        # 8-byte Folded Reload
	movapd	%xmm1, %xmm2
	jbe	.LBB4_15
# BB#14:                                # %if.then.40
	movq	%r14, %rdi
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm4
	movapd	%xmm1, %xmm5
	movsd	104(%rsp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movapd	%xmm3, %xmm7
	callq	R_tensor_annulus
	testl	%eax, %eax
	js	.LBB4_79
.LBB4_15:                               # %if.end.50
	testl	%r15d, %r15d
	je	.LBB4_78
# BB#16:                                # %if.end.50
	xorps	%xmm0, %xmm0
	movss	112(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_78
# BB#17:                                # %if.then.54
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	xorpd	%xmm6, %xmm6
	movq	%r14, %rdi
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB4_18
.LBB4_62:                               # %if.else.153
	testl	%ebp, %ebp
	je	.LBB4_69
# BB#63:                                # %if.then.155
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 128(%rsp)        # 8-byte Spill
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, 112(%rsp)        # 8-byte Spill
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, 56(%rsp)         # 8-byte Spill
	leaq	168(%rsp), %rsi
	leaq	160(%rsp), %rdx
	leaq	152(%rsp), %rcx
	movq	%rbx, %rdi
	movapd	%xmm2, %xmm0
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	104(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	R_outer_circle
	testl	%eax, %eax
	js	.LBB4_64
# BB#65:                                # %if.end.164
	movsd	168(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	160(%rsp), %xmm5        # xmm5 = mem[0],zero
	ucomisd	128(%rsp), %xmm4        # 8-byte Folded Reload
	jne	.LBB4_67
	jp	.LBB4_67
# BB#66:                                # %if.end.164
	ucomisd	120(%rsp), %xmm5        # 8-byte Folded Reload
	jne	.LBB4_67
	jnp	.LBB4_69
.LBB4_67:                               # %if.then.171
	movsd	152(%rsp), %xmm6        # xmm6 = mem[0],zero
	movq	%r14, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm7
	callq	R_tensor_annulus
	testl	%eax, %eax
	js	.LBB4_68
.LBB4_69:                               # %if.end.180
	testl	%r15d, %r15d
	je	.LBB4_76
# BB#70:                                # %if.then.182
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 128(%rsp)        # 8-byte Spill
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, 112(%rsp)        # 8-byte Spill
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, 88(%rsp)         # 8-byte Spill
	leaq	192(%rsp), %rsi
	leaq	184(%rsp), %rdx
	leaq	176(%rsp), %rcx
	movq	%rbx, %rdi
	movapd	%xmm2, %xmm0
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	96(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	R_outer_circle
	testl	%eax, %eax
	js	.LBB4_71
# BB#72:                                # %if.end.191
	movsd	192(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	184(%rsp), %xmm5        # xmm5 = mem[0],zero
	ucomisd	128(%rsp), %xmm4        # 8-byte Folded Reload
	jne	.LBB4_74
	jp	.LBB4_74
# BB#73:                                # %if.end.191
	ucomisd	120(%rsp), %xmm5        # 8-byte Folded Reload
	jne	.LBB4_74
	jnp	.LBB4_76
.LBB4_74:                               # %if.then.199
	movsd	176(%rsp), %xmm6        # xmm6 = mem[0],zero
	movq	%r14, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm7
	callq	R_tensor_annulus
	testl	%eax, %eax
	js	.LBB4_75
.LBB4_76:                               # %if.end.208
	movb	$1, %cl
                                        # implicit-def: EAX
	jmp	.LBB4_77
.LBB4_20:                               # %if.else
	testl	%r15d, %r15d
	je	.LBB4_31
# BB#21:                                # %if.then.62
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 112(%rsp)        # 8-byte Spill
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm3
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_23
# BB#22:                                # %call.sqrt297
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_23:                               # %if.then.62.split
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_25
# BB#24:                                # %call.sqrt298
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_25:                               # %if.then.62.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_27
# BB#26:                                # %call.sqrt299
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_27:                               # %if.then.62.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_29
# BB#28:                                # %call.sqrt300
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_29:                               # %if.then.62.split.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	ucomisd	96(%rsp), %xmm1         # 8-byte Folded Reload
	movapd	%xmm1, %xmm2
	jbe	.LBB4_31
# BB#30:                                # %if.then.68
	movq	%r14, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm0, %xmm4
	movapd	%xmm1, %xmm5
	movsd	96(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movapd	%xmm3, %xmm7
	callq	R_tensor_annulus
	testl	%eax, %eax
	js	.LBB4_79
.LBB4_31:                               # %if.end.79
	testl	%ebp, %ebp
	je	.LBB4_78
# BB#32:                                # %if.end.79
	xorps	%xmm0, %xmm0
	movss	120(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_78
# BB#33:                                # %if.then.84
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	88(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	xorpd	%xmm6, %xmm6
	movq	%r14, %rdi
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB4_18:                               # %if.then.54
	movapd	%xmm0, %xmm4
	movapd	%xmm1, %xmm5
	jmp	.LBB4_19
.LBB4_49:                               # %if.else.125
	testl	%r15d, %r15d
	je	.LBB4_59
# BB#50:                                # %if.then.127
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_52
# BB#51:                                # %call.sqrt305
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_52:                               # %if.then.127.split
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_54
# BB#53:                                # %call.sqrt306
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_54:                               # %if.then.127.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_56
# BB#55:                                # %call.sqrt307
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_56:                               # %if.then.127.split.split.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	subsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm1
	subsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB4_58
# BB#57:                                # %call.sqrt308
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB4_58:                               # %if.then.127.split.split.split.split
	movsd	128(%rsp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	maxsd	%xmm0, %xmm7
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm4
	xorl	%esi, %esi
	movq	%r14, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	104(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	40(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	R_obtuse_cone
	testl	%eax, %eax
	js	.LBB4_79
.LBB4_59:                               # %if.end.140
	testl	%ebp, %ebp
	je	.LBB4_78
# BB#60:                                # %if.end.140
	xorps	%xmm0, %xmm0
	movss	120(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB4_61
	jnp	.LBB4_78
.LBB4_61:                               # %if.then.145
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	88(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	96(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	divsd	16(%rsp), %xmm6         # 16-byte Folded Reload
	movapd	%xmm0, %xmm4
	subsd	%xmm2, %xmm4
	mulsd	%xmm6, %xmm4
	addsd	%xmm2, %xmm4
	movapd	%xmm1, %xmm5
	subsd	%xmm3, %xmm5
	mulsd	%xmm6, %xmm5
	addsd	%xmm3, %xmm5
	xorpd	%xmm6, %xmm6
	movq	%r14, %rdi
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB4_19:                               # %if.then.54
	movapd	%xmm3, %xmm7
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	R_tensor_annulus        # TAILCALL
.LBB4_64:
	xorl	%ecx, %ecx
	jmp	.LBB4_77
.LBB4_71:
	xorl	%ecx, %ecx
	jmp	.LBB4_77
.LBB4_68:
	xorl	%ecx, %ecx
	jmp	.LBB4_77
.LBB4_75:
	xorl	%ecx, %ecx
.LBB4_77:                               # %cleanup
	testb	%cl, %cl
	je	.LBB4_79
.LBB4_78:                               # %if.end.215
	xorl	%eax, %eax
.LBB4_79:                               # %cleanup.216
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	R_extensions, .Lfunc_end4-R_extensions
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
.LCPI5_2:
	.quad	4607182418800017408     # double 1
.LCPI5_4:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI5_5:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI5_6:
	.quad	4643211215818981376     # double 256
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI5_3:
	.quad	4613937818241073152     # double 3.000000e+00
	.quad	4613937818241073152     # double 3.000000e+00
	.text
	.align	16, 0x90
	.type	R_tensor_annulus,@function
R_tensor_annulus:                       # @R_tensor_annulus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$1592, %rsp             # imm = 0x638
.Ltmp63:
	.cfi_def_cfa_offset 1648
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movsd	%xmm7, 120(%rsp)        # 8-byte Spill
	movsd	%xmm6, 144(%rsp)        # 8-byte Spill
	movsd	%xmm5, 168(%rsp)        # 8-byte Spill
	movsd	%xmm4, 160(%rsp)        # 8-byte Spill
	movsd	%xmm3, 112(%rsp)        # 8-byte Spill
	movsd	%xmm2, 136(%rsp)        # 8-byte Spill
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movq	%rdi, %r14
	movapd	%xmm4, %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, 96(%rsp)         # 16-byte Spill
	movapd	%xmm5, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, 80(%rsp)         # 16-byte Spill
	movapd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_2
# BB#1:                                 # %call.sqrt
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB5_2:                                # %entry.split
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 1520(%rsp)
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 1528(%rsp)
	movsd	160(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 1504(%rsp)
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 1512(%rsp)
	movapd	%xmm0, %xmm1
	movsd	136(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm1
	movsd	144(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm2
	jae	.LBB5_4
# BB#3:                                 # %entry.split
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jae	.LBB5_4
# BB#5:                                 # %if.else
	xorpd	%xmm0, %xmm0
	movapd	96(%rsp), %xmm5         # 16-byte Reload
	ucomisd	%xmm0, %xmm5
	leaq	1560(%rsp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	jae	.LBB5_6
# BB#10:                                # %if.else.23
	movapd	80(%rsp), %xmm6         # 16-byte Reload
	ucomisd	%xmm0, %xmm6
	movsd	120(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	112(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jb	.LBB5_12
# BB#11:                                # %if.then.25
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	movdqa	%xmm1, 1552(%rsp)
	xorpd	.LCPI5_1(%rip), %xmm5
	ucomisd	%xmm6, %xmm5
	setae	%al
	movzbl	%al, %edx
	jmp	.LBB5_9
.LBB5_4:                                # %if.then
	leaq	1560(%rsp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	movdqa	%xmm1, 1552(%rsp)
	movl	$1, %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	movsd	120(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	112(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jmp	.LBB5_13
.LBB5_6:                                # %if.then.11
	movapd	80(%rsp), %xmm6         # 16-byte Reload
	ucomisd	%xmm0, %xmm6
	movsd	120(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	112(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jb	.LBB5_8
# BB#7:                                 # %if.then.13
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 1552(%rsp)
	ucomisd	%xmm6, %xmm5
	setae	%al
	movzbl	%al, %edx
	xorl	%ebx, %ebx
	xorpd	%xmm0, %xmm0
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.31
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 1552(%rsp)
	ucomisd	%xmm5, %xmm6
	sbbl	%edx, %edx
	andl	$1, %edx
	xorl	%ebx, %ebx
	xorpd	%xmm0, %xmm0
	movabsq	$-4616189618054758400, %rax # imm = 0xBFF0000000000000
	jmp	.LBB5_13
.LBB5_8:                                # %if.else.17
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	movdqa	%xmm1, 1552(%rsp)
	xorpd	.LCPI5_1(%rip), %xmm6
	ucomisd	%xmm6, %xmm5
	sbbl	%edx, %edx
	andl	$1, %edx
.LBB5_9:                                # %if.end.40
	xorl	%eax, %eax
	xorl	%ebx, %ebx
.LBB5_13:                               # %if.end.40
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	movss	%xmm1, 128(%rsp)        # 4-byte Spill
	imulq	$284, %rbx, %rcx        # imm = 0x11C
	leaq	184(%rsp,%rcx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leal	1(%rbx), %ecx
	imulq	$284, %rcx, %rcx        # imm = 0x11C
	leaq	184(%rsp,%rcx), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	leal	2(%rbx), %ecx
	imulq	$284, %rcx, %rcx        # imm = 0x11C
	leaq	184(%rsp,%rcx), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leal	3(%rbx), %ecx
	andl	$3, %ecx
	imulq	$284, %rcx, %rcx        # imm = 0x11C
	leaq	184(%rsp,%rcx), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	jmp	.LBB5_14
	.align	16, 0x90
.LBB5_53:                               # %for.inc.322.for.body_crit_edge
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	1552(%rsp), %rax
.LBB5_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movl	%edx, 152(%rsp)         # 4-byte Spill
	xorpd	.LCPI5_1(%rip), %xmm0
	movlpd	%xmm0, 1536(%rsp)
	movq	%rax, 1544(%rsp)
	leaq	1312(%rsp), %rdi
	leaq	1520(%rsp), %rsi
	testl	%edx, %edx
	je	.LBB5_15
# BB#16:                                # %if.else.51
                                        #   in Loop: Header=BB5_14 Depth=1
	leaq	1552(%rsp), %r15
	movq	%r15, %rdx
	leaq	1536(%rsp), %rbp
	jmp	.LBB5_17
	.align	16, 0x90
.LBB5_15:                               # %if.then.48
                                        #   in Loop: Header=BB5_14 Depth=1
	leaq	1536(%rsp), %rbp
	movq	%rbp, %r15
	movq	%r15, %rdx
	leaq	1552(%rsp), %rbp
.LBB5_17:                               # %if.end.56
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	%rbp, %rcx
	movapd	%xmm2, %xmm0
	callq	make_quadrant_arc
	leaq	1408(%rsp), %rdi
	leaq	1504(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	make_quadrant_arc
	movapd	1360(%rsp), %xmm0
	movapd	1408(%rsp), %xmm1
	movapd	%xmm0, %xmm2
	addpd	%xmm2, %xmm2
	addpd	%xmm1, %xmm2
	movapd	.LCPI5_3(%rip), %xmm3   # xmm3 = [3.000000e+00,3.000000e+00]
	divpd	%xmm3, %xmm2
	movapd	%xmm2, 1376(%rsp)
	addpd	%xmm1, %xmm1
	addpd	%xmm0, %xmm1
	divpd	%xmm3, %xmm1
	movapd	%xmm1, 1392(%rsp)
	movapd	1312(%rsp), %xmm0
	movapd	1456(%rsp), %xmm1
	movapd	%xmm1, %xmm2
	addpd	%xmm2, %xmm2
	addpd	%xmm0, %xmm2
	divpd	%xmm3, %xmm2
	movapd	%xmm2, 1472(%rsp)
	addpd	%xmm0, %xmm0
	addpd	%xmm1, %xmm0
	divpd	%xmm3, %xmm0
	movapd	%xmm0, 1488(%rsp)
	movl	%ebx, %r13d
	leaq	456(%rsp), %r15
	movl	$40, %r12d
	.align	16, 0x90
.LBB5_18:                               # %for.body.129
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%r13), %eax
	andl	$-4, %eax
	movl	%r13d, %ecx
	subl	%eax, %ecx
	movq	8(%r14), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	movsd	1272(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1280(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	movslq	%ecx, %rax
	imulq	$284, %rax, %rbx        # imm = 0x11C
	leaq	176(%rsp,%rbx), %rbp
	movq	%rbp, %rsi
	callq	gs_point_transform2fixed
	movl	$132, %ecx
	testl	%eax, %eax
	jns	.LBB5_26
# BB#19:                                # %if.then.145
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	8(%r14), %rdi
	addq	%rcx, %rdi
	movsd	1272(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1280(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	leaq	1576(%rsp), %rsi
	callq	gs_point_transform
	movsd	1576(%rsp), %xmm0       # xmm0 = mem[0],zero
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	ucomisd	.LCPI5_4(%rip), %xmm0
	movl	$2147227647, %ecx       # imm = 0x7FFC17FF
	ja	.LBB5_22
# BB#20:                                # %cond.false.i
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %ecx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_22
# BB#21:                                # %cond.false.5.i
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB5_22:                               # %cond.end.7.i
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%ecx, (%rbp)
	movsd	1584(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI5_4(%rip), %xmm0
	ja	.LBB5_25
# BB#23:                                # %cond.false.14.i
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %eax      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_25
# BB#24:                                # %cond.false.19.i
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB5_25:                               # %gs_point_transform2fixed_clamped.exit
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%eax, 180(%rsp,%rbx)
	movl	$132, %ecx
.LBB5_26:                               # %if.end.162
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	8(%r14), %rdi
	addq	%rcx, %rdi
	movsd	1288(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1296(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	leaq	440(%rsp,%rbx), %rbp
	movq	%rbp, %rsi
	callq	gs_point_transform2fixed
	movl	$132, %ecx
	testl	%eax, %eax
	jns	.LBB5_34
# BB#27:                                # %if.then.180
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	8(%r14), %rdi
	addq	%rcx, %rdi
	movsd	1288(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1296(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	leaq	1576(%rsp), %rsi
	callq	gs_point_transform
	movsd	1576(%rsp), %xmm0       # xmm0 = mem[0],zero
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	ucomisd	.LCPI5_4(%rip), %xmm0
	movl	$2147227647, %ecx       # imm = 0x7FFC17FF
	ja	.LBB5_30
# BB#28:                                # %cond.false.i.81
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %ecx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_30
# BB#29:                                # %cond.false.5.i.84
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB5_30:                               # %cond.end.7.i.89
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%ecx, (%rbp)
	movsd	1584(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI5_4(%rip), %xmm0
	ja	.LBB5_33
# BB#31:                                # %cond.false.14.i.91
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %eax      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_33
# BB#32:                                # %cond.false.19.i.94
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB5_33:                               # %gs_point_transform2fixed_clamped.exit97
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%eax, 444(%rsp,%rbx)
	movl	$132, %ecx
.LBB5_34:                               # %if.end.197
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	8(%r14), %rdi
	addq	%rcx, %rdi
	movsd	1304(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1312(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	leaq	448(%rsp,%rbx), %rbp
	movq	%rbp, %rsi
	callq	gs_point_transform2fixed
	testl	%eax, %eax
	jns	.LBB5_42
# BB#35:                                # %if.then.216
                                        #   in Loop: Header=BB5_18 Depth=2
	movq	8(%r14), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	movsd	1304(%rsp,%r12), %xmm0  # xmm0 = mem[0],zero
	movsd	1312(%rsp,%r12), %xmm1  # xmm1 = mem[0],zero
	leaq	1576(%rsp), %rsi
	callq	gs_point_transform
	movsd	1576(%rsp), %xmm0       # xmm0 = mem[0],zero
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	ucomisd	.LCPI5_4(%rip), %xmm0
	movl	$2147227647, %ecx       # imm = 0x7FFC17FF
	ja	.LBB5_38
# BB#36:                                # %cond.false.i.103
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %ecx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_38
# BB#37:                                # %cond.false.5.i.106
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB5_38:                               # %cond.end.7.i.111
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%ecx, (%rbp)
	movsd	1584(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI5_4(%rip), %xmm0
	ja	.LBB5_41
# BB#39:                                # %cond.false.14.i.113
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	$-2147227647, %eax      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB5_41
# BB#40:                                # %cond.false.19.i.116
                                        #   in Loop: Header=BB5_18 Depth=2
	mulsd	.LCPI5_6(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB5_41:                               # %gs_point_transform2fixed_clamped.exit119
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%eax, 452(%rsp,%rbx)
.LBB5_42:                               # %if.end.233
                                        #   in Loop: Header=BB5_18 Depth=2
	movl	%r13d, %eax
	andl	$1, %eax
	movl	%eax, (%r15)
	addq	$48, %r12
	addq	$284, %r15              # imm = 0x11C
	incl	%r13d
	cmpq	$232, %r12
	jne	.LBB5_18
# BB#43:                                # %for.end
                                        #   in Loop: Header=BB5_14 Depth=1
	movss	128(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	120(%rsp), %rax         # 8-byte Reload
	movss	%xmm0, (%rax)
	movq	112(%rsp), %rax         # 8-byte Reload
	movss	%xmm0, (%rax)
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	80(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
	movl	$0, 472(%rsp)
	movl	$0, 188(%rsp)
	movl	$0, 1040(%rsp)
	movl	$0, 756(%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	leaq	176(%rsp), %rsi
	callq	patch_fill
	testl	%eax, %eax
	js	.LBB5_54
# BB#44:                                # %if.end.290
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	168(%rsp), %rsi         # 8-byte Reload
	cmpl	$2, %esi
	je	.LBB5_51
# BB#45:                                # %if.end.290
                                        #   in Loop: Header=BB5_14 Depth=1
	cmpl	$1, %esi
	jne	.LBB5_46
# BB#49:                                # %if.then.302
                                        #   in Loop: Header=BB5_14 Depth=1
	movsd	1552(%rsp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI5_1(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, 1552(%rsp)
	movq	160(%rsp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, (%rax)
	movl	$1, %edx
	jmp	.LBB5_50
	.align	16, 0x90
.LBB5_51:                               # %if.then.312
                                        #   in Loop: Header=BB5_14 Depth=1
	movaps	1552(%rsp), %xmm0
	movaps	%xmm0, 1536(%rsp)
	movsd	1544(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorpd	.LCPI5_1(%rip), %xmm0
	movlpd	%xmm0, 1552(%rsp)
	movq	1536(%rsp), %rax
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	xorl	%edx, %edx
.LBB5_50:                               # %for.inc.322.thread
                                        #   in Loop: Header=BB5_14 Depth=1
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	56(%rsp), %rbx          # 8-byte Reload
	incl	%esi
	jmp	.LBB5_53
	.align	16, 0x90
.LBB5_46:                               # %if.end.290
                                        #   in Loop: Header=BB5_14 Depth=1
	testl	%esi, %esi
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	56(%rsp), %rbx          # 8-byte Reload
	jne	.LBB5_52
# BB#47:                                # %if.then.293
                                        #   in Loop: Header=BB5_14 Depth=1
	movaps	1552(%rsp), %xmm0
	movaps	%xmm0, 1536(%rsp)
	movq	1544(%rsp), %rax
	movq	%rax, 1552(%rsp)
	movsd	1536(%rsp), %xmm0       # xmm0 = mem[0],zero
	xorpd	.LCPI5_1(%rip), %xmm0
	movq	160(%rsp), %rax         # 8-byte Reload
	movlpd	%xmm0, (%rax)
	xorl	%edx, %edx
	incl	%esi
	jmp	.LBB5_53
.LBB5_52:                               # %for.inc.322
                                        #   in Loop: Header=BB5_14 Depth=1
	incl	%esi
	xorl	%eax, %eax
	cmpl	$3, %esi
	movl	152(%rsp), %edx         # 4-byte Reload
	jle	.LBB5_53
.LBB5_54:                               # %cleanup.325
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	R_tensor_annulus, .Lfunc_end5-R_tensor_annulus
	.cfi_endproc

	.align	16, 0x90
	.type	R_fill_rect_with_const_color,@function
R_fill_rect_with_const_color:           # @R_fill_rect_with_const_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp73:
	.cfi_def_cfa_offset 448
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movss	%xmm0, 412(%rsp)
	movq	16(%r14), %r15
	movq	328(%r14), %rdi
	leaq	16(%rsp), %rdx
	leaq	412(%rsp), %rsi
	callq	*8(%rdi)
	testl	%eax, %eax
	js	.LBB6_2
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	movq	(%r15), %rax
	movq	%r15, %rsi
	callq	*40(%rax)
	movl	412(%rsp), %eax
	movl	%eax, 4(%rsp)
	movl	%eax, (%rsp)
	movq	(%rbx), %rax
	movq	%rax, 272(%rsp)
	movl	8(%rbx), %ecx
	leaq	288(%rsp), %rdx
	movl	%ecx, 288(%rsp)
	movl	4(%rbx), %ecx
	movl	%ecx, 292(%rsp)
	leaq	304(%rsp), %rcx
	movl	%eax, 304(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 308(%rsp)
	leaq	320(%rsp), %rax
	movq	8(%rbx), %rsi
	movq	%rsi, 320(%rsp)
	leaq	(%rsp), %rsi
	movq	%rsi, 328(%rsp)
	movq	%rsi, 312(%rsp)
	movq	%rsi, 296(%rsp)
	movq	%rsi, 280(%rsp)
	leaq	272(%rsp), %rsi
	movq	%rsi, 344(%rsp)
	movq	%rdx, 352(%rsp)
	movq	%rcx, 360(%rsp)
	movq	%rax, 368(%rsp)
	leaq	344(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	constant_color_quadrangle
.LBB6_2:                                # %cleanup
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	R_fill_rect_with_const_color, .Lfunc_end6-R_fill_rect_with_const_color
	.cfi_endproc

	.align	16, 0x90
	.type	compute_radial_shading_span_extended,@function
compute_radial_shading_span_extended:   # @compute_radial_shading_span_extended
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 48
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	compute_radial_shading_span_extended_point
	movl	%eax, %ebp
	movl	$-1, %r14d
	cmpl	$-1, %ebp
	je	.LBB7_5
# BB#1:                                 # %if.end
	movl	$2, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_point
	cmpl	%eax, %ebp
	jne	.LBB7_5
# BB#2:                                 # %if.end.4
	movl	$3, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_point
	cmpl	%eax, %ebp
	jne	.LBB7_5
# BB#3:                                 # %if.end.8
	movl	$4, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_point
	cmpl	%eax, %ebp
	jne	.LBB7_5
# BB#4:                                 # %if.end.12
	movl	$1, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_side
	movl	$2, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_side
	movl	$3, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_side
	movl	$4, %esi
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	compute_radial_shading_span_extended_side
	movl	%ebp, %r14d
.LBB7_5:                                # %cleanup
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	compute_radial_shading_span_extended, .Lfunc_end7-compute_radial_shading_span_extended
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI8_2:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	compute_radial_shading_span_extended_point,@function
compute_radial_shading_span_extended_point: # @compute_radial_shading_span_extended_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 160
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movsd	16(%rbx), %xmm7         # xmm7 = mem[0],zero
	movsd	(%rbx), %xmm5           # xmm5 = mem[0],zero
	movsd	%xmm5, (%rsp)           # 8-byte Spill
	movsd	8(%rbx), %xmm4          # xmm4 = mem[0],zero
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	subsd	%xmm5, %xmm7
	movsd	%xmm7, 40(%rsp)         # 8-byte Spill
	movsd	24(%rbx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm4, %xmm2
	movapd	%xmm2, 96(%rsp)         # 16-byte Spill
	movslq	%ebp, %rax
	shlq	$4, %rax
	movsd	96(%rbx,%rax), %xmm3    # xmm3 = mem[0],zero
	movsd	104(%rbx,%rax), %xmm6   # xmm6 = mem[0],zero
	subsd	%xmm5, %xmm3
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	subsd	%xmm4, %xmm6
	movsd	%xmm6, 64(%rsp)         # 8-byte Spill
	movapd	%xmm7, %xmm3
	mulsd	%xmm3, %xmm3
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm2
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	movq	$0, 128(%rsp)
	movapd	%xmm2, %xmm0
	callq	fabs
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_1
# BB#5:                                 # %if.end.83
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	(%rsp), %xmm6           # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm1, %xmm6
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	mulsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	8(%rsp), %xmm5          # 8-byte Reload
                                        # xmm5 = mem[0],zero
	subsd	%xmm1, %xmm5
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm2
	movsd	64(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	%xmm4, %xmm6
	mulsd	%xmm3, %xmm5
	addsd	%xmm6, %xmm5
	divsd	%xmm5, %xmm1
	mulsd	.LCPI8_2(%rip), %xmm1
	movsd	%xmm1, 112(%rsp)
	movl	$1, 128(%rsp)
	leaq	128(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	store_roots
	movl	$11, %eax
	jmp	.LBB8_6
.LBB8_1:                                # %if.else
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	40(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm3, %xmm4
	addsd	%xmm1, %xmm4
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm3
	mulsd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm0
	movl	$-1, %eax
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.LBB8_6
# BB#2:                                 # %if.else.55
	movapd	%xmm1, 96(%rsp)         # 16-byte Spill
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB8_4
# BB#3:                                 # %call.sqrt
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	callq	sqrt
.LBB8_4:                                # %if.else.55.split
	xorpd	%xmm1, %xmm1
	movaps	16(%rsp), %xmm4         # 16-byte Reload
	ucomisd	%xmm1, %xmm4
	seta	%al
	movapd	.LCPI8_1(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm1
	movzbl	%al, %eax
	movd	%eax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	psllq	$63, %xmm2
	psrad	$31, %xmm2
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	movapd	%xmm1, %xmm3
	unpcklpd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0]
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	andpd	%xmm2, %xmm3
	andnpd	%xmm0, %xmm2
	orpd	%xmm3, %xmm2
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	addpd	%xmm2, %xmm0
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	divpd	%xmm4, %xmm0
	movapd	%xmm0, 112(%rsp)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 128(%rsp)
	leaq	128(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%ebp, %ecx
	callq	store_roots
	movl	$15, %eax
.LBB8_6:                                # %cleanup.92
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	compute_radial_shading_span_extended_point, .Lfunc_end8-compute_radial_shading_span_extended_point
	.cfi_endproc

	.align	16, 0x90
	.type	compute_radial_shading_span_extended_side,@function
compute_radial_shading_span_extended_side: # @compute_radial_shading_span_extended_side
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 32
	movl	%esi, %r9d
	movq	$0, 16(%rsp)
	movslq	%r9d, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movsd	96(%rdi,%rcx), %xmm2    # xmm2 = mem[0],zero
	incl	%eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	movsd	96(%rdi,%rdx), %xmm3    # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm2
	jne	.LBB9_1
	jnp	.LBB9_2
.LBB9_1:                                # %if.then
	movsd	(%rdi), %xmm6           # xmm6 = mem[0],zero
	movsd	16(%rdi), %xmm5         # xmm5 = mem[0],zero
	movapd	%xmm2, %xmm4
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movsd	104(%rdi,%rcx), %xmm4   # xmm4 = mem[0],zero
	movsd	8(%rdi), %xmm6          # xmm6 = mem[0],zero
	movsd	24(%rdi), %xmm5         # xmm5 = mem[0],zero
.LBB9_3:                                # %if.end
	subsd	%xmm6, %xmm4
	subsd	%xmm6, %xmm5
	movapd	%xmm4, %xmm6
	subsd	%xmm0, %xmm6
	movapd	%xmm5, %xmm7
	addsd	%xmm1, %xmm7
	subsd	%xmm0, %xmm7
	divsd	%xmm7, %xmm6
	movsd	%xmm6, (%rsp)
	addsd	%xmm0, %xmm4
	subsd	%xmm1, %xmm5
	addsd	%xmm0, %xmm5
	divsd	%xmm5, %xmm4
	movsd	%xmm4, 8(%rsp)
	ucomisd	%xmm4, %xmm6
	jbe	.LBB9_4
# BB#5:                                 # %if.then.30
	movsd	%xmm4, (%rsp)
	movsd	%xmm6, 8(%rsp)
	movapd	%xmm6, %xmm5
	jmp	.LBB9_6
.LBB9_4:
	movapd	%xmm4, %xmm5
	movapd	%xmm6, %xmm4
.LBB9_6:                                # %for.cond.preheader
	subsd	%xmm0, %xmm1
	leaq	104(%rdi,%rcx), %rsi
	leaq	104(%rdi,%rdx), %rax
	ucomisd	%xmm3, %xmm2
	jne	.LBB9_7
	jnp	.LBB9_8
.LBB9_7:                                # %if.then.39
	movsd	24(%rdi), %xmm6         # xmm6 = mem[0],zero
	subsd	8(%rdi), %xmm6
	addsd	%xmm0, %xmm6
	mulsd	%xmm1, %xmm4
	addsd	%xmm6, %xmm4
	movsd	(%rax), %xmm7           # xmm7 = mem[0],zero
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.57
	movsd	16(%rdi), %xmm6         # xmm6 = mem[0],zero
	subsd	(%rdi), %xmm6
	addsd	%xmm0, %xmm6
	mulsd	%xmm1, %xmm4
	addsd	%xmm6, %xmm4
	movapd	%xmm2, %xmm6
	movapd	%xmm3, %xmm7
.LBB9_9:                                # %if.end.76
	ucomisd	%xmm6, %xmm7
	jbe	.LBB9_12
# BB#10:                                # %cond.true
	ucomisd	%xmm4, %xmm7
	jb	.LBB9_15
# BB#11:                                # %cond.true
	ucomisd	%xmm6, %xmm4
	jae	.LBB9_14
	jmp	.LBB9_15
.LBB9_12:                               # %cond.false
	ucomisd	%xmm7, %xmm4
	jb	.LBB9_15
# BB#13:                                # %cond.false
	ucomisd	%xmm4, %xmm6
	jb	.LBB9_15
.LBB9_14:                               # %if.then.88
	movl	$1, 16(%rsp)
.LBB9_15:                               # %if.end.91
	ucomisd	%xmm3, %xmm2
	jne	.LBB9_17
	jp	.LBB9_17
	jmp	.LBB9_16
.LBB9_17:                               # %if.then.39.1
	movsd	24(%rdi), %xmm2         # xmm2 = mem[0],zero
	subsd	8(%rdi), %xmm2
	jmp	.LBB9_18
.LBB9_16:                               # %if.else.57.1
	leaq	96(%rdi,%rcx), %rsi
	leaq	96(%rdi,%rdx), %rax
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	subsd	(%rdi), %xmm2
.LBB9_18:                               # %if.end.76.1
	addsd	%xmm0, %xmm2
	mulsd	%xmm5, %xmm1
	addsd	%xmm2, %xmm1
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB9_19
# BB#21:                                # %cond.true.1
	ucomisd	%xmm1, %xmm3
	jb	.LBB9_24
# BB#22:                                # %cond.true.1
	ucomisd	%xmm2, %xmm1
	jae	.LBB9_23
	jmp	.LBB9_24
.LBB9_19:                               # %cond.false.1
	ucomisd	%xmm3, %xmm1
	jb	.LBB9_24
# BB#20:                                # %cond.false.1
	ucomisd	%xmm1, %xmm2
	jb	.LBB9_24
.LBB9_23:                               # %if.then.88.1
	movl	$1, 20(%rsp)
.LBB9_24:                               # %if.end.91.1
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	callq	store_roots
	addq	$24, %rsp
	retq
.Lfunc_end9:
	.size	compute_radial_shading_span_extended_side, .Lfunc_end9-compute_radial_shading_span_extended_side
	.cfi_endproc

	.align	16, 0x90
	.type	store_roots,@function
store_roots:                            # @store_roots
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 40
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r12, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %r15, -16
	movslq	%ecx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	leaq	96(%rdi,%rcx), %r9
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	96(%rdi,%rcx), %r11
	leaq	104(%rdi,%rcx), %r14
	incl	%eax
	cltq
	shlq	$4, %rax
	leaq	96(%rdi,%rax), %r10
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	movq	%rdx, %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rsi,%rcx)
	je	.LBB10_19
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, 72(%rdi)
	je	.LBB10_3
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	64(%rdi), %xmm3         # xmm3 = mem[0],zero
	leaq	(%rdx,%rax,8), %r15
	movsd	(%rdx,%rcx,2), %xmm2    # xmm2 = mem[0],zero
	movd	%xmm2, %r12
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_5
	jnp	.LBB10_6
.LBB10_5:                               # %lor.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm3, %xmm1
	jae	.LBB10_6
# BB#7:                                 # %lor.end
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm2, %xmm3
	jb	.LBB10_19
	jmp	.LBB10_8
	.align	16, 0x90
.LBB10_3:                               # %if.end.if.then.15_crit_edge
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	(%rdx,%rcx,2), %xmm2    # xmm2 = mem[0],zero
	movd	%xmm2, %r12
	movq	%rbx, %r15
	jmp	.LBB10_8
.LBB10_6:                               # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	%xmm3, %xmm2
	jb	.LBB10_19
.LBB10_8:                               # %if.then.15
                                        #   in Loop: Header=BB10_1 Depth=1
	testl	%r8d, %r8d
	movupd	(%rdi), %xmm3
	movupd	16(%rdi), %xmm4
	subpd	%xmm3, %xmm4
	movapd	%xmm2, %xmm5
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm4, %xmm5
	addpd	%xmm3, %xmm5
	movupd	(%r9), %xmm4
	movapd	%xmm4, %xmm3
	subpd	%xmm5, %xmm3
	movsd	(%r14), %xmm5           # xmm5 = mem[0],zero
	movhpd	(%r11), %xmm5
	movapd	%xmm4, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	subpd	%xmm6, %xmm5
	je	.LBB10_11
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB10_1 Depth=1
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	mulpd	%xmm3, %xmm5
	movapd	%xmm5, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	addsd	%xmm5, %xmm6
	ucomisd	%xmm1, %xmm6
	jb	.LBB10_13
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movupd	(%r10), %xmm5
	subpd	%xmm4, %xmm5
	mulpd	%xmm5, %xmm3
	movapd	%xmm3, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	addsd	%xmm3, %xmm4
	ucomisd	%xmm1, %xmm4
	jae	.LBB10_12
	jmp	.LBB10_13
.LBB10_11:                              # %if.else.i
                                        #   in Loop: Header=BB10_1 Depth=1
	mulpd	%xmm5, %xmm3
	movapd	%xmm3, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	subsd	%xmm4, %xmm3
	ucomisd	%xmm3, %xmm1
	jbe	.LBB10_13
.LBB10_12:                              # %if.then.68.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, 84(%rdi,%rcx)
.LBB10_13:                              # %radial_shading_external_contact.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, 76(%rdi,%rcx)
	je	.LBB10_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	32(%rdi,%rcx,4), %xmm3  # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB10_17
# BB#16:                                # %if.then.43
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	%xmm2, 32(%rdi,%rcx,4)
	movsd	(%r15), %xmm2           # xmm2 = mem[0],zero
.LBB10_17:                              # %if.end.50
                                        #   in Loop: Header=BB10_1 Depth=1
	ucomisd	40(%rdi,%rcx,4), %xmm2
	jbe	.LBB10_19
# BB#18:                                # %if.then.59
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	%xmm2, 40(%rdi,%rcx,4)
	jmp	.LBB10_19
.LBB10_14:                              # %if.then.22
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	%r12, 40(%rdi,%rcx,4)
	movq	%r12, 32(%rdi,%rcx,4)
	movl	$1, 76(%rdi,%rcx)
	.align	16, 0x90
.LBB10_19:                              # %cleanup
                                        #   in Loop: Header=BB10_1 Depth=1
	incq	%rax
	addq	$8, %rbx
	addq	$4, %rcx
	cmpq	$8, %rcx
	jne	.LBB10_1
# BB#20:                                # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	store_roots, .Lfunc_end10-store_roots
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_1:
	.quad	4609048260125637004     # double 1.4142999999999999
.LCPI11_2:
	.quad	4502148214488346440     # double 9.9999999999999995E-8
	.text
	.align	16, 0x90
	.type	R_obtuse_cone,@function
R_obtuse_cone:                          # @R_obtuse_cone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 128
.Ltmp101:
	.cfi_offset %rbx, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movsd	%xmm7, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	subsd	%xmm0, %xmm3
	movsd	%xmm3, 80(%rsp)         # 8-byte Spill
	subsd	%xmm1, %xmm4
	movsd	%xmm4, 88(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm0
	movapd	.LCPI11_0(%rip), %xmm1  # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	movapd	%xmm0, %xmm5
	cmpltsd	%xmm2, %xmm5
	movapd	%xmm5, %xmm2
	andnpd	%xmm0, %xmm2
	andpd	%xmm1, %xmm5
	orpd	%xmm2, %xmm5
	movapd	%xmm5, 32(%rsp)         # 16-byte Spill
	movapd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm4, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB11_2
# BB#1:                                 # %call.sqrt
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB11_2:                               # %entry.split
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	subsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	mulsd	%xmm1, %xmm1
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB11_4
# BB#3:                                 # %call.sqrt1
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB11_4:                               # %entry.split.split
	movsd	56(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	.LCPI11_1(%rip), %xmm6
	movsd	64(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movapd	%xmm3, %xmm1
	jbe	.LBB11_7
# BB#5:                                 # %if.then
	movsd	80(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	88(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	mulsd	%xmm7, %xmm1
	addsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	addsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	mulsd	%xmm6, %xmm7
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm7
	movsd	%xmm7, 88(%rsp)         # 8-byte Spill
	movapd	%xmm0, %xmm2
	subsd	%xmm7, %xmm2
	mulsd	%xmm6, %xmm5
	divsd	%xmm3, %xmm5
	movsd	%xmm5, 80(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm3
	addsd	%xmm5, %xmm3
	movapd	%xmm0, %xmm4
	subsd	%xmm5, %xmm4
	movsd	%xmm4, 72(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm5
	subsd	%xmm7, %xmm5
	movsd	%xmm5, 56(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	R_fill_triangle_new
	testl	%eax, %eax
	js	.LBB11_9
# BB#6:                                 # %if.end
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm5
	subsd	80(%rsp), %xmm5         # 8-byte Folded Reload
	movsd	88(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm4
	movq	%rbx, %rdi
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	jmp	R_fill_triangle_new     # TAILCALL
.LBB11_7:                               # %if.else
	movapd	%xmm6, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm6
	divsd	%xmm0, %xmm6
	movsd	%xmm6, 56(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm1, %xmm4
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm4
	movsd	%xmm4, 80(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm1, %xmm5
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm5
	movsd	%xmm5, 88(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm7
	callq	R_tensor_annulus
	testl	%ebp, %ebp
	je	.LBB11_9
# BB#8:                                 # %if.else
	testl	%eax, %eax
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	js	.LBB11_9
# BB#10:                                # %if.then.73
	xorpd	%xmm6, %xmm6
	movq	%rbx, %rdi
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm4
	movapd	%xmm1, %xmm5
	movapd	%xmm3, %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	jmp	R_tensor_annulus        # TAILCALL
.LBB11_9:                               # %cleanup.80
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	R_obtuse_cone, .Lfunc_end11-R_obtuse_cone
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	R_outer_circle,@function
R_outer_circle:                         # @R_outer_circle
	.cfi_startproc
# BB#0:                                 # %entry
	unpcklpd	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0]
	movapd	%xmm0, %xmm4
	unpcklpd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0]
	subpd	%xmm4, %xmm3
	xorpd	%xmm4, %xmm4
	movapd	%xmm3, %xmm6
	cmpltpd	%xmm4, %xmm6
	movapd	.LCPI12_0(%rip), %xmm4  # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm3, %xmm4
	andpd	%xmm6, %xmm4
	andnpd	%xmm3, %xmm6
	orpd	%xmm4, %xmm6
	movapd	%xmm6, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	ucomisd	%xmm4, %xmm6
	jbe	.LBB12_4
# BB#1:                                 # %if.then
	movapd	%xmm3, %xmm7
	addsd	%xmm5, %xmm7
	subsd	%xmm2, %xmm7
	movl	$-28, %eax
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm7
	jne	.LBB12_2
	jnp	.LBB12_13
.LBB12_2:                               # %if.end
	movapd	%xmm3, %xmm6
	subsd	%xmm5, %xmm6
	addsd	%xmm2, %xmm6
	ucomisd	%xmm4, %xmm6
	jne	.LBB12_3
	jnp	.LBB12_13
.LBB12_3:                               # %if.end.19
	movsd	(%rdi), %xmm4           # xmm4 = mem[0],zero
	movsd	16(%rdi), %xmm8         # xmm8 = mem[0],zero
	subsd	%xmm0, %xmm4
	subsd	%xmm2, %xmm4
	divsd	%xmm7, %xmm4
	subsd	%xmm0, %xmm8
	jmp	.LBB12_7
.LBB12_4:                               # %if.else
	movapd	%xmm3, %xmm6
	shufpd	$1, %xmm6, %xmm6        # xmm6 = xmm6[1,0]
	movapd	%xmm6, %xmm7
	addsd	%xmm5, %xmm7
	subsd	%xmm2, %xmm7
	movl	$-28, %eax
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm7
	jne	.LBB12_5
	jnp	.LBB12_13
.LBB12_5:                               # %if.end.37
	subsd	%xmm5, %xmm6
	addsd	%xmm2, %xmm6
	ucomisd	%xmm4, %xmm6
	jne	.LBB12_6
	jnp	.LBB12_13
.LBB12_6:                               # %if.end.43
	movsd	8(%rdi), %xmm4          # xmm4 = mem[0],zero
	movsd	24(%rdi), %xmm8         # xmm8 = mem[0],zero
	subsd	%xmm1, %xmm4
	subsd	%xmm2, %xmm4
	divsd	%xmm7, %xmm4
	subsd	%xmm1, %xmm8
.LBB12_7:                               # %if.end.59
	addsd	%xmm2, %xmm8
	divsd	%xmm6, %xmm8
	ucomisd	.LCPI12_1(%rip), %xmm4
	jb	.LBB12_10
# BB#8:                                 # %if.end.59
	ucomisd	.LCPI12_1(%rip), %xmm8
	jb	.LBB12_10
# BB#9:                                 # %if.then.62
	maxsd	%xmm8, %xmm4
	jmp	.LBB12_12
.LBB12_10:                              # %if.else.68
	ucomisd	.LCPI12_1(%rip), %xmm4
	jae	.LBB12_12
# BB#11:                                # %if.else.71
	maxsd	.LCPI12_1(%rip), %xmm8
	movapd	%xmm8, %xmm4
.LBB12_12:                              # %if.end.77
	movapd	%xmm2, %xmm6
	subsd	%xmm5, %xmm6
	subsd	%xmm2, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm2, %xmm5
	divsd	%xmm6, %xmm2
	xorpd	%xmm6, %xmm6
	xorpd	%xmm7, %xmm7
	maxsd	%xmm5, %xmm7
	cmpltsd	%xmm6, %xmm5
	andpd	%xmm5, %xmm2
	andnpd	%xmm4, %xmm5
	orpd	%xmm2, %xmm5
	movsd	%xmm7, (%rcx)
	movapd	%xmm3, %xmm2
	mulsd	%xmm5, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, (%rsi)
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	mulsd	%xmm5, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, (%rdx)
	xorl	%eax, %eax
.LBB12_13:                              # %cleanup
	retq
.Lfunc_end12:
	.size	R_outer_circle, .Lfunc_end12-R_outer_circle
	.cfi_endproc

	.align	16, 0x90
	.type	R_fill_triangle_new,@function
R_fill_triangle_new:                    # @R_fill_triangle_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
	subq	$120, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 144
.Ltmp106:
	.cfi_offset %rbx, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movsd	%xmm6, 8(%rsp)          # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	leaq	64(%rsp), %rsi
	movl	$1, %edx
	callq	reserve_colors
	movq	64(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 80(%rsp)
	movq	8(%rbx), %rdi
	addq	$132, %rdi
	leaq	104(%rsp), %rsi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_point_transform2fixed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	addq	$132, %rdi
	leaq	88(%rsp), %rsi
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_point_transform2fixed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#2:                                 # %if.end.15
	movq	8(%rbx), %rdi
	addq	$132, %rdi
	leaq	72(%rsp), %rsi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_point_transform2fixed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_4
# BB#3:                                 # %if.then.17
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	64(%rsp), %rdi
	movss	%xmm0, 4(%rdi)
	movss	%xmm0, (%rdi)
	movq	%rbx, %rsi
	callq	patch_resolve_color
	leaq	104(%rsp), %rsi
	leaq	88(%rsp), %rdx
	leaq	72(%rsp), %rcx
	movq	%rbx, %rdi
	callq	mesh_triangle
	movl	%eax, %ebp
.LBB13_4:                               # %if.end.22
	movq	696(%rbx), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	release_colors
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	R_fill_triangle_new, .Lfunc_end13-R_fill_triangle_new
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
