	.text
	.file	"gsicc_create.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1633907568              # 0x61637370
	.long	1095782476              # 0x4150504c
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
.LCPI0_2:
	.long	63189                   # 0xf6d5
	.long	65536                   # 0x10000
	.long	54060                   # 0xd32c
	.long	0                       # 0x0
.LCPI0_3:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI0_4:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI0_5:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_6:
	.quad	4679240012837945344     # double 65536
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_7:
	.long	1132462080              # float 256
	.text
	.globl	gsicc_create_from_cal
	.align	16, 0x90
	.type	gsicc_create_from_cal,@function
gsicc_create_from_cal:                  # @gsicc_create_from_cal
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
	subq	$248, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 304
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
	movl	%r9d, %ebx
	movq	%r8, %rbp
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	.Lgsicc_create_from_cal.TRC_Tags+8(%rip), %eax
	movl	%eax, 104(%rsp)
	movq	.Lgsicc_create_from_cal.TRC_Tags(%rip), %rax
	movq	%rax, 96(%rsp)
	movl	$0, 116(%rsp)
	movl	$69206016, 120(%rsp)    # imm = 0x4200000
	movw	$0, 140(%rsp)
	movw	$0, 142(%rsp)
	movw	$0, 144(%rsp)
	movw	$0, 138(%rsp)
	movw	$0, 146(%rsp)
	movw	$0, 136(%rsp)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1633907568,1095782476,0,0]
	movups	%xmm0, 148(%rsp)
	movaps	.LCPI0_1(%rip), %xmm0   # xmm0 = [0,0,0,3]
	movups	%xmm0, 164(%rsp)
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [63189,65536,54060,0]
	movups	%xmm0, 180(%rsp)
	leaq	196(%rsp), %rdi
	xorl	%esi, %esi
	movl	$44, %edx
	callq	memset
	movl	$1482250784, 132(%rsp)  # imm = 0x58595A20
	movl	$1935896178, 124(%rsp)  # imm = 0x73636E72
	cmpl	$3, %ebx
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movl	$1380401696, 128(%rsp)  # imm = 0x52474220
	movl	$10, %r14d
	movl	$1918128707, %ebx       # imm = 0x72545243
	jmp	.LBB0_4
.LBB0_2:                                # %if.else
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	jne	.LBB0_32
# BB#3:                                 # %if.then.3
	movl	$1196573017, 128(%rsp)  # imm = 0x47524159
	movl	$1800688195, 96(%rsp)   # imm = 0x6B545243
	movl	$5, %r14d
	movl	$1800688195, %ebx       # imm = 0x6B545243
.LBB0_4:                                # %if.end.6
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	%r14d, %esi
	shll	$4, %esi
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB0_32
# BB#5:                                 # %if.end.11
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r12, 24(%rsp)          # 8-byte Spill
	leal	(,%r14,4), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	movq	%rax, %rbp
	leal	132(%rcx,%rcx,2), %r13d
	movl	%r13d, 4(%rbp)
	movl	$1684370275, (%rbp)     # imm = 0x64657363
	movl	$desc_name, %edi
	callq	strlen
	addq	%rax, %rax
	leal	28(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	28(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	28(%rax,%rcx), %ecx
	movl	$4, %r15d
	movl	$4, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rdx), %ecx
	andl	$-4, %ecx
	subl	%ecx, %edx
	movb	%dl, 12(%rbp)
	movzbl	%dl, %ecx
	leal	28(%rax,%rcx), %ebx
	movl	%ebx, 8(%rbp)
	addl	%r13d, %ebx
	movl	%ebx, 20(%rbp)
	movl	$1668313716, 16(%rbp)   # imm = 0x63707274
	movl	$copy_right, %edi
	callq	strlen
	addq	%rax, %rax
	leal	28(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	28(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	28(%rax,%rcx), %ecx
	movl	$4, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rdx), %ecx
	andl	$-4, %ecx
	subl	%ecx, %edx
	movb	%dl, 28(%rbp)
	movzbl	%dl, %ecx
	leal	28(%rax,%rcx), %eax
	movl	%eax, 24(%rbp)
	movl	52(%rsp), %r12d         # 4-byte Reload
	cmpl	$3, %r12d
	jne	.LBB0_6
# BB#7:                                 # %if.then.16
	leal	(%rbx,%rax), %ecx
	movl	%ecx, 36(%rbp)
	movl	$1918392666, 32(%rbp)   # imm = 0x7258595A
	movb	$0, 44(%rbp)
	movl	$20, 40(%rbp)
	leal	20(%rbx,%rax), %ecx
	movl	%ecx, 52(%rbp)
	movl	$1733843290, 48(%rbp)   # imm = 0x6758595A
	movb	$0, 60(%rbp)
	movl	$20, 56(%rbp)
	leal	40(%rbx,%rax), %eax
	movl	%eax, 68(%rbp)
	movl	$1649957210, 64(%rbp)   # imm = 0x6258595A
	movb	$0, 76(%rbp)
	movl	$20, 72(%rbp)
	movl	$20, %eax
	jmp	.LBB0_8
.LBB0_6:
	movl	$1, %r15d
.LBB0_8:                                # %for.body.lr.ph
	movq	56(%rsp), %r14          # 8-byte Reload
	movl	80(%rsp), %edi          # 4-byte Reload
	leal	1(%r15), %ecx
	movl	%r15d, %edx
	shlq	$4, %rdx
	movl	4(%rbp,%rdx), %edx
	leal	(%rax,%rdx), %esi
	shlq	$4, %rcx
	movl	%esi, 4(%rbp,%rcx)
	movl	$2004119668, (%rbp,%rcx) # imm = 0x77747074
	movb	$0, 12(%rbp,%rcx)
	movl	$20, 8(%rbp,%rcx)
	orl	$2, %r15d
	leal	20(%rax,%rdx), %eax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movl	%eax, 4(%rbp,%rcx)
	movl	$1651208308, (%rbp,%rcx) # imm = 0x626B7074
	movb	$0, 12(%rbp,%rcx)
	movl	$20, 8(%rbp,%rcx)
	movl	4(%rbp,%rcx), %eax
	leaq	1(%r15), %rsi
	addl	$20, %eax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movl	%eax, 4(%rbp,%rcx)
	movl	%edi, (%rbp,%rcx)
	movb	$0, 12(%rbp,%rcx)
	movl	$16, 8(%rbp,%rcx)
	movq	%rbp, %rbx
	cmpl	$1, %r12d
	je	.LBB0_14
# BB#9:                                 # %for.body.for.body_crit_edge.preheader
	movl	$1, %edx
	testb	$1, %r12b
	jne	.LBB0_11
# BB#10:                                # %for.body.for.body_crit_edge.prol
	movl	100(%rsp), %ecx
	addq	$2, %r15
	addl	$16, %eax
	movq	%r15, %rdx
	shlq	$4, %rdx
	movl	%eax, 4(%rbx,%rdx)
	movl	%ecx, (%rbx,%rdx)
	movb	$0, 12(%rbx,%rdx)
	movl	$16, 8(%rbx,%rdx)
	movl	$2, %edx
	movq	%r15, %rsi
.LBB0_11:                               # %for.body.for.body_crit_edge.preheader.split
	cmpl	$2, %r12d
	je	.LBB0_14
# BB#12:                                # %for.body.for.body_crit_edge.preheader.split.split
	movl	%r12d, %ecx
	subl	%edx, %ecx
	leaq	100(%rsp,%rdx,4), %rdx
	addl	$32, %eax
	shlq	$4, %rsi
	leaq	44(%rsi,%rbx), %rsi
	.align	16, 0x90
.LBB0_13:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rdx), %edi
	leal	-16(%rax), %ebp
	movl	%ebp, -24(%rsi)
	movl	%edi, -28(%rsi)
	movb	$0, -16(%rsi)
	movl	$16, -20(%rsi)
	movl	(%rdx), %edi
	movl	%eax, -8(%rsi)
	movl	%edi, -12(%rsi)
	movb	$0, (%rsi)
	movl	$16, -4(%rsi)
	addq	$8, %rdx
	addl	$32, %eax
	addq	$32, %rsi
	addl	$-2, %ecx
	jne	.LBB0_13
.LBB0_14:                               # %for.cond.21.preheader
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r15d
	movl	%eax, %ecx
	andl	$7, %ecx
	xorl	%r9d, %r9d
	cmpl	%ecx, %eax
	movd	%r13d, %xmm0
	pxor	%xmm1, %xmm1
	jne	.LBB0_16
# BB#15:
	movq	%rbx, %r13
	jmp	.LBB0_18
.LBB0_16:                               # %vector.body.preheader
	movq	%r15, %r9
	subq	%rcx, %r9
	movq	%rbx, %r13
	leaq	8(%r13), %r10
	movl	%eax, %esi
	andl	$7, %esi
	movq	%r15, %r8
	subq	%rsi, %r8
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	$1, %edi
	movd	%rdi, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	movdqa	.LCPI0_3(%rip), %xmm8   # xmm8 = [2,3]
	movdqa	.LCPI0_4(%rip), %xmm9   # xmm9 = [6,7]
	movdqa	.LCPI0_5(%rip), %xmm5   # xmm5 = [4,5]
	.align	16, 0x90
.LBB0_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%r11, %xmm6
	pshufd	$68, %xmm6, %xmm6       # xmm6 = xmm6[0,1,0,1]
	movdqa	%xmm6, %xmm7
	paddq	%xmm2, %xmm7
	movdqa	%xmm6, %xmm3
	paddq	%xmm8, %xmm3
	movdqa	%xmm6, %xmm4
	paddq	%xmm9, %xmm4
	paddq	%xmm5, %xmm6
	pshufd	$78, %xmm7, %xmm7       # xmm7 = xmm7[2,3,0,1]
	movd	%xmm7, %rdi
	shlq	$4, %rdi
	movd	%xmm3, %rbp
	shlq	$4, %rbp
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rbx
	shlq	$4, %rbx
	movd	%xmm6, %rdx
	shlq	$4, %rdx
	pshufd	$78, %xmm6, %xmm3       # xmm3 = xmm6[2,3,0,1]
	movd	%xmm3, %rax
	shlq	$4, %rax
	movd	%xmm4, %rcx
	shlq	$4, %rcx
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rsi
	shlq	$4, %rsi
	movd	8(%r13,%rbx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%rdi), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r13,%rbp), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	(%r10), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	punpckldq	%xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	movd	8(%r13,%rcx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%rdx), %xmm4     # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	8(%r13,%rsi), %xmm3     # xmm3 = mem[0],zero,zero,zero
	movd	8(%r13,%rax), %xmm7     # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	punpckldq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	paddd	%xmm6, %xmm0
	paddd	%xmm4, %xmm1
	addq	$8, %r11
	subq	$-128, %r10
	cmpq	%r11, %r8
	jne	.LBB0_17
.LBB0_18:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%r9, %r15
	je	.LBB0_21
# BB#19:                                # %for.body.24.preheader
	movq	%r9, %rax
	shlq	$4, %rax
	leaq	8(%rax,%r13), %rcx
	.align	16, 0x90
.LBB0_20:                               # %for.body.24
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rcx), %ebx
	incq	%r9
	addq	$16, %rcx
	cmpq	%r15, %r9
	jl	.LBB0_20
.LBB0_21:                               # %for.end.30
	movq	200(%r14), %rdi
	movl	$.L.str, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB0_22
# BB#23:                                # %if.end.39
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rcx,2), %ebp
	movl	%ebx, 112(%rsp)
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	leaq	112(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, (%rsp)            # 8-byte Spill
	callq	copy_header
	movq	%rbx, %rax
	subq	$-128, %rax
	movb	$0, 128(%rbx)
	movb	$0, 129(%rbx)
	movb	$0, 130(%rbx)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movb	%cl, 131(%rbx)
	leaq	8(%r13), %rcx
	movq	%rbx, %rdx
	addq	$143, %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_24:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rcx), %ebx
	movl	%ebx, %edi
	shrl	$24, %edi
	movb	%dil, -11(%rdx)
	movl	%ebx, %edi
	shrl	$16, %edi
	movb	%dil, -10(%rdx)
	movb	%bh, -9(%rdx)  # NOREX
	movb	%bl, -8(%rdx)
	movl	-4(%rcx), %ebx
	movl	%ebx, %edi
	shrl	$24, %edi
	movb	%dil, -7(%rdx)
	movl	%ebx, %edi
	shrl	$16, %edi
	movb	%dil, -6(%rdx)
	movb	%bh, -5(%rdx)  # NOREX
	movb	%bl, -4(%rdx)
	movl	(%rcx), %ebx
	movl	%ebx, %edi
	shrl	$24, %edi
	movb	%dil, -3(%rdx)
	movl	%ebx, %edi
	shrl	$16, %edi
	movb	%dil, -2(%rdx)
	movb	%bh, -1(%rdx)  # NOREX
	movb	%bl, (%rdx)
	incq	%rsi
	addq	$16, %rcx
	addq	$12, %rdx
	cmpq	%r15, %rsi
	jb	.LBB0_24
# BB#25:                                # %copy_tagtable.exit
	movl	%ebp, %ecx
	leaq	(%rax,%rcx), %rbp
	leaq	4(%rax,%rcx), %rdi
	movl	$desc_name, %esi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	callq	add_v4_text_tag
	movl	8(%r13), %eax
	leaq	4(%rax,%rbp), %rdi
	movl	$copy_right, %esi
	movl	$1, %ecx
	movq	%r13, %rdx
	callq	add_v4_text_tag
	movl	8(%r13), %eax
	movl	24(%r13), %ebx
	leaq	4(%rax,%rbp), %rax
	addq	%rax, %rbx
	movl	$2, %eax
	cmpl	$3, %r12d
	jne	.LBB0_26
# BB#27:                                # %for.body.63.preheader
	movq	%r14, 56(%rsp)          # 8-byte Spill
	leaq	40(%r13), %r12
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	$8, %r15d
	.align	16, 0x90
.LBB0_28:                               # %for.body.63
                                        # =>This Inner Loop Header: Depth=1
	pxor	%xmm0, %xmm0
	movq	64(%rsp), %rdx          # 8-byte Reload
	maxss	-8(%rdx,%r15), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %r14d
	orl	%eax, %r14d
	xorpd	%xmm0, %xmm0
	maxss	-4(%rdx,%r15), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %ebp
	orl	%eax, %ebp
	xorpd	%xmm0, %xmm0
	maxss	(%rdx,%r15), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %r13d
	orl	%eax, %r13d
	movl	$542792024, (%rbx)      # imm = 0x205A5958
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movslq	%r14d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 8(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 9(%rbx)
	movb	%ah, 10(%rbx)  # NOREX
	movl	88(%rsp), %eax          # 4-byte Reload
	movb	%al, 11(%rbx)
	movslq	%ebp, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 12(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 13(%rbx)
	movb	%ah, 14(%rbx)  # NOREX
	movl	80(%rsp), %eax          # 4-byte Reload
	movb	%al, 15(%rbx)
	movslq	%r13d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 16(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 17(%rbx)
	movb	%ah, 18(%rbx)  # NOREX
	movl	72(%rsp), %eax          # 4-byte Reload
	movb	%al, 19(%rbx)
	movl	(%r12), %eax
	addq	%rax, %rbx
	addq	$16, %r12
	addq	$12, %r15
	movl	$5, %eax
	cmpq	$44, %r15
	jne	.LBB0_28
	jmp	.LBB0_29
.LBB0_22:                               # %if.then.37
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
	xorl	%r15d, %r15d
	jmp	.LBB0_32
.LBB0_26:
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
.LBB0_29:                               # %for.body.97.lr.ph
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movq	16(%rsp), %rdx          # 8-byte Reload
	maxss	(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %r13d
	orl	%eax, %r13d
	xorpd	%xmm0, %xmm0
	maxss	4(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r14d
	shll	$16, %eax
	movzwl	%r14w, %ebp
	orl	%eax, %ebp
	xorpd	%xmm0, %xmm0
	maxss	8(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r12d
	shll	$16, %eax
	movzwl	%r12w, %r15d
	orl	%eax, %r15d
	movl	$542792024, (%rbx)      # imm = 0x205A5958
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movslq	%r13d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 8(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 9(%rbx)
	movb	%ah, 10(%rbx)  # NOREX
	movl	80(%rsp), %eax          # 4-byte Reload
	movb	%al, 11(%rbx)
	movslq	%ebp, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 12(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 13(%rbx)
	movb	%ah, 14(%rbx)  # NOREX
	movb	%r14b, 15(%rbx)
	movslq	%r15d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 16(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 17(%rbx)
	movb	%ah, 18(%rbx)  # NOREX
	movb	%r12b, 19(%rbx)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %eax
	shlq	$4, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	8(%rcx,%rax), %r14d
	leaq	(%rbx,%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movq	24(%rsp), %rdx          # 8-byte Reload
	maxss	(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %ebp
	orl	%eax, %ebp
	xorpd	%xmm0, %xmm0
	maxss	4(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	shll	$16, %eax
	movzwl	%cx, %r15d
	orl	%eax, %r15d
	xorps	%xmm1, %xmm1
	maxss	8(%rdx), %xmm1
	cvttss2si	%xmm1, %eax
	movswl	%ax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r13d
	shll	$16, %eax
	movzwl	%r13w, %r12d
	orl	%eax, %r12d
	movb	$88, (%rbx,%r14)
	movw	$23129, 1(%rbx,%r14)    # imm = 0x5A59
	movb	$32, 3(%rbx,%r14)
	leaq	4(%rbx,%r14), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movslq	%ebp, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movq	%r14, %rdx
	movb	%cl, 8(%rbx,%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 9(%rbx,%rdx)
	movb	%ah, 10(%rbx,%rdx)  # NOREX
	movl	72(%rsp), %eax          # 4-byte Reload
	movb	%al, 11(%rbx,%rdx)
	movslq	%r15d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 12(%rbx,%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 13(%rbx,%rdx)
	movb	%ah, 14(%rbx,%rdx)  # NOREX
	movl	64(%rsp), %eax          # 4-byte Reload
	movb	%al, 15(%rbx,%rdx)
	movslq	%r12d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 16(%rbx,%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 17(%rbx,%rdx)
	movb	%ah, 18(%rbx,%rdx)  # NOREX
	movb	%r13b, 19(%rbx,%rdx)
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	1(%rcx), %eax
	shlq	$4, %rax
	movl	8(%rdx,%rax), %ebx
	addq	80(%rsp), %rbx          # 8-byte Folded Reload
	movq	%rcx, %rax
	addl	$2, %eax
	shlq	$4, %rax
	leaq	8(%rax,%rdx), %r15
	movl	52(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %r14d
	movq	40(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB0_30:                               # %for.body.97
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_7(%rip), %xmm0
	cvttss2si	%xmm0, %r13d
	movb	$99, (%rbx)
	movb	$117, 1(%rbx)
	movb	$114, 2(%rbx)
	movb	$118, 3(%rbx)
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movb	$0, 8(%rbx)
	movb	$0, 9(%rbx)
	movb	$0, 10(%rbx)
	movb	$1, 11(%rbx)
	movl	%r13d, %eax
	movb	%ah, 12(%rbx)  # NOREX
	movb	%al, 13(%rbx)
	leaq	14(%rbx), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	memset
	movl	(%r15), %eax
	addq	%rax, %rbx
	addq	$16, %r15
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB0_30
# BB#31:                                # %for.end.109
	cmpl	$3, %r12d
	sete	%bl
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	gsicc_profile_new
	movq	%rax, %r15
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rdi, 256(%r15)
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%edx, 220(%r15)
	movb	%r12b, (%r15)
	movzbl	%bl, %eax
	leal	1(%rax), %ecx
	addl	$11, %eax
	movl	%ecx, 16(%r15)
	movl	%eax, 12(%r15)
	leaq	144(%r15), %rsi
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%r15)
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
.LBB0_32:                               # %cleanup
	movq	%r15, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gsicc_create_from_cal, .Lfunc_end0-gsicc_create_from_cal
	.cfi_endproc

	.align	16, 0x90
	.type	copy_header,@function
copy_header:                            # @copy_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, (%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rbx)
	movb	%ah, 2(%rbx)  # NOREX
	movb	%al, 3(%rbx)
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movl	8(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rbx)
	movb	%ah, 10(%rbx)  # NOREX
	movb	%al, 11(%rbx)
	movl	12(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rbx)
	movb	%ah, 14(%rbx)  # NOREX
	movb	%al, 15(%rbx)
	movl	16(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 16(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 17(%rbx)
	movb	%ah, 18(%rbx)  # NOREX
	movb	%al, 19(%rbx)
	movl	20(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 20(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 21(%rbx)
	movb	%ah, 22(%rbx)  # NOREX
	movb	%al, 23(%rbx)
	leaq	24(%rbx), %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	callq	memset
	movslq	36(%r14), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 36(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 37(%rbx)
	movb	%ah, 38(%rbx)  # NOREX
	movb	%al, 39(%rbx)
	movl	40(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 40(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 41(%rbx)
	movb	%ah, 42(%rbx)  # NOREX
	movb	%al, 43(%rbx)
	leaq	44(%rbx), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	movslq	68(%r14), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 68(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 69(%rbx)
	movb	%ah, 70(%rbx)  # NOREX
	movb	%al, 71(%rbx)
	movslq	72(%r14), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 72(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 73(%rbx)
	movb	%ah, 74(%rbx)  # NOREX
	movb	%al, 75(%rbx)
	movslq	76(%r14), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 76(%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 77(%rbx)
	movb	%ah, 78(%rbx)  # NOREX
	movb	%al, 79(%rbx)
	addq	$80, %rbx
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	memset                  # TAILCALL
.Lfunc_end1:
	.size	copy_header, .Lfunc_end1-copy_header
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1065353216              # float 1
.LCPI2_5:
	.long	1056964608              # float 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.long	1633907568              # 0x61637370
	.long	1095782476              # 0x4150504c
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_2:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
.LCPI2_3:
	.long	63189                   # 0xf6d5
	.long	65536                   # 0x10000
	.long	54060                   # 0xd32c
	.long	0                       # 0x0
.LCPI2_4:
	.long	1056964608              # float 5.000000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1056964608              # float 5.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_6:
	.quad	4679239875398991872     # double 65535
	.text
	.globl	gsicc_create_fromabc
	.align	16, 0x90
	.type	gsicc_create_fromabc,@function
gsicc_create_fromabc:                   # @gsicc_create_fromabc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$360, %rsp              # imm = 0x168
.Ltmp24:
	.cfi_def_cfa_offset 416
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
	movq	%rcx, %r12
	movb	$1, %r14b
	cmpl	$0, (%r8)
	movb	$1, %cl
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8272(%r8)
	movb	$1, %cl
	je	.LBB2_3
# BB#2:                                 # %land.rhs
	cmpl	$0, 16544(%r8)
	sete	%cl
.LBB2_3:                                # %land.end
	cmpl	$0, (%r9)
	je	.LBB2_4
# BB#5:                                 # %land.lhs.true.15
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 2088(%r9)
	je	.LBB2_7
# BB#6:                                 # %land.rhs.21
	cmpl	$0, 4176(%r9)
	sete	%r14b
	jmp	.LBB2_7
.LBB2_4:
	movq	%rsi, 40(%rsp)          # 8-byte Spill
.LBB2_7:                                # %land.end.27
	movq	72(%rdi), %r13
	movq	$0, 56(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 80(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 104(%rsp)
	movq	$0, 96(%rsp)
	movss	64(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_16
	jp	.LBB2_16
# BB#8:                                 # %land.lhs.true.i
	movss	68(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#9:                                 # %land.lhs.true.6.i
	movss	72(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#10:                                # %land.lhs.true.11.i
	movss	80(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_16
	jp	.LBB2_16
# BB#11:                                # %land.lhs.true.16.i
	movss	76(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#12:                                # %land.lhs.true.22.i
	movss	84(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#13:                                # %land.lhs.true.28.i
	movss	96(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_16
	jp	.LBB2_16
# BB#14:                                # %land.rhs.i
	movss	88(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#15:                                # %land.rhs.38.i
	cmpeqss	92(%r13), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB2_16:                               # %gsicc_matrix_init.exit
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movb	%cl, 36(%rsp)           # 1-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movzbl	%al, %eax
	movl	%eax, 100(%r13)
	movss	6464(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_25
	jp	.LBB2_25
# BB#17:                                # %land.lhs.true.i.104
	movss	6468(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_25
	jp	.LBB2_25
# BB#18:                                # %land.lhs.true.6.i.107
	movss	6472(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_25
	jp	.LBB2_25
# BB#19:                                # %land.lhs.true.11.i.110
	movss	6480(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_25
	jp	.LBB2_25
# BB#20:                                # %land.lhs.true.16.i.113
	movss	6476(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_25
	jp	.LBB2_25
# BB#21:                                # %land.lhs.true.22.i.116
	movss	6484(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_25
	jp	.LBB2_25
# BB#22:                                # %land.lhs.true.28.i.119
	movss	6496(%r13), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI2_0(%rip), %xmm0
	jne	.LBB2_25
	jp	.LBB2_25
# BB#23:                                # %land.rhs.i.122
	movss	6488(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_25
	jp	.LBB2_25
# BB#24:                                # %land.rhs.38.i.125
	cmpeqss	6492(%r13), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB2_25:                               # %gsicc_matrix_init.exit128
	movq	416(%rsp), %r15
	movzbl	%al, %eax
	movl	%eax, 6500(%r13)
	movl	$0, 172(%rsp)
	movl	$69206016, 176(%rsp)    # imm = 0x4200000
	movw	$0, 196(%rsp)
	movw	$0, 198(%rsp)
	movw	$0, 200(%rsp)
	movw	$0, 194(%rsp)
	movw	$0, 202(%rsp)
	movw	$0, 192(%rsp)
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [1633907568,1095782476,0,0]
	movups	%xmm0, 204(%rsp)
	movaps	.LCPI2_2(%rip), %xmm0   # xmm0 = [0,0,0,3]
	movups	%xmm0, 220(%rsp)
	movaps	.LCPI2_3(%rip), %xmm0   # xmm0 = [63189,65536,54060,0]
	movups	%xmm0, 236(%rsp)
	leaq	252(%rsp), %rdi
	xorl	%esi, %esi
	movl	$44, %edx
	callq	memset
	movl	$1380401696, 184(%rsp)  # imm = 0x52474220
	movl	$1935896178, 180(%rsp)  # imm = 0x73636E72
	movl	$1482250784, 188(%rsp)  # imm = 0x58595A20
	movl	$3, 96(%rsp)
	movl	$3, 100(%rsp)
	leaq	104(%r13), %rbp
	movq	%rbp, 104(%rsp)
	leaq	116(%r13), %rax
	movq	%rax, 112(%rsp)
	movl	$1064752592, 304(%rsp)  # imm = 0x3F76D5D0
	movabsq	$4563039935703023616, %rax # imm = 0x3F532CA53F800000
	movq	%rax, 308(%rsp)
	movl	$36, %esi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbx
	movq	%rbx, 120(%rsp)
	testq	%rbx, %rbx
	jne	.LBB2_27
# BB#26:                                # %if.then.i.133
	movl	$.L__func__.gsicc_compute_cam, %edi
	movl	$.L.str.1, %esi
	movl	$931, %edx              # imm = 0x3A3
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_27:                               # %gsicc_compute_cam.exit
	leaq	304(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	gsicc_create_compute_cam
	movl	$0, (%r15)
	leaq	6416(%r13), %rbx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	check_range
	testl	%eax, %eax
	je	.LBB2_28
# BB#29:                                # %if.else
	leaq	64(%r13), %rdi
	leaq	6464(%r13), %r15
	movl	6500(%r13), %eax
	movl	100(%r13), %ecx
	movl	%eax, %edx
	orl	%ecx, %edx
	sete	%dl
	testb	%r14b, %dl
	je	.LBB2_30
# BB#55:                                # %if.else.75
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	cmpb	$0, 36(%rsp)            # 1-byte Folded Reload
	je	.LBB2_59
# BB#56:                                # %if.then.77
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbp
	movq	%rbp, 56(%rsp)
	testq	%rbp, %rbp
	jne	.LBB2_58
# BB#57:                                # %if.then.81
	movl	$.L__func__.gsicc_create_fromabc, %edi
	movl	$.L.str.1, %esi
	movl	$1831, %edx             # imm = 0x727
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_58:                               # %if.end.83
	leaq	6552(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
	leaq	2048(%rbp), %rdi
	leaq	14824(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %rbp             # imm = 0x1000
	leaq	23096(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
.LBB2_59:                               # %if.then.111
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %r14
	movq	%r14, 72(%rsp)
	testq	%r14, %r14
	jne	.LBB2_61
# BB#60:                                # %if.then.117
	movq	56(%rsp), %rsi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edi
	movl	$.L.str.1, %esi
	movl	$1849, %edx             # imm = 0x739
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_61:                               # %if.end.149
	leaq	168(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r14, %rdi
	callq	memcpy
	leaq	2048(%r14), %rdi
	leaq	2256(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	leaq	4096(%r14), %rdi
	addq	$4344, %r13             # imm = 0x10F8
	movl	$2048, %edx             # imm = 0x800
	movq	%r13, %rsi
	callq	memcpy
	movl	$48, %esi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbx
	movq	%rbx, 64(%rsp)
	testq	%r14, %r14
	jne	.LBB2_63
# BB#62:                                # %if.then.156
	movq	56(%rsp), %rsi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edi
	movl	$.L.str.1, %esi
	movl	$1869, %edx             # imm = 0x74D
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_63:                               # %for.body.i.for.body.i_crit_edge
	movabsq	$8589934594, %rax       # imm = 0x200000002
	movq	%rax, 16(%rbx)
	movl	$2, 24(%rbx)
	movl	$3, 32(%rbx)
	movl	$3, 36(%rbx)
	movl	$2, 44(%rbx)
	movl	16(%rbx), %eax
	addl	%eax, %eax
	movl	%eax, 40(%rbx)
	imull	24(%rbx), %eax
	movl	%eax, 40(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$48, %esi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB2_65
# BB#64:                                # %if.then.179
	movq	56(%rsp), %rsi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	movl	$.L__func__.gsicc_create_fromabc, %edi
	movl	$.L.str.1, %esi
	movl	$1889, %edx             # imm = 0x761
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_65:                               # %if.end.190
	movq	(%rbx), %rbx
	xorl	%ebp, %ebp
	leaq	304(%rsp), %r14
	leaq	344(%rsp), %r13
	.align	16, 0x90
.LBB2_66:                               # %for.body.i.155
                                        # =>This Inner Loop Header: Depth=1
	movl	.Lgsicc_matrix3_to_mlut.grid_points(%rbp,%rbp), %eax
	movl	%eax, 304(%rsp)
	movl	.Lgsicc_matrix3_to_mlut.grid_points+4(%rbp,%rbp), %eax
	movl	%eax, 308(%rsp)
	movl	.Lgsicc_matrix3_to_mlut.grid_points+8(%rbp,%rbp), %eax
	movl	%eax, 312(%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	cie_mult3
	xorps	%xmm0, %xmm0
	maxss	344(%rsp), %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	.LCPI2_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, (%rbx,%rbp)
	xorpd	%xmm0, %xmm0
	maxss	348(%rsp), %xmm0
	movaps	%xmm2, %xmm1
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, 2(%rbx,%rbp)
	xorpd	%xmm0, %xmm0
	maxss	352(%rsp), %xmm0
	movaps	%xmm2, %xmm1
	minss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, 4(%rbx,%rbp)
	addq	$6, %rbp
	cmpq	$48, %rbp
	jne	.LBB2_66
# BB#67:                                # %gsicc_matrix3_to_mlut.exit
	leaq	128(%rsp), %rbx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	cie_matrix_transpose3
	movq	%rbx, 80(%rsp)
	leaq	168(%rsp), %rsi
	leaq	56(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %r9
	callq	create_lutAtoBprofile
	jmp	.LBB2_68
.LBB2_28:                               # %if.then.39
	movq	%r12, (%rsp)
	leaq	56(%rsp), %rdi
	leaq	168(%rsp), %rsi
	xorl	%edx, %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %r8
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gsicc_create_mashed_clut
.LBB2_68:                               # %if.end.202
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_69
.LBB2_30:                               # %if.then.57
	leaq	128(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	orl	%eax, %ecx
	je	.LBB2_31
# BB#32:                                # %if.else.i
	testl	%eax, %eax
	cmoveq	%r15, %rdi
	leaq	128(%rsp), %rsi
	jmp	.LBB2_33
.LBB2_31:                               # %if.then.i.137
	leaq	304(%rsp), %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	cie_matrix_mult3
	leaq	128(%rsp), %rsi
	movq	%rbx, %rdi
.LBB2_33:                               # %if.end.8.i
	callq	cie_matrix_transpose3
	movq	48(%rsp), %r15          # 8-byte Reload
	movb	36(%rsp), %bl           # 1-byte Reload
	movb	%bl, %al
	andb	%r14b, %al
	movl	6500(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB2_44
# BB#34:                                # %if.end.8.i
	movb	%al, %dl
	xorb	$1, %dl
	jne	.LBB2_44
# BB#35:
	xorl	%r14d, %r14d
	jmp	.LBB2_36
.LBB2_44:                               # %if.end.16.i
	testl	%ecx, %ecx
	sete	%cl
	orb	%cl, %al
	andb	%r14b, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB2_36
# BB#45:                                # %if.then.21.i
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L.str.21, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbp
	movq	%rbp, 88(%rsp)
	testq	%rbp, %rbp
	jne	.LBB2_47
# BB#46:                                # %if.then.23.i
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$1662, %edx             # imm = 0x67E
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_47:                               # %if.end.25.i
	leaq	168(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
	leaq	2048(%rbp), %rdi
	leaq	2256(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	movq	%rbp, %rdi
	addq	$4096, %rdi             # imm = 0x1000
	leaq	4344(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	testb	%bl, %bl
	je	.LBB2_52
# BB#48:                                # %if.then.41.i
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L.str.21, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %r14
	movq	%r14, 72(%rsp)
	testq	%r14, %r14
	jne	.LBB2_50
# BB#49:                                # %if.then.47.i
	movl	$.L.str.21, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*24(%r12)
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$1675, %edx             # imm = 0x68B
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_50:                               # %if.end.51.i
	leaq	6552(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r14, %rdi
	callq	memcpy
	leaq	2048(%r14), %rdi
	leaq	14824(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %r14             # imm = 0x1000
	addq	$23096, %r13            # imm = 0x5A38
	movl	$2048, %edx             # imm = 0x800
	movq	%r14, %rdi
	jmp	.LBB2_51
.LBB2_36:                               # %if.else.71.i
	testb	%bl, %bl
	je	.LBB2_40
# BB#37:                                # %if.then.73.i
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L.str.21, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbp
	movq	%rbp, 72(%rsp)
	testq	%rbp, %rbp
	jne	.LBB2_39
# BB#38:                                # %if.then.80.i
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$1692, %edx             # imm = 0x69C
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_39:                               # %if.end.82.i
	leaq	6552(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
	leaq	2048(%rbp), %rdi
	leaq	14824(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %rbp             # imm = 0x1000
	leaq	23096(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
.LBB2_40:                               # %if.end.101.i
	testb	%r14b, %r14b
	je	.LBB2_52
# BB#41:                                # %if.then.103.i
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L.str.21, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	movq	%rax, %rbp
	movq	%rbp, 72(%rsp)
	testq	%rbp, %rbp
	jne	.LBB2_43
# BB#42:                                # %if.then.110.i
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$1704, %edx             # imm = 0x6A8
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB2_43:                               # %if.end.112.i
	leaq	168(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
	callq	memcpy
	leaq	2048(%rbp), %rdi
	leaq	2256(%r13), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %rbp             # imm = 0x1000
	addq	$4344, %r13             # imm = 0x10F8
	movl	$2048, %edx             # imm = 0x800
	movq	%rbp, %rdi
.LBB2_51:                               # %if.end.132.i
	movq	%r13, %rsi
	callq	memcpy
.LBB2_52:                               # %if.end.132.i
	cmpq	$0, 88(%rsp)
	jne	.LBB2_54
# BB#53:                                # %if.then.135.i
	movaps	.LCPI2_4(%rip), %xmm0   # xmm0 = [5.000000e-01,5.000000e-01,5.000000e-01,5.000000e-01]
	movaps	128(%rsp), %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, 128(%rsp)
	mulps	144(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movss	160(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI2_5(%rip), %xmm0
	movss	%xmm0, 160(%rsp)
.LBB2_54:                               # %gsicc_create_abc_merge.exit
	movq	$0, 64(%rsp)
	leaq	168(%rsp), %rsi
	leaq	56(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %r9
	callq	create_lutAtoBprofile
.LBB2_69:                               # %if.end.202
	movq	56(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	88(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	72(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	120(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	64(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB2_71
# BB#70:                                # %if.then.i
	movq	(%rbx), %rsi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
.LBB2_71:                               # %gsicc_create_free_luta2bpart.exit
	movl	168(%rsp), %eax
	movl	%eax, (%r15)
	xorl	%eax, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gsicc_create_fromabc, .Lfunc_end2-gsicc_create_fromabc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1073741568              # float 1.99996948
.LCPI3_2:
	.long	1065353216              # float 1
.LCPI3_3:
	.long	1199570688              # float 65535
	.text
	.align	16, 0x90
	.type	gsicc_create_mashed_clut,@function
gsicc_create_mashed_clut:               # @gsicc_create_mashed_clut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp37:
	.cfi_def_cfa_offset 592
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movq	592(%rsp), %rbx
	movl	$48, %esi
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	testq	%rax, %rax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$.L.str.16, %edi
	movl	$.L.str.1, %esi
	movl	$1563, %edx             # imm = 0x61B
	xorl	%ecx, %ecx
	movq	%rax, %r14
	movl	$-25, %r8d
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movq	%r14, %rax
.LBB3_2:                                # %if.end
	movq	%rax, 8(%r12)
	movl	40(%r12), %edx
	leaq	16(%rax), %r14
	cmpl	$1, %edx
	jne	.LBB3_3
# BB#67:                                # %if.then.4
	movl	$128, 16(%rax)
	movl	40(%r12), %edx
	movl	$128, %esi
	movq	%rbx, %r15
	jmp	.LBB3_11
.LBB3_3:                                # %for.cond.preheader
	testl	%edx, %edx
	jle	.LBB3_10
# BB#4:                                 # %for.body.lr.ph
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	4(%r15,%rsi,4), %ecx
	cmpl	$10, %ecx
	jl	.LBB3_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	%ecx, 16(%rax,%rsi,4)
	jmp	.LBB3_9
	.align	16, 0x90
.LBB3_8:                                # %if.else.17
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$9, 16(%rax,%rsi,4)
.LBB3_9:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	incq	%rsi
	movslq	40(%r12), %rdx
	cmpq	%rdx, %rsi
	jl	.LBB3_5
.LBB3_10:
	movq	%rbx, %r15
	movl	(%r14), %esi
.LBB3_11:                               # %if.end.22
	movl	%edx, 32(%rax)
	movl	$3, 36(%rax)
	movl	$2, 44(%rax)
	movl	%esi, 40(%rax)
	cmpl	$2, %edx
	jl	.LBB3_19
# BB#12:                                # %for.body.preheader.i
	movslq	%edx, %rcx
	leal	3(%rdx), %edi
	leaq	-2(%rcx), %r8
	movl	$1, %ebx
	testb	$3, %dil
	je	.LBB3_16
# BB#13:                                # %for.body.i.prol.preheader
	addb	$3, %dl
	movzbl	%dl, %edx
	andl	$3, %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_14:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbx
	imull	20(%rax,%rbx,4), %esi
	movl	%esi, 40(%rax)
	leaq	1(%rbx), %rdi
	cmpq	%rdi, %rdx
	jne	.LBB3_14
# BB#15:
	addq	$2, %rbx
.LBB3_16:                               # %for.body.preheader.i.split
	cmpq	$3, %r8
	jb	.LBB3_19
# BB#17:                                # %for.body.preheader.i.split.split
	subq	%rbx, %rcx
	leaq	28(%rax,%rbx,4), %rdx
	.align	16, 0x90
.LBB3_18:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	-12(%rdx), %esi
	movl	%esi, 40(%rax)
	imull	-8(%rdx), %esi
	movl	%esi, 40(%rax)
	imull	-4(%rdx), %esi
	movl	%esi, 40(%rax)
	imull	(%rdx), %esi
	movl	%esi, 40(%rax)
	addq	$16, %rdx
	addq	$-4, %rcx
	jne	.LBB3_18
.LBB3_19:                               # %gsicc_create_initialize_clut.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	addl	%esi, %esi
	leal	(%rsi,%rsi,2), %esi
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	movq	%rax, %rbx
	callq	*64(%r15)
	movq	%rbx, %rsi
	movq	%rax, (%rsi)
	testq	%rax, %rax
	jne	.LBB3_21
# BB#20:                                # %if.then.32
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	movq	%rsi, %rbx
	callq	*24(%r15)
	movl	$.L.str.16, %edi
	movl	$.L.str.1, %esi
	movl	$1589, %edx             # imm = 0x635
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movq	%rbx, %rsi
.LBB3_21:                               # %if.end.35
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	48(%r12), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	32(%rsi), %r12d
	movl	40(%rsi), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	(%r14), %r14d
	leaq	528(%rsp), %rdi
	movq	%r13, %rbx
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	gx_cie_to_xyz_alloc
	movl	%eax, %r8d
	testl	%r8d, %r8d
	jns	.LBB3_23
# BB#22:                                # %if.then.i
	movl	$.L__func__.gsicc_create_clut, %edi
	movl	$.L.str.1, %esi
	movl	$347, %edx              # imm = 0x15B
	movl	$1, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB3_23:                               # %if.end.i
	movq	%rbx, %rdi
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	callq	gs_color_space_get_index
	movq	%rax, 160(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	movl	%r12d, %r13d
	movl	%r13d, 84(%rsp)         # 4-byte Spill
	movq	%r14, %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	jle	.LBB3_42
# BB#24:                                # %for.body.lr.ph.i
	leal	(,%rdi,4), %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	leal	-1(%rdi), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 128(%rsp)        # 4-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movabsq	$8589934588, %r14       # imm = 0x1FFFFFFFC
	andq	%rcx, %r14
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cvtdq2ps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)        # 16-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_25:                               # %for.body.i.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_33 Depth 2
                                        #     Child Loop BB3_40 Depth 2
	movl	$.L__func__.gsicc_create_clut, %edx
	movq	%r15, %rdi
	movl	140(%rsp), %esi         # 4-byte Reload
	callq	*64(%r15)
	movq	%rax, %r12
	movq	%r12, 496(%rsp,%rbx,8)
	testq	%r12, %r12
	jne	.LBB3_29
# BB#26:                                # %for.cond.12.preheader.i
                                        #   in Loop: Header=BB3_25 Depth=1
	testq	%rbx, %rbx
	movq	%r15, %r13
	movl	$0, %r15d
	jle	.LBB3_28
	.align	16, 0x90
.LBB3_27:                               # %for.body.15.i
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	496(%rsp,%r15,8), %rsi
	movl	$.L__func__.gsicc_create_clut, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	incq	%r15
	cmpl	%r15d, %ebx
	jne	.LBB3_27
.LBB3_28:                               # %for.end.i
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	$.L__func__.gsicc_create_clut, %edi
	movl	$.L.str.1, %esi
	movl	$361, %edx              # imm = 0x169
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movq	%r13, %r15
	movl	84(%rsp), %r13d         # 4-byte Reload
.LBB3_29:                               # %if.end.20.i
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	144(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	movss	128(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movaps	112(%rsp), %xmm4        # 16-byte Reload
	movdqa	.LCPI3_0(%rip), %xmm5   # xmm5 = [0,1,2,3]
	jle	.LBB3_41
# BB#30:                                # %for.body.28.lr.ph.i
                                        #   in Loop: Header=BB3_25 Depth=1
	xorl	%eax, %eax
	testq	%r14, %r14
	movl	$0, %edx
	je	.LBB3_35
# BB#31:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_25 Depth=1
	leaq	(%rbp,%rbx,8), %rdx
	leaq	(%r12,%r14,4), %rcx
	xorl	%eax, %eax
	cmpq	%rdx, %r12
	ja	.LBB3_33
# BB#32:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	%r12, %rsi
	addq	72(%rsp), %rsi          # 8-byte Folded Reload
	cmpq	%rsi, %rdx
	movl	$0, %edx
	jbe	.LBB3_35
	.align	16, 0x90
.LBB3_33:                               # %vector.body
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	paddd	%xmm5, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	divps	%xmm4, %xmm0
	movss	4(%rbp,%rbx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movss	(%rbp,%rbx,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	subps	%xmm2, %xmm1
	mulps	%xmm0, %xmm1
	addps	%xmm2, %xmm1
	movups	%xmm1, (%r12,%rax,4)
	addq	$4, %rax
	cmpq	%rax, %r14
	jne	.LBB3_33
# BB#34:                                #   in Loop: Header=BB3_25 Depth=1
	movq	%r14, %rax
	movl	%r14d, %edx
	movq	%rcx, %r12
.LBB3_35:                               # %middle.block
                                        #   in Loop: Header=BB3_25 Depth=1
	cmpq	%rax, 104(%rsp)         # 8-byte Folded Reload
	je	.LBB3_41
# BB#36:                                # %for.body.28.i.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	%edi, %eax
	subl	%edx, %eax
	testb	$1, %al
	jne	.LBB3_38
# BB#37:                                #   in Loop: Header=BB3_25 Depth=1
	movl	%edx, %eax
	jmp	.LBB3_39
.LBB3_38:                               # %for.body.28.i.prol
                                        #   in Loop: Header=BB3_25 Depth=1
	cvtsi2ssl	%edx, %xmm0
	divss	%xmm3, %xmm0
	movss	4(%rbp,%rbx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	(%rbp,%rbx,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%r12)
	addq	$4, %r12
	leal	1(%rdx), %eax
.LBB3_39:                               # %for.body.28.i.preheader.split
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpl	%edx, %ecx
	je	.LBB3_41
	.align	16, 0x90
.LBB3_40:                               # %for.body.28.i
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	%xmm3, %xmm0
	movss	4(%rbp,%rbx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	(%rbp,%rbx,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%r12)
	leal	1(%rax), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	%xmm3, %xmm0
	movss	4(%rbp,%rbx,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	(%rbp,%rbx,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 4(%r12)
	addl	$2, %eax
	addq	$8, %r12
	cmpl	%edi, %eax
	jne	.LBB3_40
	.align	16, 0x90
.LBB3_41:                               # %for.inc.37.i
                                        #   in Loop: Header=BB3_25 Depth=1
	incq	%rbx
	cmpl	%r13d, %ebx
	jne	.LBB3_25
.LBB3_42:                               # %for.end.39.i
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	jle	.LBB3_60
# BB#43:                                # %for.body.43.lr.ph.i
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r12
	movq	496(%rsp), %r14
	movq	504(%rsp), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	512(%rsp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm0, 104(%rsp)        # 4-byte Spill
	movl	%edi, %eax
	imull	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 96(%rsp)         # 4-byte Spill
	movq	520(%rsp), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	imull	%edi, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	movq	160(%rsp), %rax         # 8-byte Reload
	addl	$-5, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB3_44:                               # %for.body.43.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, %r13d
	je	.LBB3_49
# BB#45:                                # %for.body.43.i
                                        #   in Loop: Header=BB3_44 Depth=1
	cmpl	$3, %r13d
	jne	.LBB3_46
# BB#48:                                # %if.then.54.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movslq	%edx, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, 248(%rsp)
	cvtsi2ssl	%ebp, %xmm0
	movss	%xmm0, 140(%rsp)        # 4-byte Spill
	divss	104(%rsp), %xmm0        # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	movq	%rdi, %rbx
	callq	floor
	cvttsd2si	%xmm0, %rax
	xorl	%edx, %edx
	divl	%ebx
	movslq	%edx, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, 244(%rsp)
	movss	140(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	96(%rsp), %xmm0         # 4-byte Folded Reload
	jmp	.LBB3_50
	.align	16, 0x90
.LBB3_49:                               # %if.then.92.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movslq	%edx, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, 252(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	%xmm0, 140(%rsp)        # 4-byte Spill
	divss	104(%rsp), %xmm0        # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	movq	%rdi, %rbx
	callq	floor
	cvttsd2si	%xmm0, %rax
	xorl	%edx, %edx
	divl	%ebx
	movslq	%edx, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, 248(%rsp)
	movss	140(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	96(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %rax
	xorl	%edx, %edx
	divl	%ebx
	movslq	%edx, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, 244(%rsp)
	movss	140(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	64(%rsp), %xmm0         # 4-byte Folded Reload
.LBB3_50:                               # %if.end.142.i
                                        #   in Loop: Header=BB3_44 Depth=1
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	movq	%rbx, %rdi
	cvttsd2si	%xmm0, %rax
	xorl	%edx, %edx
	divl	%edi
	jmp	.LBB3_51
	.align	16, 0x90
.LBB3_46:                               # %for.body.43.i
                                        #   in Loop: Header=BB3_44 Depth=1
	cmpl	$1, %r13d
	jne	.LBB3_52
# BB#47:                                # %if.then.46.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%edi
	.align	16, 0x90
.LBB3_51:                               # %if.end.142.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movslq	%edx, %rax
	movl	(%r14,%rax,4), %eax
	movl	%eax, 240(%rsp)
.LBB3_52:                               # %if.end.142.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	cmpl	$3, %eax
	ja	.LBB3_59
# BB#53:                                # %if.end.142.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	%rdi, %rbx
	movq	160(%rsp), %rax         # 8-byte Reload
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_57:                               # %sw.bb.159.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	528(%rsp), %r8
	leaq	232(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	leaq	226(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	gx_psconcretize_CIEDEFG
	jmp	.LBB3_58
.LBB3_56:                               # %sw.bb.155.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	528(%rsp), %r8
	leaq	232(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	leaq	226(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	gx_psconcretize_CIEDEF
	jmp	.LBB3_58
.LBB3_55:                               # %sw.bb.151.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	528(%rsp), %r8
	leaq	232(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	leaq	226(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	gx_psconcretize_CIEABC
	jmp	.LBB3_58
.LBB3_54:                               # %sw.bb.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	528(%rsp), %r8
	leaq	232(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	leaq	226(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	gx_psconcretize_CIEA
	movss	216(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	56(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 212(%rsp)
	mulss	8(%rax), %xmm0
	movss	%xmm0, 220(%rsp)
.LBB3_58:                               # %for.cond.163.preheader.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movq	%rbx, %rdi
.LBB3_59:                               # %for.cond.163.preheader.i
                                        #   in Loop: Header=BB3_44 Depth=1
	movss	212(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	maxss	%xmm0, %xmm1
	movss	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	minss	%xmm1, %xmm0
	movss	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm4
	mulss	%xmm4, %xmm0
	cvttss2si	%xmm0, %rax
	movw	%ax, (%r12)
	movss	216(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	maxss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	minss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	cvttss2si	%xmm0, %rax
	movw	%ax, 2(%r12)
	movss	220(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	maxss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	minss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	cvttss2si	%xmm0, %rax
	movw	%ax, 4(%r12)
	incl	%ebp
	addq	$6, %r12
	cmpl	%ebp, 156(%rsp)         # 4-byte Folded Reload
	jne	.LBB3_44
.LBB3_60:                               # %for.end.189.i
	movq	528(%rsp), %rdi
	callq	gx_cie_to_xyz_free
	testl	%r13d, %r13d
	jle	.LBB3_63
# BB#61:
	leaq	496(%rsp), %rbx
	.align	16, 0x90
.LBB3_62:                               # %for.body.193.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movl	$.L__func__.gsicc_create_clut, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	addq	$8, %rbx
	decl	%r13d
	jne	.LBB3_62
.LBB3_63:                               # %gsicc_make_diag_matrix.exit
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rsi
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, (%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 16(%rbx)
	movl	$1065353216, 168(%rsp)  # imm = 0x3F800000
	movl	$1065353216, 184(%rsp)  # imm = 0x3F800000
	movl	$1065353216, 200(%rsp)  # imm = 0x3F800000
	movl	$0, 172(%rsp)
	movl	$0, 176(%rsp)
	movl	$0, 192(%rsp)
	movl	$0, 196(%rsp)
	movl	$0, 180(%rsp)
	movl	$0, 188(%rsp)
	movl	$1, 204(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 24(%rbx)
	cmpl	$1, 40(%rbx)
	jne	.LBB3_65
# BB#64:                                # %if.then.50
	movl	$1, %ecx
	jmp	.LBB3_66
.LBB3_65:                               # %if.else.52
	xorl	%ecx, %ecx
.LBB3_66:                               # %if.end.54
	movl	$1, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %r9
	callq	create_lutAtoBprofile
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gsicc_create_mashed_clut, .Lfunc_end3-gsicc_create_mashed_clut
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_57
	.quad	.LBB3_56
	.quad	.LBB3_55
	.quad	.LBB3_54

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4679240012837945344     # double 65536
.LCPI4_1:
	.long	1062415525              # float 8.249000e-01
	.long	1054027128              # float 4.124563e-01
.LCPI4_2:
	.long	1064752592              # float 9.642000e-01
	.long	1056364231              # float 4.821074e-01
.LCPI4_3:
	.long	1065353216              # float 1.000000e+00
	.long	1056964736              # float 5.000076e-01
.LCPI4_5:
	.quad	4679239875398991872     # double 65535
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_4:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_6:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	create_lutAtoBprofile,@function
create_lutAtoBprofile:                  # @create_lutAtoBprofile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 224
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	$80, %esi
	movl	$.L.str.23, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$.L.str.23, %edi
	movl	$.L.str.1, %esi
	movl	$1430, %edx             # imm = 0x596
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB4_2:                                # %if.end
	movabsq	$826318091107, %rax     # imm = 0xC064657363
	movq	%rax, (%r12)
	movl	$desc_name, %edi
	callq	strlen
	addq	%rax, %rax
	leal	28(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	28(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	28(%rax,%rcx), %ecx
	movl	$4, %ebx
	movl	$4, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rdx), %ecx
	andl	$-4, %ecx
	subl	%ecx, %edx
	movb	%dl, 12(%r12)
	movzbl	%dl, %ecx
	leal	28(%rax,%rcx), %edx
	movl	%edx, 8(%r12)
	leal	220(%rax,%rcx), %ebp
	movl	%ebp, 20(%r12)
	movl	$1668313716, 16(%r12)   # imm = 0x63707274
	movl	$copy_right, %edi
	callq	strlen
	addq	%rax, %rax
	leal	28(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	28(%rax,%rcx), %ecx
	andl	$-4, %ecx
	negl	%ecx
	leal	28(%rax,%rcx), %ecx
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%rbx), %ecx
	andl	$-4, %ecx
	subl	%ecx, %ebx
	movb	%bl, 28(%r12)
	movzbl	%bl, %ecx
	leal	28(%rax,%rcx), %ecx
	movl	%ecx, 24(%r12)
	leal	(%rcx,%rbp), %eax
	movl	%eax, 36(%r12)
	movl	$2004119668, 32(%r12)   # imm = 0x77747074
	movb	$0, 44(%r12)
	movl	$20, 40(%r12)
	leal	20(%rcx,%rbp), %ecx
	movl	%ecx, 52(%r12)
	movl	$1651208308, 48(%r12)   # imm = 0x626B7074
	movb	$0, 60(%r12)
	movl	$20, 56(%r12)
	movl	40(%r13), %edx
	movl	44(%r13), %ecx
	imull	$1036, %ecx, %esi       # imm = 0x40C
	shll	$2, %ecx
	cmpq	$0, 32(%r13)
	leal	(%rcx,%rcx,2), %edi
	movl	%edi, %ecx
	je	.LBB4_4
# BB#3:                                 # %select.mid
	movl	%esi, %ecx
.LBB4_4:                                # %select.end
	cmpq	$0, 24(%r13)
	je	.LBB4_5
# BB#6:                                 # %if.then.4.i
	addl	$80, %ecx
	cmpq	$0, 16(%r13)
	je	.LBB4_8
# BB#7:                                 # %if.then.7.i
	addl	%esi, %ecx
	jmp	.LBB4_9
.LBB4_5:
	addl	$32, %ecx
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.10.i
	addl	%edi, %ecx
.LBB4_9:                                # %if.end.14.i
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB4_13
# BB#10:                                # %if.then.16.i
	movl	40(%rsi), %edi
	imull	44(%rsi), %edi
	leal	(%rdi,%rdi,2), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	shrl	$30, %edi
	leal	(%rdi,%rsi), %edi
	andl	$-4, %edi
	addl	%esi, %ecx
	subl	%edi, %esi
	movl	$4, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	leal	(%rsi,%rdi), %esi
	andl	$-4, %esi
	subl	%esi, %edi
	leal	20(%rcx,%rdi), %ecx
	cmpq	$0, (%r13)
	je	.LBB4_12
# BB#11:                                # %if.then.26.i
	imull	$1036, %edx, %edx       # imm = 0x40C
	addl	%edx, %ecx
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.29.i
	leal	(%rdx,%rdx,2), %edx
	leal	(%rcx,%rdx,4), %ecx
.LBB4_13:                               # %getsize_lutAtoBtype.exit
	leal	40(%rax), %edx
	movl	%edx, 68(%r12)
	movl	$1093812784, 64(%r12)   # imm = 0x41324230
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-4, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	$4, %edx
	subl	%esi, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-4, %esi
	subl	%esi, %edx
	movb	%dl, 76(%r12)
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movl	%edx, 72(%r12)
	leal	40(%rax,%rdx), %ebx
	movq	200(%r14), %rdi
	movl	$.L.str.23, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB4_15
# BB#14:                                # %if.then.16
	movl	$.L.str.23, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%r14)
	movl	$.L.str.23, %edi
	movl	$.L.str.1, %esi
	movl	$1455, %edx             # imm = 0x5AF
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB4_15:                               # %if.end.19
	movl	%ebx, (%r15)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	copy_header
	movl	$83886080, 128(%rbp)    # imm = 0x5000000
	movl	(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 132(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 133(%rbp)
	movb	%ah, 134(%rbp)  # NOREX
	movb	%al, 135(%rbp)
	movl	4(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 136(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 137(%rbp)
	movb	%ah, 138(%rbp)  # NOREX
	movb	%al, 139(%rbp)
	movl	8(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 140(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 141(%rbp)
	movb	%ah, 142(%rbp)  # NOREX
	movb	%al, 143(%rbp)
	movl	16(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 144(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 145(%rbp)
	movb	%ah, 146(%rbp)  # NOREX
	movb	%al, 147(%rbp)
	movl	20(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 148(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 149(%rbp)
	movb	%ah, 150(%rbp)  # NOREX
	movb	%al, 151(%rbp)
	movl	24(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 152(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 153(%rbp)
	movb	%ah, 154(%rbp)  # NOREX
	movb	%al, 155(%rbp)
	movl	32(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 156(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 157(%rbp)
	movb	%ah, 158(%rbp)  # NOREX
	movb	%al, 159(%rbp)
	movl	36(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 160(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 161(%rbp)
	movb	%ah, 162(%rbp)  # NOREX
	movb	%al, 163(%rbp)
	movl	40(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 164(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 165(%rbp)
	movb	%ah, 166(%rbp)  # NOREX
	movb	%al, 167(%rbp)
	movl	48(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 168(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 169(%rbp)
	movb	%ah, 170(%rbp)  # NOREX
	movb	%al, 171(%rbp)
	movl	52(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 172(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 173(%rbp)
	movb	%ah, 174(%rbp)  # NOREX
	movb	%al, 175(%rbp)
	movl	56(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 176(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 177(%rbp)
	movb	%ah, 178(%rbp)  # NOREX
	movb	%al, 179(%rbp)
	movl	64(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 180(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 181(%rbp)
	movb	%ah, 182(%rbp)  # NOREX
	movb	%al, 183(%rbp)
	movl	68(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 184(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 185(%rbp)
	movb	%ah, 186(%rbp)  # NOREX
	movb	%al, 187(%rbp)
	movl	72(%r12), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 188(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 189(%rbp)
	movb	%ah, 190(%rbp)  # NOREX
	movb	%al, 191(%rbp)
	leaq	192(%rbp), %rdi
	movl	$desc_name, %esi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	callq	add_v4_text_tag
	movl	8(%r12), %eax
	leaq	192(%rbp,%rax), %rdi
	movl	$copy_right, %esi
	movl	$1, %ecx
	movq	%r12, %rdx
	callq	add_v4_text_tag
	movl	8(%r12), %eax
	movq	%rbp, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	24(%r12), %ebp
	leaq	192(%rcx,%rax), %rax
	addq	%rax, %rbp
	movl	$1064752592, 152(%rsp)  # imm = 0x3F76D5D0
	movabsq	$4563039935703023616, %rax # imm = 0x3F532CA53F800000
	movq	%rax, 156(%rsp)
	movl	$36, %esi
	movl	$.L.str.23, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB4_17
# BB#16:                                # %if.then.42
	movl	$.L.str.23, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%r14)
	movq	200(%r14), %rdi
	movl	$.L.str.23, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	$.L.str.23, %edi
	movl	$.L.str.1, %esi
	movl	$1483, %edx             # imm = 0x5CB
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB4_17:                               # %if.end.50
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	48(%r13), %rdi
	leaq	152(%rsp), %rsi
	movq	%rbx, %rdx
	callq	gsicc_create_compute_cam
	movq	%rbx, 64(%r13)
	movl	$542792024, (%rbp)      # imm = 0x205A5958
	leaq	4(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movabsq	$1103101296640, %rax    # imm = 0x100D5F60000
	movq	%rax, 8(%rbp)
	movl	$752025600, 16(%rbp)    # imm = 0x2CD30000
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	40(%r12), %ebx
	leaq	(%rbp,%rbx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	56(%r13), %rax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	maxss	(%rax), %xmm1
	cvttss2si	%xmm1, %ecx
	movswl	%cx, %edx
	cvtsi2ssl	%edx, %xmm2
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI4_0(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	shll	$16, %ecx
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movzwl	%dx, %r12d
	orl	%ecx, %r12d
	xorpd	%xmm1, %xmm1
	maxss	4(%rax), %xmm1
	cvttss2si	%xmm1, %ecx
	movswl	%cx, %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	shll	$16, %ecx
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movzwl	%dx, %r13d
	orl	%ecx, %r13d
	maxss	8(%rax), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %r15d
	shll	$16, %eax
	movzwl	%r15w, %r14d
	orl	%eax, %r14d
	movb	$88, (%rbp,%rbx)
	movw	$23129, 1(%rbp,%rbx)    # imm = 0x5A59
	movb	$32, 3(%rbp,%rbx)
	leaq	4(%rbp,%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movslq	%r12d, %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 8(%rbp,%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 9(%rbp,%rbx)
	movb	%ah, 10(%rbp,%rbx)  # NOREX
	movl	48(%rsp), %eax          # 4-byte Reload
	movb	%al, 11(%rbp,%rbx)
	movslq	%r13d, %rax
	movq	88(%rsp), %r13          # 8-byte Reload
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 12(%rbp,%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 13(%rbp,%rbx)
	movb	%ah, 14(%rbp,%rbx)  # NOREX
	movl	40(%rsp), %eax          # 4-byte Reload
	movb	%al, 15(%rbp,%rbx)
	movslq	%r14d, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 16(%rbp,%rbx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 17(%rbp,%rbx)
	movb	%ah, 18(%rbp,%rbx)  # NOREX
	movb	%r15b, 19(%rbp,%rbx)
	movl	56(%rdx), %ebp
	addq	96(%rsp), %rbp          # 8-byte Folded Reload
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_18
# BB#19:                                # %if.else
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	je	.LBB4_21
# BB#20:                                # %if.then.72
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	sete	%cl
	movzbl	%cl, %ecx
	movss	.LCPI4_1(,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI4_2(,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI4_3(,%rcx,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm4
	unpcklps	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	unpcklps	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1]
	unpcklps	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	movss	12(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	16(%rax), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm6
	unpcklps	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	unpcklps	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	unpcklps	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	unpcklps	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	mulps	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	addps	%xmm2, %xmm4
	movups	%xmm4, (%rax)
	unpcklps	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	unpcklps	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1]
	unpcklps	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	mulps	%xmm3, %xmm5
	addps	%xmm2, %xmm5
	movups	%xmm5, 16(%rax)
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 32(%rax)
	jmp	.LBB4_22
.LBB4_18:                               # %if.then.69
	movq	%rbp, %rbx
	leaq	112(%rsp), %rbp
	movl	$36, %edx
	movq	%rbp, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	%rbp, 24(%r13)
	movq	%rbx, %rbp
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.99
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	xorpd	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	mulss	12(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	8(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	24(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 112(%rsp)
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	4(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	16(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	8(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	28(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 116(%rsp)
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	8(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	20(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	8(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	32(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 120(%rsp)
	movss	12(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	16(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	12(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	20(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	24(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 124(%rsp)
	movss	12(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	16(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	4(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	16(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	20(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	28(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 128(%rsp)
	movss	12(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	16(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	8(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	20(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	20(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	32(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 132(%rsp)
	movss	24(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	28(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	12(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	32(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	24(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 136(%rsp)
	movss	24(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	28(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	4(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	16(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	32(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	28(%rax), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 140(%rsp)
	movss	24(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	28(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	8(%rax), %xmm1
	addss	%xmm0, %xmm1
	mulss	20(%rax), %xmm2
	addss	%xmm1, %xmm2
	movss	32(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	32(%rax), %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 144(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 24(%r13)
.LBB4_22:                               # %if.end.107
	movslq	44(%r13), %r15
	movl	40(%r13), %ebx
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	movl	$541213037, (%rbp)      # imm = 0x2042416D
	leaq	4(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movb	%bl, 8(%rbp)
	leaq	10(%rbp), %rdi
	movb	%r15b, 9(%rbp)
	xorl	%esi, %esi
	movl	$2, %edx
	callq	memset
	movq	%r15, %rcx
	shlq	$2, %rcx
	imull	$1036, %r15d, %eax      # imm = 0x40C
	cmpq	$0, 32(%r13)
	movb	$0, 12(%rbp)
	movb	$0, 13(%rbp)
	movb	$0, 14(%rbp)
	movb	$32, 15(%rbp)
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	je	.LBB4_24
# BB#23:                                # %select.mid370
	movl	%eax, %ecx
.LBB4_24:                               # %select.end369
	leal	32(%rcx), %ebx
	cmpq	$0, 24(%r13)
	je	.LBB4_25
# BB#26:                                # %if.else.18.i
	movslq	%ebx, %rdx
	movq	%rdx, %rsi
	shrq	$24, %rsi
	movb	%sil, 16(%rbp)
	movq	%rdx, %rsi
	shrq	$16, %rsi
	movb	%sil, 17(%rbp)
	movb	%dh, 18(%rbp)  # NOREX
	movb	%dl, 19(%rbp)
	addl	$80, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, %rsi
	shrq	$24, %rsi
	movq	%rdx, %rdi
	shrq	$16, %rdi
	cmpq	$0, 16(%r13)
	movb	%sil, 20(%rbp)
	movb	%dil, 21(%rbp)
	movb	%dh, 22(%rbp)  # NOREX
	movb	%dl, 23(%rbp)
	je	.LBB4_27
# BB#28:                                # %if.else.28.i
	addl	%eax, %ecx
	jmp	.LBB4_29
.LBB4_25:                               # %if.then.14.i
	leaq	16(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	leaq	20(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	jmp	.LBB4_30
.LBB4_27:                               # %if.then.24.i
	movq	48(%rsp), %rax          # 8-byte Reload
	addl	%eax, %ecx
.LBB4_29:                               # %if.end.33.i
	movl	%ecx, %ebx
.LBB4_30:                               # %if.end.33.i
	cmpq	$0, 8(%r13)
	je	.LBB4_31
# BB#32:                                # %if.else.41.i
	movslq	%ebx, %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 24(%rbp)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 25(%rbp)
	movb	%ah, 26(%rbp)  # NOREX
	movb	%al, 27(%rbp)
	movq	8(%r13), %rcx
	movl	40(%rcx), %edx
	imull	44(%rcx), %edx
	leal	(%rdx,%rdx,2), %ecx
	movq	%rbp, %rdi
	movslq	%ecx, %rbp
	movq	%rbp, %rdx
	sarq	$63, %rdx
	shrq	$62, %rdx
	leaq	(%rdx,%rbp), %rdx
	andq	$-4, %rdx
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	movl	$4, %ebx
	subq	%rsi, %rbx
	movq	%rbx, %rdx
	sarq	$63, %rdx
	shrq	$62, %rdx
	leaq	(%rdx,%rbx), %rdx
	andq	$-4, %rdx
	subq	%rdx, %rbx
	addl	%ebx, %eax
	leal	20(%rax,%rcx), %eax
	cltq
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 28(%rdi)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 29(%rdi)
	movb	%ah, 30(%rdi)  # NOREX
	movb	%al, 31(%rdi)
	addq	$20, %rbp
	jmp	.LBB4_33
.LBB4_31:                               # %if.then.37.i
	leaq	24(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	leaq	28(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movq	%rbp, %rdi
                                        # implicit-def: RBP
.LBB4_33:                               # %if.end.71.i
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	32(%rdi), %rdi
	movq	%r13, %rax
	movq	32(%rax), %r13
	movq	%rax, %r12
	testq	%r13, %r13
	je	.LBB4_45
# BB#34:                                # %for.cond.preheader.i
	testl	%r15d, %r15d
	jle	.LBB4_35
# BB#36:                                # %for.body.lr.ph.i
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leal	-1(%r15), %eax
	movq	%r15, 104(%rsp)         # 8-byte Spill
	imulq	$1036, %rax, %rax       # imm = 0x40C
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB4_37
	.align	16, 0x90
.LBB4_44:                               # %add_curve.exit200.for.body_crit_edge.i
                                        #   in Loop: Header=BB4_37 Depth=1
	addq	$1036, %rdi             # imm = 0x40C
	movq	%r13, %rax
	movq	32(%rax), %r13
	movq	%rax, %r12
	addl	$512, %r15d             # imm = 0x200
.LBB4_37:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
	movslq	%r15d, %rbx
	movl	$1987212643, (%rdi)     # imm = 0x76727563
	movq	%rdi, %rbp
	leaq	4(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movq	%rbp, %rdi
	movl	$131072, 8(%rdi)        # imm = 0x20000
	leaq	12(%rdi), %rax
	leaq	(%r13,%rbx,4), %rcx
	xorl	%edx, %edx
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_5(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB4_38:                               # %for.body.i.182.i
                                        #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_40
# BB#39:                                # %if.end.thread.i.183.i
                                        #   in Loop: Header=BB4_38 Depth=2
	movl	$0, (%rcx,%rdx,4)
	xorps	%xmm0, %xmm0
	jmp	.LBB4_42
	.align	16, 0x90
.LBB4_40:                               # %if.end.i.185.i
                                        #   in Loop: Header=BB4_38 Depth=2
	ucomiss	.LCPI4_4(%rip), %xmm0
	jbe	.LBB4_42
# BB#41:                                # %if.then.12.i.186.i
                                        #   in Loop: Header=BB4_38 Depth=2
	movl	$1065353216, (%rcx,%rdx,4) # imm = 0x3F800000
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB4_42:                               # %if.end.15.i.198.i
                                        #   in Loop: Header=BB4_38 Depth=2
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rbx
	movb	%bh, (%rax)  # NOREX
	movb	%bl, 1(%rax)
	incq	%rdx
	addq	$2, %rax
	cmpq	$512, %rdx              # imm = 0x200
	jne	.LBB4_38
# BB#43:                                # %add_curve.exit200.i
                                        #   in Loop: Header=BB4_37 Depth=1
	incq	%r14
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	movq	%r12, %r13
	jne	.LBB4_44
# BB#49:                                # %for.cond.if.end.87.loopexit_crit_edge.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	1068(%rcx,%rax), %rdi
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB4_50
.LBB4_45:                               # %if.else.83.i
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	testl	%r15d, %r15d
	jle	.LBB4_48
# BB#46:
	movl	%r15d, %ebx
	movq	%r14, %rbp
	.align	16, 0x90
.LBB4_47:                               # %for.body.i.216.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1987212643, (%rbp)     # imm = 0x76727563
	leaq	4(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movl	$0, 8(%rbp)
	addq	$12, %rbp
	decl	%ebx
	jne	.LBB4_47
.LBB4_48:                               # %add_ident_curves.exit218.i
	movq	%r14, %rdi
	addq	48(%rsp), %rdi          # 8-byte Folded Reload
	movq	%r12, %r13
	jmp	.LBB4_50
.LBB4_35:
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r12, %r13
.LBB4_50:                               # %if.end.87.i
	movq	24(%r13), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB4_73
# BB#51:
	xorpd	%xmm0, %xmm0
	movaps	.LCPI4_6(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	.align	16, 0x90
.LBB4_52:                               # %for.body.i.219.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rax,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	jbe	.LBB4_54
# BB#53:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB4_52 Depth=1
	xorps	%xmm1, %xmm2
	cvttss2si	%xmm2, %esi
	movswl	%si, %edx
	cvtsi2ssl	%edx, %xmm3
	subss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	.LCPI4_0(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
	shll	$16, %esi
	movzwl	%dx, %edx
	orl	%esi, %edx
	negl	%edx
	jmp	.LBB4_55
	.align	16, 0x90
.LBB4_54:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB4_52 Depth=1
	cvttss2si	%xmm2, %esi
	movswl	%si, %edx
	cvtsi2ssl	%edx, %xmm3
	subss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	.LCPI4_0(%rip), %xmm2
	cvttsd2si	%xmm2, %edx
	shll	$16, %esi
	movzwl	%dx, %edx
	orl	%esi, %edx
.LBB4_55:                               # %double2icS15Fixed16Number.exit.i.i
                                        #   in Loop: Header=BB4_52 Depth=1
	movslq	%edx, %rdx
	movq	%rdx, %rsi
	shrq	$24, %rsi
	movb	%sil, (%rdi,%rcx,4)
	movq	%rdx, %rsi
	shrq	$16, %rsi
	movb	%sil, 1(%rdi,%rcx,4)
	movb	%dh, 2(%rdi,%rcx,4)  # NOREX
	movb	%dl, 3(%rdi,%rcx,4)
	incq	%rcx
	cmpl	$9, %ecx
	jne	.LBB4_52
# BB#56:                                # %add_matrixwithbias.exit.i
	movq	%rdi, %rbx
	leaq	36(%rbx), %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	callq	memset
	movq	%rbx, %rax
	leaq	48(%rax), %rbp
	movq	16(%r13), %r12
	testq	%r12, %r12
	je	.LBB4_68
# BB#57:                                # %for.cond.98.preheader.i
	testl	%r15d, %r15d
	jle	.LBB4_58
# BB#59:                                # %for.body.101.lr.ph.i
	movq	%r15, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rax, %r15
	movq	%r13, 88(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %eax
	imulq	$1036, %rax, %rax       # imm = 0x40C
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB4_60
	.align	16, 0x90
.LBB4_67:                               # %add_curve.exit264.for.body.101_crit_edge.i
                                        #   in Loop: Header=BB4_60 Depth=1
	movq	%rdi, %r15
	addq	$1036, %rbp             # imm = 0x40C
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %r12
	addl	$512, %r13d             # imm = 0x200
.LBB4_60:                               # %for.body.101.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_61 Depth 2
	movslq	%r13d, %rbx
	movl	$1987212643, (%rbp)     # imm = 0x76727563
	leaq	4(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movl	$131072, 8(%rbp)        # imm = 0x20000
	leaq	12(%rbp), %rax
	leaq	(%r12,%rbx,4), %rcx
	xorl	%edx, %edx
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_5(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB4_61:                               # %for.body.i.246.i
                                        #   Parent Loop BB4_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_63
# BB#62:                                # %if.end.thread.i.247.i
                                        #   in Loop: Header=BB4_61 Depth=2
	movl	$0, (%rcx,%rdx,4)
	xorps	%xmm0, %xmm0
	jmp	.LBB4_65
	.align	16, 0x90
.LBB4_63:                               # %if.end.i.249.i
                                        #   in Loop: Header=BB4_61 Depth=2
	ucomiss	.LCPI4_4(%rip), %xmm0
	jbe	.LBB4_65
# BB#64:                                # %if.then.12.i.250.i
                                        #   in Loop: Header=BB4_61 Depth=2
	movl	$1065353216, (%rcx,%rdx,4) # imm = 0x3F800000
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB4_65:                               # %if.end.15.i.262.i
                                        #   in Loop: Header=BB4_61 Depth=2
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rbx
	movb	%bh, (%rax)  # NOREX
	movb	%bl, 1(%rax)
	incq	%rdx
	addq	$2, %rax
	cmpq	$512, %rdx              # imm = 0x200
	jne	.LBB4_61
# BB#66:                                # %add_curve.exit264.i
                                        #   in Loop: Header=BB4_60 Depth=1
	incq	%r14
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	movq	%r15, %rdi
	jne	.LBB4_67
# BB#72:                                # %for.cond.98.if.end.115.loopexit_crit_edge.i
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	1084(%rax,%rdi), %rdi
	movq	88(%rsp), %r13          # 8-byte Reload
	jmp	.LBB4_73
.LBB4_68:                               # %if.else.110.i
	testl	%r15d, %r15d
	jle	.LBB4_71
# BB#69:
	movq	%rbp, %rbx
	.align	16, 0x90
.LBB4_70:                               # %for.body.i.280.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1987212643, (%rbx)     # imm = 0x76727563
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movl	$0, 8(%rbx)
	addq	$12, %rbx
	decl	%r15d
	jne	.LBB4_70
.LBB4_71:                               # %add_ident_curves.exit282.i
	movq	48(%rsp), %rax          # 8-byte Reload
	cltq
	addq	%rax, %rbp
	movq	%rbp, %rdi
	jmp	.LBB4_73
.LBB4_58:
	movq	%rbp, %rdi
.LBB4_73:                               # %if.end.115.i
	movq	8(%r13), %r13
	testq	%r13, %r13
	je	.LBB4_95
# BB#74:                                # %if.then.119.i
	movslq	32(%r13), %rbp
	testq	%rbp, %rbp
	movslq	40(%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	jle	.LBB4_78
# BB#75:                                # %for.body.lr.ph.i.i
	leal	-1(%rbp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	leaq	16(%r13), %rbx
	movl	%ebp, %r15d
	movq	%rbp, %r14
	movq	%rdi, %rbp
	movq	%rdi, %r12
	.align	16, 0x90
.LBB4_76:                               # %for.body.i.125.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	memset
	incq	%rbp
	addq	$4, %rbx
	decl	%r15d
	jne	.LBB4_76
# BB#77:                                # %for.cond.for.end_crit_edge.i.i
	movl	48(%rsp), %eax          # 4-byte Reload
	movq	%r12, %rdi
	leaq	1(%rax,%rdi), %r15
	movq	%r14, %rbp
.LBB4_78:                               # %for.end.i.i
	movq	%rdi, %r12
	movl	$16, %r14d
	subq	%rbp, %r14
	movq	%rbp, %rbx
	negq	%rbx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memset
	leaq	(%r15,%r14), %rdi
	movl	44(%r13), %esi
	movl	$1, %edx
	callq	memset
	leaq	17(%r15,%rbx), %rdi
	xorl	%esi, %esi
	movl	$3, %edx
	callq	memset
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB4_79
# BB#96:                                # %if.then.i.i
	leaq	4(%r15,%r14), %rdi
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax,2), %rdx
	callq	memcpy
	movq	%r12, %rdi
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	jmp	.LBB4_82
.LBB4_79:                               # %for.cond.12.preheader.i.i
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%r12, %rdi
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	jle	.LBB4_82
# BB#80:                                # %for.body.16.lr.ph.i.i
	leaq	(%rax,%rax,2), %rax
	movl	$16, %ecx
	subl	%ebp, %ecx
	movslq	%ecx, %rcx
	leaq	4(%rcx,%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB4_81:                               # %for.body.16.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rsi
	movzwl	(%rsi,%rdx,2), %ebx
	movb	%bh, (%rcx,%rdx,2)  # NOREX
	movb	%bl, 1(%rcx,%rdx,2)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB4_81
.LBB4_82:                               # %add_clutAtoB.exit.i
	addq	%r8, %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rdi, %rbx
	movq	%r12, %rdx
	callq	memset
	movq	%rbx, %rsi
	addq	%r12, %rsi
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	(%r12), %r15
	testq	%r15, %r15
	je	.LBB4_93
# BB#83:                                # %for.cond.131.preheader.i
	movq	%r12, %rax
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	jle	.LBB4_95
# BB#84:
	xorl	%ebp, %ebp
	movq	%rax, %r12
	jmp	.LBB4_85
	.align	16, 0x90
.LBB4_92:                               # %add_curve.exit.for.body.134_crit_edge.i
                                        #   in Loop: Header=BB4_85 Depth=1
	addq	$1036, %rsi             # imm = 0x40C
	movq	(%r12), %r15
	addl	$512, %r14d             # imm = 0x200
.LBB4_85:                               # %for.body.134.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_86 Depth 2
	movslq	%r14d, %r13
	movl	$1987212643, (%rsi)     # imm = 0x76727563
	movq	%rsi, %rbx
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movq	%rbx, %rsi
	movl	$131072, 8(%rsi)        # imm = 0x20000
	leaq	(%r15,%r13,4), %rax
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_5(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB4_86:                               # %for.body.i.116.i
                                        #   Parent Loop BB4_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_88
# BB#87:                                # %if.end.thread.i.i
                                        #   in Loop: Header=BB4_86 Depth=2
	movl	$0, (%rax,%rcx,4)
	xorps	%xmm0, %xmm0
	jmp	.LBB4_90
	.align	16, 0x90
.LBB4_88:                               # %if.end.i.i
                                        #   in Loop: Header=BB4_86 Depth=2
	ucomiss	.LCPI4_4(%rip), %xmm0
	jbe	.LBB4_90
# BB#89:                                # %if.then.12.i.i
                                        #   in Loop: Header=BB4_86 Depth=2
	movl	$1065353216, (%rax,%rcx,4) # imm = 0x3F800000
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB4_90:                               # %if.end.15.i.i
                                        #   in Loop: Header=BB4_86 Depth=2
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rdx
	movb	%dh, 12(%rsi,%rcx,2)  # NOREX
	movb	%dl, 13(%rsi,%rcx,2)
	incq	%rcx
	cmpq	$512, %rcx              # imm = 0x200
	jne	.LBB4_86
# BB#91:                                # %add_curve.exit.i
                                        #   in Loop: Header=BB4_85 Depth=1
	incq	%rbp
	cmpl	96(%rsp), %ebp          # 4-byte Folded Reload
	jne	.LBB4_92
	jmp	.LBB4_95
.LBB4_93:                               # %if.else.143.i
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	jle	.LBB4_95
	.align	16, 0x90
.LBB4_94:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1987212643, (%rsi)     # imm = 0x76727563
	movq	%rsi, %rbx
	leaq	4(%rbx), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movq	%rbx, %rsi
	movl	$0, 8(%rsi)
	addq	$12, %rsi
	decl	96(%rsp)                # 4-byte Folded Spill
	jne	.LBB4_94
.LBB4_95:                               # %add_lutAtoBtype.exit
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rax)
	movl	$.L.str.23, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_lutAtoBprofile, .Lfunc_end4-create_lutAtoBprofile
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	1633907568              # 0x61637370
	.long	1095782476              # 0x4150504c
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI5_1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
.LCPI5_2:
	.long	63189                   # 0xf6d5
	.long	65536                   # 0x10000
	.long	54060                   # 0xd32c
	.long	0                       # 0x0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_3:
	.long	1199570688              # float 65535
	.text
	.globl	gsicc_create_froma
	.align	16, 0x90
	.type	gsicc_create_froma,@function
gsicc_create_froma:                     # @gsicc_create_froma
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp63:
	.cfi_def_cfa_offset 352
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
	movq	%rcx, %rbp
	movq	%rdi, %r13
	movl	(%r8), %r15d
	movb	$1, %al
	cmpl	$0, (%r9)
	je	.LBB5_1
# BB#2:                                 # %land.lhs.true
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 2088(%r9)
	je	.LBB5_4
# BB#3:                                 # %land.rhs
	cmpl	$0, 4176(%r9)
	sete	%al
	jmp	.LBB5_4
.LBB5_1:
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
.LBB5_4:                                # %land.end
	movb	%al, 15(%rsp)           # 1-byte Spill
	movq	72(%r13), %r12
	movq	$0, 32(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$0, 148(%rsp)
	movl	$69206016, 152(%rsp)    # imm = 0x4200000
	movw	$0, 172(%rsp)
	movw	$0, 174(%rsp)
	movw	$0, 176(%rsp)
	movw	$0, 170(%rsp)
	movw	$0, 178(%rsp)
	movw	$0, 168(%rsp)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [1633907568,1095782476,0,0]
	movups	%xmm0, 180(%rsp)
	movaps	.LCPI5_1(%rip), %xmm0   # xmm0 = [0,0,0,3]
	movups	%xmm0, 196(%rsp)
	movaps	.LCPI5_2(%rip), %xmm0   # xmm0 = [63189,65536,54060,0]
	movups	%xmm0, 212(%rsp)
	leaq	228(%rsp), %rdi
	xorl	%esi, %esi
	movl	$44, %edx
	callq	memset
	movl	$1196573017, 160(%rsp)  # imm = 0x47524159
	movl	$1935896178, 156(%rsp)  # imm = 0x73636E72
	movl	$1482250784, 164(%rsp)  # imm = 0x58595A20
	movl	$3, 76(%rsp)
	movl	$1, 72(%rsp)
	leaq	104(%r12), %rbx
	movq	%rbx, 80(%rsp)
	leaq	116(%r12), %rax
	movq	%rax, 88(%rsp)
	movl	$1064752592, 280(%rsp)  # imm = 0x3F76D5D0
	movabsq	$4563039935703023616, %rax # imm = 0x3F532CA53F800000
	movq	%rax, 284(%rsp)
	movl	$36, %esi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %r14
	movq	%r14, 96(%rsp)
	testq	%r14, %r14
	jne	.LBB5_6
# BB#5:                                 # %if.then.i.70
	movl	$.L__func__.gsicc_compute_cam, %edi
	movl	$.L.str.1, %esi
	movl	$931, %edx              # imm = 0x3A3
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB5_6:                                # %gsicc_compute_cam.exit
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gsicc_create_compute_cam
	leaq	16(%r12), %rdi
	movl	$3, %esi
	callq	check_range
	testl	%eax, %eax
	je	.LBB5_7
# BB#8:                                 # %if.else
	testl	%r15d, %r15d
	jne	.LBB5_12
# BB#9:                                 # %if.then.38
	movl	$2048, %esi             # imm = 0x800
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movq	%rbx, 32(%rsp)
	testq	%rbx, %rbx
	jne	.LBB5_11
# BB#10:                                # %if.then.42
	movl	$.L__func__.gsicc_create_froma, %edi
	movl	$.L.str.1, %esi
	movl	$1983, %edx             # imm = 0x7BF
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB5_11:                               # %if.end.44
	leaq	6488(%r12), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	memcpy
.LBB5_12:                               # %if.end.49
	cmpb	$0, 15(%rsp)            # 1-byte Folded Reload
	je	.LBB5_16
# BB#13:                                # %if.then.51
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movq	%rbx, 48(%rsp)
	testq	%rbx, %rbx
	jne	.LBB5_15
# BB#14:                                # %if.then.57
	movq	32(%rsp), %rsi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L__func__.gsicc_create_froma, %edi
	movl	$.L.str.1, %esi
	movl	$1993, %edx             # imm = 0x7C9
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB5_15:                               # %if.end.61
	leaq	168(%r12), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	memcpy
	leaq	2048(%rbx), %rdi
	leaq	2256(%r12), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %rbx             # imm = 0x1000
	leaq	4344(%r12), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rdi
	callq	memcpy
.LBB5_16:                               # %if.end.86
	movl	$48, %esi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movq	%rbx, 40(%rsp)
	testq	%rbx, %rbx
	jne	.LBB5_18
# BB#17:                                # %if.then.92
	movq	32(%rsp), %rsi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	48(%rsp), %rsi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L__func__.gsicc_create_froma, %edi
	movl	$.L.str.1, %esi
	movl	$2011, %edx             # imm = 0x7DB
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB5_18:                               # %gsicc_create_initialize_clut.exit
	movl	$2, 16(%rbx)
	movl	$1, 32(%rbx)
	movl	$3, 36(%rbx)
	movl	$2, 44(%rbx)
	movl	16(%rbx), %eax
	movl	%eax, 40(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$12, %esi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, (%rbx)
	testq	%rbx, %rbx
	jne	.LBB5_20
# BB#19:                                # %if.then.113
	movq	32(%rsp), %rsi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	48(%rsp), %rsi
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L__func__.gsicc_create_froma, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	$.L__func__.gsicc_create_froma, %edi
	movl	$.L.str.1, %esi
	movl	$2026, %edx             # imm = 0x7EA
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB5_20:                               # %if.end.124
	movq	(%rbx), %rax
	movw	$0, (%rax)
	movw	$0, 2(%rax)
	movw	$0, 4(%rax)
	movss	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	6432(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %esi
	cmovgl	%ecx, %esi
	movw	$-1, %di
	cmovgw	%di, %dx
	xorl	%ebx, %ebx
	testl	%esi, %esi
	cmovsw	%bx, %dx
	movw	%dx, 6(%rax)
	movss	6436(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, %esi
	cmovgl	%ecx, %esi
	cmovgw	%di, %dx
	testl	%esi, %esi
	cmovsw	%bx, %dx
	movw	%dx, 8(%rax)
	mulss	6440(%r12), %xmm0
	cvttss2si	%xmm0, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	cmovlel	%edx, %ecx
	cmovgw	%di, %dx
	testl	%ecx, %ecx
	cmovsw	%bx, %dx
	movw	%dx, 10(%rax)
	addq	$64, %r12
	leaq	104(%rsp), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	cie_matrix_transpose3
	movq	%rbx, 56(%rsp)
	movabsq	$12884901889, %rax      # imm = 0x300000001
	movq	%rax, 72(%rsp)
	leaq	144(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %r9
	callq	create_lutAtoBprofile
	jmp	.LBB5_21
.LBB5_7:                                # %if.then.26
	addq	$6416, %r12             # imm = 0x1910
	movl	$1, %esi
	movq	%r12, %rdi
	callq	check_range
	movq	%rbp, (%rsp)
	leaq	32(%rsp), %rdi
	leaq	144(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	16(%rsp), %r9           # 8-byte Reload
	callq	gsicc_create_mashed_clut
.LBB5_21:                               # %if.end.135
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	144(%rsp), %eax
	movl	%eax, (%rcx)
	movq	32(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	64(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	48(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	96(%rsp), %rsi
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB5_23
# BB#22:                                # %if.then.i
	movq	(%rbx), %rsi
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.26, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
.LBB5_23:                               # %gsicc_create_free_luta2bpart.exit
	xorl	%eax, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gsicc_create_froma, .Lfunc_end5-gsicc_create_froma
	.cfi_endproc

	.globl	gsicc_create_fromdefg
	.align	16, 0x90
	.type	gsicc_create_fromdefg,@function
gsicc_create_fromdefg:                  # @gsicc_create_fromdefg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 304
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	304(%rsp), %rax
	movq	72(%r14), %rbx
	movb	$1, %cl
	cmpl	$0, (%r9)
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true.16
	cmpl	$0, 2088(%r9)
	je	.LBB6_3
# BB#2:                                 # %land.rhs.22
	cmpl	$0, 4176(%r9)
	sete	%cl
.LBB6_3:                                # %land.end.28
	movzbl	%cl, %ebp
	cmpl	$0, (%rax)
	je	.LBB6_7
# BB#4:                                 # %land.lhs.true.35
	cmpl	$0, 2088(%rax)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true.41
	cmpl	$0, 4176(%rax)
	je	.LBB6_7
# BB#6:                                 # %land.rhs.47
	cmpl	$0, 6264(%rax)
	movq	$0, 176(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 200(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	$1129142603, 56(%rsp)   # imm = 0x434D594B
	movl	$4, 216(%rsp)
	jne	.LBB6_11
	jmp	.LBB6_8
.LBB6_7:                                # %if.then.critedge35
	movq	$0, 176(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 200(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	$1129142603, 56(%rsp)   # imm = 0x434D594B
	movl	$4, 216(%rsp)
.LBB6_8:                                # %if.then
	movl	$8192, %esi             # imm = 0x2000
	movl	$.L.str.13, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, %r15
	movq	%r15, 176(%rsp)
	testq	%r15, %r15
	jne	.LBB6_10
# BB#9:                                 # %if.then.58
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$2190, %edx             # imm = 0x88E
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB6_10:                               # %if.end
	leaq	31520(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	memcpy
	leaq	2048(%r15), %rdi
	leaq	33608(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	leaq	4096(%r15), %rdi
	leaq	35696(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$6144, %r15             # imm = 0x1800
	leaq	37784(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	memcpy
.LBB6_11:                               # %if.end.87
	leaq	31352(%rbx), %rax
	movq	%r13, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	176(%rsp), %rsi
	leaq	40(%rsp), %rcx
	leaq	31448(%rbx), %r8
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r14, %r9
	callq	gsicc_create_defg_common
	xorl	%eax, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gsicc_create_fromdefg, .Lfunc_end6-gsicc_create_fromdefg
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_1:
	.long	1633907568              # 0x61637370
	.long	1095782476              # 0x4150504c
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI7_2:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
.LCPI7_3:
	.long	63189                   # 0xf6d5
	.long	65536                   # 0x10000
	.long	54060                   # 0xd32c
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	gsicc_create_defg_common,@function
gsicc_create_defg_common:               # @gsicc_create_defg_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 96
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movss	64(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_9
	jp	.LBB7_9
# BB#1:                                 # %land.lhs.true.i
	movss	68(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# BB#2:                                 # %land.lhs.true.6.i
	movss	72(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# BB#3:                                 # %land.lhs.true.11.i
	movss	80(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_9
	jp	.LBB7_9
# BB#4:                                 # %land.lhs.true.16.i
	movss	76(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# BB#5:                                 # %land.lhs.true.22.i
	movss	84(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# BB#6:                                 # %land.lhs.true.28.i
	movss	96(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_9
	jp	.LBB7_9
# BB#7:                                 # %land.rhs.i
	movss	88(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
# BB#8:                                 # %land.rhs.38.i
	cmpeqss	92(%rbp), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB7_9:                                # %gsicc_matrix_init.exit
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	120(%rsp), %r13
	movzbl	%al, %eax
	movl	%eax, 100(%rbp)
	movss	6464(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_18
	jp	.LBB7_18
# BB#10:                                # %land.lhs.true.i.5
	movss	6468(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_18
	jp	.LBB7_18
# BB#11:                                # %land.lhs.true.6.i.8
	movss	6472(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_18
	jp	.LBB7_18
# BB#12:                                # %land.lhs.true.11.i.11
	movss	6480(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_18
	jp	.LBB7_18
# BB#13:                                # %land.lhs.true.16.i.14
	movss	6476(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_18
	jp	.LBB7_18
# BB#14:                                # %land.lhs.true.22.i.17
	movss	6484(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_18
	jp	.LBB7_18
# BB#15:                                # %land.lhs.true.28.i.20
	movss	6496(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_18
	jp	.LBB7_18
# BB#16:                                # %land.rhs.i.23
	movss	6488(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_18
	jp	.LBB7_18
# BB#17:                                # %land.rhs.38.i.26
	cmpeqss	6492(%rbp), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB7_18:                               # %gsicc_matrix_init.exit29
	movzbl	%al, %eax
	movl	%eax, 6500(%rbp)
	movl	$0, 4(%rbx)
	movl	$69206016, 8(%rbx)      # imm = 0x4200000
	movw	$0, 28(%rbx)
	movw	$0, 30(%rbx)
	movw	$0, 32(%rbx)
	movw	$0, 26(%rbx)
	movw	$0, 34(%rbx)
	movw	$0, 24(%rbx)
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [1633907568,1095782476,0,0]
	movups	%xmm0, 36(%rbx)
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [0,0,0,3]
	movups	%xmm0, 52(%rbx)
	movaps	.LCPI7_3(%rip), %xmm0   # xmm0 = [63189,65536,54060,0]
	movups	%xmm0, 68(%rbx)
	leaq	84(%rbx), %rdi
	xorl	%esi, %esi
	movl	$44, %edx
	callq	memset
	movl	$1935896178, 12(%rbx)   # imm = 0x73636E72
	movl	$1482250784, 20(%rbx)   # imm = 0x58595A20
	movl	$3, 44(%r14)
	leaq	104(%rbp), %rax
	movq	%rax, 48(%r14)
	addq	$116, %rbp
	movq	%rbp, 56(%r14)
	movl	$1064752592, 24(%rsp)   # imm = 0x3F76D5D0
	movabsq	$4563039935703023616, %rax # imm = 0x3F532CA53F800000
	movq	%rax, 28(%rsp)
	movl	$36, %esi
	movl	$.L__func__.gsicc_create_fromabc, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, 64(%r14)
	testq	%rax, %rax
	jne	.LBB7_20
# BB#19:                                # %if.then.i.34
	movl	$.L__func__.gsicc_compute_cam, %edi
	movl	$.L.str.1, %esi
	movl	$931, %edx              # imm = 0x3A3
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movq	64(%r14), %rax
.LBB7_20:                               # %gsicc_compute_cam.exit
	movq	104(%rsp), %rbp
	movq	96(%rsp), %r12
	movq	48(%r14), %rdi
	leaq	24(%rsp), %rsi
	movq	%rax, %rdx
	callq	gsicc_create_compute_cam
	movq	%r15, %rdi
	callq	gs_color_space_get_index
	cmpl	$6, %eax
	jne	.LBB7_22
# BB#21:                                # %if.then.16
	movq	72(%r15), %rdi
	addq	$31352, %rdi            # imm = 0x7A78
	movl	$3, %esi
	jmp	.LBB7_23
.LBB7_22:                               # %if.else
	movq	72(%r15), %rdi
	addq	$31352, %rdi            # imm = 0x7A78
	movl	$4, %esi
.LBB7_23:                               # %if.end.23
	callq	check_range
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%rbp, %r9
	callq	gsicc_create_mashed_clut
	movq	(%r14), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	32(%r14), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	16(%r14), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	64(%r14), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB7_25
# BB#24:                                # %if.then.i
	movq	(%rax), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	8(%r14), %rsi
	movl	$.L.str.26, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB7_25:                               # %gsicc_create_free_luta2bpart.exit
	movl	(%rbx), %eax
	movq	112(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gsicc_create_defg_common, .Lfunc_end7-gsicc_create_defg_common
	.cfi_endproc

	.globl	gsicc_create_fromdef
	.align	16, 0x90
	.type	gsicc_create_fromdef,@function
gsicc_create_fromdef:                   # @gsicc_create_fromdef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 304
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdi, %r14
	movq	304(%rsp), %rax
	movq	72(%r14), %rbx
	movb	$1, %cl
	cmpl	$0, (%r9)
	je	.LBB8_1
# BB#2:                                 # %land.lhs.true.16
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 2088(%r9)
	je	.LBB8_4
# BB#3:                                 # %land.rhs.22
	cmpl	$0, 4176(%r9)
	sete	%cl
	jmp	.LBB8_4
.LBB8_1:
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
.LBB8_4:                                # %land.end.28
	movzbl	%cl, %ebp
	cmpl	$0, (%rax)
	je	.LBB8_7
# BB#5:                                 # %land.lhs.true.35
	cmpl	$0, 2088(%rax)
	je	.LBB8_7
# BB#6:                                 # %land.rhs.41
	cmpl	$0, 4176(%rax)
	movq	$0, 176(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 200(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	$1380401696, 56(%rsp)   # imm = 0x52474220
	movl	$3, 216(%rsp)
	jne	.LBB8_11
	jmp	.LBB8_8
.LBB8_7:                                # %if.then.critedge28
	movq	$0, 176(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 200(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	$1380401696, 56(%rsp)   # imm = 0x52474220
	movl	$3, 216(%rsp)
.LBB8_8:                                # %if.then
	movl	$6144, %esi             # imm = 0x1800
	movl	$.L.str.14, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, %r15
	movq	%r15, 176(%rsp)
	testq	%r15, %r15
	jne	.LBB8_10
# BB#9:                                 # %if.then.52
	movl	$.L.str.14, %edi
	movl	$.L.str.1, %esi
	movl	$2254, %edx             # imm = 0x8CE
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB8_10:                               # %if.end
	leaq	31496(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	memcpy
	leaq	2048(%r15), %rdi
	leaq	33584(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	addq	$4096, %r15             # imm = 0x1000
	leaq	35672(%rbx), %rsi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	memcpy
.LBB8_11:                               # %if.end.73
	leaq	31352(%rbx), %rax
	movq	%r13, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	176(%rsp), %rsi
	leaq	40(%rsp), %rcx
	leaq	31424(%rbx), %r8
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r14, %r9
	callq	gsicc_create_defg_common
	xorl	%eax, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gsicc_create_fromdef, .Lfunc_end8-gsicc_create_fromdef
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.long	1633907568              # 0x61637370
	.long	1095782476              # 0x4150504c
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI9_1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
.LCPI9_2:
	.long	63189                   # 0xf6d5
	.long	65536                   # 0x10000
	.long	54060                   # 0xd32c
	.long	0                       # 0x0
	.text
	.globl	gsicc_create_fromcrd
	.align	16, 0x90
	.type	gsicc_create_fromcrd,@function
gsicc_create_fromcrd:                   # @gsicc_create_fromcrd
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$136, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 144
	movl	$0, 4(%rsp)
	movl	$69206016, 8(%rsp)      # imm = 0x4200000
	movw	$0, 28(%rsp)
	movw	$0, 30(%rsp)
	movw	$0, 32(%rsp)
	movw	$0, 26(%rsp)
	movw	$0, 34(%rsp)
	movw	$0, 24(%rsp)
	movaps	.LCPI9_0(%rip), %xmm0   # xmm0 = [1633907568,1095782476,0,0]
	movups	%xmm0, 36(%rsp)
	movaps	.LCPI9_1(%rip), %xmm0   # xmm0 = [0,0,0,3]
	movups	%xmm0, 52(%rsp)
	movaps	.LCPI9_2(%rip), %xmm0   # xmm0 = [63189,65536,54060,0]
	movups	%xmm0, 68(%rsp)
	leaq	84(%rsp), %rdi
	xorl	%esi, %esi
	movl	$44, %edx
	callq	memset
	addq	$136, %rsp
	retq
.Lfunc_end9:
	.size	gsicc_create_fromcrd, .Lfunc_end9-gsicc_create_fromcrd
	.cfi_endproc

	.align	16, 0x90
	.type	add_v4_text_tag,@function
add_v4_text_tag:                        # @add_v4_text_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 64
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$1668639853, (%r13)     # imm = 0x63756C6D
	leaq	4(%r13), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	movabsq	$864691128471912448, %rax # imm = 0xC00000001000000
	movq	%rax, 8(%r13)
	movl	$1398107749, 16(%r13)   # imm = 0x53556E65
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rcx
	movq	%rax, %rdx
	leaq	(%rax,%rax), %rsi
	shrq	$23, %rax
	movb	%al, 20(%r13)
	shrq	$15, %rcx
	movb	%cl, 21(%r13)
	shrq	$7, %rdx
	movb	%dl, 22(%r13)
	movb	%sil, 23(%r13)
	movb	$0, 24(%r13)
	movb	$0, 25(%r13)
	movb	$0, 26(%r13)
	movb	$28, 27(%r13)
	movq	%r12, %rdi
	callq	strlen
	addq	$28, %r13
	testq	%rax, %rax
	je	.LBB10_4
# BB#1:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movb	$0, (%r13,%rbp,2)
	movb	(%r12,%rbp), %al
	movb	%al, 1(%r13,%rbp,2)
	incq	%rbp
	movq	%r12, %rdi
	callq	strlen
	leaq	2(%rbx), %rcx
	cmpq	%rax, %rbp
	jb	.LBB10_2
# BB#3:
	leaq	2(%r13,%rbx), %r13
.LBB10_4:                               # %for.end
	movslq	%r15d, %rax
	shlq	$4, %rax
	movzbl	12(%r14,%rax), %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memset                  # TAILCALL
.Lfunc_end10:
	.size	add_v4_text_tag, .Lfunc_end10-add_v4_text_tag
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1060870344              # float 0.732800006
.LCPI11_1:
	.long	1054602376              # float 0.4296
.LCPI11_2:
	.long	3190180912              # float -0.162400007
.LCPI11_3:
	.long	3207864097              # float -0.703599989
.LCPI11_4:
	.long	1071204270              # float 1.69749999
.LCPI11_5:
	.long	1002955394              # float 0.00609999988
.LCPI11_6:
	.long	994352038               # float 0.00300000003
.LCPI11_7:
	.long	1012847241              # float 0.0136000002
.LCPI11_8:
	.long	1065074714              # float 0.983399987
.LCPI11_9:
	.long	1065353216              # float 1
.LCPI11_22:
	.long	3156035922              # float -0.00960000045
.LCPI11_23:
	.long	3149580049              # float -0.0057000001
.LCPI11_24:
	.long	1065481562              # float 1.01530004
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_10:
	.long	1060870344              # float 7.328000e-01
	.long	1054602376              # float 4.296000e-01
	.long	3190180912              # float -1.624000e-01
	.long	1060870344              # float 7.328000e-01
.LCPI11_11:
	.long	3207864097              # float -7.036000e-01
	.long	1071204270              # float 1.697500e+00
	.long	1002955394              # float 6.100000e-03
	.long	3207864097              # float -7.036000e-01
.LCPI11_12:
	.long	994352038               # float 3.000000e-03
	.long	1012847241              # float 1.360000e-02
	.long	1065074714              # float 9.834000e-01
	.long	994352038               # float 3.000000e-03
.LCPI11_13:
	.long	1054602376              # float 4.296000e-01
	.long	3190180912              # float -1.624000e-01
	.long	1060870344              # float 7.328000e-01
	.long	1054602376              # float 4.296000e-01
.LCPI11_14:
	.long	1071204270              # float 1.697500e+00
	.long	1002955394              # float 6.100000e-03
	.long	3207864097              # float -7.036000e-01
	.long	1071204270              # float 1.697500e+00
.LCPI11_15:
	.long	1012847241              # float 1.360000e-02
	.long	1065074714              # float 9.834000e-01
	.long	994352038               # float 3.000000e-03
	.long	1012847241              # float 1.360000e-02
.LCPI11_16:
	.long	1066159361              # float 1.096100e+00
	.long	1066159361              # float 1.096100e+00
	.long	1066159361              # float 1.096100e+00
	.long	1055434526              # float 4.544000e-01
.LCPI11_17:
	.long	3197029371              # float -2.789000e-01
	.long	3197029371              # float -2.789000e-01
	.long	3197029371              # float -2.789000e-01
	.long	1056075416              # float 4.735000e-01
.LCPI11_18:
	.long	1044059573              # float 1.827000e-01
	.long	1044059573              # float 1.827000e-01
	.long	1044059573              # float 1.827000e-01
	.long	1033087274              # float 7.210000e-02
.LCPI11_19:
	.long	1055434526              # float 4.544000e-01
	.long	1055434526              # float 4.544000e-01
	.long	3156035922              # float -9.600000e-03
	.long	3156035922              # float -9.600000e-03
.LCPI11_20:
	.long	1056075416              # float 4.735000e-01
	.long	1056075416              # float 4.735000e-01
	.long	3149580049              # float -5.700000e-03
	.long	3149580049              # float -5.700000e-03
.LCPI11_21:
	.long	1033087274              # float 7.210000e-02
	.long	1033087274              # float 7.210000e-02
	.long	1065481562              # float 1.015300e+00
	.long	1065481562              # float 1.015300e+00
	.text
	.align	16, 0x90
	.type	gsicc_create_compute_cam,@function
gsicc_create_compute_cam:               # @gsicc_create_compute_cam
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 144
.Ltmp125:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	xorps	%xmm8, %xmm8
	addss	%xmm8, %xmm2
	movss	.LCPI11_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	movss	8(%rdi), %xmm7          # xmm7 = mem[0],zero,zero,zero
	movss	.LCPI11_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 12(%rsp)         # 4-byte Spill
	movss	.LCPI11_3(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm8, %xmm4
	movss	.LCPI11_4(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm5
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	movss	.LCPI11_5(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm7, %xmm4
	mulss	%xmm6, %xmm4
	addss	%xmm5, %xmm4
	movss	%xmm4, 16(%rsp)         # 4-byte Spill
	movss	.LCPI11_6(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	addss	%xmm8, %xmm1
	movss	.LCPI11_7(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movss	.LCPI11_8(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm7
	addss	%xmm0, %xmm7
	movss	%xmm7, 28(%rsp)         # 4-byte Spill
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rsp)           # 4-byte Spill
	movss	4(%rsi), %xmm7          # xmm7 = mem[0],zero,zero,zero
	movss	%xmm7, 4(%rsp)          # 4-byte Spill
	movss	8(%rsi), %xmm9          # xmm9 = mem[0],zero,zero,zero
	movss	%xmm9, 8(%rsp)          # 4-byte Spill
	mulss	%xmm0, %xmm2
	addss	%xmm8, %xmm2
	mulss	%xmm7, %xmm3
	addss	%xmm2, %xmm3
	mulss	%xmm9, %xmm6
	addss	%xmm3, %xmm6
	movss	%xmm6, 24(%rsp)         # 4-byte Spill
	mulss	%xmm0, %xmm4
	addss	%xmm8, %xmm4
	mulss	%xmm7, %xmm5
	addss	%xmm4, %xmm5
	mulss	%xmm9, %xmm1
	addss	%xmm5, %xmm1
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$36, %edx
	callq	memset
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm8, %xmm8
	movss	.LCPI11_9(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm8, %xmm0
	movaps	%xmm2, %xmm1
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movss	(%rsp), %xmm1           # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI11_0(%rip), %xmm1
	addss	%xmm8, %xmm1
	movss	4(%rsp), %xmm3          # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	mulss	.LCPI11_1(%rip), %xmm3
	addss	%xmm1, %xmm3
	movss	8(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI11_2(%rip), %xmm1
	addss	%xmm3, %xmm1
	divss	%xmm0, %xmm1
.LBB11_2:                               # %for.inc
	movss	%xmm1, 80(%rsp)
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	16(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm0
	xorps	%xmm4, %xmm4
	cmpltss	%xmm3, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm2, %xmm4
	orps	%xmm0, %xmm4
	movss	%xmm4, 96(%rsp)
	movss	28(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movss	20(%rsp), %xmm5         # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm5
	xorps	%xmm0, %xmm0
	cmpltss	%xmm3, %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm2, %xmm0
	orps	%xmm5, %xmm0
	movss	%xmm0, 112(%rsp)
	movss	92(%rsp), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	unpcklps	%xmm5, %xmm2    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	unpcklps	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1]
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	mulps	.LCPI11_10(%rip), %xmm1
	xorps	%xmm2, %xmm2
	addps	%xmm2, %xmm1
	movss	84(%rsp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movss	88(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	unpcklps	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	unpcklps	%xmm6, %xmm6    # xmm6 = xmm6[0,0,1,1]
	unpcklps	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	mulps	.LCPI11_11(%rip), %xmm6
	addps	%xmm1, %xmm6
	movss	100(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm7
	unpcklps	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	unpcklps	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1]
	unpcklps	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
	mulps	.LCPI11_12(%rip), %xmm3
	addps	%xmm6, %xmm3
	movaps	%xmm3, 32(%rsp)
	movss	104(%rsp), %xmm7        # xmm7 = mem[0],zero,zero,zero
	movss	108(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
	unpcklps	%xmm5, %xmm5    # xmm5 = xmm5[0,0,1,1]
	mulps	.LCPI11_13(%rip), %xmm5
	addps	%xmm2, %xmm5
	unpcklps	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	unpcklps	%xmm4, %xmm4    # xmm4 = xmm4[0,0,1,1]
	mulps	.LCPI11_14(%rip), %xmm4
	addps	%xmm5, %xmm4
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	unpcklps	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1]
	mulps	.LCPI11_15(%rip), %xmm1
	addps	%xmm4, %xmm1
	movaps	%xmm1, 48(%rsp)
	mulss	.LCPI11_2(%rip), %xmm7
	addss	%xmm8, %xmm7
	mulss	.LCPI11_5(%rip), %xmm6
	addss	%xmm7, %xmm6
	mulss	.LCPI11_8(%rip), %xmm0
	addss	%xmm6, %xmm0
	movss	%xmm0, 64(%rsp)
	movaps	%xmm1, %xmm4
	shufps	$229, %xmm4, %xmm4      # xmm4 = xmm4[1,1,2,3]
	movaps	%xmm3, %xmm5
	shufps	$36, %xmm5, %xmm5       # xmm5 = xmm5[0,1,2,0]
	mulps	.LCPI11_16(%rip), %xmm5
	addps	%xmm2, %xmm5
	movaps	%xmm1, %xmm6
	shufps	$244, %xmm3, %xmm6      # xmm6 = xmm6[0,1],xmm3[3,3]
	shufps	$210, %xmm6, %xmm6      # xmm6 = xmm6[2,0,1,3]
	mulps	.LCPI11_17(%rip), %xmm6
	addps	%xmm5, %xmm6
	movaps	%xmm1, %xmm5
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	movaps	%xmm0, %xmm7
	shufps	$48, %xmm5, %xmm7       # xmm7 = xmm7[0,0],xmm5[3,0]
	shufps	$132, %xmm7, %xmm5      # xmm5 = xmm5[0,1],xmm7[0,2]
	movaps	%xmm1, %xmm7
	shufps	$34, %xmm5, %xmm7       # xmm7 = xmm7[2,0],xmm5[2,0]
	shufps	$36, %xmm7, %xmm5       # xmm5 = xmm5[0,1],xmm7[2,0]
	mulps	.LCPI11_18(%rip), %xmm5
	addps	%xmm6, %xmm5
	movups	%xmm5, (%rbx)
	movaps	%xmm3, %xmm5
	shufps	$233, %xmm5, %xmm5      # xmm5 = xmm5[1,2,2,3]
	movss	32(%rsp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	movss	36(%rsp), %xmm7         # xmm7 = mem[0],zero,zero,zero
	shufps	$48, %xmm5, %xmm6       # xmm6 = xmm6[0,0],xmm5[3,0]
	shufps	$132, %xmm6, %xmm5      # xmm5 = xmm5[0,1],xmm6[0,2]
	shufps	$32, %xmm5, %xmm7       # xmm7 = xmm7[0,0],xmm5[2,0]
	shufps	$36, %xmm7, %xmm5       # xmm5 = xmm5[0,1],xmm7[2,0]
	mulps	.LCPI11_19(%rip), %xmm5
	addps	%xmm2, %xmm5
	shufps	$3, %xmm1, %xmm3        # xmm3 = xmm3[3,0],xmm1[0,0]
	movaps	%xmm1, %xmm2
	shufps	$132, %xmm3, %xmm2      # xmm2 = xmm2[0,1],xmm3[0,2]
	mulps	.LCPI11_20(%rip), %xmm2
	addps	%xmm5, %xmm2
	movaps	%xmm1, %xmm3
	shufps	$231, %xmm3, %xmm3      # xmm3 = xmm3[3,1,2,3]
	movaps	%xmm0, %xmm5
	shufps	$0, %xmm3, %xmm5        # xmm5 = xmm5[0,0],xmm3[0,0]
	shufps	$226, %xmm3, %xmm5      # xmm5 = xmm5[2,0],xmm3[2,3]
	movsd	%xmm5, %xmm1            # xmm1 = xmm5[0],xmm1[1]
	mulps	.LCPI11_21(%rip), %xmm1
	addps	%xmm2, %xmm1
	movups	%xmm1, 16(%rbx)
	movss	40(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI11_22(%rip), %xmm1
	addss	%xmm8, %xmm1
	mulss	.LCPI11_23(%rip), %xmm4
	addss	%xmm1, %xmm4
	mulss	.LCPI11_24(%rip), %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 32(%rbx)
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end11:
	.size	gsicc_create_compute_cam, .Lfunc_end11-gsicc_create_compute_cam
	.cfi_endproc

	.type	.Lgsicc_create_from_cal.TRC_Tags,@object # @gsicc_create_from_cal.TRC_Tags
	.section	.rodata,"a",@progbits
	.align	4
.Lgsicc_create_from_cal.TRC_Tags:
	.long	1918128707              # 0x72545243
	.long	1733579331              # 0x67545243
	.long	1649693251              # 0x62545243
	.size	.Lgsicc_create_from_cal.TRC_Tags, 12

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsicc_create_from_cal"
	.size	.L.str, 22

	.type	.L__func__.gsicc_create_fromabc,@object # @__func__.gsicc_create_fromabc
.L__func__.gsicc_create_fromabc:
	.asciz	"gsicc_create_fromabc"
	.size	.L__func__.gsicc_create_fromabc, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./base/gsicc_create.c"
	.size	.L.str.1, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Allocation of ICC a curves failed"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Allocation of ICC m curves failed"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Allocation of ICC clut failed"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Allocation of ICC clut data failed"
	.size	.L.str.9, 35

	.type	.L__func__.gsicc_create_froma,@object # @__func__.gsicc_create_froma
.L__func__.gsicc_create_froma:
	.asciz	"gsicc_create_froma"
	.size	.L__func__.gsicc_create_froma, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gsicc_create_fromdefg"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gsicc_create_fromdef"
	.size	.L.str.14, 21

	.type	desc_name,@object       # @desc_name
	.section	.rodata,"a",@progbits
	.align	16
desc_name:
	.asciz	"Ghostscript Internal Profile"
	.size	desc_name, 29

	.type	copy_right,@object      # @copy_right
	.align	16
copy_right:
	.asciz	"Copyright Artifex Software 2009"
	.size	copy_right, 32

	.type	.L__func__.gsicc_compute_cam,@object # @__func__.gsicc_compute_cam
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gsicc_compute_cam:
	.asciz	"gsicc_compute_cam"
	.size	.L__func__.gsicc_compute_cam, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Allocation of ICC cam failed"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gsicc_create_mashed_clut"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Allocation of ICC clut short data failed"
	.size	.L.str.17, 41

	.type	.L__func__.gsicc_create_clut,@object # @__func__.gsicc_create_clut
.L__func__.gsicc_create_clut:
	.asciz	"gsicc_create_clut"
	.size	.L__func__.gsicc_create_clut, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Allocation of cie to xyz transform failed"
	.size	.L.str.19, 42

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Allocation of input_sample arrays failed"
	.size	.L.str.20, 41

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gsicc_create_abc_merge"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Allocation of ICC b curves failed"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"create_lutAtoBprofile"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Allocation of ICC tag list failed"
	.size	.L.str.24, 34

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Allocation of ICC buffer failed"
	.size	.L.str.25, 32

	.type	.Lgsicc_matrix3_to_mlut.grid_points,@object # @gsicc_matrix3_to_mlut.grid_points
	.section	.rodata,"a",@progbits
	.align	16
.Lgsicc_matrix3_to_mlut.grid_points:
	.zero	12
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	.Lgsicc_matrix3_to_mlut.grid_points, 96

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"gsicc_create_free_luta2bpart"
	.size	.L.str.26, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
