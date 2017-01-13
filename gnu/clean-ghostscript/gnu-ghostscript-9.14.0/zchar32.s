	.text
	.file	"zchar32.bc"
	.align	16, 0x90
	.type	zgetmetrics32,@function
zgetmetrics32:                          # @zgetmetrics32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movq	624(%rcx), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB0_1
# BB#3:                                 # %if.end
	movl	4(%rdi), %esi
	movl	$-15, %eax
	cmpl	$5, %esi
	jb	.LBB0_16
# BB#4:                                 # %if.end.11
	movq	8(%rdi), %rdx
	cmpb	$0, (%rdx)
	je	.LBB0_8
# BB#5:                                 # %if.then.13
	movzbl	3(%rdx), %esi
	movzbl	4(%rdx), %r8d
	movq	%rdi, %rax
	subq	$-128, %rax
	cmpq	640(%rcx), %rax
	jbe	.LBB0_7
# BB#6:                                 # %if.then.23
	movl	$8, 688(%rcx)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB0_1:                                # %if.then
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB0_16
# BB#2:                                 # %cond.true
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB0_8:                                # %if.else.77
	cmpb	$0, 1(%rdx)
	je	.LBB0_10
# BB#9:                                 # %if.then.80
	movl	$10, %r9d
	movl	$22, %r8d
	cmpl	$22, %esi
	jae	.LBB0_11
	jmp	.LBB0_16
.LBB0_7:                                # %if.else
	addq	$-128, %rsi
	addq	$-128, %r8
	movq	%rax, 624(%rcx)
	movzbl	2(%rdx), %eax
	movq	%rax, 40(%rdi)
	movw	$2816, 32(%rdi)         # imm = 0xB00
	movq	$0, 56(%rdi)
	movw	$2816, 48(%rdi)         # imm = 0xB00
	movq	%rsi, 72(%rdi)
	movw	$2816, 64(%rdi)         # imm = 0xB00
	movq	%r8, 88(%rdi)
	movw	$2816, 80(%rdi)         # imm = 0xB00
	movzbl	(%rdx), %eax
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 104(%rdi)
	movw	$2816, 96(%rdi)         # imm = 0xB00
	movzbl	1(%rdx), %eax
	movslq	%r8d, %rcx
	addq	%rax, %rcx
	movq	%rcx, 120(%rdi)
	movw	$2816, 112(%rdi)        # imm = 0xB00
	movl	$6, %r9d
	movl	$8, %r10d
	movl	$5, %r8d
	jmp	.LBB0_15
.LBB0_10:                               # %if.else.85
	movl	$6, %r9d
	movl	$14, %r8d
	cmpl	$14, %esi
	jb	.LBB0_16
.LBB0_11:                               # %do.body.91
	leal	2(%r9), %r10d
	movq	%r10, %rax
	shlq	$4, %rax
	leaq	(%rax,%rdi), %rax
	cmpq	640(%rcx), %rax
	jbe	.LBB0_13
# BB#12:                                # %if.then.99
	movl	%r10d, 688(%rcx)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB0_13:                               # %if.else.104
	movq	%rax, 624(%rcx)
	movl	%r9d, %r11d
	movq	%r10, %rax
	subq	%r11, %rax
	shlq	$4, %rax
	leaq	8(%rdi,%rax), %rsi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	2(%rdx,%rax,2), %ecx
	shll	$8, %ecx
	movzbl	3(%rdx,%rax,2), %ebx
	orl	%ecx, %ebx
	movswl	%bx, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, (%rsi)
	movw	$2816, -8(%rsi)         # imm = 0xB00
	incq	%rax
	addq	$16, %rsi
	cmpq	%r11, %rax
	jl	.LBB0_14
.LBB0_15:                               # %if.end.137
	shlq	$4, %r10
	leaq	(%rdi,%r10), %rax
	movslq	%r9d, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	72(%rax), %rcx
	subq	40(%rax), %rcx
	movq	%rcx, -24(%rax)
	movw	$2816, -32(%rax)        # imm = 0xB00
	movq	88(%rax), %rcx
	subq	56(%rax), %rcx
	movq	%rcx, -8(%rax)
	movw	$2816, -16(%rax)        # imm = 0xB00
	movl	%r8d, %eax
	movq	%rax, 8(%rdi,%r10)
	movw	$2816, (%rdi,%r10)      # imm = 0xB00
	xorl	%eax, %eax
.LBB0_16:                               # %cleanup.172
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zgetmetrics32, .Lfunc_end0-zgetmetrics32
	.cfi_endproc

	.align	16, 0x90
	.type	zmakeglyph32,@function
zmakeglyph32:                           # @zmakeglyph32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 160
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	624(%rdi), %rbx
	movzbl	-63(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.end
	movl	-60(%rbx), %esi
	cmpq	$10, %rsi
	movl	$1, %r14d
	je	.LBB1_6
# BB#3:                                 # %do.end
	cmpl	$6, %esi
	jne	.LBB1_4
# BB#5:                                 # %sw.bb.5
	xorl	%r14d, %r14d
.LBB1_6:                                # %sw.epilog
	movq	-56(%rbx), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	leaq	-16(%rax,%rcx), %rdi
	leaq	16(%rsp), %rdx
	callq	num_params
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_35
# BB#7:                                 # %if.end.13
	andl	$60, %ecx
	cmpl	$60, %ecx
	movl	$-20, %ecx
	jne	.LBB1_35
# BB#8:                                 # %if.end.15
	movzwl	-48(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB1_9
# BB#12:                                # %if.end.33
	cvttsd2si	32(%rsp), %ecx
	cvttsd2si	40(%rsp), %r12d
	cvttsd2si	48(%rsp), %r13d
	cvttsd2si	56(%rsp), %r15d
	subl	%ecx, %r13d
	movl	%r15d, %ebp
	subl	%r12d, %ebp
	movl	%ebp, %eax
	orl	%r13d, %eax
	js	.LBB1_13
# BB#14:                                # %lor.lhs.false.47
	leal	7(%r13), %eax
	sarl	$3, %eax
	imull	%ebp, %eax
	cmpl	%eax, -44(%rbx)
	jne	.LBB1_15
# BB#16:                                # %do.body.55
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_17
# BB#18:                                # %if.end.66
	cmpq	$65535, -24(%rbx)       # imm = 0xFFFF
	jbe	.LBB1_20
# BB#19:
	movl	$-15, %ecx
	jmp	.LBB1_35
.LBB1_1:                                # %if.then
	addq	$-64, %rbx
.LBB1_11:                               # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB1_34:                               # %cleanup
	movl	%eax, %ecx
	jmp	.LBB1_35
.LBB1_4:
	movl	$-15, %ecx
	jmp	.LBB1_35
.LBB1_9:                                # %if.then.23
	addq	$-48, %rbx
.LBB1_10:                               # %if.then.23
	movzbl	1(%rbx), %eax
	movl	$-7, %ecx
	cmpl	$18, %eax
	je	.LBB1_35
	jmp	.LBB1_11
.LBB1_13:
	movl	$-15, %ecx
	jmp	.LBB1_35
.LBB1_15:
	movl	$-15, %ecx
.LBB1_35:                               # %cleanup
	movl	%ecx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_17:                               # %if.then.63
	addq	$-32, %rbx
	jmp	.LBB1_11
.LBB1_20:                               # %do.end.74
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	leaq	-16(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB1_34
# BB#21:                                # %if.end.80
	movq	8(%rsp), %rdx
	movl	$-10, %ecx
	cmpl	$32, 128(%rdx)
	jne	.LBB1_35
# BB#22:                                # %if.end.84
	movzwl	(%rbx), %ecx
	andl	$16144, %ecx            # imm = 0x3F10
	cmpl	$4624, %ecx             # imm = 0x1210
	jne	.LBB1_10
# BB#23:                                # %if.end.103
	cmpl	$22, 4(%rbx)
	movl	$-15, %ecx
	jb	.LBB1_35
# BB#24:                                # %if.end.109
	movq	8(%rbx), %rcx
	testl	%r14d, %r14d
	jne	.LBB1_29
# BB#25:                                # %lor.lhs.false.112
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_29
	jp	.LBB1_29
# BB#26:                                # %lor.lhs.false.119
	cmpl	%r12d, %r15d
	je	.LBB1_29
# BB#27:                                # %lor.lhs.false.119
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_29
	jp	.LBB1_29
# BB#28:                                # %lor.lhs.false.126
	movl	4(%rsp), %edi           # 4-byte Reload
	subl	$-128, %edi
	subl	$-128, %r12d
	movl	%r12d, %esi
	orl	%edi, %esi
	orl	%r13d, %esi
	orl	%ebp, %esi
	orl	%edx, %esi
	cmpl	$256, %esi              # imm = 0x100
	jb	.LBB1_32
.LBB1_29:                               # %if.then.135
	leal	6(,%r14,4), %edi
	movb	$0, (%rcx)
	movb	%r14b, 1(%rcx)
	xorl	%esi, %esi
.LBB1_30:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cvttsd2si	16(%rsp,%rsi,8), %edx
	movb	%dh, 2(%rcx,%rsi,2)  # NOREX
	movb	%dl, 3(%rcx,%rsi,2)
	incq	%rsi
	cmpq	%rdi, %rsi
	jl	.LBB1_30
# BB#31:                                # %for.end
	addl	%edi, %edi
	orl	$2, %edi
.LBB1_33:                               # %if.end.175
	movl	%edi, 4(%rbx)
	jmp	.LBB1_34
.LBB1_32:                               # %if.else
	movb	%r13b, (%rcx)
	movb	%bpl, 1(%rcx)
	movb	%dl, 2(%rcx)
	movb	%dil, 3(%rcx)
	movb	%r12b, 4(%rcx)
	movl	$5, %edi
	jmp	.LBB1_33
.Lfunc_end1:
	.size	zmakeglyph32, .Lfunc_end1-zmakeglyph32
	.cfi_endproc

	.align	16, 0x90
	.type	zremoveglyphs,@function
zremoveglyphs:                          # @zremoveglyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB2_1
# BB#3:                                 # %if.end
	movl	$-15, %eax
	cmpq	$65535, -24(%rbx)       # imm = 0xFFFF
	ja	.LBB2_10
# BB#4:                                 # %do.body.9
	movzbl	-15(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB2_5
# BB#6:                                 # %if.end.20
	cmpq	$65535, -8(%rbx)        # imm = 0xFFFF
	ja	.LBB2_10
# BB#7:                                 # %do.end.29
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	font_param
	testl	%eax, %eax
	js	.LBB2_10
# BB#8:                                 # %if.end.34
	movq	16(%rsp), %rcx
	movl	$-10, %eax
	cmpl	$32, 128(%rcx)
	jne	.LBB2_10
# BB#9:                                 # %if.end.39
	movl	$2147483648, %eax       # imm = 0x80000000
	movq	-24(%rbx), %rdx
	addq	%rax, %rdx
	movq	%rdx, (%rsp)
	addq	-8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rcx), %rdi
	leaq	(%rsp), %rdx
	movl	$select_cid_range, %esi
	callq	gx_purge_selected_cached_chars
	addq	$-48, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_10
.LBB2_1:                                # %if.then
	addq	$-32, %rbx
	jmp	.LBB2_2
.LBB2_5:                                # %if.then.17
	addq	$-16, %rbx
.LBB2_2:                                # %cleanup
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB2_10:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zremoveglyphs, .Lfunc_end2-zremoveglyphs
	.cfi_endproc

	.align	16, 0x90
	.type	select_cid_range,@function
select_cid_range:                       # @select_cid_range
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rax
	cmpq	(%rdx), %rax
	jae	.LBB3_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB3_2:                                # %land.lhs.true
	cmpq	8(%rdx), %rax
	jbe	.LBB3_4
# BB#3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB3_4:                                # %land.rhs
	movq	24(%rsi), %rax
	movq	(%rax), %rax
	cmpq	16(%rdx), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	select_cid_range, .Lfunc_end3-select_cid_range
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.getmetrics32"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"4.makeglyph32"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"3.removeglyphs"
	.size	.L.str.2, 15

	.type	zchar32_op_defs,@object # @zchar32_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar32_op_defs
	.align	16
zchar32_op_defs:
	.quad	.L.str
	.quad	zgetmetrics32
	.quad	.L.str.1
	.quad	zmakeglyph32
	.quad	.L.str.2
	.quad	zremoveglyphs
	.zero	16
	.size	zchar32_op_defs, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
