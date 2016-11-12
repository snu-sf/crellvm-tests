	.text
	.file	"igcstr.bc"
	.globl	gc_strings_set_marks
	.align	16, 0x90
	.type	gc_strings_set_marks,@function
gc_strings_set_marks:                   # @gc_strings_set_marks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_2
# BB#1:                                 # %do.end
	movl	136(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
	testl	%ebp, %ebp
	je	.LBB0_2
# BB#3:                                 # %if.then.2
	movq	144(%rbx), %rax
	leaq	8(%rax), %rdi
	movl	$-8, %esi
	subl	%eax, %esi
	addl	56(%rbx), %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gc_mark_string          # TAILCALL
.LBB0_2:                                # %if.end.6
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gc_strings_set_marks, .Lfunc_end0-gc_strings_set_marks
	.cfi_endproc

	.align	16, 0x90
	.type	gc_mark_string,@function
gc_mark_string:                         # @gc_mark_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 96
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	addq	$-8, %rdi
	movq	128(%rcx), %r8
	movq	144(%rcx), %r9
	movq	%rdi, %r13
	subq	%r9, %r13
	movq	%r13, %r12
	shrq	$3, %r12
	movl	%r12d, %eax
	andl	$536870908, %eax        # imm = 0x1FFFFFFC
	leaq	(%rax,%r8), %r14
	movl	%r13d, %ecx
	andl	$31, %ecx
	movl	$-1, %eax
	shll	%cl, %eax
	leal	8(%rsi), %ebx
	testl	%edx, %edx
	leal	8(%rcx,%rsi), %ecx
	je	.LBB1_18
# BB#1:                                 # %if.then
	cmpl	$32, %ecx
	jb	.LBB1_2
# BB#3:                                 # %if.then.7
	movl	(%r14), %ecx
	movl	%ecx, %edx
	notl	%edx
	andl	%eax, %edx
	orl	%eax, %ecx
	movl	%ecx, (%r14)
	orl	$-32, %r13d
	leal	(%rbx,%r13), %ebx
	addq	$4, %r14
	movl	$-1, %eax
	cmpl	$32, %ebx
	jb	.LBB1_16
# BB#4:                                 # %while.body.lr.ph
	leal	-24(%r13,%rsi), %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	shrl	$5, %r15d
	andl	$536870908, %r12d       # imm = 0x1FFFFFFC
	leaq	1(%r15), %rcx
	movq	%rcx, %rbp
	andq	$268435448, %rbp        # imm = 0xFFFFFF8
	xorl	%r10d, %r10d
	movq	%rcx, %r11
	andq	$268435448, %r11        # imm = 0xFFFFFF8
	leaq	(%r12,%r15,4), %r12
	movd	%edx, %xmm0
	je	.LBB1_5
# BB#6:                                 # %vector.body.preheader
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	shll	$5, %ebp
	leal	-24(%r13,%rsi), %edx
	shrl	$5, %edx
	incl	%edx
	andl	$268435448, %edx        # imm = 0xFFFFFF8
	addq	$-8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	xorl	%r12d, %r12d
	btq	$3, %rdx
	jb	.LBB1_7
# BB#8:                                 # %vector.body.prol
	movdqu	(%r14), %xmm2
	movdqu	16(%r14), %xmm1
	pcmpeqd	%xmm3, %xmm3
	pxor	%xmm3, %xmm2
	pxor	%xmm3, %xmm1
	por	%xmm2, %xmm0
	movdqu	%xmm3, (%r14)
	movdqu	%xmm3, 16(%r14)
	movl	$8, %r12d
	jmp	.LBB1_9
.LBB1_18:                               # %if.else
	cmpl	$32, %ecx
	jb	.LBB1_33
# BB#19:                                # %if.then.35
	notl	%eax
	andl	%eax, (%r14)
	movl	%r13d, %ebp
	orl	$-32, %ebp
	leal	(%rbp,%rbx), %r15d
	addq	$4, %r14
	cmpl	$159, %r15d
	jbe	.LBB1_20
# BB#36:                                # %if.then.43
	movl	%r15d, %edx
	shrl	$3, %edx
	andl	$536870908, %edx        # imm = 0x1FFFFFFC
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	shrl	$5, %r15d
	leaq	(%r14,%r15,4), %r14
	leal	(%rbx,%r13), %ebx
	andl	$31, %ebx
	movl	$-1, %eax
	jmp	.LBB1_33
.LBB1_2:
	xorl	%edx, %edx
	jmp	.LBB1_16
.LBB1_20:                               # %while.cond.52.preheader
	movl	$-1, %eax
	cmpl	$32, %r15d
	jb	.LBB1_21
# BB#22:                                # %while.body.55.lr.ph
	leal	-24(%rbp,%rsi), %ebx
	movl	%ebx, %r11d
	shrl	$5, %r11d
	andl	$536870908, %r12d       # imm = 0x1FFFFFFC
	leaq	1(%r11), %r13
	movq	%r13, %r10
	andq	$268435448, %r10        # imm = 0xFFFFFF8
	xorl	%edx, %edx
	movq	%r13, %rcx
	andq	$268435448, %rcx        # imm = 0xFFFFFF8
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	(%r12,%r11,4), %rcx
	je	.LBB1_30
# BB#23:                                # %vector.body93.preheader
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	%r11, 16(%rsp)          # 8-byte Spill
	shll	$5, %r10d
	leal	-24(%rbp,%rsi), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movl	%ecx, %edx
	shrl	$3, %edx
	incl	%edx
	xorl	%r12d, %r12d
	testb	$3, %dl
	je	.LBB1_26
# BB#24:                                # %vector.body93.prol.preheader
	movl	%edi, %edx
	subl	%r9d, %edx
	shrl	$3, %edx
	andl	$536870908, %edx        # imm = 0x1FFFFFFC
	leaq	20(%rdx,%r8), %r11
	leal	-24(%rbp,%rsi), %r13d
	shrl	$5, %r13d
	incl	%r13d
	andl	$24, %r13d
	addl	$-8, %r13d
	shrl	$3, %r13d
	incl	%r13d
	andl	$3, %r13d
	negq	%r13
	xorl	%r12d, %r12d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_25:                               # %vector.body93.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -16(%r11,%r12,4)
	movdqu	%xmm0, (%r11,%r12,4)
	addq	$8, %r12
	incq	%r13
	jne	.LBB1_25
.LBB1_26:                               # %vector.body93.preheader.split
	subl	%r10d, %r15d
	movq	32(%rsp), %r10          # 8-byte Reload
	leaq	(%r14,%r10,4), %r14
	cmpq	$24, %rcx
	movq	16(%rsp), %r11          # 8-byte Reload
	movq	8(%rsp), %r13           # 8-byte Reload
	jb	.LBB1_29
# BB#27:                                # %vector.body93.preheader.split.split
	leal	-24(%rbp,%rsi), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	subq	%r12, %rcx
	subl	%r9d, %edi
	shrl	$3, %edi
	andl	$536870908, %edi        # imm = 0x1FFFFFFC
	leaq	(%rdi,%r12,4), %rdx
	leaq	116(%r8,%rdx), %rdx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_28:                               # %vector.body93
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, (%rdx)
	subq	$-128, %rdx
	addq	$-32, %rcx
	jne	.LBB1_28
.LBB1_29:
	movq	%r10, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB1_30:                               # %middle.block94
	shll	$5, %r11d
	leaq	8(%r8,%rcx), %rcx
	cmpq	%rdx, %r13
	je	.LBB1_32
	.align	16, 0x90
.LBB1_31:                               # %while.body.55
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%r14)
	addl	$-32, %r15d
	addq	$4, %r14
	cmpl	$31, %r15d
	ja	.LBB1_31
.LBB1_32:                               # %while.cond.52.if.end.60.loopexit_crit_edge
	subl	%r11d, %ebx
	movq	%rcx, %r14
	jmp	.LBB1_33
.LBB1_5:
	pxor	%xmm1, %xmm1
	movq	%r14, %rbp
	movl	32(%rsp), %esi          # 4-byte Reload
	jmp	.LBB1_13
.LBB1_7:
	pxor	%xmm1, %xmm1
.LBB1_9:                                # %vector.body.preheader.split
	subl	%ebp, %ebx
	leaq	(%r14,%r11,4), %rbp
	testq	%rcx, %rcx
	je	.LBB1_12
# BB#10:                                # %vector.body.preheader.split.split
	leal	-24(%r13,%rsi), %edx
	shrl	$5, %edx
	incl	%edx
	andl	$268435448, %edx        # imm = 0xFFFFFF8
	subq	%r12, %rdx
	subl	%r9d, %edi
	shrl	$3, %edi
	andl	$536870908, %edi        # imm = 0x1FFFFFFC
	leaq	(%rdi,%r12,4), %rcx
	leaq	52(%r8,%rcx), %rsi
	pcmpeqd	%xmm2, %xmm2
	.align	16, 0x90
.LBB1_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm3
	movdqu	-32(%rsi), %xmm4
	pxor	%xmm2, %xmm3
	pxor	%xmm2, %xmm4
	por	%xmm0, %xmm3
	por	%xmm1, %xmm4
	movdqu	%xmm2, -48(%rsi)
	movdqu	%xmm2, -32(%rsi)
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	por	%xmm3, %xmm0
	por	%xmm4, %xmm1
	movdqu	%xmm2, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$64, %rsi
	addq	$-16, %rdx
	jne	.LBB1_11
.LBB1_12:
	movq	%r11, %r10
	movl	32(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
.LBB1_13:                               # %middle.block
	shll	$5, %r15d
	leaq	8(%r8,%r12), %r14
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %edx
	cmpq	%r10, %rcx
	je	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %ecx
	notl	%ecx
	orl	%ecx, %edx
	movl	$-1, (%rbp)
	addl	$-32, %ebx
	addq	$4, %rbp
	cmpl	$31, %ebx
	ja	.LBB1_14
.LBB1_15:                               # %while.cond.if.end.loopexit_crit_edge
	subl	%r15d, %esi
	movl	%esi, %ebx
.LBB1_16:                               # %if.end
	testl	%ebx, %ebx
	je	.LBB1_35
# BB#17:                                # %do.end.21
	movl	%eax, %esi
	movb	%bl, %cl
	shll	%cl, %esi
	subl	%esi, %eax
	movl	(%r14), %ecx
	movl	%ecx, %esi
	notl	%esi
	andl	%eax, %esi
	orl	%esi, %edx
	orl	%ecx, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_35
.LBB1_21:
	movl	%r15d, %ebx
.LBB1_33:                               # %if.end.60
	xorl	%edx, %edx
	testl	%ebx, %ebx
	je	.LBB1_35
# BB#34:                                # %do.end.65
	movl	%eax, %esi
	movb	%bl, %cl
	shll	%cl, %esi
	subl	%esi, %eax
	notl	%eax
	andl	%eax, (%r14)
.LBB1_35:                               # %if.end.74
	testl	%edx, %edx
	setne	%al
	movzbl	%al, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gc_mark_string, .Lfunc_end1-gc_mark_string
	.cfi_endproc

	.globl	gc_string_mark
	.align	16, 0x90
	.type	gc_string_mark,@function
gc_string_mark:                         # @gc_string_mark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	je	.LBB2_3
# BB#1:                                 # %if.end
	leaq	-8(%rbx), %rdi
	movq	%rcx, %rsi
	callq	gc_locate
	testq	%rax, %rax
	je	.LBB2_3
# BB#2:                                 # %if.end.2
	cmpq	$0, 128(%rax)
	je	.LBB2_3
# BB#4:                                 # %if.end.5
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%rax, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gc_mark_string          # TAILCALL
.LBB2_3:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gc_string_mark, .Lfunc_end2-gc_string_mark
	.cfi_endproc

	.globl	gc_strings_clear_reloc
	.align	16, 0x90
	.type	gc_strings_clear_reloc,@function
gc_strings_clear_reloc:                 # @gc_strings_clear_reloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$0, 152(%rbx)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_3
# BB#2:                                 # %do.end.i
	movl	136(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
	movq	144(%rbx), %rax
	leaq	8(%rax), %rdi
	movl	$-8, %esi
	subl	%eax, %esi
	addl	56(%rbx), %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	gc_mark_string
.LBB3_3:                                # %gc_strings_set_marks.exit
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gc_strings_set_reloc    # TAILCALL
.LBB3_4:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gc_strings_clear_reloc, .Lfunc_end3-gc_strings_clear_reloc
	.cfi_endproc

	.globl	gc_strings_set_reloc
	.align	16, 0x90
	.type	gc_strings_set_reloc,@function
gc_strings_set_reloc:                   # @gc_strings_set_reloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	152(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_8
# BB#1:                                 # %land.lhs.true
	movq	128(%rdi), %r8
	testq	%r8, %r8
	je	.LBB4_8
# BB#2:                                 # %if.then
	movq	48(%rdi), %r11
	movq	56(%rdi), %r10
	movl	$63, %ecx
	subq	%r11, %rcx
	addq	%r10, %rcx
	shrq	$6, %rcx
	movl	136(%rdi), %esi
	testl	%ecx, %ecx
	je	.LBB4_8
# BB#3:                                 # %land.rhs.preheader
	leaq	(%r8,%rsi), %rcx
	movl	%esi, %edx
	shrl	$3, %edx
	leaq	(%rax,%rdx,4), %rbx
	leaq	-4(%rsi,%r8), %r8
	shrl	$3, %esi
	leaq	-4(%rax,%rsi,4), %r9
	addq	$63, %r10
	subq	%r11, %r10
	shrq	$6, %r10
	xorl	%eax, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_4:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r8,%rax,8), %edx
	andl	(%r8,%rax,8), %edx
	cmpl	$-1, %edx
	jne	.LBB4_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	addq	$-8, %rcx
	addl	$64, %esi
	addq	$-4, %rbx
	movl	%esi, (%r9,%rax,4)
	decq	%rax
	movl	%eax, %edx
	addl	%r10d, %edx
	jne	.LBB4_4
	jmp	.LBB4_8
.LBB4_6:                                # %while.body.16.lr.ph
	addl	%eax, %r10d
	decq	%rcx
	addq	$-4, %rbx
	.align	16, 0x90
.LBB4_7:                                # %while.body.16
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rcx), %eax
	movzbl	count_zero_bits_table(%rax), %r8d
	movzbl	-6(%rcx), %edx
	movzbl	count_zero_bits_table(%rdx), %r9d
	movzbl	-5(%rcx), %eax
	movzbl	count_zero_bits_table(%rax), %r11d
	movzbl	-4(%rcx), %edx
	movzbl	count_zero_bits_table(%rdx), %r14d
	movzbl	-3(%rcx), %eax
	movzbl	count_zero_bits_table(%rax), %r15d
	movzbl	-2(%rcx), %edx
	movzbl	count_zero_bits_table(%rdx), %edx
	movzbl	-1(%rcx), %ebp
	movzbl	count_zero_bits_table(%rbp), %ebp
	movzbl	(%rcx), %eax
	movzbl	count_zero_bits_table(%rax), %eax
	addl	$64, %esi
	subl	%r8d, %esi
	subl	%r9d, %esi
	subl	%r11d, %esi
	subl	%r14d, %esi
	subl	%r15d, %esi
	subl	%edx, %esi
	subl	%ebp, %esi
	subl	%eax, %esi
	addq	$-8, %rcx
	decl	%r10d
	movl	%esi, (%rbx)
	leaq	-4(%rbx), %rbx
	jne	.LBB4_7
.LBB4_8:                                # %if.end
	movq	56(%rdi), %rax
	movq	%rax, 160(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gc_strings_set_reloc, .Lfunc_end4-gc_strings_set_reloc
	.cfi_endproc

	.globl	igc_reloc_string
	.align	16, 0x90
	.type	igc_reloc_string,@function
igc_reloc_string:                       # @igc_reloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -24
.Ltmp38:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	cmpl	$0, 8(%r14)
	je	.LBB5_1
# BB#2:                                 # %if.end
	movq	(%r14), %rbx
	addq	$-8, %rbx
	movq	%rbx, %rdi
	callq	gc_locate
	testq	%rax, %rax
	je	.LBB5_22
# BB#3:                                 # %if.end.3
	movq	152(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB5_22
# BB#4:                                 # %lor.lhs.false
	movq	128(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB5_22
# BB#5:                                 # %if.end.7
	subq	144(%rax), %rbx
	movq	%rbx, %rsi
	shrq	$4, %rsi
	andl	$268435452, %esi        # imm = 0xFFFFFFC
	movl	(%rdx,%rsi), %edx
	movq	%rbx, %rsi
	shrq	$3, %rsi
	andl	$536870911, %esi        # imm = 0x1FFFFFFF
	movl	%ebx, %edi
	andl	$56, %edi
	cmpl	$31, %edi
	jle	.LBB5_6
# BB#9:                                 # %if.end.7
	cmpl	$47, %edi
	jg	.LBB5_12
# BB#10:                                # %if.end.7
	cmpl	$32, %edi
	je	.LBB5_17
# BB#11:                                # %if.end.7
	cmpl	$40, %edi
	je	.LBB5_16
	jmp	.LBB5_21
.LBB5_1:                                # %if.then
	movq	$0, (%r14)
	jmp	.LBB5_22
.LBB5_6:                                # %if.end.7
	cmpl	$8, %edi
	je	.LBB5_20
# BB#7:                                 # %if.end.7
	cmpl	$16, %edi
	je	.LBB5_19
# BB#8:                                 # %if.end.7
	cmpl	$24, %edi
	je	.LBB5_18
	jmp	.LBB5_21
.LBB5_12:                               # %if.end.7
	cmpl	$48, %edi
	je	.LBB5_15
# BB#13:                                # %if.end.7
	cmpl	$56, %edi
	jne	.LBB5_21
# BB#14:                                # %sw.bb
	movzbl	-7(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_15:                               # %sw.bb.18
	movzbl	-6(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_16:                               # %sw.bb.25
	movzbl	-5(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_17:                               # %sw.bb.32
	movzbl	-4(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_18:                               # %sw.bb.39
	movzbl	-3(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_19:                               # %sw.bb.46
	movzbl	-2(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_20:                               # %sw.bb.53
	movzbl	-1(%rcx,%rsi), %edi
	movzbl	count_zero_bits_table(%rdi), %edi
	leal	-8(%rdx,%rdi), %edx
.LBB5_21:                               # %sw.epilog
	movzbl	(%rcx,%rsi), %esi
	andl	$7, %ebx
	movl	$8, %ecx
	subl	%ebx, %ecx
	movl	$255, %edi
	shrl	%cl, %edi
	andl	%esi, %edi
	movzbl	count_zero_bits_table(%rdi), %ecx
	leal	-8(%rdx,%rcx), %ecx
	movq	160(%rax), %rax
	subq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, (%r14)
.LBB5_22:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	igc_reloc_string, .Lfunc_end5-igc_reloc_string
	.cfi_endproc

	.globl	igc_reloc_const_string
	.align	16, 0x90
	.type	igc_reloc_const_string,@function
igc_reloc_const_string:                 # @igc_reloc_const_string
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	igc_reloc_string        # TAILCALL
.Lfunc_end6:
	.size	igc_reloc_const_string, .Lfunc_end6-igc_reloc_const_string
	.cfi_endproc

	.globl	igc_reloc_param_string
	.align	16, 0x90
	.type	igc_reloc_param_string,@function
igc_reloc_param_string:                 # @igc_reloc_param_string
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 12(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.end
	retq
.LBB7_2:                                # %if.then
	jmp	igc_reloc_string        # TAILCALL
.Lfunc_end7:
	.size	igc_reloc_param_string, .Lfunc_end7-igc_reloc_param_string
	.cfi_endproc

	.globl	gc_strings_compact
	.align	16, 0x90
	.type	gc_strings_compact,@function
gc_strings_compact:                     # @gc_strings_compact
	.cfi_startproc
# BB#0:                                 # %entry
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	.LBB8_30
# BB#1:                                 # %if.then
	movq	48(%rdi), %r8
	movq	56(%rdi), %r9
	movl	136(%rdi), %ecx
	addq	%rcx, %rax
	jmp	.LBB8_2
	.align	16, 0x90
.LBB8_4:                                # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$-4, %rax
	addq	$-32, %r9
.LBB8_2:                                # %if.then
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r8, %r9
	jbe	.LBB8_5
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$-1, -4(%rax)
	je	.LBB8_4
.LBB8_5:                                # %while.end
	cmpq	%r8, %r9
	jbe	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %land.rhs.7
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB8_8
# BB#6:                                 # %while.body.12
                                        #   in Loop: Header=BB8_7 Depth=1
	decq	%rax
	addq	$-8, %r9
	cmpq	%r8, %r9
	movq	%r9, %rsi
	ja	.LBB8_7
	jmp	.LBB8_9
.LBB8_8:
	movq	%r9, %rsi
	jmp	.LBB8_9
.LBB8_12:                               # %sw.bb
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	7(%rsi), %cl
	movb	%cl, -1(%r9)
	movb	6(%rsi), %cl
	movb	%cl, -2(%r9)
	movb	5(%rsi), %cl
	movb	%cl, -3(%r9)
	movb	4(%rsi), %cl
	movb	%cl, -4(%r9)
	movb	3(%rsi), %cl
	movb	%cl, -5(%r9)
	movb	2(%rsi), %cl
	movb	%cl, -6(%r9)
	movb	1(%rsi), %cl
	movb	%cl, -7(%r9)
	movb	(%rsi), %cl
	movb	%cl, -8(%r9)
	leaq	-8(%r9), %rdx
	movq	%rdx, %r9
	.align	16, 0x90
.LBB8_9:                                # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r8, %rsi
	jbe	.LBB8_29
# BB#10:                                # %while.body.19
                                        #   in Loop: Header=BB8_9 Depth=1
	addq	$-8, %rsi
	movzbl	-1(%rax), %ecx
	decq	%rax
	testl	%ecx, %ecx
	je	.LBB8_9
# BB#11:                                # %while.body.19
                                        #   in Loop: Header=BB8_9 Depth=1
	cmpl	$255, %ecx
	je	.LBB8_12
# BB#13:                                # %sw.default
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$-128, %cl
	je	.LBB8_15
# BB#14:                                # %if.then.41
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	7(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_15:                               # %if.end
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$64, %cl
	je	.LBB8_17
# BB#16:                                # %if.then.47
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	6(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_17:                               # %if.end.50
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$32, %cl
	je	.LBB8_19
# BB#18:                                # %if.then.54
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	5(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_19:                               # %if.end.57
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$16, %cl
	je	.LBB8_21
# BB#20:                                # %if.then.61
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	4(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_21:                               # %if.end.64
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$8, %cl
	je	.LBB8_23
# BB#22:                                # %if.then.68
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	3(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_23:                               # %if.end.71
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$4, %cl
	je	.LBB8_25
# BB#24:                                # %if.then.75
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	2(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_25:                               # %if.end.78
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$2, %cl
	je	.LBB8_27
# BB#26:                                # %if.then.82
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	1(%rsi), %dl
	movb	%dl, -1(%r9)
	decq	%r9
.LBB8_27:                               # %if.end.85
                                        #   in Loop: Header=BB8_9 Depth=1
	testb	$1, %cl
	je	.LBB8_9
# BB#28:                                # %if.then.89
                                        #   in Loop: Header=BB8_9 Depth=1
	movb	(%rsi), %cl
	movb	%cl, -1(%r9)
	decq	%r9
	jmp	.LBB8_9
.LBB8_29:                               # %do.end.97
	movq	%r9, 48(%rdi)
.LBB8_30:                               # %if.end.99
	retq
.Lfunc_end8:
	.size	gc_strings_compact, .Lfunc_end8-gc_strings_compact
	.cfi_endproc

	.type	count_zero_bits_table,@object # @count_zero_bits_table
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
count_zero_bits_table:
	.asciz	"\b\007\007\006\007\006\006\005\007\006\006\005\006\005\005\004\007\006\006\005\006\005\005\004\006\005\005\004\005\004\004\003\007\006\006\005\006\005\005\004\006\005\005\004\005\004\004\003\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\007\006\006\005\006\005\005\004\006\005\005\004\005\004\004\003\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\005\004\004\003\004\003\003\002\004\003\003\002\003\002\002\001\007\006\006\005\006\005\005\004\006\005\005\004\005\004\004\003\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\005\004\004\003\004\003\003\002\004\003\003\002\003\002\002\001\006\005\005\004\005\004\004\003\005\004\004\003\004\003\003\002\005\004\004\003\004\003\003\002\004\003\003\002\003\002\002\001\005\004\004\003\004\003\003\002\004\003\003\002\003\002\002\001\004\003\003\002\003\002\002\001\003\002\002\001\002\001\001"
	.size	count_zero_bits_table, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
