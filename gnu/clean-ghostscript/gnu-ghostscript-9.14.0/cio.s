	.text
	.file	"cio.bc"
	.globl	opj_write_bytes_BE
	.align	16, 0x90
	.type	opj_write_bytes_BE,@function
opj_write_bytes_BE:                     # @opj_write_bytes_BE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	movl	%esi, 4(%rsp)
	movl	%eax, %edx
	decl	%eax
	cmpl	$4, %eax
	jae	.LBB0_2
# BB#1:                                 # %cond.end
	leaq	4(%rsp,%rdx), %rsi
	callq	memcpy
	popq	%rax
	retq
.LBB0_2:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$45, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_write_bytes_BE, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	opj_write_bytes_BE, .Lfunc_end0-opj_write_bytes_BE
	.cfi_endproc

	.globl	opj_write_bytes_LE
	.align	16, 0x90
	.type	opj_write_bytes_LE,@function
opj_write_bytes_LE:                     # @opj_write_bytes_LE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %r15, -16
	movl	%esi, 12(%rsp)
	leal	-1(%rdx), %r10d
	cmpl	$3, %r10d
	ja	.LBB1_20
# BB#1:                                 # %for.body.lr.ph
	movabsq	$8589934560, %r11       # imm = 0x1FFFFFFE0
	movl	%edx, %r15d
	leaq	12(%rsp,%r15), %rax
	leaq	1(%r10), %r8
	xorl	%ebx, %ebx
	movq	%r8, %rsi
	andq	%r11, %rsi
	je	.LBB1_2
# BB#3:                                 # %vector.memcheck
	leaq	-1(%r15), %rbx
	subq	%r10, %rbx
	leaq	12(%rsp,%rbx), %rcx
	xorl	%ebx, %ebx
	cmpq	%rdi, %rcx
	jb	.LBB1_6
# BB#4:                                 # %vector.memcheck
	leaq	(%rdi,%r10), %r9
	leaq	11(%rsp,%r15), %rcx
	cmpq	%r9, %rcx
	ja	.LBB1_6
# BB#5:
	xorl	%esi, %esi
	jmp	.LBB1_12
.LBB1_2:
	xorl	%esi, %esi
	jmp	.LBB1_12
.LBB1_6:                                # %vector.body.preheader
	leaq	1(%r10), %rcx
	andq	%r11, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rbx
	shrq	$5, %rbx
	xorl	%r14d, %r14d
	btq	$5, %rcx
	jb	.LBB1_8
# BB#7:                                 # %vector.body.prol
	movdqu	-32(%rax), %xmm0
	movdqu	-16(%rax), %xmm1
	pxor	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm2, %xmm1    # xmm1 = xmm1[8],xmm2[8],xmm1[9],xmm2[9],xmm1[10],xmm2[10],xmm1[11],xmm2[11],xmm1[12],xmm2[12],xmm1[13],xmm2[13],xmm1[14],xmm2[14],xmm1[15],xmm2[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm2, %xmm0    # xmm0 = xmm0[8],xmm2[8],xmm0[9],xmm2[9],xmm0[10],xmm2[10],xmm0[11],xmm2[11],xmm0[12],xmm2[12],xmm0[13],xmm2[13],xmm0[14],xmm2[14],xmm0[15],xmm2[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm0
	movdqu	%xmm1, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movl	$32, %r14d
.LBB1_8:                                # %vector.body.preheader.split
	subq	%rsi, %rax
	leaq	(%rdi,%rsi), %r9
	testq	%rbx, %rbx
	je	.LBB1_11
# BB#9:                                 # %vector.body.preheader.split.split
	leaq	1(%r10), %rbx
	andq	%r11, %rbx
	subq	%r14, %rbx
	subq	%r14, %r15
	leaq	-4(%rsp,%r15), %rcx
	leaq	48(%r14,%rdi), %rdi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rcx), %xmm1
	movdqu	(%rcx), %xmm2
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1    # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqu	%xmm2, -48(%rdi)
	movdqu	%xmm1, -32(%rdi)
	movdqu	-48(%rcx), %xmm1
	movdqu	-32(%rcx), %xmm2
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1    # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqu	%xmm2, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$-64, %rcx
	addq	$64, %rdi
	addq	$-64, %rbx
	jne	.LBB1_10
.LBB1_11:
	movq	%rsi, %rbx
	movq	%r9, %rdi
.LBB1_12:                               # %middle.block
	cmpq	%rbx, %r8
	je	.LBB1_19
# BB#13:                                # %for.body.preheader
	movl	%edx, %ecx
	subl	%esi, %ecx
	subl	%esi, %r10d
	testb	$7, %cl
	je	.LBB1_16
# BB#14:                                # %for.body.prol.preheader
	andl	$7, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB1_15:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	-1(%rax), %bl
	decq	%rax
	movb	%bl, (%rdi)
	incq	%rdi
	incl	%esi
	incl	%ecx
	jne	.LBB1_15
.LBB1_16:                               # %for.body.preheader.split
	cmpl	$7, %r10d
	jb	.LBB1_19
# BB#17:                                # %for.body.preheader.split.split
	decq	%rax
	subl	%esi, %edx
	.align	16, 0x90
.LBB1_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %cl
	movb	%cl, (%rdi)
	movb	-1(%rax), %cl
	movb	%cl, 1(%rdi)
	movb	-2(%rax), %cl
	movb	%cl, 2(%rdi)
	movb	-3(%rax), %cl
	movb	%cl, 3(%rdi)
	movb	-4(%rax), %cl
	movb	%cl, 4(%rdi)
	movb	-5(%rax), %cl
	movb	%cl, 5(%rdi)
	movb	-6(%rax), %cl
	movb	%cl, 6(%rdi)
	movb	-7(%rax), %cl
	movb	%cl, 7(%rdi)
	addq	$-8, %rax
	addq	$8, %rdi
	addl	$-8, %edx
	jne	.LBB1_18
.LBB1_19:                               # %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_20:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$55, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_write_bytes_LE, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	opj_write_bytes_LE, .Lfunc_end1-opj_write_bytes_LE
	.cfi_endproc

	.globl	opj_read_bytes_BE
	.align	16, 0x90
	.type	opj_read_bytes_BE,@function
opj_read_bytes_BE:                      # @opj_read_bytes_BE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 16
	movl	%edx, %ecx
	movq	%rdi, %rax
	testl	%ecx, %ecx
	je	.LBB2_2
# BB#1:                                 # %land.lhs.true
	movl	%ecx, %edx
	cmpl	$5, %ecx
	jae	.LBB2_2
# BB#3:                                 # %cond.end
	movl	$0, (%rsi)
	subq	%rdx, %rsi
	addq	$4, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	popq	%rax
	jmp	memcpy                  # TAILCALL
.LBB2_2:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$66, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_read_bytes_BE, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	opj_read_bytes_BE, .Lfunc_end2-opj_read_bytes_BE
	.cfi_endproc

	.globl	opj_read_bytes_LE
	.align	16, 0x90
	.type	opj_read_bytes_LE,@function
opj_read_bytes_LE:                      # @opj_read_bytes_LE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r12, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	leal	-1(%rdx), %r8d
	cmpl	$4, %r8d
	jae	.LBB3_20
# BB#1:                                 # %for.body.lr.ph
	movabsq	$8589934560, %r14       # imm = 0x1FFFFFFE0
	movl	$0, (%rsi)
	movl	%edx, %r11d
	leaq	(%r11,%rsi), %rax
	leaq	1(%r8), %r9
	xorl	%r12d, %r12d
	movq	%r9, %rcx
	andq	%r14, %rcx
	je	.LBB3_2
# BB#3:                                 # %vector.memcheck
	leaq	-1(%rsi,%r11), %r10
	leaq	(%rdi,%r8), %r15
	xorl	%r12d, %r12d
	cmpq	%r15, %r10
	ja	.LBB3_6
# BB#4:                                 # %vector.memcheck
	leaq	-1(%r11), %rbx
	subq	%r8, %rbx
	leaq	(%rbx,%rsi), %rbx
	cmpq	%rdi, %rbx
	jb	.LBB3_6
# BB#5:
	xorl	%ecx, %ecx
	jmp	.LBB3_12
.LBB3_2:
	xorl	%ecx, %ecx
	jmp	.LBB3_12
.LBB3_6:                                # %vector.body.preheader
	leaq	1(%r8), %rbx
	andq	%r14, %rbx
	addq	$-32, %rbx
	movq	%rbx, %r12
	shrq	$5, %r12
	xorl	%r15d, %r15d
	btq	$5, %rbx
	jb	.LBB3_8
# BB#7:                                 # %vector.body.prol
	movdqu	(%rdi), %xmm0
	movdqu	16(%rdi), %xmm1
	pxor	%xmm2, %xmm2
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm2, %xmm0    # xmm0 = xmm0[8],xmm2[8],xmm0[9],xmm2[9],xmm0[10],xmm2[10],xmm0[11],xmm2[11],xmm0[12],xmm2[12],xmm0[13],xmm2[13],xmm0[14],xmm2[14],xmm0[15],xmm2[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm0
	movdqu	%xmm0, -16(%rax)
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm2, %xmm1    # xmm1 = xmm1[8],xmm2[8],xmm1[9],xmm2[9],xmm1[10],xmm2[10],xmm1[11],xmm2[11],xmm1[12],xmm2[12],xmm1[13],xmm2[13],xmm1[14],xmm2[14],xmm1[15],xmm2[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, -32(%rax)
	movl	$32, %r15d
.LBB3_8:                                # %vector.body.preheader.split
	subq	%rcx, %rax
	leaq	(%rdi,%rcx), %r10
	testq	%r12, %r12
	je	.LBB3_11
# BB#9:                                 # %vector.body.preheader.split.split
	leaq	1(%r8), %rbx
	andq	%r14, %rbx
	subq	%r15, %rbx
	subq	%r15, %r11
	leaq	-16(%rsi,%r11), %rsi
	leaq	48(%r15,%rdi), %rdi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB3_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm1
	movdqu	-32(%rdi), %xmm2
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1    # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqu	%xmm1, (%rsi)
	movdqa	%xmm2, %xmm1
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm1, %xmm2
	movdqu	%xmm2, -16(%rsi)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1    # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqu	%xmm1, -32(%rsi)
	movdqa	%xmm2, %xmm1
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm1, %xmm2
	movdqu	%xmm2, -48(%rsi)
	addq	$-64, %rsi
	addq	$64, %rdi
	addq	$-64, %rbx
	jne	.LBB3_10
.LBB3_11:
	movq	%rcx, %r12
	movq	%r10, %rdi
.LBB3_12:                               # %middle.block
	cmpq	%r12, %r9
	je	.LBB3_19
# BB#13:                                # %for.body.preheader
	movl	%edx, %esi
	subl	%ecx, %esi
	subl	%ecx, %r8d
	testb	$7, %sil
	je	.LBB3_16
# BB#14:                                # %for.body.prol.preheader
	andl	$7, %esi
	negl	%esi
	.align	16, 0x90
.LBB3_15:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdi), %bl
	incq	%rdi
	movb	%bl, -1(%rax)
	decq	%rax
	incl	%ecx
	incl	%esi
	jne	.LBB3_15
.LBB3_16:                               # %for.body.preheader.split
	cmpl	$7, %r8d
	jb	.LBB3_19
# BB#17:                                # %for.body.preheader.split.split
	decq	%rax
	subl	%ecx, %edx
	.align	16, 0x90
.LBB3_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdi), %cl
	movb	%cl, (%rax)
	movb	1(%rdi), %cl
	movb	%cl, -1(%rax)
	movb	2(%rdi), %cl
	movb	%cl, -2(%rax)
	movb	3(%rdi), %cl
	movb	%cl, -3(%rax)
	movb	4(%rdi), %cl
	movb	%cl, -4(%rax)
	movb	5(%rdi), %cl
	movb	%cl, -5(%rax)
	movb	6(%rdi), %cl
	movb	%cl, -6(%rax)
	movb	7(%rdi), %cl
	movb	%cl, -7(%rax)
	addq	$-8, %rax
	addq	$8, %rdi
	addl	$-8, %edx
	jne	.LBB3_18
.LBB3_19:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB3_20:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$77, %edx
	movl	$.L__PRETTY_FUNCTION__.opj_read_bytes_LE, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	opj_read_bytes_LE, .Lfunc_end3-opj_read_bytes_LE
	.cfi_endproc

	.globl	opj_write_double_BE
	.align	16, 0x90
	.type	opj_write_double_BE,@function
opj_write_double_BE:                    # @opj_write_double_BE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$8, %edx
	callq	memcpy
	popq	%rax
	retq
.Lfunc_end4:
	.size	opj_write_double_BE, .Lfunc_end4-opj_write_double_BE
	.cfi_endproc

	.globl	opj_write_double_LE
	.align	16, 0x90
	.type	opj_write_double_LE,@function
opj_write_double_LE:                    # @opj_write_double_LE
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	%xmm0, -8(%rsp)
	movd	%xmm0, %rax
	movq	%rax, %rcx
	shrq	$56, %rcx
	movb	%cl, (%rdi)
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, 1(%rdi)
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, 2(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, 3(%rdi)
	movb	-5(%rsp), %cl
	movb	%cl, 4(%rdi)
	movb	-6(%rsp), %cl
	movb	%cl, 5(%rdi)
	movb	%ah, 6(%rdi)  # NOREX
	movb	%al, 7(%rdi)
	retq
.Lfunc_end5:
	.size	opj_write_double_LE, .Lfunc_end5-opj_write_double_LE
	.cfi_endproc

	.globl	opj_read_double_BE
	.align	16, 0x90
	.type	opj_read_double_BE,@function
opj_read_double_BE:                     # @opj_read_double_BE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memcpy                  # TAILCALL
.Lfunc_end6:
	.size	opj_read_double_BE, .Lfunc_end6-opj_read_double_BE
	.cfi_endproc

	.globl	opj_read_double_LE
	.align	16, 0x90
	.type	opj_read_double_LE,@function
opj_read_double_LE:                     # @opj_read_double_LE
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rdi), %al
	movb	%al, 7(%rsi)
	movb	1(%rdi), %al
	movb	%al, 6(%rsi)
	movb	2(%rdi), %al
	movb	%al, 5(%rsi)
	movb	3(%rdi), %al
	movb	%al, 4(%rsi)
	movb	4(%rdi), %al
	movb	%al, 3(%rsi)
	movb	5(%rdi), %al
	movb	%al, 2(%rsi)
	movb	6(%rdi), %al
	movb	%al, 1(%rsi)
	movb	7(%rdi), %al
	movb	%al, (%rsi)
	retq
.Lfunc_end7:
	.size	opj_read_double_LE, .Lfunc_end7-opj_read_double_LE
	.cfi_endproc

	.globl	opj_write_float_BE
	.align	16, 0x90
	.type	opj_write_float_BE,@function
opj_write_float_BE:                     # @opj_write_float_BE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 16
	movss	%xmm0, 4(%rsp)
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	callq	memcpy
	popq	%rax
	retq
.Lfunc_end8:
	.size	opj_write_float_BE, .Lfunc_end8-opj_write_float_BE
	.cfi_endproc

	.globl	opj_write_float_LE
	.align	16, 0x90
	.type	opj_write_float_LE,@function
opj_write_float_LE:                     # @opj_write_float_LE
	.cfi_startproc
# BB#0:                                 # %entry
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, (%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdi)
	movb	%ah, 2(%rdi)  # NOREX
	movb	%al, 3(%rdi)
	retq
.Lfunc_end9:
	.size	opj_write_float_LE, .Lfunc_end9-opj_write_float_LE
	.cfi_endproc

	.globl	opj_read_float_BE
	.align	16, 0x90
	.type	opj_read_float_BE,@function
opj_read_float_BE:                      # @opj_read_float_BE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$4, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memcpy                  # TAILCALL
.Lfunc_end10:
	.size	opj_read_float_BE, .Lfunc_end10-opj_read_float_BE
	.cfi_endproc

	.globl	opj_read_float_LE
	.align	16, 0x90
	.type	opj_read_float_LE,@function
opj_read_float_LE:                      # @opj_read_float_LE
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rdi), %al
	movb	%al, 3(%rsi)
	movb	1(%rdi), %al
	movb	%al, 2(%rsi)
	movb	2(%rdi), %al
	movb	%al, 1(%rsi)
	movb	3(%rdi), %al
	movb	%al, (%rsi)
	retq
.Lfunc_end11:
	.size	opj_read_float_LE, .Lfunc_end11-opj_read_float_LE
	.cfi_endproc

	.globl	opj_stream_create
	.align	16, 0x90
	.type	opj_stream_create,@function
opj_stream_create:                      # @opj_stream_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movl	$112, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB12_9
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%rbp, 96(%rbx)
	cmpq	$-256, %rbp
	jb	.LBB12_3
# BB#2:                                 # %cond.end.thread
	movq	$0, 48(%rbx)
	jmp	.LBB12_4
.LBB12_3:                               # %cond.end
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, 48(%rbx)
	testq	%rax, %rax
	je	.LBB12_4
# BB#5:                                 # %if.end.6
	movq	%rax, 56(%rbx)
	testl	%r14d, %r14d
	movl	104(%rbx), %eax
	je	.LBB12_7
# BB#6:                                 # %if.then.9
	orl	$2, %eax
	movl	%eax, 104(%rbx)
	movq	$opj_stream_read_skip, 64(%rbx)
	movq	$opj_stream_read_seek, 72(%rbx)
	jmp	.LBB12_8
.LBB12_4:                               # %if.then.5
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_7:                               # %if.else
	orl	$1, %eax
	movl	%eax, 104(%rbx)
	movq	$opj_stream_write_skip, 64(%rbx)
	movq	$opj_stream_write_seek, 72(%rbx)
.LBB12_8:                               # %if.end.14
	movl	$opj_stream_default_write, %eax
	movd	%rax, %xmm0
	movl	$opj_stream_default_read, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 16(%rbx)
	movq	$opj_stream_default_skip, 32(%rbx)
	movq	$opj_stream_default_seek, 40(%rbx)
	movq	%rbx, %rax
.LBB12_9:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	opj_stream_create, .Lfunc_end12-opj_stream_create
	.cfi_endproc

	.globl	opj_stream_read_skip
	.align	16, 0x90
	.type	opj_stream_read_skip,@function
opj_stream_read_skip:                   # @opj_stream_read_skip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r12, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	js	.LBB13_15
# BB#1:                                 # %cond.end
	movq	80(%r14), %r12
	movq	%r12, %rax
	subq	%rbx, %rax
	jae	.LBB13_2
# BB#3:                                 # %if.end
	testb	$4, 104(%r14)
	jne	.LBB13_4
# BB#6:                                 # %if.end.17
	testq	%r12, %r12
	je	.LBB13_7
# BB#8:                                 # %if.then.20
	movq	48(%r14), %rax
	movq	%rax, 56(%r14)
	subq	%r12, %rbx
	movq	$0, 80(%r14)
	jmp	.LBB13_9
.LBB13_2:                               # %if.then
	addq	%rbx, 56(%r14)
	movq	%rax, 80(%r14)
	addq	%rbx, 88(%r14)
	jmp	.LBB13_14
.LBB13_4:                               # %if.then.4
	addq	%r12, 56(%r14)
	movq	$0, 80(%r14)
	jmp	.LBB13_5
.LBB13_7:
	xorl	%r12d, %r12d
.LBB13_9:                               # %while.cond.preheader
	testq	%rbx, %rbx
	jle	.LBB13_13
	.align	16, 0x90
.LBB13_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	*32(%r14)
	cmpq	$-1, %rax
	je	.LBB13_11
# BB#12:                                # %if.end.40
                                        #   in Loop: Header=BB13_10 Depth=1
	subq	%rax, %rbx
	leaq	(%r12,%rax), %r12
	jg	.LBB13_10
.LBB13_13:                              # %while.end
	addq	%r12, 88(%r14)
	movq	%r12, %rbx
	jmp	.LBB13_14
.LBB13_11:                              # %if.then.30
	movl	$4, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
	orb	$4, 104(%r14)
.LBB13_5:                               # %cleanup
	addq	%r12, 88(%r14)
	cmpq	$1, %r12
	sbbq	%rbx, %rbx
	orq	%r12, %rbx
.LBB13_14:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB13_15:                              # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$461, %edx              # imm = 0x1CD
	movl	$.L__PRETTY_FUNCTION__.opj_stream_read_skip, %ecx
	callq	__assert_fail
.Lfunc_end13:
	.size	opj_stream_read_skip, .Lfunc_end13-opj_stream_read_skip
	.cfi_endproc

	.globl	opj_stream_read_seek
	.align	16, 0x90
	.type	opj_stream_read_seek,@function
opj_stream_read_seek:                   # @opj_stream_read_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	48(%rbx), %rax
	movq	%rax, 56(%rbx)
	movq	$0, 80(%rbx)
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	*40(%rbx)
	movl	104(%rbx), %ecx
	testl	%eax, %eax
	je	.LBB14_1
# BB#2:                                 # %if.else
	andl	$-5, %ecx
	movl	%ecx, 104(%rbx)
	movq	%r14, 88(%rbx)
	movl	$1, %eax
	jmp	.LBB14_3
.LBB14_1:                               # %if.then
	orl	$4, %ecx
	movl	%ecx, 104(%rbx)
	xorl	%eax, %eax
.LBB14_3:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	opj_stream_read_seek, .Lfunc_end14-opj_stream_read_seek
	.cfi_endproc

	.globl	opj_stream_write_skip
	.align	16, 0x90
	.type	opj_stream_write_skip,@function
opj_stream_write_skip:                  # @opj_stream_write_skip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 48
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r12, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	$-1, %r14
	testb	$8, 104(%rbx)
	jne	.LBB15_11
# BB#1:                                 # %if.end
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_5
	.align	16, 0x90
.LBB15_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	callq	*24(%rbx)
	cmpq	$-1, %rax
	je	.LBB15_12
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	56(%rbx), %rdi
	addq	%rax, %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 80(%rbx)
	jne	.LBB15_2
# BB#4:                                 # %while.cond.while.end_crit_edge.i
	movq	48(%rbx), %rdi
.LBB15_5:                               # %opj_stream_flush.exit
	movq	%rdi, 56(%rbx)
	xorl	%r14d, %r14d
	testq	%r12, %r12
	jle	.LBB15_10
# BB#6:                                 # %while.body.lr.ph
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB15_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	callq	*32(%rbx)
	cmpq	$-1, %rax
	je	.LBB15_8
# BB#9:                                 # %if.end.13
                                        #   in Loop: Header=BB15_7 Depth=1
	subq	%rax, %r12
	leaq	(%r14,%rax), %r14
	jg	.LBB15_7
.LBB15_10:                              # %while.end
	addq	%r14, 88(%rbx)
	jmp	.LBB15_11
.LBB15_12:                              # %if.then.2
	orb	$8, 104(%rbx)
	movl	$4, %esi
	movl	$.L.str.3, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
	orb	$8, 104(%rbx)
	movq	$0, 80(%rbx)
	jmp	.LBB15_11
.LBB15_8:                               # %if.then.8
	movl	$4, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
	orb	$8, 104(%rbx)
	addq	%r14, 88(%rbx)
	cmpq	$1, %r14
	sbbq	%rax, %rax
	orq	%rax, %r14
.LBB15_11:                              # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	opj_stream_write_skip, .Lfunc_end15-opj_stream_write_skip
	.cfi_endproc

	.globl	opj_stream_write_seek
	.align	16, 0x90
	.type	opj_stream_write_seek,@function
opj_stream_write_seek:                  # @opj_stream_write_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB16_4
	.align	16, 0x90
.LBB16_1:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	callq	*24(%rbx)
	cmpq	$-1, %rax
	je	.LBB16_8
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	56(%rbx), %rdi
	addq	%rax, %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 80(%rbx)
	jne	.LBB16_1
# BB#3:                                 # %while.cond.while.end_crit_edge.i
	movq	48(%rbx), %rdi
.LBB16_4:                               # %if.end
	movq	%rdi, 56(%rbx)
	movq	$0, 80(%rbx)
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	*40(%rbx)
	testl	%eax, %eax
	je	.LBB16_5
# BB#6:                                 # %if.else
	movq	%r14, 88(%rbx)
	movl	$1, %ebp
	jmp	.LBB16_7
.LBB16_8:                               # %if.then
	orb	$8, 104(%rbx)
	xorl	%ebp, %ebp
	movl	$4, %esi
	movl	$.L.str.3, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	opj_event_msg
	orb	$8, 104(%rbx)
	jmp	.LBB16_7
.LBB16_5:                               # %if.then.3
	orb	$8, 104(%rbx)
	xorl	%ebp, %ebp
.LBB16_7:                               # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	opj_stream_write_seek, .Lfunc_end16-opj_stream_write_seek
	.cfi_endproc

	.globl	opj_stream_default_read
	.align	16, 0x90
	.type	opj_stream_default_read,@function
opj_stream_default_read:                # @opj_stream_default_read
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end17:
	.size	opj_stream_default_read, .Lfunc_end17-opj_stream_default_read
	.cfi_endproc

	.globl	opj_stream_default_write
	.align	16, 0x90
	.type	opj_stream_default_write,@function
opj_stream_default_write:               # @opj_stream_default_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end18:
	.size	opj_stream_default_write, .Lfunc_end18-opj_stream_default_write
	.cfi_endproc

	.globl	opj_stream_default_skip
	.align	16, 0x90
	.type	opj_stream_default_skip,@function
opj_stream_default_skip:                # @opj_stream_default_skip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end19:
	.size	opj_stream_default_skip, .Lfunc_end19-opj_stream_default_skip
	.cfi_endproc

	.globl	opj_stream_default_seek
	.align	16, 0x90
	.type	opj_stream_default_seek,@function
opj_stream_default_seek:                # @opj_stream_default_seek
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	opj_stream_default_seek, .Lfunc_end20-opj_stream_default_seek
	.cfi_endproc

	.globl	opj_stream_default_create
	.align	16, 0x90
	.type	opj_stream_default_create,@function
opj_stream_default_create:              # @opj_stream_default_create
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movl	$1048576, %edi          # imm = 0x100000
	movl	%eax, %esi
	jmp	opj_stream_create       # TAILCALL
.Lfunc_end21:
	.size	opj_stream_default_create, .Lfunc_end21-opj_stream_default_create
	.cfi_endproc

	.globl	opj_stream_destroy
	.align	16, 0x90
	.type	opj_stream_destroy,@function
opj_stream_destroy:                     # @opj_stream_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB22_1
# BB#2:                                 # %if.then
	movq	48(%rbx), %rdi
	callq	free
	movq	$0, 48(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB22_1:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end22:
	.size	opj_stream_destroy, .Lfunc_end22-opj_stream_destroy
	.cfi_endproc

	.globl	opj_stream_destroy_v3
	.align	16, 0x90
	.type	opj_stream_destroy_v3,@function
opj_stream_destroy_v3:                  # @opj_stream_destroy_v3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB23_4
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB23_3
# BB#2:                                 # %if.then.2
	callq	fclose
.LBB23_3:                               # %if.end
	movq	48(%rbx), %rdi
	callq	free
	movq	$0, 48(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB23_4:                               # %if.end.4
	popq	%rbx
	retq
.Lfunc_end23:
	.size	opj_stream_destroy_v3, .Lfunc_end23-opj_stream_destroy_v3
	.cfi_endproc

	.globl	opj_stream_set_read_function
	.align	16, 0x90
	.type	opj_stream_set_read_function,@function
opj_stream_set_read_function:           # @opj_stream_set_read_function
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB24_3
# BB#1:                                 # %lor.lhs.false
	testb	$2, 104(%rdi)
	je	.LBB24_3
# BB#2:                                 # %if.end
	movq	%rsi, 16(%rdi)
.LBB24_3:                               # %cleanup
	retq
.Lfunc_end24:
	.size	opj_stream_set_read_function, .Lfunc_end24-opj_stream_set_read_function
	.cfi_endproc

	.globl	opj_stream_set_seek_function
	.align	16, 0x90
	.type	opj_stream_set_seek_function,@function
opj_stream_set_seek_function:           # @opj_stream_set_seek_function
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB25_2
# BB#1:                                 # %if.end
	movq	%rsi, 40(%rdi)
.LBB25_2:                               # %cleanup
	retq
.Lfunc_end25:
	.size	opj_stream_set_seek_function, .Lfunc_end25-opj_stream_set_seek_function
	.cfi_endproc

	.globl	opj_stream_set_write_function
	.align	16, 0x90
	.type	opj_stream_set_write_function,@function
opj_stream_set_write_function:          # @opj_stream_set_write_function
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB26_3
# BB#1:                                 # %lor.lhs.false
	testb	$1, 104(%rdi)
	je	.LBB26_3
# BB#2:                                 # %if.end
	movq	%rsi, 24(%rdi)
.LBB26_3:                               # %cleanup
	retq
.Lfunc_end26:
	.size	opj_stream_set_write_function, .Lfunc_end26-opj_stream_set_write_function
	.cfi_endproc

	.globl	opj_stream_set_skip_function
	.align	16, 0x90
	.type	opj_stream_set_skip_function,@function
opj_stream_set_skip_function:           # @opj_stream_set_skip_function
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB27_2
# BB#1:                                 # %if.end
	movq	%rsi, 32(%rdi)
.LBB27_2:                               # %cleanup
	retq
.Lfunc_end27:
	.size	opj_stream_set_skip_function, .Lfunc_end27-opj_stream_set_skip_function
	.cfi_endproc

	.globl	opj_stream_set_user_data
	.align	16, 0x90
	.type	opj_stream_set_user_data,@function
opj_stream_set_user_data:               # @opj_stream_set_user_data
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB28_2
# BB#1:                                 # %if.end
	movq	%rsi, (%rdi)
.LBB28_2:                               # %cleanup
	retq
.Lfunc_end28:
	.size	opj_stream_set_user_data, .Lfunc_end28-opj_stream_set_user_data
	.cfi_endproc

	.globl	opj_stream_set_user_data_length
	.align	16, 0x90
	.type	opj_stream_set_user_data_length,@function
opj_stream_set_user_data_length:        # @opj_stream_set_user_data_length
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB29_2
# BB#1:                                 # %if.end
	movq	%rsi, 8(%rdi)
.LBB29_2:                               # %cleanup
	retq
.Lfunc_end29:
	.size	opj_stream_set_user_data_length, .Lfunc_end29-opj_stream_set_user_data_length
	.cfi_endproc

	.globl	opj_stream_read_data
	.align	16, 0x90
	.type	opj_stream_read_data,@function
opj_stream_read_data:                   # @opj_stream_read_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 80
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	80(%rbx), %rbp
	cmpq	%r14, %rbp
	jae	.LBB30_1
# BB#2:                                 # %if.end
	testb	$4, 104(%rbx)
	jne	.LBB30_3
# BB#4:                                 # %if.end.18
	testq	%rbp, %rbp
	je	.LBB30_6
# BB#5:                                 # %if.then.21
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	56(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	48(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rax
	addq	%rax, %r12
	subq	%rax, %r14
	leaq	88(%rbx), %r15
	addq	%rax, 88(%rbx)
	movq	$0, 80(%rbx)
	jmp	.LBB30_7
.LBB30_1:                               # %if.then
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 56(%rbx)
	subq	%r14, 80(%rbx)
	addq	%r14, 88(%rbx)
	jmp	.LBB30_19
.LBB30_3:                               # %if.then.4
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movq	80(%rbx), %rax
	addq	%rax, 56(%rbx)
	addq	%rax, 88(%rbx)
	movq	$0, 80(%rbx)
	cmpq	$1, %rbp
	sbbq	%r14, %r14
	orq	%rbp, %r14
	jmp	.LBB30_19
.LBB30_6:                               # %if.else
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	48(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	48(%rbx), %rdi
	leaq	56(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 56(%rbx)
	leaq	88(%rbx), %r15
	xorl	%ebp, %ebp
.LBB30_7:                               # %while.body.preheader
	movq	%r14, %r13
	movq	%rbp, %r14
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB30_8
	.align	16, 0x90
.LBB30_17:                              # %while.body.backedge
                                        #   in Loop: Header=BB30_8 Depth=1
	addq	%rax, %rcx
	movq	%rcx, 88(%rbx)
	subq	%rax, %r13
	addq	%rax, %r12
	movq	$0, 80(%rbx)
.LBB30_8:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movq	96(%rbx), %rsi
	cmpq	%rsi, %r13
	jae	.LBB30_14
# BB#9:                                 # %if.then.40
                                        #   in Loop: Header=BB30_8 Depth=1
	movq	(%rbx), %rdx
	callq	*%rax
	movq	%rax, 80(%rbx)
	cmpq	$-1, %rax
	je	.LBB30_10
# BB#11:                                # %if.else.56
                                        #   in Loop: Header=BB30_8 Depth=1
	cmpq	%r13, %rax
	jae	.LBB30_13
# BB#12:                                # %if.then.59
                                        #   in Loop: Header=BB30_8 Depth=1
	addq	%rax, %r14
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rax
	movq	88(%rbx), %rcx
	jmp	.LBB30_17
	.align	16, 0x90
.LBB30_14:                              # %if.else.87
                                        #   in Loop: Header=BB30_8 Depth=1
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*%rax
	movq	%rax, 80(%rbx)
	cmpq	$-1, %rax
	je	.LBB30_10
# BB#15:                                # %if.else.104
                                        #   in Loop: Header=BB30_8 Depth=1
	cmpq	%r13, %rax
	leaq	(%r14,%rax), %r14
	jae	.LBB30_18
# BB#16:                                # %if.then.107
                                        #   in Loop: Header=BB30_8 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rdi
	movq	%rdi, (%rbp)
	movq	(%r15), %rcx
	jmp	.LBB30_17
.LBB30_10:                              # %if.then.47
	movl	$4, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
	movq	$0, 80(%rbx)
	orb	$4, 104(%rbx)
	cmpq	$1, %r14
	sbbq	%rax, %rax
	orq	%rax, %r14
	jmp	.LBB30_19
.LBB30_13:                              # %if.else.75
	addq	%r13, %r14
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, 56(%rbx)
	subq	%r13, 80(%rbx)
	addq	%r13, 88(%rbx)
	jmp	.LBB30_19
.LBB30_18:                              # %if.else.120
	addq	%rax, 88(%rbx)
	movq	48(%rbx), %rax
	movq	%rax, 56(%rbx)
	movq	$0, 80(%rbx)
.LBB30_19:                              # %cleanup
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	opj_stream_read_data, .Lfunc_end30-opj_stream_read_data
	.cfi_endproc

	.globl	opj_stream_write_data
	.align	16, 0x90
	.type	opj_stream_write_data,@function
opj_stream_write_data:                  # @opj_stream_write_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 64
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$-1, %r12
	testb	$8, 104(%rbx)
	jne	.LBB31_12
# BB#1:                                 # %while.body.preheader
	movq	80(%rbx), %rsi
	movq	96(%rbx), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
	cmpq	%r14, %rbp
	jae	.LBB31_2
# BB#4:                                 # %if.end.6.lr.ph
	movq	%rcx, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
.LBB31_5:                               # %if.end.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_10 Depth 2
	cmpq	%rsi, %rax
	jne	.LBB31_7
# BB#6:                                 # %if.end.6.if.end.19_crit_edge
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	48(%rbx), %rdi
	jmp	.LBB31_8
	.align	16, 0x90
.LBB31_7:                               # %if.then.8
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	56(%rbx), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	addq	%rbp, %r15
	subq	%rbp, %r14
	movdqu	80(%rbx), %xmm0
	movd	%rbp, %xmm1
	leaq	(%r13,%rbp), %r13
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 80(%rbx)
	movd	%xmm1, %rsi
.LBB31_8:                               # %if.end.19
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	%rdi, 56(%rbx)
	testq	%rsi, %rsi
	je	.LBB31_9
	.align	16, 0x90
.LBB31_10:                              # %while.body.i
                                        #   Parent Loop BB31_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdx
	callq	*24(%rbx)
	cmpq	$-1, %rax
	je	.LBB31_11
# BB#13:                                # %if.end.i
                                        #   in Loop: Header=BB31_10 Depth=2
	movq	56(%rbx), %rdi
	addq	%rax, %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 80(%rbx)
	jne	.LBB31_10
# BB#14:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	48(%rbx), %rdi
	jmp	.LBB31_15
	.align	16, 0x90
.LBB31_9:                               #   in Loop: Header=BB31_5 Depth=1
	xorl	%esi, %esi
.LBB31_15:                              # %opj_stream_flush.exit
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	%rdi, 56(%rbx)
	movq	96(%rbx), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
	cmpq	%rbp, %r14
	ja	.LBB31_5
	jmp	.LBB31_3
.LBB31_2:                               # %while.body.preheader.if.then.1_crit_edge
	movq	56(%rbx), %rdi
	xorl	%r13d, %r13d
.LBB31_3:                               # %if.then.1
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 56(%rbx)
	addq	%r14, 80(%rbx)
	addq	%r14, %r13
	addq	%r14, 88(%rbx)
	movq	%r13, %r12
	jmp	.LBB31_12
.LBB31_11:                              # %opj_stream_flush.exit.thread
	orb	$8, 104(%rbx)
	movl	$4, %esi
	movl	$.L.str.3, %edx
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	opj_event_msg
.LBB31_12:                              # %cleanup
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	opj_stream_write_data, .Lfunc_end31-opj_stream_write_data
	.cfi_endproc

	.globl	opj_stream_flush
	.align	16, 0x90
	.type	opj_stream_flush,@function
opj_stream_flush:                       # @opj_stream_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 32
.Ltmp91:
	.cfi_offset %rbx, -24
.Ltmp92:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	48(%rbx), %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_5
	.align	16, 0x90
.LBB32_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	callq	*24(%rbx)
	cmpq	$-1, %rax
	je	.LBB32_2
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	56(%rbx), %rdi
	addq	%rax, %rdi
	movq	%rdi, 56(%rbx)
	movq	80(%rbx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 80(%rbx)
	jne	.LBB32_1
# BB#4:                                 # %while.cond.while.end_crit_edge
	movq	48(%rbx), %rdi
.LBB32_5:                               # %while.end
	movq	%rdi, 56(%rbx)
	movl	$1, %ebx
	jmp	.LBB32_6
.LBB32_2:                               # %if.then
	orb	$8, 104(%rbx)
	xorl	%ebx, %ebx
	movl	$4, %esi
	movl	$.L.str.3, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	opj_event_msg
.LBB32_6:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end32:
	.size	opj_stream_flush, .Lfunc_end32-opj_stream_flush
	.cfi_endproc

	.globl	opj_stream_tell
	.align	16, 0x90
	.type	opj_stream_tell,@function
opj_stream_tell:                        # @opj_stream_tell
	.cfi_startproc
# BB#0:                                 # %entry
	movq	88(%rdi), %rax
	retq
.Lfunc_end33:
	.size	opj_stream_tell, .Lfunc_end33-opj_stream_tell
	.cfi_endproc

	.globl	opj_stream_get_number_byte_left
	.align	16, 0x90
	.type	opj_stream_get_number_byte_left,@function
opj_stream_get_number_byte_left:        # @opj_stream_get_number_byte_left
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 16
	movq	88(%rdi), %rdx
	testq	%rdx, %rdx
	js	.LBB34_3
# BB#1:                                 # %cond.end
	movq	8(%rdi), %rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	jb	.LBB34_4
# BB#2:                                 # %cond.end.5
	testq	%rcx, %rcx
	cmoveq	%rcx, %rax
	popq	%rdx
	retq
.LBB34_3:                               # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$558, %edx              # imm = 0x22E
	movl	$.L__PRETTY_FUNCTION__.opj_stream_get_number_byte_left, %ecx
	callq	__assert_fail
.LBB34_4:                               # %cond.false.4
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$559, %edx              # imm = 0x22F
	movl	$.L__PRETTY_FUNCTION__.opj_stream_get_number_byte_left, %ecx
	callq	__assert_fail
.Lfunc_end34:
	.size	opj_stream_get_number_byte_left, .Lfunc_end34-opj_stream_get_number_byte_left
	.cfi_endproc

	.globl	opj_stream_skip
	.align	16, 0x90
	.type	opj_stream_skip,@function
opj_stream_skip:                        # @opj_stream_skip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	js	.LBB35_1
# BB#2:                                 # %cond.end
	movq	64(%rdi), %rax
	popq	%rcx
	jmpq	*%rax                   # TAILCALL
.LBB35_1:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$567, %edx              # imm = 0x237
	movl	$.L__PRETTY_FUNCTION__.opj_stream_skip, %ecx
	callq	__assert_fail
.Lfunc_end35:
	.size	opj_stream_skip, .Lfunc_end35-opj_stream_skip
	.cfi_endproc

	.globl	opj_stream_seek
	.align	16, 0x90
	.type	opj_stream_seek,@function
opj_stream_seek:                        # @opj_stream_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp95:
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	js	.LBB36_1
# BB#2:                                 # %cond.end
	movq	72(%rdi), %rax
	popq	%rcx
	jmpq	*%rax                   # TAILCALL
.LBB36_1:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$614, %edx              # imm = 0x266
	movl	$.L__PRETTY_FUNCTION__.opj_stream_seek, %ecx
	callq	__assert_fail
.Lfunc_end36:
	.size	opj_stream_seek, .Lfunc_end36-opj_stream_seek
	.cfi_endproc

	.globl	opj_stream_has_seek
	.align	16, 0x90
	.type	opj_stream_has_seek,@function
opj_stream_has_seek:                    # @opj_stream_has_seek
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$opj_stream_default_seek, %eax
	cmpq	%rax, 40(%rdi)
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end37:
	.size	opj_stream_has_seek, .Lfunc_end37-opj_stream_has_seek
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p_nb_bytes > 0 && p_nb_bytes <= sizeof(OPJ_UINT32)"
	.size	.L.str, 51

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./openjpeg/libopenjpeg/cio.c"
	.size	.L.str.1, 29

	.type	.L__PRETTY_FUNCTION__.opj_write_bytes_BE,@object # @__PRETTY_FUNCTION__.opj_write_bytes_BE
.L__PRETTY_FUNCTION__.opj_write_bytes_BE:
	.asciz	"void opj_write_bytes_BE(OPJ_BYTE *, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_write_bytes_BE, 60

	.type	.L__PRETTY_FUNCTION__.opj_write_bytes_LE,@object # @__PRETTY_FUNCTION__.opj_write_bytes_LE
.L__PRETTY_FUNCTION__.opj_write_bytes_LE:
	.asciz	"void opj_write_bytes_LE(OPJ_BYTE *, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_write_bytes_LE, 60

	.type	.L__PRETTY_FUNCTION__.opj_read_bytes_BE,@object # @__PRETTY_FUNCTION__.opj_read_bytes_BE
.L__PRETTY_FUNCTION__.opj_read_bytes_BE:
	.asciz	"void opj_read_bytes_BE(const OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_read_bytes_BE, 67

	.type	.L__PRETTY_FUNCTION__.opj_read_bytes_LE,@object # @__PRETTY_FUNCTION__.opj_read_bytes_LE
.L__PRETTY_FUNCTION__.opj_read_bytes_LE:
	.asciz	"void opj_read_bytes_LE(const OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_read_bytes_LE, 67

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Stream reached its end !\n"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Error on writing stream!\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"p_size >= 0"
	.size	.L.str.4, 12

	.type	.L__PRETTY_FUNCTION__.opj_stream_read_skip,@object # @__PRETTY_FUNCTION__.opj_stream_read_skip
.L__PRETTY_FUNCTION__.opj_stream_read_skip:
	.asciz	"OPJ_OFF_T opj_stream_read_skip(opj_stream_private_t *, OPJ_OFF_T, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_stream_read_skip, 85

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Stream error!\n"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"p_stream->m_byte_offset >= 0"
	.size	.L.str.6, 29

	.type	.L__PRETTY_FUNCTION__.opj_stream_get_number_byte_left,@object # @__PRETTY_FUNCTION__.opj_stream_get_number_byte_left
.L__PRETTY_FUNCTION__.opj_stream_get_number_byte_left:
	.asciz	"OPJ_OFF_T opj_stream_get_number_byte_left(const opj_stream_private_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_stream_get_number_byte_left, 72

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"p_stream->m_user_data_length >= (OPJ_UINT64)p_stream->m_byte_offset"
	.size	.L.str.7, 68

	.type	.L__PRETTY_FUNCTION__.opj_stream_skip,@object # @__PRETTY_FUNCTION__.opj_stream_skip
.L__PRETTY_FUNCTION__.opj_stream_skip:
	.asciz	"OPJ_OFF_T opj_stream_skip(opj_stream_private_t *, OPJ_OFF_T, opj_event_mgr_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_stream_skip, 80

	.type	.L__PRETTY_FUNCTION__.opj_stream_seek,@object # @__PRETTY_FUNCTION__.opj_stream_seek
.L__PRETTY_FUNCTION__.opj_stream_seek:
	.asciz	"OPJ_BOOL opj_stream_seek(opj_stream_private_t *, OPJ_OFF_T, struct opj_event_mgr *)"
	.size	.L__PRETTY_FUNCTION__.opj_stream_seek, 84


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
