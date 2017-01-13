	.text
	.file	"invert.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI0_1:
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
.LCPI0_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	opj_matrix_inversion_f
	.align	16, 0x90
	.type	opj_matrix_inversion_f,@function
opj_matrix_inversion_f:                 # @opj_matrix_inversion_f
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_def_cfa_offset 336
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
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movl	%r15d, %r14d
	movl	%r15d, %edi
	shll	$4, %edi
	callq	malloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB0_70
# BB#1:                                 # %if.end
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	leal	(,%r15,4), %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	leal	-1(%r15), %r9d
	testl	%r15d, %r15d
	je	.LBB0_10
# BB#2:                                 # %for.body.i.preheader
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	leal	-1(%r15), %edi
	leaq	1(%rdi), %r8
	movq	%r8, %rcx
	andq	%rsi, %rcx
	movq	%rbp, %rdx
	movl	$0, %eax
	je	.LBB0_9
# BB#3:                                 # %vector.body.preheader
	incq	%rdi
	andq	%rsi, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbx
	shrq	$3, %rbx
	xorl	%esi, %esi
	btq	$3, %rdi
	jb	.LBB0_5
# BB#4:                                 # %vector.body.prol
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,1,2,3]
	movups	%xmm0, (%rbp)
	movdqa	.LCPI0_1(%rip), %xmm0   # xmm0 = [4,5,6,7]
	movdqu	%xmm0, 16(%rbp)
	movl	$8, %esi
.LBB0_5:                                # %vector.body.preheader.split
	leaq	(%rbp,%rcx,4), %rdx
	testq	%rbx, %rbx
	je	.LBB0_8
# BB#6:                                 # %vector.body.preheader.split.split
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,1,2,3]
	movdqa	.LCPI0_1(%rip), %xmm1   # xmm1 = [4,5,6,7]
	.align	16, 0x90
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movdqa	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm2
	movdqu	%xmm3, (%rbp,%rsi,4)
	movdqu	%xmm2, 16(%rbp,%rsi,4)
	leal	8(%rsi), %edi
	movd	%edi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movdqa	%xmm2, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm1, %xmm2
	movdqu	%xmm3, 32(%rbp,%rsi,4)
	movdqu	%xmm2, 48(%rbp,%rsi,4)
	addq	$16, %rsi
	cmpq	%rcx, %rsi
	jne	.LBB0_7
.LBB0_8:
	movq	%rcx, %rax
	movl	%ecx, %ebx
.LBB0_9:                                # %middle.block
	cmpq	%rax, %r8
	je	.LBB0_10
	.align	16, 0x90
.LBB0_71:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, (%rdx)
	addq	$4, %rdx
	incl	%ebx
	cmpl	%ebx, %r15d
	jne	.LBB0_71
.LBB0_10:                               # %for.cond.4.preheader.i
	movq	%r15, 272(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	testl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	je	.LBB0_39
# BB#11:                                # %for.body.7.lr.ph.i
	movq	272(%rsp), %rax         # 8-byte Reload
	leal	-2(%rax), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%r9, 232(%rsp)          # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	1(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax,%rdi,4), %rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	leaq	4(,%rdi,4), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	4(%rax), %rdx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	leaq	(,%rdi,8), %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	(%rax,%rdi,4), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movb	%cl, %r8b
	incb	%r8b
	xorl	%ebx, %ebx
	movl	$1, 256(%rsp)           # 4-byte Folded Spill
	movl	$8, %esi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	xorps	%xmm8, %xmm8
	movaps	.LCPI0_2(%rip), %xmm7   # xmm7 = [2147483648,2147483648,2147483648,2147483648]
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %r10d
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_12:                               # %for.body.7.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_36 Depth 3
	movl	%r10d, %r14d
	movl	%r9d, %r11d
	movzbl	%r8b, %eax
	andl	$7, %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movq	72(%rsp), %r12          # 8-byte Reload
	subl	%ebx, %r12d
	movq	232(%rsp), %r13         # 8-byte Reload
	subl	%ebx, %r13d
	cmpq	%rdi, %rbx
	jae	.LBB0_72
# BB#13:                                # %for.body.11.lr.ph.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edx
	subl	%ebx, %edx
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx,4), %rcx
	movl	%edi, %eax
	subl	%ebx, %eax
	pxor	%xmm0, %xmm0
	testb	$1, %al
	jne	.LBB0_15
# BB#14:                                #   in Loop: Header=BB0_12 Depth=1
	movq	%rcx, %rax
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movl	%ebx, %ecx
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_15:                               # %for.body.11.i.prol
                                        #   in Loop: Header=BB0_12 Depth=1
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	xorps	%xmm7, %xmm2
	pxor	%xmm0, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
	ucomiss	%xmm8, %xmm0
	cmoval	%ebx, %r15d
	maxss	%xmm8, %xmm0
	leaq	(%rcx,%rdi,4), %rax
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	leal	1(%rbx), %ecx
.LBB0_16:                               # %for.body.11.lr.ph.i.split
                                        #   in Loop: Header=BB0_12 Depth=1
	testl	%edx, %edx
	movq	272(%rsp), %rsi         # 8-byte Reload
	je	.LBB0_18
	.align	16, 0x90
.LBB0_17:                               # %for.body.11.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cmpltss	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	andps	%xmm1, %xmm2
	xorps	%xmm7, %xmm1
	andnps	%xmm1, %xmm3
	orps	%xmm3, %xmm2
	ucomiss	%xmm0, %xmm2
	cmoval	%ecx, %r15d
	maxss	%xmm0, %xmm2
	movss	(%rax,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm3
	xorps	%xmm7, %xmm3
	xorps	%xmm0, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	leal	1(%rcx), %edx
	ucomiss	%xmm2, %xmm0
	cmoval	%edx, %r15d
	maxss	%xmm2, %xmm0
	addq	%rbp, %rax
	addl	$2, %ecx
	cmpl	%esi, %ecx
	jne	.LBB0_17
.LBB0_18:                               # %for.end.21.i
                                        #   in Loop: Header=BB0_12 Depth=1
	ucomiss	%xmm8, %xmm0
	jne	.LBB0_19
	jnp	.LBB0_72
.LBB0_19:                               # %if.end.26.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%r9d, 84(%rsp)          # 4-byte Spill
	movl	%r10d, 88(%rsp)         # 4-byte Spill
	movb	%r8b, 95(%rsp)          # 1-byte Spill
	movl	%r15d, %eax
	cmpq	%rbx, %rax
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	je	.LBB0_21
# BB#20:                                # %if.then.29.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rax,4), %rax
	movq	128(%rsp), %rsi         # 8-byte Reload
	leaq	(,%rsi,4), %rcx
	subq	%rcx, %rax
	movl	(%rdi), %ecx
	movl	(%rax), %edx
	movl	%edx, (%rdi)
	movl	%ecx, (%rax)
	movl	%r15d, %eax
	subl	%esi, %eax
	movq	272(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %eax
	movq	136(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%rax,4), %rsi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movq	%r14, 224(%rsp)         # 8-byte Spill
	movq	248(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r11, 216(%rsp)         # 8-byte Spill
	callq	memcpy
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	224(%rsp), %r14         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movq	216(%rsp), %r11         # 8-byte Reload
	movaps	.LCPI0_2(%rip), %xmm7   # xmm7 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm8, %xmm8
.LBB0_21:                               # %if.end.43.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, 256(%rsp)         # 4-byte Folded Reload
	jae	.LBB0_38
# BB#22:                                # %for.body.52.lr.ph.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andq	%rdi, %r12
	shlq	$2, %r13
	movq	72(%rsp), %r10          # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	subq	%rdx, %r10
	leaq	4(,%r14,4), %rax
	shlq	$2, %r11
	movq	264(%rsp), %rbp         # 8-byte Reload
	negq	%rbp
	leaq	(,%r12,4), %rcx
	leaq	4(,%r12,4), %rbx
	movabsq	$17179869180, %rsi      # imm = 0x3FFFFFFFC
	andq	%rsi, %r13
	movq	%r11, %rsi
	movq	%r10, %r11
	andq	%rdi, %r11
	subq	%rsi, %rax
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%r14,4), %rsi
	leaq	1(%r14,%rbp), %rbp
	movq	64(%rsp), %rdi          # 8-byte Reload
	imulq	%rdx, %rdi
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	leaq	8(%rcx,%rdx,4), %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	subq	%r13, %rbx
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	incq	%r12
	incq	%r11
	movq	240(%rsp), %rdx         # 8-byte Reload
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	112(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	(%rdx,%r12,4), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movl	256(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %edx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	(%r11,%rdx), %rdi
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	incl	%r10d
	andl	$7, %r10d
	movq	%r10, 216(%rsp)         # 8-byte Spill
	movq	%r11, %rdi
	subq	%r10, %rdi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	leaq	(%rdi,%rdx), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_23:                               # %for.body.57.lr.ph.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_36 Depth 3
	leaq	4(%r8), %r9
	cmpq	%r10, %r11
	movss	(%r8), %xmm1            # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%r8)
	je	.LBB0_24
# BB#25:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	200(%rsp), %rcx         # 8-byte Reload
	imulq	%r12, %rcx
	movq	208(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movq	224(%rsp), %rdi         # 8-byte Reload
	imulq	%r12, %rdi
	leaq	(%rdi,%rdx), %rdi
	movq	192(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rdi), %rbx
	movq	184(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	cmpq	%rbx, %rdx
	ja	.LBB0_27
# BB#26:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	168(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdi,%rdx), %rdx
	movq	176(%rsp), %rdi         # 8-byte Reload
	leaq	(%rcx,%rdi), %rcx
	cmpq	%rcx, %rdx
	ja	.LBB0_27
.LBB0_24:                               #   in Loop: Header=BB0_23 Depth=2
	movq	%r13, %rdi
	movq	240(%rsp), %rcx         # 8-byte Reload
	movl	256(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB0_30
	.align	16, 0x90
.LBB0_27:                               # %vector.ph80
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%r9,%rcx,4), %r9
	leaq	(%r13,%rcx,4), %rdi
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_28:                               # %vector.body59
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r13,%rcx,4), %xmm3
	movups	16(%r13,%rcx,4), %xmm4
	mulps	%xmm2, %xmm3
	mulps	%xmm2, %xmm4
	movups	4(%r8,%rcx,4), %xmm5
	movups	20(%r8,%rcx,4), %xmm6
	subps	%xmm3, %xmm5
	subps	%xmm4, %xmm6
	movups	%xmm5, 4(%r8,%rcx,4)
	movups	%xmm6, 20(%r8,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, %rbp
	jne	.LBB0_28
# BB#29:                                #   in Loop: Header=BB0_23 Depth=2
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	movl	%edx, %ebx
.LBB0_30:                               # %middle.block60
                                        #   in Loop: Header=BB0_23 Depth=2
	cmpq	%rcx, 264(%rsp)         # 8-byte Folded Reload
	je	.LBB0_37
# BB#31:                                # %for.body.57.i.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	%r11, %r10
	movq	272(%rsp), %rcx         # 8-byte Reload
	subl	%ebx, %ecx
	movq	232(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r11d
	subl	%ebx, %r11d
	testb	$3, %cl
	je	.LBB0_34
# BB#32:                                # %for.body.57.i.prol.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB0_33:                               # %for.body.57.i.prol
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addq	$4, %rdi
	movss	(%r9), %xmm3            # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	movss	%xmm3, (%r9)
	incl	%ebx
	addq	$4, %r9
	incl	%ecx
	jne	.LBB0_33
.LBB0_34:                               # %for.body.57.i.preheader.split
                                        #   in Loop: Header=BB0_23 Depth=2
	cmpl	$3, %r11d
	movq	%r10, %r11
	movq	216(%rsp), %r10         # 8-byte Reload
	jb	.LBB0_37
# BB#35:                                # %for.body.57.i.preheader.split.split
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	272(%rsp), %rcx         # 8-byte Reload
	subl	%ebx, %ecx
	.align	16, 0x90
.LBB0_36:                               # %for.body.57.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	(%r9), %xmm3            # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	movss	%xmm3, (%r9)
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	4(%r9), %xmm3           # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	movss	%xmm3, 4(%r9)
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	8(%r9), %xmm3           # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	movss	%xmm3, 8(%r9)
	movss	12(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	12(%r9), %xmm3          # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	movss	%xmm3, 12(%r9)
	addq	$16, %rdi
	addq	$16, %r9
	addl	$-4, %ecx
	jne	.LBB0_36
.LBB0_37:                               # %for.end.64.i
                                        #   in Loop: Header=BB0_23 Depth=2
	addq	%rax, %r13
	addq	%rsi, %r8
	incl	%r14d
	incq	%r12
	movq	272(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %r14d
	jne	.LBB0_23
.LBB0_38:                               # %for.end.72.i
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	256(%rsp)               # 4-byte Folded Spill
	movl	84(%rsp), %r9d          # 4-byte Reload
	decl	%r9d
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdi,4), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	addq	$4, 32(%rsp)            # 8-byte Folded Spill
	movq	128(%rsp), %rbx         # 8-byte Reload
	incq	%rbx
	movl	88(%rsp), %r10d         # 4-byte Reload
	decl	%r10d
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	%rax, 40(%rsp)          # 8-byte Folded Spill
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	$4, 48(%rsp)            # 8-byte Folded Spill
	movb	95(%rsp), %r8b          # 1-byte Reload
	addb	$7, %r8b
	cmpq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	jb	.LBB0_12
.LBB0_39:                               # %if.end.15
	movq	272(%rsp), %r15         # 8-byte Reload
	leal	(%r15,%r15), %eax
	testl	%r15d, %r15d
	movq	248(%rsp), %r12         # 8-byte Reload
	je	.LBB0_69
# BB#40:                                # %for.body.lr.ph.i
	leaq	(%r12,%rdi,4), %rcx
	leaq	(%r12,%rax,4), %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rdi,4), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rdi,4), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leal	-1(%r15), %ecx
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	andl	$3, %ecx
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rsi
	leaq	(%rsi,%rax,4), %rax
	movl	%r15d, %ecx
	imull	%ecx, %ecx
	movq	112(%rsp), %rdx         # 8-byte Reload
	leaq	-4(%rdx,%rcx,4), %rbp
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	leal	1(%r15), %ebp
	shlq	$2, %rbp
	negq	%rbp
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdi,4), %rcx
	leaq	(,%rdi,4), %r14
	movq	%r14, 176(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx), %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movl	%r15d, %esi
	andl	$3, %esi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	leaq	12(%rdx,%rcx), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	(%rax,%rdx), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_41:                               # %for.cond.5.preheader.i.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #     Child Loop BB0_53 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	104(%rsp), %rdx         # 8-byte Reload
	callq	memset
	movl	$1065353216, (%r12,%rbp,4) # imm = 0x3F800000
	movl	$1, %r9d
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	240(%rsp), %r11         # 8-byte Reload
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_42:                               # %for.cond.5.preheader.i.i
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_50 Depth 3
	pxor	%xmm0, %xmm0
	testl	%ebx, %ebx
	je	.LBB0_51
# BB#43:                                # %for.body.7.i.i.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	leal	-1(%rbx), %r8d
	xorl	%esi, %esi
	movl	$1, %ecx
	pxor	%xmm0, %xmm0
	testb	$3, %bl
	je	.LBB0_44
# BB#45:                                #   in Loop: Header=BB0_42 Depth=2
	movl	%ebx, %eax
	andl	$3, %eax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_46:                               # %for.body.7.i.i.prol
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rbp
	movl	%esi, %ecx
	movss	(%rdx,%rbp), %xmm1      # xmm1 = mem[0],zero,zero,zero
	mulss	(%r13,%rbp), %xmm1
	addss	%xmm1, %xmm0
	leaq	4(%rbp), %rdi
	leal	1(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB0_46
# BB#47:                                #   in Loop: Header=BB0_42 Depth=2
	leaq	4(%rdx,%rbp), %rax
	leaq	4(%r13,%rbp), %rbp
	addl	$2, %ecx
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=2
	movq	%rdx, %rax
	movq	240(%rsp), %rbp         # 8-byte Reload
.LBB0_48:                               # %for.body.7.i.i.preheader.split
                                        #   in Loop: Header=BB0_42 Depth=2
	cmpl	$3, %r8d
	jb	.LBB0_51
# BB#49:                                # %for.body.7.i.i.preheader.split.split
                                        #   in Loop: Header=BB0_42 Depth=2
	movl	%r9d, %esi
	subl	%ecx, %esi
	.align	16, 0x90
.LBB0_50:                               # %for.body.7.i.i
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	(%rbp), %xmm1
	addss	%xmm0, %xmm1
	mulss	4(%rbp), %xmm2
	addss	%xmm1, %xmm2
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	8(%rbp), %xmm1
	addss	%xmm2, %xmm1
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	12(%rbp), %xmm0
	addss	%xmm1, %xmm0
	addq	$16, %rax
	addq	$16, %rbp
	addl	$-4, %esi
	jne	.LBB0_50
.LBB0_51:                               # %for.end.i.i
                                        #   in Loop: Header=BB0_42 Depth=2
	movl	(%r10), %eax
	addq	$4, %r10
	movss	(%r12,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, (%r11)
	addq	$4, %r11
	addq	%r14, %rdx
	incl	%ebx
	incl	%r9d
	xorl	%eax, %eax
	cmpl	%r15d, %ebx
	jne	.LBB0_42
# BB#52:                                #   in Loop: Header=BB0_41 Depth=1
	movq	184(%rsp), %r11         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movl	%r15d, %r9d
	movq	216(%rsp), %r8          # 8-byte Reload
	movq	224(%rsp), %r10         # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB0_53:                               # %for.body.27.i.i
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_61 Depth 3
	movq	%r10, %rbx
	movl	%r9d, %edi
	leaq	-4(%rbx), %r10
	addq	$-4, %r8
	leal	-1(%rdi), %r9d
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cmpl	%r15d, %edi
	jae	.LBB0_62
# BB#54:                                # %for.body.33.i.i.preheader
                                        #   in Loop: Header=BB0_53 Depth=2
	leal	-1(%rax), %ebp
	xorl	%r14d, %r14d
	xorps	%xmm1, %xmm1
	testb	$3, %al
	je	.LBB0_55
# BB#56:                                #   in Loop: Header=BB0_53 Depth=2
	movl	%ebp, 264(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	andl	$3, %edx
	movq	%r11, %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_57:                               # %for.body.33.i.i.prol
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %r12
	movl	%r14d, %r15d
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	(%rbx,%r12), %xmm2
	addss	%xmm2, %xmm1
	leaq	4(%r12), %rbp
	addq	$4, %rcx
	leal	1(%r15), %r14d
	cmpl	%r14d, %edx
	jne	.LBB0_57
# BB#58:                                #   in Loop: Header=BB0_53 Depth=2
	leaq	4(%rsi,%r12), %rdx
	leaq	4(%rbx,%r12), %rbx
	leal	1(%rdi,%r15), %edi
	movq	272(%rsp), %r15         # 8-byte Reload
	movq	248(%rsp), %r12         # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	movl	264(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_59
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=2
	movq	%rsi, %rdx
.LBB0_59:                               # %for.body.33.i.i.preheader.split
                                        #   in Loop: Header=BB0_53 Depth=2
	cmpl	$3, %ebp
	jb	.LBB0_62
# BB#60:                                # %for.body.33.i.i.preheader.split.split
                                        #   in Loop: Header=BB0_53 Depth=2
	addq	$16, %rdx
	movl	%r15d, %ebp
	subl	%edi, %ebp
	.align	16, 0x90
.LBB0_61:                               # %for.body.33.i.i
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	-12(%rdx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	-8(%rdx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	(%rbx), %xmm2
	addss	%xmm1, %xmm2
	mulss	4(%rbx), %xmm3
	addss	%xmm2, %xmm3
	movss	-4(%rdx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	8(%rbx), %xmm2
	addss	%xmm3, %xmm2
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	12(%rbx), %xmm1
	addss	%xmm2, %xmm1
	addq	$16, %rdx
	addq	$16, %rbx
	addl	$-4, %ebp
	jne	.LBB0_61
.LBB0_62:                               # %for.end.40.i.i
                                        #   in Loop: Header=BB0_53 Depth=2
	movss	(%r8), %xmm2            # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	movss	%xmm2, (%r10)
	addq	%rcx, %rsi
	incl	%eax
	addq	%rcx, %r11
	testl	%r9d, %r9d
	jne	.LBB0_53
# BB#63:                                # %for.body.7.i.33.preheader
                                        #   in Loop: Header=BB0_41 Depth=1
	cmpl	$0, 200(%rsp)           # 4-byte Folded Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rax
	movl	$0, %edx
	movq	176(%rsp), %r14         # 8-byte Reload
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_65
	.align	16, 0x90
.LBB0_64:                               # %for.body.7.i.33.prol
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rdx,4), %ecx
	movl	%ecx, (%rax)
	incq	%rdx
	addq	%r14, %rax
	cmpl	%edx, %ebp
	jne	.LBB0_64
.LBB0_65:                               # %for.body.7.i.33.preheader.split
                                        #   in Loop: Header=BB0_41 Depth=1
	cmpl	$3, 208(%rsp)           # 4-byte Folded Reload
	movq	120(%rsp), %rbp         # 8-byte Reload
	jb	.LBB0_68
# BB#66:                                # %for.body.7.i.33.preheader.split.split
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	%r15d, %ecx
	subl	%edx, %ecx
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB0_67:                               # %for.body.7.i.33
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rdx), %esi
	movl	%esi, (%rax)
	movl	-8(%rdx), %esi
	movl	%esi, (%rax,%r14)
	addq	%r14, %rax
	movl	-4(%rdx), %esi
	movl	%esi, (%r14,%rax)
	addq	%r14, %rax
	movl	(%rdx), %esi
	movl	%esi, (%r14,%rax)
	addq	%r14, %rax
	addq	$16, %rdx
	addq	%r14, %rax
	addl	$-4, %ecx
	jne	.LBB0_67
.LBB0_68:                               # %for.inc.10.i
                                        #   in Loop: Header=BB0_41 Depth=1
	addq	$4, %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rax         # 8-byte Reload
	incq	%rax
	cmpq	%rbp, %rax
	movq	%rax, %rbp
	jne	.LBB0_41
.LBB0_69:                               # %opj_lupInvert.exit
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	$1, %eax
	jmp	.LBB0_70
.LBB0_72:                               # %if.then.14
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	xorl	%eax, %eax
.LBB0_70:                               # %cleanup
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_matrix_inversion_f, .Lfunc_end0-opj_matrix_inversion_f
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
