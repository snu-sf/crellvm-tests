	.text
	.file	"ztype.bc"
	.globl	zcvx
	.align	16, 0x90
	.type	zcvx,@function
zcvx:                                   # @zcvx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movl	$-17, %eax
	cmpq	632(%rdi), %rbx
	jb	.LBB0_10
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$15, %eax
	jne	.LBB0_7
# BB#2:                                 # %land.lhs.true
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB0_5
# BB#3:                                 # %cond.end
	movq	%rbx, %rdi
	callq	op_find_index
	movw	%ax, %cx
	movl	$-15, %eax
	testw	%cx, %cx
	je	.LBB0_10
# BB#4:
	movzwl	%cx, %eax
.LBB0_5:                                # %lor.lhs.false
	movl	%eax, %ecx
	andl	$15, %ecx
	shrl	$4, %eax
	movq	op_defs_all(,%rax,8), %rax
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rax
	movzbl	1(%rax), %ecx
	movl	$-15, %eax
	cmpl	$37, %ecx
	je	.LBB0_10
# BB#6:                                 # %if.end.21thread-pre-split
	movb	1(%rbx), %al
.LBB0_7:                                # %if.end.21
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB0_9
# BB#8:                                 # %cond.true.28
	movq	8(%rbx), %rbx
.LBB0_9:                                # %cond.end.30
	orb	$-128, (%rbx)
	xorl	%eax, %eax
.LBB0_10:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zcvx, .Lfunc_end0-zcvx
	.cfi_endproc

	.globl	zreadonly
	.align	16, 0x90
	.type	zreadonly,@function
zreadonly:                              # @zreadonly
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$96, %esi
	movl	$1, %edx
	jmp	access_check            # TAILCALL
.Lfunc_end1:
	.size	zreadonly, .Lfunc_end1-zreadonly
	.cfi_endproc

	.align	16, 0x90
	.type	access_check,@function
access_check:                           # @access_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$19, %eax
	ja	.LBB2_15
# BB#1:                                 # %entry
	movl	$787064, %ecx           # imm = 0xC0278
	btl	%eax, %ecx
	jae	.LBB2_2
# BB#10:                                # %sw.bb.22
	testl	%edx, %edx
	je	.LBB2_5
# BB#11:                                # %if.then.24
	movzwl	(%rsi), %ecx
	movl	%ecx, %edx
	notl	%edx
	movl	$-7, %eax
	testl	%ebp, %edx
	jne	.LBB2_14
# BB#12:                                # %if.end.32
	andl	$-113, %ecx
	orl	%ebp, %ecx
	movw	%cx, (%rsi)
.LBB2_13:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_2:                                # %entry
	cmpl	$2, %eax
	jne	.LBB2_15
# BB#3:                                 # %sw.bb
	movq	8(%rsi), %r14
	testl	%edx, %edx
	je	.LBB2_4
# BB#6:                                 # %if.then
	movw	(%r14), %cx
	movzwl	%cx, %edx
	movl	%edx, %edi
	notl	%edi
	movl	$-7, %eax
	testl	%ebp, %edi
	jne	.LBB2_14
# BB#7:                                 # %if.end
	testl	72(%rbx), %edx
	jne	.LBB2_9
# BB#8:                                 # %cond.true
	leaq	8(%rbx), %rdi
	movl	$.L.str.30, %ecx
	movq	%r14, %rdx
	callq	alloc_save_change
	movzwl	(%r14), %ecx
.LBB2_9:                                # %cond.end
	andl	$-113, %ecx
	orl	%ebp, %ecx
	movw	%cx, (%r14)
	addq	$368, %rbx              # imm = 0x170
	movq	%rbx, %rdi
	callq	dstack_set_top
	jmp	.LBB2_13
.LBB2_15:                               # %sw.default
	movq	%rsi, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB2_4:
	movq	%r14, %rsi
.LBB2_5:                                # %sw.epilog
	movzwl	(%rsi), %eax
	notl	%eax
	testl	%ebp, %eax
	sete	%al
	movzbl	%al, %eax
.LBB2_14:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	access_check, .Lfunc_end2-access_check
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	3741319168              # float -9.22337203E+18
.LCPI3_1:
	.long	1593835520              # float 9.22337203E+18
	.text
	.globl	zcvi
	.align	16, 0x90
	.type	zcvi,@function
zcvi:                                   # @zcvi
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	$11, %ecx
	je	.LBB3_14
# BB#1:                                 # %entry
	cmpl	$18, %ecx
	jne	.LBB3_2
# BB#5:                                 # %sw.bb.2
	movups	(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_scan_string_token_options
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-18, %eax
	cmovlel	%ecx, %eax
	testl	%eax, %eax
	js	.LBB3_14
# BB#6:                                 # %if.end.8
	movzbl	1(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB3_7
# BB#9:                                 # %cleanup
	movss	8(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_10
.LBB3_2:                                # %entry
	cmpl	$16, %ecx
	jne	.LBB3_4
# BB#3:                                 # %sw.bb.1
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
.LBB3_10:                               # %sw.epilog.20
	movl	$-15, %eax
	ucomiss	.LCPI3_0(%rip), %xmm0
	jbe	.LBB3_14
# BB#11:                                # %sw.epilog.20
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_14
# BB#12:                                # %if.end.28
	cvttss2si	%xmm0, %rax
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	jmp	.LBB3_13
.LBB3_4:                                # %sw.default
	movq	%rbx, %rdi
	addq	$32, %rsp
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB3_7:                                # %if.end.8
	movl	$-20, %eax
	cmpl	$11, %ecx
	jne	.LBB3_14
# BB#8:                                 # %sw.bb.13
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rbx)
.LBB3_13:                               # %cleanup.33
	xorl	%eax, %eax
.LBB3_14:                               # %cleanup.33
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zcvi, .Lfunc_end3-zcvi
	.cfi_endproc

	.globl	zcvr
	.align	16, 0x90
	.type	zcvr,@function
zcvr:                                   # @zcvr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %ecx
	cmpl	$18, %ecx
	je	.LBB4_5
# BB#1:                                 # %entry
	xorl	%eax, %eax
	cmpl	$16, %ecx
	je	.LBB4_11
# BB#2:                                 # %entry
	cmpl	$11, %ecx
	jne	.LBB4_4
# BB#3:                                 # %sw.bb
	cvtsi2ssq	8(%rbx), %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	jmp	.LBB4_11
.LBB4_5:                                # %sw.bb.6
	movups	(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_scan_string_token_options
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-18, %eax
	cmovlel	%ecx, %eax
	testl	%eax, %eax
	js	.LBB4_11
# BB#6:                                 # %if.end.12
	movzbl	1(%rsp), %ecx
	cmpl	$16, %ecx
	jne	.LBB4_7
# BB#9:                                 # %sw.bb.25
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB4_10
.LBB4_4:                                # %sw.default
	movq	%rbx, %rdi
	addq	$32, %rsp
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB4_7:                                # %if.end.12
	movl	$-20, %eax
	cmpl	$11, %ecx
	jne	.LBB4_11
# BB#8:                                 # %sw.bb.17
	cvtsi2ssq	8(%rsp), %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
.LBB4_10:                               # %cleanup
	xorl	%eax, %eax
.LBB4_11:                               # %cleanup.29
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zcvr, .Lfunc_end4-zcvr
	.cfi_endproc

	.align	16, 0x90
	.type	zcvlit,@function
zcvlit:                                 # @zcvlit
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB5_4
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %eax
	cmpl	$2, %eax
	jne	.LBB5_3
# BB#2:                                 # %cond.true
	movq	8(%rcx), %rcx
.LBB5_3:                                # %cond.end
	andb	$127, (%rcx)
	xorl	%eax, %eax
.LBB5_4:                                # %cleanup
	retq
.Lfunc_end5:
	.size	zcvlit, .Lfunc_end5-zcvlit
	.cfi_endproc

	.align	16, 0x90
	.type	zcvn,@function
zcvn:                                   # @zcvn
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	movzwl	(%rsi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB6_1
# BB#3:                                 # %if.end
	movq	8(%rdi), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rsi, %rdx
	jmp	names_from_string       # TAILCALL
.LBB6_1:                                # %if.then
	movzbl	1(%rsi), %eax
	cmpl	$18, %eax
	jne	.LBB6_2
# BB#4:                                 # %cleanup
	movl	$-7, %eax
	retq
.LBB6_2:                                # %cond.true
	movq	%rsi, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end6:
	.size	zcvn, .Lfunc_end6-zcvn
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	3741319168              # float -9.22337203E+18
.LCPI7_1:
	.long	1593835520              # float 9.22337203E+18
	.text
	.align	16, 0x90
	.type	zcvrs,@function
zcvrs:                                  # @zcvrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 112
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r12, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB7_1
# BB#2:                                 # %if.end
	movq	-8(%rbx), %rcx
	leaq	-2(%rcx), %rdx
	movl	$-15, %eax
	cmpq	$34, %rdx
	ja	.LBB7_24
# BB#3:                                 # %if.end.13
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB7_4
# BB#6:                                 # %if.end.31
	cmpl	$10, %ecx
	jne	.LBB7_12
# BB#7:                                 # %if.then.34
	movzbl	-31(%rbx), %ecx
	testl	%ecx, %ecx
	movl	$-17, %eax
	je	.LBB7_24
# BB#8:                                 # %if.then.34
	cmpl	$16, %ecx
	je	.LBB7_10
# BB#9:                                 # %if.then.34
	cmpl	$11, %ecx
	jne	.LBB7_23
.LBB7_10:                               # %sw.bb
	leaq	-32(%rbx), %rsi
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	callq	convert_to_string
	testl	%eax, %eax
	jns	.LBB7_11
	jmp	.LBB7_24
.LBB7_1:                                # %if.then
	addq	$-16, %rbx
.LBB7_5:                                # %cond.true
	movq	%rbx, %rdi
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB7_4:                                # %if.then.23
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB7_24
	jmp	.LBB7_5
.LBB7_12:                               # %if.else
	movzbl	-31(%rbx), %edx
	testl	%edx, %edx
	movl	$-17, %eax
	je	.LBB7_24
# BB#13:                                # %if.else
	cmpl	$16, %edx
	jne	.LBB7_14
# BB#20:                                # %sw.bb.61
	movss	-24(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jbe	.LBB7_23
# BB#21:                                # %sw.bb.61
	movss	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB7_23
# BB#22:
	cvttss2si	%xmm0, %rax
	jmp	.LBB7_16
.LBB7_14:                               # %if.else
	cmpl	$11, %edx
	jne	.LBB7_23
# BB#15:                                # %sw.bb.56
	movq	-24(%rbx), %rax
.LBB7_16:                               # %do.body.preheader
	leaq	64(%rsp), %r12
	leaq	-32(%rbx), %r15
	movl	$48, %r8d
	movq	%r12, %rsi
	.align	16, 0x90
.LBB7_17:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	divl	%ecx
	cmpl	$10, %edx
	movl	$55, %edi
	cmovll	%r8d, %edi
	addl	%edx, %edi
	movb	%dil, -1(%rsi)
	decq	%rsi
	testl	%eax, %eax
	jne	.LBB7_17
# BB#18:                                # %do.end
	subq	%rsi, %r12
	movl	4(%rbx), %ecx
	movl	$-15, %eax
	cmpq	%rcx, %r12
	jg	.LBB7_24
# BB#19:                                # %cleanup.100.thread49
	movq	8(%rbx), %rdi
	movl	%r12d, %edx
	callq	memcpy
	movl	%r12d, 4(%rbx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
.LBB7_11:                               # %if.end.44
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB7_24
.LBB7_23:                               # %cleanup.100
	movl	$-15, %eax
.LBB7_24:                               # %cleanup.112
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zcvrs, .Lfunc_end7-zcvrs
	.cfi_endproc

	.align	16, 0x90
	.type	zcvs,@function
zcvs:                                   # @zcvs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movzwl	(%rcx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB8_1
# BB#3:                                 # %if.end
	movq	632(%rbx), %rdx
	addq	$16, %rdx
	movl	$-17, %eax
	cmpq	%rdx, %rcx
	jb	.LBB8_6
# BB#4:                                 # %if.end.12
	movq	8(%rbx), %rdi
	leaq	-16(%rcx), %rsi
	movq	%rcx, %rdx
	callq	convert_to_string
	testl	%eax, %eax
	js	.LBB8_6
# BB#5:                                 # %if.then.17
	addq	$-16, 624(%rbx)
	jmp	.LBB8_6
.LBB8_1:                                # %if.then
	movzbl	1(%rcx), %edx
	movl	$-7, %eax
	cmpl	$18, %edx
	jne	.LBB8_2
.LBB8_6:                                # %cleanup
	popq	%rbx
	retq
.LBB8_2:                                # %cond.true
	movq	%rcx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	zcvs, .Lfunc_end8-zcvs
	.cfi_endproc

	.align	16, 0x90
	.type	zexecuteonly,@function
zexecuteonly:                           # @zexecuteonly
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB9_2
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %ecx
	movl	$-20, %eax
	cmpl	$2, %ecx
	jne	.LBB9_3
.LBB9_2:                                # %cleanup
	retq
.LBB9_3:                                # %if.end.6
	movl	$64, %esi
	movl	$1, %edx
	jmp	access_check            # TAILCALL
.Lfunc_end9:
	.size	zexecuteonly, .Lfunc_end9-zexecuteonly
	.cfi_endproc

	.align	16, 0x90
	.type	znoaccess,@function
znoaccess:                              # @znoaccess
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movl	$-17, %eax
	cmpq	632(%rbx), %rsi
	jb	.LBB10_5
# BB#1:                                 # %if.end
	movzbl	1(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB10_6
# BB#2:                                 # %if.then.5
	movq	8(%rsi), %rax
	movzwl	(%rax), %eax
	notl	%eax
	testb	$16, %al
	jne	.LBB10_3
# BB#4:                                 # %cleanup
	leaq	368(%rbx), %rdi
	callq	dstack_dict_is_permanent
	movl	%eax, %ecx
	movl	$-7, %eax
	testl	%ecx, %ecx
	je	.LBB10_6
.LBB10_5:                               # %cleanup.30
	popq	%rbx
	retq
.LBB10_6:                               # %if.end.28
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	popq	%rbx
	jmp	access_check            # TAILCALL
.LBB10_3:                               # %cleanup.thread
	andl	$96, %eax
	xorl	%ecx, %ecx
	cmpl	$96, %eax
	movl	$-7, %eax
	cmovel	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end10:
	.size	znoaccess, .Lfunc_end10-znoaccess
	.cfi_endproc

	.align	16, 0x90
	.type	zrcheck,@function
zrcheck:                                # @zrcheck
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$19, %eax
	ja	.LBB11_5
# BB#1:                                 # %entry
	movl	$787064, %ecx           # imm = 0xC0278
	btl	%eax, %ecx
	movq	%rbx, %rcx
	jae	.LBB11_2
.LBB11_4:                               # %access_check.exit.thread
	movzwl	(%rcx), %eax
	shrl	$5, %eax
	andl	$1, %eax
	jmp	.LBB11_6
.LBB11_2:                               # %entry
	cmpl	$2, %eax
	jne	.LBB11_5
# BB#3:                                 # %sw.bb.i
	movq	8(%rbx), %rcx
	jmp	.LBB11_4
.LBB11_5:                               # %access_check.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	testl	%eax, %eax
	js	.LBB11_7
.LBB11_6:                               # %if.then
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
.LBB11_7:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end11:
	.size	zrcheck, .Lfunc_end11-zrcheck
	.cfi_endproc

	.align	16, 0x90
	.type	ztype,@function
ztype:                                  # @ztype
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 64
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movq	8(%r15), %rdi
	leaq	-16(%rbx), %r14
	movzwl	-16(%rbx), %eax
	movl	$15, %edx
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB12_2
# BB#1:                                 # %cond.false
	movzbl	1(%r14), %edx
.LBB12_2:                               # %cond.end
	leaq	8(%rsp), %rcx
	movq	%rbx, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB12_9
# BB#3:                                 # %if.end
	movzbl	9(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB12_4
# BB#7:                                 # %if.else
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB12_8
.LBB12_4:                               # %if.then.15
	movq	632(%r15), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB12_9
# BB#5:                                 # %if.end.22
	movq	8(%r15), %rdi
	movq	-8(%rbx), %rsi
	callq	*128(%rdi)
	movq	%rax, %rdi
	callq	gs_struct_type_name
	movq	%rax, %rbx
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r12
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB12_9
# BB#6:                                 # %cleanup.cont
	orb	$-128, (%r14)
.LBB12_8:                               # %if.end.48
	addq	$-16, 624(%r15)
	xorl	%eax, %eax
.LBB12_9:                               # %cleanup.53
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	ztype, .Lfunc_end12-ztype
	.cfi_endproc

	.align	16, 0x90
	.type	ztypenames,@function
ztypenames:                             # @ztypenames
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r12, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	movq	640(%r14), %rax
	subq	%r15, %rax
	cmpq	$336, %rax              # imm = 0x150
	jge	.LBB13_1
# BB#9:                                 # %if.then
	movl	$21, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB13_8
.LBB13_1:                               # %for.cond.preheader
	addq	$16, %r15
	xorl	%ebx, %ebx
	movl	$769, %r12d             # imm = 0x301
	.align	16, 0x90
.LBB13_2:                               # %lor.lhs.false
                                        # =>This Inner Loop Header: Depth=1
	btq	%rbx, %r12
	jb	.LBB13_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	ztypenames.tnames(,%rbx,8), %rsi
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rdx
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB13_8
# BB#5:                                 # %cleanup.thread
                                        #   in Loop: Header=BB13_2 Depth=1
	orb	$-128, (%r15)
	jmp	.LBB13_6
	.align	16, 0x90
.LBB13_3:                               # %if.then.14
                                        #   in Loop: Header=BB13_2 Depth=1
	movw	$3584, (%r15)           # imm = 0xE00
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	incq	%rbx
	addq	$16, %r15
	cmpq	$21, %rbx
	jl	.LBB13_2
# BB#7:                                 # %for.end
	addq	$336, 624(%r14)         # imm = 0x150
	xorl	%eax, %eax
.LBB13_8:                               # %cleanup.33
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	ztypenames, .Lfunc_end13-ztypenames
	.cfi_endproc

	.align	16, 0x90
	.type	zwcheck,@function
zwcheck:                                # @zwcheck
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$19, %eax
	ja	.LBB14_5
# BB#1:                                 # %entry
	movl	$787064, %ecx           # imm = 0xC0278
	btl	%eax, %ecx
	movq	%rbx, %rcx
	jae	.LBB14_2
.LBB14_4:                               # %access_check.exit.thread
	movzwl	(%rcx), %eax
	shrl	$4, %eax
	andl	$1, %eax
	jmp	.LBB14_6
.LBB14_2:                               # %entry
	cmpl	$2, %eax
	jne	.LBB14_5
# BB#3:                                 # %sw.bb.i
	movq	8(%rbx), %rcx
	jmp	.LBB14_4
.LBB14_5:                               # %access_check.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	testl	%eax, %eax
	js	.LBB14_7
.LBB14_6:                               # %if.then
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
.LBB14_7:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end14:
	.size	zwcheck, .Lfunc_end14-zwcheck
	.cfi_endproc

	.align	16, 0x90
	.type	zxcheck,@function
zxcheck:                                # @zxcheck
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB15_4
# BB#1:                                 # %if.end
	movzbl	1(%rcx), %eax
	cmpl	$2, %eax
	movq	%rcx, %rax
	jne	.LBB15_3
# BB#2:                                 # %cond.true
	movq	8(%rcx), %rax
.LBB15_3:                               # %cond.end
	movzwl	(%rax), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movw	%ax, 8(%rcx)
	movw	$256, (%rcx)            # imm = 0x100
	xorl	%eax, %eax
.LBB15_4:                               # %cleanup
	retq
.Lfunc_end15:
	.size	zxcheck, .Lfunc_end15-zxcheck
	.cfi_endproc

	.align	16, 0x90
	.type	convert_to_string,@function
convert_to_string:                      # @convert_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 48
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	$0, 8(%rsp)
	movq	8(%rbx), %rdx
	movl	4(%rbx), %ecx
	leaq	20(%rsp), %r8
	leaq	8(%rsp), %r9
	callq	obj_cvs
	testl	%eax, %eax
	jns	.LBB16_9
# BB#1:                                 # %if.then
	cmpl	$-15, %eax
	jne	.LBB16_10
# BB#2:                                 # %if.then.2
	movzwl	(%r14), %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB16_5
# BB#3:                                 # %cond.end
	movzbl	1(%r14), %ecx
	cmpl	$20, %ecx
	je	.LBB16_5
# BB#4:                                 # %cond.end
	movl	$-15, %eax
	cmpl	$15, %ecx
	jne	.LBB16_10
.LBB16_5:                               # %sw.bb
	movq	8(%rsp), %rsi
	movl	$-15, %eax
	testq	%rsi, %rsi
	je	.LBB16_10
# BB#6:                                 # %if.then.11
	movzbl	(%rsi), %ecx
	addl	$-37, %ecx
	cmpl	$27, %ecx
	ja	.LBB16_10
# BB#7:                                 # %if.then.11
	movl	$134218241, %edx        # imm = 0x8000201
	btl	%ecx, %edx
	jae	.LBB16_10
# BB#8:                                 # %sw.bb.13
	movl	4(%rbx), %edx
	movl	%edx, 20(%rsp)
	movq	8(%rbx), %rdi
	callq	memcpy
.LBB16_9:                               # %ok
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	movl	20(%rsp), %eax
	movl	%eax, 4(%r14)
	xorl	%eax, %eax
.LBB16_10:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	convert_to_string, .Lfunc_end16-convert_to_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1cvi"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1cvlit"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1cvn"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1cvr"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"3cvrs"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2cvs"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1cvx"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1executeonly"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1noaccess"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1rcheck"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1readonly"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2.type"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0.typenames"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1wcheck"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1xcheck"
	.size	.L.str.14, 8

	.type	ztype_op_defs,@object   # @ztype_op_defs
	.section	.rodata,"a",@progbits
	.globl	ztype_op_defs
	.align	16
ztype_op_defs:
	.quad	.L.str
	.quad	zcvi
	.quad	.L.str.1
	.quad	zcvlit
	.quad	.L.str.2
	.quad	zcvn
	.quad	.L.str.3
	.quad	zcvr
	.quad	.L.str.4
	.quad	zcvrs
	.quad	.L.str.5
	.quad	zcvs
	.quad	.L.str.6
	.quad	zcvx
	.quad	.L.str.7
	.quad	zexecuteonly
	.quad	.L.str.8
	.quad	znoaccess
	.quad	.L.str.9
	.quad	zrcheck
	.quad	.L.str.10
	.quad	zreadonly
	.quad	.L.str.11
	.quad	ztype
	.quad	.L.str.12
	.quad	ztypenames
	.quad	.L.str.13
	.quad	zwcheck
	.quad	.L.str.14
	.quad	zxcheck
	.zero	16
	.size	ztype_op_defs, 256

	.type	ztypenames.tnames,@object # @ztypenames.tnames
	.align	16
ztypenames.tnames:
	.quad	0
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.19
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.25
	.size	ztypenames.tnames, 168

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"booleantype"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dicttype"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"filetype"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"arraytype"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"packedarraytype"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"fonttype"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"integertype"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"marktype"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"nametype"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"nulltype"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"operatortype"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"realtype"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"savetype"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"stringtype"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"devicetype"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"access_check(modify)"
	.size	.L.str.30, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
