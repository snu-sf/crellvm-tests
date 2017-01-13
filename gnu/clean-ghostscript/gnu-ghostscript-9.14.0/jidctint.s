	.text
	.file	"jidctint.bc"
	.globl	jpeg_idct_islow
	.align	16, 0x90
	.type	jpeg_idct_islow,@function
jpeg_idct_islow:                        # @jpeg_idct_islow
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
	subq	$184, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 240
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
	movl	%r8d, -116(%rsp)        # 4-byte Spill
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movq	440(%rdi), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	leaq	144(%rsp), %rdi
	movl	$224, %r15d
	addq	88(%rsi), %r15
	addq	$112, %rdx
	movl	$9, %eax
	jmp	.LBB0_1
.LBB0_21:                               # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movswl	-112(%rdx), %eax
	imull	-224(%r15), %eax
	shll	$2, %eax
	movq	-88(%rsp), %rdi         # 8-byte Reload
	movl	%eax, -224(%rdi)
	movl	%eax, -192(%rdi)
	movl	%eax, -160(%rdi)
	movl	%eax, -128(%rdi)
	movl	%eax, -96(%rdi)
	movl	%eax, -64(%rdi)
	movl	%eax, -32(%rdi)
	movl	%eax, (%rdi)
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, -92(%rsp)         # 4-byte Spill
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movswl	-96(%rdx), %r14d
	movw	-80(%rdx), %ax
	movw	%r14w, %si
	orw	%ax, %si
	jne	.LBB0_8
# BB#2:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpw	$0, -64(%rdx)
	jne	.LBB0_7
# BB#3:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpw	$0, -48(%rdx)
	jne	.LBB0_7
# BB#4:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpw	$0, -32(%rdx)
	jne	.LBB0_7
# BB#5:                                 # %land.lhs.true.22
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpw	$0, -16(%rdx)
	jne	.LBB0_7
# BB#6:                                 # %land.lhs.true.27
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpw	$0, (%rdx)
	je	.LBB0_21
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movswq	-112(%rdx), %rdi
	movslq	-224(%r15), %rsi
	imulq	%rdi, %rsi
	movswq	-48(%rdx), %rdi
	movslq	-96(%r15), %rbx
	imulq	%rdi, %rbx
	shlq	$13, %rsi
	shlq	$13, %rbx
	leaq	1024(%rbx,%rsi), %r12
	orq	$1024, %rsi             # imm = 0x400
	subq	%rbx, %rsi
	movslq	-160(%r15), %rbx
	movswq	%ax, %rax
	imulq	%rbx, %rax
	movswq	-16(%rdx), %rbx
	movslq	-32(%r15), %rbp
	imulq	%rbx, %rbp
	leaq	(%rbp,%rax), %rbx
	imulq	$4433, %rbx, %rbx       # imm = 0x1151
	imulq	$6270, %rax, %rax       # imm = 0x187E
	imulq	$-15137, %rbp, %rbp     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	(%rax,%rbx), %rax
	leaq	(%rbp,%rbx), %rdi
	leaq	(%rax,%r12), %rbp
	subq	%rax, %r12
	leaq	(%rdi,%rsi), %r11
	subq	%rdi, %rsi
	movswq	(%rdx), %rax
	movslq	(%r15), %rdi
	imulq	%rax, %rdi
	movswq	-32(%rdx), %r13
	movslq	-64(%r15), %rax
	imulq	%r13, %rax
	movswq	-64(%rdx), %r13
	movslq	-128(%r15), %r9
	imulq	%r13, %r9
	imull	-192(%r15), %r14d
	movslq	%r14d, %rcx
	leaq	(%r9,%rdi), %r14
	leaq	(%rcx,%rax), %r13
	leaq	(%r13,%r14), %r10
	imulq	$9633, %r10, %r10       # imm = 0x25A1
	imulq	$-16069, %r14, %r14     # imm = 0xFFFFFFFFFFFFC13B
	imulq	$-3196, %r13, %r13      # imm = 0xFFFFFFFFFFFFF384
	leaq	(%r14,%r10), %r8
	leaq	(%r13,%r10), %r10
	leaq	(%rcx,%rdi), %rbx
	imulq	$-7373, %rbx, %rbx      # imm = 0xFFFFFFFFFFFFE333
	imulq	$2446, %rdi, %rdi       # imm = 0x98E
	imulq	$12299, %rcx, %rcx      # imm = 0x300B
	leaq	(%rdi,%rbx), %r14
	addq	%r8, %r14
	addq	%rbx, %rcx
	addq	%r10, %rcx
	leaq	(%r9,%rax), %rdi
	imulq	$-20995, %rdi, %rdi     # imm = 0xFFFFFFFFFFFFADFD
	imulq	$16819, %rax, %rax      # imm = 0x41B3
	imulq	$25172, %r9, %rbx       # imm = 0x6254
	leaq	(%rax,%rdi), %r9
	addq	%r10, %r9
	addq	%rdi, %rbx
	addq	%r8, %rbx
	leaq	(%rcx,%rbp), %rdi
	shrq	$11, %rdi
	movq	-88(%rsp), %rax         # 8-byte Reload
	movl	%edi, -224(%rax)
	movq	%rax, %rdi
	subq	%rcx, %rbp
	shrq	$11, %rbp
	movl	%ebp, (%rdi)
	leaq	(%rbx,%r11), %rcx
	shrq	$11, %rcx
	movl	%ecx, -192(%rdi)
	subq	%rbx, %r11
	shrq	$11, %r11
	movl	%r11d, -32(%rdi)
	leaq	(%r9,%rsi), %rcx
	shrq	$11, %rcx
	movl	%ecx, -160(%rdi)
	subq	%r9, %rsi
	shrq	$11, %rsi
	movl	%esi, -64(%rdi)
	leaq	(%r14,%r12), %rax
	shrq	$11, %rax
	movl	%eax, -128(%rdi)
	subq	%r14, %r12
	shrq	$11, %r12
	movl	%r12d, -96(%rdi)
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-92(%rsp), %eax         # 4-byte Reload
	decl	%eax
	addq	$4, %rdi
	addq	$4, %r15
	addq	$2, %rdx
	cmpl	$1, %eax
	jg	.LBB0_1
# BB#10:                                # %for.cond.157.preheader
	movl	-116(%rsp), %r8d        # 4-byte Reload
	xorl	%r15d, %r15d
	jmp	.LBB0_11
.LBB0_17:                               # %if.then.193
                                        #   in Loop: Header=BB0_11 Depth=1
	shrq	$5, %rax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-112(%rsp), %rcx        # 8-byte Reload
	movb	-384(%rcx,%rax), %al
	movb	%al, (%r10,%r8)
	movb	%al, 1(%r10,%r8)
	movb	%al, 2(%r10,%r8)
	movb	%al, 3(%r10,%r8)
	movb	%al, 4(%r10,%r8)
	movb	%al, 5(%r10,%r8)
	movb	%al, 6(%r10,%r8)
	movb	%al, 7(%r10,%r8)
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_11:                               # %for.body.160
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rsp), %rax        # 8-byte Reload
	movq	(%rax,%r15), %r10
	movslq	-80(%rsp,%r15,4), %rax
	addq	$16400, %rax            # imm = 0x4010
	movslq	-76(%rsp,%r15,4), %r11
	movl	-72(%rsp,%r15,4), %esi
	movl	%r11d, %ecx
	orl	%esi, %ecx
	jne	.LBB0_18
# BB#12:                                # %land.lhs.true.173
                                        #   in Loop: Header=BB0_11 Depth=1
	xorl	%esi, %esi
	cmpl	$0, -68(%rsp,%r15,4)
	jne	.LBB0_18
# BB#13:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -64(%rsp,%r15,4)
	jne	.LBB0_18
# BB#14:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -60(%rsp,%r15,4)
	jne	.LBB0_18
# BB#15:                                # %land.lhs.true.185
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -56(%rsp,%r15,4)
	jne	.LBB0_18
# BB#16:                                # %land.lhs.true.189
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -52(%rsp,%r15,4)
	je	.LBB0_17
	.align	16, 0x90
.LBB0_18:                               # %if.end.208
                                        #   in Loop: Header=BB0_11 Depth=1
	movslq	-64(%rsp,%r15,4), %rcx
	leaq	(%rcx,%rax), %r13
	shlq	$13, %r13
	subq	%rcx, %rax
	shlq	$13, %rax
	movslq	%esi, %rcx
	movslq	-56(%rsp,%r15,4), %rsi
	leaq	(%rsi,%rcx), %rdi
	imulq	$4433, %rdi, %rdi       # imm = 0x1151
	imulq	$6270, %rcx, %rcx       # imm = 0x187E
	imulq	$-15137, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFC4DF
	leaq	(%rcx,%rdi), %rcx
	leaq	(%rsi,%rdi), %rsi
	leal	(%rcx,%r13), %edi
	subl	%ecx, %r13d
	leal	(%rsi,%rax), %ebx
	subl	%esi, %eax
	movslq	-52(%rsp,%r15,4), %rcx
	movslq	-60(%rsp,%r15,4), %r14
	movslq	-68(%rsp,%r15,4), %r9
	leaq	(%r9,%rcx), %rsi
	leaq	(%r11,%r14), %rbp
	leaq	(%rbp,%rsi), %rdx
	imulq	$9633, %rdx, %rdx       # imm = 0x25A1
	imulq	$-16069, %rsi, %rsi     # imm = 0xFFFFFFFFFFFFC13B
	imulq	$-3196, %rbp, %rbp      # imm = 0xFFFFFFFFFFFFF384
	leaq	(%rsi,%rdx), %r12
	leaq	(%rbp,%rdx), %rdx
	leaq	(%r11,%rcx), %rsi
	imulq	$-7373, %rsi, %rsi      # imm = 0xFFFFFFFFFFFFE333
	imull	$2446, %ecx, %ecx       # imm = 0x98E
	imull	$12299, %r11d, %ebp     # imm = 0x300B
	leal	(%rcx,%rsi), %r11d
	addl	%r12d, %r11d
	addl	%ebp, %esi
	addl	%edx, %esi
	leaq	(%r9,%r14), %rcx
	imulq	$-20995, %rcx, %rbp     # imm = 0xFFFFFFFFFFFFADFD
	imull	$16819, %r14d, %ecx     # imm = 0x41B3
	imull	$25172, %r9d, %r9d      # imm = 0x6254
	leal	(%rcx,%rbp), %r14d
	addl	%edx, %r14d
	addl	%r9d, %ebp
	addl	%r12d, %ebp
	leal	(%rsi,%rdi), %ecx
	shrl	$18, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	movq	-112(%rsp), %rdx        # 8-byte Reload
	movb	-384(%rdx,%rcx), %cl
	movb	%cl, (%r10,%r8)
	subl	%esi, %edi
	shrl	$18, %edi
	andl	$1023, %edi             # imm = 0x3FF
	movb	-384(%rdx,%rdi), %cl
	movb	%cl, 7(%r10,%r8)
	leal	(%rbp,%rbx), %ecx
	shrl	$18, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	movb	-384(%rdx,%rcx), %cl
	movb	%cl, 1(%r10,%r8)
	subl	%ebp, %ebx
	shrl	$18, %ebx
	andl	$1023, %ebx             # imm = 0x3FF
	movb	-384(%rdx,%rbx), %cl
	movb	%cl, 6(%r10,%r8)
	leal	(%r14,%rax), %ecx
	shrl	$18, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	movb	-384(%rdx,%rcx), %cl
	movb	%cl, 2(%r10,%r8)
	subl	%r14d, %eax
	shrl	$18, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movb	-384(%rdx,%rax), %al
	movb	%al, 5(%r10,%r8)
	leal	(%r11,%r13), %eax
	shrl	$18, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movb	-384(%rdx,%rax), %al
	movb	%al, 3(%r10,%r8)
	subl	%r11d, %r13d
	shrl	$18, %r13d
	andl	$1023, %r13d            # imm = 0x3FF
	movb	-384(%rdx,%r13), %al
	movb	%al, 4(%r10,%r8)
.LBB0_19:                               # %for.inc.318
                                        #   in Loop: Header=BB0_11 Depth=1
	addq	$8, %r15
	cmpq	$64, %r15
	jne	.LBB0_11
# BB#20:                                # %for.end.319
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_idct_islow, .Lfunc_end0-jpeg_idct_islow
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
