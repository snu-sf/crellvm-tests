	.text
	.file	"sstring.bc"
	.align	16, 0x90
	.type	s_AXE_init,@function
s_AXE_init:                             # @s_AXE_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$1, 108(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_AXE_init, .Lfunc_end0-s_AXE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_AXE_process,@function
s_AXE_process:                          # @s_AXE_process
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
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	(%rsi), %r8
	movq	8(%rsi), %r12
	movq	8(%rdx), %rbx
	movl	%r12d, %r10d
	subl	%r8d, %r10d
	movl	16(%rdx), %r11d
	subl	%ebx, %r11d
	movl	112(%rdi), %r9d
	testl	%ecx, %ecx
	je	.LBB1_2
# BB#1:                                 # %land.lhs.true
	cmpl	$1, 108(%rdi)
	adcl	$-1, %r11d
.LBB1_2:                                # %if.end
	leal	(%r11,%r9,2), %ebp
	movslq	%ebp, %rbp
	imulq	$2114445439, %rbp, %rbp # imm = 0x7E07E07F
	movq	%rbp, %r14
	shrq	$63, %r14
	sarq	$37, %rbp
	addl	%r14d, %ebp
	subl	%ebp, %r11d
	sarl	%r11d
	cmpl	%r10d, %r11d
	setl	%r14b
	movl	%r10d, %ebp
	cmovlel	%r11d, %ebp
	testl	%ebp, %ebp
	jle	.LBB1_3
# BB#4:                                 # %while.body.preheader
	movl	%r11d, %ebp
	notl	%ebp
	subl	%r8d, %r12d
	notl	%r12d
	cmpl	%r12d, %ebp
	cmovgel	%ebp, %r12d
	negl	%r12d
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	setne	%r15b
	movzbl	1(%r8), %ebp
	shrq	$4, %rbp
	movb	.L.str.1(%rbp), %al
	movb	%al, 1(%rbx)
	movzbl	1(%r8), %eax
	andl	$15, %eax
	movb	.L.str.1(%rax), %al
	leaq	2(%rbx), %rbp
	movb	%al, 2(%rbx)
	incl	%r9d
	cmpl	$2, %r12d
	sete	%al
	testb	%al, %r15b
	jne	.LBB1_8
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	%r9d, %eax
	andl	$31, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	$10, 3(%rbx)
	addq	$3, %rbx
	movq	%rbx, %rbp
.LBB1_8:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_5 Depth=1
	incq	%r8
	decl	%r12d
	cmpl	$1, %r12d
	movq	%rbp, %rbx
	jg	.LBB1_5
	jmp	.LBB1_9
.LBB1_3:
	movq	%rbx, %rbp
.LBB1_9:                                # %while.end
	movzbl	%r14b, %eax
	cmpl	%r10d, %r11d
	setge	%bl
	testl	%ecx, %ecx
	je	.LBB1_13
# BB#10:                                # %while.end
	testb	%bl, %bl
	je	.LBB1_13
# BB#11:                                # %land.lhs.true.33
	cmpl	$0, 108(%rdi)
	je	.LBB1_13
# BB#12:                                # %if.then.36
	movb	$62, 1(%rbp)
	incq	%rbp
.LBB1_13:                               # %if.end.38
	movq	%r8, (%rsi)
	movq	%rbp, 8(%rdx)
	andl	$31, %r9d
	movl	%r9d, 112(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_AXE_process, .Lfunc_end1-s_AXE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_AXD_init,@function
s_AXD_init:                             # @s_AXD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 24(%rdi)
	movl	$-1, 108(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	s_AXD_init, .Lfunc_end2-s_AXD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_AXD_process,@function
s_AXD_process:                          # @s_AXD_process
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
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	addq	$108, %r15
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	s_hex_process
	cmpl	$-2, %eax
	je	.LBB3_16
# BB#1:                                 # %entry
	cmpl	$1, %eax
	je	.LBB3_7
# BB#2:                                 # %entry
	testl	%eax, %eax
	jne	.LBB3_18
# BB#3:                                 # %sw.bb
	testl	%ebp, %ebp
	je	.LBB3_7
# BB#4:                                 # %sw.bb
	movl	(%r15), %ecx
	testl	%ecx, %ecx
	js	.LBB3_7
# BB#5:                                 # %if.then
	movq	8(%r14), %rdx
	movl	$1, %eax
	cmpq	16(%r14), %rdx
	je	.LBB3_18
# BB#6:                                 # %if.end
	shll	$4, %ecx
	leaq	1(%rdx), %rax
	movq	%rax, 8(%r14)
	movb	%cl, 1(%rdx)
.LBB3_7:                                # %for.cond.preheader
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	jae	.LBB3_18
# BB#8:                                 # %for.body.preheader
	incq	%rcx
	.align	16, 0x90
.LBB3_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	movzbl	scan_char_array+4(%rsi), %edi
	cmpl	$102, %edi
	jne	.LBB3_10
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, (%rbx)
	cmpq	%rdx, %rcx
	leaq	1(%rcx), %rcx
	jb	.LBB3_9
	jmp	.LBB3_18
.LBB3_16:                               # %sw.epilog
	movq	(%rbx), %rax
	movzbl	(%rax), %ecx
	cmpl	$62, %ecx
	je	.LBB3_12
# BB#17:                                # %if.then.35
	decq	%rax
	movq	%rax, (%rbx)
	movl	$-2, %eax
	jmp	.LBB3_18
.LBB3_10:                               # %if.then.17
	movl	$1, %eax
	movzbl	%sil, %edx
	cmpl	$62, %edx
	jne	.LBB3_18
# BB#11:                                # %if.then.23
	movq	%rcx, (%rbx)
.LBB3_12:                               # %eod
	movl	(%r15), %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB3_18
# BB#13:                                # %if.then.42
	movq	8(%r14), %rdx
	movl	$1, %eax
	cmpq	16(%r14), %rdx
	je	.LBB3_18
# BB#14:                                # %if.end.48
	shll	$4, %ecx
	leaq	1(%rdx), %rax
	movq	%rax, 8(%r14)
	movb	%cl, 1(%rdx)
	movl	$-1, %eax
.LBB3_18:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	s_AXD_process, .Lfunc_end3-s_AXD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_PSSE_process,@function
s_PSSE_process:                         # @s_PSSE_process
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
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	(%r12), %rbp
	movq	8(%r12), %r15
	movq	8(%rdx), %rbx
	movq	16(%rdx), %r13
	cmpq	%r15, %rbp
	jae	.LBB4_1
# BB#2:                                 # %while.body.lr.ph
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rbp), %r14b
	movb	%r14b, %al
	addb	$-32, %al
	movzbl	%al, %eax
	cmpl	$95, %eax
	jb	.LBB4_10
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	%r14b, %al
	decb	%al
	movzbl	%al, %eax
	cmpl	$30, %eax
	ja	.LBB4_8
# BB#5:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%r14b, %esi
	movl	$.L.str.3, %edi
	callq	strchr
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB4_8
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movl	$1, %eax
	cmpq	$2, %rdx
	jl	.LBB4_22
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	$92, 1(%rbx)
	movl	$.L.str.3, %eax
	subq	%rax, %rcx
	movb	.L.str.4(%rcx), %al
	movb	%al, 2(%rbx)
	addq	$2, %rbx
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_10:                               # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	%r14b, %al
	addb	$-40, %al
	movzbl	%al, %eax
	cmpl	$52, %eax
	ja	.LBB4_19
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movabsq	$4503599627370499, %rcx # imm = 0x10000000000003
	btq	%rax, %rcx
	jae	.LBB4_19
# BB#12:                                # %if.then.53
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r13, %rcx
	subq	%rbx, %rcx
	movl	$1, %eax
	cmpq	$2, %rcx
	jl	.LBB4_22
# BB#13:                                # %if.end.61
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	$92, 1(%rbx)
	incq	%rbx
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_8:                                # %if.end.24
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r13, %rcx
	subq	%rbx, %rcx
	movl	$1, %eax
	cmpq	$4, %rcx
	jl	.LBB4_22
# BB#9:                                 # %if.end.32
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	$92, 1(%rbx)
	movb	%r14b, %al
	shrb	$6, %al
	orb	$48, %al
	movb	%al, 2(%rbx)
	movb	%r14b, %al
	shrb	$3, %al
	andb	$7, %al
	orb	$48, %al
	movb	%al, 3(%rbx)
	andb	$7, %r14b
	orb	$48, %r14b
	movb	%r14b, 4(%rbx)
	addq	$4, %rbx
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_19:                               # %if.else.63
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$1, %eax
	cmpq	%r13, %rbx
	je	.LBB4_20
.LBB4_14:                               # %if.end.70
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	%r14b, 1(%rbx)
	incq	%rbx
.LBB4_15:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%rbp
	cmpq	%r15, %rbp
	jb	.LBB4_3
	jmp	.LBB4_16
.LBB4_1:
	movl	%ecx, 12(%rsp)          # 4-byte Spill
.LBB4_16:                               # %while.end
	xorl	%eax, %eax
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB4_22
# BB#17:                                # %if.then.77
	cmpq	%r13, %rbx
	je	.LBB4_18
# BB#21:                                # %if.else.81
	movb	$41, 1(%rbx)
	incq	%rbx
	jmp	.LBB4_22
.LBB4_18:
	movl	$1, %eax
	movq	%r13, %rbx
	jmp	.LBB4_22
.LBB4_20:
	movq	%r13, %rbx
.LBB4_22:                               # %if.end.84
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rbp, (%r12)
	movq	%rbx, 8(%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	s_PSSE_process, .Lfunc_end4-s_PSSE_process
	.cfi_endproc

	.globl	s_PSSD_init
	.align	16, 0x90
	.type	s_PSSD_init,@function
s_PSSD_init:                            # @s_PSSD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 108(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	s_PSSD_init, .Lfunc_end5-s_PSSD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_PSSD_process,@function
s_PSSD_process:                         # @s_PSSD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	(%rsi), %r10
	movq	8(%rsi), %r8
	movq	8(%rdx), %r14
	xorl	%r9d, %r9d
	cmpq	%r8, %r10
	jae	.LBB6_63
# BB#1:                                 # %while.body.lr.ph.lr.ph
	movq	16(%rdx), %r11
.LBB6_2:                                # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movq	%r10, %r15
.LBB6_3:                                # %while.body
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%r15), %r10
	movzbl	1(%r15), %eax
	cmpl	$92, %eax
	jne	.LBB6_41
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=2
	movb	$92, %al
	cmpl	$0, 108(%rdi)
	jne	.LBB6_41
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpq	%r8, %r10
	je	.LBB6_6
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	leaq	2(%r15), %r10
	movb	2(%r15), %al
	movzbl	%al, %r12d
	cmpl	$12, %r12d
	jle	.LBB6_8
# BB#11:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpl	$47, %r12d
	jg	.LBB6_15
# BB#12:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpl	$13, %r12d
	movb	%al, %bl
	jne	.LBB6_29
# BB#13:                                # %sw.bb.21
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpq	%r8, %r10
	je	.LBB6_14
# BB#31:                                # %if.end.26
                                        #   in Loop: Header=BB6_3 Depth=2
	movzbl	3(%r15), %eax
	cmpl	$10, %eax
	jne	.LBB6_9
# BB#32:                                #   in Loop: Header=BB6_3 Depth=2
	addq	$3, %r15
	movq	%r15, %r10
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_8:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpl	$10, %r12d
	movb	%al, %bl
	jne	.LBB6_29
.LBB6_9:                                #   in Loop: Header=BB6_3 Depth=2
	movq	%r10, %r15
	cmpq	%r8, %r15
	jb	.LBB6_3
	jmp	.LBB6_10
	.align	16, 0x90
.LBB6_15:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$97, %r12d
	jg	.LBB6_19
# BB#16:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	addl	$-48, %r12d
	cmpl	$8, %r12d
	movb	%al, %bl
	jae	.LBB6_29
# BB#17:                                # %sw.bb.34
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r8, %r10
	je	.LBB6_18
# BB#33:                                # %if.end.39
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	3(%r15), %eax
	movl	%eax, %ebx
	andl	$248, %ebx
	cmpl	$48, %ebx
	jne	.LBB6_39
# BB#34:                                # %if.then.47
                                        #   in Loop: Header=BB6_2 Depth=1
	leaq	3(%r15), %r10
	cmpq	%r8, %r10
	je	.LBB6_35
# BB#36:                                # %if.end.53
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
# BB#37:                                # %if.end.58
                                        #   in Loop: Header=BB6_2 Depth=1
	leal	-48(%rax,%r12,8), %r12d
	movzbl	4(%r15), %eax
	movl	%eax, %ebx
	andl	$248, %ebx
	cmpl	$48, %ebx
	jne	.LBB6_40
# BB#38:                                # %if.then.67
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	$4, %r15
	leal	-48(%rax,%r12,8), %r12d
	movq	%r15, %r10
	movb	%r12b, 1(%r14)
	jmp	.LBB6_62
	.align	16, 0x90
.LBB6_41:                               # %if.else.83
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	%al, %ebx
	cmpl	$39, %ebx
	jg	.LBB6_46
# BB#42:                                # %if.else.83
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$10, %ebx
	jne	.LBB6_43
# BB#59:                                # %sw.bb.121
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$10, %al
	jmp	.LBB6_60
.LBB6_19:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$109, %r12d
	jle	.LBB6_20
# BB#23:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$110, %r12d
	je	.LBB6_27
# BB#24:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$114, %r12d
	jne	.LBB6_25
# BB#28:                                # %put.loopexit250
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$13, %bl
	jmp	.LBB6_29
.LBB6_46:                               # %if.else.83
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$41, %ebx
	jne	.LBB6_47
# BB#50:                                # %sw.bb.90
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	112(%rdi), %ebx
	testl	%ebx, %ebx
	je	.LBB6_51
# BB#52:                                # %if.end.95
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
# BB#53:                                # %if.end.100
                                        #   in Loop: Header=BB6_2 Depth=1
	decl	%ebx
	movl	%ebx, 112(%rdi)
	jmp	.LBB6_61
.LBB6_39:                               # %if.else.74
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
.LBB6_40:                               # %cleanup
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	%r12b, 1(%r14)
	jmp	.LBB6_62
.LBB6_43:                               # %if.else.83
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$13, %ebx
	jne	.LBB6_60
# BB#44:                                # %sw.bb.102
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r8, %r10
	je	.LBB6_45
# BB#54:                                # %if.end.107
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
# BB#56:                                # %if.end.112
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	2(%r15), %eax
	cmpl	$10, %eax
	jne	.LBB6_58
# BB#57:                                #   in Loop: Header=BB6_2 Depth=1
	addq	$2, %r15
	movq	%r15, %r10
.LBB6_58:                               # %select.end382
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$10, 1(%r14)
	jmp	.LBB6_62
.LBB6_47:                               # %if.else.83
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$40, %ebx
	jne	.LBB6_60
# BB#48:                                # %sw.bb.84
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
# BB#49:                                # %if.end.89
                                        #   in Loop: Header=BB6_2 Depth=1
	incl	112(%rdi)
	jmp	.LBB6_61
.LBB6_60:                               # %sw.default.122
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
.LBB6_61:                               # %if.end.128
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	%al, 1(%r14)
	jmp	.LBB6_62
.LBB6_20:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$8, %bl
	cmpl	$98, %r12d
	je	.LBB6_29
# BB#21:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$102, %r12d
	movb	%al, %bl
	jne	.LBB6_29
# BB#22:                                # %sw.bb.13
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$12, %bl
	jmp	.LBB6_29
.LBB6_27:                               # %put.loopexit209
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$10, %bl
	jmp	.LBB6_29
.LBB6_25:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$116, %r12d
	movb	%al, %bl
	jne	.LBB6_29
# BB#26:                                # %put.loopexit291
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$9, %bl
	.align	16, 0x90
.LBB6_29:                               # %put
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r11, %r14
	je	.LBB6_55
# BB#30:                                # %if.end.18
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	%bl, 1(%r14)
.LBB6_62:                               # %while.cond.outer.backedge
                                        #   in Loop: Header=BB6_2 Depth=1
	incq	%r14
	cmpq	%r8, %r10
	jb	.LBB6_2
	jmp	.LBB6_63
.LBB6_6:
	movq	%r15, %r10
	jmp	.LBB6_63
.LBB6_10:
	movq	%r15, %r10
	jmp	.LBB6_63
.LBB6_14:
	movq	%r15, %r10
	jmp	.LBB6_63
.LBB6_55:
	movq	%r11, %r14
	movq	%r15, %r10
	movl	$1, %r9d
	jmp	.LBB6_63
.LBB6_18:
	movq	%r15, %r10
	jmp	.LBB6_63
.LBB6_35:
	movq	%r15, %r10
	jmp	.LBB6_63
.LBB6_51:
	movl	$-1, %r9d
	jmp	.LBB6_63
.LBB6_45:
	movq	%r15, %r10
.LBB6_63:                               # %cleanup.142
	movq	%r10, (%rsi)
	movq	%r14, 8(%rdx)
	testl	%r9d, %r9d
	movl	$-2, %eax
	cmovnel	%r9d, %eax
	testl	%ecx, %ecx
	cmovel	%r9d, %eax
	cmpq	%r8, %r10
	cmovel	%r9d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	s_PSSD_process, .Lfunc_end6-s_PSSD_process
	.cfi_endproc

	.globl	s_hex_process
	.align	16, 0x90
	.type	s_hex_process,@function
s_hex_process:                          # @s_hex_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	8(%rsi), %r10
	movq	16(%rsi), %r11
	movl	$1, %eax
	cmpq	%r11, %r10
	jae	.LBB7_40
# BB#1:                                 # %if.end
	movq	(%rdi), %r9
	movq	8(%rdi), %r14
	movl	(%rdx), %ebp
	movl	%ebp, %eax
	andl	$240, %eax
	cmpl	$16, %eax
	movq	%r10, %r8
	movq	%r9, %rbx
	jb	.LBB7_22
.LBB7_2:                                # %d1
	movq	%r14, %rax
	subq	%r9, %rax
	shrq	%rax
	testl	%eax, %eax
	je	.LBB7_8
# BB#3:                                 # %if.end.13
	movl	%eax, %ebx
	movq	%r11, %rbp
	subq	%r8, %rbp
	leaq	(%r8,%rbx), %rax
	cmpq	%rbp, %rbx
	cmovgeq	%r11, %rax
	.align	16, 0x90
.LBB7_4:                                # %f1
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r9), %ebx
	movzbl	scan_char_array+4(%rbx), %ebx
	cmpl	$15, %ebx
	ja	.LBB7_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_4 Depth=1
	movzbl	2(%r9), %ebp
	movzbl	scan_char_array+4(%rbp), %ebp
	cmpl	$15, %ebp
	ja	.LBB7_8
# BB#6:                                 # %if.then.30
                                        #   in Loop: Header=BB7_4 Depth=1
	addq	$2, %r9
	shlb	$4, %bl
	addb	%bpl, %bl
	movb	%bl, 1(%r8)
	incq	%r8
	cmpq	%rax, %r8
	jb	.LBB7_4
# BB#7:                                 # %if.end.38
	movl	$1, %eax
	cmpq	%r11, %r8
	jae	.LBB7_38
.LBB7_8:                                # %x1.preheader
	cmpq	%r14, %r9
	jae	.LBB7_9
# BB#10:                                # %if.end.47.lr.ph
	leaq	1(%r9), %rbx
	.align	16, 0x90
.LBB7_11:                               # %if.end.47
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	movzbl	scan_char_array+4(%rax), %ebp
	cmpl	$16, %ebp
	jb	.LBB7_22
# BB#12:                                # %if.then.54
                                        #   in Loop: Header=BB7_11 Depth=1
	movzbl	%bpl, %eax
	cmpl	$102, %eax
	jne	.LBB7_17
# BB#13:                                # %if.then.58
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpl	$2, %ecx
	jb	.LBB7_18
# BB#14:                                # %if.then.58
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	$2, %eax
	jne	.LBB7_15
# BB#20:                                # %sw.bb.59
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpq	%r10, %r8
	jne	.LBB7_36
# BB#21:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpl	$0, (%rdx)
	js	.LBB7_18
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_17:                               # %if.else
                                        #   in Loop: Header=BB7_11 Depth=1
	testl	%ecx, %ecx
	jne	.LBB7_16
.LBB7_18:                               # %x1.backedge
                                        #   in Loop: Header=BB7_11 Depth=1
	incq	%r9
	cmpq	%r14, %rbx
	leaq	1(%rbx), %rbx
	jb	.LBB7_11
# BB#19:
	xorl	%eax, %eax
	jmp	.LBB7_38
.LBB7_22:                               # %d2.preheader
	cmpq	%r14, %rbx
	jae	.LBB7_32
# BB#23:                                # %if.end.79.lr.ph
	incq	%rbx
	movq	%rbx, %r9
	.align	16, 0x90
.LBB7_24:                               # %if.end.79
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9), %eax
	movzbl	scan_char_array+4(%rax), %ebx
	cmpl	$16, %ebx
	jb	.LBB7_35
# BB#25:                                # %if.then.86
                                        #   in Loop: Header=BB7_24 Depth=1
	movzbl	%bl, %eax
	cmpl	$102, %eax
	jne	.LBB7_33
# BB#26:                                # %if.then.90
                                        #   in Loop: Header=BB7_24 Depth=1
	cmpl	$2, %ecx
	jb	.LBB7_31
# BB#27:                                # %if.then.90
                                        #   in Loop: Header=BB7_24 Depth=1
	jne	.LBB7_28
# BB#30:                                # %sw.bb.92
                                        #   in Loop: Header=BB7_24 Depth=1
	cmpq	%r10, %r8
	je	.LBB7_31
	jmp	.LBB7_29
	.align	16, 0x90
.LBB7_33:                               # %if.end.101
                                        #   in Loop: Header=BB7_24 Depth=1
	testl	%ecx, %ecx
	jne	.LBB7_34
.LBB7_31:                               # %d2.backedge
                                        #   in Loop: Header=BB7_24 Depth=1
	cmpq	%r14, %r9
	movq	%r9, %rbx
	leaq	1(%r9), %r9
	jb	.LBB7_24
.LBB7_32:                               # %if.then.77
	movzbl	%bpl, %eax
	movl	%eax, (%rdx)
	xorl	%eax, %eax
	movq	%rbx, %r9
	jmp	.LBB7_39
.LBB7_9:
	xorl	%eax, %eax
	jmp	.LBB7_38
.LBB7_35:                               # %if.end.107
	shlb	$4, %bpl
	addb	%bl, %bpl
	movb	%bpl, 1(%r8)
	incq	%r8
	movl	$1, %eax
	cmpq	%r11, %r8
	jb	.LBB7_2
	jmp	.LBB7_38
.LBB7_28:                               # %if.then.90
	cmpl	$3, %ecx
	jne	.LBB7_34
.LBB7_29:                               # %if.then.90.sw.bb.97_crit_edge
	decq	%r9
	movzbl	%bpl, %eax
	movl	%eax, (%rdx)
	movl	$2, %eax
	jmp	.LBB7_39
.LBB7_34:                               # %if.end.105
	movzbl	%bpl, %eax
	movl	%eax, (%rdx)
	movl	$-2, %eax
	jmp	.LBB7_39
.LBB7_15:                               # %if.then.58
	cmpl	$3, %ecx
	je	.LBB7_38
.LBB7_16:                               # %end1.loopexit148
	movl	$-2, %eax
	jmp	.LBB7_37
.LBB7_36:                               # %sw.bb.59.end1.loopexit_crit_edge
	decq	%rbx
.LBB7_37:                               # %end1
	movq	%rbx, %r9
.LBB7_38:                               # %end1
	movl	$-1, (%rdx)
.LBB7_39:                               # %ended
	movq	%r9, (%rdi)
	movq	%r8, 8(%rsi)
.LBB7_40:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s_hex_process, .Lfunc_end7-s_hex_process
	.cfi_endproc

	.type	st_AXE_state,@object    # @st_AXE_state
	.section	.rodata,"a",@progbits
	.align	8
st_AXE_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_AXE_state, 64

	.type	s_AXE_template,@object  # @s_AXE_template
	.globl	s_AXE_template
	.align	8
s_AXE_template:
	.quad	st_AXE_state
	.quad	s_AXE_init
	.quad	s_AXE_process
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	0
	.quad	0
	.quad	0
	.size	s_AXE_template, 56

	.type	st_AXD_state,@object    # @st_AXD_state
	.align	8
st_AXD_state:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_AXD_state, 64

	.type	s_AXD_template,@object  # @s_AXD_template
	.globl	s_AXD_template
	.align	8
s_AXD_template:
	.quad	st_AXD_state
	.quad	s_AXD_init
	.quad	s_AXD_process
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_AXD_template, 56

	.type	s_PSSE_template,@object # @s_PSSE_template
	.globl	s_PSSE_template
	.align	8
s_PSSE_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_PSSE_process
	.long	1                       # 0x1
	.long	4                       # 0x4
	.quad	0
	.quad	0
	.quad	0
	.size	s_PSSE_template, 56

	.type	st_PSSD_state,@object   # @st_PSSD_state
	.align	8
st_PSSD_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_PSSD_state, 64

	.type	s_PSSD_template,@object # @s_PSSD_template
	.globl	s_PSSD_template
	.align	8
s_PSSD_template:
	.quad	st_PSSD_state
	.quad	s_PSSD_init
	.quad	s_PSSD_process
	.long	4                       # 0x4
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_PSSD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ASCIIHexEncode state"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ASCIIHexDecode state"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n\r\t\b\f"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nrtbf"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"PSStringDecode state"
	.size	.L.str.5, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
