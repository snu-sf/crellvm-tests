	.text
	.file	"gdevm32.bc"
	.align	16, 0x90
	.type	mem_true32_fill_rectangle,@function
mem_true32_fill_rectangle:              # @mem_true32_fill_rectangle
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movl	%r8d, %ebp
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%edx, %ebx
	sarl	$31, %ebx
	andl	%edx, %ebx
	addl	%ebx, %ebp
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB0_2:                                # %do.body.10
	movl	832(%rdi), %r14d
	movl	836(%rdi), %r10d
	movl	%r14d, %r15d
	subl	%esi, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	movl	%r10d, %eax
	subl	%edx, %eax
	cmpl	%eax, %ebp
	cmovlel	%ebp, %eax
	testl	%r15d, %r15d
	jle	.LBB0_38
# BB#3:                                 # %do.body.10
	testl	%eax, %eax
	jle	.LBB0_38
# BB#4:                                 # %do.end.34
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%r9d, %r8d
	shrl	$24, %r8d
	movl	%r9d, %r11d
	shrl	$8, %r11d
	andl	$65280, %r11d           # imm = 0xFF00
	movq	%r9, %rbx
	shlq	$8, %rbx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shlq	$24, %r9
	orl	%r11d, %r9d
	orl	%r8d, %r9d
	movq	%r15, %r8
	orl	%ebx, %r9d
	movl	1736(%rdi), %r15d
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movslq	%edx, %rbx
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rbx,8), %r11
	leal	(,%rsi,4), %edi
	movslq	%edi, %rdi
	leaq	(%r11,%rdi), %rbx
	cmpl	$4, %r8d
	jg	.LBB0_15
# BB#5:                                 # %if.then.45
	decl	%r8d
	cmpl	$3, %r8d
	ja	.LBB0_38
# BB#6:                                 # %if.then.45
	jmpq	*.LJTI0_0(,%r8,8)
.LBB0_7:                                # %do.body.46.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_8:                                # %do.body.46
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, (%rbx)
	addq	%r15, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_8
	jmp	.LBB0_38
.LBB0_15:                               # %if.else
	testl	%r9d, %r9d
	je	.LBB0_25
# BB#16:                                # %do.body.104.preheader
	decl	%esi
	subl	%r14d, %esi
	notl	%ecx
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	$-6, %edx
	subl	%ecx, %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movl	%edx, %esi
	shrl	$2, %esi
	movq	%rsi, %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	leaq	16(%r11,%rdx), %r13
	incl	%esi
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	andl	$7, %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$3, %edi
	subl	%ecx, %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	%esi, %ecx
	negl	%ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	leaq	64(%r11,%rdx), %rdx
	.align	16, 0x90
.LBB0_17:                               # %do.body.104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	movq	40(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	32(%rsp), %ebp          # 4-byte Reload
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %esi
	movq	%rbx, %rdi
	movl	%r8d, %ecx
	je	.LBB0_20
	.align	16, 0x90
.LBB0_18:                               # %do.body.105.prol
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %ecx
	movdqu	%xmm0, (%rdi)
	addq	$16, %rdi
	leal	-4(%rcx), %esi
	incl	%ebp
	jne	.LBB0_18
# BB#19:                                #   in Loop: Header=BB0_17 Depth=1
	addl	$-8, %ecx
.LBB0_20:                               # %do.body.104.split
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$28, 52(%rsp)           # 4-byte Folded Reload
	jb	.LBB0_23
	.align	16, 0x90
.LBB0_21:                               # %do.body.105
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %esi
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 48(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 80(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 112(%rdi)
	leal	-32(%rsi), %ecx
	subq	$-128, %rdi
	cmpl	$4, %ecx
	jg	.LBB0_21
# BB#22:                                # %do.body.116.preheader.unr-lcssa
                                        #   in Loop: Header=BB0_17 Depth=1
	addl	$-28, %esi
.LBB0_23:                               # %do.body.116.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$3, %r11d
	subl	%esi, %r11d
	cmpl	$-3, %r11d
	movl	$-2, %edi
	cmovgl	%r11d, %edi
	leal	-3(%rsi,%rdi), %r14d
	incq	%r14
	movq	%r14, %r12
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rdi, %r12
	movq	%r14, %r10
	andq	%rdi, %r10
	je	.LBB0_24
# BB#27:                                # %vector.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	%rax, %r15
	cmpl	$-3, %r11d
	movq	%rdi, %rax
	movl	$-2, %edi
	cmovgl	%r11d, %edi
	leal	-3(%rsi,%rdi), %ebp
	incq	%rbp
	andq	%rax, %rbp
	addq	$-8, %rbp
	movl	%ebp, %edi
	shrl	$3, %edi
	incl	%edi
	testb	$3, %dil
	movl	$0, %r8d
	je	.LBB0_30
# BB#28:                                # %vector.body.prol.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$-3, %r11d
	movl	$-2, %edi
	cmovgl	%r11d, %edi
	leal	-2(%rsi,%rdi), %edi
	andl	$24, %edi
	addl	$-8, %edi
	shrl	$3, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB0_29:                               # %vector.body.prol
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%r13,%r8,4)
	movdqu	%xmm0, 16(%r13,%r8,4)
	addq	$8, %r8
	incq	%rdi
	jne	.LBB0_29
.LBB0_30:                               # %vector.ph.split
                                        #   in Loop: Header=BB0_17 Depth=1
	subl	%r12d, %ecx
	leaq	(%r13,%r10,4), %rdi
	cmpq	$24, %rbp
	movq	%r15, %rax
	jb	.LBB0_33
# BB#31:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$-3, %r11d
	movl	$-2, %ebp
	cmovlel	%ebp, %r11d
	leal	-3(%rsi,%r11), %esi
	incq	%rsi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	andq	%rbp, %rsi
	subq	%r8, %rsi
	leaq	(%rdx,%r8,4), %rbp
	.align	16, 0x90
.LBB0_32:                               # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -48(%rbp)
	movdqu	%xmm0, -32(%rbp)
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm0, (%rbp)
	movdqu	%xmm0, 16(%rbp)
	movdqu	%xmm0, 32(%rbp)
	movdqu	%xmm0, 48(%rbp)
	movdqu	%xmm0, 64(%rbp)
	subq	$-128, %rbp
	addq	$-32, %rsi
	jne	.LBB0_32
.LBB0_33:                               #   in Loop: Header=BB0_17 Depth=1
	movq	16(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=1
	movq	%r13, %rdi
	xorl	%r10d, %r10d
.LBB0_34:                               # %middle.block
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpq	%r10, %r14
	je	.LBB0_37
# BB#35:                                # %do.body.116.preheader117
                                        #   in Loop: Header=BB0_17 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB0_36:                               # %do.body.116
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, (%rdi)
	addq	$4, %rdi
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB0_36
.LBB0_37:                               # %do.end.121
                                        #   in Loop: Header=BB0_17 Depth=1
	addq	%r15, %rbx
	addq	%r15, %r13
	addq	%r15, %rdx
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	jg	.LBB0_17
	jmp	.LBB0_38
.LBB0_25:                               # %do.body.93.preheader
	shll	$2, %r8d
	movslq	%r8d, %r14
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_26:                               # %do.body.93
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memset
	addq	%r15, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_26
	jmp	.LBB0_38
.LBB0_9:                                # %do.body.55.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	leaq	4(%rdi,%r11), %rax
	.align	16, 0x90
.LBB0_10:                               # %do.body.55
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, -4(%rax)
	movl	%r9d, (%rax)
	decl	%ebp
	addq	%r15, %rax
	cmpl	$1, %ebp
	jg	.LBB0_10
	jmp	.LBB0_38
.LBB0_11:                               # %do.body.66.preheader
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	leaq	8(%rdi,%r11), %rax
	.align	16, 0x90
.LBB0_12:                               # %do.body.66
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, -8(%rax)
	movl	%r9d, -4(%rax)
	movl	%r9d, (%rax)
	decl	%ebp
	addq	%r15, %rax
	cmpl	$1, %ebp
	jg	.LBB0_12
	jmp	.LBB0_38
.LBB0_13:                               # %do.body.78.preheader
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	decl	%edx
	subl	%r10d, %edx
	notl	%ebp
	cmpl	%ebp, %edx
	cmovgel	%edx, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_14:                               # %do.body.78
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx)
	addq	%r15, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_14
.LBB0_38:                               # %cleanup
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_true32_fill_rectangle, .Lfunc_end0-mem_true32_fill_rectangle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_7
	.quad	.LBB0_9
	.quad	.LBB0_11
	.quad	.LBB0_13

	.text
	.align	16, 0x90
	.type	mem_true32_copy_mono,@function
mem_true32_copy_mono:                   # @mem_true32_copy_mono
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
	movl	%ecx, %eax
	movl	%edx, %ecx
	movq	%rsi, %r15
	movl	72(%rsp), %r8d
	movl	64(%rsp), %ebp
	movl	56(%rsp), %esi
	movl	%esi, %edx
	orl	%r9d, %edx
	js	.LBB1_2
# BB#1:
	movl	%eax, -20(%rsp)         # 4-byte Spill
	movl	%esi, %r10d
	jmp	.LBB1_6
.LBB1_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	leal	(%rbp,%rbx), %ebp
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	movq	%r9, %rdx
	subl	%ebx, %ecx
	testl	%esi, %esi
	js	.LBB1_4
# BB#3:
	movl	%eax, -20(%rsp)         # 4-byte Spill
	movl	%esi, %r10d
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.26
	addl	%esi, %r8d
	imull	%eax, %esi
	movl	%eax, -20(%rsp)         # 4-byte Spill
	movslq	%esi, %rsi
	subq	%rsi, %r15
.LBB1_5:                                # %if.end.29
	movq	%rdx, %r9
.LBB1_6:                                # %if.end.29
	movl	832(%rdi), %r13d
	movl	%r13d, -16(%rsp)        # 4-byte Spill
	movl	836(%rdi), %r11d
	subl	%r9d, %r13d
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	subl	%r10d, %r11d
	cmpl	%r11d, %r8d
	cmovlel	%r8d, %r11d
	testl	%r13d, %r13d
	jle	.LBB1_56
# BB#7:                                 # %if.end.29
	testl	%r11d, %r11d
	jle	.LBB1_56
# BB#8:                                 # %do.end.51
	movq	88(%rsp), %r14
	movq	80(%rsp), %r8
	movl	%r14d, %esi
	shrl	$8, %esi
	movq	%r14, %rax
	shlq	$24, %rax
	andl	$65280, %esi            # imm = 0xFF00
	movq	%r14, %rbx
	shlq	$8, %rbx
	movl	%r14d, %edx
	shrl	$24, %edx
	orl	%esi, %eax
	andl	$16711680, %ebx         # imm = 0xFF0000
	orl	%edx, %eax
	orl	%ebx, %eax
	movq	%r9, %rbx
	movl	1736(%rdi), %edx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movslq	%r10d, %rdx
	movq	2576(%rdi), %rsi
	leal	(,%rbx,4), %edi
	movslq	%edi, %r12
	addq	(%rsi,%rdx,8), %r12
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	leaq	(%r15,%rdx), %r10
	andl	$7, %ecx
	cmpq	$-1, %r8
	je	.LBB1_9
# BB#45:                                # %if.else.163
	movl	$128, %r15d
	shrl	%cl, %r15d
	testl	%r11d, %r11d
	jle	.LBB1_56
# BB#46:                                # %while.body.171.lr.ph
	movl	%r8d, %edx
	shrl	$8, %edx
	movq	%r8, %rcx
	shlq	$24, %rcx
	andl	$65280, %edx            # imm = 0xFF00
	movq	%r8, %rsi
	shlq	$8, %rsi
	shrl	$24, %r8d
	orl	%edx, %ecx
	andl	$16711680, %esi         # imm = 0xFF0000
	orl	%r8d, %ecx
	orl	%esi, %ecx
	movslq	-20(%rsp), %r8          # 4-byte Folded Reload
	decl	%ebx
	subl	-16(%rsp), %ebx         # 4-byte Folded Reload
	notl	%ebp
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	negl	%ebp
	movq	%rbp, %r9
	.align	16, 0x90
.LBB1_47:                               # %while.body.171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_48 Depth 2
	leaq	1(%r10), %rsi
	movzbl	(%r10), %edi
	movl	%r9d, %ebp
	movq	%r12, %rdx
	movl	%r15d, %ebx
	.align	16, 0x90
.LBB1_48:                               # %do.body.178
                                        #   Parent Loop BB1_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%edi, %ebx
	je	.LBB1_51
# BB#49:                                # %if.then.181
                                        #   in Loop: Header=BB1_48 Depth=2
	cmpq	$-1, %r14
	je	.LBB1_52
# BB#50:                                # %if.then.184
                                        #   in Loop: Header=BB1_48 Depth=2
	movl	%eax, (%rdx)
	jmp	.LBB1_52
	.align	16, 0x90
.LBB1_51:                               # %if.else.186
                                        #   in Loop: Header=BB1_48 Depth=2
	movl	%ecx, (%rdx)
.LBB1_52:                               # %if.end.187
                                        #   in Loop: Header=BB1_48 Depth=2
	sarl	%ebx
	jne	.LBB1_54
# BB#53:                                # %if.then.191
                                        #   in Loop: Header=BB1_48 Depth=2
	movzbl	(%rsi), %edi
	incq	%rsi
	movl	$128, %ebx
.LBB1_54:                               # %if.end.194
                                        #   in Loop: Header=BB1_48 Depth=2
	addq	$4, %rdx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_48
# BB#55:                                # %do.end.200
                                        #   in Loop: Header=BB1_47 Depth=1
	addq	%r8, %r10
	addq	-8(%rsp), %r12          # 8-byte Folded Reload
	cmpl	$1, %r11d
	leal	-1(%r11), %edx
	movl	%edx, %r11d
	jg	.LBB1_47
	jmp	.LBB1_56
.LBB1_9:                                # %if.then.60
	movl	$8, %edi
	subl	%ecx, %edi
	cmpl	%edi, %r13d
	cmovlel	%r13d, %edi
	cmpq	$-1, %r14
	je	.LBB1_56
# BB#10:                                # %if.then.60
	testl	%r11d, %r11d
	jle	.LBB1_56
# BB#11:                                # %while.body.lr.ph
	subl	%edi, %r13d
	movslq	%edi, %rsi
	movq	%rsi, -32(%rsp)         # 8-byte Spill
	movslq	-20(%rsp), %r8          # 4-byte Folded Reload
	decl	%ebx
	subl	-16(%rsp), %ebx         # 4-byte Folded Reload
	notl	%ebp
	leal	-9(%rcx), %edi
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	cmpl	%edi, %ebp
	cmovgel	%ebp, %edi
	leal	-8(%rdi), %esi
	subl	%ebp, %esi
	shrl	$3, %esi
	addq	%rsi, %rdx
	leaq	2(%r15,%rdx), %r14
	leaq	8(,%rsi,8), %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	negl	%edi
	.align	16, 0x90
.LBB1_12:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_41 Depth 2
	movzbl	(%r10), %edx
	shll	%cl, %edx
	andl	$255, %edx
	movl	%edi, %esi
	movq	%r12, %rbx
	je	.LBB1_16
	.align	16, 0x90
.LBB1_13:                               # %do.body.77
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$-128, %dl
	je	.LBB1_15
# BB#14:                                # %if.then.80
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	%eax, (%rbx)
.LBB1_15:                               # %if.end.81
                                        #   in Loop: Header=BB1_13 Depth=2
	addl	%edx, %edx
	addq	$4, %rbx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB1_13
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_16:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-32(%rsp), %rdx         # 8-byte Reload
	leaq	(%r12,%rdx,4), %rbx
.LBB1_17:                               # %for.cond.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r10), %rsi
	cmpl	$8, %r13d
	jl	.LBB1_18
# BB#19:                                # %for.body.preheader
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	28(%rbx), %r15
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB1_20:                               # %for.body
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %r9d
	testl	%r9d, %r9d
	je	.LBB1_37
# BB#21:                                # %if.then.97
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$-128, %r9b
	je	.LBB1_23
# BB#22:                                # %if.then.100
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -28(%r15)
.LBB1_23:                               # %if.end.102
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$64, %r9b
	je	.LBB1_25
# BB#24:                                # %if.then.105
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -24(%r15)
.LBB1_25:                               # %if.end.107
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$32, %r9b
	je	.LBB1_27
# BB#26:                                # %if.then.110
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -20(%r15)
.LBB1_27:                               # %if.end.112
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$16, %r9b
	je	.LBB1_29
# BB#28:                                # %if.then.115
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -16(%r15)
.LBB1_29:                               # %if.end.117
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$8, %r9b
	je	.LBB1_31
# BB#30:                                # %if.then.120
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -12(%r15)
.LBB1_31:                               # %if.end.122
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$4, %r9b
	je	.LBB1_33
# BB#32:                                # %if.then.125
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -8(%r15)
.LBB1_33:                               # %if.end.127
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$2, %r9b
	je	.LBB1_35
# BB#34:                                # %if.then.130
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, -4(%r15)
.LBB1_35:                               # %if.end.132
                                        #   in Loop: Header=BB1_20 Depth=2
	testb	$1, %r9b
	je	.LBB1_37
# BB#36:                                # %if.then.135
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%eax, (%r15)
.LBB1_37:                               # %for.inc
                                        #   in Loop: Header=BB1_20 Depth=2
	addl	$-8, %ebp
	incq	%rsi
	addq	$32, %r15
	cmpl	$7, %ebp
	jg	.LBB1_20
# BB#38:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-16(%rsp), %rdx         # 8-byte Reload
	leaq	(%rbx,%rdx,4), %rbx
	movq	%r14, %rsi
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_12 Depth=1
	movl	%r13d, %ebp
.LBB1_39:                               # %for.end
                                        #   in Loop: Header=BB1_12 Depth=1
	testl	%ebp, %ebp
	je	.LBB1_44
# BB#40:                                # %if.then.142
                                        #   in Loop: Header=BB1_12 Depth=1
	movzbl	(%rsi), %edx
	incl	%ebp
	.align	16, 0x90
.LBB1_41:                               # %do.body.144
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$-128, %dl
	je	.LBB1_43
# BB#42:                                # %if.then.147
                                        #   in Loop: Header=BB1_41 Depth=2
	movl	%eax, (%rbx)
.LBB1_43:                               # %if.end.148
                                        #   in Loop: Header=BB1_41 Depth=2
	addl	%edx, %edx
	addq	$4, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_41
.LBB1_44:                               # %if.end.156
                                        #   in Loop: Header=BB1_12 Depth=1
	addq	%r8, %r10
	addq	-8(%rsp), %r12          # 8-byte Folded Reload
	addq	%r8, %r14
	cmpl	$1, %r11d
	leal	-1(%r11), %edx
	movl	%edx, %r11d
	jg	.LBB1_12
.LBB1_56:                               # %cleanup.207
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mem_true32_copy_mono, .Lfunc_end1-mem_true32_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true32_copy_color,@function
mem_true32_copy_color:                  # @mem_true32_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r11d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB2_2
# BB#1:
	movl	%eax, %esi
	movl	%r8d, %ebx
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	subl	%ebx, %edx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	addl	%r8d, %ebx
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %esi
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB2_5:                                # %if.end.8
	movl	832(%rdi), %r8d
	movl	836(%rdi), %eax
	subl	%r9d, %r8d
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%esi, %eax
	cmpl	%eax, %r11d
	cmovlel	%r11d, %eax
	testl	%r8d, %r8d
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	movslq	%esi, %rsi
	movq	2576(%rdi), %rbx
	shll	$2, %r9d
	movslq	%r9d, %r9
	addq	(%rbx,%rsi,8), %r9
	movl	1736(%rdi), %esi
	shll	$2, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	shll	$2, %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	mem_true32_copy_color, .Lfunc_end2-mem_true32_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem32_word_fill_rectangle,@function
mem32_word_fill_rectangle:              # @mem32_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 16
	movq	%r9, %rax
	shrq	$24, %rax
	movzbl	%al, %r10d
	movq	%r9, %r11
	shrq	$8, %r11
	andl	$65280, %r11d           # imm = 0xFF00
	movq	%r9, %rax
	shlq	$8, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	shlq	$24, %r9
	orq	%r11, %r9
	orq	%r10, %r9
	orq	%rax, %r9
	callq	mem_true32_fill_rectangle
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	mem32_word_fill_rectangle, .Lfunc_end3-mem32_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem32_word_copy_mono,@function
mem32_word_copy_mono:                   # @mem32_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 96
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	96(%rsp), %r10d
	movl	104(%rsp), %r11d
	movl	112(%rsp), %r14d
	movq	128(%rsp), %rbx
	movq	120(%rsp), %rbp
	movq	%rbp, %rax
	shrq	$24, %rax
	movzbl	%al, %r15d
	movq	%rbp, %r12
	shrq	$8, %r12
	andl	$65280, %r12d           # imm = 0xFF00
	movq	%rbp, %rax
	shlq	$8, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	shlq	$24, %rbp
	orq	%r12, %rbp
	orq	%r15, %rbp
	orq	%rax, %rbp
	movq	%rbx, %rax
	shrq	$24, %rax
	movzbl	%al, %r15d
	movq	%rbx, %r12
	shrq	$8, %r12
	andl	$65280, %r12d           # imm = 0xFF00
	movq	%rbx, %rax
	shlq	$8, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	shlq	$24, %rbx
	orq	%r12, %rbx
	orq	%r15, %rbx
	orq	%rax, %rbx
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	%rbx, 32(%rsp)
	movq	%rbp, 24(%rsp)
	callq	mem_true32_copy_mono
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mem32_word_copy_mono, .Lfunc_end4-mem32_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem32_word_copy_color,@function
mem32_word_copy_color:                  # @mem32_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsi, %r10
	movl	64(%rsp), %esi
	movl	56(%rsp), %eax
	movl	48(%rsp), %ebx
	movl	%ebx, %ebp
	orl	%r9d, %ebp
	js	.LBB5_2
# BB#1:
	movl	%r9d, %r14d
	movl	%ebx, %r8d
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %r14d
	cmovsl	%r8d, %r14d
	andl	%r9d, %ebp
	leal	(%rax,%rbp), %eax
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB5_4
# BB#3:
	movl	%ebx, %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	addl	%ebx, %esi
	imull	%ecx, %ebx
	movslq	%ebx, %rbp
	subq	%rbp, %r10
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %ebx
	movl	836(%rdi), %ebp
	subl	%r14d, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	subl	%r8d, %ebp
	cmpl	%ebp, %esi
	cmovlel	%esi, %ebp
	testl	%ebx, %ebx
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	movslq	%r8d, %rax
	movq	2576(%rdi), %rsi
	movq	(%rsi,%rax,8), %r15
	movl	1736(%rdi), %r12d
	leal	(,%r14,4), %eax
	cltq
	leaq	(%rax,%r15), %rdi
	shll	$2, %edx
	movslq	%edx, %rax
	addq	%rax, %r10
	leal	(,%rbx,4), %r8d
	movl	%r12d, %esi
	movq	%r10, %rdx
	movl	%ebp, %r9d
	callq	bytes_copy_rectangle
	shll	$5, %r14d
	shll	$5, %ebx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	mem_swap_byte_rect
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem32_word_copy_color, .Lfunc_end5-mem32_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image32"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	mem_true32_device,@object # @mem_true32_device
	.section	.rodata,"a",@progbits
	.globl	mem_true32_device
	.align	8
mem_true32_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_w_b_map_rgb_color
	.quad	gx_default_w_b_map_color_rgb
	.quad	mem_true32_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true32_copy_mono
	.quad	mem_true32_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	cmyk_8bit_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	mem_default_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true32_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image32w"
	.size	.L.str.2, 9

	.type	mem_true32_word_device,@object # @mem_true32_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_true32_word_device
	.align	8
mem_true32_word_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	gx_default_w_b_map_rgb_color
	.quad	gx_default_w_b_map_color_rgb
	.quad	mem32_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem32_word_copy_mono
	.quad	mem32_word_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	cmyk_8bit_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_no_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_word_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true32_word_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
