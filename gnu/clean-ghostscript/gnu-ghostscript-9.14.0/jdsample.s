	.text
	.file	"jdsample.bc"
	.globl	jinit_upsampler
	.align	16, 0x90
	.type	jinit_upsampler,@function
jinit_upsampler:                        # @jinit_upsampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 856(%r15)
	movq	$start_pass_upsample, (%r14)
	movq	$sep_upsample, 8(%r14)
	movl	$0, 16(%r14)
	cmpl	$0, 400(%r15)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%r15), %rax
	movl	$26, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end
	cmpl	$0, 56(%r15)
	jle	.LBB0_21
# BB#3:                                 # %for.body.lr.ph
	movq	304(%r15), %rbx
	addq	$52, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB0_4
.LBB0_17:                               # %if.then.44
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$int_upsample, 104(%r14,%r12,8)
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movb	%al, 232(%r14,%r12)
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movb	%al, 242(%r14,%r12)
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbx), %eax
	movl	-12(%rbx), %esi
	imull	-44(%rbx), %eax
	cltd
	idivl	424(%r15)
	movl	%eax, %ecx
	imull	-40(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	428(%r15)
	movl	%eax, %esi
	movl	416(%r15), %edi
	movl	420(%r15), %r8d
	movl	%esi, 192(%r14,%r12,4)
	cmpl	$0, (%rbx)
	je	.LBB0_5
# BB#6:                                 # %if.end.14
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB0_9
# BB#7:                                 # %if.end.14
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%r8d, %esi
	jne	.LBB0_9
# BB#8:                                 # %if.then.17
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$fullsize_upsample, 104(%r14,%r12,8)
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_5:                                # %if.then.11
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$noop_upsample, 104(%r14,%r12,8)
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_9:                                # %if.end.21
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rcx,%rcx), %eax
	cmpl	%edi, %eax
	jne	.LBB0_12
# BB#10:                                # %if.end.21
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%r8d, %esi
	jne	.LBB0_12
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$h2v1_upsample, 104(%r14,%r12,8)
	jmp	.LBB0_19
.LBB0_12:                               # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%edi, %eax
	jne	.LBB0_15
# BB#13:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	(%rsi,%rsi), %eax
	cmpl	%r8d, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.35
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	$h2v2_upsample, 104(%r14,%r12,8)
	jmp	.LBB0_19
.LBB0_15:                               # %if.else.39
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB0_18
# BB#16:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB0_17
.LBB0_18:                               # %if.else.55
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	(%r15), %rax
	movl	$39, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_19:                               # %if.end.62
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	8(%r15), %rax
	movq	16(%rax), %r13
	movl	136(%r15), %edi
	movslq	416(%r15), %rsi
	callq	jround_up
	movl	420(%r15), %ecx
	movl	$1, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	*%r13
	movq	%rax, 24(%r14,%r12,8)
.LBB0_20:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	%r12
	movslq	56(%r15), %rax
	addq	$96, %rbx
	cmpq	%rax, %r12
	jl	.LBB0_4
.LBB0_21:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jinit_upsampler, .Lfunc_end0-jinit_upsampler
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_upsample,@function
start_pass_upsample:                    # @start_pass_upsample
	.cfi_startproc
# BB#0:                                 # %entry
	movq	856(%rdi), %rax
	movl	420(%rdi), %ecx
	movl	%ecx, 184(%rax)
	movl	140(%rdi), %ecx
	movl	%ecx, 188(%rax)
	retq
.Lfunc_end1:
	.size	start_pass_upsample, .Lfunc_end1-start_pass_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	sep_upsample,@function
sep_upsample:                           # @sep_upsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 80
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movl	80(%rsp), %ebp
	movq	856(%rbx), %r14
	movl	184(%r14), %edx
	movl	420(%rbx), %eax
	cmpl	%eax, %edx
	jl	.LBB2_6
# BB#1:                                 # %if.then
	cmpl	$0, 56(%rbx)
	jle	.LBB2_5
# BB#2:                                 # %for.body.lr.ph
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	304(%rbx), %r12
	movq	%r15, 16(%rsp)          # 8-byte Spill
	leaq	24(%r14), %r15
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%r13,8), %rax
	movl	192(%r14,%r13,4), %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	imull	(%rdx), %ecx
	leaq	(%rax,%rcx,8), %rdx
	movq	%rbx, %rdi
	movq	%rsi, %rbp
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	*104(%r14,%r13,8)
	movq	%rbp, %rsi
	incq	%r13
	addq	$96, %r12
	movslq	56(%rbx), %rax
	addq	$8, %r15
	cmpq	%rax, %r13
	jl	.LBB2_3
# BB#4:                                 # %for.cond.for.end_crit_edge
	movl	420(%rbx), %eax
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	movl	80(%rsp), %ebp
	movq	(%rsp), %r8             # 8-byte Reload
.LBB2_5:                                # %for.end
	movl	$0, 184(%r14)
	xorl	%edx, %edx
.LBB2_6:                                # %if.end
	subl	%edx, %eax
	movl	188(%r14), %ecx
	cmpl	%ecx, %eax
	cmoval	%ecx, %eax
	movl	(%r12), %ecx
	subl	%ecx, %ebp
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movq	864(%rbx), %rax
	leaq	24(%r14), %rsi
	leaq	(%r8,%rcx,8), %rcx
	movq	%rbx, %rdi
	movl	%ebp, %r8d
	callq	*8(%rax)
	addl	%ebp, (%r12)
	subl	%ebp, 188(%r14)
	addl	184(%r14), %ebp
	movl	%ebp, 184(%r14)
	cmpl	420(%rbx), %ebp
	jl	.LBB2_8
# BB#7:                                 # %if.then.32
	incl	(%r15)
.LBB2_8:                                # %if.end.34
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sep_upsample, .Lfunc_end2-sep_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	noop_upsample,@function
noop_upsample:                          # @noop_upsample
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rcx)
	retq
.Lfunc_end3:
	.size	noop_upsample, .Lfunc_end3-noop_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	fullsize_upsample,@function
fullsize_upsample:                      # @fullsize_upsample
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, (%rcx)
	retq
.Lfunc_end4:
	.size	fullsize_upsample, .Lfunc_end4-fullsize_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movl	420(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB5_10
# BB#1:                                 # %for.body.lr.ph
	movq	(%rcx), %r8
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_7 Depth 2
	movl	136(%rdi), %ecx
	testq	%rcx, %rcx
	je	.LBB5_9
# BB#3:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%r8,%r9,8), %rsi
	leaq	(%rcx,%rsi), %r11
	movq	(%rdx,%r9,8), %rcx
	leaq	2(%rsi), %r10
	cmpq	%r10, %r11
	cmovaq	%r11, %r10
	subq	%rsi, %r10
	decq	%r10
	movl	%r10d, %eax
	shrl	%eax
	incl	%eax
	testb	$7, %al
	je	.LBB5_6
# BB#4:                                 # %while.body.prol.preheader
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r10d, %eax
	shrl	%eax
	incl	%eax
	andl	$7, %eax
	negq	%rax
	.align	16, 0x90
.LBB5_5:                                # %while.body.prol
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rcx), %bl
	incq	%rcx
	movb	%bl, (%rsi)
	movb	%bl, 1(%rsi)
	addq	$2, %rsi
	incq	%rax
	jne	.LBB5_5
.LBB5_6:                                # %while.body.lr.ph.split
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$14, %r10
	jb	.LBB5_8
	.align	16, 0x90
.LBB5_7:                                # %while.body
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rcx), %al
	movb	%al, (%rsi)
	movb	%al, 1(%rsi)
	movb	1(%rcx), %al
	movb	%al, 2(%rsi)
	movb	%al, 3(%rsi)
	movb	2(%rcx), %al
	movb	%al, 4(%rsi)
	movb	%al, 5(%rsi)
	movb	3(%rcx), %al
	movb	%al, 6(%rsi)
	movb	%al, 7(%rsi)
	movb	4(%rcx), %al
	movb	%al, 8(%rsi)
	movb	%al, 9(%rsi)
	movb	5(%rcx), %al
	movb	%al, 10(%rsi)
	movb	%al, 11(%rsi)
	movb	6(%rcx), %al
	movb	%al, 12(%rsi)
	movb	%al, 13(%rsi)
	movb	7(%rcx), %al
	movb	%al, 14(%rsi)
	movb	%al, 15(%rsi)
	addq	$16, %rsi
	addq	$8, %rcx
	cmpq	%r11, %rsi
	jb	.LBB5_7
.LBB5_8:                                # %while.cond.for.inc_crit_edge
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	420(%rdi), %eax
.LBB5_9:                                # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	incq	%r9
	movslq	%eax, %rcx
	cmpq	%rcx, %r9
	jl	.LBB5_2
.LBB5_10:                               # %for.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	h2v1_upsample, .Lfunc_end5-h2v1_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
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
	movq	%rdx, %r14
	movq	%rdi, %r15
	cmpl	$0, 420(%r15)
	jle	.LBB6_10
# BB#1:                                 # %while.body.lr.ph
	movq	(%rcx), %r12
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_7 Depth 2
	movl	136(%r15), %ecx
	testq	%rcx, %rcx
	movl	$0, %r9d
	je	.LBB6_9
# BB#3:                                 # %while.body.5.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	(%r12,%rbp,8), %rax
	leaq	(%rcx,%rax), %rcx
	movq	(%r14,%r13,8), %rdx
	leaq	2(%rax), %rsi
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	subq	%rax, %rsi
	decq	%rsi
	movl	%esi, %edi
	shrl	%edi
	incl	%edi
	testb	$7, %dil
	je	.LBB6_6
# BB#4:                                 # %while.body.5.prol.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%esi, %edi
	shrl	%edi
	incl	%edi
	andl	$7, %edi
	negq	%rdi
	.align	16, 0x90
.LBB6_5:                                # %while.body.5.prol
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %bl
	incq	%rdx
	movb	%bl, (%rax)
	movb	%bl, 1(%rax)
	addq	$2, %rax
	incq	%rdi
	jne	.LBB6_5
.LBB6_6:                                # %while.body.5.lr.ph.split
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	$14, %rsi
	jb	.LBB6_8
	.align	16, 0x90
.LBB6_7:                                # %while.body.5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %bl
	movb	%bl, (%rax)
	movb	%bl, 1(%rax)
	movb	1(%rdx), %bl
	movb	%bl, 2(%rax)
	movb	%bl, 3(%rax)
	movb	2(%rdx), %bl
	movb	%bl, 4(%rax)
	movb	%bl, 5(%rax)
	movb	3(%rdx), %bl
	movb	%bl, 6(%rax)
	movb	%bl, 7(%rax)
	movb	4(%rdx), %bl
	movb	%bl, 8(%rax)
	movb	%bl, 9(%rax)
	movb	5(%rdx), %bl
	movb	%bl, 10(%rax)
	movb	%bl, 11(%rax)
	movb	6(%rdx), %bl
	movb	%bl, 12(%rax)
	movb	%bl, 13(%rax)
	movb	7(%rdx), %bl
	movb	%bl, 14(%rax)
	movb	%bl, 15(%rax)
	addq	$16, %rax
	addq	$8, %rdx
	cmpq	%rcx, %rax
	jb	.LBB6_7
.LBB6_8:                                # %while.cond.3.while.end_crit_edge
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	136(%r15), %r9d
.LBB6_9:                                # %while.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%ebp, %ecx
	orl	$1, %ecx
	movl	$1, %r8d
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	jcopy_sample_rows
	incq	%r13
	addq	$2, %rbp
	movslq	420(%r15), %rax
	cmpq	%rax, %rbp
	jl	.LBB6_2
.LBB6_10:                               # %while.end.10
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	h2v2_upsample, .Lfunc_end6-h2v2_upsample
	.cfi_endproc

	.align	16, 0x90
	.type	int_upsample,@function
int_upsample:                           # @int_upsample
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
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 80
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r9
	cmpl	$0, 420(%r9)
	jle	.LBB7_11
# BB#1:                                 # %while.body.lr.ph
	movq	856(%r9), %rax
	movq	(%rcx), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movslq	4(%rsi), %rcx
	movzbl	232(%rax,%rcx), %r12d
	movzbl	242(%rax,%rcx), %r13d
	leal	-1(%r13), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leal	1(%r12), %r14d
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #       Child Loop BB7_7 Depth 3
	movl	136(%r9), %edx
	testq	%rdx, %rdx
	je	.LBB7_8
# BB#3:                                 # %while.body.16.lr.ph
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%rdi,%rbp,8), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%r15,8), %rcx
	leaq	(%rdx,%rax), %rdx
	.align	16, 0x90
.LBB7_5:                                # %while.body.16
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_7 Depth 3
	testb	%r12b, %r12b
	je	.LBB7_4
# BB#6:                                 #   in Loop: Header=BB7_5 Depth=2
	movb	(%rcx), %bl
	movl	%r14d, %esi
	.align	16, 0x90
.LBB7_7:                                # %for.body
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, (%rax)
	incq	%rax
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB7_7
.LBB7_4:                                # %while.cond.13.loopexit
                                        #   in Loop: Header=BB7_5 Depth=2
	incq	%rcx
	cmpq	%rdx, %rax
	jb	.LBB7_5
.LBB7_8:                                # %while.end
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpl	$2, %r13d
	jb	.LBB7_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB7_2 Depth=1
	leal	1(%rbp), %ecx
	movq	%r9, %rbx
	movl	136(%rbx), %r9d
	movl	%ebp, %esi
	movq	%rdi, %rdx
	movl	4(%rsp), %r8d           # 4-byte Reload
	callq	jcopy_sample_rows
	movq	%rbx, %r9
	movq	8(%rsp), %rdi           # 8-byte Reload
.LBB7_10:                               # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	incq	%r15
	addq	%r13, %rbp
	movslq	420(%r9), %rax
	cmpq	%rax, %rbp
	jl	.LBB7_2
.LBB7_11:                               # %while.end.24
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	int_upsample, .Lfunc_end7-int_upsample
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
