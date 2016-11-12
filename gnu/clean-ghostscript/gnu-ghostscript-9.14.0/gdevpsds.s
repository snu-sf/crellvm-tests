	.text
	.file	"gdevpsds.bc"
	.globl	s_1248_init
	.align	16, 0x90
	.type	s_1248_init,@function
s_1248_init:                            # @s_1248_init
	.cfi_startproc
# BB#0:                                 # %entry
	imull	%edx, %esi
	movl	%esi, 108(%rdi)
	movq	(%rdi), %rax
	jmpq	*8(%rax)                # TAILCALL
.Lfunc_end0:
	.size	s_1248_init, .Lfunc_end0-s_1248_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_1_init,@function
s_1_init:                               # @s_1_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	$1, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	s_1_init, .Lfunc_end1-s_1_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_N_8_process,@function
s_N_8_process:                          # @s_N_8_process
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
	movq	(%rsi), %r8
	movq	8(%rsi), %r10
	movq	8(%rdx), %r15
	movq	16(%rdx), %r11
	movl	112(%rdi), %ecx
	movl	116(%rdi), %r9d
	cmpl	$1, %ecx
	je	.LBB2_14
# BB#1:                                 # %entry
	cmpl	$2, %ecx
	jne	.LBB2_2
# BB#9:                                 # %for.cond.62.preheader
	xorl	%eax, %eax
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_34:                               # %for.inc.114
                                        #   in Loop: Header=BB2_10 Depth=1
	subl	%ebx, %r9d
	addq	%r14, %r15
	incq	%r8
.LBB2_10:                               # %for.cond.62.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %r8
	jae	.LBB2_7
# BB#11:                                # %for.body.65
                                        #   in Loop: Header=BB2_10 Depth=1
	movzbl	1(%r8), %r13d
	cmpl	$4, %r9d
	movl	$4, %ebx
	cmovbl	%r9d, %ebx
	movq	%r11, %rbp
	subq	%r15, %rbp
	movslq	%ebx, %r14
	cmpq	%r14, %rbp
	jl	.LBB2_6
# BB#12:                                # %if.end.81
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	%ebx, %r12d
	cmpl	$4, %ebx
	ja	.LBB2_34
# BB#13:                                # %if.end.81
                                        #   in Loop: Header=BB2_10 Depth=1
	jmpq	*.LJTI2_0(,%r12,8)
.LBB2_29:                               # %sw.bb.82
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB2_34
.LBB2_30:                               # %sw.bb.85
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	%r13d, %ecx
	andl	$3, %ecx
	movb	s_N_8_process.b2(%rcx), %cl
	movb	%cl, 4(%r15)
.LBB2_31:                               # %sw.bb.90
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	%r13, %rcx
	shrq	$2, %rcx
	andl	$3, %ecx
	movb	s_N_8_process.b2(%rcx), %cl
	movb	%cl, 3(%r15)
.LBB2_32:                               # %sw.bb.97
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	%r13, %rcx
	shrq	$4, %rcx
	andl	$3, %ecx
	movb	s_N_8_process.b2(%rcx), %cl
	movb	%cl, 2(%r15)
.LBB2_33:                               # %sw.bb.104
                                        #   in Loop: Header=BB2_10 Depth=1
	shrq	$6, %r13
	movb	s_N_8_process.b2(%r13), %cl
	movb	%cl, 1(%r15)
	jmp	.LBB2_34
.LBB2_14:                               # %for.cond.preheader
	xorl	%eax, %eax
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_28:                               # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=1
	subl	%ebx, %r9d
	addq	%r14, %r15
	incq	%r8
.LBB2_15:                               # %for.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %r8
	jae	.LBB2_7
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpl	$8, %r9d
	movl	$8, %ebx
	cmovbl	%r9d, %ebx
	movq	%r11, %rcx
	subq	%r15, %rcx
	movslq	%ebx, %r14
	cmpq	%r14, %rcx
	jl	.LBB2_6
# BB#17:                                # %if.end
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	%ebx, %ecx
	cmpl	$8, %ebx
	ja	.LBB2_28
# BB#18:                                # %if.end
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	1(%r8), %bpl
	jmpq	*.LJTI2_1(,%rcx,8)
.LBB2_19:                               # %sw.bb.7
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB2_28
.LBB2_20:                               # %sw.bb.8
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 8(%r15)
.LBB2_21:                               # %sw.bb.12
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	%cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 7(%r15)
.LBB2_22:                               # %sw.bb.18
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	$2, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 6(%r15)
.LBB2_23:                               # %sw.bb.25
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	$3, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 5(%r15)
.LBB2_24:                               # %sw.bb.32
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	$4, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 4(%r15)
.LBB2_25:                               # %sw.bb.39
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	$5, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 3(%r15)
.LBB2_26:                               # %sw.bb.46
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%bpl, %cl
	shrb	$6, %cl
	andb	$1, %cl
	negb	%cl
	movb	%cl, 2(%r15)
.LBB2_27:                               # %sw.bb.53
                                        #   in Loop: Header=BB2_15 Depth=1
	sarb	$7, %bpl
	movb	%bpl, 1(%r15)
	jmp	.LBB2_28
.LBB2_2:                                # %entry
	movl	$-2, %eax
	cmpl	$4, %ecx
	jne	.LBB2_8
# BB#3:                                 # %for.cond.121.preheader
	xorl	%eax, %eax
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_41:                               # %for.inc.160
                                        #   in Loop: Header=BB2_4 Depth=1
	subl	%ecx, %r9d
	addq	%r14, %r15
	incq	%r8
.LBB2_4:                                # %for.cond.121.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %r8
	jae	.LBB2_7
# BB#5:                                 # %for.body.124
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	1(%r8), %r12d
	cmpl	$2, %r9d
	movl	$2, %ecx
	cmovbl	%r9d, %ecx
	movq	%r11, %rbp
	subq	%r15, %rbp
	movslq	%ecx, %r14
	cmpq	%r14, %rbp
	jl	.LBB2_6
# BB#35:                                # %if.end.140
                                        #   in Loop: Header=BB2_4 Depth=1
	testl	%ecx, %ecx
	je	.LBB2_38
# BB#36:                                # %if.end.140
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$2, %ecx
	jne	.LBB2_37
# BB#39:                                # %sw.bb.144
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	%r12d, %ebx
	andl	$15, %ebx
	movb	s_N_8_process.b4(%rbx), %bl
	movb	%bl, 2(%r15)
	jmp	.LBB2_40
	.align	16, 0x90
.LBB2_38:                               # %sw.bb.141
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_37:                               # %if.end.140
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$1, %ecx
	jne	.LBB2_41
.LBB2_40:                               # %sw.bb.150
                                        #   in Loop: Header=BB2_4 Depth=1
	shrq	$4, %r12
	movb	s_N_8_process.b4(%r12), %bl
	movb	%bl, 1(%r15)
	jmp	.LBB2_41
.LBB2_6:
	movl	$1, %eax
.LBB2_7:                                # %sw.epilog.166
	movq	%r8, (%rsi)
	movq	%r15, 8(%rdx)
	movl	%r9d, 116(%rdi)
.LBB2_8:                                # %cleanup.170
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_N_8_process, .Lfunc_end2-s_N_8_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_29
	.quad	.LBB2_33
	.quad	.LBB2_32
	.quad	.LBB2_31
	.quad	.LBB2_30
.LJTI2_1:
	.quad	.LBB2_19
	.quad	.LBB2_27
	.quad	.LBB2_26
	.quad	.LBB2_25
	.quad	.LBB2_24
	.quad	.LBB2_23
	.quad	.LBB2_22
	.quad	.LBB2_21
	.quad	.LBB2_20

	.text
	.align	16, 0x90
	.type	s_2_init,@function
s_2_init:                               # @s_2_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	$2, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	s_2_init, .Lfunc_end3-s_2_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_4_init,@function
s_4_init:                               # @s_4_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	$4, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	s_4_init, .Lfunc_end4-s_4_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_12_init,@function
s_12_init:                              # @s_12_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	$12, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	s_12_init, .Lfunc_end5-s_12_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_12_8_process,@function
s_12_8_process:                         # @s_12_8_process
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
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 40
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	movq	8(%rdx), %rcx
	movl	116(%rdi), %r8d
	movq	%r10, %rbp
	subq	%r9, %rbp
	xorl	%eax, %eax
	cmpq	$2, %rbp
	jl	.LBB6_8
# BB#1:
	movq	16(%rdx), %r11
	movl	108(%rdi), %r15d
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %rcx
	jae	.LBB6_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	testl	%r8d, %r8d
	cmovel	%r15d, %r8d
	movl	%r15d, %ebx
	subl	%r8d, %ebx
	testb	$1, %bl
	movb	1(%r9), %bl
	jne	.LBB6_5
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB6_2 Depth=1
	leaq	1(%r9), %rbp
	addq	$2, %r9
	decl	%r8d
	cmovneq	%rbp, %r9
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_5:                                # %if.then.8
                                        #   in Loop: Header=BB6_2 Depth=1
	shlb	$4, %bl
	movb	2(%r9), %r14b
	addq	$2, %r9
	shrb	$4, %r14b
	orb	%r14b, %bl
	decl	%r8d
.LBB6_7:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	%bl, 1(%rcx)
	incq	%rcx
	movq	%r10, %rbx
	subq	%r9, %rbx
	cmpq	$1, %rbx
	jg	.LBB6_2
	jmp	.LBB6_8
.LBB6_3:
	movl	$1, %eax
.LBB6_8:                                # %for.end
	movq	%r9, (%rsi)
	movq	%rcx, 8(%rdx)
	movl	%r8d, 116(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s_12_8_process, .Lfunc_end6-s_12_8_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_16_init,@function
s_16_init:                              # @s_16_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	$16, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	s_16_init, .Lfunc_end7-s_16_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_16_8_process,@function
s_16_8_process:                         # @s_16_8_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	(%rsi), %rcx
	movq	8(%rsi), %r10
	movq	8(%rdx), %r9
	movl	116(%rdi), %r8d
	movq	%r10, %r11
	subq	%rcx, %r11
	xorl	%eax, %eax
	cmpq	$2, %r11
	jl	.LBB8_6
# BB#1:                                 # %for.body.preheader
	movq	16(%rdx), %r11
	addq	$2, %rcx
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %r9
	jae	.LBB8_5
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	-1(%rcx), %bl
	movb	%bl, 1(%r9)
	incq	%r9
	movq	%r10, %rbx
	subq	%rcx, %rbx
	addq	$2, %rcx
	cmpq	$1, %rbx
	jg	.LBB8_2
# BB#4:                                 # %for.end.loopexitsplit
	addq	$-2, %rcx
	jmp	.LBB8_6
.LBB8_5:                                # %for.body.for.end.loopexit_crit_edge
	addq	$-2, %rcx
	movl	$1, %eax
.LBB8_6:                                # %for.end
	movq	%rcx, (%rsi)
	movq	%r9, 8(%rdx)
	movl	%r8d, 116(%rdi)
	popq	%rbx
	retq
.Lfunc_end8:
	.size	s_16_8_process, .Lfunc_end8-s_16_8_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_8_N_process,@function
s_8_N_process:                          # @s_8_N_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	(%rsi), %r12
	movq	8(%rsi), %r10
	movq	8(%rdx), %r8
	movq	16(%rdx), %r11
	movl	112(%rdi), %ebx
	movl	116(%rdi), %r9d
	cmpl	$1, %ebx
	je	.LBB9_14
# BB#1:                                 # %entry
	cmpl	$2, %ebx
	jne	.LBB9_2
# BB#9:                                 # %for.cond.67.preheader
	movl	$1, %eax
	jmp	.LBB9_10
	.align	16, 0x90
.LBB9_34:                               # %for.inc.120
                                        #   in Loop: Header=BB9_10 Depth=1
	subl	%ebx, %r9d
	addq	%rbp, %r12
	incq	%r8
.LBB9_10:                               # %for.cond.67.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %r8
	jae	.LBB9_7
# BB#11:                                # %for.body.70
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$4, %r9d
	movl	$4, %ebx
	cmovbl	%r9d, %ebx
	movq	%r10, %rcx
	subq	%r12, %rcx
	movslq	%ebx, %rbp
	cmpq	%rbp, %rcx
	jl	.LBB9_6
# BB#12:                                # %if.end.84
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	%ebx, %r15d
	cmpl	$4, %ebx
	ja	.LBB9_34
# BB#13:                                # %if.end.84
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%r14d, %r14d
	jmpq	*.LJTI9_0(,%r15,8)
.LBB9_29:                               # %sw.bb.85
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB9_34
.LBB9_30:                               # %sw.bb.88
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	4(%r12), %r14b
	shrb	$6, %r14b
.LBB9_31:                               # %sw.bb.95
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	3(%r12), %cl
	shrb	$4, %cl
	andb	$12, %cl
	orb	%r14b, %cl
	movb	%cl, %r14b
.LBB9_32:                               # %sw.bb.103
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	2(%r12), %cl
	shrb	$2, %cl
	andb	$48, %cl
	orb	%r14b, %cl
	movb	%cl, %r14b
.LBB9_33:                               # %sw.bb.111
                                        #   in Loop: Header=BB9_10 Depth=1
	movb	1(%r12), %cl
	andb	$-64, %cl
	orb	%r14b, %cl
	movb	%cl, 1(%r8)
	jmp	.LBB9_34
.LBB9_14:                               # %for.cond.preheader
	movl	$1, %eax
	jmp	.LBB9_15
	.align	16, 0x90
.LBB9_28:                               # %for.inc
                                        #   in Loop: Header=BB9_15 Depth=1
	subl	%ebx, %r9d
	addq	%r14, %r12
	incq	%r8
.LBB9_15:                               # %for.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %r8
	jae	.LBB9_7
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$8, %r9d
	movl	$8, %ebx
	cmovbl	%r9d, %ebx
	movq	%r10, %rbp
	subq	%r12, %rbp
	movslq	%ebx, %r14
	cmpq	%r14, %rbp
	jl	.LBB9_6
# BB#17:                                # %if.end
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%ebx, %r15d
	cmpl	$8, %ebx
	ja	.LBB9_28
# BB#18:                                # %if.end
                                        #   in Loop: Header=BB9_15 Depth=1
	xorl	%ebp, %ebp
	jmpq	*.LJTI9_1(,%r15,8)
.LBB9_19:                               # %sw.bb.7
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB9_28
.LBB9_20:                               # %sw.bb.8
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	8(%r12), %bpl
	shrb	$7, %bpl
.LBB9_21:                               # %sw.bb.11
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	7(%r12), %cl
	shrb	$6, %cl
	andb	$2, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_22:                               # %sw.bb.17
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	6(%r12), %cl
	shrb	$5, %cl
	andb	$4, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_23:                               # %sw.bb.25
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	5(%r12), %cl
	shrb	$4, %cl
	andb	$8, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_24:                               # %sw.bb.33
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	4(%r12), %cl
	shrb	$3, %cl
	andb	$16, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_25:                               # %sw.bb.41
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	3(%r12), %cl
	shrb	$2, %cl
	andb	$32, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_26:                               # %sw.bb.49
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	2(%r12), %cl
	shrb	%cl
	andb	$64, %cl
	orb	%bpl, %cl
	movb	%cl, %bpl
.LBB9_27:                               # %sw.bb.57
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	1(%r12), %cl
	andb	$-128, %cl
	orb	%bpl, %cl
	movb	%cl, 1(%r8)
	jmp	.LBB9_28
.LBB9_2:                                # %entry
	movl	$-2, %eax
	cmpl	$4, %ebx
	jne	.LBB9_8
# BB#3:                                 # %for.cond.128.preheader
	movl	$1, %eax
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_42:                               # %for.inc.165
                                        #   in Loop: Header=BB9_4 Depth=1
	subl	%ebx, %r9d
	addq	%rbp, %r12
	incq	%r8
.LBB9_4:                                # %for.cond.128.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r11, %r8
	jae	.LBB9_7
# BB#5:                                 # %for.body.131
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpl	$2, %r9d
	movl	$2, %ebx
	cmovbl	%r9d, %ebx
	movq	%r10, %rcx
	subq	%r12, %rcx
	movslq	%ebx, %rbp
	cmpq	%rbp, %rcx
	jl	.LBB9_6
# BB#35:                                # %if.end.145
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpl	$2, %ebx
	je	.LBB9_40
# BB#36:                                # %if.end.145
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpl	$1, %ebx
	jne	.LBB9_38
# BB#37:                                #   in Loop: Header=BB9_4 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB9_41
	.align	16, 0x90
.LBB9_40:                               # %sw.bb.149
                                        #   in Loop: Header=BB9_4 Depth=1
	movb	2(%r12), %r14b
	shrb	$4, %r14b
.LBB9_41:                               # %sw.bb.156
                                        #   in Loop: Header=BB9_4 Depth=1
	movb	1(%r12), %cl
	andb	$-16, %cl
	orb	%r14b, %cl
	movb	%cl, 1(%r8)
	jmp	.LBB9_42
	.align	16, 0x90
.LBB9_38:                               # %if.end.145
                                        #   in Loop: Header=BB9_4 Depth=1
	testl	%ebx, %ebx
	jne	.LBB9_42
# BB#39:                                # %sw.bb.146
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	108(%rdi), %r9d
	decq	%r8
	jmp	.LBB9_42
.LBB9_6:
	xorl	%eax, %eax
.LBB9_7:                                # %sw.epilog.171
	movq	%r12, (%rsi)
	movq	%r8, 8(%rdx)
	movl	%r9d, 116(%rdi)
.LBB9_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	s_8_N_process, .Lfunc_end9-s_8_N_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_29
	.quad	.LBB9_33
	.quad	.LBB9_32
	.quad	.LBB9_31
	.quad	.LBB9_30
.LJTI9_1:
	.quad	.LBB9_19
	.quad	.LBB9_27
	.quad	.LBB9_26
	.quad	.LBB9_25
	.quad	.LBB9_24
	.quad	.LBB9_23
	.quad	.LBB9_22
	.quad	.LBB9_21
	.quad	.LBB9_20

	.text
	.globl	s_C2R_init
	.align	16, 0x90
	.type	s_C2R_init,@function
s_C2R_init:                             # @s_C2R_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	s_C2R_init, .Lfunc_end10-s_C2R_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_C2R_process,@function
s_C2R_process:                          # @s_C2R_process
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
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 96
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	(%rsi), %r13
	movq	8(%rsi), %r14
	movq	8(%rdx), %r15
	movq	%r14, %rcx
	subq	%r13, %rcx
	xorl	%eax, %eax
	cmpq	$4, %rcx
	jl	.LBB11_6
# BB#1:                                 # %land.rhs.lr.ph
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	16(%rdx), %r12
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addq	$4, %r13
	.align	16, 0x90
.LBB11_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rax
	subq	%r15, %rax
	cmpq	$3, %rax
	jl	.LBB11_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	-3(%r13), %edx
	movzbl	-2(%r13), %ebx
	movzbl	-1(%r13), %edi
	movzbl	(%r13), %r8d
	movl	%edx, %ebp
	shll	$7, %ebp
	movl	%edx, %eax
	shrl	%eax
	orl	%ebp, %eax
	shrl	$5, %edx
	subl	%edx, %eax
	movl	%ebx, %esi
	shll	$7, %esi
	movl	%ebx, %edx
	shrl	%edx
	orl	%esi, %edx
	shrl	$5, %ebx
	subl	%ebx, %edx
	movl	%edi, %esi
	shll	$7, %esi
	movl	%edi, %ebp
	shrl	%ebp
	orl	%esi, %ebp
	shrl	$5, %edi
	subl	%edi, %ebp
	movl	%r8d, %esi
	shll	$7, %esi
	movl	%r8d, %ecx
	shrl	%ecx
	orl	%esi, %ecx
	shrl	$5, %r8d
	subl	%r8d, %ecx
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	112(%rsi), %r8
	movq	8(%r8), %rsi
	movq	%rsi, (%rsp)
	movswl	%ax, %edi
	movswl	%dx, %esi
	movswl	%bp, %edx
	movswl	%cx, %ecx
	leaq	34(%rsp), %r9
	callq	color_cmyk_to_rgb
	movswl	34(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%r15)
	movswl	36(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, 2(%r15)
	movswl	38(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, 3(%r15)
	addq	$3, %r15
	movq	%r14, %rax
	subq	%r13, %rax
	addq	$4, %r13
	cmpq	$3, %rax
	jg	.LBB11_2
# BB#4:                                 # %for.end.loopexitsplit
	addq	$-4, %r13
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	xorl	%eax, %eax
	jmp	.LBB11_6
.LBB11_5:                               # %land.rhs.for.end.loopexit_crit_edge
	addq	$-4, %r13
	movl	$1, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB11_6:                               # %for.end
	movq	%r13, (%rsi)
	movq	%r15, 8(%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	s_C2R_process, .Lfunc_end11-s_C2R_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_C2R_set_defaults,@function
s_C2R_set_defaults:                     # @s_C2R_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 112(%rdi)
	retq
.Lfunc_end12:
	.size	s_C2R_set_defaults, .Lfunc_end12-s_C2R_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	ie_state_enum_ptrs,@function
ie_state_enum_ptrs:                     # @ie_state_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB13_1
# BB#4:                                 # %sw.bb.1
	addq	$136, %rsi
	movq	%r8, %rdi
	jmp	enum_bytestring         # TAILCALL
.LBB13_1:                               # %entry
	testl	%ecx, %ecx
	jne	.LBB13_3
# BB#2:                                 # %sw.bb
	movq	128(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB13_3:                               # %cleanup
	retq
.Lfunc_end13:
	.size	ie_state_enum_ptrs, .Lfunc_end13-ie_state_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ie_state_reloc_ptrs,@function
ie_state_reloc_ptrs:                    # @ie_state_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	128(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 128(%rbx)
	addq	$136, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	reloc_bytestring        # TAILCALL
.Lfunc_end14:
	.size	ie_state_reloc_ptrs, .Lfunc_end14-ie_state_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	s_IE_init,@function
s_IE_init:                              # @s_IE_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movb	120(%rbx), %cl
	movslq	112(%rbx), %rdx
	movl	%edx, %ebp
	shll	%cl, %ebp
	movq	136(%rbx), %rdi
	movl	$-2, %eax
	testq	%rdi, %rdi
	je	.LBB15_5
# BB#1:                                 # %lor.lhs.false
	cmpl	%ebp, 144(%rbx)
	jb	.LBB15_5
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	callq	memset
	movl	144(%rbx), %eax
	decl	%eax
	movq	136(%rbx), %rcx
	movb	$0, (%rcx,%rax)
	movd	%ebp, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movl	$76, %eax
	.align	16, 0x90
.LBB15_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -144(%rbx,%rax,4)
	movdqu	%xmm0, -128(%rbx,%rax,4)
	movdqu	%xmm0, -112(%rbx,%rax,4)
	movdqu	%xmm0, -96(%rbx,%rax,4)
	movdqu	%xmm0, -80(%rbx,%rax,4)
	movdqu	%xmm0, -64(%rbx,%rax,4)
	movdqu	%xmm0, -48(%rbx,%rax,4)
	movdqu	%xmm0, -32(%rbx,%rax,4)
	movdqu	%xmm0, -16(%rbx,%rax,4)
	movdqu	%xmm0, (%rbx,%rax,4)
	addq	$40, %rax
	cmpq	$476, %rax              # imm = 0x1DC
	jne	.LBB15_3
# BB#4:                                 # %for.end
	movl	$0, 1760(%rbx)
	movaps	.LCPI15_0(%rip), %xmm0  # xmm0 = [0,0,1,0]
	movups	%xmm0, 1768(%rbx)
	xorl	%eax, %eax
.LBB15_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	s_IE_init, .Lfunc_end15-s_IE_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_2:
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
	.text
	.align	16, 0x90
	.type	s_IE_process,@function
s_IE_process:                           # @s_IE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 192
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r8
	movl	108(%r8), %ebp
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movslq	112(%r8), %r14
	movb	120(%r8), %cl
	movl	%r14d, %eax
	shll	%cl, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	136(%r8), %r15
	cltq
	leaq	(%r15,%rax), %r13
	movl	1764(%r8), %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	$1, %edi
	movb	%bpl, %cl
	shll	%cl, %edi
	decl	%edi
	movl	%edi, 88(%rsp)          # 4-byte Spill
	cvtsi2ssl	%edi, %xmm3
	movss	%xmm3, 68(%rsp)         # 4-byte Spill
	leal	-1(%r14), %ecx
	incq	%rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rcx, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	leaq	-8(%rdi), %rcx
	shrq	$3, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	andl	$1, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	12(%r15,%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movss	.LCPI16_0(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movsd	.LCPI16_1(%rip), %xmm5  # xmm5 = mem[0],zero
	pxor	%xmm6, %xmm6
	movdqa	.LCPI16_2(%rip), %xmm7  # xmm7 = [23,23,23,23]
	movl	1768(%r8), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	1772(%r8), %r12d
	movl	1776(%r8), %ebp
	movq	(%rsi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	8(%rdx), %rsi
	movq	16(%rdx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB16_1
	.align	16, 0x90
.LBB16_39:                              # %if.end.117
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$0, 1780(%r8)
	xorl	%r12d, %r12d
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_25 Depth 2
                                        #     Child Loop BB16_14 Depth 2
                                        #     Child Loop BB16_18 Depth 2
                                        #     Child Loop BB16_20 Depth 2
                                        #     Child Loop BB16_38 Depth 2
	cmpl	$256, %ebp              # imm = 0x100
	jb	.LBB16_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$1, %ecx
	cmpq	40(%rsp), %rsi          # 8-byte Folded Reload
	jae	.LBB16_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	%bpl, 1(%rsi)
	incq	%rsi
	movl	$1, %ebp
.LBB16_5:                               # %while.cond.preheader
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	%r14d, %r12d
	movl	88(%rsp), %r9d          # 4-byte Reload
	movl	100(%rsp), %r10d        # 4-byte Reload
	jge	.LBB16_6
# BB#24:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movslq	%r12d, %rax
	addl	%r12d, %r12d
	movl	84(%rsp), %r11d         # 4-byte Reload
	movq	72(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB16_25:                              # %while.body
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	128(%r8), %rdx
	testl	%r10d, %r10d
	jne	.LBB16_31
# BB#26:                                # %if.then.15
                                        #   in Loop: Header=BB16_25 Depth=2
	cmpq	112(%rsp), %rbx         # 8-byte Folded Reload
	jae	.LBB16_27
# BB#30:                                # %if.end.19
                                        #   in Loop: Header=BB16_25 Depth=2
	movzbl	1(%rbx), %r11d
	incq	%rbx
	movl	$8, %r10d
.LBB16_31:                              # %if.end.22
                                        #   in Loop: Header=BB16_25 Depth=2
	movslq	%r12d, %rsi
	subl	124(%rsp), %r10d        # 4-byte Folded Reload
	movl	%r11d, %edi
	movb	%r10b, %cl
	shrl	%cl, %edi
	andl	%r9d, %edi
	movss	(%rdx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%edi, %xmm1
	divss	%xmm3, %xmm1
	movss	4(%rdx,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	%xmm5, %xmm0
	cvttsd2si	%xmm0, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	js	.LBB16_33
# BB#32:                                # %cond.false
                                        #   in Loop: Header=BB16_25 Depth=2
	cmpl	$255, %edx
	movzbl	%dl, %ecx
	movl	$255, %edx
	cmovgl	%edx, %ecx
.LBB16_33:                              # %cleanup.thread
                                        #   in Loop: Header=BB16_25 Depth=2
	movb	%cl, (%r13,%rax)
	incq	%rax
	addl	$2, %r12d
	cmpq	%r14, %rax
	jl	.LBB16_25
# BB#7:                                 # %while.cond.for.cond.52.preheader_crit_edge
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	%r11d, 84(%rsp)         # 4-byte Spill
	movl	%eax, %r12d
	movq	104(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB16_8
	.align	16, 0x90
.LBB16_6:                               #   in Loop: Header=BB16_1 Depth=1
	movl	%ebp, 96(%rsp)          # 4-byte Spill
.LBB16_8:                               # %for.cond.52.preheader
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	testl	%r14d, %r14d
	jle	.LBB16_19
# BB#9:                                 # %overflow.checked
                                        #   in Loop: Header=BB16_1 Depth=1
	xorpd	%xmm0, %xmm0
	movq	48(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	movl	$0, %eax
	xorps	%xmm1, %xmm1
	je	.LBB16_16
# BB#10:                                # %vector.body.preheader
                                        #   in Loop: Header=BB16_1 Depth=1
	xorpd	%xmm0, %xmm0
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	xorps	%xmm1, %xmm1
	jne	.LBB16_12
# BB#11:                                # %vector.body.prol
                                        #   in Loop: Header=BB16_1 Depth=1
	movd	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movd	4(%r13), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpcklwd	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpcklbw	%xmm6, %xmm1    # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3],xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklwd	%xmm6, %xmm1    # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movl	$8, %ecx
.LBB16_12:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB16_16
# BB#13:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB16_14:                              # %vector.body
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%rcx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movd	-8(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	punpcklwd	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklbw	%xmm6, %xmm3    # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3],xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpcklwd	%xmm6, %xmm3    # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movd	-4(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpcklwd	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpcklbw	%xmm6, %xmm1    # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3],xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklwd	%xmm6, %xmm1    # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$16, %rcx
	addq	$-16, %rax
	jne	.LBB16_14
# BB#15:                                #   in Loop: Header=BB16_1 Depth=1
	movq	%rdx, %rax
.LBB16_16:                              # %middle.block
                                        #   in Loop: Header=BB16_1 Depth=1
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpq	%rax, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB16_19
# BB#17:                                # %for.body.preheader
                                        #   in Loop: Header=BB16_1 Depth=1
	leaq	(%r13,%rax), %rdx
	movl	%r14d, %esi
	subl	%eax, %esi
	.align	16, 0x90
.LBB16_18:                              # %for.body
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %eax
	imull	$23, %eax, %eax
	addl	%eax, %ecx
	incq	%rdx
	decl	%esi
	jne	.LBB16_18
.LBB16_19:                              # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	%r12d, 64(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	shrq	$39, %rax
	orl	$137, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB16_20:                              # %for.cond.66
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	shrq	$39, %rax
	imull	$400, %eax, %eax        # imm = 0x190
	movl	%ecx, %ebp
	subl	%eax, %ebp
	movslq	160(%r8,%rbp,4), %r12
	leaq	(%r15,%r12), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r13, %rbx
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%r8, %r14
	callq	memcmp
	movq	%r14, %r8
	movq	%r15, %r14
	movq	%r13, %r15
	movq	%rbx, %r13
	movl	%ebp, %ecx
	movq	128(%rsp), %rdx         # 8-byte Reload
	addl	%edx, %ecx
	testl	%eax, %eax
	jne	.LBB16_20
# BB#21:                                # %for.end.78
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	92(%rsp), %r12d         # 4-byte Folded Reload
	jne	.LBB16_35
# BB#22:                                # %if.then.84
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	1760(%r8), %r12d
	movl	$-2, %ecx
	cmpl	92(%rsp), %r12d         # 4-byte Folded Reload
	je	.LBB16_23
# BB#34:                                # %if.end.88
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	%r12d, %rax
	movl	%r12d, 160(%r8,%rbp,4)
	addl	%r14d, 1760(%r8)
	leaq	(%rax,%r15), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r8, %rbx
	callq	memcpy
	movq	%rbx, %r8
.LBB16_35:                              # %if.end.99
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	120(%r8), %cl
	movl	96(%rsp), %esi          # 4-byte Reload
	shll	%cl, %esi
	movl	%r12d, %eax
	cltd
	idivl	%r14d
	movl	%eax, %ebp
	addl	%esi, %ebp
	movl	1780(%r8), %eax
	incl	%eax
	movl	%eax, 1780(%r8)
	xorl	%r12d, %r12d
	cmpl	116(%r8), %eax
	movq	104(%rsp), %rsi         # 8-byte Reload
	movss	68(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI16_0(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movsd	.LCPI16_1(%rip), %xmm5  # xmm5 = mem[0],zero
	pxor	%xmm6, %xmm6
	movdqa	.LCPI16_2(%rip), %xmm7  # xmm7 = [23,23,23,23]
	jne	.LBB16_1
# BB#36:                                # %if.then.107
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$1, %ebp
	je	.LBB16_39
# BB#37:                                # %if.then.107
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$255, %ebp
	ja	.LBB16_39
	.align	16, 0x90
.LBB16_38:                              # %while.body.114
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%ebp, %ebp
	cmpl	$256, %ebp              # imm = 0x100
	jb	.LBB16_38
	jmp	.LBB16_39
.LBB16_27:
	xorl	%r9d, %r9d
	movl	%eax, %r12d
	xorl	%ecx, %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
.LBB16_28:                              # %out
	movq	%rbx, (%rdx)
	movq	%rsi, 8(%rax)
	movl	%r11d, 1764(%r8)
	movl	%r9d, 1768(%r8)
	movl	%r12d, 1772(%r8)
	movl	%ebp, 1776(%r8)
	movl	1760(%r8), %eax
	testl	%eax, %eax
	je	.LBB16_29
# BB#40:                                # %cond.false.137
	cltd
	idivl	112(%r8)
	addl	$255, %eax
	jmp	.LBB16_41
.LBB16_29:
	xorl	%eax, %eax
.LBB16_41:                              # %cleanup.151
	movl	144(%r8), %edx
	decl	%edx
	movq	136(%r8), %rsi
	movb	%al, (%rsi,%rdx)
	movl	%ecx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_3:
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	84(%rsp), %r11d         # 4-byte Reload
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB16_28
.LBB16_23:
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	84(%rsp), %r11d         # 4-byte Reload
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	96(%rsp), %ebp          # 4-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	movl	64(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB16_28
.Lfunc_end16:
	.size	s_IE_process, .Lfunc_end16-s_IE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_IE_set_defaults,@function
s_IE_set_defaults:                      # @s_IE_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 128(%rdi)
	movq	$0, 136(%rdi)
	movl	$0, 144(%rdi)
	movq	$0, 152(%rdi)
	retq
.Lfunc_end17:
	.size	s_IE_set_defaults, .Lfunc_end17-s_IE_set_defaults
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	3212836864              # float -1
	.text
	.globl	s_Downsample_size_out
	.align	16, 0x90
	.type	s_Downsample_size_out,@function
s_Downsample_size_out:                  # @s_Downsample_size_out
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	cvtsi2ssl	%edi, %xmm1
	je	.LBB18_2
# BB#1:                                 # %entry
	addss	%xmm0, %xmm1
	addss	.LCPI18_0(%rip), %xmm1
.LBB18_2:                               # %entry
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	retq
.Lfunc_end18:
	.size	s_Downsample_size_out, .Lfunc_end18-s_Downsample_size_out
	.cfi_endproc

	.align	16, 0x90
	.type	s_Subsample_init,@function
s_Subsample_init:                       # @s_Subsample_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 16
	movss	120(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	cvtsi2ssl	%eax, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_1
	jnp	.LBB19_2
.LBB19_1:                               # %if.then
	movq	8(%rdi), %rdi
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.5, %esi
	movb	$1, %al
	callq	errprintf
	movl	$-2, %eax
	popq	%rdx
	retq
.LBB19_2:                               # %if.end
	movq	$0, 140(%rdi)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end19:
	.size	s_Subsample_init, .Lfunc_end19-s_Subsample_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_Subsample_process,@function
s_Subsample_process:                    # @s_Subsample_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 144
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	(%rsi), %r12
	movq	8(%rsi), %r10
	movq	8(%rdx), %r9
	movl	112(%rdi), %r11d
	movl	116(%rdi), %ecx
	cvttss2si	120(%rdi), %r15d
	movq	%r15, 48(%rsp)          # 8-byte Spill
	cvttss2si	124(%rdi), %r13d
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	%r11d, %eax
	cltd
	idivl	%r15d
	movl	%edx, %ebp
	movl	%r11d, %esi
	subl	%ebp, %esi
	movl	%ecx, %eax
	cltd
	idivl	%r13d
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	$1, 132(%rdi)
	sbbl	%r8d, %r8d
	orl	%eax, %r8d
	cmpl	%r11d, %esi
	movl	$-1, %eax
	cmovgel	%eax, %r8d
	movl	%edx, %ebp
	shrl	$31, %ebp
	addl	%edx, %ebp
	sarl	%ebp
	addl	%ebx, %ebp
	cmpl	$1, 136(%rdi)
	sbbl	%edx, %edx
	orl	%ebp, %edx
	cmpl	%ecx, %ebx
	cmovgel	%eax, %edx
	movq	%r10, %rcx
	subq	%r12, %rcx
	movslq	108(%rdi), %r14
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	movl	140(%rdi), %ebp
	movl	144(%rdi), %ebx
	jge	.LBB20_2
# BB#1:
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	%r12, %rcx
	jmp	.LBB20_11
.LBB20_2:                               # %for.body.preheader
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%r15d, %eax
	shrl	$31, %eax
	leal	(%rax,%r15), %eax
	sarl	%eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%r13d, %eax
	shrl	$31, %eax
	leal	(%rax,%r13), %eax
	sarl	%eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	60(%rsp), %edi          # 4-byte Reload
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB20_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	cltd
	idivl	%r13d
	cmpl	80(%rsp), %edx          # 4-byte Folded Reload
	sete	%al
	cmpl	%edi, %ebx
	setl	%cl
	movl	84(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %ebx
	je	.LBB20_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	andb	%al, %cl
	je	.LBB20_10
.LBB20_5:                               # %land.lhs.true.34
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%r15d
	cmpl	76(%rsp), %edx          # 4-byte Folded Reload
	sete	%al
	cmpl	%esi, %ebp
	setl	%cl
	cmpl	%r8d, %ebp
	je	.LBB20_7
# BB#6:                                 # %land.lhs.true.34
                                        #   in Loop: Header=BB20_3 Depth=1
	andb	%al, %cl
	je	.LBB20_10
.LBB20_7:                               # %if.then
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	%r11d, %r15d
	movq	%r10, %r13
	movq	32(%rsp), %rcx          # 8-byte Reload
	subq	%r9, %rcx
	movl	$1, %eax
	cmpq	%r14, %rcx
	jl	.LBB20_8
# BB#9:                                 # %if.end
                                        #   in Loop: Header=BB20_3 Depth=1
	leaq	1(%r9), %rdi
	leaq	1(%r12), %rsi
	movq	%r14, %rdx
	movq	%r9, 64(%rsp)           # 8-byte Spill
	callq	memcpy
	movl	24(%rsp), %r8d          # 4-byte Reload
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	addq	%r14, %r9
	movq	%r13, %r10
	movl	%r15d, %r11d
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	movl	60(%rsp), %edi          # 4-byte Reload
.LBB20_10:                              # %if.end.54
                                        #   in Loop: Header=BB20_3 Depth=1
	incl	%ebp
	xorl	%eax, %eax
	cmpl	%r11d, %ebp
	sete	%cl
	cmovel	%eax, %ebp
	movzbl	%cl, %ecx
	addl	%ecx, %ebx
	leaq	(%r12,%r14), %rcx
	addq	%r14, %r12
	movq	%r10, %rdx
	subq	%r12, %rdx
	cmpq	%r14, %rdx
	movq	%rcx, %r12
	jge	.LBB20_3
	jmp	.LBB20_11
.LBB20_8:
	movq	%r12, %rcx
.LBB20_11:                              # %do.end.64
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r9, 8(%rcx)
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%ebp, 140(%rcx)
	movl	%ebx, 144(%rcx)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	s_Subsample_process, .Lfunc_end20-s_Subsample_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_Downsample_set_defaults,@function
s_Downsample_set_defaults:              # @s_Downsample_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 136(%rdi)
	movq	$0, 128(%rdi)
	retq
.Lfunc_end21:
	.size	s_Downsample_set_defaults, .Lfunc_end21-s_Downsample_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_Average_init,@function
s_Average_init:                         # @s_Average_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 32
.Ltmp85:
	.cfi_offset %rbx, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movss	120(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %esi
	cvtsi2ssl	%esi, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB22_1
	jnp	.LBB22_2
.LBB22_1:                               # %if.then
	movq	8(%rbx), %rdi
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.7, %esi
	movb	$1, %al
	callq	errprintf
	movl	$-2, %ebp
	jmp	.LBB22_8
.LBB22_2:                               # %if.end
	movl	108(%rbx), %edi
	movl	112(%rbx), %ecx
	leal	-1(%rsi,%rcx), %eax
	cltd
	idivl	%esi
	movl	%eax, %ebp
	imull	%edi, %ebp
	movl	%ebp, 148(%rbx)
	xorl	%eax, %eax
	cmpl	$0, 132(%rbx)
	jne	.LBB22_4
# BB#3:                                 # %lor.lhs.false
	movl	%ecx, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	cmovel	%edx, %edi
	movl	%edi, %eax
.LBB22_4:                               # %cond.end
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, 152(%rbx)
	movq	160(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB22_6
# BB#5:                                 # %if.then.13
	movq	8(%rbx), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movl	148(%rbx), %ebp
.LBB22_6:                               # %if.end.17
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.8, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, 160(%rbx)
	movl	$-2, %ebp
	testq	%rax, %rax
	je	.LBB22_8
# BB#7:                                 # %if.end.28
	movl	148(%rbx), %edx
	shlq	$2, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	$0, 140(%rbx)
.LBB22_8:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	s_Average_init, .Lfunc_end22-s_Average_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_Average_process,@function
s_Average_process:                      # @s_Average_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 128
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	(%rsi), %rbx
	movq	8(%rsi), %r8
	movq	8(%rdx), %r12
	movq	16(%rdx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	108(%rdi), %r15
	movl	112(%rdi), %r13d
	movl	140(%rdi), %r14d
	cvttss2si	120(%rdi), %r9d
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	cvttss2si	124(%rdi), %r10d
	movl	%r10d, 32(%rsp)         # 4-byte Spill
	movl	144(%rdi), %esi
	notq	%rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	160(%rdi), %r11
	movq	%r11, 48(%rsp)          # 8-byte Spill
	leal	1(%r15), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_12:                              # %cleanup.thread
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	148(%rdi), %edx
	shlq	$2, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r11, %rdi
	callq	memset
	movl	36(%rsp), %r9d          # 4-byte Reload
	xorl	%esi, %esi
	movq	%rbp, %r8
	movl	32(%rsp), %r10d         # 4-byte Reload
.LBB23_13:                              # %while.cond.38.preheader
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	%r14d, %ecx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %r11          # 8-byte Reload
	.align	16, 0x90
.LBB23_14:                              # %while.cond.38
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_19 Depth 3
	movq	%r8, %rdx
	subq	%rbx, %rdx
	xorl	%eax, %eax
	cmpq	%r15, %rdx
	jl	.LBB23_15
# BB#17:                                # %while.body.45
                                        #   in Loop: Header=BB23_14 Depth=2
	testl	%r15d, %r15d
	jle	.LBB23_20
# BB#18:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB23_14 Depth=2
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	imull	%r15d, %eax
	cltq
	leaq	(%r11,%rax,4), %rax
	movl	68(%rsp), %edx          # 4-byte Reload
	.align	16, 0x90
.LBB23_19:                              # %for.body
                                        #   Parent Loop BB23_1 Depth=1
                                        #     Parent Loop BB23_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	1(%rbx), %ebp
	addl	%ebp, (%rax)
	incq	%rbx
	addq	$4, %rax
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB23_19
.LBB23_20:                              # %for.end
                                        #   in Loop: Header=BB23_14 Depth=2
	incl	%ecx
	cmpl	%r13d, %ecx
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %esi
	xorl	%r14d, %r14d
	cmpl	%r13d, %ecx
	jne	.LBB23_14
.LBB23_1:                               # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_9 Depth 2
                                        #     Child Loop BB23_14 Depth 2
                                        #       Child Loop BB23_19 Depth 3
	cmpl	%r10d, %esi
	je	.LBB23_6
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB23_13
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	%r8, %rbx
	jb	.LBB23_13
# BB#4:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB23_1 Depth=1
	testl	%esi, %esi
	je	.LBB23_13
# BB#5:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	136(%rdi), %eax
	testl	%eax, %eax
	je	.LBB23_13
	.align	16, 0x90
.LBB23_6:                               # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	152(%rdi), %edx
	movl	%edx, %ecx
	subl	%r14d, %ecx
	movq	40(%rsp), %rax          # 8-byte Reload
	subq	%r12, %rax
	cmpq	%rax, %rcx
	cmovll	%ecx, %eax
	testl	%eax, %eax
	je	.LBB23_11
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB23_1 Depth=1
	testl	%eax, %eax
	jle	.LBB23_11
# BB#8:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	%esi, %ebp
	imull	%r9d, %ebp
	movslq	%r14d, %r14
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%r12), %rax
	notq	%rcx
	cmpq	%rcx, %rax
	cmovgl	%eax, %ecx
	notl	%ecx
	incl	%ecx
	.align	16, 0x90
.LBB23_9:                               # %while.body
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r11,%r14,4), %eax
	xorl	%edx, %edx
	divl	%ebp
	movb	%al, 1(%r12)
	incq	%r12
	incq	%r14
	decl	%ecx
	cmpl	$1, %ecx
	jg	.LBB23_9
# BB#10:                                # %while.cond.if.end.loopexit_crit_edge
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	152(%rdi), %edx
.LBB23_11:                              # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	%r8, %rbp
	movl	$1, %eax
	cmpl	%edx, %r14d
	jae	.LBB23_12
	jmp	.LBB23_16
.LBB23_15:
	movl	%ecx, %r14d
.LBB23_16:
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, (%rdx)
	movq	%r12, 8(%rcx)
	movl	%r14d, 140(%rdi)
	movl	%esi, 144(%rdi)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	s_Average_process, .Lfunc_end23-s_Average_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_Average_release,@function
s_Average_release:                      # @s_Average_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	160(%rdi), %rsi
	movq	24(%rax), %rcx
	movl	$.L.str.8, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end24:
	.size	s_Average_release, .Lfunc_end24-s_Average_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_Average_set_defaults,@function
s_Average_set_defaults:                 # @s_Average_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 136(%rdi)
	movl	$0, 132(%rdi)
	movl	$0, 128(%rdi)
	movq	$0, 160(%rdi)
	retq
.Lfunc_end25:
	.size	s_Average_set_defaults, .Lfunc_end25-s_Average_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_Bicubic_init,@function
s_Bicubic_init:                         # @s_Bicubic_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 32
.Ltmp103:
	.cfi_offset %rbx, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	112(%rbx), %rax
	cmpq	$4, %rax
	movl	$-2, %ebp
	jl	.LBB26_6
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, 116(%rbx)
	jl	.LBB26_6
# BB#2:                                 # %if.end
	movslq	108(%rbx), %rsi
	imulq	%rax, %rsi
	movq	%rsi, 152(%rbx)
	shlq	$2, %rsi
	movq	%rsi, 160(%rbx)
	movq	$0, 168(%rbx)
	movl	$0, 148(%rbx)
	movq	176(%rbx), %rax
	testq	%rax, %rax
	je	.LBB26_4
# BB#3:                                 # %if.then.5
	movq	8(%rbx), %rdi
	movl	$.L.str.10, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	160(%rbx), %rsi
.LBB26_4:                               # %if.end.8
	movq	8(%rbx), %rdi
	movl	$.L.str.10, %edx
	callq	*64(%rdi)
	movq	%rax, 176(%rbx)
	testq	%rax, %rax
	je	.LBB26_6
# BB#5:                                 # %if.end.19
	movq	$0, 140(%rbx)
	xorl	%ebp, %ebp
.LBB26_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	s_Bicubic_init, .Lfunc_end26-s_Bicubic_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI27_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_1:
	.quad	-4616189618054758400    # double -1
.LCPI27_2:
	.quad	4602678819172646912     # double 0.5
.LCPI27_3:
	.quad	-4606056518893174784    # double -5
.LCPI27_4:
	.quad	4616189618054758400     # double 4
.LCPI27_5:
	.quad	4613937818241073152     # double 3
.LCPI27_6:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	s_Bicubic_process,@function
s_Bicubic_process:                      # @s_Bicubic_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 240
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movq	%rdx, %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movss	120(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, 132(%r15)
	cvtsi2ssl	112(%r15), %xmm1
	je	.LBB27_1
# BB#2:                                 # %select.mid
	addss	%xmm0, %xmm1
	movss	%xmm0, 136(%rsp)        # 4-byte Spill
	addss	.LCPI27_0(%rip), %xmm1
	movss	%xmm1, 128(%rsp)        # 4-byte Spill
	jmp	.LBB27_3
.LBB27_1:
	movss	%xmm1, 128(%rsp)        # 4-byte Spill
	movss	%xmm0, 136(%rsp)        # 4-byte Spill
.LBB27_3:                               # %select.end
	movss	124(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, 136(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	116(%r15), %xmm1
	je	.LBB27_5
# BB#4:                                 # %select.mid244
	addss	%xmm0, %xmm1
	addss	.LCPI27_0(%rip), %xmm1
.LBB27_5:                               # %select.end243
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r14d
	movl	%r14d, 20(%rsp)         # 4-byte Spill
	movl	144(%r15), %ebp
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	floor
	cmpl	%r14d, %ebp
	jge	.LBB27_6
# BB#9:                                 # %if.end.11.lr.ph
	movss	128(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	136(%rsp), %xmm1        # 4-byte Folded Reload
	cvttss2si	%xmm1, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	addsd	.LCPI27_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	cmovsl	%eax, %ebp
	leaq	8(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB27_10:                              # %if.end.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_15 Depth 2
                                        #     Child Loop BB27_25 Depth 2
                                        #       Child Loop BB27_28 Depth 3
                                        #         Child Loop BB27_29 Depth 4
	movq	160(%r15), %rax
	movq	168(%r15), %rdi
	subq	%rdi, %rax
	jbe	.LBB27_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB27_10 Depth=1
	movq	(%rbx), %rsi
	movq	8(%rbx), %r14
	cmpq	%r14, %rsi
	jae	.LBB27_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB27_10 Depth=1
	subq	%rsi, %r14
	cmpq	%r14, %rax
	cmovbq	%rax, %r14
	addq	176(%r15), %rdi
	incq	%rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	168(%r15), %rdi
	addq	%r14, %rdi
	movq	%rdi, 168(%r15)
	addq	%r14, (%rbx)
.LBB27_13:                              # %while.cond.preheader
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	148(%r15), %ecx
	cmpl	%ebp, %ecx
	jge	.LBB27_17
# BB#14:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB27_10 Depth=1
	movq	152(%r15), %rax
	.align	16, 0x90
.LBB27_15:                              # %land.rhs
                                        #   Parent Loop BB27_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rdx
	subq	%rax, %rdx
	jb	.LBB27_17
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB27_15 Depth=2
	movq	176(%r15), %rdi
	leaq	(%rax,%rdi), %rsi
	callq	memmove
	movq	152(%r15), %rax
	movq	168(%r15), %rdi
	subq	%rax, %rdi
	movq	%rdi, 168(%r15)
	movl	148(%r15), %ecx
	incl	%ecx
	movl	%ecx, 148(%r15)
	cmpl	%ebp, %ecx
	jl	.LBB27_15
.LBB27_17:                              # %while.end
                                        #   in Loop: Header=BB27_10 Depth=1
	cmpq	160(%r15), %rdi
	jb	.LBB27_19
# BB#18:                                # %while.end
                                        #   in Loop: Header=BB27_10 Depth=1
	cmpl	%ebp, %ecx
	jge	.LBB27_23
.LBB27_19:                              # %if.then.67
                                        #   in Loop: Header=BB27_10 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rax
	cmpq	8(%rbx), %rax
	jae	.LBB27_21
# BB#20:                                # %if.then.67.for.cond.backedge_crit_edge
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	144(%r15), %r14d
	jmp	.LBB27_53
	.align	16, 0x90
.LBB27_21:                              # %if.end.73
                                        #   in Loop: Header=BB27_10 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	je	.LBB27_8
# BB#22:                                # %if.end.73
                                        #   in Loop: Header=BB27_10 Depth=1
	cmpl	%ebp, %ecx
	jl	.LBB27_8
.LBB27_23:                              # %while.cond.82.preheader
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	140(%r15), %ebp
	cmpl	44(%rsp), %ebp          # 4-byte Folded Reload
	jge	.LBB27_52
# BB#24:                                # %while.body.85.lr.ph
                                        #   in Loop: Header=BB27_10 Depth=1
	movq	8(%r12), %rbx
	movl	108(%r15), %r13d
	.align	16, 0x90
.LBB27_25:                              # %while.body.85
                                        #   Parent Loop BB27_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_28 Depth 3
                                        #         Child Loop BB27_29 Depth 4
	movslq	%r13d, %rax
	leaq	(%rax,%rbx), %rcx
	movl	$1, %eax
	cmpq	16(%r12), %rcx
	ja	.LBB27_8
# BB#26:                                # %if.end.92
                                        #   in Loop: Header=BB27_25 Depth=2
	cvtsi2ssl	144(%r15), %xmm2
	cvtsi2ssl	%ebp, %xmm1
	mulss	120(%r15), %xmm1
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	mulss	124(%r15), %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	callq	floor
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	testl	%r13d, %r13d
	jle	.LBB27_51
# BB#27:                                # %for.cond.14.preheader.lr.ph.i
                                        #   in Loop: Header=BB27_25 Depth=2
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	136(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	movsd	.LCPI27_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	addsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %r14d
	movapd	%xmm2, %xmm13
	movsd	.LCPI27_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm13
	movsd	%xmm13, 56(%rsp)        # 8-byte Spill
	movapd	%xmm3, %xmm14
	mulsd	%xmm0, %xmm14
	movsd	%xmm14, 48(%rsp)        # 8-byte Spill
	movslq	%r14d, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	2(%rax), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	3(%rax), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movsd	.LCPI27_3(%rip), %xmm7  # xmm7 = mem[0],zero
	movsd	.LCPI27_4(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI27_5(%rip), %xmm9  # xmm9 = mem[0],zero
	xorps	%xmm10, %xmm10
	movapd	%xmm2, %xmm11
	movapd	%xmm3, %xmm12
	.align	16, 0x90
.LBB27_28:                              # %for.cond.14.preheader.i
                                        #   Parent Loop BB27_10 Depth=1
                                        #     Parent Loop BB27_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB27_29 Depth 4
	movslq	116(%r15), %r11
	leal	-1(%r11), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	148(%r15), %r9d
	movq	152(%r15), %r10
	movq	168(%r15), %r8
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB27_29:                              # %for.cond.18.preheader.i
                                        #   Parent Loop BB27_10 Depth=1
                                        #     Parent Loop BB27_25 Depth=2
                                        #       Parent Loop BB27_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rbp), %ecx
	cmpq	%rax, %r11
	cmovlel	128(%rsp), %ecx         # 4-byte Folded Reload
	xorl	%eax, %eax
	subl	%r9d, %ecx
	cmovsl	%eax, %ecx
	movslq	%ecx, %rcx
	imulq	%r10, %rcx
	addq	136(%rsp), %rcx         # 8-byte Folded Reload
	testl	%r14d, %r14d
	js	.LBB27_31
# BB#30:                                # %cond.false.7.i.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movl	112(%r15), %edx
	leal	-1(%rdx), %eax
	cmpl	%r14d, %edx
	cmovgl	%r14d, %eax
.LBB27_31:                              # %cond.end.16.i.i
                                        #   in Loop: Header=BB27_29 Depth=4
	imull	%r13d, %eax
	movslq	%eax, %rsi
	addq	%rcx, %rsi
	xorl	%eax, %eax
	cmpq	%r8, %rsi
	movl	$0, %edx
	jae	.LBB27_33
# BB#32:                                # %cond.true.24.i.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movq	176(%r15), %rdx
	movb	(%rdx,%rsi), %dl
.LBB27_33:                              # %s_Bicubic_data_at.exit.i
                                        #   in Loop: Header=BB27_29 Depth=4
	cmpl	$-1, %r14d
	jl	.LBB27_35
# BB#34:                                # %cond.false.7.i.1.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movslq	112(%r15), %rsi
	leal	-1(%rsi), %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rsi
	cmovgl	%edi, %eax
.LBB27_35:                              # %cond.end.16.i.1.i
                                        #   in Loop: Header=BB27_29 Depth=4
	imull	%r13d, %eax
	movslq	%eax, %rbx
	addq	%rcx, %rbx
	xorl	%eax, %eax
	cmpq	%r8, %rbx
	movl	$0, %esi
	jae	.LBB27_37
# BB#36:                                # %cond.true.24.i.1.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movq	176(%r15), %rsi
	movb	(%rsi,%rbx), %sil
.LBB27_37:                              # %s_Bicubic_data_at.exit.1.i
                                        #   in Loop: Header=BB27_29 Depth=4
	cmpl	$-2, %r14d
	jl	.LBB27_39
# BB#38:                                # %cond.false.7.i.2.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movslq	112(%r15), %rdi
	leal	-1(%rdi), %eax
	movq	96(%rsp), %rbx          # 8-byte Reload
	cmpq	%rbx, %rdi
	cmovgl	%ebx, %eax
.LBB27_39:                              # %cond.end.16.i.2.i
                                        #   in Loop: Header=BB27_29 Depth=4
	imull	%r13d, %eax
	movslq	%eax, %rbx
	addq	%rcx, %rbx
	xorl	%eax, %eax
	cmpq	%r8, %rbx
	movl	$0, %edi
	jae	.LBB27_41
# BB#40:                                # %cond.true.24.i.2.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movq	176(%r15), %rdi
	movb	(%rdi,%rbx), %dil
.LBB27_41:                              # %s_Bicubic_data_at.exit.2.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	cmpl	$-3, %r14d
	movzbl	%dil, %r12d
	jl	.LBB27_43
# BB#42:                                # %cond.false.7.i.3.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movslq	112(%r15), %rdi
	leal	-1(%rdi), %eax
	movq	88(%rsp), %rbx          # 8-byte Reload
	cmpq	%rbx, %rdi
	cmovgl	%ebx, %eax
.LBB27_43:                              # %cond.end.16.i.3.i
                                        #   in Loop: Header=BB27_29 Depth=4
	cvtsi2sdl	%edx, %xmm2
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%r12d, %xmm1
	imull	%r13d, %eax
	cltq
	addq	%rcx, %rax
	cmpq	%r8, %rax
	jae	.LBB27_44
# BB#55:                                # %cond.true.24.i.3.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movq	176(%r15), %rcx
	movb	(%rcx,%rax), %al
	jmp	.LBB27_56
	.align	16, 0x90
.LBB27_44:                              #   in Loop: Header=BB27_29 Depth=4
	xorl	%eax, %eax
.LBB27_56:                              # %s_Bicubic_data_at.exit.3.i
                                        #   in Loop: Header=BB27_29 Depth=4
	movzbl	%al, %eax
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm1, %xmm4
	subsd	%xmm2, %xmm4
	movapd	%xmm2, %xmm5
	addsd	%xmm5, %xmm5
	movapd	%xmm0, %xmm6
	mulsd	%xmm7, %xmm6
	addsd	%xmm5, %xmm6
	movapd	%xmm0, %xmm5
	subsd	%xmm1, %xmm5
	mulsd	%xmm8, %xmm1
	addsd	%xmm6, %xmm1
	subsd	%xmm3, %xmm1
	mulsd	%xmm9, %xmm5
	addsd	%xmm3, %xmm5
	subsd	%xmm2, %xmm5
	mulsd	%xmm11, %xmm5
	addsd	%xmm1, %xmm5
	mulsd	%xmm11, %xmm5
	addsd	%xmm4, %xmm5
	mulsd	%xmm13, %xmm5
	addsd	%xmm0, %xmm5
	movsd	%xmm5, 144(%rsp,%rbp,8)
	incq	%rbp
	cmpq	$4, %rbp
	jne	.LBB27_29
# BB#45:                                # %for.end.30.i
                                        #   in Loop: Header=BB27_28 Depth=3
	movsd	144(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	160(%rsp), %xmm3        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	subsd	%xmm2, %xmm4
	movapd	%xmm1, %xmm0
	subsd	%xmm3, %xmm0
	movsd	168(%rsp), %xmm5        # xmm5 = mem[0],zero
	mulsd	%xmm9, %xmm0
	addsd	%xmm5, %xmm0
	subsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm2
	movapd	%xmm1, %xmm6
	mulsd	%xmm7, %xmm6
	addsd	%xmm2, %xmm6
	mulsd	%xmm8, %xmm3
	addsd	%xmm6, %xmm3
	subsd	%xmm5, %xmm3
	mulsd	%xmm12, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm12, %xmm0
	addsd	%xmm4, %xmm0
	mulsd	%xmm14, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm10
	jbe	.LBB27_47
# BB#46:                                #   in Loop: Header=BB27_28 Depth=3
	xorl	%eax, %eax
	jmp	.LBB27_49
	.align	16, 0x90
.LBB27_47:                              # %cond.false.i
                                        #   in Loop: Header=BB27_28 Depth=3
	movb	$-1, %al
	ucomisd	.LCPI27_6(%rip), %xmm0
	ja	.LBB27_49
# BB#48:                                # %cond.false.38.i
                                        #   in Loop: Header=BB27_28 Depth=3
	addsd	.LCPI27_2(%rip), %xmm0
	callq	floor
	movsd	48(%rsp), %xmm14        # 8-byte Reload
                                        # xmm14 = mem[0],zero
	movsd	56(%rsp), %xmm13        # 8-byte Reload
                                        # xmm13 = mem[0],zero
	movsd	72(%rsp), %xmm12        # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	64(%rsp), %xmm11        # 8-byte Reload
                                        # xmm11 = mem[0],zero
	xorps	%xmm10, %xmm10
	movsd	.LCPI27_5(%rip), %xmm9  # xmm9 = mem[0],zero
	movsd	.LCPI27_4(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI27_3(%rip), %xmm7  # xmm7 = mem[0],zero
	cvttsd2si	%xmm0, %eax
.LBB27_49:                              # %cond.end.43.i
                                        #   in Loop: Header=BB27_28 Depth=3
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	movb	%al, 1(%rcx,%rdx)
	incq	%rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movslq	108(%r15), %r13
	cmpq	%r13, %rdx
	jl	.LBB27_28
# BB#50:                                # %s_Bicubic_interpolate_pixel.exit.loopexit
                                        #   in Loop: Header=BB27_25 Depth=2
	movl	140(%r15), %ebp
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	8(%r12), %rbx
.LBB27_51:                              # %s_Bicubic_interpolate_pixel.exit
                                        #   in Loop: Header=BB27_25 Depth=2
	incl	%ebp
	movl	%ebp, 140(%r15)
	movslq	%r13d, %rax
	addq	%rax, %rbx
	movq	%rbx, 8(%r12)
	cmpl	44(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB27_25
.LBB27_52:                              # %while.end.102
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	$0, 140(%r15)
	movl	144(%r15), %r14d
	incl	%r14d
	movl	%r14d, 144(%r15)
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB27_53:                              # %for.cond.backedge
                                        #   in Loop: Header=BB27_10 Depth=1
	cvtsi2ssl	%r14d, %xmm0
	mulss	124(%r15), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	addsd	.LCPI27_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ebp
	testl	%ebp, %ebp
	movl	$0, %eax
	cmovsl	%eax, %ebp
	cmpl	20(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB27_10
# BB#54:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB27_7
.LBB27_6:                               # %entry.if.then.10_crit_edge
	leaq	8(%rbx), %rax
.LBB27_7:                               # %if.then.10
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB27_8:                               # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	s_Bicubic_process, .Lfunc_end27-s_Bicubic_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_Bicubic_release,@function
s_Bicubic_release:                      # @s_Bicubic_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	176(%rdi), %rsi
	movq	24(%rax), %rcx
	movl	$.L.str.10, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end28:
	.size	s_Bicubic_release, .Lfunc_end28-s_Bicubic_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_Bicubic_set_defaults,@function
s_Bicubic_set_defaults:                 # @s_Bicubic_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 136(%rdi)
	movl	$0, 132(%rdi)
	movl	$0, 128(%rdi)
	movq	$0, 176(%rdi)
	retq
.Lfunc_end29:
	.size	s_Bicubic_set_defaults, .Lfunc_end29-s_Bicubic_set_defaults
	.cfi_endproc

	.globl	s_compr_chooser_set_dimensions
	.align	16, 0x90
	.type	s_compr_chooser_set_dimensions,@function
s_compr_chooser_set_dimensions:         # @s_compr_chooser_set_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, 112(%rbx)
	movl	%edx, 116(%rbx)
	movl	%ecx, 120(%rbx)
	movl	%r8d, 124(%rbx)
	movq	8(%rbx), %rdi
	imull	%ecx, %esi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, 144(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$-25, %eax
	cmovnel	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end30:
	.size	s_compr_chooser_set_dimensions, .Lfunc_end30-s_compr_chooser_set_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	s_compr_chooser_init,@function
s_compr_chooser_init:                   # @s_compr_chooser_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 124(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 108(%rdi)
	movq	$0, 144(%rdi)
	movl	$0, 128(%rdi)
	movl	$0, 132(%rdi)
	movq	$0, 136(%rdi)
	movups	%xmm0, 152(%rdi)
	movq	$0, 168(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end31:
	.size	s_compr_chooser_init, .Lfunc_end31-s_compr_chooser_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_compr_chooser_process,@function
s_compr_chooser_process:                # @s_compr_chooser_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp123:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp124:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 56
.Ltmp126:
	.cfi_offset %rbx, -56
.Ltmp127:
	.cfi_offset %r12, -48
.Ltmp128:
	.cfi_offset %r13, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movq	(%rsi), %r9
	movq	8(%rsi), %rax
	subq	%r9, %rax
	movl	112(%rdi), %ecx
	cmpl	$3, %ecx
	jb	.LBB32_70
# BB#1:                                 # %if.then
	testl	%eax, %eax
	je	.LBB32_70
# BB#2:                                 # %while.body.lr.ph.i
	movq	%rsi, -88(%rsp)         # 8-byte Spill
	movl	120(%rdi), %esi
	movq	%rax, %rbp
	movq	%rbp, -96(%rsp)         # 8-byte Spill
	movl	128(%rdi), %eax
	incq	%r9
	xorl	%edx, %edx
	divl	%esi
	imull	%ecx, %edx
	movl	132(%rdi), %ecx
	xorps	%xmm0, %xmm0
	movl	%ebp, %r10d
	.align	16, 0x90
.LBB32_4:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_7 Depth 2
                                        #     Child Loop BB32_11 Depth 2
                                        #       Child Loop BB32_14 Depth 3
                                        #         Child Loop BB32_16 Depth 4
                                        #           Child Loop BB32_30 Depth 5
                                        #           Child Loop BB32_47 Depth 5
	cmpl	$7, %ecx
	ja	.LBB32_8
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	%ecx, %r8d
	movl	$64, %esi
	subq	%r8, %rsi
	shrq	$3, %rsi
	cmpl	%r10d, %esi
	cmovael	%r10d, %esi
	testl	%esi, %esi
	je	.LBB32_8
# BB#6:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	136(%rdi), %rsi
	movl	%r10d, %ebp
	notl	%ebp
	movl	$64, %ebx
	subq	%r8, %rbx
	shrq	$3, %rbx
	notl	%ebx
	cmpl	%ebx, %ebp
	cmoval	%ebp, %ebx
	incl	%ebx
	.align	16, 0x90
.LBB32_7:                               # %for.body.i
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rsi
	movzbl	(%r9), %ebp
	orq	%rbp, %rsi
	movq	%rsi, 136(%rdi)
	decl	%r10d
	incq	%r9
	addl	$8, %ecx
	movl	%ecx, 132(%rdi)
	incl	%ebx
	jne	.LBB32_7
.LBB32_8:                               # %while.cond.14.preheader.i
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	%r10d, -76(%rsp)        # 4-byte Spill
	movq	%r9, -72(%rsp)          # 8-byte Spill
	jmp	.LBB32_11
	.align	16, 0x90
.LBB32_10:                              # %while.body.18.while.cond.14.backedge_crit_edge.i
                                        #   in Loop: Header=BB32_11 Depth=2
	leal	(%rdx,%r14), %edx
	cmpl	%ecx, %edx
	movl	$0, %ecx
	cmovael	%ecx, %edx
	setae	%cl
	movzbl	%cl, %esi
	addl	%eax, %esi
	movl	132(%rdi), %ecx
	movl	%esi, %eax
	jmp	.LBB32_11
	.align	16, 0x90
.LBB32_9:                               # %while.body.18.i
                                        #   in Loop: Header=BB32_11 Depth=2
	subl	%r8d, %ecx
	movq	136(%rdi), %rsi
	movq	%rsi, %rbp
	shrq	%cl, %rbp
	movq	%rbp, %rbx
	shlq	%cl, %rbx
	subq	%rbx, %rsi
	movq	%rsi, 136(%rdi)
	movl	%ecx, 132(%rdi)
	leal	-8(%r8), %ecx
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	movl	$8, %ecx
	subl	%r8d, %ecx
	shlq	%cl, %rbp
	cmpl	$8, %r8d
	cmovaq	%rsi, %rbp
	leal	(%rax,%rdx), %ecx
	movq	144(%rdi), %rsi
	movb	%bpl, (%rsi,%rcx)
	movl	112(%rdi), %r14d
	movl	120(%rdi), %ebp
	movl	%ebp, -48(%rsp)         # 4-byte Spill
	movl	%ebp, %ecx
	imull	%r14d, %ecx
	movl	128(%rdi), %esi
	incl	%esi
	movl	%esi, 128(%rdi)
	cmpl	%ecx, %esi
	jb	.LBB32_10
# BB#12:                                # %if.then.63.i
                                        #   in Loop: Header=BB32_11 Depth=2
	testl	%ebp, %ebp
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	je	.LBB32_68
# BB#13:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB32_11 Depth=2
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %r9
	leal	-1(%r14), %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	movq	%r14, %rcx
	movl	$2863311531, %eax       # imm = 0xAAAAAAAB
	imulq	%rax, %rcx
	shrq	$34, %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB32_14:                              # %for.body.i.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB32_16 Depth 4
                                        #           Child Loop BB32_30 Depth 5
                                        #           Child Loop BB32_47 Depth 5
	cmpl	$2, %r14d
	jb	.LBB32_67
# BB#15:                                # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB32_14 Depth=3
	movl	%esi, -44(%rsp)         # 4-byte Spill
	movzbl	(%r9), %r8d
	xorl	%r15d, %r15d
	movq	%r9, %r11
	movl	$1, %r10d
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%r8d, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB32_16:                              # %for.body.i.i.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_11 Depth=2
                                        #       Parent Loop BB32_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB32_30 Depth 5
                                        #           Child Loop BB32_47 Depth 5
	movzbl	(%r9,%r10), %edi
	testl	%r13d, %r13d
	je	.LBB32_21
# BB#17:                                #   in Loop: Header=BB32_16 Depth=4
	movl	%esi, %r12d
.LBB32_18:                              # %if.end.62.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	testl	%r15d, %r15d
	jne	.LBB32_45
	jmp	.LBB32_19
	.align	16, 0x90
.LBB32_21:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	cmpl	%edi, %r8d
	jge	.LBB32_23
# BB#22:                                # %if.then.8.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leal	(%r10,%rdx), %ecx
	testl	%r15d, %r15d
	cmovel	%ecx, %esi
	movl	$1, %r15d
	jmp	.LBB32_57
.LBB32_23:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	jne	.LBB32_25
# BB#24:                                # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-10(%r10), %r12
	movslq	%esi, %rcx
	cmpq	%r12, %rcx
	jl	.LBB32_18
.LBB32_25:                              # %if.else.18.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	testl	%r15d, %r15d
	je	.LBB32_26
# BB#27:                                # %land.lhs.true.20.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leal	-16(%r8), %ebp
	xorl	%r13d, %r13d
	cmpl	%edi, %ebp
	jle	.LBB32_28
# BB#29:                                # %for.cond.26.preheader.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movslq	%esi, %rdi
	movq	%r11, %rbx
	movq	%r10, %rdx
	.align	16, 0x90
.LBB32_30:                              # %for.cond.26.i.i.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_11 Depth=2
                                        #       Parent Loop BB32_14 Depth=3
                                        #         Parent Loop BB32_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rdx, %rcx
	leaq	-1(%rcx), %rdx
	cmpq	%rdi, %rdx
	jle	.LBB32_71
# BB#31:                                # %land.rhs.i.i.i
                                        #   in Loop: Header=BB32_30 Depth=5
	movzbl	(%rbx), %eax
	decq	%rbx
	cmpl	%eax, %ebp
	jle	.LBB32_30
# BB#32:                                # %land.rhs.i.i.i.for.end.i.i.i_crit_edge
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-1(%rcx), %rdi
	movb	$1, %bl
	jmp	.LBB32_33
.LBB32_26:                              #   in Loop: Header=BB32_16 Depth=4
	movl	%esi, %r12d
	.align	16, 0x90
.LBB32_19:                              # %if.then.64.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	cmpl	%edi, %ebx
	jle	.LBB32_39
# BB#20:                                # %if.then.67.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leal	(%r10,%rdx), %esi
	testl	%r13d, %r13d
	cmovnel	%r12d, %esi
	xorl	%r15d, %r15d
	movl	$1, %r13d
	movl	%edi, %ebx
	movl	%r8d, %edi
	jmp	.LBB32_58
.LBB32_39:                              # %if.else.72.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	jne	.LBB32_42
# BB#40:                                # %land.lhs.true.75.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-10(%r10), %rax
	movslq	%r12d, %rcx
	cmpq	%rax, %rcx
	jge	.LBB32_42
# BB#41:                                #   in Loop: Header=BB32_16 Depth=4
	leal	-10(%r10), %esi
	xorl	%r15d, %r15d
	movl	%r8d, %edi
	jmp	.LBB32_58
.LBB32_42:                              # %if.else.81.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	je	.LBB32_43
# BB#44:                                # %land.lhs.true.83.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	leal	16(%rbx), %esi
	cmpl	%edi, %esi
	jge	.LBB32_45
# BB#46:                                # %for.cond.89.preheader.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movslq	%r12d, %rdi
	movq	%r11, %rbp
	movq	%r10, %rcx
	movq	-8(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB32_47:                              # %for.cond.89.i.i.i
                                        #   Parent Loop BB32_4 Depth=1
                                        #     Parent Loop BB32_11 Depth=2
                                        #       Parent Loop BB32_14 Depth=3
                                        #         Parent Loop BB32_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rcx
	cmpq	%rdi, %rcx
	jle	.LBB32_72
# BB#48:                                # %land.rhs.92.i.i.i
                                        #   in Loop: Header=BB32_47 Depth=5
	movzbl	(%rbp), %eax
	decq	%rbp
	cmpl	%eax, %esi
	jge	.LBB32_47
# BB#49:                                # %land.rhs.92.i.i.i.for.end.106.i.i.i_crit_edge
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-1(%rdx), %rsi
	movb	$1, %dil
	jmp	.LBB32_50
	.align	16, 0x90
.LBB32_45:                              #   in Loop: Header=BB32_16 Depth=4
	movl	%r12d, %esi
	movl	%r8d, %edi
	jmp	.LBB32_58
.LBB32_28:                              #   in Loop: Header=BB32_16 Depth=4
	movl	%r8d, %edi
	jmp	.LBB32_58
.LBB32_43:                              #   in Loop: Header=BB32_16 Depth=4
	movl	%r12d, %esi
	movl	%r8d, %edi
	jmp	.LBB32_57
.LBB32_71:                              # %for.end.i.i.isplit
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-1(%rcx), %rdi
	xorl	%ebx, %ebx
.LBB32_33:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	cmpl	-28(%rsp), %r10d        # 4-byte Folded Reload
	jae	.LBB32_36
# BB#34:                                # %for.end.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	cmpl	$2, %ecx
	jl	.LBB32_36
# BB#35:                                # %if.then.43.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movl	%r10d, %eax
	subl	%edi, %eax
	cltq
	addq	%rax, -24(%rsp)         # 8-byte Folded Spill
.LBB32_36:                              # %if.end.46.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	incq	-8(%rsp)                # 8-byte Folded Spill
	leal	3(%rsi), %eax
	cmpl	%eax, %edi
	setg	%al
	andb	%bl, %al
	xorl	%r13d, %r13d
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB32_37
# BB#38:                                # %if.then.53.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	subl	%esi, %edi
	movslq	%edi, %rax
	addq	%rax, -16(%rsp)         # 8-byte Folded Spill
.LBB32_37:                              #   in Loop: Header=BB32_16 Depth=4
	movl	%r10d, %esi
	movl	%r8d, %ebx
	movl	%r8d, %edi
	xorl	%r15d, %r15d
	jmp	.LBB32_58
.LBB32_72:                              # %for.end.106.i.i.isplit
                                        #   in Loop: Header=BB32_16 Depth=4
	leaq	-1(%rdx), %rsi
	xorl	%edi, %edi
.LBB32_50:                              # %for.end.106.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	cmpl	-28(%rsp), %r10d        # 4-byte Folded Reload
	jae	.LBB32_53
# BB#51:                                # %for.end.106.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	cmpl	$2, %edx
	jl	.LBB32_53
# BB#52:                                # %if.then.114.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movl	%r10d, %eax
	subl	%esi, %eax
	cltq
	addq	%rax, -40(%rsp)         # 8-byte Folded Spill
.LBB32_53:                              # %if.end.118.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	incq	%r8
	leal	3(%r12), %eax
	cmpl	%eax, %esi
	setg	%al
	andb	%dil, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB32_54
# BB#55:                                # %if.then.126.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movq	%r8, -8(%rsp)           # 8-byte Spill
	subl	%r12d, %esi
	movslq	%esi, %rax
	addq	%rax, -16(%rsp)         # 8-byte Folded Spill
	jmp	.LBB32_56
.LBB32_54:                              #   in Loop: Header=BB32_16 Depth=4
	movq	%r8, -8(%rsp)           # 8-byte Spill
.LBB32_56:                              # %for.inc.136.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	movl	%r10d, %esi
	movl	%ebx, %edi
	.align	16, 0x90
.LBB32_57:                              # %for.inc.136.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	xorl	%r13d, %r13d
.LBB32_58:                              # %for.inc.136.i.i.i
                                        #   in Loop: Header=BB32_16 Depth=4
	incq	%r10
	incq	%r11
	cmpl	%r14d, %r10d
	movl	%edi, %r8d
	jne	.LBB32_16
# BB#59:                                # %for.end.138.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movq	-8(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	-48(%rsp), %ebp         # 4-byte Reload
	movl	-44(%rsp), %esi         # 4-byte Reload
	movq	-16(%rsp), %rdi         # 8-byte Reload
	movq	-24(%rsp), %rbx         # 8-byte Reload
	je	.LBB32_67
# BB#60:                                # %for.end.138.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	cmpq	-64(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB32_67
# BB#61:                                # %if.else.150.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	-40(%rsp), %rcx         # 8-byte Reload
	addq	160(%rax), %rcx
	movq	%rcx, 160(%rax)
	addq	152(%rax), %rbx
	movq	%rbx, 152(%rax)
	addq	168(%rax), %rdi
	movq	%rdi, 168(%rax)
	cmpq	%rbx, %rcx
	cmovbl	%ecx, %ebx
	cmpq	$10000, %rdi            # imm = 0x2710
	jb	.LBB32_64
# BB#62:                                # %land.lhs.true.167.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movslq	%ebx, %rax
	imulq	$715827883, %rax, %rax  # imm = 0x2AAAAAAB
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	cltq
	cmpq	%rax, %rdi
	jbe	.LBB32_64
# BB#63:                                # %if.then.173.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	$1, 108(%rax)
	jmp	.LBB32_67
.LBB32_64:                              # %if.else.174.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	cmpl	$100000, %ebx           # imm = 0x186A0
	jl	.LBB32_67
# BB#65:                                # %land.lhs.true.177.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movslq	%ebx, %rax
	imulq	$1759218605, %rax, %rax # imm = 0x68DB8BAD
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$43, %rax
	addl	%ecx, %eax
	cltq
	cmpq	%rdi, %rax
	jb	.LBB32_67
# BB#66:                                # %if.then.183.i.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	$2, 108(%rax)
	.align	16, 0x90
.LBB32_67:                              # %s_compr_chooser__estimate_row.exit.i.i
                                        #   in Loop: Header=BB32_14 Depth=3
	incl	%esi
	addq	%r14, %r9
	cmpl	%ebp, %esi
	jne	.LBB32_14
.LBB32_68:                              # %s_compr_chooser__recognize.exit.i
                                        #   in Loop: Header=BB32_11 Depth=2
	movq	-56(%rsp), %rdi         # 8-byte Reload
	movups	%xmm0, 128(%rdi)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB32_11:                              # %while.cond.14.backedge.i
                                        #   Parent Loop BB32_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_14 Depth 3
                                        #         Child Loop BB32_16 Depth 4
                                        #           Child Loop BB32_30 Depth 5
                                        #           Child Loop BB32_47 Depth 5
	movl	124(%rdi), %r8d
	cmpl	%r8d, %ecx
	jae	.LBB32_9
# BB#3:                                 # %while.cond.loopexit.i
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	-76(%rsp), %r10d        # 4-byte Reload
	testl	%r10d, %r10d
	movq	-72(%rsp), %r9          # 8-byte Reload
	jne	.LBB32_4
# BB#69:                                # %if.end.loopexit
	movq	-88(%rsp), %rsi         # 8-byte Reload
	movq	(%rsi), %r9
	movq	-96(%rsp), %rax         # 8-byte Reload
.LBB32_70:                              # %if.end
	cltq
	addq	%r9, %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	s_compr_chooser_process, .Lfunc_end32-s_compr_chooser_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_compr_chooser_release,@function
s_compr_chooser_release:                # @s_compr_chooser_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	144(%rdi), %rsi
	movq	24(%rax), %rcx
	movl	$.L.str.12, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end33:
	.size	s_compr_chooser_release, .Lfunc_end33-s_compr_chooser_release
	.cfi_endproc

	.globl	s_compr_chooser__get_choice
	.align	16, 0x90
	.type	s_compr_chooser__get_choice,@function
s_compr_chooser__get_choice:            # @s_compr_chooser__get_choice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rax
	movq	152(%rdi), %rcx
	cmpq	%rcx, %rax
	cmovbq	%rax, %rcx
	movl	108(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB34_5
# BB#1:                                 # %if.end
	testl	%esi, %esi
	je	.LBB34_4
# BB#2:                                 # %if.then.5
	movq	168(%rdi), %rsi
	movabsq	$-6148914691236517205, %rdx # imm = 0xAAAAAAAAAAAAAAAB
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movl	$1, %eax
	cmpq	%rdx, %rsi
	ja	.LBB34_5
# BB#3:                                 # %if.else
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$10, %rdx
	movl	$2, %eax
	cmpq	%rsi, %rdx
	jae	.LBB34_5
.LBB34_4:                               # %if.end.14
	xorl	%eax, %eax
.LBB34_5:                               # %cleanup
	retq
.Lfunc_end34:
	.size	s_compr_chooser__get_choice, .Lfunc_end34-s_compr_chooser__get_choice
	.cfi_endproc

	.globl	s_image_colors_set_mask_colors
	.align	16, 0x90
	.type	s_image_colors_set_mask_colors,@function
s_image_colors_set_mask_colors:         # @s_image_colors_set_mask_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$s_image_colors_convert_color_to_mask, 1744(%rdi)
	movl	116(%rdi), %edx
	addq	$692, %rdi              # imm = 0x2B4
	shlq	$3, %rdx
	jmp	memcpy                  # TAILCALL
.Lfunc_end35:
	.size	s_image_colors_set_mask_colors, .Lfunc_end35-s_image_colors_set_mask_colors
	.cfi_endproc

	.align	16, 0x90
	.type	s_image_colors_convert_color_to_mask,@function
s_image_colors_convert_color_to_mask:   # @s_image_colors_convert_color_to_mask
	.cfi_startproc
# BB#0:                                 # %entry
	movl	116(%rdi), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB36_5
# BB#1:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB36_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	180(%rdi,%rcx,4), %edx
	cmpl	692(%rdi,%rcx,8), %edx
	jb	.LBB36_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB36_2 Depth=1
	cmpl	696(%rdi,%rcx,8), %edx
	ja	.LBB36_5
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB36_2 Depth=1
	incq	%rcx
	cmpl	%eax, %ecx
	jb	.LBB36_2
.LBB36_5:                               # %for.end
	cmpl	%eax, %ecx
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 436(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end36:
	.size	s_image_colors_convert_color_to_mask, .Lfunc_end36-s_image_colors_convert_color_to_mask
	.cfi_endproc

	.globl	s_image_colors_set_dimensions
	.align	16, 0x90
	.type	s_image_colors_set_dimensions,@function
s_image_colors_set_dimensions:          # @s_image_colors_set_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 108(%rdi)
	movl	%edx, 112(%rdi)
	movl	%ecx, 116(%rdi)
	movl	%r8d, 120(%rdi)
	imull	%esi, %ecx
	imull	%r8d, %ecx
	movl	%ecx, 152(%rdi)
	addl	$63, %ecx
	shrl	$3, %ecx
	andl	$536870904, %ecx        # imm = 0x1FFFFFF8
	movl	%ecx, 148(%rdi)
	movl	$0, 160(%rdi)
	retq
.Lfunc_end37:
	.size	s_image_colors_set_dimensions, .Lfunc_end37-s_image_colors_set_dimensions
	.cfi_endproc

	.globl	s_image_colors_set_color_space
	.align	16, 0x90
	.type	s_image_colors_set_color_space,@function
s_image_colors_set_color_space:         # @s_image_colors_set_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rsi), %eax
	movl	%eax, 140(%rdi)
	movl	%eax, 136(%rdi)
	movzbl	204(%rsi), %eax
	movl	%eax, 144(%rdi)
	movq	$s_image_colors_convert_to_device_color, 1744(%rdi)
	movq	%rsi, 1728(%rdi)
	movq	%rdx, 1720(%rdi)
	movq	%rcx, 1736(%rdi)
	movl	116(%rdi), %edx
	addq	$1204, %rdi             # imm = 0x4B4
	shlq	$3, %rdx
	movq	%r8, %rsi
	jmp	memcpy                  # TAILCALL
.Lfunc_end38:
	.size	s_image_colors_set_color_space, .Lfunc_end38-s_image_colors_set_color_space
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	s_image_colors_convert_to_device_color,@function
s_image_colors_convert_to_device_color: # @s_image_colors_convert_to_device_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 24
	subq	$920, %rsp              # imm = 0x398
.Ltmp134:
	.cfi_def_cfa_offset 944
.Ltmp135:
	.cfi_offset %rbx, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movb	120(%rbx), %cl
	movl	$1, %ebp
	movl	$1, %edx
	shll	%cl, %edx
	movb	144(%rbx), %cl
	shll	%cl, %ebp
	movl	116(%rbx), %eax
	testl	%eax, %eax
	je	.LBB39_3
# BB#1:                                 # %for.body.preheader
	decl	%edx
	cvtsi2sdl	%edx, %xmm0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB39_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	180(%rbx,%rdx,2), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rsi, %xmm1
	leal	1(%rdx), %esi
	movslq	%esi, %rsi
	movss	1204(%rbx,%rsi,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	movslq	%edx, %rsi
	movss	1204(%rbx,%rsi,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 664(%rsp,%rdx,2)
	addq	$2, %rdx
	incl	%ecx
	cmpl	%eax, %ecx
	jb	.LBB39_2
.LBB39_3:                               # %for.end
	movq	1720(%rbx), %rsi
	movq	1728(%rbx), %r8
	movq	(%rsi), %rax
	movq	1736(%rbx), %rcx
	leaq	656(%rsp), %rdi
	leaq	(%rsp), %rdx
	xorl	%r9d, %r9d
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB39_7
# BB#4:                                 # %for.cond.27.preheader
	cmpl	$0, 140(%rbx)
	movl	$0, %eax
	je	.LBB39_7
# BB#5:                                 # %for.body.30.lr.ph
	decl	%ebp
	cvtsi2sdl	%ebp, %xmm0
	movq	8(%rsp), %r8
	xorl	%eax, %eax
	movsd	.LCPI39_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB39_6:                               # %for.body.30
                                        # =>This Inner Loop Header: Depth=1
	movq	1728(%rbx), %rcx
	movb	140(%rcx,%rdi), %dl
	movb	204(%rcx,%rdi), %cl
	movl	$1, %ebp
	shll	%cl, %ebp
	decl	%ebp
	movq	%r8, %rsi
	movb	%dl, %cl
	shrq	%cl, %rsi
	andl	%ebp, %esi
	cvtsi2sdq	%rsi, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsi2sdq	%rbp, %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rcx
	movl	%ecx, 436(%rbx,%rdi,4)
	incq	%rdi
	cmpl	140(%rbx), %edi
	jb	.LBB39_6
.LBB39_7:                               # %cleanup
	addq	$920, %rsp              # imm = 0x398
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end39:
	.size	s_image_colors_convert_to_device_color, .Lfunc_end39-s_image_colors_convert_to_device_color
	.cfi_endproc

	.globl	s_new_image_colors_set_color_space
	.align	16, 0x90
	.type	s_new_image_colors_set_color_space,@function
s_new_image_colors_set_color_space:     # @s_new_image_colors_set_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rsi), %eax
	movl	%eax, 140(%rdi)
	movl	%eax, 136(%rdi)
	movzbl	204(%rsi), %eax
	movl	%eax, 144(%rdi)
	movq	$s_image_colors_convert_to_device_color, 1744(%rdi)
	movq	%rsi, 1728(%rdi)
	movq	%rdx, 1720(%rdi)
	movq	%rcx, 1736(%rdi)
	movl	116(%rdi), %edx
	addq	$1204, %rdi             # imm = 0x4B4
	shlq	$3, %rdx
	movq	%r8, %rsi
	jmp	memcpy                  # TAILCALL
.Lfunc_end40:
	.size	s_new_image_colors_set_color_space, .Lfunc_end40-s_new_image_colors_set_color_space
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	s_image_colors_init,@function
s_image_colors_init:                    # @s_image_colors_init
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 108(%rdi)
	movb	$0, 124(%rdi)
	movaps	.LCPI41_0(%rip), %xmm1  # xmm1 = [0,0,1,1]
	movups	%xmm1, 128(%rdi)
	movl	$1, %eax
	movd	%eax, %xmm1
	movups	%xmm1, 144(%rdi)
	movl	$0, 160(%rdi)
	movl	$0, 164(%rdi)
	movl	$0, 168(%rdi)
	movl	$0, 172(%rdi)
	movl	$0, 176(%rdi)
	movq	$0, 1744(%rdi)
	movups	%xmm0, 1720(%rdi)
	movq	$0, 1736(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end41:
	.size	s_image_colors_init, .Lfunc_end41-s_image_colors_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_image_colors_process,@function
s_image_colors_process:                 # @s_image_colors_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 32
.Ltmp140:
	.cfi_offset %rbx, -32
.Ltmp141:
	.cfi_offset %r14, -24
.Ltmp142:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	jmp	.LBB42_1
.LBB42_20:                              # %for.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	116(%rbx), %eax
	imull	120(%rbx), %eax
	addl	%eax, 156(%rbx)
	.align	16, 0x90
.LBB42_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_5 Depth 2
                                        #     Child Loop BB42_14 Depth 2
	movq	8(%r15), %rdx
	movq	16(%r15), %rcx
	cmpq	%rcx, %rdx
	jae	.LBB42_2
# BB#4:                                 # %if.end.lr.ph
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	156(%rbx), %eax
	.align	16, 0x90
.LBB42_5:                               # %if.end
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	152(%rbx), %eax
	jb	.LBB42_9
# BB#6:                                 # %if.then.2
                                        #   in Loop: Header=BB42_5 Depth=2
	movl	160(%rbx), %eax
	movl	%eax, 164(%rbx)
	movl	$0, 176(%rbx)
	movl	$0, 172(%rbx)
	cmpl	$0, 128(%rbx)
	je	.LBB42_8
# BB#7:                                 # %if.then.3
                                        #   in Loop: Header=BB42_5 Depth=2
	movb	124(%rbx), %al
	leaq	1(%rdx), %rcx
	movq	%rcx, 8(%r15)
	movb	%al, 1(%rdx)
	movl	$0, 128(%rbx)
	movb	$0, 124(%rbx)
	movq	8(%r15), %rdx
	movq	16(%r15), %rcx
.LBB42_8:                               # %if.end.7
                                        #   in Loop: Header=BB42_5 Depth=2
	movl	$0, 156(%rbx)
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jb	.LBB42_5
	jmp	.LBB42_2
	.align	16, 0x90
.LBB42_9:                               # %if.end.9
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	164(%rbx), %eax
	testl	%eax, %eax
	je	.LBB42_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	(%r14), %r9
	movq	8(%r14), %r8
	movl	%r8d, %edi
	subl	%r9d, %edi
	cmpl	%eax, %edi
	cmoval	%eax, %edi
	movl	%edi, %esi
	addq	%r9, %rsi
	movq	%rsi, (%r14)
	subl	%edi, %eax
	movl	%eax, 164(%rbx)
	xorl	%eax, %eax
	cmpq	%r8, %rsi
	jae	.LBB42_3
.LBB42_11:                              # %if.end.29
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	136(%rbx), %esi
	cmpl	140(%rbx), %esi
	jae	.LBB42_21
# BB#12:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpq	%rcx, %rdx
	jae	.LBB42_2
# BB#13:                                # %if.end.45.preheader
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	128(%rbx), %r9d
	.align	16, 0x90
.LBB42_14:                              # %if.end.45
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %eax
	subl	%r9d, %eax
	movl	%esi, %ecx
	movl	436(%rbx,%rcx,4), %edi
	movl	132(%rbx), %r10d
	movl	144(%rbx), %r8d
	movl	%r8d, %ecx
	subl	%r10d, %ecx
	movl	%edi, %esi
	shrl	%cl, %esi
	shll	%cl, %esi
	subl	%esi, %edi
	cmpl	%ecx, %eax
	movl	%eax, %esi
	cmoval	%ecx, %esi
	subl	%esi, %ecx
	shrl	%cl, %edi
	subl	%esi, %eax
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	124(%rbx), %eax
	orl	%edi, %eax
	movb	%al, 124(%rbx)
	leal	(%r9,%rsi), %r9d
	movl	%r9d, 128(%rbx)
	cmpl	$8, %r9d
	jb	.LBB42_16
# BB#15:                                # %if.then.66
                                        #   in Loop: Header=BB42_14 Depth=2
	leaq	1(%rdx), %rcx
	movq	%rcx, 8(%r15)
	movb	%al, 1(%rdx)
	movl	$0, 128(%rbx)
	movb	$0, 124(%rbx)
	movl	132(%rbx), %r10d
	movl	144(%rbx), %r8d
	xorl	%r9d, %r9d
.LBB42_16:                              # %if.end.72
                                        #   in Loop: Header=BB42_14 Depth=2
	addl	%esi, %r10d
	movl	%r10d, 132(%rbx)
	movl	136(%rbx), %esi
	cmpl	%r8d, %r10d
	jb	.LBB42_17
# BB#19:                                # %if.then.79
                                        #   in Loop: Header=BB42_14 Depth=2
	incl	%esi
	movl	%esi, 136(%rbx)
	movl	$0, 132(%rbx)
.LBB42_17:                              # %for.cond.33.backedge
                                        #   in Loop: Header=BB42_14 Depth=2
	cmpl	140(%rbx), %esi
	jae	.LBB42_20
# BB#18:                                # %for.cond.33.backedge.for.body_crit_edge
                                        #   in Loop: Header=BB42_14 Depth=2
	movq	8(%r15), %rdx
	cmpq	16(%r15), %rdx
	jb	.LBB42_14
	jmp	.LBB42_2
.LBB42_21:                              # %if.end.93
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	120(%rbx), %edx
	movl	176(%rbx), %ecx
	cmpl	%edx, %ecx
	jae	.LBB42_24
# BB#22:                                # %if.then.98
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	(%r14), %rsi
	xorl	%eax, %eax
	cmpq	8(%r14), %rsi
	jae	.LBB42_3
# BB#23:                                # %if.end.104
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	172(%rbx), %eax
	shll	$8, %eax
	leaq	1(%rsi), %rdi
	movq	%rdi, (%r14)
	movzbl	1(%rsi), %esi
	orl	%eax, %esi
	movl	%esi, 172(%rbx)
	addl	$8, %ecx
	movl	%ecx, 176(%rbx)
.LBB42_24:                              # %if.end.114
                                        #   in Loop: Header=BB42_1 Depth=1
	subl	%edx, %ecx
	jb	.LBB42_1
# BB#25:                                # %if.then.119
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	%ecx, 176(%rbx)
	movl	168(%rbx), %eax
	movl	172(%rbx), %edx
	shrl	%cl, %edx
	movl	%edx, 180(%rbx,%rax,4)
	movb	176(%rbx), %cl
	shll	%cl, %edx
	notl	%edx
	andl	%edx, 172(%rbx)
	movl	168(%rbx), %eax
	incl	%eax
	movl	%eax, 168(%rbx)
	cmpl	116(%rbx), %eax
	jb	.LBB42_1
# BB#26:                                # %if.then.138
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	%rbx, %rdi
	callq	*1744(%rbx)
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB42_3
# BB#27:                                # %cleanup.145.thread
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	$0, 136(%rbx)
	movl	$0, 168(%rbx)
	jmp	.LBB42_1
.LBB42_2:
	movl	$1, %eax
.LBB42_3:                               # %cleanup.153
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end42:
	.size	s_image_colors_process, .Lfunc_end42-s_image_colors_process
	.cfi_endproc

	.type	st_1248_state,@object   # @st_1248_state
	.section	.rodata,"a",@progbits
	.align	8
st_1248_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_1248_state, 64

	.type	s_1_8_template,@object  # @s_1_8_template
	.globl	s_1_8_template
	.align	8
s_1_8_template:
	.quad	st_1248_state
	.quad	s_1_init
	.quad	s_N_8_process
	.long	1                       # 0x1
	.long	8                       # 0x8
	.quad	0
	.quad	0
	.quad	0
	.size	s_1_8_template, 56

	.type	s_2_8_template,@object  # @s_2_8_template
	.globl	s_2_8_template
	.align	8
s_2_8_template:
	.quad	st_1248_state
	.quad	s_2_init
	.quad	s_N_8_process
	.long	1                       # 0x1
	.long	4                       # 0x4
	.quad	0
	.quad	0
	.quad	0
	.size	s_2_8_template, 56

	.type	s_4_8_template,@object  # @s_4_8_template
	.globl	s_4_8_template
	.align	8
s_4_8_template:
	.quad	st_1248_state
	.quad	s_4_init
	.quad	s_N_8_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_4_8_template, 56

	.type	s_12_8_template,@object # @s_12_8_template
	.globl	s_12_8_template
	.align	8
s_12_8_template:
	.quad	st_1248_state
	.quad	s_12_init
	.quad	s_12_8_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_12_8_template, 56

	.type	s_16_8_template,@object # @s_16_8_template
	.globl	s_16_8_template
	.align	8
s_16_8_template:
	.quad	st_1248_state
	.quad	s_16_init
	.quad	s_16_8_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_16_8_template, 56

	.type	s_8_1_template,@object  # @s_8_1_template
	.globl	s_8_1_template
	.align	8
s_8_1_template:
	.quad	st_1248_state
	.quad	s_1_init
	.quad	s_8_N_process
	.long	8                       # 0x8
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_8_1_template, 56

	.type	s_8_2_template,@object  # @s_8_2_template
	.globl	s_8_2_template
	.align	8
s_8_2_template:
	.quad	st_1248_state
	.quad	s_2_init
	.quad	s_8_N_process
	.long	4                       # 0x4
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_8_2_template, 56

	.type	s_8_4_template,@object  # @s_8_4_template
	.globl	s_8_4_template
	.align	8
s_8_4_template:
	.quad	st_1248_state
	.quad	s_4_init
	.quad	s_8_N_process
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_8_4_template, 56

	.type	st_C2R_state,@object    # @st_C2R_state
	.align	8
st_C2R_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	c2r_reloc_ptrs
	.size	st_C2R_state, 64

	.type	s_C2R_template,@object  # @s_C2R_template
	.globl	s_C2R_template
	.align	8
s_C2R_template:
	.quad	st_C2R_state
	.quad	0
	.quad	s_C2R_process
	.long	4                       # 0x4
	.long	3                       # 0x3
	.quad	0
	.quad	s_C2R_set_defaults
	.quad	0
	.size	s_C2R_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stream_IE_state"
	.size	.L.str, 16

	.type	st_IE_state,@object     # @st_IE_state
	.section	.rodata,"a",@progbits
	.globl	st_IE_state
	.align	8
st_IE_state:
	.long	1784                    # 0x6f8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	ie_state_enum_ptrs
	.quad	ie_state_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_IE_state, 64

	.type	s_IE_template,@object   # @s_IE_template
	.globl	s_IE_template
	.align	8
s_IE_template:
	.quad	st_IE_state
	.quad	s_IE_init
	.quad	s_IE_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_IE_set_defaults
	.quad	0
	.size	s_IE_template, 56

	.type	st_Subsample_state,@object # @st_Subsample_state
	.align	8
st_Subsample_state:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_Subsample_state, 64

	.type	s_Subsample_template,@object # @s_Subsample_template
	.globl	s_Subsample_template
	.align	8
s_Subsample_template:
	.quad	st_Subsample_state
	.quad	s_Subsample_init
	.quad	s_Subsample_process
	.long	4                       # 0x4
	.long	4                       # 0x4
	.quad	0
	.quad	s_Downsample_set_defaults
	.quad	0
	.size	s_Subsample_template, 56

	.type	st_Average_state,@object # @st_Average_state
	.align	8
st_Average_state:
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	avg_reloc_ptrs
	.size	st_Average_state, 64

	.type	s_Average_template,@object # @s_Average_template
	.globl	s_Average_template
	.align	8
s_Average_template:
	.quad	st_Average_state
	.quad	s_Average_init
	.quad	s_Average_process
	.long	4                       # 0x4
	.long	4                       # 0x4
	.quad	s_Average_release
	.quad	s_Average_set_defaults
	.quad	0
	.size	s_Average_template, 56

	.type	st_Bicubic_state,@object # @st_Bicubic_state
	.align	8
st_Bicubic_state:
	.long	184                     # 0xb8
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bcb_reloc_ptrs
	.size	st_Bicubic_state, 64

	.type	s_Bicubic_template,@object # @s_Bicubic_template
	.globl	s_Bicubic_template
	.align	8
s_Bicubic_template:
	.quad	st_Bicubic_state
	.quad	s_Bicubic_init
	.quad	s_Bicubic_process
	.long	4                       # 0x4
	.long	4                       # 0x4
	.quad	s_Bicubic_release
	.quad	s_Bicubic_set_defaults
	.quad	0
	.size	s_Bicubic_template, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s_compr_chooser_set_dimensions"
	.size	.L.str.1, 31

	.type	st_compr_chooser_state,@object # @st_compr_chooser_state
	.section	.rodata,"a",@progbits
	.align	8
st_compr_chooser_state:
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	compr_chooser_reloc_ptrs
	.size	st_compr_chooser_state, 64

	.type	s_compr_chooser_template,@object # @s_compr_chooser_template
	.globl	s_compr_chooser_template
	.align	8
s_compr_chooser_template:
	.quad	st_compr_chooser_state
	.quad	s_compr_chooser_init
	.quad	s_compr_chooser_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_compr_chooser_release
	.quad	0
	.quad	0
	.size	s_compr_chooser_template, 56

	.type	st_stream_image_colors_state,@object # @st_stream_image_colors_state
	.align	8
st_stream_image_colors_state:
	.long	1752                    # 0x6d8
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	stream_image_colors_reloc_ptrs
	.size	st_stream_image_colors_state, 64

	.type	s__image_colors_template,@object # @s__image_colors_template
	.globl	s__image_colors_template
	.align	8
s__image_colors_template:
	.quad	st_stream_image_colors_state
	.quad	s_image_colors_init
	.quad	s_image_colors_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s__image_colors_template, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"stream_1248_state"
	.size	.L.str.2, 18

	.type	s_N_8_process.b2,@object # @s_N_8_process.b2
	.section	.rodata.cst4,"aM",@progbits,4
s_N_8_process.b2:
	.ascii	"\000U\252\377"
	.size	s_N_8_process.b2, 4

	.type	s_N_8_process.b4,@object # @s_N_8_process.b4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
s_N_8_process.b4:
	.ascii	"\000\021\"3DUfw\210\231\252\273\314\335\356\377"
	.size	s_N_8_process.b4, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"stream_C2R_state"
	.size	.L.str.3, 17

	.type	c2r_reloc_ptrs,@object  # @c2r_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
c2r_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	c2r_enum_ptrs
	.size	c2r_reloc_ptrs, 24

	.type	c2r_enum_ptrs,@object   # @c2r_enum_ptrs
	.align	2
c2r_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.size	c2r_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"stream_Subsample_state"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Subsample filter does not support non-integer downsample factor (%f)\n"
	.size	.L.str.5, 70

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stream_Average_state"
	.size	.L.str.6, 21

	.type	avg_reloc_ptrs,@object  # @avg_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
avg_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	avg_enum_ptrs
	.size	avg_reloc_ptrs, 24

	.type	avg_enum_ptrs,@object   # @avg_enum_ptrs
	.align	2
avg_enum_ptrs:
	.short	0                       # 0x0
	.short	160                     # 0xa0
	.size	avg_enum_ptrs, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Average filter does not support non-integer downsample factor (%f)\n"
	.size	.L.str.7, 68

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Average sums"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stream_Bicubic_state"
	.size	.L.str.9, 21

	.type	bcb_reloc_ptrs,@object  # @bcb_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
bcb_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	bcb_enum_ptrs
	.size	bcb_reloc_ptrs, 24

	.type	bcb_enum_ptrs,@object   # @bcb_enum_ptrs
	.align	2
bcb_enum_ptrs:
	.short	0                       # 0x0
	.short	176                     # 0xb0
	.size	bcb_enum_ptrs, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Bicubic data"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stream_compr_chooser_state"
	.size	.L.str.11, 27

	.type	compr_chooser_reloc_ptrs,@object # @compr_chooser_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
compr_chooser_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	compr_chooser_enum_ptrs
	.size	compr_chooser_reloc_ptrs, 24

	.type	compr_chooser_enum_ptrs,@object # @compr_chooser_enum_ptrs
	.align	2
compr_chooser_enum_ptrs:
	.short	0                       # 0x0
	.short	144                     # 0x90
	.size	compr_chooser_enum_ptrs, 4

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"s_compr_chooser_release"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"stream_image_colors_state"
	.size	.L.str.13, 26

	.type	stream_image_colors_reloc_ptrs,@object # @stream_image_colors_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
stream_image_colors_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	stream_image_colors_enum_ptrs
	.size	stream_image_colors_reloc_ptrs, 24

	.type	stream_image_colors_enum_ptrs,@object # @stream_image_colors_enum_ptrs
	.align	2
stream_image_colors_enum_ptrs:
	.short	0                       # 0x0
	.short	1720                    # 0x6b8
	.short	0                       # 0x0
	.short	1728                    # 0x6c0
	.short	0                       # 0x0
	.short	1736                    # 0x6c8
	.size	stream_image_colors_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
