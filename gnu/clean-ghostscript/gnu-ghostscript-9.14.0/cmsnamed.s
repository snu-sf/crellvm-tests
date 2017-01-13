	.text
	.file	"cmsnamed.bc"
	.globl	cmsMLUalloc
	.align	16, 0x90
	.type	cmsMLUalloc,@function
cmsMLUalloc:                            # @cmsMLUalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	testl	%esi, %esi
	movl	$2, %ebp
	cmovnel	%esi, %ebp
	movl	$40, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.end.3
	movq	%r14, (%rbx)
	movl	$12, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %if.end.9
	movl	%ebp, 8(%rbx)
	movl	$0, 12(%rbx)
	movq	%rbx, %rax
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cmsMLUalloc, .Lfunc_end0-cmsMLUalloc
	.cfi_endproc

	.globl	cmsMLUsetASCII
	.align	16, 0x90
	.type	cmsMLUsetASCII,@function
cmsMLUsetASCII:                         # @cmsMLUsetASCII
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 64
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r14
	movzwl	(%rbx), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %bx
	movzwl	(%rbp), %edi
	callq	_cmsAdjustEndianess16
	testq	%r13, %r13
	je	.LBB1_17
# BB#1:                                 # %if.end
	leal	1(%r14), %r12d
	movq	(%r13), %rdi
	movl	$4, %edx
	movl	%r12d, %esi
	movw	%ax, %bp
	callq	_cmsCalloc
	movw	%bp, %r9w
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_17
# BB#2:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	je	.LBB1_16
# BB#3:                                 # %for.body.preheader
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	%r14d, %eax
	incq	%rax
	leal	1(%r14), %edi
	andl	$7, %edi
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	subq	%rdi, %rdx
	je	.LBB1_9
# BB#4:                                 # %vector.memcheck
	movq	%r14, %rdi
	andq	%rsi, %rdi
	leaq	(%r15,%rdi), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %rbp
	ja	.LBB1_6
# BB#5:                                 # %vector.memcheck
	leaq	(%rbp,%rdi,4), %rsi
	cmpq	%r15, %rsi
	jae	.LBB1_9
.LBB1_6:                                # %vector.body.preheader
	movw	%bx, %r8w
	leaq	4(%r15), %rcx
	leaq	16(%rbp), %rsi
	movl	%r14d, %edi
	incq	%rdi
	leal	1(%r14), %ebx
	andl	$7, %ebx
	subq	%rbx, %rdi
	.align	16, 0x90
.LBB1_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	movd	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm1, (%rsi)
	addq	$8, %rcx
	addq	$32, %rsi
	addq	$-8, %rdi
	jne	.LBB1_7
# BB#8:
	movq	%rdx, %rcx
	movw	%r8w, %bx
.LBB1_9:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB1_16
# BB#10:                                # %for.body.preheader26
	leal	2(%r14), %edx
	leal	1(%rcx), %esi
	subl	%esi, %edx
	leal	1(%r14), %eax
	subl	%esi, %eax
	testb	$3, %dl
	je	.LBB1_13
# BB#11:                                # %for.body.prol.preheader
	movb	%r14b, %dl
	addb	$2, %dl
	leal	1(%rcx), %esi
	subb	%sil, %dl
	movzbl	%dl, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_12:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%r15,%rcx), %esi
	movl	%esi, (%rbp,%rcx,4)
	incq	%rcx
	incl	%edx
	jne	.LBB1_12
.LBB1_13:                               # %for.body.preheader26.split
	cmpl	$3, %eax
	jb	.LBB1_16
# BB#14:                                # %for.body.preheader26.split.split
	leal	1(%r14), %eax
	subl	%ecx, %eax
	leaq	12(%rbp,%rcx,4), %rdx
	leaq	3(%rcx,%r15), %rcx
	.align	16, 0x90
.LBB1_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-3(%rcx), %esi
	movl	%esi, -12(%rdx)
	movsbl	-2(%rcx), %esi
	movl	%esi, -8(%rdx)
	movsbl	-1(%rcx), %esi
	movl	%esi, -4(%rdx)
	movsbl	(%rcx), %esi
	movl	%esi, (%rdx)
	addq	$16, %rdx
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB1_15
.LBB1_16:                               # %for.end
	shll	$2, %r12d
	movzwl	%bx, %ecx
	movzwl	%r9w, %r8d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%rbp, %rdx
	callq	AddMLUBlock
	movl	%eax, %ebx
	movq	(%r13), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	movl	%ebx, %eax
	jmp	.LBB1_18
.LBB1_17:                               # %cleanup
	xorl	%eax, %eax
.LBB1_18:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmsMLUsetASCII, .Lfunc_end1-cmsMLUsetASCII
	.cfi_endproc

	.align	16, 0x90
	.type	AddMLUBlock,@function
AddMLUBlock:                            # @AddMLUBlock
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
	subq	$24, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 80
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_1
# BB#2:                                 # %if.end
	movl	8(%rbx), %ebp
	movl	12(%rbx), %ecx
	cmpl	%ebp, %ecx
	jl	.LBB2_6
# BB#3:                                 # %if.end.i
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	leal	(,%rbp,8), %eax
	leal	(%rax,%rax,2), %edx
	callq	_cmsRealloc
	testq	%rax, %rax
	je	.LBB2_4
# BB#5:                                 # %GrowMLUtable.exit
	addl	%ebp, %ebp
	movq	%rax, 16(%rbx)
	movl	%ebp, 8(%rbx)
	movl	12(%rbx), %ecx
.LBB2_6:                                # %for.cond.preheader.i
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	%r14d, 20(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB2_12
# BB#7:                                 # %for.body.lr.ph.i
	movq	16(%rbx), %rax
	movslq	%ecx, %rcx
	addq	$2, %rax
	xorl	%edx, %edx
	movl	20(%rsp), %esi          # 4-byte Reload
	movzwl	%si, %esi
	movzwl	%r15w, %edi
	.align	16, 0x90
.LBB2_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %ebp
	cmpl	%esi, %ebp
	jne	.LBB2_10
# BB#9:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB2_8 Depth=1
	movzwl	-2(%rax), %ebp
	cmpl	%edi, %ebp
	je	.LBB2_11
.LBB2_10:                               # %for.inc.i
                                        #   in Loop: Header=BB2_8 Depth=1
	incq	%rdx
	addq	$12, %rax
	cmpq	%rcx, %rdx
	jl	.LBB2_8
	jmp	.LBB2_12
.LBB2_1:
	xorl	%ecx, %ecx
	jmp	.LBB2_21
.LBB2_4:
	xorl	%ecx, %ecx
	jmp	.LBB2_21
.LBB2_11:                               # %SearchMLUEntry.exit
	xorl	%ecx, %ecx
	testl	%edx, %edx
	jns	.LBB2_21
.LBB2_12:                               # %while.cond.preheader
	movl	24(%rbx), %ebp
	movl	28(%rbx), %r12d
	movl	%ebp, %eax
	subl	%r12d, %eax
	cmpl	%r13d, %eax
	jae	.LBB2_19
# BB#13:                                # %if.end.i.34.lr.ph
	movl	$256, %r14d             # imm = 0x100
	.align	16, 0x90
.LBB2_14:                               # %if.end.i.34
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	leal	(%rax,%rax), %ebp
	testl	%eax, %eax
	cmovel	%r14d, %ebp
	cmpl	%eax, %ebp
	jb	.LBB2_15
# BB#16:                                # %if.end.8.i
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	(%rbx), %rdi
	movq	32(%rbx), %rsi
	movl	%ebp, %edx
	callq	_cmsRealloc
	testq	%rax, %rax
	je	.LBB2_17
# BB#18:                                # %GrowMLUpool.exit
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	%rax, 32(%rbx)
	movl	%ebp, 24(%rbx)
	movl	28(%rbx), %r12d
	movl	%ebp, %ecx
	subl	%r12d, %ecx
	cmpl	%r13d, %ecx
	jb	.LBB2_14
	jmp	.LBB2_20
.LBB2_19:                               # %while.end
	movq	32(%rbx), %rax
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB2_21
.LBB2_20:                               # %if.end.18
	movl	%r12d, %edi
	addq	%rax, %rdi
	movl	%r13d, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	memmove
	addl	%r13d, 28(%rbx)
	movslq	12(%rbx), %rax
	movq	16(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r12d, 4(%rcx,%rdx,4)
	movl	%r13d, 8(%rcx,%rdx,4)
	movl	20(%rsp), %esi          # 4-byte Reload
	movw	%si, 2(%rcx,%rdx,4)
	movw	%r15w, (%rcx,%rdx,4)
	leal	1(%rax), %eax
	movl	%eax, 12(%rbx)
	movl	$1, %ecx
	jmp	.LBB2_21
.LBB2_15:
	xorl	%ecx, %ecx
	jmp	.LBB2_21
.LBB2_17:
	xorl	%ecx, %ecx
.LBB2_21:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	AddMLUBlock, .Lfunc_end2-AddMLUBlock
	.cfi_endproc

	.globl	cmsMLUsetWide
	.align	16, 0x90
	.type	cmsMLUsetWide,@function
cmsMLUsetWide:                          # @cmsMLUsetWide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rdi, %r14
	movzwl	(%rsi), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r15w
	movzwl	(%rbp), %edi
	callq	_cmsAdjustEndianess16
	testq	%r14, %r14
	je	.LBB3_5
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB3_5
# BB#2:                                 # %while.cond.i.preheader
	leaq	-4(%rbx), %rsi
	.align	16, 0x90
.LBB3_3:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rsi)
	leaq	4(%rsi), %rsi
	jne	.LBB3_3
# BB#4:                                 # %mywcslen.exit
	subl	%ebx, %esi
	addl	$4, %esi
	andl	$-4, %esi
	movzwl	%r15w, %ecx
	movzwl	%ax, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	AddMLUBlock             # TAILCALL
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cmsMLUsetWide, .Lfunc_end3-cmsMLUsetWide
	.cfi_endproc

	.globl	cmsMLUdup
	.align	16, 0x90
	.type	cmsMLUdup,@function
cmsMLUdup:                              # @cmsMLUdup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB4_17
# BB#1:                                 # %if.end
	movq	(%r15), %rbx
	movl	12(%r15), %eax
	testl	%eax, %eax
	movl	$2, %ebp
	cmovnel	%eax, %ebp
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB4_17
# BB#2:                                 # %if.end.3.i
	movq	%rbx, (%r14)
	movl	$12, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 16(%r14)
	testq	%rax, %rax
	je	.LBB4_3
# BB#4:                                 # %if.end.3
	movl	%ebp, 8(%r14)
	movl	$0, 12(%r14)
	movslq	12(%r15), %rcx
	cmpl	%ecx, %ebp
	jl	.LBB4_8
# BB#5:                                 # %lor.lhs.false
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB4_8
# BB#6:                                 # %if.end.12
	shlq	$2, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%rax, %rdi
	callq	memmove
	movl	12(%r15), %eax
	movl	%eax, 12(%r14)
	movl	28(%r15), %esi
	testl	%esi, %esi
	je	.LBB4_7
# BB#14:                                # %if.else
	movq	(%r15), %rdi
	callq	_cmsMalloc
	movq	%rax, 32(%r14)
	testq	%rax, %rax
	je	.LBB4_8
# BB#15:                                # %lor.lhs.false.36
	movl	28(%r15), %edx
	movl	%edx, 24(%r14)
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB4_8
# BB#16:                                # %if.end.41
	movq	%rax, %rdi
	callq	memmove
	movl	28(%r15), %eax
	movl	%eax, 28(%r14)
	movq	%r14, %rax
	jmp	.LBB4_17
.LBB4_3:                                # %if.then.8.i
	movq	%rbx, %rdi
	jmp	.LBB4_13
.LBB4_7:                                # %if.end.31.thread
	movq	$0, 32(%r14)
	movl	$0, 24(%r14)
.LBB4_8:                                # %if.then.i
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_10
# BB#9:                                 # %if.then.2.i
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB4_10:                               # %if.end.i
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_12
# BB#11:                                # %if.then.5.i
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB4_12:                               # %cmsMLUfree.exit
	movq	(%r14), %rdi
.LBB4_13:                               # %cleanup
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB4_17:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmsMLUdup, .Lfunc_end4-cmsMLUdup
	.cfi_endproc

	.globl	cmsMLUfree
	.align	16, 0x90
	.type	cmsMLUfree,@function
cmsMLUfree:                             # @cmsMLUfree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_6
# BB#1:                                 # %if.then
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB5_3:                                # %if.end
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_5
# BB#4:                                 # %if.then.5
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB5_5:                                # %if.end.8
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_cmsFree                # TAILCALL
.LBB5_6:                                # %if.end.10
	popq	%rbx
	retq
.Lfunc_end5:
	.size	cmsMLUfree, .Lfunc_end5-cmsMLUfree
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	cmsMLUgetASCII
	.align	16, 0x90
	.type	cmsMLUgetASCII,@function
cmsMLUgetASCII:                         # @cmsMLUgetASCII
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 64
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	%rdi, %r13
	movzwl	(%rsi), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r12w
	movzwl	(%rbp), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r9w
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB6_22
# BB#1:                                 # %if.end.i
	cmpl	$0, 8(%r13)
	jle	.LBB6_22
# BB#2:                                 # %for.cond.preheader.i
	movslq	12(%r13), %rdi
	testq	%rdi, %rdi
	movq	16(%r13), %r8
	movl	$-1, %ebp
	jle	.LBB6_7
# BB#3:                                 # %for.body.lr.ph.i
	leaq	2(%r8), %rdx
	movl	$-1, %ebp
	xorl	%esi, %esi
	movzwl	%r12w, %ecx
	movzwl	%r9w, %r9d
	.align	16, 0x90
.LBB6_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rdx), %ebx
	cmpl	%ecx, %ebx
	jne	.LBB6_6
# BB#5:                                 # %if.then.8.i
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$-1, %ebp
	cmovel	%esi, %ebp
	movzwl	(%rdx), %ebx
	cmpl	%r9d, %ebx
	je	.LBB6_8
.LBB6_6:                                # %for.inc.i
                                        #   in Loop: Header=BB6_4 Depth=1
	incq	%rsi
	addq	$12, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB6_4
.LBB6_7:                                # %for.end.i
	xorl	%esi, %esi
	cmpl	$-1, %ebp
	movslq	%ebp, %rcx
	cmovneq	%rcx, %rsi
.LBB6_8:                                # %_cmsMLUgetWide.exit
	leaq	(%rsi,%rsi,2), %rcx
	movl	4(%r8,%rcx,4), %ecx
	addq	32(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB6_22
# BB#9:                                 # %if.end.5
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%r8,%rdx,4), %edx
	shrl	$2, %edx
	testq	%r15, %r15
	je	.LBB6_10
# BB#11:                                # %if.end.10
	testl	%r14d, %r14d
	je	.LBB6_22
# BB#12:                                # %if.end.14
	leal	1(%rdx), %esi
	leal	-1(%r14), %eax
	cmpl	%r14d, %esi
	cmovbel	%edx, %eax
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.LBB6_21
# BB#13:                                # %for.body.lr.ph
	movl	%eax, %r9d
	cmpl	%r14d, %esi
	movl	%r14d, %r8d
	cmovbl	%esi, %r8d
	xorl	%edi, %edi
	decl	%r8d
	je	.LBB6_20
# BB#14:                                # %overflow.checked
	movl	%r8d, %ebp
	andl	$7, %ebp
	xorl	%edi, %edi
	cmpl	%ebp, %r8d
	je	.LBB6_19
# BB#15:                                # %vector.memcheck
	cmpl	%r14d, %esi
	cmovael	%r14d, %esi
	decl	%esi
	leaq	-4(%rcx,%rsi,4), %rbx
	xorl	%edi, %edi
	cmpq	%r15, %rbx
	jb	.LBB6_17
# BB#16:                                # %vector.memcheck
	leaq	-1(%rsi,%r15), %rsi
	cmpq	%rsi, %rcx
	jbe	.LBB6_19
.LBB6_17:                               # %vector.body.preheader
	movq	%r8, %rdi
	subq	%rbp, %rdi
	leaq	16(%rcx), %rbx
	leaq	4(%r15), %rsi
	notl	%r14d
	movl	$-2, %ebp
	movl	$-2, %r10d
	subl	%edx, %r10d
	cmpl	%r10d, %r14d
	cmoval	%r14d, %r10d
	subl	%r10d, %ebp
	movl	%ebp, %edx
	andl	$7, %edx
	subq	%rdx, %rbp
	movdqa	.LCPI6_0(%rip), %xmm0   # xmm0 = [255,255,255,255]
	.align	16, 0x90
.LBB6_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rbx), %xmm1
	movdqu	(%rbx), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rsi)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rsi)
	addq	$32, %rbx
	addq	$8, %rsi
	addq	$-8, %rbp
	jne	.LBB6_18
.LBB6_19:                               # %middle.block
	cmpq	%rdi, %r8
	je	.LBB6_21
	.align	16, 0x90
.LBB6_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rcx,%rdi,4), %dl
	movb	%dl, (%r15,%rdi)
	incq	%rdi
	cmpq	%r9, %rdi
	jb	.LBB6_20
.LBB6_21:                               # %for.end
	movb	$0, (%r15,%r9)
	incl	%eax
	jmp	.LBB6_22
.LBB6_10:                               # %if.then.9
	incl	%edx
	movl	%edx, %eax
.LBB6_22:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cmsMLUgetASCII, .Lfunc_end6-cmsMLUgetASCII
	.cfi_endproc

	.globl	cmsMLUgetWide
	.align	16, 0x90
	.type	cmsMLUgetWide,@function
cmsMLUgetWide:                          # @cmsMLUgetWide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 64
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %r14
	movq	%rdx, %rbp
	movq	%rdi, %r13
	movzwl	(%rsi), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r12w
	movzwl	(%rbp), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r9w
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB7_13
# BB#1:                                 # %if.end.i
	cmpl	$0, 8(%r13)
	jle	.LBB7_13
# BB#2:                                 # %for.cond.preheader.i
	movslq	12(%r13), %rsi
	testq	%rsi, %rsi
	movq	16(%r13), %r8
	movl	$-1, %ebp
	jle	.LBB7_7
# BB#3:                                 # %for.body.lr.ph.i
	leaq	2(%r8), %rdx
	movl	$-1, %ebp
	xorl	%edi, %edi
	movzwl	%r12w, %ecx
	movzwl	%r9w, %r9d
	.align	16, 0x90
.LBB7_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rdx), %ebx
	cmpl	%ecx, %ebx
	jne	.LBB7_6
# BB#5:                                 # %if.then.8.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$-1, %ebp
	cmovel	%edi, %ebp
	movzwl	(%rdx), %ebx
	cmpl	%r9d, %ebx
	je	.LBB7_8
.LBB7_6:                                # %for.inc.i
                                        #   in Loop: Header=BB7_4 Depth=1
	incq	%rdi
	addq	$12, %rdx
	cmpq	%rsi, %rdi
	jl	.LBB7_4
.LBB7_7:                                # %for.end.i
	xorl	%edi, %edi
	cmpl	$-1, %ebp
	movslq	%ebp, %rcx
	cmovneq	%rcx, %rdi
.LBB7_8:                                # %_cmsMLUgetWide.exit
	leaq	(%rdi,%rdi,2), %rcx
	movl	4(%r8,%rcx,4), %esi
	addq	32(%r13), %rsi
	leaq	(%rdi,%rdi,2), %rcx
	movl	8(%r8,%rcx,4), %ecx
	testq	%rsi, %rsi
	je	.LBB7_13
# BB#9:                                 # %if.end.5
	testq	%r14, %r14
	je	.LBB7_10
# BB#11:                                # %if.end.9
	testl	%r15d, %r15d
	je	.LBB7_13
# BB#12:                                # %if.end.13
	movl	%r15d, %eax
	movq	%rcx, %rdx
	addq	$4, %rdx
	addl	$-4, %r15d
	cmpq	%rdx, %rax
	cmovael	%ecx, %r15d
	movl	%r15d, %edx
	movq	%r14, %rdi
	callq	memmove
	movl	%r15d, %eax
	andl	$-4, %eax
	movl	$0, (%r14,%rax)
	addl	$4, %r15d
	movl	%r15d, %eax
	jmp	.LBB7_13
.LBB7_10:                               # %if.then.7
	addl	$4, %ecx
	movl	%ecx, %eax
.LBB7_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cmsMLUgetWide, .Lfunc_end7-cmsMLUgetWide
	.cfi_endproc

	.globl	cmsMLUgetTranslation
	.align	16, 0x90
	.type	cmsMLUgetTranslation,@function
cmsMLUgetTranslation:                   # @cmsMLUgetTranslation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 64
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movzwl	(%rsi), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r12w
	movzwl	(%rbx), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, %r13w
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB8_11
# BB#1:                                 # %if.end.i
	cmpl	$0, 8(%r14)
	jle	.LBB8_11
# BB#2:                                 # %for.cond.preheader.i
	movslq	12(%r14), %rdx
	testq	%rdx, %rdx
	movq	16(%r14), %r8
	movl	$-1, %esi
	jle	.LBB8_8
# BB#3:                                 # %for.body.lr.ph.i
	leaq	2(%r8), %rdi
	movl	$-1, %esi
	xorl	%ebx, %ebx
	movzwl	%r12w, %ecx
	movzwl	%r13w, %r9d
	.align	16, 0x90
.LBB8_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rdi), %ebp
	cmpl	%ecx, %ebp
	jne	.LBB8_7
# BB#5:                                 # %if.then.8.i
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$-1, %esi
	cmovel	%ebx, %esi
	movzwl	(%rdi), %ebp
	cmpl	%r9d, %ebp
	je	.LBB8_6
.LBB8_7:                                # %for.inc.i
                                        #   in Loop: Header=BB8_4 Depth=1
	incq	%rbx
	addq	$12, %rdi
	cmpq	%rdx, %rbx
	jl	.LBB8_4
.LBB8_8:                                # %for.end.i
	xorl	%ecx, %ecx
	cmpl	$-1, %esi
	movslq	%esi, %rdx
	cmovneq	%rdx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movzwl	(%r8,%rcx,4), %r12d
	movzwl	2(%r8,%rcx,4), %r13d
	jmp	.LBB8_9
.LBB8_6:                                # %if.then.17.i
	leaq	(%rbx,%rbx,2), %rcx
.LBB8_9:                                # %_cmsMLUgetWide.exit
	movl	4(%r8,%rcx,4), %ecx
	addq	32(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB8_11
# BB#10:                                # %if.end.5
	movzwl	%r12w, %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, (%r15)
	movzwl	%r13w, %edi
	callq	_cmsAdjustEndianess16
	movq	(%rsp), %rcx            # 8-byte Reload
	movw	%ax, (%rcx)
	movb	$0, 2(%rcx)
	movb	$0, 2(%r15)
	movl	$1, %eax
.LBB8_11:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cmsMLUgetTranslation, .Lfunc_end8-cmsMLUgetTranslation
	.cfi_endproc

	.globl	cmsMLUtranslationsCount
	.align	16, 0x90
	.type	cmsMLUtranslationsCount,@function
cmsMLUtranslationsCount:                # @cmsMLUtranslationsCount
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB9_2
# BB#1:                                 # %if.end
	movl	12(%rdi), %eax
.LBB9_2:                                # %return
	retq
.Lfunc_end9:
	.size	cmsMLUtranslationsCount, .Lfunc_end9-cmsMLUtranslationsCount
	.cfi_endproc

	.globl	cmsMLUtranslationsCodes
	.align	16, 0x90
	.type	cmsMLUtranslationsCodes,@function
cmsMLUtranslationsCodes:                # @cmsMLUtranslationsCodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp95:
	.cfi_def_cfa_offset 48
.Ltmp96:
	.cfi_offset %rbx, -40
.Ltmp97:
	.cfi_offset %r12, -32
.Ltmp98:
	.cfi_offset %r14, -24
.Ltmp99:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB10_3
# BB#1:                                 # %if.end
	cmpl	%esi, 12(%rdi)
	jbe	.LBB10_3
# BB#2:                                 # %if.end.4
	movl	%esi, %eax
	movq	16(%rdi), %r15
	leaq	(%rax,%rax,2), %rbx
	movzwl	(%r15,%rbx,4), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, (%r12)
	movzwl	2(%r15,%rbx,4), %edi
	callq	_cmsAdjustEndianess16
	movw	%ax, (%r14)
	movl	$1, %eax
.LBB10_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	cmsMLUtranslationsCodes, .Lfunc_end10-cmsMLUtranslationsCodes
	.cfi_endproc

	.globl	cmsAllocNamedColorList
	.align	16, 0x90
	.type	cmsAllocNamedColorList,@function
cmsAllocNamedColorList:                 # @cmsAllocNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 64
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r13
	movl	$96, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB11_6
# BB#1:                                 # %if.end
	movl	%r14d, 4(%rsp)          # 4-byte Spill
	movq	$0, 80(%rbp)
	movl	$0, (%rbp)
	movq	%r13, 88(%rbp)
	movl	4(%rbp), %eax
	cmpl	%ebx, %eax
	jae	.LBB11_5
# BB#2:                                 # %if.end.i.lr.ph
	movl	$64, %r13d
	.align	16, 0x90
.LBB11_3:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rax), %r14d
	testl	%eax, %eax
	cmovel	%r13d, %r14d
	cmpl	$102401, %r14d          # imm = 0x19001
	jae	.LBB11_4
# BB#7:                                 # %if.end.7.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	80(%rbp), %rsi
	movq	88(%rbp), %rdi
	imull	$294, %r14d, %edx       # imm = 0x126
	callq	_cmsRealloc
	testq	%rax, %rax
	je	.LBB11_8
# BB#9:                                 # %if.end.13.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	%rax, 80(%rbp)
	movl	%r14d, 4(%rbp)
	movl	%r14d, %eax
	jmp	.LBB11_4
.LBB11_8:                               # %if.end.7.i.while.cond.backedge_crit_edge
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	4(%rbp), %eax
	.align	16, 0x90
.LBB11_4:                               # %while.cond.backedge
                                        #   in Loop: Header=BB11_3 Depth=1
	cmpl	%ebx, %eax
	jb	.LBB11_3
.LBB11_5:                               # %while.end
	leaq	12(%rbp), %rdi
	movl	$32, %edx
	movq	%r12, %rsi
	callq	strncpy
	movq	%rbp, %rdi
	addq	$45, %rdi
	movl	$32, %edx
	movq	%r15, %rsi
	callq	strncpy
	movb	$0, 77(%rbp)
	movb	$0, 44(%rbp)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 8(%rbp)
	movq	%rbp, %rax
.LBB11_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cmsAllocNamedColorList, .Lfunc_end11-cmsAllocNamedColorList
	.cfi_endproc

	.globl	cmsFreeNamedColorList
	.align	16, 0x90
	.type	cmsFreeNamedColorList,@function
cmsFreeNamedColorList:                  # @cmsFreeNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB12_4
# BB#1:                                 # %if.end
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB12_3
# BB#2:                                 # %if.then.1
	movq	88(%rbx), %rdi
	callq	_cmsFree
.LBB12_3:                               # %if.end.3
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_cmsFree                # TAILCALL
.LBB12_4:                               # %return
	popq	%rbx
	retq
.Lfunc_end12:
	.size	cmsFreeNamedColorList, .Lfunc_end12-cmsFreeNamedColorList
	.cfi_endproc

	.globl	cmsDupNamedColorList
	.align	16, 0x90
	.type	cmsDupNamedColorList,@function
cmsDupNamedColorList:                   # @cmsDupNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp121:
	.cfi_def_cfa_offset 64
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB13_7
# BB#1:                                 # %if.end
	movq	88(%r14), %rdi
	movl	(%r14), %esi
	movl	8(%r14), %edx
	leaq	12(%r14), %r12
	leaq	45(%r14), %r15
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	cmsAllocNamedColorList
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB13_7
# BB#2:                                 # %while.cond.preheader
	movl	4(%rbx), %eax
	cmpl	4(%r14), %eax
	jae	.LBB13_6
# BB#3:                                 # %if.end.i.lr.ph
	movl	$64, %r13d
	.align	16, 0x90
.LBB13_4:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rax), %ebp
	testl	%eax, %eax
	cmovel	%r13d, %ebp
	cmpl	$102401, %ebp           # imm = 0x19001
	jae	.LBB13_5
# BB#8:                                 # %if.end.7.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	80(%rbx), %rsi
	movq	88(%rbx), %rdi
	imull	$294, %ebp, %edx        # imm = 0x126
	callq	_cmsRealloc
	testq	%rax, %rax
	je	.LBB13_9
# BB#10:                                # %if.end.13.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, 80(%rbx)
	movl	%ebp, 4(%rbx)
	movl	%ebp, %eax
	jmp	.LBB13_5
.LBB13_9:                               # %if.end.7.i.while.cond.backedge_crit_edge
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	4(%rbx), %eax
	.align	16, 0x90
.LBB13_5:                               # %while.cond.backedge
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpl	4(%r14), %eax
	jb	.LBB13_4
.LBB13_6:                               # %while.end
	leaq	12(%rbx), %rdi
	movl	$33, %edx
	movq	%r12, %rsi
	callq	memmove
	movq	%rbx, %rdi
	addq	$45, %rdi
	movl	$33, %edx
	movq	%r15, %rsi
	callq	memmove
	movl	8(%r14), %eax
	movl	%eax, 8(%rbx)
	movq	80(%rbx), %rdi
	movq	80(%r14), %rsi
	movl	(%r14), %eax
	imulq	$294, %rax, %rdx        # imm = 0x126
	callq	memmove
	movl	(%r14), %eax
	movl	%eax, (%rbx)
	movq	%rbx, %rax
.LBB13_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cmsDupNamedColorList, .Lfunc_end13-cmsDupNamedColorList
	.cfi_endproc

	.globl	cmsAppendNamedColor
	.align	16, 0x90
	.type	cmsAppendNamedColor,@function
cmsAppendNamedColor:                    # @cmsAppendNamedColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 64
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB14_23
# BB#1:                                 # %if.end
	movl	(%r12), %ecx
	movl	4(%r12), %eax
	incl	%ecx
	cmpl	%eax, %ecx
	jbe	.LBB14_5
# BB#2:                                 # %if.end.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$64, %r13d
	cmovnel	%ecx, %r13d
	cmpl	$102400, %r13d          # imm = 0x19000
	ja	.LBB14_23
# BB#3:                                 # %if.end.7.i
	movq	80(%r12), %rsi
	movq	88(%r12), %rdi
	imull	$294, %r13d, %edx       # imm = 0x126
	callq	_cmsRealloc
	testq	%rax, %rax
	je	.LBB14_23
# BB#4:                                 # %GrowNamedColorList.exit
	movq	%rax, 80(%r12)
	movl	%r13d, 4(%r12)
.LBB14_5:                               # %for.cond.preheader
	movl	8(%r12), %edx
	testq	%rdx, %rdx
	je	.LBB14_6
# BB#9:                                 # %for.body.lr.ph
	movl	(%r12), %ecx
	movq	80(%r12), %rax
	xorl	%esi, %esi
	testb	$1, %dl
	je	.LBB14_14
# BB#10:                                # %for.body.prol
	testq	%rbx, %rbx
	je	.LBB14_11
# BB#12:                                # %cond.false.prol
	movzwl	(%rbx), %esi
	jmp	.LBB14_13
.LBB14_6:                               # %for.cond.preheader.for.cond.14.preheader_crit_edge
	movl	(%r12), %ecx
	leaq	80(%r12), %r13
	movq	80(%r12), %rax
	jmp	.LBB14_7
.LBB14_11:
	xorl	%esi, %esi
.LBB14_13:                              # %cond.end.prol
	imulq	$294, %rcx, %rdi        # imm = 0x126
	movw	%si, 262(%rax,%rdi)
	movl	$1, %esi
.LBB14_14:                              # %for.body.lr.ph.split
	leaq	80(%r12), %r13
	cmpl	$1, %edx
	je	.LBB14_7
# BB#15:                                # %for.body.lr.ph.split.split
	imulq	$294, %rcx, %rdi        # imm = 0x126
	leaq	264(%rax,%rdi), %rdi
	.align	16, 0x90
.LBB14_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB14_17
# BB#18:                                # %cond.false
                                        #   in Loop: Header=BB14_16 Depth=1
	movzwl	(%rbx,%rsi,2), %ebp
	jmp	.LBB14_19
	.align	16, 0x90
.LBB14_17:                              #   in Loop: Header=BB14_16 Depth=1
	xorl	%ebp, %ebp
.LBB14_19:                              # %cond.end
                                        #   in Loop: Header=BB14_16 Depth=1
	testq	%rbx, %rbx
	movw	%bp, -2(%rdi,%rsi,2)
	je	.LBB14_20
# BB#27:                                # %cond.false.1
                                        #   in Loop: Header=BB14_16 Depth=1
	movzwl	2(%rbx,%rsi,2), %ebp
	jmp	.LBB14_28
	.align	16, 0x90
.LBB14_20:                              #   in Loop: Header=BB14_16 Depth=1
	xorl	%ebp, %ebp
.LBB14_28:                              # %cond.end.1
                                        #   in Loop: Header=BB14_16 Depth=1
	movw	%bp, (%rdi,%rsi,2)
	addq	$2, %rsi
	cmpq	%rdx, %rsi
	jb	.LBB14_16
.LBB14_7:                               # %for.cond.14.preheader
	movl	%ecx, %ecx
	testq	%r15, %r15
	je	.LBB14_8
# BB#24:                                # %cond.false.21.2
	movw	(%r15), %dx
	imulq	$294, %rcx, %rsi        # imm = 0x126
	movw	%dx, 256(%rax,%rsi)
	movw	2(%r15), %dx
	movw	%dx, 258(%rax,%rsi)
	movzwl	4(%r15), %edx
	jmp	.LBB14_25
.LBB14_8:                               # %cond.end.25.1.thread
	imulq	$294, %rcx, %rdx        # imm = 0x126
	movl	$0, 256(%rax,%rdx)
	xorl	%edx, %edx
.LBB14_25:                              # %cond.end.25.2
	imulq	$294, %rcx, %rcx        # imm = 0x126
	leaq	(%rax,%rcx), %rdi
	movw	%dx, 260(%rax,%rcx)
	testq	%r14, %r14
	je	.LBB14_21
# BB#26:                                # %if.then.40
	movl	$255, %edx
	movq	%r14, %rsi
	callq	strncpy
	movl	(%r12), %eax
	movq	(%r13), %rcx
	imulq	$294, %rax, %rax        # imm = 0x126
	movb	$0, 255(%rcx,%rax)
	jmp	.LBB14_22
.LBB14_21:                              # %if.else
	movb	$0, (%rdi)
.LBB14_22:                              # %if.end.59
	incl	(%r12)
	movl	$1, %ebp
.LBB14_23:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	cmsAppendNamedColor, .Lfunc_end14-cmsAppendNamedColor
	.cfi_endproc

	.globl	cmsNamedColorCount
	.align	16, 0x90
	.type	cmsNamedColorCount,@function
cmsNamedColorCount:                     # @cmsNamedColorCount
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %if.end
	movl	(%rdi), %eax
.LBB15_2:                               # %return
	retq
.Lfunc_end15:
	.size	cmsNamedColorCount, .Lfunc_end15-cmsNamedColorCount
	.cfi_endproc

	.globl	cmsNamedColorInfo
	.align	16, 0x90
	.type	cmsNamedColorInfo,@function
cmsNamedColorInfo:                      # @cmsNamedColorInfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp147:
	.cfi_def_cfa_offset 64
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r13
	movl	%esi, %r12d
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB16_12
# BB#1:                                 # %cmsNamedColorCount.exit
	cmpl	%r12d, (%rbx)
	jbe	.LBB16_12
# BB#2:                                 # %if.end.3
	testq	%rdx, %rdx
	je	.LBB16_4
# BB#3:                                 # %if.then.4
	movl	%r12d, %eax
	imulq	$294, %rax, %rsi        # imm = 0x126
	addq	80(%rbx), %rsi
	movq	%rdx, %rdi
	callq	strcpy
.LBB16_4:                               # %if.end.7
	testq	%r13, %r13
	je	.LBB16_6
# BB#5:                                 # %if.then.9
	leaq	12(%rbx), %rsi
	movq	%r13, %rdi
	callq	strcpy
.LBB16_6:                               # %if.end.13
	testq	%r15, %r15
	je	.LBB16_8
# BB#7:                                 # %if.then.15
	leaq	45(%rbx), %rsi
	movq	%r15, %rdi
	callq	strcpy
.LBB16_8:                               # %if.end.19
	movq	64(%rsp), %r15
	testq	%r14, %r14
	je	.LBB16_10
# BB#9:                                 # %if.then.21
	movl	%r12d, %eax
	movq	80(%rbx), %rcx
	imulq	$294, %rax, %rax        # imm = 0x126
	leaq	256(%rcx,%rax), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	memmove
.LBB16_10:                              # %if.end.28
	movl	$1, %ebp
	testq	%r15, %r15
	je	.LBB16_12
# BB#11:                                # %if.then.30
	movl	%r12d, %eax
	movq	80(%rbx), %rcx
	imulq	$294, %rax, %rax        # imm = 0x126
	leaq	262(%rcx,%rax), %rsi
	movl	8(%rbx), %edx
	addq	%rdx, %rdx
	movq	%r15, %rdi
	callq	memmove
.LBB16_12:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cmsNamedColorInfo, .Lfunc_end16-cmsNamedColorInfo
	.cfi_endproc

	.globl	cmsNamedColorIndex
	.align	16, 0x90
	.type	cmsNamedColorIndex,@function
cmsNamedColorIndex:                     # @cmsNamedColorIndex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp160:
	.cfi_def_cfa_offset 64
.Ltmp161:
	.cfi_offset %rbx, -56
.Ltmp162:
	.cfi_offset %r12, -48
.Ltmp163:
	.cfi_offset %r13, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$-1, %r14d
	testq	%r13, %r13
	je	.LBB17_6
# BB#1:                                 # %cmsNamedColorCount.exit
	movslq	(%r13), %r12
	testq	%r12, %r12
	jle	.LBB17_6
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r13), %rsi
	addq	%rbx, %rsi
	movq	%r15, %rdi
	callq	cmsstrcasecmp
	testl	%eax, %eax
	je	.LBB17_5
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	incq	%rbp
	addq	$294, %rbx              # imm = 0x126
	cmpq	%r12, %rbp
	jl	.LBB17_3
	jmp	.LBB17_6
.LBB17_5:                               # %for.body.cleanup.loopexit_crit_edge
	movl	%ebp, %r14d
.LBB17_6:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cmsNamedColorIndex, .Lfunc_end17-cmsNamedColorIndex
	.cfi_endproc

	.globl	_cmsStageAllocNamedColor
	.align	16, 0x90
	.type	_cmsStageAllocNamedColor,@function
_cmsStageAllocNamedColor:               # @_cmsStageAllocNamedColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp170:
	.cfi_def_cfa_offset 48
.Ltmp171:
	.cfi_offset %rbx, -32
.Ltmp172:
	.cfi_offset %r14, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	88(%rdi), %r14
	movl	$3, %ebp
	testl	%esi, %esi
	jne	.LBB18_2
# BB#1:                                 # %cond.false
	movl	8(%rdi), %ebp
.LBB18_2:                               # %cond.end
	testl	%esi, %esi
	movl	$EvalNamedColorPCS, %eax
	movl	$EvalNamedColor, %ebx
	cmovneq	%rax, %rbx
	callq	cmsDupNamedColorList
	movq	%rax, 8(%rsp)
	movq	$FreeNamedColorList, (%rsp)
	movl	$1852009504, %esi       # imm = 0x6E636C20
	movl	$1, %edx
	movl	$DupNamedColorList, %r9d
	movq	%r14, %rdi
	movq	%rbx, %r8
	movl	%ebp, %ecx
	callq	_cmsStageAllocPlaceholder
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_cmsStageAllocNamedColor, .Lfunc_end18-_cmsStageAllocNamedColor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4679239875398991872     # double 65535
.LCPI19_1:
	.quad	4602678819172646912     # double 0.5
.LCPI19_2:
	.quad	-4548635898522107904    # double -32767
.LCPI19_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	EvalNamedColorPCS,@function
EvalNamedColorPCS:                      # @EvalNamedColorPCS
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdx), %rax
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI19_0(%rip), %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB19_1
# BB#2:                                 # %if.end.i
	movw	$-1, %cx
	ucomisd	.LCPI19_0(%rip), %xmm0
	jae	.LBB19_4
# BB#3:                                 # %if.end.3.i
	addsd	.LCPI19_2(%rip), %xmm0
	addsd	.LCPI19_3(%rip), %xmm0
	movd	%xmm0, %rcx
	shrl	$16, %ecx
	addl	$32767, %ecx            # imm = 0x7FFF
	jmp	.LBB19_4
.LBB19_1:
	xorl	%ecx, %ecx
.LBB19_4:                               # %_cmsQuickSaturateWord.exit
	movzwl	%cx, %ecx
	cmpl	(%rax), %ecx
	jae	.LBB19_6
# BB#5:                                 # %if.end
	movq	80(%rax), %rax
	imulq	$294, %rcx, %rcx        # imm = 0x126
	movzwl	256(%rax,%rcx), %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	movzwl	258(%rax,%rcx), %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsi)
	movzwl	260(%rax,%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsi)
	retq
.LBB19_6:                               # %if.then
	movq	88(%rax), %rdi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	jmp	cmsSignalError          # TAILCALL
.Lfunc_end19:
	.size	EvalNamedColorPCS, .Lfunc_end19-EvalNamedColorPCS
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4679239875398991872     # double 65535
.LCPI20_1:
	.quad	4602678819172646912     # double 0.5
.LCPI20_2:
	.quad	-4548635898522107904    # double -32767
.LCPI20_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	EvalNamedColor,@function
EvalNamedColor:                         # @EvalNamedColor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdx), %rdx
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI20_0(%rip), %xmm0
	addsd	.LCPI20_1(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB20_1
# BB#2:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI20_0(%rip), %xmm0
	jae	.LBB20_4
# BB#3:                                 # %if.end.3.i
	addsd	.LCPI20_2(%rip), %xmm0
	addsd	.LCPI20_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB20_4
.LBB20_1:
	xorl	%eax, %eax
.LBB20_4:                               # %_cmsQuickSaturateWord.exit
	movzwl	%ax, %ecx
	cmpl	(%rdx), %ecx
	jae	.LBB20_12
# BB#5:                                 # %for.cond.preheader
	movl	8(%rdx), %eax
	testq	%rax, %rax
	je	.LBB20_11
# BB#6:                                 # %for.body.lr.ph
	movq	80(%rdx), %rdi
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB20_8
# BB#7:                                 # %for.body.prol
	imulq	$294, %rcx, %rdx        # imm = 0x126
	movzwl	262(%rdi,%rdx), %edx
	cvtsi2sdl	%edx, %xmm0
	divsd	.LCPI20_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	movl	$1, %edx
.LBB20_8:                               # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB20_11
# BB#9:                                 # %for.body.lr.ph.split.split
	imulq	$294, %rcx, %rcx        # imm = 0x126
	leaq	264(%rdi,%rcx), %rcx
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB20_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rcx,%rdx,2), %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsi,%rdx,4)
	movzwl	(%rcx,%rdx,2), %edi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsi,%rdx,4)
	addq	$2, %rdx
	cmpq	%rax, %rdx
	jb	.LBB20_10
.LBB20_11:                              # %if.end
	retq
.LBB20_12:                              # %if.then
	movq	88(%rdx), %rdi
	movl	$2, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	jmp	cmsSignalError          # TAILCALL
.Lfunc_end20:
	.size	EvalNamedColor, .Lfunc_end20-EvalNamedColor
	.cfi_endproc

	.align	16, 0x90
	.type	DupNamedColorList,@function
DupNamedColorList:                      # @DupNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rdi
	jmp	cmsDupNamedColorList    # TAILCALL
.Lfunc_end21:
	.size	DupNamedColorList, .Lfunc_end21-DupNamedColorList
	.cfi_endproc

	.align	16, 0x90
	.type	FreeNamedColorList,@function
FreeNamedColorList:                     # @FreeNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbx, -16
	movq	48(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB22_4
# BB#1:                                 # %if.end.i
	movq	80(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB22_3
# BB#2:                                 # %if.then.1.i
	movq	88(%rbx), %rdi
	callq	_cmsFree
.LBB22_3:                               # %if.end.3.i
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_cmsFree                # TAILCALL
.LBB22_4:                               # %cmsFreeNamedColorList.exit
	popq	%rbx
	retq
.Lfunc_end22:
	.size	FreeNamedColorList, .Lfunc_end22-FreeNamedColorList
	.cfi_endproc

	.globl	cmsGetNamedColorList
	.align	16, 0x90
	.type	cmsGetNamedColorList,@function
cmsGetNamedColorList:                   # @cmsGetNamedColorList
	.cfi_startproc
# BB#0:                                 # %entry
	movq	112(%rdi), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
	cmpl	$1852009504, 8(%rcx)    # imm = 0x6E636C20
	jne	.LBB23_2
# BB#1:                                 # %if.end
	movq	48(%rcx), %rax
.LBB23_2:                               # %cleanup
	retq
.Lfunc_end23:
	.size	cmsGetNamedColorList, .Lfunc_end23-cmsGetNamedColorList
	.cfi_endproc

	.globl	cmsAllocProfileSequenceDescription
	.align	16, 0x90
	.type	cmsAllocProfileSequenceDescription,@function
cmsAllocProfileSequenceDescription:     # @cmsAllocProfileSequenceDescription
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp180:
	.cfi_def_cfa_offset 48
.Ltmp181:
	.cfi_offset %rbx, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r15
	leal	-1(%rbx), %ebp
	xorl	%r14d, %r14d
	cmpl	$254, %ebp
	ja	.LBB24_10
# BB#1:                                 # %if.end.3
	movl	$24, %esi
	movq	%r15, %rdi
	callq	_cmsMallocZero
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB24_10
# BB#2:                                 # %if.end.6
	movq	%rax, %r14
	movq	%r15, 8(%r14)
	movl	$64, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	_cmsCalloc
	movq	%rax, 16(%r14)
	movl	%ebx, (%r14)
	testq	%rax, %rax
	je	.LBB24_11
# BB#3:                                 # %for.cond.preheader
	testl	%ebx, %ebx
	je	.LBB24_10
# BB#4:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	testb	$3, %bl
	je	.LBB24_7
# BB#5:                                 # %for.body.prol.preheader
	leaq	56(%rax), %rdx
	movl	%ebx, %esi
	andl	$3, %esi
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB24_6:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rdx)
	movq	$0, (%rdx)
	incq	%rcx
	addq	$64, %rdx
	cmpl	%ecx, %esi
	jne	.LBB24_6
.LBB24_7:                               # %for.body.preheader.split
	cmpl	$3, %ebp
	jb	.LBB24_10
# BB#8:                                 # %for.body.preheader.split.split
	subl	%ecx, %ebx
	shlq	$6, %rcx
	leaq	248(%rcx,%rax), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB24_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -208(%rax)
	movq	$0, -192(%rax)
	movups	%xmm0, -144(%rax)
	movq	$0, -128(%rax)
	movups	%xmm0, -80(%rax)
	movq	$0, -64(%rax)
	movups	%xmm0, -16(%rax)
	movq	$0, (%rax)
	addq	$256, %rax              # imm = 0x100
	addl	$-4, %ebx
	jne	.LBB24_9
	jmp	.LBB24_10
.LBB24_11:                              # %if.then.12
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%r14d, %r14d
.LBB24_10:                              # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	cmsAllocProfileSequenceDescription, .Lfunc_end24-cmsAllocProfileSequenceDescription
	.cfi_endproc

	.globl	cmsFreeProfileSequenceDescription
	.align	16, 0x90
	.type	cmsFreeProfileSequenceDescription,@function
cmsFreeProfileSequenceDescription:      # @cmsFreeProfileSequenceDescription
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 48
.Ltmp190:
	.cfi_offset %rbx, -40
.Ltmp191:
	.cfi_offset %r12, -32
.Ltmp192:
	.cfi_offset %r14, -24
.Ltmp193:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	cmpl	$0, (%r14)
	je	.LBB25_21
# BB#1:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB25_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %r15d
	movq	16(%r14), %rax
	movq	%r15, %r12
	shlq	$6, %r12
	movq	40(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB25_8
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_5
# BB#4:                                 # %if.then.2.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_5:                               # %if.end.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_7
# BB#6:                                 # %if.then.5.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_7:                               # %cmsMLUfree.exit
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movq	16(%r14), %rax
.LBB25_8:                               # %if.end
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	48(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB25_14
# BB#9:                                 # %if.then.i.23
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_11
# BB#10:                                # %if.then.2.i.25
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_11:                              # %if.end.i.29
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_13
# BB#12:                                # %if.then.5.i.30
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_13:                              # %cmsMLUfree.exit32
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movq	16(%r14), %rax
.LBB25_14:                              # %if.end.15
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	56(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB25_20
# BB#15:                                # %if.then.i.36
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_17
# BB#16:                                # %if.then.2.i.38
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_17:                              # %if.end.i.42
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB25_19
# BB#18:                                # %if.then.5.i.43
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB25_19:                              # %cmsMLUfree.exit45
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB25_20:                              # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	incl	%r15d
	cmpl	(%r14), %r15d
	jb	.LBB25_2
.LBB25_21:                              # %for.end
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB25_23
# BB#22:                                # %if.then.28
	movq	8(%r14), %rdi
	callq	_cmsFree
.LBB25_23:                              # %if.end.30
	movq	8(%r14), %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.Lfunc_end25:
	.size	cmsFreeProfileSequenceDescription, .Lfunc_end25-cmsFreeProfileSequenceDescription
	.cfi_endproc

	.globl	cmsDupProfileSequenceDescription
	.align	16, 0x90
	.type	cmsDupProfileSequenceDescription,@function
cmsDupProfileSequenceDescription:       # @cmsDupProfileSequenceDescription
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp195:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp198:
	.cfi_def_cfa_offset 48
.Ltmp199:
	.cfi_offset %rbx, -40
.Ltmp200:
	.cfi_offset %r14, -32
.Ltmp201:
	.cfi_offset %r15, -24
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB26_7
# BB#1:                                 # %if.end
	movq	8(%r15), %rdi
	movl	$24, %esi
	callq	_cmsMalloc
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB26_7
# BB#2:                                 # %if.end.3
	movq	%rax, %r14
	movq	8(%r15), %rdi
	movl	(%r15), %esi
	movl	$64, %edx
	callq	_cmsCalloc
	movq	%rax, 16(%r14)
	testq	%rax, %rax
	je	.LBB26_6
# BB#3:                                 # %if.end.9
	movq	8(%r15), %rcx
	movq	%rcx, 8(%r14)
	movl	(%r15), %ecx
	movl	%ecx, (%r14)
	cmpl	$0, (%r15)
	je	.LBB26_7
# BB#4:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB26_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	shlq	$6, %rbx
	leaq	8(%rax,%rbx), %rdi
	movq	16(%r15), %rax
	leaq	8(%rax,%rbx), %rsi
	movl	$8, %edx
	callq	memmove
	movq	16(%r15), %rax
	movl	(%rax,%rbx), %ecx
	movq	16(%r14), %rdx
	movl	%ecx, (%rdx,%rbx)
	movl	4(%rax,%rbx), %ecx
	movl	%ecx, 4(%rdx,%rbx)
	leaq	20(%rdx,%rbx), %rdi
	leaq	20(%rax,%rbx), %rsi
	movl	$16, %edx
	callq	memmove
	movq	16(%r15), %rax
	movl	16(%rax,%rbx), %ecx
	movq	16(%r14), %rdx
	movl	%ecx, 16(%rdx,%rbx)
	movq	40(%rax,%rbx), %rdi
	callq	cmsMLUdup
	movq	16(%r14), %rcx
	movq	%rax, 40(%rcx,%rbx)
	movq	16(%r15), %rax
	movq	48(%rax,%rbx), %rdi
	callq	cmsMLUdup
	movq	16(%r14), %rcx
	movq	%rax, 48(%rcx,%rbx)
	movq	16(%r15), %rax
	movq	56(%rax,%rbx), %rdi
	callq	cmsMLUdup
	movq	%rax, %rcx
	movq	16(%r14), %rax
	movq	%rcx, 56(%rax,%rbx)
	incl	%ebp
	cmpl	(%r15), %ebp
	jb	.LBB26_5
	jmp	.LBB26_7
.LBB26_6:                               # %Error
	movq	%r14, %rdi
	callq	cmsFreeProfileSequenceDescription
	xorl	%r14d, %r14d
.LBB26_7:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	cmsDupProfileSequenceDescription, .Lfunc_end26-cmsDupProfileSequenceDescription
	.cfi_endproc

	.globl	cmsDictAlloc
	.align	16, 0x90
	.type	cmsDictAlloc,@function
cmsDictAlloc:                           # @cmsDictAlloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$16, %esi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB27_2
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rax)
	movq	%rax, %rcx
.LBB27_2:                               # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end27:
	.size	cmsDictAlloc, .Lfunc_end27-cmsDictAlloc
	.cfi_endproc

	.globl	cmsDictFree
	.align	16, 0x90
	.type	cmsDictFree,@function
cmsDictFree:                            # @cmsDictFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 32
.Ltmp208:
	.cfi_offset %rbx, -32
.Ltmp209:
	.cfi_offset %r14, -24
.Ltmp210:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB28_20
# BB#1:                                 # %cond.end
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB28_19
	.align	16, 0x90
.LBB28_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB28_8
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB28_5
# BB#4:                                 # %if.then.2.i
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB28_5:                               # %if.end.i
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB28_7
# BB#6:                                 # %if.then.5.i
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB28_7:                               # %cmsMLUfree.exit
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB28_8:                               # %if.end
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	16(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB28_14
# BB#9:                                 # %if.then.i.23
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB28_11
# BB#10:                                # %if.then.2.i.25
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB28_11:                              # %if.end.i.29
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB28_13
# BB#12:                                # %if.then.5.i.30
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB28_13:                              # %cmsMLUfree.exit32
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB28_14:                              # %if.end.8
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB28_16
# BB#15:                                # %if.then.10
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	8(%r14), %rdi
	callq	_cmsFree
.LBB28_16:                              # %if.end.12
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB28_18
# BB#17:                                # %if.then.14
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	8(%r14), %rdi
	callq	_cmsFree
.LBB28_18:                              # %if.end.17
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	(%r15), %rbx
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	testq	%rbx, %rbx
	movq	%rbx, %r15
	jne	.LBB28_2
.LBB28_19:                              # %while.end
	movq	8(%r14), %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.LBB28_20:                              # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$833, %edx              # imm = 0x341
	movl	$.L__PRETTY_FUNCTION__.cmsDictFree, %ecx
	callq	__assert_fail
.Lfunc_end28:
	.size	cmsDictFree, .Lfunc_end28-cmsDictFree
	.cfi_endproc

	.globl	cmsDictAddEntry
	.align	16, 0x90
	.type	cmsDictAddEntry,@function
cmsDictAddEntry:                        # @cmsDictAddEntry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp213:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp214:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp215:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp217:
	.cfi_def_cfa_offset 64
.Ltmp218:
	.cfi_offset %rbx, -56
.Ltmp219:
	.cfi_offset %r12, -48
.Ltmp220:
	.cfi_offset %r13, -40
.Ltmp221:
	.cfi_offset %r14, -32
.Ltmp222:
	.cfi_offset %r15, -24
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB29_11
# BB#1:                                 # %cond.end
	testq	%r12, %r12
	je	.LBB29_12
# BB#2:                                 # %cond.end.5
	movq	8(%r15), %rdi
	movl	$40, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB29_10
# BB#3:                                 # %if.end
	movq	%rbp, %rdi
	callq	cmsMLUdup
	movq	%rax, 8(%rbx)
	movq	%r13, %rdi
	callq	cmsMLUdup
	movq	%rax, 16(%rbx)
	movq	8(%r15), %rdi
	leaq	-4(%r12), %rdx
	.align	16, 0x90
.LBB29_4:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rdx)
	leaq	4(%rdx), %rdx
	jne	.LBB29_4
# BB#5:                                 # %DupWcs.exit
	subl	%r12d, %edx
	addl	$4, %edx
	andl	$-4, %edx
	movq	%r12, %rsi
	callq	_cmsDupMem
	movq	%rax, 24(%rbx)
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB29_9
# BB#6:                                 # %while.cond.i.i.19.preheader
	movq	8(%r15), %rdi
	leaq	-4(%r14), %rdx
	.align	16, 0x90
.LBB29_7:                               # %while.cond.i.i.19
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rdx)
	leaq	4(%rdx), %rdx
	jne	.LBB29_7
# BB#8:                                 # %mywcslen.exit.i.27
	subl	%r14d, %edx
	addl	$4, %edx
	andl	$-4, %edx
	movq	%r14, %rsi
	callq	_cmsDupMem
.LBB29_9:                               # %DupWcs.exit29
	movq	%rax, 32(%rbx)
	movq	(%r15), %rax
	movq	%rax, (%rbx)
	movq	%rbx, (%r15)
	movl	$1, %eax
.LBB29_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_11:                              # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$869, %edx              # imm = 0x365
	movl	$.L__PRETTY_FUNCTION__.cmsDictAddEntry, %ecx
	callq	__assert_fail
.LBB29_12:                              # %cond.false.4
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$870, %edx              # imm = 0x366
	movl	$.L__PRETTY_FUNCTION__.cmsDictAddEntry, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	cmsDictAddEntry, .Lfunc_end29-cmsDictAddEntry
	.cfi_endproc

	.globl	cmsDictDup
	.align	16, 0x90
	.type	cmsDictDup,@function
cmsDictDup:                             # @cmsDictDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp224:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp225:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp226:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp227:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp228:
	.cfi_def_cfa_offset 48
.Ltmp229:
	.cfi_offset %rbx, -40
.Ltmp230:
	.cfi_offset %r12, -32
.Ltmp231:
	.cfi_offset %r14, -24
.Ltmp232:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB30_9
# BB#1:                                 # %cond.end
	movq	8(%r14), %r15
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB30_8
# BB#2:                                 # %if.end
	movq	%r15, 8(%r12)
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB30_3
	.align	16, 0x90
.LBB30_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rsi
	movq	32(%rbx), %rdx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %r8
	movq	%r12, %rdi
	callq	cmsDictAddEntry
	testl	%eax, %eax
	je	.LBB30_7
# BB#4:                                 # %while.cond
                                        #   in Loop: Header=BB30_6 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB30_6
# BB#5:
	movq	%r12, %rax
	jmp	.LBB30_8
.LBB30_3:
	movq	%r12, %rax
	jmp	.LBB30_8
.LBB30_7:                               # %if.then.5
	movq	%r12, %rdi
	callq	cmsDictFree
	xorl	%eax, %eax
.LBB30_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB30_9:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$894, %edx              # imm = 0x37E
	movl	$.L__PRETTY_FUNCTION__.cmsDictDup, %ecx
	callq	__assert_fail
.Lfunc_end30:
	.size	cmsDictDup, .Lfunc_end30-cmsDictDup
	.cfi_endproc

	.globl	cmsDictGetEntryList
	.align	16, 0x90
	.type	cmsDictGetEntryList,@function
cmsDictGetEntryList:                    # @cmsDictGetEntryList
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB31_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rax
.LBB31_2:                               # %cleanup
	retq
.Lfunc_end31:
	.size	cmsDictGetEntryList, .Lfunc_end31-cmsDictGetEntryList
	.cfi_endproc

	.globl	cmsDictNextEntry
	.align	16, 0x90
	.type	cmsDictNextEntry,@function
cmsDictNextEntry:                       # @cmsDictNextEntry
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB32_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rax
.LBB32_2:                               # %return
	retq
.Lfunc_end32:
	.size	cmsDictNextEntry, .Lfunc_end32-cmsDictNextEntry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(dict != ((void*)0))"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsnamed.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__.cmsDictFree,@object # @__PRETTY_FUNCTION__.cmsDictFree
.L__PRETTY_FUNCTION__.cmsDictFree:
	.asciz	"void cmsDictFree(cmsHANDLE)"
	.size	.L__PRETTY_FUNCTION__.cmsDictFree, 28

	.type	.L__PRETTY_FUNCTION__.cmsDictAddEntry,@object # @__PRETTY_FUNCTION__.cmsDictAddEntry
.L__PRETTY_FUNCTION__.cmsDictAddEntry:
	.asciz	"cmsBool cmsDictAddEntry(cmsHANDLE, const wchar_t *, const wchar_t *, const cmsMLU *, const cmsMLU *)"
	.size	.L__PRETTY_FUNCTION__.cmsDictAddEntry, 101

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(Name != ((void*)0))"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(old_dict != ((void*)0))"
	.size	.L.str.3, 25

	.type	.L__PRETTY_FUNCTION__.cmsDictDup,@object # @__PRETTY_FUNCTION__.cmsDictDup
.L__PRETTY_FUNCTION__.cmsDictDup:
	.asciz	"cmsHANDLE cmsDictDup(cmsHANDLE)"
	.size	.L__PRETTY_FUNCTION__.cmsDictDup, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Color %d out of range; ignored"
	.size	.L.str.4, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
