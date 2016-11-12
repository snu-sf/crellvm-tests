	.text
	.file	"gxsample.bc"
	.globl	sample_unpack_copy
	.align	16, 0x90
	.type	sample_unpack_copy,@function
sample_unpack_copy:                     # @sample_unpack_copy
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, (%rsi)
	movq	%rdx, %rax
	retq
.Lfunc_end0:
	.size	sample_unpack_copy, .Lfunc_end0-sample_unpack_copy
	.cfi_endproc

	.globl	sample_unpack_1
	.align	16, 0x90
	.type	sample_unpack_1,@function
sample_unpack_1:                        # @sample_unpack_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	16(%rsp), %eax
	movl	%ecx, %r10d
	sarl	$3, %r10d
	movslq	%r10d, %r11
	addq	%rdx, %r11
	cmpl	$1, %eax
	jne	.LBB1_6
# BB#1:                                 # %if.then
	subl	%r10d, %r8d
	testb	$1, %r8b
	jne	.LBB1_3
# BB#2:
	movq	%rdi, %r10
	jmp	.LBB1_4
.LBB1_6:                                # %if.else
	subl	%r8d, %r10d
	je	.LBB1_9
# BB#7:                                 # %while.body.42.lr.ph
	movslq	%eax, %rdx
	movq	%rdi, %rax
	.align	16, 0x90
.LBB1_8:                                # %while.body.42
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %r8d
	incq	%r11
	movq	%r8, %rbx
	shrq	$7, %rbx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rax)
	movl	%r8d, %ebx
	shrl	$6, %ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rax,%rdx)
	addq	%rdx, %rax
	movl	%r8d, %ebx
	shrl	$5, %ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	movl	%r8d, %ebx
	shrl	$4, %ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	movl	%r8d, %ebx
	shrl	$3, %ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	movl	%r8d, %ebx
	shrl	$2, %ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	movl	%r8d, %ebx
	shrl	%ebx
	andl	$1, %ebx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	andl	$1, %r8d
	movb	(%r9,%r8), %bl
	movb	%bl, (%rdx,%rax)
	addq	%rdx, %rax
	addq	%rdx, %rax
	incl	%r10d
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_3:                                # %if.then.2
	movzbl	(%r11), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movl	(%r9,%rdx,4), %edx
	movl	%edx, (%rdi)
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 4(%rdi)
	incq	%r11
	leaq	8(%rdi), %r10
.LBB1_4:                                # %if.end
	sarl	%r8d
	je	.LBB1_9
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movl	(%r9,%rdx,4), %edx
	movl	%edx, (%r10)
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, 4(%r10)
	movzbl	1(%r11), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	andl	$15, %eax
	addq	$2, %r11
	decl	%r8d
	movl	(%r9,%rdx,4), %edx
	movl	%edx, 8(%r10)
	movl	(%r9,%rax,4), %eax
	movl	%eax, 12(%r10)
	leaq	16(%r10), %r10
	jne	.LBB1_5
.LBB1_9:                                # %if.end.93
	andl	$7, %ecx
	movl	%ecx, (%rsi)
	movq	%rdi, %rax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	sample_unpack_1, .Lfunc_end1-sample_unpack_1
	.cfi_endproc

	.globl	sample_unpack_2
	.align	16, 0x90
	.type	sample_unpack_2,@function
sample_unpack_2:                        # @sample_unpack_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %r15, -16
	movl	32(%rsp), %eax
	movl	%ecx, %r10d
	sarl	$2, %r10d
	movslq	%r10d, %r15
	addq	%rdx, %r15
	cmpl	$1, %eax
	jne	.LBB2_7
# BB#1:                                 # %if.then
	cmpl	%r8d, %r10d
	je	.LBB2_10
# BB#2:                                 # %while.body.lr.ph
	movl	%r8d, %r11d
	subl	%r10d, %r11d
	movl	%r8d, %eax
	subl	%r10d, %eax
	decl	%r8d
	testb	$1, %al
	jne	.LBB2_4
# BB#3:
	movq	%rdi, %r14
	jmp	.LBB2_5
.LBB2_7:                                # %if.else
	subl	%r8d, %r10d
	je	.LBB2_10
# BB#8:                                 # %while.body.14.lr.ph
	movslq	%eax, %r8
	movq	%rdi, %rax
	.align	16, 0x90
.LBB2_9:                                # %while.body.14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %r11d
	incq	%r15
	movq	%r11, %rbx
	shrq	$6, %rbx
	movb	(%r9,%rbx), %bl
	movb	%bl, (%rax)
	movl	%r11d, %edx
	shrl	$4, %edx
	andl	$3, %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, (%rax,%r8)
	addq	%r8, %rax
	movl	%r11d, %edx
	shrl	$2, %edx
	andl	$3, %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, (%r8,%rax)
	addq	%r8, %rax
	andl	$3, %r11d
	movb	(%r9,%r11), %dl
	movb	%dl, (%r8,%rax)
	addq	%r8, %rax
	addq	%r8, %rax
	incl	%r10d
	jne	.LBB2_9
	jmp	.LBB2_10
.LBB2_4:                                # %while.body.prol
	decl	%r11d
	movzbl	(%r15), %eax
	incq	%r15
	movq	%rax, %rdx
	shrq	$4, %rdx
	movw	(%r9,%rdx,2), %dx
	movw	%dx, (%rdi)
	andl	$15, %eax
	movw	(%r9,%rax,2), %ax
	leaq	4(%rdi), %r14
	movw	%ax, 2(%rdi)
.LBB2_5:                                # %while.body.lr.ph.split
	cmpl	%r10d, %r8d
	je	.LBB2_10
	.align	16, 0x90
.LBB2_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %edx
	movq	%rdx, %rax
	shrq	$4, %rax
	movw	(%r9,%rax,2), %ax
	movw	%ax, (%r14)
	andl	$15, %edx
	movw	(%r9,%rdx,2), %ax
	movw	%ax, 2(%r14)
	movzbl	1(%r15), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	andl	$15, %eax
	addq	$2, %r15
	addl	$-2, %r11d
	movw	(%r9,%rdx,2), %dx
	movw	%dx, 4(%r14)
	movw	(%r9,%rax,2), %ax
	movw	%ax, 6(%r14)
	leaq	8(%r14), %r14
	jne	.LBB2_6
.LBB2_10:                               # %if.end
	andl	$3, %ecx
	movl	%ecx, (%rsi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	sample_unpack_2, .Lfunc_end2-sample_unpack_2
	.cfi_endproc

	.globl	sample_unpack_4
	.align	16, 0x90
	.type	sample_unpack_4,@function
sample_unpack_4:                        # @sample_unpack_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	sarl	%ebp
	cmpl	%r8d, %ebp
	je	.LBB3_6
# BB#1:                                 # %while.body.lr.ph
	movl	%r8d, %r10d
	subl	%ebp, %r10d
	movslq	%ebp, %rax
	addq	%rax, %rdx
	movslq	32(%rsp), %r11
	decl	%r8d
	testb	$1, %r10b
	jne	.LBB3_3
# BB#2:
	movq	%rdi, %rax
	jmp	.LBB3_4
.LBB3_3:                                # %while.body.prol
	decl	%r10d
	movzbl	(%rdx), %r14d
	incq	%rdx
	movq	%r14, %rax
	shrq	$4, %rax
	movb	(%r9,%rax), %al
	movb	%al, (%rdi)
	leaq	(%rdi,%r11), %rax
	andl	$15, %r14d
	movb	(%r9,%r14), %bl
	movb	%bl, (%rdi,%r11)
	addq	%r11, %rax
.LBB3_4:                                # %while.body.lr.ph.split
	cmpl	%ebp, %r8d
	je	.LBB3_6
	.align	16, 0x90
.LBB3_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %r8d
	movq	%r8, %rbp
	shrq	$4, %rbp
	movb	(%r9,%rbp), %bl
	movb	%bl, (%rax)
	andl	$15, %r8d
	movb	(%r9,%r8), %bl
	movb	%bl, (%rax,%r11)
	addq	%r11, %rax
	movzbl	1(%rdx), %ebp
	movq	%rbp, %rbx
	shrq	$4, %rbx
	leaq	(%rax,%r11), %r8
	andl	$15, %ebp
	movb	(%r9,%rbx), %bl
	movb	%bl, (%r11,%rax)
	leaq	(%r8,%r11), %rax
	addq	$2, %rdx
	addq	%r11, %rax
	addl	$-2, %r10d
	movb	(%r9,%rbp), %bl
	movb	%bl, (%r11,%r8)
	jne	.LBB3_5
.LBB3_6:                                # %while.end
	andl	$1, %ecx
	movl	%ecx, (%rsi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sample_unpack_4, .Lfunc_end3-sample_unpack_4
	.cfi_endproc

	.globl	sample_unpack_8
	.align	16, 0x90
	.type	sample_unpack_8,@function
sample_unpack_8:                        # @sample_unpack_8
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rsp), %r10d
	movslq	%ecx, %rax
	addq	%rdx, %rax
	movl	$0, (%rsi)
	cmpl	$1, %r10d
	jne	.LBB4_11
# BB#1:                                 # %if.then
	cmpb	$0, (%r9)
	jne	.LBB4_4
# BB#2:                                 # %lor.lhs.false
	movzbl	255(%r9), %edx
	cmpl	$255, %edx
	je	.LBB4_3
.LBB4_4:                                # %if.then.8
	movl	%r8d, %esi
	subl	%ecx, %esi
	je	.LBB4_17
# BB#5:                                 # %while.body.lr.ph
	leal	-1(%r8), %r10d
	subl	%ecx, %r10d
	testb	$3, %sil
	je	.LBB4_6
# BB#7:                                 # %while.body.prol.preheader
	subl	%ecx, %r8d
	andl	$3, %r8d
	negl	%r8d
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB4_8:                                # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	decl	%esi
	movzbl	(%rax), %edx
	incq	%rax
	movb	(%r9,%rdx), %dl
	movb	%dl, (%rcx)
	incq	%rcx
	incl	%r8d
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_11:                               # %if.else.13
	movl	%r8d, %r11d
	subl	%ecx, %r11d
	je	.LBB4_17
# BB#12:                                # %for.body.lr.ph
	movslq	%r10d, %r10
	decl	%r8d
	testb	$1, %r11b
	jne	.LBB4_14
# BB#13:
	movq	%rdi, %rsi
	jmp	.LBB4_15
.LBB4_14:                               # %for.body.prol
	decl	%r11d
	movzbl	(%rax), %esi
	movb	(%r9,%rsi), %dl
	movb	%dl, (%rdi)
	incq	%rax
	leaq	(%rdi,%r10), %rsi
.LBB4_15:                               # %for.body.lr.ph.split
	cmpl	%ecx, %r8d
	je	.LBB4_17
	.align	16, 0x90
.LBB4_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	movb	(%r9,%rcx), %cl
	movb	%cl, (%rsi)
	movzbl	1(%rax), %ecx
	movb	(%r9,%rcx), %cl
	movb	%cl, (%r10,%rsi)
	leaq	(%rsi,%r10), %rsi
	addq	%r10, %rsi
	addl	$-2, %r11d
	leaq	2(%rax), %rax
	jne	.LBB4_16
	jmp	.LBB4_17
.LBB4_6:
	movq	%rdi, %rcx
.LBB4_9:                                # %while.body.lr.ph.split
	cmpl	$3, %r10d
	jb	.LBB4_17
	.align	16, 0x90
.LBB4_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, (%rcx)
	movzbl	1(%rax), %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, 1(%rcx)
	movzbl	2(%rax), %edx
	movb	(%r9,%rdx), %dl
	movb	%dl, 2(%rcx)
	addl	$-4, %esi
	movzbl	3(%rax), %edx
	leaq	4(%rax), %rax
	movb	(%r9,%rdx), %dl
	movb	%dl, 3(%rcx)
	leaq	4(%rcx), %rcx
	jne	.LBB4_10
.LBB4_17:                               # %cleanup
	movq	%rdi, %rax
	retq
.LBB4_3:
	retq
.Lfunc_end4:
	.size	sample_unpack_8, .Lfunc_end4-sample_unpack_8
	.cfi_endproc

	.globl	sample_unpack_1_interleaved
	.align	16, 0x90
	.type	sample_unpack_1_interleaved,@function
sample_unpack_1_interleaved:            # @sample_unpack_1_interleaved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
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
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	movl	64(%rsp), %esi
	movl	56(%rsp), %eax
	movl	%ecx, %r14d
	sarl	$3, %r14d
	movslq	%r14d, %r11
	addq	%rdx, %r11
	cmpl	$1, %eax
	jne	.LBB5_7
# BB#1:                                 # %if.then
	subl	%r14d, %r8d
	testb	$1, %r8b
	jne	.LBB5_3
# BB#2:
	xorl	%ebx, %ebx
	movq	%rdi, %r14
	movq	%r9, %rax
	jmp	.LBB5_4
.LBB5_7:                                # %if.else
	subl	%r8d, %r14d
	je	.LBB5_10
# BB#8:                                 # %while.body.81.lr.ph
	movslq	%eax, %rbx
	movl	$8, %r8d
	movq	%r9, %rax
	movq	%rdi, %rbp
	.align	16, 0x90
.LBB5_9:                                # %while.body.81
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %r15d
	incq	%r11
	movq	%r15, %rdx
	shrq	$7, %rdx
	movb	(%rax,%rdx), %al
	movb	%al, (%rbp)
	leal	-7(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	$6, %edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbp,%rbx)
	addq	%rbx, %rbp
	leal	-6(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	$5, %edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	leal	-5(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	$4, %edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	leal	-4(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	$3, %edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	leal	-3(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	$2, %edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	leal	-2(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r15d, %edx
	shrl	%edx
	andl	$1, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	leal	-1(%r8), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	andl	$1, %r15d
	movb	(%r15,%rax), %al
	movb	%al, (%rbx,%rbp)
	addq	%rbx, %rbp
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addl	$8, %r8d
	addq	%rbx, %rbp
	incl	%r14d
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_3:                                # %if.then.2
	movzbl	(%r11), %ebx
	movq	%rbx, %rax
	shrq	$4, %rax
	movl	(%r9,%rax,4), %eax
	movl	%eax, (%rdi)
	movl	$1, %eax
	xorl	%edx, %edx
	idivl	%esi
	andl	$15, %ebx
	imulq	$332, %rdx, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	(%rax,%rbx,4), %eax
	movl	%eax, 4(%rdi)
	movl	$2, %ebx
	movl	$2, %eax
	xorl	%edx, %edx
	idivl	%esi
	imulq	$332, %rdx, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	incq	%r11
	leaq	8(%rdi), %r14
.LBB5_4:                                # %if.end
	sarl	%r8d
	je	.LBB5_10
# BB#5:                                 # %while.body.preheader
	movl	%ebx, %r15d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %ebp
	movq	%rbp, %rdx
	shrq	$4, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%r14,%rbx,4)
	leal	1(%r15,%rbx), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	andl	$15, %ebp
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	(%rax,%rbp,4), %eax
	movl	%eax, 4(%r14,%rbx,4)
	leal	2(%r15,%rbx), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	movzbl	1(%r11), %ebp
	movq	%rbp, %r12
	shrq	$4, %r12
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %r13
	leal	3(%r15,%rbx), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	andl	$15, %ebp
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %r10
	leal	4(%r15,%rbx), %eax
	cltd
	idivl	%esi
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addq	$2, %r11
	decl	%r8d
	movl	(%r13,%r12,4), %edx
	movl	%edx, 8(%r14,%rbx,4)
	movl	(%r10,%rbp,4), %edx
	movl	%edx, 12(%r14,%rbx,4)
	leaq	4(%rbx), %rbx
	jne	.LBB5_6
.LBB5_10:                               # %if.end.188
	andl	$7, %ecx
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	%ecx, (%rax)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sample_unpack_1_interleaved, .Lfunc_end5-sample_unpack_1_interleaved
	.cfi_endproc

	.globl	sample_unpack_2_interleaved
	.align	16, 0x90
	.type	sample_unpack_2_interleaved,@function
sample_unpack_2_interleaved:            # @sample_unpack_2_interleaved
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
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r12, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movl	48(%rsp), %r10d
	movl	40(%rsp), %eax
	movl	%ecx, %r11d
	sarl	$2, %r11d
	movslq	%r11d, %r15
	addq	%rdx, %r15
	cmpl	$1, %eax
	jne	.LBB6_4
# BB#1:                                 # %if.then
	subl	%r8d, %r11d
	je	.LBB6_7
# BB#2:                                 # %while.body.lr.ph
	xorl	%ebx, %ebx
	movq	%r9, %rax
	.align	16, 0x90
.LBB6_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %r8d
	incq	%r15
	movq	%r8, %rdx
	shrq	$4, %rdx
	movw	(%rax,%rdx,2), %ax
	movw	%ax, (%rdi,%rbx,2)
	leal	1(%rbx), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	andl	$15, %r8d
	movw	(%rax,%r8,2), %ax
	movw	%ax, 2(%rdi,%rbx,2)
	leal	2(%rbx), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addq	$2, %rbx
	incl	%r11d
	jne	.LBB6_3
	jmp	.LBB6_7
.LBB6_4:                                # %if.else
	subl	%r8d, %r11d
	je	.LBB6_7
# BB#5:                                 # %while.body.25.lr.ph
	movslq	%eax, %r14
	movl	$4, %r8d
	movq	%r9, %rax
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB6_6:                                # %while.body.25
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %r12d
	incq	%r15
	movq	%r12, %rdx
	shrq	$6, %rdx
	movb	(%rax,%rdx), %al
	movb	%al, (%rbx)
	leal	-3(%r8), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r12d, %edx
	shrl	$4, %edx
	andl	$3, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%rbx,%r14)
	addq	%r14, %rbx
	leal	-2(%r8), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	movl	%r12d, %edx
	shrl	$2, %edx
	andl	$3, %edx
	movb	(%rdx,%rax), %al
	movb	%al, (%r14,%rbx)
	addq	%r14, %rbx
	leal	-1(%r8), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	andl	$3, %r12d
	movb	(%r12,%rax), %al
	movb	%al, (%r14,%rbx)
	addq	%r14, %rbx
	movl	%r8d, %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addl	$4, %r8d
	addq	%r14, %rbx
	incl	%r11d
	jne	.LBB6_6
.LBB6_7:                                # %if.end
	andl	$3, %ecx
	movl	%ecx, (%rsi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	sample_unpack_2_interleaved, .Lfunc_end6-sample_unpack_2_interleaved
	.cfi_endproc

	.globl	sample_unpack_4_interleaved
	.align	16, 0x90
	.type	sample_unpack_4_interleaved,@function
sample_unpack_4_interleaved:            # @sample_unpack_4_interleaved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 40
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdx, %r11
	movl	%ecx, %eax
	sarl	%eax
	movl	%eax, %r15d
	subl	%r8d, %r15d
	je	.LBB7_3
# BB#1:                                 # %while.body.lr.ph
	movl	48(%rsp), %r8d
	cltq
	addq	%rax, %r11
	movslq	40(%rsp), %r14
	movl	$2, %r10d
	movq	%rdi, %rbx
	movq	%r9, %rax
	.align	16, 0x90
.LBB7_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %ebp
	incq	%r11
	movq	%rbp, %rdx
	shrq	$4, %rdx
	movb	(%rax,%rdx), %al
	movb	%al, (%rbx)
	leal	-1(%r10), %eax
	cltd
	idivl	%r8d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	andl	$15, %ebp
	movb	(%rbp,%rax), %al
	movb	%al, (%r14,%rbx)
	addq	%r14, %rbx
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addq	%r14, %rbx
	addl	$2, %r10d
	incl	%r15d
	jne	.LBB7_2
.LBB7_3:                                # %while.end
	andl	$1, %ecx
	movl	%ecx, (%rsi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sample_unpack_4_interleaved, .Lfunc_end7-sample_unpack_4_interleaved
	.cfi_endproc

	.globl	sample_unpack_8_interleaved
	.align	16, 0x90
	.type	sample_unpack_8_interleaved,@function
sample_unpack_8_interleaved:            # @sample_unpack_8_interleaved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rdx, %r10
	movl	40(%rsp), %r11d
	movl	32(%rsp), %eax
	movslq	%ecx, %rdx
	addq	%rdx, %r10
	movl	$0, (%rsi)
	movl	%r8d, %ebp
	subl	%edx, %ebp
	cmpl	$1, %eax
	jne	.LBB8_1
# BB#8:                                 # %while.cond.preheader
	movl	%r8d, %eax
	subl	%ecx, %eax
	je	.LBB8_15
# BB#9:                                 # %while.body.preheader
	decl	%r8d
	testb	$1, %al
	jne	.LBB8_11
# BB#10:
	xorl	%esi, %esi
	movq	%r9, %rax
	movq	%rdi, %rbx
	jmp	.LBB8_12
.LBB8_1:                                # %for.cond.preheader
	movl	%r8d, %edx
	subl	%ecx, %edx
	je	.LBB8_15
# BB#2:                                 # %for.body.lr.ph
	movslq	%eax, %r14
	decl	%r8d
	testb	$1, %dl
	jne	.LBB8_4
# BB#3:
	xorl	%esi, %esi
	movq	%r9, %rax
	movq	%rdi, %rbx
	jmp	.LBB8_5
.LBB8_11:                               # %while.body.prol
	decl	%ebp
	movzbl	(%r10), %eax
	incq	%r10
	movb	(%r9,%rax), %al
	leaq	1(%rdi), %rbx
	movb	%al, (%rdi)
	movl	$1, %esi
	movl	$1, %eax
	xorl	%edx, %edx
	idivl	%r11d
	imulq	$332, %rdx, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
.LBB8_12:                               # %while.body.preheader.split
	cmpl	%ecx, %r8d
	je	.LBB8_15
# BB#13:                                # %while.body.preheader.split.split
	orl	$2, %esi
	.align	16, 0x90
.LBB8_14:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r10), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, (%rbx)
	leal	-1(%rsi), %eax
	cltd
	idivl	%r11d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rcx
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addl	$2, %esi
	addl	$-2, %ebp
	movzbl	1(%r10), %edx
	leaq	2(%r10), %r10
	movb	(%rdx,%rcx), %cl
	movb	%cl, 1(%rbx)
	leaq	2(%rbx), %rbx
	jne	.LBB8_14
	jmp	.LBB8_15
.LBB8_4:                                # %for.body.prol
	decl	%ebp
	movzbl	(%r10), %eax
	movb	(%r9,%rax), %al
	movb	%al, (%rdi)
	movl	$1, %esi
	movl	$1, %eax
	xorl	%edx, %edx
	idivl	%r11d
	imulq	$332, %rdx, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	incq	%r10
	leaq	(%rdi,%r14), %rbx
.LBB8_5:                                # %for.body.lr.ph.split
	cmpl	%ecx, %r8d
	je	.LBB8_15
# BB#6:                                 # %for.body.lr.ph.split.split
	orl	$2, %esi
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r10), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, (%rbx)
	leal	-1(%rsi), %eax
	cltd
	idivl	%r11d
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rcx
	movl	%esi, %eax
	cltd
	idivl	%r11d
	movzbl	1(%r10), %eax
	movb	(%rax,%rcx), %al
	movb	%al, (%r14,%rbx)
	leaq	(%rbx,%r14), %rbx
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	leaq	(%rax,%r9), %rax
	addq	%r14, %rbx
	addl	$2, %esi
	addl	$-2, %ebp
	leaq	2(%r10), %r10
	jne	.LBB8_7
.LBB8_15:                               # %if.end
	movq	%rdi, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sample_unpack_8_interleaved, .Lfunc_end8-sample_unpack_8_interleaved
	.cfi_endproc

	.type	lookup4x1to32_identity,@object # @lookup4x1to32_identity
	.section	.rodata,"a",@progbits
	.globl	lookup4x1to32_identity
	.align	16
lookup4x1to32_identity:
	.long	0                       # 0x0
	.long	4278190080              # 0xff000000
	.long	16711680                # 0xff0000
	.long	4294901760              # 0xffff0000
	.long	65280                   # 0xff00
	.long	4278255360              # 0xff00ff00
	.long	16776960                # 0xffff00
	.long	4294967040              # 0xffffff00
	.long	255                     # 0xff
	.long	4278190335              # 0xff0000ff
	.long	16711935                # 0xff00ff
	.long	4294902015              # 0xffff00ff
	.long	65535                   # 0xffff
	.long	4278255615              # 0xff00ffff
	.long	16777215                # 0xffffff
	.long	4294967295              # 0xffffffff
	.size	lookup4x1to32_identity, 64

	.type	lookup4x1to32_inverted,@object # @lookup4x1to32_inverted
	.globl	lookup4x1to32_inverted
	.align	16
lookup4x1to32_inverted:
	.long	4294967295              # 0xffffffff
	.long	16777215                # 0xffffff
	.long	4278255615              # 0xff00ffff
	.long	65535                   # 0xffff
	.long	4294902015              # 0xffff00ff
	.long	16711935                # 0xff00ff
	.long	4278190335              # 0xff0000ff
	.long	255                     # 0xff
	.long	4294967040              # 0xffffff00
	.long	16776960                # 0xffff00
	.long	4278255360              # 0xff00ff00
	.long	65280                   # 0xff00
	.long	4294901760              # 0xffff0000
	.long	16711680                # 0xff0000
	.long	4278190080              # 0xff000000
	.long	0                       # 0x0
	.size	lookup4x1to32_inverted, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
