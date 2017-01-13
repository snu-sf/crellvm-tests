	.text
	.file	"jfdctint.bc"
	.globl	jpeg_fdct_islow
	.align	16, 0x90
	.type	jpeg_fdct_islow,@function
jpeg_fdct_islow:                        # @jpeg_fdct_islow
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
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%rcx), %rdx
	movq	-24(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rdx,%rsi), %r11d
	movzbl	7(%rdx,%rsi), %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	leaq	(%rax,%r11), %rbx
	movzbl	1(%rdx,%rsi), %r9d
	movzbl	6(%rdx,%rsi), %r12d
	leaq	(%r12,%r9), %r15
	movzbl	2(%rdx,%rsi), %r10d
	movzbl	5(%rdx,%rsi), %r13d
	leaq	(%r13,%r10), %rbp
	movzbl	3(%rdx,%rsi), %eax
	movzbl	4(%rdx,%rsi), %edx
	leaq	(%rdx,%rax), %r8
	leal	(%r8,%rbx), %r14d
	subq	%r8, %rbx
	leal	(%rbp,%r15), %esi
	subq	%rbp, %r15
	subq	-8(%rsp), %r11          # 8-byte Folded Reload
	subq	%r12, %r9
	subq	%r13, %r10
	subq	%rdx, %rax
	leal	(%r14,%rsi), %edx
	leal	-4096(,%rdx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	subl	%esi, %r14d
	shll	$2, %r14d
	movl	%r14d, 16(%rdi,%rcx,4)
	leaq	(%rbx,%r15), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rbx, %rsi       # imm = 0x187E
	leaq	1024(%rdx,%rsi), %rsi
	shrq	$11, %rsi
	movl	%esi, 8(%rdi,%rcx,4)
	imulq	$-15137, %r15, %rsi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	1024(%rdx,%rsi), %rdx
	shrq	$11, %rdx
	movl	%edx, 24(%rdi,%rcx,4)
	leaq	(%r10,%r11), %rdx
	leaq	(%rax,%r9), %rsi
	leaq	(%rsi,%rdx), %rbp
	imulq	$9633, %rbp, %rbp       # imm = 0x25A1
	imulq	$-3196, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFC13B
	leaq	1024(%rbp,%rdx), %r8
	leaq	1024(%rbp,%rsi), %rsi
	leaq	(%rax,%r11), %rbp
	imulq	$-7373, %rbp, %rbp      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %r11, %rbx      # imm = 0x300B
	imulq	$2446, %rax, %rax       # imm = 0x98E
	leaq	(%rbx,%rbp), %rbx
	addq	%rbp, %rax
	addq	%rsi, %rax
	leaq	(%r10,%r9), %rbp
	imulq	$-20995, %rbp, %rbp     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %r9, %rdx       # imm = 0x6254
	leaq	(%rdx,%rbp), %rdx
	addq	%rsi, %rdx
	imulq	$16819, %r10, %rsi      # imm = 0x41B3
	addq	%rbp, %rsi
	addq	%r8, %rbx
	addq	%r8, %rsi
	shrq	$11, %rbx
	movl	%ebx, 4(%rdi,%rcx,4)
	shrq	$11, %rdx
	movl	%edx, 12(%rdi,%rcx,4)
	shrq	$11, %rsi
	movl	%esi, 20(%rdi,%rcx,4)
	shrq	$11, %rax
	movl	%eax, 28(%rdi,%rcx,4)
	addq	$8, %rcx
	cmpq	$64, %rcx
	jne	.LBB0_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB0_3:                                # %for.body.110
                                        # =>This Inner Loop Header: Depth=1
	movl	224(%rdi), %r9d
	movl	(%rdi), %eax
	movl	32(%rdi), %ecx
	leal	(%r9,%rax), %esi
	movslq	%esi, %r12
	movl	192(%rdi), %r10d
	leal	(%r10,%rcx), %esi
	movslq	%esi, %r14
	movl	64(%rdi), %edx
	movl	160(%rdi), %r11d
	leal	(%r11,%rdx), %ebp
	movslq	%ebp, %r13
	movl	96(%rdi), %esi
	movl	128(%rdi), %r15d
	leal	(%r15,%rsi), %ebx
	movslq	%ebx, %rbx
	leaq	2(%r12,%rbx), %rbp
	subq	%rbx, %r12
	leaq	(%r13,%r14), %rbx
	subq	%r13, %r14
	subl	%r9d, %eax
	cltq
	subl	%r10d, %ecx
	movslq	%ecx, %r9
	subl	%r11d, %edx
	movslq	%edx, %r10
	subl	%r15d, %esi
	movslq	%esi, %rcx
	leaq	(%rbp,%rbx), %rsi
	shrq	$2, %rsi
	movl	%esi, (%rdi)
	subq	%rbx, %rbp
	shrq	$2, %rbp
	movl	%ebp, 128(%rdi)
	leaq	(%r12,%r14), %rsi
	imulq	$4433, %rsi, %rsi       # imm = 0x1151
	imulq	$6270, %r12, %rbp       # imm = 0x187E
	leaq	16384(%rsi,%rbp), %rbp
	shrq	$15, %rbp
	movl	%ebp, 64(%rdi)
	imulq	$-15137, %r14, %rbp     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rsi,%rbp), %rsi
	shrq	$15, %rsi
	movl	%esi, 192(%rdi)
	leaq	(%r10,%rax), %rsi
	leaq	(%rcx,%r9), %rbp
	leaq	(%rbp,%rsi), %rbx
	imulq	$9633, %rbx, %rbx       # imm = 0x25A1
	imulq	$-3196, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rbp, %rbp     # imm = 0xFFFFFFFFFFFFC13B
	leaq	16384(%rbx,%rsi), %r11
	leaq	16384(%rbx,%rbp), %rbp
	leaq	(%rcx,%rax), %rbx
	imulq	$-7373, %rbx, %rbx      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %rax, %rdx      # imm = 0x300B
	imulq	$2446, %rcx, %rax       # imm = 0x98E
	leaq	(%rdx,%rbx), %rcx
	addq	%r11, %rcx
	addq	%rbx, %rax
	addq	%rbp, %rax
	leaq	(%r10,%r9), %rdx
	imulq	$-20995, %rdx, %rdx     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %r9, %rbx       # imm = 0x6254
	imulq	$16819, %r10, %rsi      # imm = 0x41B3
	leaq	(%rbx,%rdx), %rbx
	addq	%rbp, %rbx
	addq	%rdx, %rsi
	addq	%r11, %rsi
	shrq	$15, %rcx
	movl	%ecx, 32(%rdi)
	shrq	$15, %rbx
	movl	%ebx, 96(%rdi)
	shrq	$15, %rsi
	movl	%esi, 160(%rdi)
	shrq	$15, %rax
	movl	%eax, 224(%rdi)
	addq	$4, %rdi
	decl	%r8d
	jg	.LBB0_3
# BB#4:                                 # %for.end.207
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_fdct_islow, .Lfunc_end0-jpeg_fdct_islow
	.cfi_endproc

	.globl	jpeg_fdct_7x7
	.align	16, 0x90
	.type	jpeg_fdct_7x7,@function
jpeg_fdct_7x7:                          # @jpeg_fdct_7x7
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 80
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r14), %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	(%rdi,%rcx), %edx
	movzbl	6(%rdi,%rcx), %r11d
	leaq	(%r11,%rdx), %rax
	movzbl	1(%rdi,%rcx), %r9d
	movzbl	5(%rdi,%rcx), %ebx
	leaq	(%rbx,%r9), %r8
	movzbl	2(%rdi,%rcx), %r10d
	movzbl	4(%rdi,%rcx), %ebp
	leaq	(%rbp,%r10), %r15
	movzbl	3(%rdi,%rcx), %edi
	subq	%r11, %rdx
	subq	%rbx, %r9
	subq	%rbp, %r10
	leaq	(%r15,%rax), %rcx
	movl	%r8d, %ebx
	addl	%edi, %ebx
	movl	%ecx, %ebp
	addl	%ebx, %ebp
	leal	-3584(,%rbp,4), %ebp
	movl	%ebp, (%r12,%r14,4)
	leaq	(%rdi,%rdi), %rbp
	leaq	(,%rdi,4), %rdi
	subq	%rdi, %rcx
	imulq	$2896, %rcx, %rcx       # imm = 0xB50
	movq	%rax, %rdi
	subq	%r15, %rdi
	imulq	$7542, %rdi, %rdi       # imm = 0x1D76
	movq	%r8, %rsi
	subq	%r15, %rsi
	imulq	$2578, %rsi, %rsi       # imm = 0xA12
	leaq	(%rdi,%rsi), %rbx
	leaq	1024(%rcx,%rbx), %rbx
	shrq	$11, %rbx
	movl	%ebx, 8(%r12,%r14,4)
	subq	%r8, %rax
	imulq	$7223, %rax, %rax       # imm = 0x1C37
	subq	%rbp, %r8
	imulq	$-5793, %r8, %rbp       # imm = 0xFFFFFFFFFFFFE95F
	leaq	1024(%rax,%rsi), %rsi
	addq	$1024, %rax             # imm = 0x400
	addq	%rbp, %rsi
	shrq	$11, %rsi
	movl	%esi, 16(%r12,%r14,4)
	subq	%rdi, %rax
	addq	%rcx, %rax
	shrq	$11, %rax
	movl	%eax, 24(%r12,%r14,4)
	leaq	(%r9,%rdx), %rax
	imulq	$7663, %rax, %rax       # imm = 0x1DEF
	leaq	(%r10,%rdx), %rcx
	subq	%r9, %rdx
	imulq	$1395, %rdx, %rdx       # imm = 0x573
	leaq	(%r9,%r10), %rsi
	imulq	$-11295, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFD3E1
	imulq	$5027, %rcx, %rcx       # imm = 0x13A3
	imulq	$15326, %r10, %rdi      # imm = 0x3BDE
	movl	$1024, %ebp             # imm = 0x400
	subq	%rdx, %rbp
	addq	%rax, %rbp
	addq	%rcx, %rbp
	shrq	$11, %rbp
	movl	%ebp, 4(%r12,%r14,4)
	addq	%rax, %rdx
	leaq	1024(%rsi,%rdx), %rax
	shrq	$11, %rax
	movl	%eax, 12(%r12,%r14,4)
	addq	%rcx, %rdi
	leaq	1024(%rsi,%rdi), %rax
	shrq	$11, %rax
	movl	%eax, 20(%r12,%r14,4)
	addq	$8, %r14
	cmpq	$56, %r14
	jne	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                # %for.body.102
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12,%r13,4), %eax
	movl	192(%r12,%r13,4), %r8d
	leal	(%r8,%rax), %edx
	movslq	%edx, %r11
	movl	32(%r12,%r13,4), %edx
	movl	160(%r12,%r13,4), %r9d
	leal	(%r9,%rdx), %edi
	movslq	%edi, %r14
	movl	64(%r12,%r13,4), %ebx
	movl	128(%r12,%r13,4), %ecx
	leal	(%rcx,%rbx), %ebp
	movslq	%ebp, %r10
	movslq	96(%r12,%r13,4), %rbp
	subl	%r8d, %eax
	cltq
	subl	%r9d, %edx
	movslq	%edx, %r8
	subl	%ecx, %ebx
	movslq	%ebx, %rdx
	leaq	(%r10,%r11), %rcx
	leaq	(%rbp,%r14), %rbx
	addq	%rcx, %rbx
	imulq	$10700, %rbx, %rbx      # imm = 0x29CC
	addq	$16384, %rbx            # imm = 0x4000
	shrq	$15, %rbx
	movl	%ebx, (%r12,%r13,4)
	leaq	(%rbp,%rbp), %rbx
	leaq	(,%rbp,4), %rbp
	subq	%rbp, %rcx
	imulq	$3783, %rcx, %rcx       # imm = 0xEC7
	movq	%r11, %rsi
	subq	%r10, %rsi
	imulq	$9850, %rsi, %rsi       # imm = 0x267A
	movq	%r14, %rdi
	subq	%r10, %rdi
	imulq	$3367, %rdi, %rdi       # imm = 0xD27
	leaq	(%rsi,%rdi), %rbp
	leaq	16384(%rcx,%rbp), %rbp
	shrq	$15, %rbp
	movl	%ebp, 64(%r12,%r13,4)
	subq	%r14, %r11
	imulq	$9434, %r11, %rbp       # imm = 0x24DA
	subq	%rbx, %r14
	imulq	$-7566, %r14, %rbx      # imm = 0xFFFFFFFFFFFFE272
	leaq	16384(%rbp,%rdi), %rdi
	addq	$16384, %rbp            # imm = 0x4000
	addq	%rbx, %rdi
	shrq	$15, %rdi
	movl	%edi, 128(%r12,%r13,4)
	subq	%rsi, %rbp
	addq	%rcx, %rbp
	shrq	$15, %rbp
	movl	%ebp, 192(%r12,%r13,4)
	leaq	(%r8,%rax), %rcx
	imulq	$10009, %rcx, %rcx      # imm = 0x2719
	leaq	(%rdx,%rax), %rsi
	subq	%r8, %rax
	imulq	$1822, %rax, %rax       # imm = 0x71E
	leaq	(%r8,%rdx), %rdi
	imulq	$-14752, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFC660
	imulq	$6565, %rsi, %rsi       # imm = 0x19A5
	imulq	$20017, %rdx, %rdx      # imm = 0x4E31
	movl	$16384, %ebp            # imm = 0x4000
	subq	%rax, %rbp
	addq	%rcx, %rbp
	addq	%rsi, %rbp
	shrq	$15, %rbp
	movl	%ebp, 32(%r12,%r13,4)
	addq	%rcx, %rax
	leaq	16384(%rdi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 96(%r12,%r13,4)
	addq	%rsi, %rdx
	leaq	16384(%rdi,%rdx), %rax
	shrq	$15, %rax
	movl	%eax, 160(%r12,%r13,4)
	incq	%r13
	cmpl	$7, %r13d
	jne	.LBB1_2
# BB#3:                                 # %for.end.196
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jpeg_fdct_7x7, .Lfunc_end1-jpeg_fdct_7x7
	.cfi_endproc

	.globl	jpeg_fdct_6x6
	.align	16, 0x90
	.type	jpeg_fdct_6x6,@function
jpeg_fdct_6x6:                          # @jpeg_fdct_6x6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 64
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rcx), %rsi
	movzbl	(%rsi,%r8), %edx
	movzbl	5(%rsi,%r8), %r10d
	leaq	(%r10,%rdx), %rbx
	movzbl	1(%rsi,%r8), %r9d
	movzbl	4(%rsi,%r8), %r11d
	leaq	(%r11,%r9), %r13
	movzbl	2(%rsi,%r8), %edi
	movzbl	3(%rsi,%r8), %r15d
	leaq	(%r15,%rdi), %rsi
	leaq	(%rsi,%rbx), %rax
	subq	%rsi, %rbx
	subq	%r10, %rdx
	subl	%r11d, %r9d
	subq	%r15, %rdi
	leal	(%r13,%rax), %esi
	leal	-3072(,%rsi,4), %esi
	movl	%esi, (%r12,%rcx,4)
	imulq	$10033, %rbx, %rsi      # imm = 0x2731
	addq	$1024, %rsi             # imm = 0x400
	shrq	$11, %rsi
	movl	%esi, 8(%r12,%rcx,4)
	addq	%r13, %r13
	subq	%r13, %rax
	imulq	$5793, %rax, %rax       # imm = 0x16A1
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rax
	movl	%eax, 16(%r12,%rcx,4)
	movq	%rdi, %rax
	addq	%rdx, %rax
	imulq	$2998, %rax, %rax       # imm = 0xBB6
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rax
	leal	(%r9,%rdx), %esi
	leal	(%rax,%rsi,4), %esi
	movl	%esi, 4(%r12,%rcx,4)
	subl	%r9d, %edx
	subl	%edi, %edx
	shll	$2, %edx
	movl	%edx, 12(%r12,%rcx,4)
	subl	%r9d, %edi
	leal	(%rax,%rdi,4), %eax
	movl	%eax, 20(%r12,%rcx,4)
	addq	$8, %rcx
	cmpq	$48, %rcx
	jne	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %for.body.73
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rbp,4), %eax
	movl	160(%r12,%rbp,4), %r8d
	leal	(%r8,%rax), %edx
	movslq	%edx, %rdi
	movl	32(%r12,%rbp,4), %ebx
	movl	128(%r12,%rbp,4), %r9d
	leal	(%r9,%rbx), %edx
	movslq	%edx, %r11
	movl	64(%r12,%rbp,4), %ecx
	movl	96(%r12,%rbp,4), %r10d
	leal	(%r10,%rcx), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdi), %rsi
	subq	%rdx, %rdi
	subl	%r8d, %eax
	movslq	%eax, %rdx
	subl	%r9d, %ebx
	movslq	%ebx, %rax
	subl	%r10d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%r11), %rbx
	imulq	$14564, %rbx, %rbx      # imm = 0x38E4
	addq	$16384, %rbx            # imm = 0x4000
	shrq	$15, %rbx
	movl	%ebx, (%r12,%rbp,4)
	imulq	$17837, %rdi, %rdi      # imm = 0x45AD
	addq	$16384, %rdi            # imm = 0x4000
	shrq	$15, %rdi
	movl	%edi, 64(%r12,%rbp,4)
	addq	%r11, %r11
	subq	%r11, %rsi
	imulq	$10298, %rsi, %rsi      # imm = 0x283A
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, 128(%r12,%rbp,4)
	leaq	(%rcx,%rdx), %rsi
	imulq	$5331, %rsi, %rsi       # imm = 0x14D3
	leaq	(%rax,%rdx), %rdi
	imulq	$14564, %rdi, %rdi      # imm = 0x38E4
	leaq	16384(%rdi,%rsi), %rdi
	shrq	$15, %rdi
	movl	%edi, 32(%r12,%rbp,4)
	subq	%rax, %rdx
	subq	%rcx, %rdx
	imulq	$14564, %rdx, %rdx      # imm = 0x38E4
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdx
	movl	%edx, 96(%r12,%rbp,4)
	subq	%rax, %rcx
	imulq	$14564, %rcx, %rax      # imm = 0x38E4
	leaq	16384(%rax,%rsi), %rax
	shrq	$15, %rax
	movl	%eax, 160(%r12,%rbp,4)
	incq	%rbp
	cmpl	$6, %ebp
	jne	.LBB2_2
# BB#3:                                 # %for.end.143
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jpeg_fdct_6x6, .Lfunc_end2-jpeg_fdct_6x6
	.cfi_endproc

	.globl	jpeg_fdct_5x5
	.align	16, 0x90
	.type	jpeg_fdct_5x5,@function
jpeg_fdct_5x5:                          # @jpeg_fdct_5x5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rcx), %rdi
	movzbl	(%rdi,%r8), %esi
	movzbl	4(%rdi,%r8), %r9d
	leaq	(%r9,%rsi), %rax
	movzbl	1(%rdi,%r8), %r11d
	movzbl	3(%rdi,%r8), %r10d
	leaq	(%r10,%r11), %rdx
	movzbl	2(%rdi,%r8), %r15d
	leaq	(%rdx,%rax), %rdi
	subq	%rdx, %rax
	subq	%r9, %rsi
	subq	%r10, %r11
	leal	(%r15,%rdi), %edx
	leal	-5120(,%rdx,8), %edx
	movl	%edx, (%r12,%rcx,4)
	imulq	$6476, %rax, %rax       # imm = 0x194C
	leaq	(,%r15,4), %rdx
	subq	%rdx, %rdi
	imulq	$2896, %rdi, %rdx       # imm = 0xB50
	leaq	512(%rax,%rdx), %rdi
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rdi
	movl	%edi, 8(%r12,%rcx,4)
	subq	%rdx, %rax
	shrq	$10, %rax
	movl	%eax, 16(%r12,%rcx,4)
	leaq	(%r11,%rsi), %rax
	imulq	$6810, %rax, %rax       # imm = 0x1A9A
	imulq	$4209, %rsi, %rdx       # imm = 0x1071
	leaq	512(%rdx,%rax), %rdx
	shrq	$10, %rdx
	movl	%edx, 4(%r12,%rcx,4)
	imulq	$-17828, %r11, %rdx     # imm = 0xFFFFFFFFFFFFBA5C
	leaq	512(%rdx,%rax), %rax
	shrq	$10, %rax
	movl	%eax, 12(%r12,%rcx,4)
	addq	$8, %rcx
	cmpq	$40, %rcx
	jne	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rbp,4), %eax
	movl	128(%r12,%rbp,4), %r8d
	leal	(%r8,%rax), %edx
	movslq	%edx, %rdx
	movl	32(%r12,%rbp,4), %esi
	movl	96(%r12,%rbp,4), %r9d
	leal	(%r9,%rsi), %ecx
	movslq	%ecx, %rcx
	movslq	64(%r12,%rbp,4), %rdi
	leaq	(%rcx,%rdx), %rbx
	subq	%rcx, %rdx
	subl	%r8d, %eax
	movslq	%eax, %rcx
	subl	%r9d, %esi
	movslq	%esi, %rax
	leaq	(%rbx,%rdi), %rsi
	imulq	$10486, %rsi, %rsi      # imm = 0x28F6
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%r12,%rbp,4)
	imulq	$8290, %rdx, %rdx       # imm = 0x2062
	shlq	$2, %rdi
	subq	%rdi, %rbx
	imulq	$3707, %rbx, %rsi       # imm = 0xE7B
	leaq	16384(%rdx,%rsi), %rdi
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdi
	movl	%edi, 64(%r12,%rbp,4)
	subq	%rsi, %rdx
	shrq	$15, %rdx
	movl	%edx, 128(%r12,%rbp,4)
	leaq	(%rax,%rcx), %rdx
	imulq	$8716, %rdx, %rdx       # imm = 0x220C
	imulq	$5387, %rcx, %rcx       # imm = 0x150B
	leaq	16384(%rcx,%rdx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 32(%r12,%rbp,4)
	imulq	$-22820, %rax, %rax     # imm = 0xFFFFFFFFFFFFA6DC
	leaq	16384(%rax,%rdx), %rax
	shrq	$15, %rax
	movl	%eax, 96(%r12,%rbp,4)
	incq	%rbp
	cmpl	$5, %ebp
	jne	.LBB3_2
# BB#3:                                 # %for.end.118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jpeg_fdct_5x5, .Lfunc_end3-jpeg_fdct_5x5
	.cfi_endproc

	.globl	jpeg_fdct_4x4
	.align	16, 0x90
	.type	jpeg_fdct_4x4,@function
jpeg_fdct_4x4:                          # @jpeg_fdct_4x4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %eax
	movq	(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	movzbl	3(%rdx,%rax), %r8d
	movl	%r8d, %edi
	addl	%ecx, %edi
	movzbl	1(%rdx,%rax), %ebp
	movzbl	2(%rdx,%rax), %esi
	movl	%esi, %edx
	addl	%ebp, %edx
	subq	%r8, %rcx
	subq	%rsi, %rbp
	leal	(%rdx,%rdi), %esi
	shll	$4, %esi
	addl	$-8192, %esi            # imm = 0xFFFFFFFFFFFFE000
	movl	%esi, (%rbx)
	subl	%edx, %edi
	shll	$4, %edi
	movl	%edi, 8(%rbx)
	leaq	(%rbp,%rcx), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	256(%rdx,%rcx), %rcx
	shrq	$9, %rcx
	movl	%ecx, 4(%rbx)
	imulq	$-15137, %rbp, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	256(%rdx,%rcx), %rcx
	shrq	$9, %rcx
	movl	%ecx, 12(%rbx)
	movq	8(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	movzbl	3(%rdx,%rax), %r8d
	movl	%r8d, %edi
	addl	%ecx, %edi
	movzbl	1(%rdx,%rax), %ebp
	movzbl	2(%rdx,%rax), %esi
	movl	%esi, %edx
	addl	%ebp, %edx
	subq	%r8, %rcx
	subq	%rsi, %rbp
	leal	(%rdx,%rdi), %esi
	shll	$4, %esi
	addl	$-8192, %esi            # imm = 0xFFFFFFFFFFFFE000
	movl	%esi, 32(%rbx)
	subl	%edx, %edi
	shll	$4, %edi
	movl	%edi, 40(%rbx)
	leaq	(%rbp,%rcx), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	256(%rdx,%rcx), %rcx
	shrq	$9, %rcx
	movl	%ecx, 36(%rbx)
	imulq	$-15137, %rbp, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	256(%rdx,%rcx), %rcx
	shrq	$9, %rcx
	movl	%ecx, 44(%rbx)
	movq	16(%r14), %rdx
	movzbl	(%rdx,%rax), %ecx
	movzbl	3(%rdx,%rax), %r8d
	movl	%r8d, %esi
	addl	%ecx, %esi
	movzbl	1(%rdx,%rax), %ebp
	movzbl	2(%rdx,%rax), %edi
	movl	%edi, %edx
	addl	%ebp, %edx
	subq	%r8, %rcx
	subq	%rdi, %rbp
	leal	(%rdx,%rsi), %r10d
	shll	$4, %r10d
	leal	-8192(%r10), %r8d
	movl	%r8d, 64(%rbx)
	subl	%edx, %esi
	shll	$4, %esi
	movl	%esi, 72(%rbx)
	leaq	(%rbp,%rcx), %rdx
	imulq	$4433, %rdx, %rsi       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	256(%rsi,%rcx), %r9
	shrq	$9, %r9
	movl	%r9d, 68(%rbx)
	imulq	$-15137, %rbp, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	256(%rsi,%rcx), %rcx
	shrq	$9, %rcx
	movl	%ecx, 76(%rbx)
	movq	24(%r14), %rsi
	movzbl	(%rsi,%rax), %ebp
	movzbl	3(%rsi,%rax), %ecx
	movl	%ecx, %edx
	addl	%ebp, %edx
	movzbl	1(%rsi,%rax), %edi
	movzbl	2(%rsi,%rax), %eax
	movl	%eax, %esi
	addl	%edi, %esi
	subq	%rcx, %rbp
	subq	%rax, %rdi
	leal	(%rsi,%rdx), %ecx
	shll	$4, %ecx
	leal	-8192(%rcx), %r11d
	subl	%esi, %edx
	shll	$4, %edx
	movl	%edx, 104(%rbx)
	leaq	(%rdi,%rbp), %rax
	imulq	$4433, %rax, %rsi       # imm = 0x1151
	imulq	$6270, %rbp, %rax       # imm = 0x187E
	leaq	256(%rsi,%rax), %r14
	shrq	$9, %r14
	imulq	$-15137, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	256(%rsi,%rdi), %rsi
	shrq	$9, %rsi
	movl	%esi, 108(%rbx)
	movl	(%rbx), %esi
	movl	32(%rbx), %edi
	leal	-8192(%rcx,%rsi), %ecx
	movslq	%ecx, %rcx
	leal	-8192(%r10,%rdi), %ebp
	movslq	%ebp, %rbp
	subl	%r11d, %esi
	movslq	%esi, %rsi
	subl	%r8d, %edi
	movslq	%edi, %rdi
	leaq	2(%rbp,%rcx), %rax
	addq	$2, %rcx
	shrq	$2, %rax
	movl	%eax, (%rbx)
	subq	%rbp, %rcx
	shrq	$2, %rcx
	movl	%ecx, 64(%rbx)
	leaq	(%rdi,%rsi), %rax
	imulq	$4433, %rax, %rax       # imm = 0x1151
	imulq	$6270, %rsi, %rcx       # imm = 0x187E
	leaq	16384(%rax,%rcx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 32(%rbx)
	imulq	$-15137, %rdi, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rax,%rcx), %rax
	shrq	$15, %rax
	movl	%eax, 96(%rbx)
	movl	4(%rbx), %eax
	movl	36(%rbx), %ecx
	leal	(%r14,%rax), %esi
	movslq	%esi, %rsi
	leal	(%r9,%rcx), %edi
	movslq	%edi, %rdi
	subl	%r14d, %eax
	cltq
	subl	%r9d, %ecx
	movslq	%ecx, %rcx
	leaq	2(%rdi,%rsi), %rbp
	addq	$2, %rsi
	shrq	$2, %rbp
	movl	%ebp, 4(%rbx)
	subq	%rdi, %rsi
	shrq	$2, %rsi
	movl	%esi, 68(%rbx)
	leaq	(%rcx,%rax), %rsi
	imulq	$4433, %rsi, %rsi       # imm = 0x1151
	imulq	$6270, %rax, %rax       # imm = 0x187E
	leaq	16384(%rsi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 36(%rbx)
	imulq	$-15137, %rcx, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rsi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 100(%rbx)
	movl	8(%rbx), %eax
	movl	40(%rbx), %ecx
	leal	(%rdx,%rax), %esi
	movslq	%esi, %rsi
	movl	72(%rbx), %edi
	leal	(%rdi,%rcx), %ebp
	movslq	%ebp, %rbp
	subl	%edx, %eax
	cltq
	subl	%edi, %ecx
	movslq	%ecx, %rcx
	leaq	2(%rbp,%rsi), %rdx
	addq	$2, %rsi
	shrq	$2, %rdx
	movl	%edx, 8(%rbx)
	subq	%rbp, %rsi
	shrq	$2, %rsi
	movl	%esi, 72(%rbx)
	leaq	(%rcx,%rax), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rax, %rax       # imm = 0x187E
	leaq	16384(%rdx,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 40(%rbx)
	imulq	$-15137, %rcx, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rdx,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 104(%rbx)
	movl	108(%rbx), %eax
	movl	12(%rbx), %ecx
	movl	44(%rbx), %edx
	leal	(%rax,%rcx), %esi
	movslq	%esi, %rsi
	movl	76(%rbx), %edi
	leal	(%rdi,%rdx), %ebp
	movslq	%ebp, %rbp
	subl	%eax, %ecx
	movslq	%ecx, %rax
	subl	%edi, %edx
	movslq	%edx, %rcx
	leaq	2(%rbp,%rsi), %rdx
	addq	$2, %rsi
	shrq	$2, %rdx
	movl	%edx, 12(%rbx)
	subq	%rbp, %rsi
	shrq	$2, %rsi
	movl	%esi, 76(%rbx)
	leaq	(%rcx,%rax), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rax, %rax       # imm = 0x187E
	leaq	16384(%rdx,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 44(%rbx)
	imulq	$-15137, %rcx, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rdx,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 108(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	jpeg_fdct_4x4, .Lfunc_end4-jpeg_fdct_4x4
	.cfi_endproc

	.globl	jpeg_fdct_3x3
	.align	16, 0x90
	.type	jpeg_fdct_3x3,@function
jpeg_fdct_3x3:                          # @jpeg_fdct_3x3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %esi
	movq	(%r14), %rax
	movzbl	(%rax,%rsi), %ecx
	movzbl	2(%rax,%rsi), %edx
	leaq	(%rdx,%rcx), %rdi
	movzbl	1(%rax,%rsi), %eax
	subq	%rdx, %rcx
	leal	(%rax,%rdi), %r8d
	shll	$4, %r8d
	leal	-6144(%r8), %edx
	movl	%edx, (%rbx)
	leaq	(%rax,%rax), %rax
	subq	%rax, %rdi
	imulq	$5793, %rdi, %rax       # imm = 0x16A1
	addq	$256, %rax              # imm = 0x100
	shrq	$9, %rax
	movl	%eax, 8(%rbx)
	imulq	$10033, %rcx, %r9       # imm = 0x2731
	addq	$256, %r9               # imm = 0x100
	shrq	$9, %r9
	movl	%r9d, 4(%rbx)
	movq	8(%r14), %rax
	movzbl	(%rax,%rsi), %edx
	movzbl	2(%rax,%rsi), %edi
	leaq	(%rdi,%rdx), %rcx
	movzbl	1(%rax,%rsi), %eax
	subq	%rdi, %rdx
	leaq	(%rcx,%rax), %rdi
	shlq	$4, %rdi
	movl	$4294961152, %r11d      # imm = 0xFFFFE800
	addq	%rdi, %r11
	movl	%r11d, 32(%rbx)
	addq	%rax, %rax
	subq	%rax, %rcx
	imulq	$5793, %rcx, %r10       # imm = 0x16A1
	addq	$256, %r10              # imm = 0x100
	shrq	$9, %r10
	movl	%r10d, 40(%rbx)
	imulq	$10033, %rdx, %rdi      # imm = 0x2731
	addq	$256, %rdi              # imm = 0x100
	shrq	$9, %rdi
	movl	%edi, 36(%rbx)
	movq	16(%r14), %rcx
	movzbl	(%rcx,%rsi), %edx
	movzbl	2(%rcx,%rsi), %eax
	leaq	(%rax,%rdx), %rbp
	movzbl	1(%rcx,%rsi), %ecx
	subq	%rax, %rdx
	leal	(%rcx,%rbp), %eax
	shll	$4, %eax
	leal	-6144(%rax), %esi
	addq	%rcx, %rcx
	subq	%rcx, %rbp
	imulq	$5793, %rbp, %rcx       # imm = 0x16A1
	addq	$256, %rcx              # imm = 0x100
	shrq	$9, %rcx
	imulq	$10033, %rdx, %rdx      # imm = 0x2731
	addq	$256, %rdx              # imm = 0x100
	shrq	$9, %rdx
	leal	-12288(%rax,%r8), %eax
	cltq
	movslq	%r11d, %rbp
	shlq	$32, %r11
	negl	%esi
	leal	-6144(%r8,%rsi), %esi
	movslq	%esi, %rsi
	leaq	(%rbp,%rax), %rbp
	imulq	$14564, %rbp, %rbp      # imm = 0x38E4
	addq	$16384, %rbp            # imm = 0x4000
	shrq	$15, %rbp
	movl	%ebp, (%rbx)
	sarq	$31, %r11
	subq	%r11, %rax
	imulq	$10298, %rax, %rax      # imm = 0x283A
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 64(%rbx)
	imulq	$17837, %rsi, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 32(%rbx)
	leal	(%rdx,%r9), %eax
	cltq
	movslq	%edi, %rsi
	shlq	$32, %rdi
	subl	%edx, %r9d
	movslq	%r9d, %rdx
	leaq	(%rsi,%rax), %rsi
	imulq	$14564, %rsi, %rsi      # imm = 0x38E4
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, 4(%rbx)
	sarq	$31, %rdi
	subq	%rdi, %rax
	imulq	$10298, %rax, %rax      # imm = 0x283A
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 68(%rbx)
	imulq	$17837, %rdx, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 36(%rbx)
	movl	8(%rbx), %eax
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	%r10d, %rsi
	shlq	$32, %r10
	subl	%ecx, %eax
	cltq
	leaq	(%rsi,%rdx), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 8(%rbx)
	sarq	$31, %r10
	subq	%r10, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 72(%rbx)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 40(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	jpeg_fdct_3x3, .Lfunc_end5-jpeg_fdct_3x3
	.cfi_endproc

	.globl	jpeg_fdct_2x2
	.align	16, 0x90
	.type	jpeg_fdct_2x2,@function
jpeg_fdct_2x2:                          # @jpeg_fdct_2x2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r14d, %ecx
	movq	(%rbp), %rdx
	movq	8(%rbp), %rsi
	movzbl	(%rdx,%rcx), %eax
	movzbl	1(%rdx,%rcx), %edx
	leal	(%rdx,%rax), %edi
	subl	%edx, %eax
	movzbl	(%rsi,%rcx), %edx
	movzbl	1(%rsi,%rcx), %ecx
	leal	(%rcx,%rdx), %esi
	subl	%ecx, %edx
	leal	(%rsi,%rdi), %ecx
	shll	$4, %ecx
	addl	$-8192, %ecx            # imm = 0xFFFFFFFFFFFFE000
	movl	%ecx, (%rbx)
	subl	%esi, %edi
	shll	$4, %edi
	movl	%edi, 32(%rbx)
	leal	(%rdx,%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, 4(%rbx)
	subl	%edx, %eax
	shll	$4, %eax
	movl	%eax, 36(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	jpeg_fdct_2x2, .Lfunc_end6-jpeg_fdct_2x2
	.cfi_endproc

	.globl	jpeg_fdct_1x1
	.align	16, 0x90
	.type	jpeg_fdct_1x1,@function
jpeg_fdct_1x1:                          # @jpeg_fdct_1x1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %eax
	movq	(%r14), %rcx
	movzbl	(%rcx,%rax), %eax
	shll	$6, %eax
	addl	$-8192, %eax            # imm = 0xFFFFFFFFFFFFE000
	movl	%eax, (%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	jpeg_fdct_1x1, .Lfunc_end7-jpeg_fdct_1x1
	.cfi_endproc

	.globl	jpeg_fdct_9x9
	.align	16, 0x90
	.type	jpeg_fdct_9x9,@function
jpeg_fdct_9x9:                          # @jpeg_fdct_9x9
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsi, -64(%rsp)         # 8-byte Spill
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	movl	%edx, %r11d
	xorl	%r9d, %r9d
	movq	%rdi, %rax
	jmp	.LBB8_1
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	incl	%ecx
	addq	$32, %r12
	movq	%r12, %rax
	movl	%ecx, %r9d
	.align	16, 0x90
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, -52(%rsp)         # 4-byte Spill
	movq	%rax, %r12
	movslq	%r9d, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %rdi
	movzbl	(%rdi,%r11), %r13d
	movzbl	8(%rdi,%r11), %edx
	leaq	(%rdx,%r13), %r15
	movzbl	1(%rdi,%r11), %ecx
	movzbl	7(%rdi,%r11), %r10d
	leaq	(%r10,%rcx), %rax
	movq	%rcx, %rbx
	movzbl	2(%rdi,%r11), %ecx
	movzbl	6(%rdi,%r11), %esi
	leaq	(%rsi,%rcx), %rbp
	movzbl	3(%rdi,%r11), %r9d
	movzbl	5(%rdi,%r11), %r14d
	subq	%rdx, %r13
	leaq	(%r14,%r9), %rdx
	movzbl	4(%rdi,%r11), %r8d
	subq	%r10, %rbx
	movq	%rbx, %r10
	subq	%rsi, %rcx
	subq	%r14, %r9
	leaq	(%rbp,%r15), %rsi
	addq	%rdx, %rsi
	leaq	(%r8,%rax), %rdi
	leal	(%rdi,%rsi), %ebx
	leal	-2304(%rbx,%rbx), %ebx
	movl	%ebx, (%r12)
	addq	%rdi, %rdi
	subq	%rdi, %rsi
	imulq	$5793, %rsi, %rsi       # imm = 0x16A1
	addq	$2048, %rsi             # imm = 0x800
	shrq	$12, %rsi
	movl	%esi, 24(%r12)
	addq	%r8, %r8
	subq	%r8, %rax
	movq	%r15, %rsi
	subq	%rbp, %rsi
	imulq	$10887, %rsi, %rsi      # imm = 0x2A87
	imulq	$5793, %rax, %rax       # imm = 0x16A1
	subq	%rdx, %rbp
	imulq	$8875, %rbp, %rdi       # imm = 0x22AB
	leaq	2048(%rsi,%rdi), %rdi
	addq	%rax, %rdi
	shrq	$12, %rdi
	movl	%edi, 8(%r12)
	subq	%r15, %rdx
	imulq	$2012, %rdx, %rdx       # imm = 0x7DC
	leaq	2048(%rsi,%rdx), %rdx
	subq	%rax, %rdx
	shrq	$12, %rdx
	movl	%edx, 16(%r12)
	leaq	(%rcx,%r13), %rax
	leaq	(%r13,%r9), %rdx
	subq	%rcx, %r13
	subq	%r9, %r13
	imulq	$10033, %r13, %rsi      # imm = 0x2731
	leaq	-40(%rsp), %rbp
	addq	$2048, %rsi             # imm = 0x800
	shrq	$12, %rsi
	movl	%esi, 12(%r12)
	imulq	$10033, %r10, %rsi      # imm = 0x2731
	imulq	$7447, %rax, %rax       # imm = 0x1D17
	imulq	$3962, %rdx, %rdx       # imm = 0xF7A
	leaq	(%rsi,%rax), %rdi
	leaq	2048(%rdx,%rdi), %rdi
	shrq	$12, %rdi
	movl	%edi, 4(%r12)
	subq	%r9, %rcx
	movl	$2048, %edi             # imm = 0x800
	subq	%rsi, %rdi
	movq	-64(%rsp), %rsi         # 8-byte Reload
	imulq	$11409, %rcx, %rcx      # imm = 0x2C91
	leaq	(%rax,%rdi), %rax
	subq	%rcx, %rax
	shrq	$12, %rax
	movl	%eax, 20(%r12)
	addq	%rdx, %rdi
	addq	%rcx, %rdi
	shrq	$12, %rdi
	movl	%edi, 28(%r12)
	movl	$8, %r9d
	movq	-48(%rsp), %rax         # 8-byte Reload
	cmpl	$7, %eax
	movq	%rbp, %rax
	je	.LBB8_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rsp), %ecx         # 4-byte Reload
	cmpl	$8, %ecx
	jne	.LBB8_6
# BB#3:
	movq	-72(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %r8d
	movl	(%rdx), %r11d
	movl	32(%rdx), %r14d
	leal	(%r8,%r11), %eax
	cltq
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movl	224(%rdx), %esi
	leal	(%rsi,%r14), %eax
	movslq	%eax, %r12
	movl	64(%rdx), %r10d
	movl	192(%rdx), %ebx
	leal	(%rbx,%r10), %eax
	movslq	%eax, %rcx
	movl	96(%rdx), %r15d
	movl	160(%rdx), %edi
	leal	(%rdi,%r15), %eax
	movslq	%eax, %r13
	subl	%r8d, %r11d
	movslq	128(%rdx), %rax
	subl	%esi, %r14d
	subl	%ebx, %r10d
	subl	%edi, %r15d
	movq	-48(%rsp), %r8          # 8-byte Reload
	leaq	(%rcx,%r8), %rsi
	addq	%r13, %rsi
	leaq	(%rax,%r12), %rdi
	leaq	(%rsi,%rdi), %rbx
	imulq	$12945, %rbx, %rbx      # imm = 0x3291
	addq	$16384, %rbx            # imm = 0x4000
	shrq	$15, %rbx
	movl	%ebx, (%rdx)
	addq	%rdi, %rdi
	subq	%rdi, %rsi
	imulq	$9154, %rsi, %rsi       # imm = 0x23C2
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, 192(%rdx)
	addq	%rax, %rax
	subq	%rax, %r12
	movq	%r8, %rax
	movq	%rax, %rsi
	subq	%rcx, %rsi
	imulq	$17203, %rsi, %rsi      # imm = 0x4333
	imulq	$9154, %r12, %r8        # imm = 0x23C2
	subq	%r13, %rcx
	imulq	$14024, %rcx, %rcx      # imm = 0x36C8
	leaq	16384(%rsi,%rcx), %rcx
	addq	%r8, %rcx
	shrq	$15, %rcx
	movl	%ecx, 64(%rdx)
	subq	%rax, %r13
	imulq	$3179, %r13, %rax       # imm = 0xC6B
	leaq	16384(%rsi,%rax), %rax
	movslq	%r11d, %rcx
	movslq	%r14d, %r11
	movslq	%r10d, %rdi
	movslq	%r15d, %rbx
	subq	%r8, %rax
	shrq	$15, %rax
	movl	%eax, 128(%rdx)
	leaq	(%rdi,%rcx), %rax
	leaq	(%rcx,%rbx), %rsi
	subq	%rdi, %rcx
	subq	%rbx, %rcx
	imulq	$15855, %rcx, %rcx      # imm = 0x3DEF
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 96(%rdx)
	imulq	$15855, %r11, %rcx      # imm = 0x3DEF
	imulq	$11768, %rax, %rax      # imm = 0x2DF8
	imulq	$6262, %rsi, %r8        # imm = 0x1876
	leaq	(%rcx,%rax), %rsi
	leaq	16384(%r8,%rsi), %rsi
	shrq	$15, %rsi
	movl	%esi, 32(%rdx)
	subq	%rbx, %rdi
	movl	$16384, %esi            # imm = 0x4000
	subq	%rcx, %rsi
	imulq	$18029, %rdi, %rcx      # imm = 0x466D
	leaq	(%rax,%rsi), %rax
	subq	%rcx, %rax
	shrq	$15, %rax
	movl	%eax, 160(%rdx)
	addq	%r8, %rsi
	addq	%rcx, %rsi
	shrq	$15, %rsi
	movl	%esi, 224(%rdx)
	addq	$4, %rbp
	addq	$4, %rdx
	decl	%r9d
	jg	.LBB8_4
# BB#5:                                 # %for.end.228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	jpeg_fdct_9x9, .Lfunc_end8-jpeg_fdct_9x9
	.cfi_endproc

	.globl	jpeg_fdct_10x10
	.align	16, 0x90
	.type	jpeg_fdct_10x10,@function
jpeg_fdct_10x10:                        # @jpeg_fdct_10x10
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
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
	movq	%rsi, -104(%rsp)        # 8-byte Spill
	movq	%rdi, -112(%rsp)        # 8-byte Spill
	movl	%edx, %r11d
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB9_1
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	incl	%eax
	addq	$32, %rbx
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movl	%eax, -92(%rsp)         # 4-byte Spill
	cltq
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %rbx
	movzbl	(%rbx,%r11), %r15d
	movzbl	9(%rbx,%r11), %edx
	leaq	(%rdx,%r15), %rcx
	movzbl	1(%rbx,%r11), %r14d
	movzbl	8(%rbx,%r11), %r9d
	leaq	(%r9,%r14), %rax
	movzbl	3(%rbx,%r11), %r13d
	movzbl	4(%rbx,%r11), %r12d
	movzbl	5(%rbx,%r11), %esi
	leaq	(%rsi,%r12), %rdi
	leaq	(%rdi,%rcx), %r8
	subq	%rdi, %rcx
	movzbl	6(%rbx,%r11), %ebp
	leaq	(%rbp,%r13), %r10
	leaq	(%r10,%rax), %rdi
	subq	%r10, %rax
	subq	%rdx, %r15
	subq	%r9, %r14
	movzbl	2(%rbx,%r11), %r9d
	movzbl	7(%rbx,%r11), %ebx
	leaq	(%rbx,%r9), %rdx
	subq	%rbx, %r9
	subq	%rbp, %r13
	subq	%rsi, %r12
	leal	(%rdx,%rdi), %esi
	movl	%r8d, %ebp
	addl	%esi, %ebp
	movq	-88(%rsp), %rbx         # 8-byte Reload
	leal	-2560(%rbp,%rbp), %esi
	movl	%esi, (%rbx)
	addq	%rdx, %rdx
	subq	%rdx, %r8
	subq	%rdx, %rdi
	imulq	$9373, %r8, %rdx        # imm = 0x249D
	imulq	$-3580, %rdi, %rsi      # imm = 0xFFFFFFFFFFFFF204
	leaq	2048(%rsi,%rdx), %rdx
	shrq	$12, %rdx
	movl	%edx, 16(%rbx)
	leaq	(%rcx,%rax), %rdx
	imulq	$6810, %rdx, %rdx       # imm = 0x1A9A
	imulq	$4209, %rcx, %rcx       # imm = 0x1071
	leaq	2048(%rcx,%rdx), %rcx
	shrq	$12, %rcx
	movl	%ecx, 8(%rbx)
	imulq	$-17828, %rax, %rax     # imm = 0xFFFFFFFFFFFFBA5C
	leaq	2048(%rax,%rdx), %rax
	shrq	$12, %rax
	movl	%eax, 24(%rbx)
	leaq	(%r12,%r15), %rcx
	movq	%r14, %rax
	subq	%r13, %rax
	leal	(%r9,%rax), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	addl	%esi, %esi
	movl	%esi, 20(%rbx)
	shlq	$13, %r9
	imulq	$11443, %r15, %rdx      # imm = 0x2CB3
	imulq	$10323, %r14, %rsi      # imm = 0x2853
	addq	%rdx, %rsi
	imulq	$5260, %r13, %rdx       # imm = 0x148C
	addq	%r9, %rsi
	addq	%rdx, %rsi
	imulq	$1812, %r12, %rdx       # imm = 0x714
	leaq	2048(%rdx,%rsi), %rdx
	movq	-104(%rsp), %rsi        # 8-byte Reload
	shrq	$12, %rdx
	movl	%edx, 4(%rbx)
	subq	%r12, %r15
	addq	%r14, %r13
	addq	%rax, %rcx
	shlq	$12, %rax
	subq	%r9, %rax
	imulq	$2531, %rcx, %rcx       # imm = 0x9E3
	addq	%rcx, %rax
	imulq	$7791, %r15, %rcx       # imm = 0x1E6F
	imulq	$-4815, %r13, %rdx      # imm = 0xFFFFFFFFFFFFED31
	leaq	2048(%rcx,%rdx), %rcx
	leaq	(%rcx,%rax), %rdx
	shrq	$12, %rdx
	movl	%edx, 12(%rbx)
	subq	%rax, %rcx
	shrq	$12, %rcx
	movl	%ecx, 28(%rbx)
	leaq	-72(%rsp), %rax
	movq	%rax, %rcx
	movl	$8, %eax
	movq	-80(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	je	.LBB9_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-92(%rsp), %eax         # 4-byte Reload
	cmpl	$9, %eax
	jne	.LBB9_6
# BB#3:                                 # %for.body.preheader
	leaq	-40(%rsp), %r9
	movl	$8, %eax
	movq	-112(%rsp), %r8         # 8-byte Reload
	.align	16, 0x90
.LBB9_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -80(%rsp)         # 4-byte Spill
	movl	-32(%r9), %r10d
	movl	(%r9), %r15d
	movl	(%r8), %r12d
	movl	32(%r8), %r13d
	leal	(%r15,%r12), %eax
	movslq	%eax, %r14
	leal	(%r10,%r13), %eax
	movslq	%eax, %r11
	movl	96(%r8), %eax
	movl	192(%r8), %ebx
	leal	(%rbx,%rax), %edx
	movslq	%edx, %rdi
	movl	128(%r8), %ebp
	movl	160(%r8), %ecx
	leal	(%rcx,%rbp), %edx
	movslq	%edx, %rsi
	leaq	(%rsi,%r14), %rdx
	subq	%rsi, %r14
	leaq	(%rdi,%r11), %rsi
	subq	%rdi, %r11
	movl	64(%r8), %edi
	subl	%r15d, %r12d
	movl	224(%r8), %r15d
	subl	%r10d, %r13d
	leal	(%r15,%rdi), %r10d
	subl	%r15d, %edi
	subl	%ebx, %eax
	movslq	%r10d, %rbx
	subl	%ecx, %ebp
	leaq	(%rsi,%rbx), %rcx
	addq	%rdx, %rcx
	imulq	$10486, %rcx, %rcx      # imm = 0x28F6
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, (%r8)
	addq	%rbx, %rbx
	subq	%rbx, %rdx
	subq	%rbx, %rsi
	movslq	%r12d, %rbx
	movslq	%r13d, %r10
	movslq	%edi, %r15
	movslq	%eax, %rcx
	movslq	%ebp, %r12
	imulq	$11997, %rdx, %rdx      # imm = 0x2EDD
	imulq	$-4582, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFEE1A
	leaq	16384(%rsi,%rdx), %rdx
	shrq	$15, %rdx
	movl	%edx, 128(%r8)
	leaq	(%r14,%r11), %rdx
	imulq	$8716, %rdx, %rdx       # imm = 0x220C
	imulq	$5387, %r14, %rsi       # imm = 0x150B
	leaq	16384(%rsi,%rdx), %rsi
	shrq	$15, %rsi
	movl	%esi, 64(%r8)
	imulq	$-22820, %r11, %rsi     # imm = 0xFFFFFFFFFFFFA6DC
	leaq	16384(%rsi,%rdx), %rdx
	shrq	$15, %rdx
	movl	%edx, 192(%r8)
	leaq	(%r12,%rbx), %rdi
	movq	%r10, %rsi
	subq	%rcx, %rsi
	leaq	(%rsi,%r15), %rbp
	movq	%rdi, %rdx
	subq	%rbp, %rdx
	imulq	$10486, %rdx, %rdx      # imm = 0x28F6
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdx
	movl	%edx, 160(%r8)
	imulq	$10486, %r15, %rdx      # imm = 0x28F6
	imulq	$14647, %rbx, %rbp      # imm = 0x3937
	imulq	$13213, %r10, %rax      # imm = 0x339D
	addq	%rbp, %rax
	imulq	$6732, %rcx, %rbp       # imm = 0x1A4C
	addq	%rdx, %rax
	addq	%rbp, %rax
	imulq	$2320, %r12, %rbp       # imm = 0x910
	leaq	16384(%rbp,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 32(%r8)
	subq	%r12, %rbx
	addq	%r10, %rcx
	addq	%rsi, %rdi
	imulq	$5243, %rsi, %rax       # imm = 0x147B
	subq	%rdx, %rax
	imulq	$3240, %rdi, %rdx       # imm = 0xCA8
	addq	%rdx, %rax
	imulq	$9973, %rbx, %rdx       # imm = 0x26F5
	imulq	$-6163, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFE7ED
	leaq	16384(%rdx,%rcx), %rcx
	leaq	(%rcx,%rax), %rdx
	shrq	$15, %rdx
	movl	%edx, 96(%r8)
	subq	%rax, %rcx
	movl	-80(%rsp), %eax         # 4-byte Reload
	shrq	$15, %rcx
	movl	%ecx, 224(%r8)
	addq	$4, %r9
	addq	$4, %r8
	decl	%eax
	jg	.LBB9_4
# BB#5:                                 # %for.end.257
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	jpeg_fdct_10x10, .Lfunc_end9-jpeg_fdct_10x10
	.cfi_endproc

	.globl	jpeg_fdct_11x11
	.align	16, 0x90
	.type	jpeg_fdct_11x11,@function
jpeg_fdct_11x11:                        # @jpeg_fdct_11x11
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
	subq	$24, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 80
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
	movq	%rsi, -120(%rsp)        # 8-byte Spill
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	%edx, %r15d
	xorl	%ecx, %ecx
	movq	%rdi, %rax
	jmp	.LBB10_1
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	incl	%ecx
	addq	$32, %r8
	movq	%r8, %rax
	.align	16, 0x90
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movl	%ecx, -108(%rsp)        # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	(%rsi,%rcx,8), %rbx
	movzbl	(%rbx,%r15), %r11d
	movzbl	10(%rbx,%r15), %esi
	leaq	(%rsi,%r11), %rdx
	movzbl	1(%rbx,%r15), %r13d
	movzbl	9(%rbx,%r15), %edi
	leaq	(%rdi,%r13), %rbp
	movzbl	2(%rbx,%r15), %r14d
	movzbl	8(%rbx,%r15), %r8d
	leaq	(%r8,%r14), %rcx
	movzbl	3(%rbx,%r15), %eax
	movzbl	7(%rbx,%r15), %r10d
	subq	%rsi, %r11
	leaq	(%r10,%rax), %r9
	subq	%rdi, %r13
	movzbl	4(%rbx,%r15), %r12d
	subq	%r8, %r14
	movzbl	6(%rbx,%r15), %esi
	subq	%r10, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r12), %r10
	subq	%rsi, %r12
	leal	(%rbp,%rdx), %r8d
	movl	%ecx, %esi
	addl	%r8d, %esi
	movl	%r9d, %edi
	addl	%esi, %edi
	movzbl	5(%rbx,%r15), %esi
	addl	%esi, %edi
	movl	%r10d, %ebx
	addl	%edi, %ebx
	movq	-104(%rsp), %r8         # 8-byte Reload
	leal	-2816(%rbx,%rbx), %ebx
	movl	%ebx, (%r8)
	leaq	(%rsi,%rsi), %rsi
	subq	%rsi, %rdx
	subq	%rsi, %rbp
	subq	%rsi, %rcx
	subq	%rsi, %r9
	subq	%rsi, %r10
	leaq	(%rdx,%r9), %rsi
	imulq	$11116, %rsi, %rbx      # imm = 0x2B6C
	leaq	(%rcx,%r10), %rsi
	imulq	$1649, %rsi, %rsi       # imm = 0x671
	addq	%rbx, %rsi
	movq	%rbp, %rbx
	subq	%r9, %rbx
	imulq	$-8342, %r9, %rdi       # imm = 0xFFFFFFFFFFFFDF6A
	imulq	$-11395, %r10, %rax     # imm = 0xFFFFFFFFFFFFD37D
	addq	%rdi, %rax
	imulq	$7587, %rbx, %rdi       # imm = 0x1DA3
	addq	%rdi, %rax
	leaq	2048(%rax,%rsi), %rax
	shrq	$12, %rax
	movl	%eax, 8(%r8)
	movq	%rdx, %rax
	subq	%rbp, %rax
	imulq	$511, %rbp, %rbp        # imm = 0x1FF
	imulq	$-11116, %rcx, %rbx     # imm = 0xFFFFFFFFFFFFD494
	addq	%rbp, %rbx
	imulq	$4813, %r10, %rbp       # imm = 0x12CD
	addq	%rbp, %rbx
	imulq	$9746, %rax, %rax       # imm = 0x2612
	addq	%rax, %rbx
	leaq	2048(%rdi,%rbx), %rdi
	shrq	$12, %rdi
	movl	%edi, 16(%r8)
	imulq	$-13275, %rdx, %rdx     # imm = 0xFFFFFFFFFFFFCC25
	imulq	$-6461, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFE6C3
	addq	%rdx, %rcx
	addq	%rax, %rcx
	leaq	2048(%rcx,%rsi), %rax
	shrq	$12, %rax
	movl	%eax, 24(%r8)
	leaq	(%r13,%r11), %rax
	imulq	$10538, %rax, %rax      # imm = 0x292A
	leaq	(%r14,%r11), %rcx
	imulq	$8756, %rcx, %rdx       # imm = 0x2234
	movq	-96(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%r11), %rcx
	imulq	$6263, %rcx, %rcx       # imm = 0x1877
	imulq	$-14090, %r11, %rsi     # imm = 0xFFFFFFFFFFFFC8F6
	imulq	$3264, %r12, %rdi       # imm = 0xCC0
	addq	%rax, %rsi
	addq	%rdx, %rsi
	addq	%rcx, %rsi
	leaq	2048(%rdi,%rsi), %rsi
	leaq	(%r14,%r13), %rdi
	imulq	$-6263, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFE789
	shrq	$12, %rsi
	movl	%esi, 4(%r8)
	leaq	(%rbp,%r13), %rsi
	movq	%rbp, %rbx
	imulq	$-11467, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFD335
	imulq	$10456, %r13, %rbp      # imm = 0x28D8
	addq	%rax, %rbp
	imulq	$-8756, %r12, %rax      # imm = 0xFFFFFFFFFFFFDDCC
	addq	%rdi, %rbp
	addq	%rsi, %rbp
	leaq	2048(%rax,%rbp), %rax
	shrq	$12, %rax
	movl	%eax, 12(%r8)
	imulq	$-16294, %r14, %rax     # imm = 0xFFFFFFFFFFFFC05A
	addq	%rdi, %rax
	movq	%rbx, %rbp
	leaq	(%rbp,%r14), %rdi
	imulq	$3264, %rdi, %rdi       # imm = 0xCC0
	addq	%rdx, %rax
	imulq	$11467, %r12, %rdx      # imm = 0x2CCB
	addq	%rdi, %rax
	leaq	2048(%rdx,%rax), %rax
	shrq	$12, %rax
	movl	%eax, 20(%r8)
	imulq	$10695, %rbp, %rax      # imm = 0x29C7
	addq	%rdi, %rax
	addq	%rsi, %rax
	movq	-120(%rsp), %rsi        # 8-byte Reload
	addq	%rcx, %rax
	imulq	$-10538, %r12, %rcx     # imm = 0xFFFFFFFFFFFFD6D6
	leaq	2048(%rcx,%rax), %rax
	shrq	$12, %rax
	movl	%eax, 28(%r8)
	leaq	-80(%rsp), %rax
	movl	$8, %ecx
	movq	-88(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	je	.LBB10_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-108(%rsp), %ecx        # 4-byte Reload
	cmpl	$10, %ecx
	jne	.LBB10_6
# BB#3:                                 # %for.body.preheader
	leaq	-16(%rsp), %r11
	movl	$8, %eax
	movq	-128(%rsp), %r8         # 8-byte Reload
	.align	16, 0x90
.LBB10_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -88(%rsp)         # 4-byte Spill
	movl	(%r11), %r13d
	movl	(%r8), %r9d
	movl	32(%r8), %r10d
	leal	(%r13,%r9), %eax
	movslq	%eax, %rbx
	movl	-64(%r11), %eax
	movl	-32(%r11), %ebp
	leal	(%rbp,%r10), %ecx
	movslq	%ecx, %rcx
	movl	64(%r8), %r14d
	leal	(%rax,%r14), %edx
	movslq	%edx, %rdx
	movl	96(%r8), %r15d
	movl	224(%r8), %esi
	leal	(%rsi,%r15), %edi
	movslq	%edi, %rdi
	movl	128(%r8), %r12d
	subl	%r13d, %r9d
	movl	192(%r8), %r13d
	subl	%ebp, %r10d
	leal	(%r13,%r12), %ebp
	movslq	%ebp, %rbp
	subl	%eax, %r14d
	movslq	160(%r8), %rax
	subl	%esi, %r15d
	subl	%r13d, %r12d
	leaq	(%rcx,%rbx), %rsi
	addq	%rdx, %rsi
	addq	%rdi, %rsi
	addq	%rbp, %rsi
	addq	%rax, %rsi
	imulq	$8666, %rsi, %rsi       # imm = 0x21DA
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%r8)
	addq	%rax, %rax
	subq	%rax, %rbx
	subq	%rax, %rcx
	subq	%rax, %rdx
	subq	%rax, %rdi
	subq	%rax, %rbp
	leaq	(%rbx,%rdi), %rax
	imulq	$11759, %rax, %rax      # imm = 0x2DEF
	leaq	(%rdx,%rbp), %rsi
	imulq	$1744, %rsi, %rsi       # imm = 0x6D0
	addq	%rax, %rsi
	movq	%rcx, %rax
	subq	%rdi, %rax
	imulq	$-8825, %rdi, %r13      # imm = 0xFFFFFFFFFFFFDD87
	imulq	$-12054, %rbp, %rdi     # imm = 0xFFFFFFFFFFFFD0EA
	addq	%r13, %rdi
	movq	%rbx, %r13
	subq	%rcx, %r13
	imulq	$540, %rcx, %rcx        # imm = 0x21C
	imulq	$8026, %rax, %rax       # imm = 0x1F5A
	addq	%rax, %rdi
	leaq	16384(%rdi,%rsi), %rdi
	shrq	$15, %rdi
	movl	%edi, 64(%r8)
	imulq	$-11759, %rdx, %rdi     # imm = 0xFFFFFFFFFFFFD211
	addq	%rcx, %rdi
	imulq	$5091, %rbp, %rcx       # imm = 0x13E3
	addq	%rcx, %rdi
	imulq	$10310, %r13, %rcx      # imm = 0x2846
	addq	%rcx, %rdi
	leaq	16384(%rax,%rdi), %rax
	shrq	$15, %rax
	movl	%eax, 128(%r8)
	imulq	$-14043, %rbx, %rax     # imm = 0xFFFFFFFFFFFFC925
	movslq	%r9d, %rbx
	movslq	%r10d, %rbp
	movslq	%r14d, %rdi
	movslq	%r15d, %r10
	movslq	%r12d, %r9
	imulq	$-6835, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFE54D
	addq	%rax, %rdx
	addq	%rcx, %rdx
	leaq	16384(%rdx,%rsi), %rax
	shrq	$15, %rax
	movl	%eax, 192(%r8)
	leaq	(%rbp,%rbx), %rax
	imulq	$11148, %rax, %rax      # imm = 0x2B8C
	leaq	(%rdi,%rbx), %rcx
	imulq	$9262, %rcx, %rsi       # imm = 0x242E
	leaq	(%r10,%rbx), %rcx
	imulq	$6626, %rcx, %rdx       # imm = 0x19E2
	imulq	$-14905, %rbx, %rcx     # imm = 0xFFFFFFFFFFFFC5C7
	imulq	$3453, %r9, %rbx        # imm = 0xD7D
	addq	%rax, %rcx
	addq	%rsi, %rcx
	addq	%rdx, %rcx
	leaq	16384(%rbx,%rcx), %rcx
	leaq	(%rdi,%rbp), %rbx
	imulq	$-6626, %rbx, %rbx      # imm = 0xFFFFFFFFFFFFE61E
	shrq	$15, %rcx
	movl	%ecx, 32(%r8)
	leaq	(%r10,%rbp), %rcx
	imulq	$-12131, %rcx, %rcx     # imm = 0xFFFFFFFFFFFFD09D
	imulq	$11061, %rbp, %rbp      # imm = 0x2B35
	addq	%rax, %rbp
	imulq	$-9262, %r9, %rax       # imm = 0xFFFFFFFFFFFFDBD2
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	leaq	16384(%rax,%rbp), %rax
	shrq	$15, %rax
	movl	%eax, 96(%r8)
	imulq	$-17237, %rdi, %rax     # imm = 0xFFFFFFFFFFFFBCAB
	addq	%rbx, %rax
	leaq	(%r10,%rdi), %rdi
	imulq	$3453, %rdi, %rdi       # imm = 0xD7D
	addq	%rsi, %rax
	imulq	$12131, %r9, %rsi       # imm = 0x2F63
	addq	%rdi, %rax
	leaq	16384(%rsi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 160(%r8)
	imulq	$11314, %r10, %rax      # imm = 0x2C32
	addq	%rdi, %rax
	addq	%rcx, %rax
	addq	%rdx, %rax
	imulq	$-11148, %r9, %rcx      # imm = 0xFFFFFFFFFFFFD474
	leaq	16384(%rcx,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 224(%r8)
	movl	-88(%rsp), %eax         # 4-byte Reload
	addq	$4, %r11
	addq	$4, %r8
	decl	%eax
	jg	.LBB10_4
# BB#5:                                 # %for.end.322
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	jpeg_fdct_11x11, .Lfunc_end10-jpeg_fdct_11x11
	.cfi_endproc

	.globl	jpeg_fdct_12x12
	.align	16, 0x90
	.type	jpeg_fdct_12x12,@function
jpeg_fdct_12x12:                        # @jpeg_fdct_12x12
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 128
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsi, -112(%rsp)        # 8-byte Spill
	movq	%rdi, -120(%rsp)        # 8-byte Spill
	movl	%edx, %r14d
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB11_1
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	incl	%eax
	addq	$32, %r15
	movq	%r15, %rcx
	.align	16, 0x90
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movl	%eax, -104(%rsp)        # 4-byte Spill
	cltq
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %rdx
	movzbl	(%rdx,%r14), %ecx
	movzbl	11(%rdx,%r14), %r10d
	leaq	(%r10,%rcx), %rdi
	movzbl	2(%rdx,%r14), %r12d
	movzbl	9(%rdx,%r14), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leaq	(%rax,%r12), %rax
	movzbl	3(%rdx,%r14), %ebp
	movzbl	5(%rdx,%r14), %ebx
	movzbl	6(%rdx,%r14), %r15d
	leaq	(%r15,%rbx), %rsi
	leaq	(%rsi,%rdi), %r9
	subq	%rsi, %rdi
	movq	%rdi, -96(%rsp)         # 8-byte Spill
	movzbl	8(%rdx,%r14), %r13d
	leaq	(%r13,%rbp), %rdi
	movq	%rax, %r8
	subq	%rdi, %r8
	addq	%rax, %rdi
	subq	%r10, %rcx
	movzbl	1(%rdx,%r14), %eax
	movzbl	10(%rdx,%r14), %esi
	leaq	(%rsi,%rax), %r11
	leaq	4096(%rsi,%rax), %r10
	subq	%rsi, %rax
	subq	-88(%rsp), %r12         # 8-byte Folded Reload
	subq	%r13, %rbp
	movq	%rbp, -88(%rsp)         # 8-byte Spill
	movzbl	4(%rdx,%r14), %esi
	movzbl	7(%rdx,%r14), %ebp
	leaq	(%rbp,%rsi), %rdx
	subq	%rbp, %rsi
	subq	%r15, %rbx
	leal	-1536(%r11,%rdi), %ebp
	addl	%edx, %ebp
	movl	%r9d, %r13d
	addl	%ebp, %r13d
	movq	-80(%rsp), %r15         # 8-byte Reload
	movl	%r13d, (%r15)
	movl	%r11d, %ebp
	subl	%edx, %ebp
	movl	%r8d, %r13d
	addl	%ebp, %r13d
	leaq	(%r8,%rdx), %rdx
	movq	-96(%rsp), %rbp         # 8-byte Reload
	addq	%rbp, %r8
	subl	%r13d, %ebp
	movl	%ebp, 24(%r15)
	subq	%rdi, %r9
	imulq	$10033, %r9, %rdi       # imm = 0x2731
	addq	$4096, %rdi             # imm = 0x1000
	shrq	$13, %rdi
	movl	%edi, 16(%r15)
	imulq	$11190, %r8, %rdi       # imm = 0x2BB6
	subq	%rdx, %r10
	addq	%rdi, %r10
	shrq	$13, %r10
	movl	%r10d, 8(%r15)
	leaq	(%rsi,%rax), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rax, %rax       # imm = 0x187E
	imulq	$-15137, %rsi, %rdi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	(%rax,%rdx), %r8
	leaq	(%rdi,%rdx), %r9
	leaq	(%r12,%rcx), %rdx
	imulq	$9191, %rdx, %rdx       # imm = 0x23E7
	movq	-88(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	imulq	$7053, %rdi, %rdi       # imm = 0x1B8D
	imulq	$-4758, %rcx, %rbp      # imm = 0xFFFFFFFFFFFFED6A
	imulq	$1512, %rbx, %rsi       # imm = 0x5E8
	addq	%rdx, %rbp
	addq	%rdi, %rbp
	addq	%r8, %rbp
	leaq	4096(%rsi,%rbp), %rsi
	imulq	$7053, %rbx, %rbp       # imm = 0x1B8D
	shrq	$13, %rsi
	movl	%esi, 4(%r15)
	imulq	$-9191, %rbx, %rsi      # imm = 0xFFFFFFFFFFFFDC19
	subq	%rax, %rcx
	imulq	$10703, %rcx, %rcx      # imm = 0x29CF
	addq	%r12, %rbx
	imulq	$-4433, %rbx, %rbx      # imm = 0xFFFFFFFFFFFFEEAF
	addq	%r9, %rcx
	leaq	4096(%rbx,%rcx), %rcx
	shrq	$13, %rcx
	movl	%ecx, 12(%r15)
	imulq	$-19165, %r12, %rcx     # imm = 0xFFFFFFFFFFFFB523
	addq	%rdx, %rcx
	leaq	(%rax,%r12), %rdx
	movq	%rax, %rbx
	imulq	$-1512, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFFA18
	leaq	4096(%rdx,%rcx), %rcx
	subq	%r9, %rcx
	addq	%rbp, %rcx
	shrq	$13, %rcx
	movl	%ecx, 20(%r15)
	leaq	-64(%rsp), %rax
	movq	%rax, %rcx
	imulq	$5946, %rbx, %rax       # imm = 0x173A
	addq	%rdx, %rax
	leaq	4096(%rdi,%rax), %rax
	subq	%r8, %rax
	addq	%rsi, %rax
	movq	-112(%rsp), %rsi        # 8-byte Reload
	shrq	$13, %rax
	movl	%eax, 28(%r15)
	movl	$8, %eax
	movq	-72(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	je	.LBB11_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-104(%rsp), %eax        # 4-byte Reload
	cmpl	$11, %eax
	jne	.LBB11_6
# BB#3:                                 # %for.body.preheader
	leaq	32(%rsp), %r11
	movl	$8, %eax
	movq	-120(%rsp), %r12        # 8-byte Reload
	.align	16, 0x90
.LBB11_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -72(%rsp)         # 4-byte Spill
	movl	(%r11), %edi
	movl	(%r12), %ecx
	movl	32(%r12), %r10d
	leal	(%rdi,%rcx), %eax
	movslq	%eax, %rbx
	movl	64(%r12), %eax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movl	-96(%r11), %esi
	movq	%rsi, -104(%rsp)        # 8-byte Spill
	movl	-64(%r11), %r9d
	leal	(%r9,%rax), %edx
	movslq	%edx, %rdx
	movl	96(%r12), %r14d
	leal	(%rsi,%r14), %esi
	movslq	%esi, %rbp
	movl	160(%r12), %r13d
	movl	192(%r12), %r8d
	leal	(%r8,%r13), %esi
	movslq	%esi, %r15
	leaq	(%r15,%rbx), %rsi
	subq	%r15, %rbx
	leaq	(%rbp,%rdx), %r15
	subq	%rbp, %rdx
	movl	-32(%r11), %ebp
	subl	%edi, %ecx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	%r10, %rcx
	leal	(%rbp,%rcx), %eax
	subl	%ebp, %ecx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movl	128(%r12), %edi
	movq	-96(%rsp), %r10         # 8-byte Reload
	subl	%r9d, %r10d
	movl	224(%r12), %ecx
	movq	-104(%rsp), %rbp        # 8-byte Reload
	subl	%ebp, %r14d
	leal	(%rcx,%rdi), %ebp
	subl	%ecx, %edi
	cltq
	movslq	%ebp, %rcx
	subl	%r8d, %r13d
	leaq	(%rax,%r15), %rbp
	subq	%rcx, %rax
	addq	%rcx, %rbp
	addq	%rsi, %rbp
	imulq	$7282, %rbp, %rcx       # imm = 0x1C72
	addq	$8192, %rcx             # imm = 0x2000
	shrq	$14, %rcx
	movl	%ecx, (%r12)
	leaq	(%rax,%rdx), %rcx
	subq	%rdx, %rax
	addq	%rbx, %rdx
	subq	%rcx, %rbx
	imulq	$7282, %rbx, %rcx       # imm = 0x1C72
	addq	$8192, %rcx             # imm = 0x2000
	shrq	$14, %rcx
	movl	%ecx, 192(%r12)
	movq	-80(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	-88(%rsp), %rbp         # 8-byte Reload
	movslq	%ebp, %rbp
	movslq	%r10d, %r9
	movslq	%r14d, %r8
	movslq	%edi, %rbx
	movslq	%r13d, %rdi
	subq	%r15, %rsi
	imulq	$8918, %rsi, %rsi       # imm = 0x22D6
	addq	$8192, %rsi             # imm = 0x2000
	shrq	$14, %rsi
	movl	%esi, 128(%r12)
	imulq	$7282, %rax, %rax       # imm = 0x1C72
	imulq	$9947, %rdx, %rdx       # imm = 0x26DB
	leaq	8192(%rax,%rdx), %rax
	shrq	$14, %rax
	movl	%eax, 64(%r12)
	leaq	(%rbx,%rbp), %rax
	imulq	$3941, %rax, %rdx       # imm = 0xF65
	imulq	$5573, %rbp, %rax       # imm = 0x15C5
	imulq	$-13455, %rbx, %rsi     # imm = 0xFFFFFFFFFFFFCB71
	leaq	(%rax,%rdx), %r10
	leaq	(%rsi,%rdx), %rsi
	leaq	(%r9,%rcx), %rdx
	imulq	$8170, %rdx, %rbp       # imm = 0x1FEA
	leaq	(%r8,%rcx), %rdx
	imulq	$6269, %rdx, %rdx       # imm = 0x187D
	imulq	$-4229, %rcx, %rbx      # imm = 0xFFFFFFFFFFFFEF7B
	imulq	$1344, %rdi, %rax       # imm = 0x540
	addq	%rbp, %rbx
	addq	%rdx, %rbx
	addq	%r10, %rbx
	leaq	8192(%rax,%rbx), %rax
	imulq	$6269, %rdi, %rbx       # imm = 0x187D
	shrq	$14, %rax
	movl	%eax, 32(%r12)
	imulq	$-8170, %rdi, %rax      # imm = 0xFFFFFFFFFFFFE016
	subq	%r8, %rcx
	imulq	$9514, %rcx, %rcx       # imm = 0x252A
	addq	%r9, %rdi
	imulq	$-3941, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFF09B
	addq	%rsi, %rcx
	leaq	8192(%rdi,%rcx), %rcx
	shrq	$14, %rcx
	movl	%ecx, 96(%r12)
	imulq	$-17036, %r9, %rcx      # imm = 0xFFFFFFFFFFFFBD74
	addq	%rbp, %rcx
	leaq	(%r8,%r9), %rdi
	imulq	$-1344, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFFAC0
	leaq	8192(%rdi,%rcx), %rcx
	subq	%rsi, %rcx
	addq	%rbx, %rcx
	shrq	$14, %rcx
	movl	%ecx, 160(%r12)
	imulq	$5285, %r8, %rcx        # imm = 0x14A5
	addq	%rdi, %rcx
	leaq	8192(%rdx,%rcx), %rcx
	subq	%r10, %rcx
	addq	%rax, %rcx
	movl	-72(%rsp), %eax         # 4-byte Reload
	shrq	$14, %rcx
	movl	%ecx, 224(%r12)
	addq	$4, %r11
	addq	$4, %r12
	decl	%eax
	jg	.LBB11_4
# BB#5:                                 # %for.end.295
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	jpeg_fdct_12x12, .Lfunc_end11-jpeg_fdct_12x12
	.cfi_endproc

	.globl	jpeg_fdct_13x13
	.align	16, 0x90
	.type	jpeg_fdct_13x13,@function
jpeg_fdct_13x13:                        # @jpeg_fdct_13x13
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 160
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsi, -112(%rsp)        # 8-byte Spill
	movq	%rdi, -120(%rsp)        # 8-byte Spill
	movl	%edx, %r14d
	xorl	%ecx, %ecx
	movq	%rdi, %rdx
	jmp	.LBB12_1
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	incl	%eax
	addq	$32, %r15
	movq	%r15, %rdx
	movl	%eax, %ecx
	.align	16, 0x90
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -100(%rsp)        # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %r10
	movzbl	(%r10,%r14), %r13d
	movzbl	12(%r10,%r14), %edi
	leaq	(%rdi,%r13), %rbp
	movzbl	1(%r10,%r14), %eax
	movzbl	11(%r10,%r14), %r11d
	movq	%rdx, %r15
	leaq	(%r11,%rax), %rdx
	movq	%rax, %rcx
	movzbl	2(%r10,%r14), %eax
	movzbl	10(%r10,%r14), %ebx
	leaq	(%rbx,%rax), %r8
	movzbl	3(%r10,%r14), %esi
	movzbl	9(%r10,%r14), %r9d
	subq	%rdi, %r13
	leaq	(%r9,%rsi), %rdi
	subq	%r11, %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movzbl	4(%r10,%r14), %ecx
	subq	%rbx, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movzbl	8(%r10,%r14), %ebx
	subq	%r9, %rsi
	movq	%rsi, -88(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rcx), %r11
	subq	%rbx, %rcx
	movzbl	5(%r10,%r14), %r12d
	movzbl	7(%r10,%r14), %eax
	leaq	(%rax,%r12), %r9
	subq	%rax, %r12
	leal	(%rdx,%rbp), %eax
	movl	%r8d, %ebx
	addl	%eax, %ebx
	movl	%edi, %eax
	addl	%ebx, %eax
	movl	%r11d, %esi
	addl	%eax, %esi
	movzbl	6(%r10,%r14), %eax
	addl	%eax, %esi
	leal	-1664(%r9,%rsi), %esi
	movl	%esi, (%r15)
	leaq	(%rax,%rax), %rax
	subq	%rax, %rbp
	subq	%rax, %rdx
	subq	%rax, %r8
	subq	%rax, %rdi
	subq	%rax, %r11
	subq	%rax, %r9
	imulq	$11249, %rbp, %rax      # imm = 0x2BF1
	imulq	$8672, %rdx, %rsi       # imm = 0x21E0
	addq	%rax, %rsi
	imulq	$4108, %r8, %rax        # imm = 0x100C
	addq	%rax, %rsi
	imulq	$-1396, %rdi, %rax      # imm = 0xFFFFFFFFFFFFFA8C
	addq	%rax, %rsi
	imulq	$-6581, %r11, %rax      # imm = 0xFFFFFFFFFFFFE64B
	addq	%rax, %rsi
	imulq	$-10258, %r9, %rax      # imm = 0xFFFFFFFFFFFFD7EE
	leaq	4096(%rax,%rsi), %rax
	shrq	$13, %rax
	movl	%eax, 8(%r15)
	movq	%rbp, %rax
	subq	%r8, %rax
	imulq	$9465, %rax, %rax       # imm = 0x24F9
	movq	%rdi, %rsi
	subq	%r11, %rsi
	imulq	$-3570, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFF20E
	addq	%rax, %rsi
	movq	%rdx, %rax
	subq	%r9, %rax
	imulq	$-2592, %rax, %rax      # imm = 0xFFFFFFFFFFFFF5E0
	addq	%rsi, %rax
	addq	%rbp, %r8
	addq	%rdi, %r11
	imulq	$793, %r8, %rsi         # imm = 0x319
	imulq	$-7678, %r11, %rdi      # imm = 0xFFFFFFFFFFFFE202
	addq	%rsi, %rdi
	addq	%rdx, %r9
	imulq	$3989, %r9, %rdx        # imm = 0xF95
	addq	%rdi, %rdx
	leaq	4096(%rdx,%rax), %rsi
	shrq	$13, %rsi
	movl	%esi, 16(%r15)
	movl	$4096, %esi             # imm = 0x1000
	subq	%rdx, %rsi
	addq	%rax, %rsi
	shrq	$13, %rsi
	movl	%esi, 24(%r15)
	movq	-96(%rsp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r13), %rax
	imulq	$10832, %rax, %r10      # imm = 0x2A50
	movq	-88(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r13), %rax
	imulq	$7682, %rax, %rax       # imm = 0x1E02
	leaq	(%r12,%rcx), %rdx
	imulq	$2773, %rdx, %rdx       # imm = 0xAD5
	addq	%rax, %rdx
	imulq	$2611, %rcx, %rax       # imm = 0xA33
	imulq	$-19183, %rcx, %r8      # imm = 0xFFFFFFFFFFFFB511
	subq	%r12, %rcx
	imulq	$7682, %rcx, %rbp       # imm = 0x1E02
	movq	-80(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rbx), %rcx
	imulq	$-2773, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFF52B
	addq	%rbp, %rcx
	leaq	(%rdi,%r13), %rbp
	movq	%rdi, %r9
	imulq	$9534, %rbp, %rbp       # imm = 0x253E
	imulq	$-16549, %r13, %rdi     # imm = 0xFFFFFFFFFFFFBF5B
	addq	%r10, %rdi
	addq	%rbp, %rdi
	addq	%rax, %rdi
	leaq	4096(%rdi,%rdx), %rax
	shrq	$13, %rax
	movl	%eax, 4(%r15)
	imulq	$6859, %rbx, %rax       # imm = 0x1ACB
	addq	%r10, %rax
	movq	%rsi, %rdi
	leaq	(%rdi,%rbx), %rsi
	imulq	$-9534, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFDAC2
	addq	%rsi, %rax
	addq	%r8, %rax
	leaq	4096(%rax,%rcx), %rax
	shrq	$13, %rax
	movl	%eax, 12(%r15)
	leaq	(%rdi,%r9), %rax
	movq	%rdi, %rbx
	imulq	$-5384, %rax, %rax      # imm = 0xFFFFFFFFFFFFEAF8
	imulq	$-12879, %r9, %rdi      # imm = 0xFFFFFFFFFFFFCDB1
	addq	%rbp, %rdi
	imulq	$18515, %r12, %rbp      # imm = 0x4853
	addq	%rax, %rdi
	addq	%rbp, %rdi
	leaq	4096(%rdi,%rcx), %rcx
	shrq	$13, %rcx
	movl	%ecx, 20(%r15)
	imulq	$18068, %rbx, %rcx      # imm = 0x4694
	addq	%rax, %rcx
	addq	%rsi, %rcx
	movq	-112(%rsp), %rsi        # 8-byte Reload
	imulq	$-14273, %r12, %rax     # imm = 0xFFFFFFFFFFFFC83F
	addq	%rax, %rcx
	leaq	4096(%rcx,%rdx), %rax
	shrq	$13, %rax
	movl	%eax, 28(%r15)
	leaq	-64(%rsp), %rax
	movl	$8, %ecx
	movq	-72(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	movq	%rax, %rdx
	je	.LBB12_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-100(%rsp), %eax        # 4-byte Reload
	cmpl	$12, %eax
	jne	.LBB12_6
# BB#3:                                 # %for.body.preheader
	leaq	64(%rsp), %rax
	movl	$8, %ecx
	movq	-120(%rsp), %r14        # 8-byte Reload
	.align	16, 0x90
.LBB12_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -80(%rsp)         # 4-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movl	(%rax), %r13d
	movl	(%r14), %edx
	movl	32(%r14), %esi
	leal	(%r13,%rdx), %ecx
	movq	%rdx, %rbp
	movslq	%ecx, %rcx
	movl	-32(%rax), %r8d
	leal	(%r8,%rsi), %edx
	movq	%rsi, %rbx
	movslq	%edx, %r11
	movl	64(%r14), %r10d
	movq	-72(%rsp), %rax         # 8-byte Reload
	movl	-64(%rax), %eax
	leal	(%rax,%r10), %edx
	movslq	%edx, %rsi
	movl	96(%r14), %r9d
	movq	-72(%rsp), %rdx         # 8-byte Reload
	movl	-128(%rdx), %edi
	movq	-72(%rsp), %rdx         # 8-byte Reload
	movl	-96(%rdx), %r12d
	leal	(%r12,%r9), %edx
	movslq	%edx, %rdx
	movl	128(%r14), %r15d
	subl	%r13d, %ebp
	movq	%rbp, -88(%rsp)         # 8-byte Spill
	leal	(%rdi,%r15), %ebp
	movslq	%ebp, %rbp
	subl	%r8d, %ebx
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movl	160(%r14), %r13d
	subl	%eax, %r10d
	movl	224(%r14), %eax
	subl	%r12d, %r9d
	leal	(%rax,%r13), %ebx
	movslq	%ebx, %r12
	subl	%edi, %r15d
	movslq	192(%r14), %rdi
	subl	%eax, %r13d
	leaq	(%r11,%rcx), %rax
	addq	%rsi, %rax
	addq	%rdx, %rax
	addq	%rbp, %rax
	addq	%r12, %rax
	addq	%rdi, %rax
	imulq	$6205, %rax, %rax       # imm = 0x183D
	addq	$8192, %rax             # imm = 0x2000
	shrq	$14, %rax
	movl	%eax, (%r14)
	addq	%rdi, %rdi
	subq	%rdi, %rcx
	subq	%rdi, %r11
	subq	%rdi, %rsi
	subq	%rdi, %rdx
	subq	%rdi, %rbp
	subq	%rdi, %r12
	imulq	$8520, %rcx, %rax       # imm = 0x2148
	imulq	$6568, %r11, %rdi       # imm = 0x19A8
	addq	%rax, %rdi
	imulq	$3112, %rsi, %rax       # imm = 0xC28
	addq	%rax, %rdi
	imulq	$-1058, %rdx, %rax      # imm = 0xFFFFFFFFFFFFFBDE
	addq	%rax, %rdi
	imulq	$-4985, %rbp, %rax      # imm = 0xFFFFFFFFFFFFEC87
	addq	%rax, %rdi
	imulq	$-7770, %r12, %rax      # imm = 0xFFFFFFFFFFFFE1A6
	leaq	8192(%rax,%rdi), %rax
	shrq	$14, %rax
	movl	%eax, 64(%r14)
	movq	%rcx, %rax
	subq	%rsi, %rax
	imulq	$7169, %rax, %rax       # imm = 0x1C01
	movq	%rdx, %rdi
	subq	%rbp, %rdi
	imulq	$-2704, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFF570
	addq	%rax, %rdi
	movq	%r11, %rax
	subq	%r12, %rax
	imulq	$-1963, %rax, %rax      # imm = 0xFFFFFFFFFFFFF855
	addq	%rdi, %rax
	addq	%rcx, %rsi
	addq	%rdx, %rbp
	movq	-88(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %r8
	movq	-96(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rdi
	movslq	%r10d, %rcx
	movslq	%r9d, %r10
	movslq	%r15d, %rdx
	movslq	%r13d, %r9
	imulq	$601, %rsi, %rsi        # imm = 0x259
	imulq	$-5816, %rbp, %rbx      # imm = 0xFFFFFFFFFFFFE948
	addq	%rsi, %rbx
	addq	%r11, %r12
	imulq	$3021, %r12, %rsi       # imm = 0xBCD
	addq	%rbx, %rsi
	leaq	8192(%rsi,%rax), %rbp
	shrq	$14, %rbp
	movl	%ebp, 128(%r14)
	movl	$8192, %ebp             # imm = 0x2000
	subq	%rsi, %rbp
	addq	%rax, %rbp
	shrq	$14, %rbp
	movl	%ebp, 192(%r14)
	leaq	(%rdi,%r8), %rax
	imulq	$8204, %rax, %rsi       # imm = 0x200C
	leaq	(%r10,%r8), %rax
	imulq	$5819, %rax, %rbp       # imm = 0x16BB
	leaq	(%r9,%rdx), %rax
	imulq	$2100, %rax, %rax       # imm = 0x834
	addq	%rbp, %rax
	imulq	$1978, %rdx, %r15       # imm = 0x7BA
	imulq	$-14529, %rdx, %r11     # imm = 0xFFFFFFFFFFFFC73F
	subq	%r9, %rdx
	imulq	$5819, %rdx, %rdx       # imm = 0x16BB
	leaq	(%rcx,%rdi), %rbp
	imulq	$-2100, %rbp, %rbp      # imm = 0xFFFFFFFFFFFFF7CC
	addq	%rdx, %rbp
	leaq	(%rcx,%r8), %rdx
	imulq	$7221, %rdx, %rdx       # imm = 0x1C35
	imulq	$-12534, %r8, %rbx      # imm = 0xFFFFFFFFFFFFCF0A
	addq	%rsi, %rbx
	addq	%rdx, %rbx
	addq	%r15, %rbx
	leaq	8192(%rbx,%rax), %rbx
	shrq	$14, %rbx
	movl	%ebx, 32(%r14)
	imulq	$5195, %rdi, %rbx       # imm = 0x144B
	addq	%rsi, %rbx
	leaq	(%r10,%rdi), %rsi
	imulq	$-7221, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFE3CB
	addq	%rsi, %rbx
	addq	%r11, %rbx
	leaq	8192(%rbx,%rbp), %rdi
	shrq	$14, %rdi
	movl	%edi, 96(%r14)
	leaq	(%r10,%rcx), %rdi
	imulq	$-4078, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFF012
	imulq	$-9754, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFD9E6
	addq	%rdx, %rcx
	imulq	$14023, %r9, %rdx       # imm = 0x36C7
	addq	%rdi, %rcx
	addq	%rdx, %rcx
	leaq	8192(%rcx,%rbp), %rcx
	shrq	$14, %rcx
	movl	%ecx, 160(%r14)
	imulq	$13685, %r10, %rcx      # imm = 0x3575
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	imulq	$-10811, %r9, %rdx      # imm = 0xFFFFFFFFFFFFD5C5
	addq	%rdx, %rcx
	leaq	8192(%rcx,%rax), %rax
	movl	-80(%rsp), %ecx         # 4-byte Reload
	shrq	$14, %rax
	movl	%eax, 224(%r14)
	movq	-72(%rsp), %rax         # 8-byte Reload
	addq	$4, %rax
	addq	$4, %r14
	decl	%ecx
	jg	.LBB12_4
# BB#5:                                 # %for.end.364
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	jpeg_fdct_13x13, .Lfunc_end12-jpeg_fdct_13x13
	.cfi_endproc

	.globl	jpeg_fdct_14x14
	.align	16, 0x90
	.type	jpeg_fdct_14x14,@function
jpeg_fdct_14x14:                        # @jpeg_fdct_14x14
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 224
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsi, -120(%rsp)        # 8-byte Spill
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	%edx, %r13d
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB13_1
.LBB13_6:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	incl	%eax
	addq	$32, %r14
	movq	%r14, %rcx
	.align	16, 0x90
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movl	%eax, -108(%rsp)        # 4-byte Spill
	cltq
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %rbx
	movzbl	(%rbx,%r13), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movzbl	13(%rbx,%r13), %ecx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rax), %rdi
	movzbl	1(%rbx,%r13), %eax
	movzbl	12(%rbx,%r13), %ecx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rax), %rbp
	movq	%rax, %rcx
	movzbl	5(%rbx,%r13), %edx
	movq	%rdx, -104(%rsp)        # 8-byte Spill
	movzbl	6(%rbx,%r13), %eax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movzbl	7(%rbx,%r13), %r8d
	leaq	(%r8,%rax), %rax
	leaq	(%rax,%rdi), %rsi
	subq	%rax, %rdi
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	movzbl	8(%rbx,%r13), %r11d
	leaq	(%r11,%rdx), %rax
	leaq	(%rax,%rbp), %rdi
	subq	%rax, %rbp
	movq	%rbp, -72(%rsp)         # 8-byte Spill
	movzbl	2(%rbx,%r13), %eax
	movzbl	11(%rbx,%r13), %r14d
	leaq	(%r14,%rax), %r9
	movzbl	4(%rbx,%r13), %r12d
	movzbl	9(%rbx,%r13), %ebp
	leaq	(%rbp,%r12), %r10
	leaq	(%r10,%r9), %r15
	subq	%r10, %r9
	movq	-56(%rsp), %rdx         # 8-byte Reload
	subq	%rdx, -40(%rsp)         # 8-byte Folded Spill
	subq	-88(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	subq	%r14, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movzbl	3(%rbx,%r13), %r10d
	movzbl	10(%rbx,%r13), %ebx
	leaq	(%rbx,%r10), %rcx
	subq	%rbx, %r10
	subq	%rbp, %r12
	movq	-104(%rsp), %rbx        # 8-byte Reload
	subq	%r11, %rbx
	movq	-96(%rsp), %r11         # 8-byte Reload
	subq	%r8, %r11
	leal	(%r15,%rcx), %edx
	movl	%edi, %ebp
	addl	%edx, %ebp
	movq	-64(%rsp), %r14         # 8-byte Reload
	leal	-1792(%rsi,%rbp), %edx
	movl	%edx, (%r14)
	addq	%rcx, %rcx
	subq	%rcx, %rsi
	subq	%rcx, %rdi
	subq	%rcx, %r15
	imulq	$2578, %rdi, %rcx       # imm = 0xA12
	imulq	$-7223, %r15, %rax      # imm = 0xFFFFFFFFFFFFE3C9
	addq	%rcx, %rax
	imulq	$10438, %rsi, %rcx      # imm = 0x28C6
	leaq	4096(%rcx,%rax), %rax
	shrq	$13, %rax
	movl	%eax, 16(%r14)
	movq	-80(%rsp), %rsi         # 8-byte Reload
	imulq	$2237, %rsi, %rax       # imm = 0x8BD
	imulq	$5027, %r9, %rcx        # imm = 0x13A3
	addq	%rax, %rcx
	movq	-72(%rsp), %rdx         # 8-byte Reload
	leaq	(%rsi,%rdx), %rax
	imulq	$9058, %rax, %rax       # imm = 0x2362
	leaq	4096(%rax,%rcx), %rcx
	shrq	$13, %rcx
	movl	%ecx, 8(%r14)
	imulq	$-14084, %rdx, %rcx     # imm = 0xFFFFFFFFFFFFC8FC
	imulq	$-11295, %r9, %rdx      # imm = 0xFFFFFFFFFFFFD3E1
	addq	%rcx, %rdx
	leaq	4096(%rax,%rdx), %rax
	shrq	$13, %rax
	movl	%eax, 24(%r14)
	movq	-56(%rsp), %r8          # 8-byte Reload
	movq	-88(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%r8), %rax
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%r10d, %edx
	addl	%ecx, %edx
	movq	%rbx, %r15
	movq	%r15, %rcx
	subq	%r12, %rcx
	subl	%ecx, %edx
	movq	%r11, %rbp
	subl	%ebp, %edx
	movl	%edx, 28(%r14)
	leaq	(%rdi,%rsi), %rdx
	movq	%rsi, %r9
	shlq	$13, %r10
	imulq	$-1297, %rax, %rax      # imm = 0xFFFFFFFFFFFFFAEF
	imulq	$11512, %rcx, %rcx      # imm = 0x2CF8
	subq	%r10, %rcx
	addq	%rax, %rcx
	imulq	$9810, %rdx, %rax       # imm = 0x2652
	leaq	(%rbp,%r12), %rdx
	imulq	$6164, %rdx, %rsi       # imm = 0x1814
	addq	%rax, %rsi
	imulq	$-19447, %rdi, %rax     # imm = 0xFFFFFFFFFFFFB409
	imulq	$9175, %r12, %rdx       # imm = 0x23D7
	addq	%rax, %rdx
	movq	%r8, %rbp
	leaq	(%rbp,%r9), %rax
	addq	%rcx, %rdx
	leaq	4096(%rdx,%rsi), %rdx
	shrq	$13, %rdx
	movl	%edx, 20(%r14)
	imulq	$10935, %rax, %rax      # imm = 0x2AB7
	movq	%r15, %rdi
	imulq	$-25148, %rdi, %rdx     # imm = 0xFFFFFFFFFFFF9DC4
	subq	%r11, %rdi
	imulq	$3826, %rdi, %rdi       # imm = 0xEF2
	addq	%rax, %rdi
	imulq	$-3474, %rbp, %rax      # imm = 0xFFFFFFFFFFFFF26E
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	4096(%rax,%rdi), %rax
	shrq	$13, %rax
	movl	%eax, 12(%r14)
	movq	%r11, %rcx
	leaq	(%r9,%rcx), %rax
	leaq	4096(%r10,%rcx), %rcx
	imulq	$-9232, %rax, %rax      # imm = 0xFFFFFFFFFFFFDBF0
	addq	%rax, %rcx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	movq	-120(%rsp), %rsi        # 8-byte Reload
	shrq	$13, %rcx
	movl	%ecx, 4(%r14)
	leaq	-32(%rsp), %rax
	movq	%rax, %rcx
	movl	$8, %eax
	movq	-48(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	je	.LBB13_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-108(%rsp), %eax        # 4-byte Reload
	cmpl	$13, %eax
	jne	.LBB13_6
# BB#3:                                 # %for.body.preheader
	leaq	128(%rsp), %rcx
	movl	$8, %eax
	movq	-128(%rsp), %r10        # 8-byte Reload
	.align	16, 0x90
.LBB13_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	%eax, -48(%rsp)         # 4-byte Spill
	movl	(%rcx), %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movl	(%r10), %ecx
	movl	32(%r10), %edx
	leal	(%rax,%rcx), %eax
	movq	%rcx, %rbp
	movslq	%eax, %r12
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-32(%rax), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leal	(%rax,%rdx), %eax
	movq	%rdx, %rbx
	movslq	%eax, %rdx
	movl	64(%r10), %esi
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-64(%rax), %r11d
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-160(%rax), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movl	160(%r10), %ecx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %eax
	cltq
	movl	192(%r10), %ecx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movl	224(%r10), %r14d
	leal	(%r14,%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r12), %rdi
	subq	%rcx, %r12
	movq	%rdx, %rcx
	leaq	(%rax,%rcx), %rdx
	subq	%rax, %rcx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	leal	(%r11,%rsi), %eax
	movslq	%eax, %r15
	movl	128(%r10), %r8d
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-128(%rax), %r9d
	leal	(%r9,%r8), %eax
	movslq	%eax, %r13
	leaq	(%r13,%r15), %rax
	subq	%r13, %r15
	movq	-56(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %ebp
	movq	%rbp, -56(%rsp)         # 8-byte Spill
	movq	-64(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %ebx
	movq	%rbx, -64(%rsp)         # 8-byte Spill
	subl	%r11d, %esi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	movl	96(%r10), %r13d
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movl	-96(%rsi), %ebx
	leal	(%rbx,%r13), %r11d
	subl	%ebx, %r13d
	subl	%r9d, %r8d
	movq	-96(%rsp), %rsi         # 8-byte Reload
	movq	-88(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %esi
	movslq	%r11d, %rbx
	movq	-104(%rsp), %r11        # 8-byte Reload
	subl	%r14d, %r11d
	leaq	(%rax,%rbx), %rbp
	addq	%rdx, %rbp
	addq	%rdi, %rbp
	imulq	$5350, %rbp, %rbp       # imm = 0x14E6
	addq	$8192, %rbp             # imm = 0x2000
	shrq	$14, %rbp
	movl	%ebp, (%r10)
	addq	%rbx, %rbx
	subq	%rbx, %rdi
	subq	%rbx, %rdx
	subq	%rbx, %rax
	imulq	$1684, %rdx, %rdx       # imm = 0x694
	imulq	$-4717, %rax, %rax      # imm = 0xFFFFFFFFFFFFED93
	addq	%rdx, %rax
	imulq	$6817, %rdi, %rdx       # imm = 0x1AA1
	leaq	8192(%rdx,%rax), %rax
	shrq	$14, %rax
	movl	%eax, 128(%r10)
	imulq	$1461, %r12, %rax       # imm = 0x5B5
	imulq	$3283, %r15, %rdx       # imm = 0xCD3
	addq	%rax, %rdx
	movq	-80(%rsp), %r14         # 8-byte Reload
	leaq	(%r12,%r14), %rax
	imulq	$5915, %rax, %rbp       # imm = 0x171B
	leaq	8192(%rbp,%rdx), %rax
	shrq	$14, %rax
	movl	%eax, 64(%r10)
	movq	-56(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %r12
	movq	-64(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rdx
	movq	-72(%rsp), %rax         # 8-byte Reload
	cltq
	movslq	%r13d, %r9
	movslq	%r8d, %rdi
	movslq	%esi, %rbx
	movslq	%r11d, %r11
	imulq	$-9198, %r14, %rcx      # imm = 0xFFFFFFFFFFFFDC12
	imulq	$-7376, %r15, %rsi      # imm = 0xFFFFFFFFFFFFE330
	addq	%rcx, %rsi
	leaq	8192(%rbp,%rsi), %rcx
	shrq	$14, %rcx
	movl	%ecx, 192(%r10)
	leaq	(%rax,%rdx), %rcx
	movq	%rdx, %r8
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	movq	%r12, %rdx
	subq	%rcx, %rdx
	addq	%r9, %rdx
	subq	%rsi, %rdx
	subq	%r11, %rdx
	imulq	$5350, %rdx, %rdx       # imm = 0x14E6
	addq	$8192, %rdx             # imm = 0x2000
	shrq	$14, %rdx
	movl	%edx, 224(%r10)
	leaq	(%rax,%r12), %rdx
	imulq	$5350, %r9, %r9         # imm = 0x14E6
	imulq	$-847, %rcx, %rcx       # imm = 0xFFFFFFFFFFFFFCB1
	imulq	$7518, %rsi, %rbp       # imm = 0x1D5E
	subq	%r9, %rbp
	addq	%rcx, %rbp
	imulq	$6406, %rdx, %rcx       # imm = 0x1906
	leaq	(%r11,%rdi), %rdx
	imulq	$4025, %rdx, %rsi       # imm = 0xFB9
	addq	%rcx, %rsi
	imulq	$-12700, %rax, %rax     # imm = 0xFFFFFFFFFFFFCE64
	imulq	$5992, %rdi, %rcx       # imm = 0x1768
	addq	%rax, %rcx
	movq	%r8, %rdi
	leaq	(%rdi,%r12), %rax
	addq	%rbp, %rcx
	leaq	8192(%rcx,%rsi), %rcx
	shrq	$14, %rcx
	movl	%ecx, 160(%r10)
	imulq	$7141, %rax, %rax       # imm = 0x1BE5
	imulq	$-16423, %rbx, %rcx     # imm = 0xFFFFFFFFFFFFBFD9
	subq	%r11, %rbx
	imulq	$2499, %rbx, %rdx       # imm = 0x9C3
	addq	%rax, %rdx
	imulq	$-2269, %rdi, %rax      # imm = 0xFFFFFFFFFFFFF723
	addq	%rcx, %rax
	addq	%rbp, %rax
	leaq	8192(%rax,%rdx), %rax
	shrq	$14, %rax
	movl	%eax, 96(%r10)
	imulq	$-6029, %r12, %rax      # imm = 0xFFFFFFFFFFFFE873
	addq	%r9, %rax
	imulq	$-679, %r11, %rcx       # imm = 0xFFFFFFFFFFFFFD59
	addq	%rcx, %rax
	movq	-40(%rsp), %rcx         # 8-byte Reload
	addq	%rdx, %rax
	leaq	8192(%rax,%rsi), %rax
	shrq	$14, %rax
	movl	%eax, 32(%r10)
	movl	-48(%rsp), %eax         # 4-byte Reload
	addq	$4, %rcx
	addq	$4, %r10
	decl	%eax
	jg	.LBB13_4
# BB#5:                                 # %for.end.339
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	jpeg_fdct_14x14, .Lfunc_end13-jpeg_fdct_14x14
	.cfi_endproc

	.globl	jpeg_fdct_15x15
	.align	16, 0x90
	.type	jpeg_fdct_15x15,@function
jpeg_fdct_15x15:                        # @jpeg_fdct_15x15
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 256
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsi, -112(%rsp)        # 8-byte Spill
	movq	%rdi, -120(%rsp)        # 8-byte Spill
	movl	%edx, %r11d
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB14_1
.LBB14_6:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	incl	%eax
	addq	$32, %r12
	movq	%r12, %rcx
	.align	16, 0x90
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -104(%rsp)        # 4-byte Spill
	cltq
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	(%rsi,%rax,8), %r10
	movzbl	(%r10,%r11), %edx
	movzbl	14(%r10,%r11), %r9d
	leaq	(%r9,%rdx), %r14
	movzbl	1(%r10,%r11), %esi
	movzbl	13(%r10,%r11), %ebp
	leaq	(%rbp,%rsi), %r8
	movzbl	2(%r10,%r11), %edi
	movzbl	12(%r10,%r11), %eax
	leaq	(%rax,%rdi), %rbx
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	movq	%rcx, %r12
	movzbl	3(%r10,%r11), %ecx
	movzbl	11(%r10,%r11), %ebx
	subq	%r9, %rdx
	leaq	(%rbx,%rcx), %r15
	movq	%r15, -80(%rsp)         # 8-byte Spill
	subq	%rbp, %rsi
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	movzbl	4(%r10,%r11), %ebp
	subq	%rax, %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movzbl	10(%r10,%r11), %eax
	subq	%rbx, %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	leaq	(%rax,%rbp), %rsi
	movq	%rsi, -96(%rsp)         # 8-byte Spill
	subq	%rax, %rbp
	movq	%rbp, -72(%rsp)         # 8-byte Spill
	movzbl	5(%r10,%r11), %r13d
	movzbl	9(%r10,%r11), %eax
	leaq	(%rax,%r13), %r9
	subq	%rax, %r13
	movzbl	6(%r10,%r11), %ebx
	movzbl	8(%r10,%r11), %eax
	leaq	(%rax,%rbx), %rcx
	subq	%rax, %rbx
	movzbl	7(%r10,%r11), %r10d
	movq	%r14, %rbp
	leaq	(%rsi,%rbp), %rax
	addq	%r9, %rax
	leaq	(%r15,%r8), %r14
	movq	%r8, %r15
	addq	%rcx, %r14
	movq	-88(%rsp), %r8          # 8-byte Reload
	leaq	(%r10,%r8), %rdi
	leal	(%rdi,%rax), %esi
	leal	-1920(%r14,%rsi), %esi
	movl	%esi, (%r12)
	addq	%rdi, %rdi
	subq	%rdi, %rax
	subq	%rdi, %r14
	imulq	$9373, %rax, %rax       # imm = 0x249D
	imulq	$-3580, %r14, %rsi      # imm = 0xFFFFFFFFFFFFF204
	leaq	4096(%rsi,%rax), %rax
	shrq	$13, %rax
	movl	%eax, 24(%r12)
	movq	%r15, %r14
	movq	-96(%rsp), %r15         # 8-byte Reload
	leaq	(%r15,%r14), %rax
	shrq	%rax
	addq	%r8, %rax
	addq	%r10, %r10
	subq	%r10, %rax
	movq	%rbp, %rdi
	movq	%rdi, %rsi
	movq	-80(%rsp), %rbp         # 8-byte Reload
	subq	%rbp, %rdi
	movq	%rdi, %r10
	movq	%rbp, %rdi
	subq	%rax, %rdi
	movq	%rcx, %rbp
	subq	%rax, %rbp
	subq	%r9, %rcx
	subq	%rax, %r9
	subq	%rax, %rsi
	movq	%r14, %rax
	subq	%r15, %rax
	imulq	$11332, %r10, %r10      # imm = 0x2C44
	imulq	$6476, %rax, %rax       # imm = 0x194C
	addq	%r10, %rax
	imulq	$7752, %rcx, %rcx       # imm = 0x1E48
	addq	%rcx, %rax
	imulq	$12543, %rdi, %rcx      # imm = 0x30FF
	imulq	$-18336, %rbp, %rdi     # imm = 0xFFFFFFFFFFFFB860
	addq	%rcx, %rdi
	imulq	$6541, %r9, %rcx        # imm = 0x198D
	imulq	$-748, %rsi, %rsi       # imm = 0xFFFFFFFFFFFFFD14
	leaq	4096(%rdi,%rax), %rdi
	shrq	$13, %rdi
	movl	%edi, 8(%r12)
	addq	%rcx, %rsi
	leaq	4096(%rsi,%rax), %rax
	shrq	$13, %rax
	movl	%eax, 16(%r12)
	movq	%rdx, %rcx
	movq	-56(%rsp), %r9          # 8-byte Reload
	subq	%r9, %rcx
	movq	-64(%rsp), %r10         # 8-byte Reload
	subq	%r10, %rcx
	movq	%rdx, %rsi
	movq	-72(%rsp), %rdi         # 8-byte Reload
	subq	%rdi, %rsi
	movq	-48(%rsp), %rbp         # 8-byte Reload
	leaq	(%rdi,%rbp), %rax
	movq	%rdi, %r14
	imulq	$11018, %rax, %r8       # imm = 0x2B0A
	leaq	(%r13,%r10), %rax
	movq	%r10, %rdi
	imulq	$4712, %rax, %rax       # imm = 0x1268
	addq	%r8, %rax
	imulq	$-2912, %rdx, %r8       # imm = 0xFFFFFFFFFFFFF4A0
	subq	%rbx, %rdx
	imulq	$11522, %rdx, %rdx      # imm = 0x2D02
	addq	%rdx, %rax
	movq	%rbp, %rdx
	movq	%rbp, %r10
	subq	%rdi, %rdx
	imulq	$10033, %r9, %r9        # imm = 0x2731
	imulq	$3897, %rdi, %rdi       # imm = 0xF39
	imulq	$-4209, %r14, %rbp      # imm = 0xFFFFFFFFFFFFEF8F
	leaq	(%rdi,%r9), %rdi
	addq	%rbp, %rdi
	addq	%r13, %rcx
	addq	%rbx, %rcx
	subq	%rbx, %rdx
	imulq	$13930, %rbx, %rbp      # imm = 0x366A
	addq	%rbp, %rdi
	leaq	4096(%rdi,%rax), %rdi
	shrq	$13, %rdi
	movl	%edi, 4(%r12)
	subq	%r13, %rsi
	imulq	$11018, %rsi, %rsi      # imm = 0x2B0A
	imulq	$6810, %rdx, %rdx       # imm = 0x1A9A
	leaq	4096(%rsi,%rdx), %rdx
	movq	-112(%rsp), %rsi        # 8-byte Reload
	shrq	$13, %rdx
	movl	%edx, 12(%r12)
	imulq	$10033, %rcx, %rcx      # imm = 0x2731
	addq	$4096, %rcx             # imm = 0x1000
	shrq	$13, %rcx
	movl	%ecx, 20(%r12)
	imulq	$-17828, %r10, %rcx     # imm = 0xFFFFFFFFFFFFBA5C
	leaq	4096(%r8,%rcx), %rcx
	subq	%r9, %rcx
	imulq	$-7121, %r13, %rdx      # imm = 0xFFFFFFFFFFFFE42F
	addq	%rdx, %rcx
	addq	%rax, %rcx
	shrq	$13, %rcx
	movl	%ecx, 28(%r12)
	leaq	-32(%rsp), %rax
	movq	%rax, %rcx
	movl	$8, %eax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	cmpl	$7, %edx
	je	.LBB14_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-104(%rsp), %eax        # 4-byte Reload
	cmpl	$14, %eax
	jne	.LBB14_6
# BB#3:                                 # %for.body.preheader
	leaq	160(%rsp), %rcx
	movl	$8, %eax
	movq	-120(%rsp), %r14        # 8-byte Reload
	.align	16, 0x90
.LBB14_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	%eax, -48(%rsp)         # 4-byte Spill
	movl	(%rcx), %r9d
	movl	(%r14), %ecx
	movl	32(%r14), %edx
	leal	(%r9,%rcx), %eax
	cltq
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-32(%rax), %r8d
	leal	(%r8,%rdx), %eax
	movq	%rdx, %rsi
	cltq
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movl	64(%r14), %edi
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	-64(%rax), %r15d
	leal	(%r15,%rdi), %eax
	cltq
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movl	96(%r14), %eax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	movl	-96(%rdx), %edx
	leal	(%rdx,%rax), %ebx
	movslq	%ebx, %r11
	movl	128(%r14), %r13d
	movq	-40(%rsp), %rbx         # 8-byte Reload
	movl	-128(%rbx), %r12d
	leal	(%r12,%r13), %ebx
	movslq	%ebx, %rbp
	movq	%rbp, -120(%rsp)        # 8-byte Spill
	subl	%r9d, %ecx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movl	160(%r14), %r10d
	subl	%r8d, %esi
	movq	%rsi, -64(%rsp)         # 8-byte Spill
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movl	-192(%rcx), %ebx
	subl	%r15d, %edi
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movl	-160(%rcx), %r8d
	subl	%edx, %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leal	(%r8,%r10), %edx
	movslq	%edx, %rdi
	subl	%r12d, %r13d
	movq	%r13, -88(%rsp)         # 8-byte Spill
	movl	192(%r14), %edx
	subl	%r8d, %r10d
	leal	(%rbx,%rdx), %eax
	movslq	%eax, %r8
	subl	%ebx, %edx
	movq	-96(%rsp), %r13         # 8-byte Reload
	leaq	(%rbp,%r13), %rax
	addq	%rdi, %rax
	movq	-104(%rsp), %rbp        # 8-byte Reload
	leaq	(%r11,%rbp), %rbx
	addq	%r8, %rbx
	movslq	224(%r14), %rcx
	movq	-112(%rsp), %r9         # 8-byte Reload
	leaq	(%rcx,%r9), %r15
	leaq	(%rbx,%rax), %r12
	addq	%r15, %r12
	imulq	$9321, %r12, %rsi       # imm = 0x2469
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%r14)
	addq	%r15, %r15
	subq	%r15, %rax
	subq	%r15, %rbx
	imulq	$10664, %rax, %rax      # imm = 0x29A8
	imulq	$-4073, %rbx, %rsi      # imm = 0xFFFFFFFFFFFFF017
	leaq	16384(%rsi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 192(%r14)
	movq	-120(%rsp), %r12        # 8-byte Reload
	leaq	(%r12,%rbp), %rax
	sarq	%rax
	addq	%r9, %rax
	addq	%rcx, %rcx
	subq	%rcx, %rax
	movq	%r13, %r15
	subq	%r11, %r13
	subq	%rax, %r11
	movq	%r8, %rbx
	subq	%rax, %rbx
	subq	%rdi, %r8
	subq	%rax, %rdi
	subq	%rax, %r15
	movq	%rbp, %rcx
	subq	%r12, %rcx
	imulq	$12893, %r13, %rax      # imm = 0x325D
	imulq	$7369, %rcx, %rcx       # imm = 0x1CC9
	addq	%rax, %rcx
	imulq	$8820, %r8, %rax        # imm = 0x2274
	addq	%rax, %rcx
	imulq	$14271, %r11, %rax      # imm = 0x37BF
	imulq	$-20862, %rbx, %rsi     # imm = 0xFFFFFFFFFFFFAE82
	leaq	16384(%rsi,%rcx), %rbx
	addq	%rax, %rbx
	movq	-56(%rsp), %rax         # 8-byte Reload
	cltq
	movq	-64(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %r8
	movq	-72(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %r9
	movq	-80(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %rsi
	movq	-88(%rsp), %rbp         # 8-byte Reload
	movslq	%ebp, %r11
	movslq	%r10d, %r10
	movslq	%edx, %rbp
	imulq	$7442, %rdi, %rdx       # imm = 0x1D12
	imulq	$-852, %r15, %rdi       # imm = 0xFFFFFFFFFFFFFCAC
	shrq	$15, %rbx
	movl	%ebx, 64(%r14)
	leaq	16384(%rdi,%rcx), %rcx
	addq	%rdx, %rcx
	shrq	$15, %rcx
	movl	%ecx, 128(%r14)
	movq	%rax, %rdx
	subq	%r9, %rdx
	subq	%rsi, %rdx
	movq	%rax, %rdi
	subq	%r11, %rdi
	leaq	(%r11,%r8), %rcx
	imulq	$12536, %rcx, %rbx      # imm = 0x30F8
	leaq	(%r10,%rsi), %rcx
	imulq	$5361, %rcx, %rcx       # imm = 0x14F1
	addq	%rbx, %rcx
	imulq	$-3314, %rax, %r15      # imm = 0xFFFFFFFFFFFFF30E
	subq	%rbp, %rax
	imulq	$13109, %rax, %rax      # imm = 0x3335
	addq	%rax, %rcx
	movq	%r8, %rax
	subq	%rsi, %rax
	imulq	$11415, %r9, %r9        # imm = 0x2C97
	imulq	$4434, %rsi, %rsi       # imm = 0x1152
	imulq	$-4788, %r11, %rbx      # imm = 0xFFFFFFFFFFFFED4C
	leaq	(%rsi,%r9), %rsi
	addq	%rbx, %rsi
	addq	%r10, %rdx
	addq	%rbp, %rdx
	subq	%rbp, %rax
	imulq	$15850, %rbp, %rbp      # imm = 0x3DEA
	addq	%rbp, %rsi
	leaq	16384(%rsi,%rcx), %rsi
	shrq	$15, %rsi
	movl	%esi, 32(%r14)
	subq	%r10, %rdi
	imulq	$12536, %rdi, %rsi      # imm = 0x30F8
	imulq	$7748, %rax, %rax       # imm = 0x1E44
	leaq	16384(%rsi,%rax), %rax
	shrq	$15, %rax
	movl	%eax, 96(%r14)
	imulq	$11415, %rdx, %rax      # imm = 0x2C97
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 160(%r14)
	imulq	$-20284, %r8, %rax      # imm = 0xFFFFFFFFFFFFB0C4
	leaq	16384(%r15,%rax), %rax
	subq	%r9, %rax
	imulq	$-8102, %r10, %rdx      # imm = 0xFFFFFFFFFFFFE05A
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	-40(%rsp), %rcx         # 8-byte Reload
	shrq	$15, %rax
	movl	%eax, 224(%r14)
	movl	-48(%rsp), %eax         # 4-byte Reload
	addq	$4, %rcx
	addq	$4, %r14
	decl	%eax
	jg	.LBB14_4
# BB#5:                                 # %for.end.362
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	jpeg_fdct_15x15, .Lfunc_end14-jpeg_fdct_15x15
	.cfi_endproc

	.globl	jpeg_fdct_16x16
	.align	16, 0x90
	.type	jpeg_fdct_16x16,@function
jpeg_fdct_16x16:                        # @jpeg_fdct_16x16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp167:
	.cfi_def_cfa_offset 336
.Ltmp168:
	.cfi_offset %rbx, -56
.Ltmp169:
	.cfi_offset %r12, -48
.Ltmp170:
	.cfi_offset %r13, -40
.Ltmp171:
	.cfi_offset %r14, -32
.Ltmp172:
	.cfi_offset %r15, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsi, -120(%rsp)        # 8-byte Spill
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	%edx, %r10d
	movq	%r10, -16(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB15_1
.LBB15_6:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	incl	%eax
	addq	$32, %r13
	movq	%r13, %rcx
	.align	16, 0x90
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movl	%eax, -108(%rsp)        # 4-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movq	-120(%rsp), %rax        # 8-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movzbl	(%rsi,%r10), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movzbl	15(%rsi,%r10), %ecx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rax), %rcx
	movzbl	1(%rsi,%r10), %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	movzbl	14(%rsi,%r10), %edx
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rax), %rbx
	movzbl	6(%rsi,%r10), %edi
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movzbl	7(%rsi,%r10), %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movzbl	8(%rsi,%r10), %edx
	movq	%rdx, -104(%rsp)        # 8-byte Spill
	leaq	(%rdx,%rax), %rbp
	leaq	(%rbp,%rcx), %r8
	subq	%rbp, %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movzbl	9(%rsi,%r10), %ecx
	leaq	(%rcx,%rdi), %rbp
	leaq	(%rbp,%rbx), %r11
	subq	%rbp, %rbx
	movq	%rbx, -72(%rsp)         # 8-byte Spill
	movzbl	2(%rsi,%r10), %eax
	movzbl	13(%rsi,%r10), %r14d
	leaq	(%r14,%rax), %r9
	movzbl	5(%rsi,%r10), %ebp
	movzbl	10(%rsi,%r10), %r12d
	leaq	(%r12,%rbp), %r13
	leaq	(%r13,%r9), %rdi
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	subq	%r13, %r9
	movzbl	3(%rsi,%r10), %edi
	movzbl	12(%rsi,%r10), %r13d
	movzbl	4(%rsi,%r10), %r10d
	movq	-16(%rsp), %rbx         # 8-byte Reload
	movzbl	11(%rsi,%rbx), %r15d
	leaq	(%r13,%rdi), %rsi
	leaq	(%r15,%r10), %rbx
	leaq	(%rbx,%rsi), %rdx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	subq	%rbx, %rsi
	movq	-40(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, 8(%rsp)           # 8-byte Folded Spill
	movq	-48(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, (%rsp)            # 8-byte Folded Spill
	subq	%r14, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	subq	%r13, %rdi
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	subq	%r15, %r10
	movq	%r10, -40(%rsp)         # 8-byte Spill
	subq	%r12, %rbp
	movq	-88(%rsp), %r15         # 8-byte Reload
	subq	%rcx, %r15
	movq	-8(%rsp), %r10          # 8-byte Reload
	subq	-104(%rsp), %r10        # 8-byte Folded Reload
	movq	%r10, -8(%rsp)          # 8-byte Spill
	movq	-80(%rsp), %rax         # 8-byte Reload
	movq	-96(%rsp), %rdi         # 8-byte Reload
	leal	(%rax,%rdi), %ecx
	movl	%r11d, %edx
	addl	%ecx, %edx
	movl	%r8d, %ecx
	addl	%edx, %ecx
	movq	-32(%rsp), %r13         # 8-byte Reload
	leal	-8192(,%rcx,4), %ecx
	movl	%ecx, (%r13)
	subq	%rdi, %r8
	subq	%rax, %r11
	imulq	$10703, %r8, %rax       # imm = 0x29CF
	imulq	$4433, %r11, %rcx       # imm = 0x1151
	leaq	1024(%rcx,%rax), %rax
	shrq	$11, %rax
	movl	%eax, 16(%r13)
	movq	%rsi, %rax
	movq	-72(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, %rax
	imulq	$2260, %rax, %rax       # imm = 0x8D4
	movq	-64(%rsp), %rdx         # 8-byte Reload
	imulq	$-1730, %rdx, %rcx      # imm = 0xFFFFFFFFFFFFF93E
	subq	%r9, %rdx
	imulq	$11363, %rdx, %rdi      # imm = 0x2C63
	addq	%rax, %rdi
	imulq	$11893, %rbx, %rax      # imm = 0x2E75
	imulq	$17799, %r9, %rbx       # imm = 0x4587
	addq	%rax, %rbx
	imulq	$-8697, %rsi, %rax      # imm = 0xFFFFFFFFFFFFDE07
	leaq	1024(%rbx,%rdi), %rsi
	shrq	$11, %rsi
	movl	%esi, 8(%r13)
	addq	%rcx, %rax
	leaq	1024(%rax,%rdi), %rax
	shrq	$11, %rax
	movl	%eax, 24(%r13)
	movq	(%rsp), %r11            # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	(%r11,%rdx), %rax
	imulq	$11086, %rax, %rax      # imm = 0x2B4E
	movq	%r15, %rcx
	movq	%r10, %rsi
	subq	%rsi, %rcx
	imulq	$3363, %rcx, %rdi       # imm = 0xD23
	addq	%rax, %rdi
	movq	-56(%rsp), %r14         # 8-byte Reload
	leaq	(%r14,%rdx), %rax
	imulq	$10217, %rax, %rax      # imm = 0x27E9
	leaq	(%rsi,%rbp), %rcx
	imulq	$5461, %rcx, %r9        # imm = 0x1555
	addq	%rax, %r9
	movq	-48(%rsp), %r12         # 8-byte Reload
	leaq	(%r12,%rdx), %rax
	imulq	$8956, %rax, %rax       # imm = 0x22FC
	movq	-40(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	subq	%rsi, %rcx
	imulq	$7350, %rcx, %r8        # imm = 0x1CB6
	addq	%rax, %r8
	leaq	(%r14,%r11), %rax
	imulq	$1136, %rax, %rax       # imm = 0x470
	movq	-16(%rsp), %r10         # 8-byte Reload
	movq	%r15, %rcx
	subq	%rbp, %rcx
	imulq	$11529, %rcx, %rsi      # imm = 0x2D09
	addq	%rax, %rsi
	leaq	(%r12,%r11), %rax
	imulq	$-5461, %rax, %rax      # imm = 0xFFFFFFFFFFFFEAAB
	leaq	(%r15,%rdx), %rcx
	movq	%r15, %r11
	imulq	$-10217, %rcx, %rcx     # imm = 0xFFFFFFFFFFFFD817
	addq	%rax, %rcx
	imulq	$10055, %rbp, %r15      # imm = 0x2747
	subq	%rdx, %rbp
	leaq	(%r12,%r14), %rax
	imulq	$-11086, %rax, %rbx     # imm = 0xFFFFFFFFFFFFD4B2
	imulq	$3363, %rbp, %rax       # imm = 0xD23
	addq	%rbx, %rax
	imulq	$-18730, 8(%rsp), %rbx  # 8-byte Folded Reload
                                        # imm = 0xFFFFFFFFFFFFB6D6
	imulq	$6387, -8(%rsp), %rbp   # 8-byte Folded Reload
                                        # imm = 0x18F3
	addq	%rbx, %rbp
	addq	%r9, %rbp
	addq	%rdi, %rbp
	leaq	1024(%rbp,%r8), %rbx
	shrq	$11, %rbx
	movl	%ebx, 4(%r13)
	imulq	$-13631, %r11, %rbx     # imm = 0xFFFFFFFFFFFFCAC1
	imulq	$589, (%rsp), %rbp      # 8-byte Folded Reload
                                        # imm = 0x24D
	addq	%rbp, %rbx
	addq	%rcx, %rbx
	addq	%rsi, %rbx
	leaq	1024(%rbx,%rdi), %rdi
	shrq	$11, %rdi
	movl	%edi, 12(%r13)
	imulq	$-9222, %r14, %rdi      # imm = 0xFFFFFFFFFFFFDBFA
	addq	%r15, %rdi
	addq	%rax, %rdi
	addq	%rsi, %rdi
	leaq	1024(%rdi,%r9), %rsi
	shrq	$11, %rsi
	movl	%esi, 20(%r13)
	imulq	$17760, %rdx, %rsi      # imm = 0x4560
	imulq	$8728, %r12, %rdi       # imm = 0x2218
	addq	%rdi, %rsi
	addq	%rax, %rsi
	addq	%rcx, %rsi
	leaq	16(%rsp), %rax
	movq	%rax, %rcx
	leaq	1024(%rsi,%r8), %rax
	shrq	$11, %rax
	movl	%eax, 28(%r13)
	movl	$8, %eax
	movq	-24(%rsp), %rsi         # 8-byte Reload
	cmpl	$7, %esi
	je	.LBB15_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-108(%rsp), %eax        # 4-byte Reload
	cmpl	$15, %eax
	jne	.LBB15_6
# BB#3:                                 # %for.body.preheader
	leaq	240(%rsp), %rax
	movl	$8, %ecx
	movq	-128(%rsp), %rdi        # 8-byte Reload
	.align	16, 0x90
.LBB15_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -8(%rsp)          # 4-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdi, -128(%rsp)        # 8-byte Spill
	movl	(%rax), %eax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	(%rdi), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	32(%rdi), %esi
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %eax
	movslq	%eax, %rdx
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	-32(%rax), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %eax
	movslq	%eax, %rsi
	movl	64(%rdi), %r9d
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	-64(%rax), %r10d
	movl	192(%rdi), %ecx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	-224(%rax), %ebp
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	-192(%rax), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %eax
	movslq	%eax, %rcx
	movl	224(%rdi), %ebx
	leal	(%rbp,%rbx), %eax
	cltq
	leaq	(%rax,%rdx), %r12
	subq	%rax, %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rsi), %r8
	subq	%rcx, %rsi
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	leal	(%r10,%r9), %ecx
	movq	%r10, %rbp
	movslq	%ecx, %rax
	movl	160(%rdi), %ecx
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	-160(%rsi), %r15d
	leal	(%r15,%rcx), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rax), %rdx
	subq	%rsi, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movl	96(%rdi), %r14d
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	-96(%rsi), %r10d
	leal	(%r10,%r14), %esi
	movslq	%esi, %rsi
	movl	128(%rdi), %r11d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	-128(%rdi), %r13d
	leal	(%r13,%r11), %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%rsi), %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	subq	%rdi, %rsi
	movq	-32(%rsp), %rax         # 8-byte Reload
	movq	(%rsp), %rdi            # 8-byte Reload
	subl	%eax, %edi
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	-48(%rsp), %rax         # 8-byte Reload
	movq	-40(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %eax
	subl	%ebp, %r9d
	subl	%r10d, %r14d
	subl	%r13d, %r11d
	subl	%r15d, %ecx
	movq	-72(%rsp), %r13         # 8-byte Reload
	movq	-64(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %r13d
	movq	-80(%rsp), %rdi         # 8-byte Reload
	subl	%edi, %ebx
	movq	-88(%rsp), %r10         # 8-byte Reload
	leaq	(%r10,%rdx), %rdi
	addq	%r8, %rdi
	leaq	8(%rdi,%r12), %rdi
	shrq	$4, %rdi
	movq	-128(%rsp), %rbp        # 8-byte Reload
	movl	%edi, (%rbp)
	subq	%r10, %r12
	movq	(%rsp), %rdi            # 8-byte Reload
	movslq	%edi, %r10
	movslq	%eax, %r15
	movslq	%r9d, %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movslq	%r14d, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	%r11d, %r11
	movq	%r11, -40(%rsp)         # 8-byte Spill
	movslq	%ecx, %r14
	movslq	%r13d, %r9
	movslq	%ebx, %r13
	imulq	$10703, %r12, %rbp      # imm = 0x29CF
	subq	%rdx, %r8
	imulq	$4433, %r8, %rax        # imm = 0x1151
	leaq	65536(%rax,%rbp), %rax
	shrq	$17, %rax
	movq	-128(%rsp), %rdi        # 8-byte Reload
	movl	%eax, 128(%rdi)
	imulq	$-8697, %rsi, %rax      # imm = 0xFFFFFFFFFFFFDE07
	movq	-24(%rsp), %rdi         # 8-byte Reload
	subq	%rdi, %rsi
	imulq	$2260, %rsi, %rsi       # imm = 0x8D4
	movq	-16(%rsp), %rdx         # 8-byte Reload
	imulq	$-1730, %rdx, %rbp      # imm = 0xFFFFFFFFFFFFF93E
	movq	-56(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rdx
	imulq	$11363, %rdx, %rdx      # imm = 0x2C63
	addq	%rsi, %rdx
	imulq	$11893, %rdi, %rsi      # imm = 0x2E75
	imulq	$17799, %rcx, %rcx      # imm = 0x4587
	addq	%rsi, %rcx
	leaq	65536(%rcx,%rdx), %rcx
	shrq	$17, %rcx
	movq	-128(%rsp), %rsi        # 8-byte Reload
	movl	%ecx, 64(%rsi)
	addq	%rbp, %rax
	leaq	65536(%rax,%rdx), %rax
	shrq	$17, %rax
	movq	-128(%rsp), %rcx        # 8-byte Reload
	movl	%eax, 192(%rcx)
	movq	%r15, %rsi
	leaq	(%rsi,%r10), %rax
	imulq	$11086, %rax, %rax      # imm = 0x2B4E
	movq	%r9, %r12
	movq	%r12, %rdx
	movq	%r11, %rdi
	leaq	(%r12,%rdi), %r11
	movq	%r12, %rcx
	subq	%r13, %rcx
	imulq	$3363, %rcx, %rbx       # imm = 0xD23
	addq	%rax, %rbx
	movq	-32(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%r10), %rax
	imulq	$10217, %rax, %rax      # imm = 0x27E9
	leaq	(%r13,%r14), %rcx
	imulq	$5461, %rcx, %rcx       # imm = 0x1555
	addq	%rax, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	leaq	(%r8,%r10), %rax
	imulq	$8956, %rax, %r9        # imm = 0x22FC
	subq	%r14, %rdx
	imulq	$10055, %r14, %rax      # imm = 0x2747
	movq	%rax, -16(%rsp)         # 8-byte Spill
	subq	%rdi, %r14
	movq	%rdi, %rax
	subq	%r13, %rax
	imulq	$7350, %rax, %r15       # imm = 0x1CB6
	addq	%r9, %r15
	movq	%rbp, %rax
	leaq	(%rax,%rsi), %rbp
	imulq	$1136, %rbp, %rbp       # imm = 0x470
	imulq	$11529, %rdx, %rdi      # imm = 0x2D09
	addq	%rbp, %rdi
	leaq	(%r8,%rsi), %rdx
	movq	%r8, %r9
	movq	%rsi, %r8
	imulq	$-5461, %rdx, %rbp      # imm = 0xFFFFFFFFFFFFEAAB
	imulq	$-10217, %r11, %rdx     # imm = 0xFFFFFFFFFFFFD817
	addq	%rbp, %rdx
	leaq	(%r9,%rax), %rsi
	movq	%rax, %r11
	imulq	$-11086, %rsi, %rbp     # imm = 0xFFFFFFFFFFFFD4B2
	imulq	$3363, %r14, %rsi       # imm = 0xD23
	addq	%rbp, %rsi
	imulq	$-18730, %r10, %r10     # imm = 0xFFFFFFFFFFFFB6D6
	imulq	$6387, %r13, %rbp       # imm = 0x18F3
	addq	%r10, %rbp
	addq	%rcx, %rbp
	addq	%rbx, %rbp
	leaq	65536(%rbp,%r15), %rbp
	shrq	$17, %rbp
	movq	-128(%rsp), %rax        # 8-byte Reload
	movl	%ebp, 32(%rax)
	imulq	$-13631, %r12, %rbp     # imm = 0xFFFFFFFFFFFFCAC1
	imulq	$589, %r8, %rax         # imm = 0x24D
	addq	%rax, %rbp
	addq	%rdx, %rbp
	addq	%rdi, %rbp
	leaq	65536(%rbp,%rbx), %rax
	shrq	$17, %rax
	movq	-128(%rsp), %rbp        # 8-byte Reload
	movl	%eax, 96(%rbp)
	imulq	$-9222, %r11, %rax      # imm = 0xFFFFFFFFFFFFDBFA
	addq	-16(%rsp), %rax         # 8-byte Folded Reload
	addq	%rsi, %rax
	addq	%rdi, %rax
	movq	-128(%rsp), %rdi        # 8-byte Reload
	leaq	65536(%rax,%rcx), %rax
	shrq	$17, %rax
	movl	%eax, 160(%rdi)
	imulq	$17760, -40(%rsp), %rax # 8-byte Folded Reload
                                        # imm = 0x4560
	imulq	$8728, %r9, %rcx        # imm = 0x2218
	addq	%rcx, %rax
	movl	-8(%rsp), %ecx          # 4-byte Reload
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	65536(%rax,%r15), %rax
	shrq	$17, %rax
	movl	%eax, 224(%rdi)
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$4, %rax
	addq	$4, %rdi
	decl	%ecx
	jg	.LBB15_4
# BB#5:                                 # %for.end.396
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	jpeg_fdct_16x16, .Lfunc_end15-jpeg_fdct_16x16
	.cfi_endproc

	.globl	jpeg_fdct_16x8
	.align	16, 0x90
	.type	jpeg_fdct_16x8,@function
jpeg_fdct_16x8:                         # @jpeg_fdct_16x8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
.Ltmp180:
	.cfi_offset %rbx, -56
.Ltmp181:
	.cfi_offset %r12, -48
.Ltmp182:
	.cfi_offset %r13, -40
.Ltmp183:
	.cfi_offset %r14, -32
.Ltmp184:
	.cfi_offset %r15, -24
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsi, -120(%rsp)        # 8-byte Spill
	movq	%rdi, %r13
	movl	%edx, %eax
	movq	%rax, -128(%rsp)        # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB16_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	-120(%rsp), %rax        # 8-byte Reload
	movq	(%rax,%rcx), %rax
	movq	-128(%rsp), %rsi        # 8-byte Reload
	movzbl	(%rax,%rsi), %ecx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movzbl	15(%rax,%rsi), %edx
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rcx), %rdi
	movzbl	1(%rax,%rsi), %ecx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	movzbl	14(%rax,%rsi), %edx
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rcx), %r8
	movzbl	2(%rax,%rsi), %ecx
	movzbl	6(%rax,%rsi), %edx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movzbl	9(%rax,%rsi), %ebp
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	leaq	(%rbp,%rdx), %r11
	movzbl	7(%rax,%rsi), %edx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	movzbl	8(%rax,%rsi), %ebp
	movq	%rbp, -88(%rsp)         # 8-byte Spill
	leaq	(%rbp,%rdx), %rbx
	leaq	(%rbx,%rdi), %r9
	subq	%rbx, %rdi
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	leaq	(%r11,%r8), %r10
	subq	%r11, %r8
	movq	%r8, -64(%rsp)          # 8-byte Spill
	movzbl	13(%rax,%rsi), %r11d
	leaq	(%r11,%rcx), %r12
	movzbl	5(%rax,%rsi), %ebx
	movzbl	10(%rax,%rsi), %edi
	leaq	(%rdi,%rbx), %r15
	leaq	(%r15,%r12), %rdx
	movq	%rdx, -104(%rsp)        # 8-byte Spill
	subq	%r15, %r12
	movzbl	3(%rax,%rsi), %r14d
	movzbl	12(%rax,%rsi), %edx
	movzbl	4(%rax,%rsi), %r8d
	movzbl	11(%rax,%rsi), %eax
	leaq	(%rdx,%r14), %r15
	movq	%r14, %rsi
	leaq	(%rax,%r8), %r14
	leaq	(%r14,%r15), %rbp
	movq	%rbp, -112(%rsp)        # 8-byte Spill
	subq	%r14, %r15
	movq	-32(%rsp), %rbp         # 8-byte Reload
	subq	-40(%rsp), %rbp         # 8-byte Folded Reload
	movq	%rbp, -32(%rsp)         # 8-byte Spill
	movq	-48(%rsp), %r14         # 8-byte Reload
	subq	%r14, -16(%rsp)         # 8-byte Folded Spill
	subq	%r11, %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	subq	%rdx, %rsi
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	subq	%rax, %r8
	movq	%r8, -40(%rsp)          # 8-byte Spill
	subq	%rdi, %rbx
	movq	-80(%rsp), %rax         # 8-byte Reload
	subq	%rax, -24(%rsp)         # 8-byte Folded Spill
	movq	-96(%rsp), %r11         # 8-byte Reload
	subq	-88(%rsp), %r11         # 8-byte Folded Reload
	movq	-104(%rsp), %rdx        # 8-byte Reload
	movq	-112(%rsp), %rsi        # 8-byte Reload
	leal	(%rdx,%rsi), %eax
	movl	%r10d, %ecx
	addl	%eax, %ecx
	movl	%r9d, %eax
	addl	%ecx, %eax
	leal	-8192(,%rax,4), %eax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%r13,%rcx,4)
	subq	%rsi, %r9
	imulq	$10703, %r9, %rax       # imm = 0x29CF
	subq	%rdx, %r10
	imulq	$4433, %r10, %rcx       # imm = 0x1151
	leaq	1024(%rcx,%rax), %rax
	shrq	$11, %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 16(%r13,%rcx,4)
	imulq	$-8697, %r15, %rax      # imm = 0xFFFFFFFFFFFFDE07
	movq	-64(%rsp), %rdi         # 8-byte Reload
	subq	%rdi, %r15
	imulq	$2260, %r15, %rcx       # imm = 0x8D4
	movq	-72(%rsp), %rdx         # 8-byte Reload
	imulq	$-1730, %rdx, %rsi      # imm = 0xFFFFFFFFFFFFF93E
	subq	%r12, %rdx
	imulq	$11363, %rdx, %rdx      # imm = 0x2C63
	addq	%rcx, %rdx
	imulq	$11893, %rdi, %rcx      # imm = 0x2E75
	imulq	$17799, %r12, %rbp      # imm = 0x4587
	addq	%rcx, %rbp
	leaq	1024(%rbp,%rdx), %rcx
	shrq	$11, %rcx
	movq	-8(%rsp), %rbp          # 8-byte Reload
	movl	%ecx, 8(%r13,%rbp,4)
	addq	%rsi, %rax
	leaq	1024(%rax,%rdx), %rax
	shrq	$11, %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 24(%r13,%rcx,4)
	movq	-32(%rsp), %r8          # 8-byte Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rax
	imulq	$11086, %rax, %rax      # imm = 0x2B4E
	movq	-24(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	movq	-40(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdx,%rdi), %r15
	subq	%r11, %rdx
	imulq	$3363, %rdx, %rsi       # imm = 0xD23
	addq	%rax, %rsi
	movq	-56(%rsp), %r10         # 8-byte Reload
	leaq	(%r10,%r8), %rax
	imulq	$10217, %rax, %rax      # imm = 0x27E9
	leaq	(%r11,%rbx), %rdx
	movq	%r11, %r9
	imulq	$5461, %rdx, %r14       # imm = 0x1555
	addq	%rax, %r14
	movq	-48(%rsp), %r12         # 8-byte Reload
	leaq	(%r12,%r8), %rax
	imulq	$8956, %rax, %rbp       # imm = 0x22FC
	subq	%rbx, %rcx
	imulq	$10055, %rbx, %rax      # imm = 0x2747
	movq	%rax, -64(%rsp)         # 8-byte Spill
	subq	%rdi, %rbx
	subq	%r9, %rdi
	imulq	$7350, %rdi, %r11       # imm = 0x1CB6
	addq	%rbp, %r11
	movq	-16(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax), %rbp
	imulq	$1136, %rbp, %rbp       # imm = 0x470
	imulq	$11529, %rcx, %rcx      # imm = 0x2D09
	addq	%rbp, %rcx
	leaq	(%r12,%rax), %rbp
	movq	%rax, %rdi
	imulq	$-5461, %rbp, %rax      # imm = 0xFFFFFFFFFFFFEAAB
	imulq	$-10217, %r15, %rbp     # imm = 0xFFFFFFFFFFFFD817
	addq	%rax, %rbp
	leaq	(%r12,%r10), %rax
	imulq	$-11086, %rax, %rax     # imm = 0xFFFFFFFFFFFFD4B2
	imulq	$3363, %rbx, %rbx       # imm = 0xD23
	addq	%rax, %rbx
	imulq	$-18730, %r8, %r8       # imm = 0xFFFFFFFFFFFFB6D6
	imulq	$6387, %r9, %rax        # imm = 0x18F3
	addq	%r8, %rax
	addq	%r14, %rax
	addq	%rsi, %rax
	leaq	1024(%rax,%r11), %rax
	shrq	$11, %rax
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 4(%r13,%rdx,4)
	imulq	$-13631, -24(%rsp), %rax # 8-byte Folded Reload
                                        # imm = 0xFFFFFFFFFFFFCAC1
	imulq	$589, %rdi, %rdx        # imm = 0x24D
	addq	%rdx, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	leaq	1024(%rax,%rsi), %rax
	shrq	$11, %rax
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%eax, 12(%r13,%rdx,4)
	imulq	$-9222, %r10, %rax      # imm = 0xFFFFFFFFFFFFDBFA
	addq	-64(%rsp), %rax         # 8-byte Folded Reload
	addq	%rbx, %rax
	addq	%rcx, %rax
	leaq	1024(%rax,%r14), %rax
	shrq	$11, %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 20(%r13,%rcx,4)
	imulq	$17760, -40(%rsp), %rax # 8-byte Folded Reload
                                        # imm = 0x4560
	imulq	$8728, %r12, %rcx       # imm = 0x2218
	addq	%rcx, %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	addq	%rbx, %rax
	addq	%rbp, %rax
	leaq	1024(%rax,%r11), %rax
	shrq	$11, %rax
	movl	%eax, 28(%r13,%rcx,4)
	addq	$8, %rcx
	cmpq	$64, %rcx
	jne	.LBB16_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB16_3:                               # %for.body.210
                                        # =>This Inner Loop Header: Depth=1
	movl	224(%r13), %r9d
	movl	(%r13), %esi
	movl	32(%r13), %eax
	leal	(%r9,%rsi), %ecx
	movslq	%ecx, %r12
	movl	192(%r13), %r10d
	leal	(%r10,%rax), %ecx
	movslq	%ecx, %r14
	movl	64(%r13), %ebp
	movl	160(%r13), %r11d
	leal	(%r11,%rbp), %ebx
	movslq	%ebx, %rbx
	movl	96(%r13), %ecx
	movl	128(%r13), %r15d
	leal	(%r15,%rcx), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r12), %rdi
	subq	%rdx, %r12
	leaq	(%rbx,%r14), %rdx
	subq	%rbx, %r14
	subl	%r9d, %esi
	movslq	%esi, %rsi
	subl	%r10d, %eax
	movslq	%eax, %r9
	subl	%r11d, %ebp
	movslq	%ebp, %rbx
	subl	%r15d, %ecx
	movslq	%ecx, %rax
	leaq	4(%rdx,%rdi), %rcx
	shrq	$3, %rcx
	movl	%ecx, (%r13)
	movl	$4, %ecx
	subq	%rdx, %rcx
	addq	%rdi, %rcx
	shrq	$3, %rcx
	movl	%ecx, 128(%r13)
	leaq	(%r12,%r14), %rcx
	imulq	$4433, %rcx, %rcx       # imm = 0x1151
	imulq	$6270, %r12, %rdx       # imm = 0x187E
	leaq	32768(%rdx,%rcx), %rdx
	shrq	$16, %rdx
	movl	%edx, 64(%r13)
	imulq	$-15137, %r14, %rdx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	32768(%rdx,%rcx), %rcx
	shrq	$16, %rcx
	movl	%ecx, 192(%r13)
	leaq	(%rbx,%rsi), %rcx
	leaq	(%rax,%r9), %rdx
	leaq	(%rdx,%rcx), %rbp
	imulq	$9633, %rbp, %rbp       # imm = 0x25A1
	imulq	$-3196, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rdx, %rdx     # imm = 0xFFFFFFFFFFFFC13B
	leaq	(%rcx,%rbp), %rcx
	leaq	(%rdx,%rbp), %r10
	leaq	(%rax,%rsi), %rbp
	imulq	$-7373, %rbp, %r11      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %rsi, %rsi      # imm = 0x300B
	imulq	$2446, %rax, %rax       # imm = 0x98E
	leaq	(%rbx,%r9), %rdx
	imulq	$-20995, %rdx, %rdx     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %r9, %rbp       # imm = 0x6254
	imulq	$16819, %rbx, %rbx      # imm = 0x41B3
	addq	%r11, %rsi
	leaq	32768(%rsi,%rcx), %rsi
	shrq	$16, %rsi
	movl	%esi, 32(%r13)
	addq	%rdx, %rbp
	leaq	32768(%rbp,%r10), %rsi
	shrq	$16, %rsi
	movl	%esi, 96(%r13)
	addq	%rdx, %rbx
	leaq	32768(%rbx,%rcx), %rcx
	shrq	$16, %rcx
	movl	%ecx, 160(%r13)
	addq	%r11, %rax
	leaq	32768(%rax,%r10), %rax
	shrq	$16, %rax
	movl	%eax, 224(%r13)
	addq	$4, %r13
	decl	%r8d
	jg	.LBB16_3
# BB#4:                                 # %for.end.312
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	jpeg_fdct_16x8, .Lfunc_end16-jpeg_fdct_16x8
	.cfi_endproc

	.globl	jpeg_fdct_14x7
	.align	16, 0x90
	.type	jpeg_fdct_14x7,@function
jpeg_fdct_14x7:                         # @jpeg_fdct_14x7
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp187:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp188:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp189:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp190:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp191:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp192:
	.cfi_def_cfa_offset 144
.Ltmp193:
	.cfi_offset %rbx, -56
.Ltmp194:
	.cfi_offset %r12, -48
.Ltmp195:
	.cfi_offset %r13, -40
.Ltmp196:
	.cfi_offset %r14, -32
.Ltmp197:
	.cfi_offset %r15, -24
.Ltmp198:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	leaq	224(%r13), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	movl	%r15d, %r11d
	.align	16, 0x90
.LBB17_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%rbp), %rdx
	movzbl	(%rdx,%r11), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movzbl	13(%rdx,%r11), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rax), %r9
	movzbl	1(%rdx,%r11), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movzbl	12(%rdx,%r11), %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rax), %r8
	movzbl	2(%rdx,%r11), %r10d
	movzbl	5(%rdx,%r11), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movzbl	8(%rdx,%r11), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rax), %rsi
	movzbl	6(%rdx,%r11), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movzbl	7(%rdx,%r11), %edi
	leaq	(%rdi,%rax), %rax
	leaq	(%rax,%r9), %r14
	subq	%rax, %r9
	movq	%r9, 56(%rsp)           # 8-byte Spill
	leaq	(%rsi,%r8), %rax
	subq	%rsi, %r8
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movzbl	11(%rdx,%r11), %r9d
	leaq	(%r9,%r10), %rsi
	movzbl	4(%rdx,%r11), %ebx
	movzbl	9(%rdx,%r11), %r15d
	leaq	(%r15,%rbx), %r12
	leaq	(%r12,%rsi), %r8
	subq	%r12, %rsi
	movq	72(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, 80(%rsp)          # 8-byte Folded Spill
	movq	40(%rsp), %r12          # 8-byte Reload
	subq	48(%rsp), %r12          # 8-byte Folded Reload
	subq	%r9, %r10
	movq	%r10, 72(%rsp)          # 8-byte Spill
	movzbl	3(%rdx,%r11), %r9d
	movzbl	10(%rdx,%r11), %edx
	leaq	(%rdx,%r9), %rcx
	subq	%rdx, %r9
	subq	%r15, %rbx
	movq	24(%rsp), %r15          # 8-byte Reload
	subq	32(%rsp), %r15          # 8-byte Folded Reload
	movq	16(%rsp), %r10          # 8-byte Reload
	subq	%rdi, %r10
	leal	(%rcx,%r8), %edx
	movl	%eax, %edi
	addl	%edx, %edi
	movl	%r14d, %edx
	addl	%edi, %edx
	leal	-7168(,%rdx,4), %edx
	movl	%edx, (%r13,%rbp,4)
	addq	%rcx, %rcx
	subq	%rcx, %r14
	subq	%rcx, %rax
	subq	%rcx, %r8
	imulq	$2578, %rax, %rax       # imm = 0xA12
	imulq	$-7223, %r8, %rcx       # imm = 0xFFFFFFFFFFFFE3C9
	addq	%rax, %rcx
	imulq	$10438, %r14, %rax      # imm = 0x28C6
	leaq	1024(%rax,%rcx), %rax
	shrq	$11, %rax
	movl	%eax, 16(%r13,%rbp,4)
	movq	56(%rsp), %rdi          # 8-byte Reload
	imulq	$2237, %rdi, %rax       # imm = 0x8BD
	imulq	$5027, %rsi, %rcx       # imm = 0x13A3
	addq	%rax, %rcx
	movq	64(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdi,%rdx), %rax
	imulq	$9058, %rax, %rax       # imm = 0x2362
	leaq	1024(%rax,%rcx), %rcx
	shrq	$11, %rcx
	movl	%ecx, 8(%r13,%rbp,4)
	imulq	$-14084, %rdx, %rcx     # imm = 0xFFFFFFFFFFFFC8FC
	imulq	$-11295, %rsi, %rdx     # imm = 0xFFFFFFFFFFFFD3E1
	addq	%rcx, %rdx
	leaq	1024(%rax,%rdx), %rax
	shrq	$11, %rax
	movl	%eax, 24(%r13,%rbp,4)
	movq	%r12, %r14
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r14), %r8
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	%esi, %ecx
	subl	%r8d, %ecx
	movl	%r9d, %edx
	addl	%ecx, %edx
	movq	%r15, %rcx
	subq	%rbx, %rcx
	subl	%ecx, %edx
	movq	%r10, %rdi
	subl	%edi, %edx
	shll	$2, %edx
	movl	%edx, 28(%r13,%rbp,4)
	leaq	(%rax,%rsi), %rdx
	movq	%rax, %r12
	movq	%rsi, %r10
	shlq	$13, %r9
	imulq	$-1297, %r8, %rax       # imm = 0xFFFFFFFFFFFFFAEF
	imulq	$11512, %rcx, %rcx      # imm = 0x2CF8
	subq	%r9, %rcx
	addq	%rax, %rcx
	imulq	$9810, %rdx, %rdx       # imm = 0x2652
	leaq	(%rdi,%rbx), %rax
	movq	%rdi, %r8
	imulq	$6164, %rax, %rax       # imm = 0x1814
	addq	%rdx, %rax
	imulq	$-19447, %r12, %rdx     # imm = 0xFFFFFFFFFFFFB409
	imulq	$9175, %rbx, %rsi       # imm = 0x23D7
	addq	%rdx, %rsi
	leaq	(%r14,%r10), %rdx
	addq	%rcx, %rsi
	leaq	1024(%rsi,%rax), %rsi
	shrq	$11, %rsi
	movl	%esi, 20(%r13,%rbp,4)
	imulq	$10935, %rdx, %rdx      # imm = 0x2AB7
	movq	%r15, %rdi
	imulq	$-25148, %rdi, %rsi     # imm = 0xFFFFFFFFFFFF9DC4
	subq	%r8, %rdi
	imulq	$3826, %rdi, %rdi       # imm = 0xEF2
	addq	%rdx, %rdi
	imulq	$-3474, %r14, %rdx      # imm = 0xFFFFFFFFFFFFF26E
	addq	%rsi, %rdx
	addq	%rcx, %rdx
	leaq	1024(%rdx,%rdi), %rcx
	shrq	$11, %rcx
	movl	%ecx, 12(%r13,%rbp,4)
	leaq	(%r10,%r8), %rcx
	leaq	1024(%r9,%r8), %rdx
	imulq	$-9232, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFDBF0
	addq	%rcx, %rdx
	addq	%rdi, %rdx
	addq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, 4(%r13,%rbp,4)
	addq	$8, %rbp
	cmpq	$56, %rbp
	jne	.LBB17_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB17_3:                               # %for.body.180
                                        # =>This Inner Loop Header: Depth=1
	movl	192(%r13), %r9d
	movl	(%r13), %edx
	movl	32(%r13), %esi
	leal	(%r9,%rdx), %edi
	movslq	%edi, %r14
	movl	160(%r13), %r10d
	leal	(%r10,%rsi), %ebp
	movslq	%ebp, %r15
	movl	64(%r13), %ecx
	movl	128(%r13), %eax
	leal	(%rax,%rcx), %ebx
	movslq	%ebx, %r11
	movslq	96(%r13), %rbx
	subl	%r9d, %edx
	movslq	%edx, %rdx
	subl	%r10d, %esi
	movslq	%esi, %r9
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	leaq	(%r11,%r14), %rax
	leaq	(%rbx,%r15), %rcx
	addq	%rax, %rcx
	imulq	$10700, %rcx, %rcx      # imm = 0x29CC
	addq	$32768, %rcx            # imm = 0x8000
	shrq	$16, %rcx
	movl	%ecx, (%r13)
	leaq	(%rbx,%rbx), %rcx
	leaq	(,%rbx,4), %rbx
	subq	%rbx, %rax
	imulq	$3783, %rax, %rax       # imm = 0xEC7
	movq	%r14, %rdi
	subq	%r11, %rdi
	imulq	$9850, %rdi, %rdi       # imm = 0x267A
	movq	%r15, %rbp
	subq	%r11, %rbp
	imulq	$3367, %rbp, %rbp       # imm = 0xD27
	leaq	(%rdi,%rbp), %rbx
	leaq	32768(%rax,%rbx), %rbx
	shrq	$16, %rbx
	movl	%ebx, 64(%r13)
	subq	%r15, %r14
	imulq	$9434, %r14, %rbx       # imm = 0x24DA
	subq	%rcx, %r15
	imulq	$-7566, %r15, %rcx      # imm = 0xFFFFFFFFFFFFE272
	leaq	32768(%rbx,%rbp), %rbp
	addq	$32768, %rbx            # imm = 0x8000
	addq	%rcx, %rbp
	shrq	$16, %rbp
	movl	%ebp, 128(%r13)
	subq	%rdi, %rbx
	addq	%rax, %rbx
	shrq	$16, %rbx
	movl	%ebx, 192(%r13)
	leaq	(%r9,%rdx), %rax
	imulq	$10009, %rax, %rax      # imm = 0x2719
	leaq	(%rsi,%rdx), %rcx
	subq	%r9, %rdx
	imulq	$1822, %rdx, %rdx       # imm = 0x71E
	leaq	(%r9,%rsi), %rdi
	imulq	$-14752, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFC660
	imulq	$6565, %rcx, %rcx       # imm = 0x19A5
	imulq	$20017, %rsi, %rsi      # imm = 0x4E31
	movl	$32768, %ebp            # imm = 0x8000
	subq	%rdx, %rbp
	addq	%rax, %rbp
	addq	%rcx, %rbp
	shrq	$16, %rbp
	movl	%ebp, 32(%r13)
	addq	%rax, %rdx
	leaq	32768(%rdi,%rdx), %rax
	shrq	$16, %rax
	movl	%eax, 96(%r13)
	addq	%rcx, %rsi
	leaq	32768(%rdi,%rsi), %rax
	shrq	$16, %rax
	movl	%eax, 160(%r13)
	addq	$4, %r13
	decl	%r8d
	jg	.LBB17_3
# BB#4:                                 # %for.end.273
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	jpeg_fdct_14x7, .Lfunc_end17-jpeg_fdct_14x7
	.cfi_endproc

	.globl	jpeg_fdct_12x6
	.align	16, 0x90
	.type	jpeg_fdct_12x6,@function
jpeg_fdct_12x6:                         # @jpeg_fdct_12x6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp200:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp202:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp203:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp205:
	.cfi_def_cfa_offset 112
.Ltmp206:
	.cfi_offset %rbx, -56
.Ltmp207:
	.cfi_offset %r12, -48
.Ltmp208:
	.cfi_offset %r13, -40
.Ltmp209:
	.cfi_offset %r14, -32
.Ltmp210:
	.cfi_offset %r15, -24
.Ltmp211:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	leaq	192(%r13), %rdi
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	%ebp, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB18_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%r15), %r11
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%r11,%rcx), %edx
	movzbl	11(%r11,%rcx), %eax
	leaq	(%rax,%rdx), %r9
	movzbl	1(%r11,%rcx), %r12d
	movzbl	2(%r11,%rcx), %esi
	movzbl	9(%r11,%rcx), %edi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rsi), %r8
	movq	%rsi, %r10
	movzbl	3(%r11,%rcx), %esi
	movzbl	8(%r11,%rcx), %edi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rsi), %rbx
	movzbl	5(%r11,%rcx), %edi
	movzbl	6(%r11,%rcx), %ebp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	(%rbp,%rdi), %r14
	leaq	(%r14,%r9), %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	subq	%r14, %r9
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	%r8, %r14
	subq	%rbx, %r14
	addq	%r8, %rbx
	movq	%rbx, %r9
	movzbl	10(%r11,%rcx), %r8d
	subq	%rax, %rdx
	leaq	(%r8,%r12), %rax
	leaq	1024(%r8,%r12), %rbp
	subq	%r8, %r12
	subq	48(%rsp), %r10          # 8-byte Folded Reload
	movq	%r10, 48(%rsp)          # 8-byte Spill
	movzbl	4(%r11,%rcx), %ebx
	movzbl	7(%r11,%rcx), %r8d
	subq	40(%rsp), %rsi          # 8-byte Folded Reload
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leaq	(%r8,%rbx), %rcx
	subq	%r8, %rbx
	subq	16(%rsp), %rdi          # 8-byte Folded Reload
	leal	(%r9,%rax), %r8d
	movq	%r9, %r11
	addl	%ecx, %r8d
	movq	24(%rsp), %r10          # 8-byte Reload
	movl	%r10d, %r9d
	addl	%r8d, %r9d
	subl	%ecx, %eax
	leal	-6144(,%r9,4), %esi
	movl	%esi, (%r13,%r15,4)
	movl	%r14d, %esi
	addl	%eax, %esi
	leaq	(%r14,%rcx), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, %r14
	subl	%esi, %ecx
	shll	$2, %ecx
	movl	%ecx, 24(%r13,%r15,4)
	subq	%r11, %r10
	imulq	$10033, %r10, %rcx      # imm = 0x2731
	addq	$1024, %rcx             # imm = 0x400
	shrq	$11, %rcx
	movl	%ecx, 16(%r13,%r15,4)
	imulq	$11190, %r14, %rcx      # imm = 0x2BB6
	subq	%rax, %rbp
	addq	%rcx, %rbp
	shrq	$11, %rbp
	movl	%ebp, 8(%r13,%r15,4)
	leaq	(%rbx,%r12), %rax
	imulq	$4433, %rax, %rcx       # imm = 0x1151
	imulq	$6270, %r12, %rax       # imm = 0x187E
	imulq	$-15137, %rbx, %rsi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	(%rax,%rcx), %r8
	leaq	(%rsi,%rcx), %r9
	movq	48(%rsp), %rbp          # 8-byte Reload
	leaq	(%rbp,%rdx), %rcx
	imulq	$9191, %rcx, %r10       # imm = 0x23E7
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx), %rcx
	imulq	$7053, %rcx, %rcx       # imm = 0x1B8D
	imulq	$-4758, %rdx, %rbx      # imm = 0xFFFFFFFFFFFFED6A
	imulq	$1512, %rdi, %rax       # imm = 0x5E8
	addq	%r10, %rbx
	addq	%rcx, %rbx
	addq	%r8, %rbx
	leaq	1024(%rax,%rbx), %rax
	imulq	$7053, %rdi, %rbx       # imm = 0x1B8D
	shrq	$11, %rax
	movl	%eax, 4(%r13,%r15,4)
	imulq	$-9191, %rdi, %rax      # imm = 0xFFFFFFFFFFFFDC19
	subq	%rsi, %rdx
	imulq	$10703, %rdx, %rdx      # imm = 0x29CF
	addq	%rbp, %rdi
	imulq	$-4433, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFEEAF
	addq	%r9, %rdx
	leaq	1024(%rdi,%rdx), %rdx
	shrq	$11, %rdx
	movl	%edx, 12(%r13,%r15,4)
	imulq	$-19165, %rbp, %rdx     # imm = 0xFFFFFFFFFFFFB523
	addq	%r10, %rdx
	leaq	(%rsi,%rbp), %rdi
	imulq	$-1512, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFFA18
	leaq	1024(%rdi,%rdx), %rdx
	subq	%r9, %rdx
	addq	%rbx, %rdx
	shrq	$11, %rdx
	movl	%edx, 20(%r13,%r15,4)
	imulq	$5946, %rsi, %rdx       # imm = 0x173A
	addq	%rdi, %rdx
	leaq	1024(%rcx,%rdx), %rcx
	subq	%r8, %rcx
	addq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, 28(%r13,%r15,4)
	addq	$8, %r15
	cmpq	$48, %r15
	jne	.LBB18_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB18_3:                               # %for.body.155
                                        # =>This Inner Loop Header: Depth=1
	movl	160(%r13), %r9d
	movl	(%r13), %edx
	movl	32(%r13), %ebx
	leal	(%r9,%rdx), %esi
	movslq	%esi, %rbp
	movl	128(%r13), %r10d
	leal	(%r10,%rbx), %esi
	movslq	%esi, %rdi
	movl	64(%r13), %ecx
	movl	96(%r13), %r11d
	leal	(%r11,%rcx), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rbp), %rax
	subq	%rsi, %rbp
	subl	%r9d, %edx
	movslq	%edx, %rsi
	subl	%r10d, %ebx
	movslq	%ebx, %rbx
	subl	%r11d, %ecx
	movslq	%ecx, %rdx
	leaq	(%rax,%rdi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$32768, %rcx            # imm = 0x8000
	shrq	$16, %rcx
	movl	%ecx, (%r13)
	imulq	$17837, %rbp, %rcx      # imm = 0x45AD
	addq	$32768, %rcx            # imm = 0x8000
	shrq	$16, %rcx
	movl	%ecx, 64(%r13)
	addq	%rdi, %rdi
	subq	%rdi, %rax
	imulq	$10298, %rax, %rax      # imm = 0x283A
	addq	$32768, %rax            # imm = 0x8000
	shrq	$16, %rax
	movl	%eax, 128(%r13)
	leaq	(%rdx,%rsi), %rax
	imulq	$5331, %rax, %rax       # imm = 0x14D3
	leaq	(%rbx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	leaq	32768(%rcx,%rax), %rcx
	shrq	$16, %rcx
	movl	%ecx, 32(%r13)
	subq	%rbx, %rsi
	subq	%rdx, %rsi
	imulq	$14564, %rsi, %rcx      # imm = 0x38E4
	addq	$32768, %rcx            # imm = 0x8000
	shrq	$16, %rcx
	movl	%ecx, 96(%r13)
	subq	%rbx, %rdx
	imulq	$14564, %rdx, %rcx      # imm = 0x38E4
	leaq	32768(%rcx,%rax), %rax
	shrq	$16, %rax
	movl	%eax, 160(%r13)
	addq	$4, %r13
	decl	%r8d
	jg	.LBB18_3
# BB#4:                                 # %for.end.224
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	jpeg_fdct_12x6, .Lfunc_end18-jpeg_fdct_12x6
	.cfi_endproc

	.globl	jpeg_fdct_10x5
	.align	16, 0x90
	.type	jpeg_fdct_10x5,@function
jpeg_fdct_10x5:                         # @jpeg_fdct_10x5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp215:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp216:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp218:
	.cfi_def_cfa_offset 96
.Ltmp219:
	.cfi_offset %rbx, -56
.Ltmp220:
	.cfi_offset %r12, -48
.Ltmp221:
	.cfi_offset %r13, -40
.Ltmp222:
	.cfi_offset %r14, -32
.Ltmp223:
	.cfi_offset %r15, -24
.Ltmp224:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	leaq	160(%rbx), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset
	movl	%r15d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB19_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp), %rax
	movq	8(%rsp), %rdi           # 8-byte Reload
	movzbl	(%rax,%rdi), %esi
	movzbl	9(%rax,%rdi), %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rsi), %r10
	movzbl	1(%rax,%rdi), %edx
	movzbl	8(%rax,%rdi), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %r12
	movq	%rdx, %rcx
	movzbl	3(%rax,%rdi), %r15d
	movzbl	6(%rax,%rdi), %r14d
	leaq	(%r14,%r15), %r9
	movzbl	4(%rax,%rdi), %r11d
	movzbl	5(%rax,%rdi), %r8d
	leaq	(%r8,%r11), %rdx
	leaq	(%rdx,%r10), %r13
	subq	%rdx, %r10
	leaq	(%r9,%r12), %rdx
	subq	%r9, %r12
	subq	32(%rsp), %rsi          # 8-byte Folded Reload
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movzbl	2(%rax,%rdi), %r9d
	movzbl	7(%rax,%rdi), %eax
	subq	24(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(%rax,%r9), %rsi
	subq	%rax, %r9
	subq	%r14, %r15
	subq	%r8, %r11
	leal	(%rsi,%rdx), %eax
	movl	%r13d, %edi
	addl	%eax, %edi
	leal	-5120(,%rdi,4), %eax
	movl	%eax, (%rbx,%rbp,4)
	addq	%rsi, %rsi
	subq	%rsi, %r13
	subq	%rsi, %rdx
	imulq	$9373, %r13, %rax       # imm = 0x249D
	imulq	$-3580, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFF204
	leaq	1024(%rdx,%rax), %rax
	shrq	$11, %rax
	movl	%eax, 16(%rbx,%rbp,4)
	leaq	(%r10,%r12), %rax
	imulq	$6810, %rax, %rax       # imm = 0x1A9A
	imulq	$4209, %r10, %rcx       # imm = 0x1071
	leaq	1024(%rcx,%rax), %rcx
	shrq	$11, %rcx
	movl	%ecx, 8(%rbx,%rbp,4)
	imulq	$-17828, %r12, %rcx     # imm = 0xFFFFFFFFFFFFBA5C
	leaq	1024(%rcx,%rax), %rax
	shrq	$11, %rax
	movl	%eax, 24(%rbx,%rbp,4)
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%r11,%rdx), %rcx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rdi, %rax
	subq	%r15, %rax
	leal	(%r9,%rax), %r8d
	movl	%ecx, %esi
	subl	%r8d, %esi
	shll	$2, %esi
	movl	%esi, 20(%rbx,%rbp,4)
	shlq	$13, %r9
	imulq	$11443, %rdx, %r8       # imm = 0x2CB3
	movq	%rdx, %r10
	imulq	$10323, %rdi, %rsi      # imm = 0x2853
	addq	%r8, %rsi
	imulq	$5260, %r15, %rdx       # imm = 0x148C
	addq	%r9, %rsi
	addq	%rdx, %rsi
	imulq	$1812, %r11, %rdx       # imm = 0x714
	leaq	1024(%rdx,%rsi), %rdx
	shrq	$11, %rdx
	movl	%edx, 4(%rbx,%rbp,4)
	subq	%r11, %r10
	addq	%rdi, %r15
	addq	%rax, %rcx
	shlq	$12, %rax
	subq	%r9, %rax
	imulq	$2531, %rcx, %rcx       # imm = 0x9E3
	addq	%rcx, %rax
	imulq	$7791, %r10, %rcx       # imm = 0x1E6F
	imulq	$-4815, %r15, %rdx      # imm = 0xFFFFFFFFFFFFED31
	leaq	1024(%rcx,%rdx), %rcx
	leaq	(%rcx,%rax), %rdx
	shrq	$11, %rdx
	movl	%edx, 12(%rbx,%rbp,4)
	subq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, 28(%rbx,%rbp,4)
	addq	$8, %rbp
	cmpq	$40, %rbp
	jne	.LBB19_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB19_3:                               # %for.body.134
                                        # =>This Inner Loop Header: Depth=1
	movl	128(%rbx), %r9d
	movl	(%rbx), %edx
	movl	32(%rbx), %esi
	leal	(%r9,%rdx), %edi
	movslq	%edi, %rdi
	movl	96(%rbx), %r10d
	leal	(%r10,%rsi), %eax
	cltq
	movslq	64(%rbx), %rcx
	leaq	(%rax,%rdi), %rbp
	subq	%rax, %rdi
	subl	%r9d, %edx
	movslq	%edx, %rdx
	subl	%r10d, %esi
	movslq	%esi, %rax
	leaq	(%rbp,%rcx), %rsi
	imulq	$10486, %rsi, %rsi      # imm = 0x28F6
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%rbx)
	imulq	$8290, %rdi, %rsi       # imm = 0x2062
	shlq	$2, %rcx
	subq	%rcx, %rbp
	imulq	$3707, %rbp, %rcx       # imm = 0xE7B
	leaq	16384(%rsi,%rcx), %rdi
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rdi
	movl	%edi, 64(%rbx)
	subq	%rcx, %rsi
	shrq	$15, %rsi
	movl	%esi, 128(%rbx)
	leaq	(%rax,%rdx), %rcx
	imulq	$8716, %rcx, %rcx       # imm = 0x220C
	imulq	$5387, %rdx, %rdx       # imm = 0x150B
	leaq	16384(%rdx,%rcx), %rdx
	shrq	$15, %rdx
	movl	%edx, 32(%rbx)
	imulq	$-22820, %rax, %rax     # imm = 0xFFFFFFFFFFFFA6DC
	leaq	16384(%rax,%rcx), %rax
	shrq	$15, %rax
	movl	%eax, 96(%rbx)
	addq	$4, %rbx
	decl	%r8d
	jg	.LBB19_3
# BB#4:                                 # %for.end.190
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	jpeg_fdct_10x5, .Lfunc_end19-jpeg_fdct_10x5
	.cfi_endproc

	.globl	jpeg_fdct_8x4
	.align	16, 0x90
	.type	jpeg_fdct_8x4,@function
jpeg_fdct_8x4:                          # @jpeg_fdct_8x4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp228:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp229:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp231:
	.cfi_def_cfa_offset 80
.Ltmp232:
	.cfi_offset %rbx, -56
.Ltmp233:
	.cfi_offset %r12, -48
.Ltmp234:
	.cfi_offset %r13, -40
.Ltmp235:
	.cfi_offset %r14, -32
.Ltmp236:
	.cfi_offset %r15, -24
.Ltmp237:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	subq	$-128, %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movl	%r15d, %r10d
	.align	16, 0x90
.LBB20_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%rbp), %rdx
	movzbl	(%rdx,%r10), %esi
	movzbl	7(%rdx,%r10), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	(%rax,%rsi), %rcx
	movzbl	1(%rdx,%r10), %r9d
	movzbl	6(%rdx,%r10), %r15d
	leaq	(%r15,%r9), %rax
	movzbl	2(%rdx,%r10), %r11d
	movzbl	5(%rdx,%r10), %r12d
	leaq	(%r12,%r11), %r13
	movzbl	3(%rdx,%r10), %edi
	movzbl	4(%rdx,%r10), %edx
	leaq	(%rdx,%rdi), %r14
	leal	(%r14,%rcx), %r8d
	subq	%r14, %rcx
	leal	(%r13,%rax), %r14d
	subq	%r13, %rax
	subq	16(%rsp), %rsi          # 8-byte Folded Reload
	subq	%r15, %r9
	subq	%r12, %r11
	subq	%rdx, %rdi
	leal	(%r8,%r14), %edx
	leal	-8192(,%rdx,8), %edx
	movl	%edx, (%rbx,%rbp,4)
	subl	%r14d, %r8d
	shll	$3, %r8d
	movl	%r8d, 16(%rbx,%rbp,4)
	leaq	(%rcx,%rax), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	512(%rdx,%rcx), %rcx
	shrq	$10, %rcx
	movl	%ecx, 8(%rbx,%rbp,4)
	imulq	$-15137, %rax, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	512(%rdx,%rax), %rax
	shrq	$10, %rax
	movl	%eax, 24(%rbx,%rbp,4)
	leaq	(%r11,%rsi), %rax
	leaq	(%rdi,%r9), %rcx
	leaq	(%rcx,%rax), %rdx
	imulq	$9633, %rdx, %rdx       # imm = 0x25A1
	imulq	$-3196, %rax, %rax      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rcx, %rcx     # imm = 0xFFFFFFFFFFFFC13B
	leaq	512(%rdx,%rax), %r8
	leaq	512(%rdx,%rcx), %rcx
	leaq	(%rdi,%rsi), %rax
	imulq	$-7373, %rax, %rdx      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %rsi, %rsi      # imm = 0x300B
	imulq	$2446, %rdi, %rax       # imm = 0x98E
	leaq	(%rsi,%rdx), %rsi
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	(%r11,%r9), %rdx
	imulq	$-20995, %rdx, %rdx     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %r9, %rdi       # imm = 0x6254
	leaq	(%rdi,%rdx), %rdi
	addq	%rcx, %rdi
	imulq	$16819, %r11, %rcx      # imm = 0x41B3
	addq	%rdx, %rcx
	addq	%r8, %rsi
	addq	%r8, %rcx
	shrq	$10, %rsi
	movl	%esi, 4(%rbx,%rbp,4)
	shrq	$10, %rdi
	movl	%edi, 12(%rbx,%rbp,4)
	shrq	$10, %rcx
	movl	%ecx, 20(%rbx,%rbp,4)
	shrq	$10, %rax
	movl	%eax, 28(%rbx,%rbp,4)
	addq	$8, %rbp
	cmpq	$32, %rbp
	jne	.LBB20_1
# BB#2:
	movl	$8, %r8d
	.align	16, 0x90
.LBB20_3:                               # %for.body.111
                                        # =>This Inner Loop Header: Depth=1
	movl	96(%rbx), %ecx
	movl	(%rbx), %edx
	movl	32(%rbx), %esi
	leal	(%rcx,%rdx), %edi
	movslq	%edi, %rdi
	movl	64(%rbx), %ebp
	leal	(%rbp,%rsi), %eax
	cltq
	subl	%ecx, %edx
	movslq	%edx, %rcx
	subl	%ebp, %esi
	movslq	%esi, %rdx
	leaq	2(%rax,%rdi), %rsi
	addq	$2, %rdi
	shrq	$2, %rsi
	movl	%esi, (%rbx)
	subq	%rax, %rdi
	shrq	$2, %rdi
	movl	%edi, 64(%rbx)
	leaq	(%rdx,%rcx), %rax
	imulq	$4433, %rax, %rax       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	16384(%rax,%rcx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 32(%rbx)
	imulq	$-15137, %rdx, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rax,%rcx), %rax
	shrq	$15, %rax
	movl	%eax, 96(%rbx)
	addq	$4, %rbx
	decl	%r8d
	jg	.LBB20_3
# BB#4:                                 # %for.end.151
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	jpeg_fdct_8x4, .Lfunc_end20-jpeg_fdct_8x4
	.cfi_endproc

	.globl	jpeg_fdct_6x3
	.align	16, 0x90
	.type	jpeg_fdct_6x3,@function
jpeg_fdct_6x3:                          # @jpeg_fdct_6x3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp240:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp241:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp242:
	.cfi_def_cfa_offset 48
.Ltmp243:
	.cfi_offset %rbx, -48
.Ltmp244:
	.cfi_offset %r12, -40
.Ltmp245:
	.cfi_offset %r14, -32
.Ltmp246:
	.cfi_offset %r15, -24
.Ltmp247:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r8d
	.align	16, 0x90
.LBB21_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp), %rbx
	movzbl	(%rbx,%r8), %ecx
	movzbl	5(%rbx,%r8), %r9d
	leaq	(%r9,%rcx), %rax
	movzbl	1(%rbx,%r8), %r10d
	movzbl	4(%rbx,%r8), %r11d
	leaq	(%r11,%r10), %rdi
	movzbl	2(%rbx,%r8), %esi
	movzbl	3(%rbx,%r8), %r15d
	leaq	(%r15,%rsi), %rdx
	leaq	(%rdx,%rax), %rbx
	subq	%rdx, %rax
	subq	%r9, %rcx
	subl	%r11d, %r10d
	subq	%r15, %rsi
	leal	(%rdi,%rbx), %edx
	leal	-6144(,%rdx,8), %edx
	movl	%edx, (%r12,%rbp,4)
	imulq	$10033, %rax, %rax      # imm = 0x2731
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rax
	movl	%eax, 8(%r12,%rbp,4)
	addq	%rdi, %rdi
	subq	%rdi, %rbx
	imulq	$5793, %rbx, %rax       # imm = 0x16A1
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rax
	movl	%eax, 16(%r12,%rbp,4)
	movq	%rsi, %rax
	addq	%rcx, %rax
	imulq	$2998, %rax, %rax       # imm = 0xBB6
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rax
	leal	(%r10,%rcx), %edx
	leal	(%rax,%rdx,8), %edx
	movl	%edx, 4(%r12,%rbp,4)
	subl	%r10d, %ecx
	subl	%esi, %ecx
	shll	$3, %ecx
	movl	%ecx, 12(%r12,%rbp,4)
	subl	%r10d, %esi
	leal	(%rax,%rsi,8), %eax
	movl	%eax, 20(%r12,%rbp,4)
	addq	$8, %rbp
	cmpq	$24, %rbp
	jne	.LBB21_1
# BB#2:                                 # %for.cond.70.preheader
	movl	(%r12), %eax
	movl	64(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	32(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, (%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 64(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 32(%r12)
	movl	4(%r12), %eax
	movl	68(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	36(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 4(%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 68(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 36(%r12)
	movl	8(%r12), %eax
	movl	72(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	40(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 8(%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 72(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 40(%r12)
	movl	12(%r12), %eax
	movl	76(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	44(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 12(%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 76(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 44(%r12)
	movl	16(%r12), %eax
	movl	80(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	48(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 16(%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 80(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 48(%r12)
	movl	20(%r12), %eax
	movl	84(%r12), %ecx
	leal	(%rcx,%rax), %edx
	movslq	%edx, %rdx
	movslq	52(%r12), %rsi
	subl	%ecx, %eax
	cltq
	leaq	(%rdx,%rsi), %rcx
	imulq	$14564, %rcx, %rcx      # imm = 0x38E4
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 20(%r12)
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	imulq	$10298, %rdx, %rcx      # imm = 0x283A
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 84(%r12)
	imulq	$17837, %rax, %rax      # imm = 0x45AD
	addq	$16384, %rax            # imm = 0x4000
	shrq	$15, %rax
	movl	%eax, 52(%r12)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	jpeg_fdct_6x3, .Lfunc_end21-jpeg_fdct_6x3
	.cfi_endproc

	.globl	jpeg_fdct_4x2
	.align	16, 0x90
	.type	jpeg_fdct_4x2,@function
jpeg_fdct_4x2:                          # @jpeg_fdct_4x2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp249:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp250:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp252:
	.cfi_def_cfa_offset 48
.Ltmp253:
	.cfi_offset %rbx, -40
.Ltmp254:
	.cfi_offset %r14, -32
.Ltmp255:
	.cfi_offset %r15, -24
.Ltmp256:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %ebp
	movq	(%r14), %rdx
	movzbl	(%rdx,%rbp), %ecx
	movzbl	3(%rdx,%rbp), %esi
	movl	%esi, %r8d
	addl	%ecx, %r8d
	movzbl	1(%rdx,%rbp), %eax
	movzbl	2(%rdx,%rbp), %edi
	movl	%edi, %edx
	addl	%eax, %edx
	subq	%rsi, %rcx
	subq	%rdi, %rax
	leal	(%rdx,%r8), %edi
	shll	$5, %edi
	addl	$-16384, %edi           # imm = 0xFFFFFFFFFFFFC000
	movl	%edi, (%r15)
	subl	%edx, %r8d
	shll	$5, %r8d
	movl	%r8d, 8(%r15)
	leaq	(%rax,%rcx), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	128(%rdx,%rcx), %r10
	shrq	$8, %r10
	movl	%r10d, 4(%r15)
	imulq	$-15137, %rax, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	128(%rdx,%rax), %r9
	shrq	$8, %r9
	movl	%r9d, 12(%r15)
	movq	8(%r14), %rax
	movzbl	(%rax,%rbp), %ecx
	movzbl	3(%rax,%rbp), %esi
	movl	%esi, %edx
	addl	%ecx, %edx
	movzbl	1(%rax,%rbp), %ebx
	movzbl	2(%rax,%rbp), %ebp
	movl	%ebp, %eax
	addl	%ebx, %eax
	subq	%rsi, %rcx
	subq	%rbp, %rbx
	leal	(%rax,%rdx), %esi
	shll	$5, %esi
	addl	$-16384, %esi           # imm = 0xFFFFFFFFFFFFC000
	subl	%eax, %edx
	shll	$5, %edx
	leaq	(%rbx,%rcx), %rax
	imulq	$4433, %rax, %rax       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	128(%rax,%rcx), %rcx
	shrq	$8, %rcx
	imulq	$-15137, %rbx, %rbp     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	128(%rax,%rbp), %rbp
	shrq	$8, %rbp
	movslq	%edi, %rax
	movslq	%esi, %rsi
	leaq	2(%rax,%rsi), %rdi
	orq	$2, %rax
	shrq	$2, %rdi
	movl	%edi, (%r15)
	subq	%rsi, %rax
	shrq	$2, %rax
	movl	%eax, 32(%r15)
	movslq	%r10d, %rax
	movslq	%ecx, %rcx
	leaq	2(%rax,%rcx), %rsi
	addq	$2, %rax
	shrq	$2, %rsi
	movl	%esi, 4(%r15)
	subq	%rcx, %rax
	shrq	$2, %rax
	movl	%eax, 36(%r15)
	movslq	%r8d, %rax
	movslq	%edx, %rcx
	leaq	2(%rax,%rcx), %rdx
	orq	$2, %rax
	shrq	$2, %rdx
	movl	%edx, 8(%r15)
	subq	%rcx, %rax
	shrq	$2, %rax
	movl	%eax, 40(%r15)
	movslq	%r9d, %rax
	movslq	%ebp, %rcx
	leaq	2(%rax,%rcx), %rdx
	addq	$2, %rax
	shrq	$2, %rdx
	movl	%edx, 12(%r15)
	subq	%rcx, %rax
	shrq	$2, %rax
	movl	%eax, 44(%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	jpeg_fdct_4x2, .Lfunc_end22-jpeg_fdct_4x2
	.cfi_endproc

	.globl	jpeg_fdct_2x1
	.align	16, 0x90
	.type	jpeg_fdct_2x1,@function
jpeg_fdct_2x1:                          # @jpeg_fdct_2x1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 32
.Ltmp260:
	.cfi_offset %rbx, -32
.Ltmp261:
	.cfi_offset %r14, -24
.Ltmp262:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movq	(%rbx), %rax
	movl	%r14d, %ecx
	movzbl	(%rax,%rcx), %edx
	movzbl	1(%rax,%rcx), %eax
	leal	(%rax,%rdx), %ecx
	shll	$5, %ecx
	addl	$-8192, %ecx            # imm = 0xFFFFFFFFFFFFE000
	movl	%ecx, (%rbp)
	subl	%eax, %edx
	shll	$5, %edx
	movl	%edx, 4(%rbp)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	jpeg_fdct_2x1, .Lfunc_end23-jpeg_fdct_2x1
	.cfi_endproc

	.globl	jpeg_fdct_8x16
	.align	16, 0x90
	.type	jpeg_fdct_8x16,@function
jpeg_fdct_8x16:                         # @jpeg_fdct_8x16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp267:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp268:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp269:
	.cfi_def_cfa_offset 320
.Ltmp270:
	.cfi_offset %rbx, -56
.Ltmp271:
	.cfi_offset %r12, -48
.Ltmp272:
	.cfi_offset %r13, -40
.Ltmp273:
	.cfi_offset %r14, -32
.Ltmp274:
	.cfi_offset %r15, -24
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%rdi, %r10
	movq	%r10, -32(%rsp)         # 8-byte Spill
	movl	%edx, %r11d
	xorl	%eax, %eax
	jmp	.LBB24_1
.LBB24_6:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	incl	%eax
	addq	$32, %rdx
	movq	%rdx, %r10
	.align	16, 0x90
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -16(%rsp)         # 4-byte Spill
	cltq
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	(%rsi,%rax,8), %rdx
	movzbl	(%rdx,%r11), %ebx
	movzbl	7(%rdx,%r11), %r13d
	leaq	(%r13,%rbx), %rcx
	movzbl	1(%rdx,%r11), %eax
	movzbl	6(%rdx,%r11), %r8d
	leaq	(%r8,%rax), %rbp
	movzbl	2(%rdx,%r11), %r12d
	movzbl	5(%rdx,%r11), %edi
	movzbl	3(%rdx,%r11), %r14d
	movzbl	4(%rdx,%r11), %r9d
	leaq	(%r9,%r14), %rdx
	leal	(%rdx,%rcx), %esi
	subq	%rdx, %rcx
	leaq	(%rdi,%r12), %rdx
	leal	(%rdx,%rbp), %r15d
	subq	%rdx, %rbp
	subq	%r13, %rbx
	subq	%r8, %rax
	subq	%rdi, %r12
	movq	%r10, %rdx
	subq	%r9, %r14
	leal	(%rsi,%r15), %edi
	leal	-4096(,%rdi,4), %edi
	movl	%edi, (%rdx)
	subl	%r15d, %esi
	shll	$2, %esi
	movl	%esi, 16(%rdx)
	leaq	(%rcx,%rbp), %rsi
	imulq	$4433, %rsi, %rsi       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	leaq	1024(%rcx,%rsi), %rcx
	shrq	$11, %rcx
	movl	%ecx, 8(%rdx)
	imulq	$-15137, %rbp, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	1024(%rcx,%rsi), %rcx
	shrq	$11, %rcx
	movl	%ecx, 24(%rdx)
	leaq	(%r12,%rbx), %rcx
	leaq	(%r14,%rax), %rsi
	leaq	(%rsi,%rcx), %rdi
	imulq	$9633, %rdi, %rdi       # imm = 0x25A1
	imulq	$-3196, %rcx, %rcx      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFC13B
	leaq	(%rcx,%rdi), %rbp
	leaq	(%rsi,%rdi), %rcx
	leaq	(%r14,%rbx), %rsi
	imulq	$-7373, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %rbx, %rdi      # imm = 0x300B
	addq	%rsi, %rdi
	leaq	1024(%rdi,%rbp), %rdi
	shrq	$11, %rdi
	movl	%edi, 4(%rdx)
	leaq	(%r12,%rax), %rdi
	imulq	$-20995, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %rax, %rax      # imm = 0x6254
	addq	%rdi, %rax
	leaq	1024(%rax,%rcx), %rax
	shrq	$11, %rax
	movl	%eax, 12(%rdx)
	imulq	$16819, %r12, %rax      # imm = 0x41B3
	addq	%rdi, %rax
	leaq	1024(%rax,%rbp), %rax
	shrq	$11, %rax
	movl	%eax, 20(%rdx)
	imulq	$2446, %r14, %rax       # imm = 0x98E
	addq	%rsi, %rax
	movq	-24(%rsp), %rsi         # 8-byte Reload
	leaq	1024(%rax,%rcx), %rax
	leaq	(%rsp), %r10
	shrq	$11, %rax
	movl	%eax, 28(%rdx)
	movl	$8, %eax
	movq	-8(%rsp), %rdi          # 8-byte Reload
	cmpl	$7, %edi
	je	.LBB24_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-16(%rsp), %eax         # 4-byte Reload
	cmpl	$15, %eax
	jne	.LBB24_6
# BB#3:                                 # %for.body.preheader
	leaq	224(%rsp), %rax
	movl	$8, %ecx
	movq	-32(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB24_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movl	%ecx, -24(%rsp)         # 4-byte Spill
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	(%rax), %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movl	(%rdi), %ecx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movl	32(%rdi), %esi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %eax
	movslq	%eax, %r9
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	-32(%rax), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %eax
	movslq	%eax, %rbp
	movl	64(%rdi), %r13d
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	-64(%rax), %ebx
	movq	%rbx, -112(%rsp)        # 8-byte Spill
	movl	192(%rdi), %ecx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	-224(%rax), %edx
	movq	%rdx, -104(%rsp)        # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	-192(%rax), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leal	(%rax,%rcx), %eax
	movslq	%eax, %rcx
	movl	224(%rdi), %r8d
	leal	(%rdx,%r8), %eax
	movslq	%eax, %rdi
	movq	%r9, %rax
	leaq	(%rdi,%rax), %rsi
	subq	%rdi, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rbp), %r11
	subq	%rcx, %rbp
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	leal	(%rbx,%r13), %ecx
	movslq	%ecx, %rcx
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	160(%rax), %r14d
	movq	-8(%rsp), %rdi          # 8-byte Reload
	movl	-160(%rdi), %edi
	leal	(%rdi,%r14), %ebp
	movslq	%ebp, %rbp
	leaq	(%rbp,%rcx), %rdx
	subq	%rbp, %rcx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	96(%rax), %r10d
	movq	-8(%rsp), %rbp          # 8-byte Reload
	movl	-96(%rbp), %r15d
	leal	(%r15,%r10), %ebp
	movslq	%ebp, %rbp
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	128(%rax), %r12d
	movq	-8(%rsp), %rbx          # 8-byte Reload
	movl	-128(%rbx), %r9d
	leal	(%r9,%r12), %ebx
	movslq	%ebx, %rbx
	leaq	(%rbx,%rbp), %rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	subq	%rbx, %rbp
	movq	-56(%rsp), %rbx         # 8-byte Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ebx
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	-64(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movq	-112(%rsp), %rcx        # 8-byte Reload
	subl	%ecx, %r13d
	subl	%r15d, %r10d
	subl	%r9d, %r12d
	subl	%edi, %r14d
	movq	-96(%rsp), %r9          # 8-byte Reload
	movq	-88(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %r9d
	movq	-104(%rsp), %rcx        # 8-byte Reload
	subl	%ecx, %r8d
	movq	-120(%rsp), %r15        # 8-byte Reload
	leaq	(%r15,%rdx), %rdi
	addq	%r11, %rdi
	leaq	4(%rdi,%rsi), %rdi
	shrq	$3, %rdi
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx)
	subq	%r15, %rsi
	movslq	%ebx, %r15
	movslq	%eax, %rdi
	movslq	%r13d, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movslq	%r10d, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movslq	%r12d, %r12
	movslq	%r14d, %r14
	movslq	%r9d, %rbx
	movq	%rbx, -64(%rsp)         # 8-byte Spill
	movslq	%r8d, %r9
	imulq	$10703, %rsi, %rax      # imm = 0x29CF
	subq	%rdx, %r11
	imulq	$4433, %r11, %rsi       # imm = 0x1151
	leaq	32768(%rsi,%rax), %rax
	shrq	$16, %rax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 128(%rcx)
	imulq	$-8697, %rbp, %rax      # imm = 0xFFFFFFFFFFFFDE07
	movq	-48(%rsp), %rsi         # 8-byte Reload
	subq	%rsi, %rbp
	imulq	$2260, %rbp, %rbp       # imm = 0x8D4
	movq	-40(%rsp), %rdx         # 8-byte Reload
	imulq	$-1730, %rdx, %r8       # imm = 0xFFFFFFFFFFFFF93E
	movq	-80(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rdx
	imulq	$11363, %rdx, %rdx      # imm = 0x2C63
	addq	%rbp, %rdx
	imulq	$11893, %rsi, %rsi      # imm = 0x2E75
	imulq	$17799, %rcx, %rcx      # imm = 0x4587
	addq	%rsi, %rcx
	leaq	32768(%rcx,%rdx), %rcx
	shrq	$16, %rcx
	movq	-32(%rsp), %rsi         # 8-byte Reload
	movl	%ecx, 64(%rsi)
	addq	%r8, %rax
	leaq	32768(%rax,%rdx), %rax
	shrq	$16, %rax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 192(%rcx)
	movq	%rdi, %r10
	leaq	(%r10,%r15), %rax
	imulq	$11086, %rax, %rax      # imm = 0x2B4E
	movq	%rbx, %rdx
	movq	%r12, %rdi
	leaq	(%rbx,%rdi), %r11
	subq	%r9, %rbx
	imulq	$3363, %rbx, %rsi       # imm = 0xD23
	addq	%rax, %rsi
	movq	-16(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%r15), %rax
	imulq	$10217, %rax, %rax      # imm = 0x27E9
	leaq	(%r9,%r14), %rcx
	imulq	$5461, %rcx, %r8        # imm = 0x1555
	addq	%rax, %r8
	movq	-56(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rax
	imulq	$8956, %rax, %rbx       # imm = 0x22FC
	subq	%r14, %rdx
	imulq	$10055, %r14, %rax      # imm = 0x2747
	movq	%rax, -40(%rsp)         # 8-byte Spill
	subq	%rdi, %r14
	movq	%rdi, %rax
	movq	%rdi, %r13
	subq	%r9, %rax
	imulq	$7350, %rax, %r12       # imm = 0x1CB6
	addq	%rbx, %r12
	leaq	(%rbp,%r10), %rdi
	imulq	$1136, %rdi, %rdi       # imm = 0x470
	imulq	$11529, %rdx, %rbx      # imm = 0x2D09
	addq	%rdi, %rbx
	leaq	(%rcx,%r10), %rdx
	imulq	$-5461, %rdx, %rdi      # imm = 0xFFFFFFFFFFFFEAAB
	imulq	$-10217, %r11, %rdx     # imm = 0xFFFFFFFFFFFFD817
	addq	%rdi, %rdx
	leaq	(%rcx,%rbp), %rdi
	imulq	$-11086, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFD4B2
	imulq	$3363, %r14, %rbp       # imm = 0xD23
	addq	%rdi, %rbp
	imulq	$-18730, %r15, %r11     # imm = 0xFFFFFFFFFFFFB6D6
	imulq	$6387, %r9, %rdi        # imm = 0x18F3
	addq	%r11, %rdi
	addq	%r8, %rdi
	addq	%rsi, %rdi
	leaq	32768(%rdi,%r12), %rdi
	shrq	$16, %rdi
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	%edi, 32(%rax)
	imulq	$-13631, -64(%rsp), %rdi # 8-byte Folded Reload
                                        # imm = 0xFFFFFFFFFFFFCAC1
	imulq	$589, %r10, %rax        # imm = 0x24D
	addq	%rax, %rdi
	addq	%rdx, %rdi
	addq	%rbx, %rdi
	leaq	32768(%rdi,%rsi), %rax
	movq	-32(%rsp), %rdi         # 8-byte Reload
	shrq	$16, %rax
	movl	%eax, 96(%rdi)
	imulq	$-9222, -16(%rsp), %rax # 8-byte Folded Reload
                                        # imm = 0xFFFFFFFFFFFFDBFA
	addq	-40(%rsp), %rax         # 8-byte Folded Reload
	addq	%rbp, %rax
	addq	%rbx, %rax
	leaq	32768(%rax,%r8), %rax
	shrq	$16, %rax
	movl	%eax, 160(%rdi)
	imulq	$17760, %r13, %rax      # imm = 0x4560
	imulq	$8728, %rcx, %rcx       # imm = 0x2218
	addq	%rcx, %rax
	movl	-24(%rsp), %ecx         # 4-byte Reload
	addq	%rbp, %rax
	addq	%rdx, %rax
	leaq	32768(%rax,%r12), %rax
	shrq	$16, %rax
	movl	%eax, 224(%rdi)
	movq	-8(%rsp), %rax          # 8-byte Reload
	addq	$4, %rax
	addq	$4, %rdi
	decl	%ecx
	jg	.LBB24_4
# BB#5:                                 # %for.end.300
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	jpeg_fdct_8x16, .Lfunc_end24-jpeg_fdct_8x16
	.cfi_endproc

	.globl	jpeg_fdct_7x14
	.align	16, 0x90
	.type	jpeg_fdct_7x14,@function
jpeg_fdct_7x14:                         # @jpeg_fdct_7x14
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp277:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp278:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp279:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp280:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp282:
	.cfi_def_cfa_offset 320
.Ltmp283:
	.cfi_offset %rbx, -56
.Ltmp284:
	.cfi_offset %r12, -48
.Ltmp285:
	.cfi_offset %r13, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r14d, %r11d
	movq	%rbp, %rax
	jmp	.LBB25_1
.LBB25_6:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	incl	%ecx
	addq	$32, %r14
	movq	%r14, %rax
	movl	%ecx, %ebx
	.align	16, 0x90
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	movq	%rax, %r14
	movslq	%ebx, %r10
	movq	(%r15,%r10,8), %rax
	movzbl	(%rax,%r11), %ebx
	movzbl	6(%rax,%r11), %esi
	leaq	(%rsi,%rbx), %rdx
	movzbl	1(%rax,%r11), %r13d
	movzbl	5(%rax,%r11), %ebp
	leaq	(%rbp,%r13), %rdi
	movzbl	2(%rax,%r11), %r12d
	movzbl	4(%rax,%r11), %ecx
	leaq	(%rcx,%r12), %r8
	movzbl	3(%rax,%r11), %eax
	subq	%rsi, %rbx
	subq	%rbp, %r13
	subq	%rcx, %r12
	leaq	(%r8,%rdx), %rcx
	movl	%edi, %esi
	addl	%eax, %esi
	movl	%ecx, %ebp
	addl	%esi, %ebp
	leal	-3584(,%rbp,4), %esi
	movl	%esi, (%r14)
	leaq	(,%rax,4), %rsi
	subq	%rsi, %rcx
	movq	%r15, %r9
	imulq	$2896, %rcx, %r15       # imm = 0xB50
	movq	%rdx, %rsi
	subq	%r8, %rsi
	imulq	$7542, %rsi, %rsi       # imm = 0x1D76
	movq	%rdi, %rbp
	subq	%r8, %rbp
	imulq	$2578, %rbp, %rbp       # imm = 0xA12
	leaq	(%rsi,%rbp), %rcx
	leaq	1024(%r15,%rcx), %rcx
	shrq	$11, %rcx
	movl	%ecx, 8(%r14)
	leaq	(%rax,%rax), %rax
	subq	%rdi, %rdx
	subq	%rax, %rdi
	imulq	$7223, %rdx, %rax       # imm = 0x1C37
	imulq	$-5793, %rdi, %rcx      # imm = 0xFFFFFFFFFFFFE95F
	leaq	1024(%rax,%rbp), %rdx
	addq	%rcx, %rdx
	shrq	$11, %rdx
	movl	%edx, 16(%r14)
	addq	$1024, %rax             # imm = 0x400
	subq	%rsi, %rax
	addq	%r15, %rax
	movq	%r9, %r15
	shrq	$11, %rax
	movl	%eax, 24(%r14)
	leaq	(%r13,%rbx), %rax
	imulq	$7663, %rax, %rax       # imm = 0x1DEF
	leaq	(%r12,%rbx), %rcx
	subq	%r13, %rbx
	imulq	$1395, %rbx, %rdx       # imm = 0x573
	imulq	$5027, %rcx, %rcx       # imm = 0x13A3
	movl	$1024, %esi             # imm = 0x400
	subq	%rdx, %rsi
	addq	%rax, %rsi
	addq	%rcx, %rsi
	shrq	$11, %rsi
	movl	%esi, 4(%r14)
	addq	%rax, %rdx
	leaq	(%r13,%r12), %rax
	imulq	$-11295, %rax, %rax     # imm = 0xFFFFFFFFFFFFD3E1
	leaq	1024(%rax,%rdx), %rdx
	shrq	$11, %rdx
	movl	%edx, 12(%r14)
	imulq	$15326, %r12, %rdx      # imm = 0x3BDE
	addq	%rcx, %rdx
	leaq	64(%rsp), %rcx
	leaq	1024(%rax,%rdx), %rax
	shrq	$11, %rax
	movl	%eax, 20(%r14)
	movl	$8, %ebx
	cmpl	$7, %r10d
	movq	%rcx, %rax
	je	.LBB25_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	56(%rsp), %ecx          # 4-byte Reload
	cmpl	$13, %ecx
	jne	.LBB25_6
# BB#3:                                 # %for.body.preheader
	xorl	%eax, %eax
	movq	8(%rsp), %rbp           # 8-byte Reload
	.align	16, 0x90
.LBB25_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rax,4), %edx
	movl	224(%rsp,%rax,4), %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdx), %ecx
	movq	%rdx, %rbx
	movslq	%ecx, %r12
	movl	32(%rbp,%rax,4), %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	192(%rsp,%rax,4), %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leal	(%rdx,%rcx), %ecx
	movslq	%ecx, %rsi
	movl	64(%rbp,%rax,4), %r9d
	movl	160(%rsp,%rax,4), %r10d
	movl	160(%rbp,%rax,4), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	64(%rsp,%rax,4), %r13d
	leal	(%r13,%rcx), %ecx
	movslq	%ecx, %rdx
	movl	192(%rbp,%rax,4), %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	224(%rbp,%rax,4), %r15d
	leal	(%r15,%rcx), %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%r12), %r8
	subq	%rdi, %r12
	leaq	(%rdx,%rsi), %rdi
	subq	%rdx, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leal	(%r10,%r9), %edx
	movslq	%edx, %rdx
	movl	128(%rbp,%rax,4), %r11d
	movl	96(%rsp,%rax,4), %ecx
	leal	(%rcx,%r11), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rdx), %r14
	subq	%rsi, %rdx
	movq	48(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %ebx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	subl	%r10d, %r9d
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	96(%rbp,%rax,4), %r10d
	movl	128(%rsp,%rax,4), %esi
	leal	(%rsi,%r10), %ebx
	subl	%esi, %r10d
	subl	%ecx, %r11d
	movq	24(%rsp), %r9           # 8-byte Reload
	subl	%r13d, %r9d
	movslq	%ebx, %rcx
	movq	16(%rsp), %rbx          # 8-byte Reload
	subl	%r15d, %ebx
	leaq	(%r14,%rcx), %rsi
	addq	%rdi, %rsi
	addq	%r8, %rsi
	imulq	$5350, %rsi, %rsi       # imm = 0x14E6
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%rbp,%rax,4)
	addq	%rcx, %rcx
	subq	%rcx, %r8
	subq	%rcx, %rdi
	subq	%rcx, %r14
	imulq	$1684, %rdi, %rcx       # imm = 0x694
	imulq	$-4717, %r14, %rsi      # imm = 0xFFFFFFFFFFFFED93
	addq	%rcx, %rsi
	imulq	$6817, %r8, %rcx        # imm = 0x1AA1
	leaq	16384(%rcx,%rsi), %rcx
	shrq	$15, %rcx
	movl	%ecx, 128(%rbp,%rax,4)
	imulq	$1461, %r12, %rcx       # imm = 0x5B5
	imulq	$3283, %rdx, %rsi       # imm = 0xCD3
	addq	%rcx, %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	(%r12,%rdi), %rcx
	imulq	$5915, %rcx, %rcx       # imm = 0x171B
	leaq	16384(%rcx,%rsi), %rsi
	shrq	$15, %rsi
	movl	%esi, 64(%rbp,%rax,4)
	movq	48(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %r12
	movq	56(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %r14
	movq	32(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %r13
	movslq	%r10d, %r15
	movslq	%r11d, %r10
	movslq	%r9d, %rsi
	movslq	%ebx, %r8
	imulq	$-9198, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFDC12
	imulq	$-7376, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFE330
	addq	%rdi, %rdx
	leaq	16384(%rcx,%rdx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 192(%rbp,%rax,4)
	leaq	(%r13,%r14), %rcx
	movq	%rsi, %rdx
	subq	%r10, %rdx
	movq	%r12, %rdi
	subq	%rcx, %rdi
	addq	%r15, %rdi
	subq	%rdx, %rdi
	subq	%r8, %rdi
	imulq	$5350, %rdi, %rdi       # imm = 0x14E6
	addq	$16384, %rdi            # imm = 0x4000
	shrq	$15, %rdi
	movl	%edi, 224(%rbp,%rax,4)
	leaq	(%r13,%r12), %rdi
	imulq	$5350, %r15, %r9        # imm = 0x14E6
	imulq	$-847, %rcx, %rcx       # imm = 0xFFFFFFFFFFFFFCB1
	imulq	$7518, %rdx, %rbx       # imm = 0x1D5E
	subq	%r9, %rbx
	addq	%rcx, %rbx
	imulq	$6406, %rdi, %rcx       # imm = 0x1906
	leaq	(%r8,%r10), %rdx
	imulq	$4025, %rdx, %rdx       # imm = 0xFB9
	addq	%rcx, %rdx
	imulq	$-12700, %r13, %rcx     # imm = 0xFFFFFFFFFFFFCE64
	imulq	$5992, %r10, %rdi       # imm = 0x1768
	addq	%rcx, %rdi
	leaq	(%r14,%r12), %rcx
	addq	%rbx, %rdi
	leaq	16384(%rdi,%rdx), %rdi
	shrq	$15, %rdi
	movl	%edi, 160(%rbp,%rax,4)
	imulq	$7141, %rcx, %rcx       # imm = 0x1BE5
	imulq	$-16423, %rsi, %rdi     # imm = 0xFFFFFFFFFFFFBFD9
	subq	%r8, %rsi
	imulq	$2499, %rsi, %rsi       # imm = 0x9C3
	addq	%rcx, %rsi
	imulq	$-2269, %r14, %rcx      # imm = 0xFFFFFFFFFFFFF723
	addq	%rdi, %rcx
	addq	%rbx, %rcx
	leaq	16384(%rcx,%rsi), %rcx
	shrq	$15, %rcx
	movl	%ecx, 96(%rbp,%rax,4)
	imulq	$-6029, %r12, %rcx      # imm = 0xFFFFFFFFFFFFE873
	addq	%r9, %rcx
	imulq	$-679, %r8, %rdi        # imm = 0xFFFFFFFFFFFFFD59
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	16384(%rcx,%rdx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 32(%rbp,%rax,4)
	incq	%rax
	cmpl	$7, %eax
	jne	.LBB25_4
# BB#5:                                 # %for.end.265
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	jpeg_fdct_7x14, .Lfunc_end25-jpeg_fdct_7x14
	.cfi_endproc

	.globl	jpeg_fdct_6x12
	.align	16, 0x90
	.type	jpeg_fdct_6x12,@function
jpeg_fdct_6x12:                         # @jpeg_fdct_6x12
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp292:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp293:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp295:
	.cfi_def_cfa_offset 224
.Ltmp296:
	.cfi_offset %rbx, -56
.Ltmp297:
	.cfi_offset %r12, -48
.Ltmp298:
	.cfi_offset %r13, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %r12d
	leaq	32(%rsp), %r8
	movq	%r14, %r11
	jmp	.LBB26_1
.LBB26_6:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	incl	%r9d
	addq	$32, %rbp
	movq	%rbp, %r11
	movl	%r9d, %ebx
	.align	16, 0x90
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r9d
	movslq	%r9d, %r10
	movq	(%r15,%r10,8), %rbp
	movzbl	(%rbp,%r12), %edi
	movzbl	5(%rbp,%r12), %r13d
	leaq	(%r13,%rdi), %rdx
	movzbl	2(%rbp,%r12), %ecx
	movzbl	3(%rbp,%r12), %eax
	leaq	(%rax,%rcx), %rbx
	leaq	(%rbx,%rdx), %rsi
	subq	%rbx, %rdx
	movzbl	1(%rbp,%r12), %ebx
	movzbl	4(%rbp,%r12), %ebp
	subq	%r13, %rdi
	leaq	(%rbp,%rbx), %r13
	subl	%ebp, %ebx
	movq	%r11, %rbp
	subq	%rax, %rcx
	leal	(%r13,%rsi), %eax
	leal	-3072(,%rax,4), %eax
	movl	%eax, (%rbp)
	imulq	$10033, %rdx, %rax      # imm = 0x2731
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rax
	movl	%eax, 8(%rbp)
	addq	%r13, %r13
	subq	%r13, %rsi
	imulq	$5793, %rsi, %rax       # imm = 0x16A1
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rax
	movl	%eax, 16(%rbp)
	movq	%rcx, %rax
	addq	%rdi, %rax
	imulq	$2998, %rax, %rax       # imm = 0xBB6
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rax
	leal	(%rbx,%rdi), %edx
	leal	(%rax,%rdx,4), %edx
	movl	%edx, 4(%rbp)
	subl	%ebx, %edi
	subl	%ecx, %edi
	shll	$2, %edi
	movl	%edi, 12(%rbp)
	subl	%ebx, %ecx
	leal	(%rax,%rcx,4), %eax
	movl	%eax, 20(%rbp)
	movl	$8, %ebx
	cmpl	$7, %r10d
	movq	%r8, %r11
	je	.LBB26_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$11, %r9d
	jne	.LBB26_6
# BB#3:                                 # %for.body.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB26_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %esi
	movl	128(%rsp,%rax,4), %r8d
	leal	(%r8,%rsi), %ecx
	movslq	%ecx, %r15
	movl	32(%r14,%rax,4), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	64(%r14,%rax,4), %ecx
	movl	64(%rsp,%rax,4), %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leal	(%rdx,%rcx), %edx
	movslq	%edx, %r11
	movl	96(%r14,%rax,4), %edi
	movl	32(%rsp,%rax,4), %edx
	leal	(%rdx,%rdi), %ebp
	movslq	%ebp, %rbp
	movl	160(%r14,%rax,4), %r12d
	movl	192(%r14,%rax,4), %r10d
	leal	(%r10,%r12), %ebx
	movslq	%ebx, %rbx
	leaq	(%rbx,%r15), %r13
	subq	%rbx, %r15
	leaq	(%rbp,%r11), %r9
	movq	%r9, (%rsp)             # 8-byte Spill
	subq	%rbp, %r11
	movl	96(%rsp,%rax,4), %ebx
	subl	%r8d, %esi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rsi          # 8-byte Reload
	leal	(%rbx,%rsi), %r8d
	subl	%ebx, %esi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	128(%r14,%rax,4), %ebp
	movq	8(%rsp), %rsi           # 8-byte Reload
	subl	%esi, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	224(%r14,%rax,4), %ebx
	subl	%edx, %edi
	leal	(%rbx,%rbp), %edx
	subl	%ebx, %ebp
	movslq	%r8d, %rbx
	movslq	%edx, %r8
	subl	%r10d, %r12d
	leaq	(%rbx,%r9), %rdx
	movq	%rbx, %rcx
	subq	%r8, %rcx
	addq	%r8, %rdx
	addq	%r13, %rdx
	imulq	$7282, %rdx, %rdx       # imm = 0x1C72
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdx
	movl	%edx, (%r14,%rax,4)
	leaq	(%rcx,%r11), %rdx
	subq	%r11, %rcx
	addq	%r15, %r11
	subq	%rdx, %r15
	imulq	$7282, %r15, %rdx       # imm = 0x1C72
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdx
	movl	%edx, 192(%r14,%rax,4)
	movq	16(%rsp), %rdx          # 8-byte Reload
	movslq	%edx, %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %rsi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movslq	%ebx, %r10
	movslq	%edi, %r9
	movslq	%ebp, %rbx
	movslq	%r12d, %rbp
	subq	(%rsp), %r13            # 8-byte Folded Reload
	imulq	$8918, %r13, %rdi       # imm = 0x22D6
	addq	$16384, %rdi            # imm = 0x4000
	shrq	$15, %rdi
	movl	%edi, 128(%r14,%rax,4)
	imulq	$7282, %rcx, %rcx       # imm = 0x1C72
	imulq	$9947, %r11, %rdi       # imm = 0x26DB
	leaq	16384(%rcx,%rdi), %rcx
	shrq	$15, %rcx
	movl	%ecx, 64(%r14,%rax,4)
	leaq	(%rbx,%rsi), %rcx
	imulq	$3941, %rcx, %rcx       # imm = 0xF65
	imulq	$5573, %rsi, %rsi       # imm = 0x15C5
	imulq	$-13455, %rbx, %rdi     # imm = 0xFFFFFFFFFFFFCB71
	leaq	(%rsi,%rcx), %r8
	leaq	(%rdi,%rcx), %rcx
	leaq	(%r10,%rdx), %rsi
	imulq	$8170, %rsi, %rsi       # imm = 0x1FEA
	leaq	(%r9,%rdx), %rdi
	imulq	$6269, %rdi, %r11       # imm = 0x187D
	imulq	$-4229, %rdx, %rbx      # imm = 0xFFFFFFFFFFFFEF7B
	imulq	$1344, %rbp, %rdi       # imm = 0x540
	addq	%rsi, %rbx
	addq	%r11, %rbx
	addq	%r8, %rbx
	leaq	16384(%rdi,%rbx), %rdi
	imulq	$6269, %rbp, %rbx       # imm = 0x187D
	shrq	$15, %rdi
	movl	%edi, 32(%r14,%rax,4)
	imulq	$-8170, %rbp, %rdi      # imm = 0xFFFFFFFFFFFFE016
	subq	%r9, %rdx
	imulq	$9514, %rdx, %rdx       # imm = 0x252A
	addq	%r10, %rbp
	imulq	$-3941, %rbp, %rbp      # imm = 0xFFFFFFFFFFFFF09B
	addq	%rcx, %rdx
	leaq	16384(%rbp,%rdx), %rdx
	shrq	$15, %rdx
	movl	%edx, 96(%r14,%rax,4)
	imulq	$-17036, %r10, %rdx     # imm = 0xFFFFFFFFFFFFBD74
	addq	%rsi, %rdx
	leaq	(%r9,%r10), %rsi
	imulq	$-1344, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFFAC0
	leaq	16384(%rsi,%rdx), %rdx
	subq	%rcx, %rdx
	addq	%rbx, %rdx
	shrq	$15, %rdx
	movl	%edx, 160(%r14,%rax,4)
	imulq	$5285, %r9, %rcx        # imm = 0x14A5
	addq	%rsi, %rcx
	leaq	16384(%r11,%rcx), %rcx
	subq	%r8, %rcx
	addq	%rdi, %rcx
	shrq	$15, %rcx
	movl	%ecx, 224(%r14,%rax,4)
	incq	%rax
	cmpl	$6, %eax
	jne	.LBB26_4
# BB#5:                                 # %for.end.216
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	jpeg_fdct_6x12, .Lfunc_end26-jpeg_fdct_6x12
	.cfi_endproc

	.globl	jpeg_fdct_5x10
	.align	16, 0x90
	.type	jpeg_fdct_5x10,@function
jpeg_fdct_5x10:                         # @jpeg_fdct_5x10
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp306:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp307:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp308:
	.cfi_def_cfa_offset 128
.Ltmp309:
	.cfi_offset %rbx, -56
.Ltmp310:
	.cfi_offset %r12, -48
.Ltmp311:
	.cfi_offset %r13, -40
.Ltmp312:
	.cfi_offset %r14, -32
.Ltmp313:
	.cfi_offset %r15, -24
.Ltmp314:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r11d
	leaq	(%rsp), %r8
	movq	%r14, %rcx
	jmp	.LBB27_1
.LBB27_6:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	incl	%r9d
	addq	$32, %r15
	movq	%r15, %rcx
	movl	%r9d, %ebp
	.align	16, 0x90
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %r9d
	movq	%rcx, %r15
	movslq	%r9d, %r10
	movq	(%r12,%r10,8), %rbx
	movzbl	(%rbx,%r11), %ecx
	movzbl	4(%rbx,%r11), %edx
	leaq	(%rdx,%rcx), %rdi
	movzbl	1(%rbx,%r11), %ebp
	movzbl	3(%rbx,%r11), %eax
	leaq	(%rax,%rbp), %rsi
	movzbl	2(%rbx,%r11), %r13d
	leaq	(%rsi,%rdi), %rbx
	subq	%rsi, %rdi
	subq	%rdx, %rcx
	subq	%rax, %rbp
	leal	(%r13,%rbx), %eax
	leal	-2560(,%rax,4), %eax
	movl	%eax, (%r15)
	imulq	$6476, %rdi, %rax       # imm = 0x194C
	leaq	(,%r13,4), %rdx
	subq	%rdx, %rbx
	imulq	$2896, %rbx, %rdx       # imm = 0xB50
	leaq	1024(%rax,%rdx), %rsi
	addq	$1024, %rax             # imm = 0x400
	shrq	$11, %rsi
	movl	%esi, 8(%r15)
	subq	%rdx, %rax
	shrq	$11, %rax
	movl	%eax, 16(%r15)
	leaq	(%rbp,%rcx), %rax
	imulq	$6810, %rax, %rax       # imm = 0x1A9A
	imulq	$4209, %rcx, %rcx       # imm = 0x1071
	leaq	1024(%rcx,%rax), %rcx
	shrq	$11, %rcx
	movl	%ecx, 4(%r15)
	imulq	$-17828, %rbp, %rcx     # imm = 0xFFFFFFFFFFFFBA5C
	leaq	1024(%rcx,%rax), %rax
	shrq	$11, %rax
	movl	%eax, 12(%r15)
	movl	$8, %ebp
	cmpl	$7, %r10d
	movq	%r8, %rcx
	je	.LBB27_1
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$9, %r9d
	jne	.LBB27_6
# BB#3:                                 # %for.body.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB27_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rax,4), %r12d
	movl	32(%rsp,%rax,4), %r8d
	leal	(%r8,%r12), %ecx
	movslq	%ecx, %r9
	movl	32(%r14,%rax,4), %r15d
	movl	(%rsp,%rax,4), %r11d
	leal	(%r11,%r15), %ecx
	movslq	%ecx, %r10
	movl	96(%r14,%rax,4), %ebx
	movl	192(%r14,%rax,4), %r13d
	leal	(%r13,%rbx), %ecx
	movslq	%ecx, %rdi
	movl	128(%r14,%rax,4), %ebp
	movl	160(%r14,%rax,4), %esi
	leal	(%rsi,%rbp), %ecx
	movslq	%ecx, %rdx
	leaq	(%rdx,%r9), %rcx
	subq	%rdx, %r9
	leaq	(%rdi,%r10), %rdx
	subq	%rdi, %r10
	movl	64(%r14,%rax,4), %edi
	subl	%r8d, %r12d
	movl	224(%r14,%rax,4), %r8d
	subl	%r11d, %r15d
	leal	(%r8,%rdi), %r11d
	subl	%r8d, %edi
	subl	%r13d, %ebx
	movslq	%r11d, %r8
	subl	%esi, %ebp
	leaq	(%rdx,%r8), %rsi
	addq	%rcx, %rsi
	imulq	$10486, %rsi, %rsi      # imm = 0x28F6
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%r14,%rax,4)
	addq	%r8, %r8
	subq	%r8, %rcx
	subq	%r8, %rdx
	movslq	%r12d, %rsi
	movslq	%r15d, %r8
	movslq	%edi, %r11
	movslq	%ebx, %rdi
	movslq	%ebp, %r15
	imulq	$11997, %rcx, %rcx      # imm = 0x2EDD
	imulq	$-4582, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFEE1A
	leaq	16384(%rdx,%rcx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 128(%r14,%rax,4)
	leaq	(%r9,%r10), %rcx
	imulq	$8716, %rcx, %rcx       # imm = 0x220C
	imulq	$5387, %r9, %rdx        # imm = 0x150B
	leaq	16384(%rdx,%rcx), %rdx
	shrq	$15, %rdx
	movl	%edx, 64(%r14,%rax,4)
	imulq	$-22820, %r10, %rdx     # imm = 0xFFFFFFFFFFFFA6DC
	leaq	16384(%rdx,%rcx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 192(%r14,%rax,4)
	leaq	(%r15,%rsi), %rbx
	movq	%r8, %rdx
	subq	%rdi, %rdx
	leaq	(%rdx,%r11), %rbp
	movq	%rbx, %rcx
	subq	%rbp, %rcx
	imulq	$10486, %rcx, %rcx      # imm = 0x28F6
	addq	$16384, %rcx            # imm = 0x4000
	shrq	$15, %rcx
	movl	%ecx, 160(%r14,%rax,4)
	imulq	$10486, %r11, %r9       # imm = 0x28F6
	imulq	$14647, %rsi, %rbp      # imm = 0x3937
	imulq	$13213, %r8, %rcx       # imm = 0x339D
	addq	%rbp, %rcx
	imulq	$6732, %rdi, %rbp       # imm = 0x1A4C
	addq	%r9, %rcx
	addq	%rbp, %rcx
	imulq	$2320, %r15, %rbp       # imm = 0x910
	leaq	16384(%rbp,%rcx), %rcx
	shrq	$15, %rcx
	movl	%ecx, 32(%r14,%rax,4)
	subq	%r15, %rsi
	addq	%r8, %rdi
	addq	%rdx, %rbx
	imulq	$5243, %rdx, %rcx       # imm = 0x147B
	subq	%r9, %rcx
	imulq	$3240, %rbx, %rdx       # imm = 0xCA8
	addq	%rdx, %rcx
	imulq	$9973, %rsi, %rdx       # imm = 0x26F5
	imulq	$-6163, %rdi, %rsi      # imm = 0xFFFFFFFFFFFFE7ED
	leaq	16384(%rdx,%rsi), %rdx
	leaq	(%rdx,%rcx), %rsi
	shrq	$15, %rsi
	movl	%esi, 96(%r14,%rax,4)
	subq	%rcx, %rdx
	shrq	$15, %rdx
	movl	%edx, 224(%r14,%rax,4)
	incq	%rax
	cmpl	$5, %eax
	jne	.LBB27_4
# BB#5:                                 # %for.end.186
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	jpeg_fdct_5x10, .Lfunc_end27-jpeg_fdct_5x10
	.cfi_endproc

	.globl	jpeg_fdct_4x8
	.align	16, 0x90
	.type	jpeg_fdct_4x8,@function
jpeg_fdct_4x8:                          # @jpeg_fdct_4x8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp316:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp317:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp318:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp319:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp320:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp321:
	.cfi_def_cfa_offset 64
.Ltmp322:
	.cfi_offset %rbx, -56
.Ltmp323:
	.cfi_offset %r12, -48
.Ltmp324:
	.cfi_offset %r13, -40
.Ltmp325:
	.cfi_offset %r14, -32
.Ltmp326:
	.cfi_offset %r15, -24
.Ltmp327:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rcx), %rdx
	movzbl	(%rdx,%r8), %esi
	movzbl	3(%rdx,%r8), %r9d
	movl	%r9d, %edi
	addl	%esi, %edi
	movzbl	1(%rdx,%r8), %eax
	movzbl	2(%rdx,%r8), %r10d
	movl	%r10d, %edx
	addl	%eax, %edx
	subq	%r9, %rsi
	subq	%r10, %rax
	leal	(%rdx,%rdi), %ebx
	leal	-4096(,%rbx,8), %ebx
	movl	%ebx, (%r12,%rcx,4)
	subl	%edx, %edi
	shll	$3, %edi
	movl	%edi, 8(%r12,%rcx,4)
	leaq	(%rax,%rsi), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %rsi, %rsi       # imm = 0x187E
	leaq	512(%rdx,%rsi), %rsi
	shrq	$10, %rsi
	movl	%esi, 4(%r12,%rcx,4)
	imulq	$-15137, %rax, %rax     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	512(%rdx,%rax), %rax
	shrq	$10, %rax
	movl	%eax, 12(%r12,%rcx,4)
	addq	$8, %rcx
	cmpq	$64, %rcx
	jne	.LBB28_1
	.align	16, 0x90
.LBB28_2:                               # %for.body.45
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rbp,4), %eax
	movl	224(%r12,%rbp,4), %r9d
	leal	(%r9,%rax), %edx
	movslq	%edx, %r14
	movl	32(%r12,%rbp,4), %ebx
	movl	192(%r12,%rbp,4), %r10d
	leal	(%r10,%rbx), %esi
	movslq	%esi, %r13
	movl	64(%r12,%rbp,4), %edi
	movl	160(%r12,%rbp,4), %r11d
	leal	(%r11,%rdi), %ecx
	movslq	%ecx, %rcx
	movl	96(%r12,%rbp,4), %edx
	movl	128(%r12,%rbp,4), %r15d
	leal	(%r15,%rdx), %esi
	movslq	%esi, %rsi
	leaq	2(%r14,%rsi), %r8
	subq	%rsi, %r14
	leaq	(%rcx,%r13), %rsi
	subq	%rcx, %r13
	subl	%r9d, %eax
	movslq	%eax, %r9
	subl	%r10d, %ebx
	movslq	%ebx, %r10
	subl	%r11d, %edi
	movslq	%edi, %r11
	subl	%r15d, %edx
	movslq	%edx, %rax
	leaq	(%r8,%rsi), %rdx
	shrq	$2, %rdx
	movl	%edx, (%r12,%rbp,4)
	subq	%rsi, %r8
	shrq	$2, %r8
	movl	%r8d, 128(%r12,%rbp,4)
	leaq	(%r14,%r13), %rdx
	imulq	$4433, %rdx, %rdx       # imm = 0x1151
	imulq	$6270, %r14, %rsi       # imm = 0x187E
	leaq	16384(%rdx,%rsi), %rsi
	shrq	$15, %rsi
	movl	%esi, 64(%r12,%rbp,4)
	imulq	$-15137, %r13, %rsi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	16384(%rdx,%rsi), %rdx
	shrq	$15, %rdx
	movl	%edx, 192(%r12,%rbp,4)
	leaq	(%r11,%r9), %rdx
	leaq	(%rax,%r10), %rsi
	leaq	(%rsi,%rdx), %rdi
	imulq	$9633, %rdi, %rdi       # imm = 0x25A1
	imulq	$-3196, %rdx, %rdx      # imm = 0xFFFFFFFFFFFFF384
	imulq	$-16069, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFC13B
	leaq	16384(%rdi,%rdx), %r8
	leaq	16384(%rdi,%rsi), %rsi
	leaq	(%rax,%r9), %rdi
	imulq	$-7373, %rdi, %rdi      # imm = 0xFFFFFFFFFFFFE333
	imulq	$12299, %r9, %rbx       # imm = 0x300B
	imulq	$2446, %rax, %rax       # imm = 0x98E
	leaq	(%rbx,%rdi), %rbx
	addq	%r8, %rbx
	addq	%rdi, %rax
	addq	%rsi, %rax
	leaq	(%r11,%r10), %rdi
	imulq	$-20995, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$25172, %r10, %rcx      # imm = 0x6254
	imulq	$16819, %r11, %rdx      # imm = 0x41B3
	leaq	(%rcx,%rdi), %rcx
	addq	%rsi, %rcx
	addq	%rdi, %rdx
	addq	%r8, %rdx
	shrq	$15, %rbx
	movl	%ebx, 32(%r12,%rbp,4)
	shrq	$15, %rcx
	movl	%ecx, 96(%r12,%rbp,4)
	shrq	$15, %rdx
	movl	%edx, 160(%r12,%rbp,4)
	shrq	$15, %rax
	movl	%eax, 224(%r12,%rbp,4)
	incq	%rbp
	cmpl	$4, %ebp
	jne	.LBB28_2
# BB#3:                                 # %for.end.143
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	jpeg_fdct_4x8, .Lfunc_end28-jpeg_fdct_4x8
	.cfi_endproc

	.globl	jpeg_fdct_3x6
	.align	16, 0x90
	.type	jpeg_fdct_3x6,@function
jpeg_fdct_3x6:                          # @jpeg_fdct_3x6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp329:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp330:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp331:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp332:
	.cfi_def_cfa_offset 48
.Ltmp333:
	.cfi_offset %rbx, -40
.Ltmp334:
	.cfi_offset %r14, -32
.Ltmp335:
	.cfi_offset %r15, -24
.Ltmp336:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r15d, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rcx), %rdx
	movzbl	(%rdx,%r8), %esi
	movzbl	2(%rdx,%r8), %edi
	leaq	(%rdi,%rsi), %rax
	movzbl	1(%rdx,%r8), %edx
	subq	%rdi, %rsi
	leal	(%rdx,%rax), %edi
	leal	-3072(,%rdi,8), %edi
	movl	%edi, (%rbx,%rcx,4)
	leaq	(%rdx,%rdx), %rdx
	subq	%rdx, %rax
	imulq	$5793, %rax, %rax       # imm = 0x16A1
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rax
	movl	%eax, 8(%rbx,%rcx,4)
	imulq	$10033, %rsi, %rax      # imm = 0x2731
	addq	$512, %rax              # imm = 0x200
	shrq	$10, %rax
	movl	%eax, 4(%rbx,%rcx,4)
	addq	$8, %rcx
	cmpq	$48, %rcx
	jne	.LBB29_1
	.align	16, 0x90
.LBB29_2:                               # %for.body.31
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rbp,4), %eax
	movl	160(%rbx,%rbp,4), %r8d
	leal	(%r8,%rax), %edx
	movslq	%edx, %r14
	movl	32(%rbx,%rbp,4), %ecx
	movl	128(%rbx,%rbp,4), %r9d
	leal	(%r9,%rcx), %edx
	movslq	%edx, %r10
	movl	64(%rbx,%rbp,4), %esi
	movl	96(%rbx,%rbp,4), %r11d
	leal	(%r11,%rsi), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r14), %rdi
	subq	%rdx, %r14
	subl	%r8d, %eax
	movslq	%eax, %rdx
	subl	%r9d, %ecx
	movslq	%ecx, %rax
	subl	%r11d, %esi
	movslq	%esi, %rcx
	leaq	(%rdi,%r10), %rsi
	imulq	$14564, %rsi, %rsi      # imm = 0x38E4
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, (%rbx,%rbp,4)
	imulq	$17837, %r14, %rsi      # imm = 0x45AD
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, 64(%rbx,%rbp,4)
	addq	%r10, %r10
	subq	%r10, %rdi
	imulq	$10298, %rdi, %rsi      # imm = 0x283A
	addq	$16384, %rsi            # imm = 0x4000
	shrq	$15, %rsi
	movl	%esi, 128(%rbx,%rbp,4)
	leaq	(%rcx,%rdx), %rsi
	imulq	$5331, %rsi, %rsi       # imm = 0x14D3
	leaq	(%rax,%rdx), %rdi
	imulq	$14564, %rdi, %rdi      # imm = 0x38E4
	leaq	16384(%rdi,%rsi), %rdi
	shrq	$15, %rdi
	movl	%edi, 32(%rbx,%rbp,4)
	subq	%rax, %rdx
	subq	%rcx, %rdx
	imulq	$14564, %rdx, %rdx      # imm = 0x38E4
	addq	$16384, %rdx            # imm = 0x4000
	shrq	$15, %rdx
	movl	%edx, 96(%rbx,%rbp,4)
	subq	%rax, %rcx
	imulq	$14564, %rcx, %rax      # imm = 0x38E4
	leaq	16384(%rax,%rsi), %rax
	shrq	$15, %rax
	movl	%eax, 160(%rbx,%rbp,4)
	incq	%rbp
	cmpl	$3, %ebp
	jne	.LBB29_2
# BB#3:                                 # %for.end.101
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	jpeg_fdct_3x6, .Lfunc_end29-jpeg_fdct_3x6
	.cfi_endproc

	.globl	jpeg_fdct_2x4
	.align	16, 0x90
	.type	jpeg_fdct_2x4,@function
jpeg_fdct_2x4:                          # @jpeg_fdct_2x4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp338:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp339:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp340:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp341:
	.cfi_def_cfa_offset 48
.Ltmp342:
	.cfi_offset %rbx, -48
.Ltmp343:
	.cfi_offset %r12, -40
.Ltmp344:
	.cfi_offset %r14, -32
.Ltmp345:
	.cfi_offset %r15, -24
.Ltmp346:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%ebp, %ebp
	movq	(%r14), %rcx
	movzbl	(%rcx,%rbp), %r12d
	movzbl	1(%rcx,%rbp), %ecx
	movl	%ecx, %edx
	addl	%r12d, %edx
	leal	(,%rdx,8), %r8d
	leal	-2048(,%rdx,8), %r9d
	movl	%r9d, (%rbx)
	subq	%rcx, %r12
	shlq	$3, %r12
	movl	%r12d, 4(%rbx)
	movq	8(%r14), %rdx
	movzbl	(%rdx,%rbp), %ecx
	movzbl	1(%rdx,%rbp), %edx
	movl	%edx, %esi
	addl	%ecx, %esi
	leal	(,%rsi,8), %r10d
	leal	-2048(,%rsi,8), %r11d
	movl	%r11d, 32(%rbx)
	subq	%rdx, %rcx
	shlq	$3, %rcx
	movl	%ecx, 36(%rbx)
	movq	16(%r14), %rdi
	movzbl	(%rdi,%rbp), %edx
	movzbl	1(%rdi,%rbp), %edi
	movl	%edi, %esi
	addl	%edx, %esi
	leal	-2048(,%rsi,8), %r15d
	movl	%r15d, 64(%rbx)
	subq	%rdi, %rdx
	shlq	$3, %rdx
	movl	%edx, 68(%rbx)
	movq	24(%r14), %rax
	movzbl	(%rax,%rbp), %edi
	movzbl	1(%rax,%rbp), %ebp
	movl	%ebp, %eax
	addl	%edi, %eax
	leal	-2048(,%rax,8), %r14d
	subq	%rbp, %rdi
	shlq	$3, %rdi
	leal	-4096(%r8,%rax,8), %eax
	leal	-4096(%r10,%rsi,8), %esi
	subl	%r14d, %r9d
	movslq	%r9d, %r9
	subl	%r15d, %r11d
	movslq	%r11d, %r8
	leal	(%rsi,%rax), %ebp
	movl	%ebp, (%rbx)
	subl	%esi, %eax
	movl	%eax, 64(%rbx)
	leaq	(%r8,%r9), %rax
	imulq	$4433, %rax, %rax       # imm = 0x1151
	imulq	$6270, %r9, %rsi        # imm = 0x187E
	leaq	4096(%rax,%rsi), %rsi
	shrq	$13, %rsi
	movl	%esi, 32(%rbx)
	imulq	$-15137, %r8, %rsi      # imm = 0xFFFFFFFFFFFFC4DF
	leaq	4096(%rax,%rsi), %rax
	shrq	$13, %rax
	movl	%eax, 96(%rbx)
	leal	(%rdi,%r12), %eax
	leal	(%rdx,%rcx), %esi
	subq	%rdi, %r12
	subq	%rdx, %rcx
	leal	(%rsi,%rax), %edx
	movl	%edx, 4(%rbx)
	subl	%esi, %eax
	movl	%eax, 68(%rbx)
	leaq	(%rcx,%r12), %rax
	imulq	$4433, %rax, %rax       # imm = 0x1151
	imulq	$6270, %r12, %rdx       # imm = 0x187E
	leaq	4096(%rax,%rdx), %rdx
	shrq	$13, %rdx
	movl	%edx, 36(%rbx)
	imulq	$-15137, %rcx, %rcx     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	4096(%rax,%rcx), %rax
	shrq	$13, %rax
	movl	%eax, 100(%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	jpeg_fdct_2x4, .Lfunc_end30-jpeg_fdct_2x4
	.cfi_endproc

	.globl	jpeg_fdct_1x2
	.align	16, 0x90
	.type	jpeg_fdct_1x2,@function
jpeg_fdct_1x2:                          # @jpeg_fdct_1x2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp347:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp348:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp349:
	.cfi_def_cfa_offset 32
.Ltmp350:
	.cfi_offset %rbx, -32
.Ltmp351:
	.cfi_offset %r14, -24
.Ltmp352:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movl	%r14d, %eax
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	movzbl	(%rcx,%rax), %ecx
	movzbl	(%rdx,%rax), %eax
	leal	(%rax,%rcx), %edx
	shll	$5, %edx
	addl	$-8192, %edx            # imm = 0xFFFFFFFFFFFFE000
	movl	%edx, (%rbp)
	subl	%eax, %ecx
	shll	$5, %ecx
	movl	%ecx, 32(%rbp)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	jpeg_fdct_1x2, .Lfunc_end31-jpeg_fdct_1x2
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
