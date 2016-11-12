	.text
	.file	"scfd.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	s_CFD_init,@function
s_CFD_init:                             # @s_CFD_init
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %rbx
	movl	136(%rbx), %eax
	movl	156(%rbx), %ecx
	leal	-1(%rcx), %edx
	addl	$7, %eax
	sarl	$3, %eax
	testl	%ecx, %edx
	leal	-1(%rax,%rcx), %ebp
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebp
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	negl	%ecx
	andl	%ecx, %ebp
.LBB0_3:                                # %cond.end
	movl	%ebp, 160(%rbx)
	cmpl	$1, 148(%rbx)
	sbbb	%r14b, %r14b
	movl	$0, 112(%rbx)
	movl	$0, 116(%rbx)
	movq	8(%rbx), %rdi
	leal	4(%rbp), %r13d
	movl	$.L.str.1, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 168(%rbx)
	movq	$0, 176(%rbx)
	movl	$-2, %r15d
	testq	%rax, %rax
	je	.LBB0_12
# BB#4:                                 # %if.end
	movzbl	%r14b, %r12d
	movb	%r14b, 7(%rsp)          # 1-byte Spill
	movslq	%ebp, %r14
	movq	%rax, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	memset
	movq	168(%rbx), %rdi
	addq	%r14, %rdi
	movl	$170, %esi
	movl	$4, %edx
	callq	memset
	xorl	%eax, %eax
	cmpl	$0, 124(%rbx)
	je	.LBB0_7
# BB#5:                                 # %if.then.31
	movq	8(%rbx), %rdi
	movl	$.L.str.2, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 176(%rbx)
	testq	%rax, %rax
	je	.LBB0_12
# BB#6:                                 # %if.end.43
	movq	%rax, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	memset
	addq	176(%rbx), %r14
	movl	$170, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memset
	movl	124(%rbx), %eax
.LBB0_7:                                # %if.end.52
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, 184(%rbx)
	movl	$0, 188(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
	movl	140(%rbx), %eax
	movl	$-1, %ecx
	testl	%eax, %eax
	jle	.LBB0_11
# BB#8:                                 # %lor.lhs.false
	cmpl	$0, 144(%rbx)
	je	.LBB0_10
# BB#9:                                 # %select.mid
	movl	$-1, %eax
.LBB0_10:                               # %select.end
	movl	%eax, %ecx
.LBB0_11:                               # %cond.end.67
	movl	%ecx, 192(%rbx)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,4294967295,4294967295,0]
	movups	%xmm0, 196(%rbx)
	movb	7(%rsp), %al            # 1-byte Reload
	movb	%al, 212(%rbx)
	movl	$1, 24(%rbx)
	xorl	%r15d, %r15d
.LBB0_12:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_CFD_init, .Lfunc_end0-s_CFD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_CFD_process,@function
s_CFD_process:                          # @s_CFD_process
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
	subq	$104, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 160
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
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movslq	160(%r14), %rbp
	leal	-1(%rbp), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	208(%r14), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	184(%r14), %r13d
	movl	192(%r14), %r12d
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB1_1:                                # %topthread-pre-split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
                                        #       Child Loop BB1_30 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #       Child Loop BB1_62 Depth 3
	movl	224(%r14), %eax
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_55:                               # %if.end.290
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 204(%r14)
	xorl	%eax, %eax
	subl	136(%r14), %eax
	andl	$7, %eax
	movl	%eax, 188(%r14)
	movl	$0, 216(%r14)
	movl	$1, 224(%r14)
	movl	$1, %eax
.LBB1_2:                                # %top
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
                                        #       Child Loop BB1_30 Depth 3
                                        #       Child Loop BB1_75 Depth 3
                                        #       Child Loop BB1_62 Depth 3
	testl	%eax, %eax
	je	.LBB1_8
.LBB1_3:                                # %do.body
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cf_decode_eol
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB1_87
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB1_3 Depth=3
	cmpl	$1, %edx
	je	.LBB1_5
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB1_3 Depth=3
	movl	112(%r14), %eax
	addl	116(%r14), %edx
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, (%r15)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %eax
	movl	%eax, 112(%r14)
	andl	$7, %edx
	movl	%edx, 116(%r14)
	cmpl	$0, 224(%r14)
	jne	.LBB1_3
	jmp	.LBB1_7
.LBB1_5:                                # %do.cond.thread
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	112(%r14), %eax
	movl	116(%r14), %edx
	addl	$12, %edx
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, (%r15)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %eax
	movl	%eax, 112(%r14)
	andl	$7, %edx
	movl	%edx, 116(%r14)
	movl	$0, 224(%r14)
.LBB1_7:                                # %cleanup.thread
                                        #   in Loop: Header=BB1_2 Depth=2
	incl	220(%r14)
	.align	16, 0x90
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	204(%r14), %eax
	cmpl	72(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB1_28
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_2 Depth=2
	xorl	%eax, %eax
	subl	136(%r14), %eax
	andl	$7, %eax
	cmpl	%eax, 188(%r14)
	jg	.LBB1_27
# BB#10:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	216(%r14), %eax
	testl	%r13d, %r13d
	je	.LBB1_11
# BB#13:                                # %cond.false
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%eax, %eax
	jne	.LBB1_27
	jmp	.LBB1_14
.LBB1_11:                               # %cond.true
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$1, %eax
	jbe	.LBB1_14
# BB#12:                                #   in Loop: Header=BB1_2 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB1_27
.LBB1_14:                               # %if.then.44
                                        #   in Loop: Header=BB1_2 Depth=2
	movslq	200(%r14), %rax
	cmpl	72(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB1_16
# BB#15:                                # %if.then.47
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	168(%r14), %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, 80(%rsp)
	addq	64(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, 88(%rsp)
	leaq	80(%rsp), %rdi
	movq	%rbx, %rsi
	callq	stream_move
	movl	80(%rsp), %ecx
	subl	168(%r14), %ecx
	movl	%ecx, 200(%r14)
	testl	%eax, %eax
	jne	.LBB1_87
.LBB1_16:                               # %if.end.67
                                        #   in Loop: Header=BB1_2 Depth=2
	incl	196(%r14)
	testl	%r12d, %r12d
	jle	.LBB1_19
# BB#17:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB1_2 Depth=2
	decl	%r12d
	je	.LBB1_18
.LBB1_19:                               # %if.end.75
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	124(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_20
# BB#21:                                # %if.then.78
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%r13d, %r13d
	movq	168(%r14), %rcx
	movq	176(%r14), %rdi
	movq	%rcx, 176(%r14)
	movq	%rdi, 168(%r14)
	movl	%r13d, %ecx
	cmovel	%eax, %ecx
	decl	%ecx
	testl	%eax, %eax
	cmovgl	%ecx, %r13d
	jmp	.LBB1_22
.LBB1_20:                               # %if.end.75.if.end.93_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	168(%r14), %rdi
.LBB1_22:                               # %if.end.93
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$-1, 204(%r14)
	movl	$-1, 200(%r14)
	movl	$0, 208(%r14)
	movl	$0, 188(%r14)
	cmpl	$1, 148(%r14)
	sbbb	%al, %al
	movb	%al, 212(%r14)
	movzbl	%al, %esi
	movq	%rbp, %rdx
	callq	memset
	movl	$0, 216(%r14)
	cmpl	$0, 132(%r14)
	je	.LBB1_23
# BB#24:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$0, 128(%r14)
	je	.LBB1_26
# BB#25:                                #   in Loop: Header=BB1_2 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_27
.LBB1_23:                               #   in Loop: Header=BB1_2 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_27
.LBB1_18:                               #   in Loop: Header=BB1_2 Depth=2
	xorl	%r12d, %r12d
	jmp	.LBB1_29
.LBB1_26:                               # %if.then.111
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	andb	$-8, 116(%r14)
.LBB1_27:                               # %if.end.115thread-pre-split
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	204(%r14), %eax
.LBB1_28:                               # %if.end.115
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%eax, %eax
	jns	.LBB1_57
.LBB1_29:                               # %while.cond.preheader
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebp
	jmp	.LBB1_30
	.align	16, 0x90
.LBB1_31:                               # %do.end.125
                                        #   in Loop: Header=BB1_30 Depth=3
	movl	124(%r14), %edx
	testl	%edx, %edx
	jle	.LBB1_44
# BB#32:                                # %if.then.129
                                        #   in Loop: Header=BB1_30 Depth=3
	movq	(%r15), %rdi
	movl	112(%r14), %esi
	movl	116(%r14), %eax
	testl	%eax, %eax
	jg	.LBB1_42
# BB#33:                                # %if.else
                                        #   in Loop: Header=BB1_30 Depth=3
	movq	8(%r15), %r8
	movq	%r8, %rbx
	subq	%rdi, %rbx
	cmpq	$3, %rbx
	jl	.LBB1_37
# BB#34:                                # %if.then.150
                                        #   in Loop: Header=BB1_30 Depth=3
	shll	$24, %esi
	cmpl	$0, 108(%r14)
	leaq	3(%rdi), %rcx
	movzbl	1(%rdi), %r9d
	movzbl	2(%rdi), %r8d
	movzbl	3(%rdi), %r10d
	je	.LBB1_36
# BB#35:                                # %if.then.152
                                        #   in Loop: Header=BB1_30 Depth=3
	movzbl	byte_reverse_bits(%r9), %ebx
	shll	$16, %ebx
	orl	%esi, %ebx
	movzbl	byte_reverse_bits(%r8), %edi
	shll	$8, %edi
	orl	%ebx, %edi
	movzbl	byte_reverse_bits(%r10), %esi
	orl	%edi, %esi
	addl	$24, %eax
	jmp	.LBB1_43
.LBB1_37:                               # %if.else.184
                                        #   in Loop: Header=BB1_30 Depth=3
	cmpq	%r8, %rdi
	jae	.LBB1_38
# BB#39:                                # %if.then.187
                                        #   in Loop: Header=BB1_30 Depth=3
	movb	1(%rdi), %cl
	movzbl	%cl, %ebx
	cmpl	$0, 108(%r14)
	je	.LBB1_41
# BB#40:                                # %if.then.191
                                        #   in Loop: Header=BB1_30 Depth=3
	movb	byte_reverse_bits(%rbx), %cl
.LBB1_41:                               # %if.end.195
                                        #   in Loop: Header=BB1_30 Depth=3
	incq	%rdi
	movzbl	%cl, %ecx
	shll	$8, %esi
	orl	%ecx, %esi
	addl	$8, %eax
.LBB1_42:                               # %cleanup.221.thread
                                        #   in Loop: Header=BB1_30 Depth=3
	movq	%rdi, %rcx
.LBB1_43:                               # %cleanup.221.thread
                                        #   in Loop: Header=BB1_30 Depth=3
	decl	%eax
	btl	%eax, %esi
	setae	%bl
	movzbl	%bl, %r13d
	movl	%eax, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	subq	%rdi, %rcx
	movq	%rcx, (%r15)
	movb	%al, %cl
	andb	$-8, %cl
	shrl	%cl, %esi
	movl	%esi, 112(%r14)
	andl	$7, %eax
	movl	%eax, 116(%r14)
.LBB1_44:                               # %if.end.227
                                        #   in Loop: Header=BB1_30 Depth=3
	leal	1(%rbp), %ecx
	sarl	$31, %edx
	andl	$-4, %edx
	addl	$5, %edx
	movl	$-1, %eax
	cmpl	%edx, %ebp
	movl	%ecx, %ebp
	jne	.LBB1_30
	jmp	.LBB1_88
.LBB1_36:                               # %if.else.168
                                        #   in Loop: Header=BB1_30 Depth=3
	shll	$16, %r9d
	orl	%esi, %r9d
	shll	$8, %r8d
	orl	%r9d, %r8d
	orl	%r8d, %r10d
	addl	$24, %eax
	movl	%r10d, %esi
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_30:                               # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cf_decode_eol
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jg	.LBB1_31
# BB#45:                                # %while.end
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%r12d, %r12d
	je	.LBB1_46
# BB#47:                                # %if.end.240
                                        #   in Loop: Header=BB1_2 Depth=2
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_89
# BB#48:                                # %if.end.244
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$1, %ebp
	jne	.LBB1_50
# BB#49:                                #   in Loop: Header=BB1_2 Depth=2
	movl	$1, 76(%rsp)            # 4-byte Folded Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB1_57:                               # %if.end.252
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%r13d, %r13d
	js	.LBB1_83
# BB#58:                                # %if.else.260
                                        #   in Loop: Header=BB1_2 Depth=2
	je	.LBB1_59
.LBB1_83:                               # %do.end.271
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cf_decode_2d
	jmp	.LBB1_84
.LBB1_59:                               # %do.end.266
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	cmpl	148(%r14), %eax
	sbbb	%al, %al
	movb	%al, 63(%rsp)           # 1-byte Spill
	xorl	%eax, %eax
	subl	136(%r14), %eax
	andl	$7, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	168(%r14), %r8
	movl	160(%r14), %eax
	leaq	-1(%r8,%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	216(%r14), %ebx
	movq	(%r15), %rbp
	movl	112(%r14), %edi
	movl	116(%r14), %esi
	movslq	204(%r14), %rax
	leaq	(%rax,%r8), %r10
	movl	188(%r14), %r12d
	testl	%ebx, %ebx
	leaq	80(%rsp), %r9
	jg	.LBB1_75
	jmp	.LBB1_62
.LBB1_50:                               # %if.end.244
                                        #   in Loop: Header=BB1_2 Depth=2
	testl	%ebp, %ebp
	jne	.LBB1_51
# BB#56:                                # %sw.bb.245
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	cmpl	$0, 128(%r14)
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	jne	.LBB1_52
	jmp	.LBB1_57
.LBB1_51:                               #   in Loop: Header=BB1_2 Depth=2
	movl	%ebp, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB1_52:                               # %sw.bb.279
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	220(%r14), %ecx
	movl	$-2, %eax
	cmpl	152(%r14), %ecx
	jge	.LBB1_87
# BB#53:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$0, 128(%r14)
	je	.LBB1_87
# BB#54:                                # %land.lhs.true.285
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$0, 124(%r14)
	jns	.LBB1_55
	jmp	.LBB1_87
.LBB1_60:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	20(%rsp), %r12d         # 4-byte Folded Reload
	jle	.LBB1_79
# BB#61:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpq	24(%rsp), %r10          # 8-byte Folded Reload
	ja	.LBB1_79
	.align	16, 0x90
.LBB1_62:                               # %dw.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	subl	%r8d, %r10d
	movl	%r10d, 204(%r14)
	movl	%r12d, 188(%r14)
	movl	$cf_white_decode, %edx
	movl	$8, %ecx
	movl	$4, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r9, %r13
	callq	get_run
	movq	(%r15), %rbp
	movl	112(%r14), %edi
	movl	116(%r14), %esi
	movq	168(%r14), %r8
	movl	204(%r14), %r11d
	movslq	%r11d, %r10
	movl	188(%r14), %r12d
	testl	%eax, %eax
	js	.LBB1_80
# BB#63:                                # %if.end.41.i
                                        #   in Loop: Header=BB1_62 Depth=3
	movl	80(%rsp), %edx
	testl	%edx, %edx
	js	.LBB1_64
# BB#67:                                # %if.end.79.i
                                        #   in Loop: Header=BB1_62 Depth=3
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	movl	%r10d, 204(%r14)
	movl	%r12d, 188(%r14)
	leaq	(%r10,%r8), %rax
	subl	%edx, %r12d
	js	.LBB1_69
# BB#68:                                #   in Loop: Header=BB1_62 Depth=3
	movq	%r13, %r9
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_69:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_62 Depth=3
	movl	%r12d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	andl	$7, %r12d
	movb	$1, %cl
	cmpl	$63, %edx
	movq	%r13, %r9
	jg	.LBB1_71
.LBB1_70:                               # %if.end.20.i.i
                                        #   in Loop: Header=BB1_62 Depth=3
	xorl	%ecx, %ecx
.LBB1_71:                               # %skip_data.exit.i
                                        #   in Loop: Header=BB1_62 Depth=3
	movq	%rbp, (%r15)
	movl	%edi, 112(%r14)
	movl	%esi, 116(%r14)
	subq	%r8, %rax
	movl	%eax, 204(%r14)
	movl	%r12d, 188(%r14)
	cltq
	leaq	(%rax,%r8), %r10
	movl	$-1, %ebx
	testb	%cl, %cl
	jne	.LBB1_62
# BB#72:                                # %if.end.110.i
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$1, %ebx
	cmpq	24(%rsp), %r10          # 8-byte Folded Reload
	jb	.LBB1_75
# BB#73:                                # %land.lhs.true.113.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	20(%rsp), %r12d         # 4-byte Folded Reload
	jle	.LBB1_79
# BB#74:                                # %land.lhs.true.113.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpq	24(%rsp), %r10          # 8-byte Folded Reload
	ja	.LBB1_79
	.align	16, 0x90
.LBB1_75:                               # %db.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %r13d
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	subl	%r8d, %r10d
	movl	%r10d, 204(%r14)
	movl	%r12d, 188(%r14)
	movl	$cf_black_decode, %edx
	movl	$7, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r9, %rbx
	callq	get_run
	movl	%eax, %ecx
	movq	(%r15), %rbp
	movl	112(%r14), %edi
	movl	116(%r14), %esi
	movq	168(%r14), %r8
	movl	204(%r14), %edx
	movl	188(%r14), %r12d
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB1_81
# BB#76:                                # %if.end.151.i
                                        #   in Loop: Header=BB1_75 Depth=3
	movl	$-2, %eax
	cmpl	$0, 80(%rsp)
	js	.LBB1_81
# BB#77:                                # %if.end.155.i
                                        #   in Loop: Header=BB1_75 Depth=3
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	movl	%edx, 204(%r14)
	movl	%r12d, 188(%r14)
	movzbl	63(%rsp), %ecx          # 1-byte Folded Reload
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	invert_data
	movq	%rbx, %r9
	movq	(%r15), %rbp
	movl	112(%r14), %edi
	movl	116(%r14), %esi
	movq	168(%r14), %r8
	movslq	204(%r14), %rcx
	leaq	(%rcx,%r8), %r10
	movl	188(%r14), %r12d
	testl	%eax, %eax
	movl	$2, %ebx
	js	.LBB1_75
# BB#78:                                # %if.end.186.i
                                        #   in Loop: Header=BB1_2 Depth=2
	xorl	%ebx, %ebx
	cmpq	24(%rsp), %r10          # 8-byte Folded Reload
	jae	.LBB1_60
	jmp	.LBB1_62
.LBB1_81:                               # %out.loopexit237.i
                                        #   in Loop: Header=BB1_2 Depth=2
	movslq	%edx, %rcx
	leaq	(%rcx,%r8), %r10
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	%r13d, %ebx
	jmp	.LBB1_82
.LBB1_80:                               # %out.loopexit.i
                                        #   in Loop: Header=BB1_2 Depth=2
	addq	%r8, %r10
	xorl	%eax, %eax
	movl	32(%rsp), %edx          # 4-byte Reload
	jmp	.LBB1_82
.LBB1_64:                               # %if.then.44.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$-3, %edx
	jne	.LBB1_65
# BB#66:                                # %sw.bb.i
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	%esi, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	movl	%r11d, 204(%r14)
	movl	%r12d, 188(%r14)
	movl	$-2, 80(%rsp)
	movl	$-2, %eax
	movl	36(%rsp), %r12d         # 4-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	32(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB1_84
.LBB1_79:                               # %done.i
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	20(%rsp), %r12d         # 4-byte Folded Reload
	movl	$1, %eax
	movl	$-2, %ecx
	cmovll	%ecx, %eax
	cmpq	24(%rsp), %r10          # 8-byte Folded Reload
	cmoval	%ecx, %eax
	xorl	%ebx, %ebx
	movl	32(%rsp), %edx          # 4-byte Reload
	jmp	.LBB1_82
.LBB1_65:                               #   in Loop: Header=BB1_2 Depth=2
	addq	%r8, %r10
	movl	$-2, %eax
	movl	32(%rsp), %edx          # 4-byte Reload
.LBB1_82:                               # %out.i
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	%esi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rbp
	movq	%rbp, (%r15)
	movb	%sil, %cl
	andb	$-8, %cl
	shrl	%cl, %edi
	movl	%edi, 112(%r14)
	andl	$7, %esi
	movl	%esi, 116(%r14)
	subl	%r8d, %r10d
	movl	%r10d, 204(%r14)
	movl	%r12d, 188(%r14)
	movl	%ebx, 216(%r14)
	movl	36(%rsp), %r12d         # 4-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	%edx, %r13d
.LBB1_84:                               # %check
                                        #   in Loop: Header=BB1_2 Depth=2
	cmpl	$-2, %eax
	je	.LBB1_52
# BB#85:                                # %check
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$1, %eax
	je	.LBB1_1
# BB#86:                                # %sw.default.298
	movl	$0, 220(%r14)
.LBB1_87:                               # %cleanup.304
	movl	76(%rsp), %ecx          # 4-byte Reload
.LBB1_88:                               # %cleanup.304
	movl	%ecx, %ebp
.LBB1_89:                               # %cleanup.304
	movl	%r13d, 184(%r14)
	movl	%r12d, 192(%r14)
	movl	%ebp, 208(%r14)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_38:
	movl	%ecx, %eax
	jmp	.LBB1_89
.LBB1_46:
	movl	$-1, %eax
	xorl	%r12d, %r12d
	jmp	.LBB1_89
.Lfunc_end1:
	.size	s_CFD_process, .Lfunc_end1-s_CFD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_CFD_release,@function
s_CFD_release:                          # @s_CFD_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	176(%rbx), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movq	168(%rbx), %rsi
	movq	24(%rdi), %rax
	movl	$.L.str.9, %edx
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	s_CFD_release, .Lfunc_end2-s_CFD_release
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1728                    # 0x6c0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	s_CFD_set_defaults,@function
s_CFD_set_defaults:                     # @s_CFD_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rdi)
	movaps	.LCPI3_0(%rip), %xmm1   # xmm1 = [1728,0,1,0]
	movups	%xmm1, 136(%rdi)
	movl	$0, 152(%rdi)
	movl	$0, 108(%rdi)
	movl	$1, 156(%rdi)
	movups	%xmm0, 168(%rdi)
	movb	$0, 28(%rdi)
	retq
.Lfunc_end3:
	.size	s_CFD_set_defaults, .Lfunc_end3-s_CFD_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	cf_decode_eol,@function
cf_decode_eol:                          # @cf_decode_eol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %r14, -16
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	movl	112(%rdi), %r8d
	movl	116(%rdi), %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jg	.LBB4_10
# BB#2:                                 # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r10, %rax
	subq	%r9, %rax
	cmpq	$3, %rax
	jl	.LBB4_6
# BB#3:                                 # %if.then.6
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$24, %r8d
	cmpl	$0, 108(%rdi)
	leaq	3(%r9), %r11
	movzbl	1(%r9), %eax
	movzbl	2(%r9), %ebx
	movzbl	3(%r9), %r14d
	je	.LBB4_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	byte_reverse_bits(%rax), %eax
	shll	$16, %eax
	orl	%r8d, %eax
	movzbl	byte_reverse_bits(%rbx), %ebx
	shll	$8, %ebx
	orl	%eax, %ebx
	movzbl	byte_reverse_bits(%r14), %r8d
	orl	%ebx, %r8d
	addl	$24, %edx
	movq	%r11, %r9
	jmp	.LBB4_10
.LBB4_6:                                # %if.else.35
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	cmpq	%r10, %r9
	jae	.LBB4_27
# BB#7:                                 # %if.then.38
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	1(%r9), %al
	movzbl	%al, %ebx
	cmpl	$0, 108(%rdi)
	je	.LBB4_9
# BB#8:                                 # %if.then.42
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	byte_reverse_bits(%rbx), %al
.LBB4_9:                                # %if.end.46
                                        #   in Loop: Header=BB4_1 Depth=1
	incq	%r9
	movzbl	%al, %eax
	shll	$8, %r8d
	orl	%eax, %r8d
	addl	$8, %edx
	jmp	.LBB4_10
.LBB4_5:                                # %if.else.21
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$16, %eax
	orl	%r8d, %eax
	shll	$8, %ebx
	orl	%eax, %ebx
	orl	%ebx, %r14d
	addl	$24, %edx
	movq	%r11, %r9
	movl	%r14d, %r8d
	.align	16, 0x90
.LBB4_10:                               # %do.end.55
                                        #   in Loop: Header=BB4_1 Depth=1
	decl	%edx
	btl	%edx, %r8d
	jb	.LBB4_11
# BB#12:                                # %if.end.60
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	%ecx
	cmpl	$11, %ecx
	jl	.LBB4_1
# BB#13:                                # %for.end
	movl	$2, %r11d
	cmpl	$0, 124(%rdi)
	jg	.LBB4_15
# BB#14:                                # %select.mid
	movl	$1, %r11d
	.align	16, 0x90
.LBB4_15:                               # %do.body.65
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r11d, %edx
	jge	.LBB4_24
# BB#16:                                # %if.else.72
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	%r10, %rax
	subq	%r9, %rax
	cmpq	$3, %rax
	jl	.LBB4_20
# BB#17:                                # %if.then.78
                                        #   in Loop: Header=BB4_15 Depth=1
	shll	$24, %r8d
	cmpl	$0, 108(%rdi)
	leaq	3(%r9), %r14
	movzbl	1(%r9), %ecx
	movzbl	2(%r9), %ebx
	movzbl	3(%r9), %eax
	je	.LBB4_19
# BB#18:                                # %if.then.81
                                        #   in Loop: Header=BB4_15 Depth=1
	movzbl	byte_reverse_bits(%rcx), %ecx
	shll	$16, %ecx
	orl	%r8d, %ecx
	movzbl	byte_reverse_bits(%rbx), %ebx
	shll	$8, %ebx
	orl	%ecx, %ebx
	movzbl	byte_reverse_bits(%rax), %r8d
	orl	%ebx, %r8d
	addl	$24, %edx
	movq	%r14, %r9
	jmp	.LBB4_24
	.align	16, 0x90
.LBB4_20:                               # %if.else.116
                                        #   in Loop: Header=BB4_15 Depth=1
	cmpq	%r10, %r9
	jae	.LBB4_26
# BB#21:                                # %if.then.119
                                        #   in Loop: Header=BB4_15 Depth=1
	movb	1(%r9), %al
	movzbl	%al, %ecx
	cmpl	$0, 108(%rdi)
	je	.LBB4_23
# BB#22:                                # %if.then.125
                                        #   in Loop: Header=BB4_15 Depth=1
	movb	byte_reverse_bits(%rcx), %al
.LBB4_23:                               # %if.end.129
                                        #   in Loop: Header=BB4_15 Depth=1
	incq	%r9
	movzbl	%al, %eax
	shll	$8, %r8d
	orl	%eax, %r8d
	addl	$8, %edx
	jmp	.LBB4_24
.LBB4_19:                               # %if.else.100
                                        #   in Loop: Header=BB4_15 Depth=1
	shll	$16, %ecx
	orl	%r8d, %ecx
	shll	$8, %ebx
	orl	%ecx, %ebx
	orl	%ebx, %eax
	addl	$24, %edx
	movq	%r14, %r9
	movl	%eax, %r8d
	.align	16, 0x90
.LBB4_24:                               # %do.end.138
                                        #   in Loop: Header=BB4_15 Depth=1
	decl	%edx
	btl	%edx, %r8d
	jae	.LBB4_15
# BB#25:                                # %for.end.146
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%rsi)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r8d
	movl	%r8d, 112(%rdi)
	andl	$7, %edx
	movl	%edx, 116(%rdi)
	movl	$1, %eax
	jmp	.LBB4_27
.LBB4_11:                               # %if.then.57
	notl	%ecx
	movl	%ecx, %eax
	jmp	.LBB4_27
.LBB4_26:                               # %back
	movl	$1, %eax
	movb	%dl, %cl
	shll	%cl, %eax
	decl	%eax
	andl	%r8d, %eax
	addl	$11, %edx
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r9
	movq	%r9, (%rsi)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %eax
	movl	%eax, 112(%rdi)
	andl	$7, %edx
	movl	%edx, 116(%rdi)
	xorl	%eax, %eax
.LBB4_27:                               # %cleanup
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	cf_decode_eol, .Lfunc_end4-cf_decode_eol
	.cfi_endproc

	.align	16, 0x90
	.type	cf_decode_2d,@function
cf_decode_2d:                           # @cf_decode_2d
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
	subq	$136, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 192
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$255, %edi
	cmpl	$0, 148(%rbx)
	je	.LBB5_2
# BB#1:                                 # %select.mid
	xorl	%edi, %edi
.LBB5_2:                                # %select.end
	movl	%edi, %eax
	notl	%eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movb	212(%rbx), %sil
	xorl	%r13d, %r13d
	subl	136(%rbx), %r13d
	andl	$7, %r13d
	movl	160(%rbx), %r15d
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	168(%rbx), %rbp
	movq	176(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	-1(%rbp,%r15), %rcx
	movq	(%r14), %r9
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movslq	204(%rbx), %rax
	leaq	(%rax,%rbp), %r10
	movl	188(%rbx), %r8d
	movl	%ecx, %eax
	subl	%r10d, %eax
	leal	(%r8,%rax,8), %r12d
	movb	$-96, (%rbp,%r15)
	movl	216(%rbx), %eax
	addl	$2, %eax
	cmpl	$4, %eax
	ja	.LBB5_21
# BB#3:                                 # %select.end
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_43:                               # %sw.bb
	movl	$0, 216(%rbx)
.LBB5_44:                               # %hww.preheader
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	168(%rbx), %rsi
	leaq	132(%rsp), %r15
	.align	16, 0x90
.LBB5_45:                               # %hww
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	%esi, %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	$cf_white_decode, %edx
	movl	$8, %ecx
	movl	$4, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %r9
	callq	get_run
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movl	204(%rbx), %ecx
	movslq	%ecx, %r10
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	js	.LBB5_169
# BB#46:                                # %if.end.766
                                        #   in Loop: Header=BB5_45 Depth=1
	movl	132(%rsp), %edi
	subl	%edi, %r12d
	cmpl	%r13d, %r12d
	jl	.LBB5_160
# BB#47:                                # %if.end.771
                                        #   in Loop: Header=BB5_45 Depth=1
	testl	%edi, %edi
	js	.LBB5_56
# BB#48:                                # %if.end.775
                                        #   in Loop: Header=BB5_45 Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	leaq	(%r10,%rsi), %rax
	subl	%edi, %r8d
	jns	.LBB5_50
# BB#49:                                # %if.then.i.537
                                        #   in Loop: Header=BB5_45 Depth=1
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	andl	$7, %r8d
	movb	$1, %cl
	cmpl	$63, %edi
	jg	.LBB5_51
.LBB5_50:                               # %if.end.20.i.540
                                        #   in Loop: Header=BB5_45 Depth=1
	xorl	%ecx, %ecx
.LBB5_51:                               # %skip_data.exit554
                                        #   in Loop: Header=BB5_45 Depth=1
	movq	%r9, (%r14)
	movl	%r11d, 112(%rbx)
	movl	%edx, 116(%rbx)
	subq	%rsi, %rax
	movl	%eax, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movslq	%eax, %r10
	addq	%rsi, %r10
	testb	%cl, %cl
	jne	.LBB5_45
# BB#52:
	movl	%r13d, 120(%rsp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_4:                                # %sw.bb.16
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$0, 216(%rbx)
	movq	168(%rbx), %rsi
	jmp	.LBB5_5
.LBB5_14:                               # %sw.bb.18
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%r13d, 120(%rsp)        # 4-byte Spill
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movl	$0, 216(%rbx)
	movq	168(%rbx), %rsi
.LBB5_15:                               # %hwb.preheader
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	leaq	132(%rsp), %r15
	movl	124(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %r13d
	.align	16, 0x90
.LBB5_16:                               # %hwb
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	%esi, %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	$cf_black_decode, %edx
	movl	$7, %ecx
	movl	$2, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %r9
	callq	get_run
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movl	204(%rbx), %ebp
	movslq	%ebp, %rcx
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	js	.LBB5_171
# BB#17:                                # %if.end.837
                                        #   in Loop: Header=BB5_16 Depth=1
	movl	132(%rsp), %edi
	subl	%edi, %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jl	.LBB5_161
# BB#18:                                # %if.end.842
                                        #   in Loop: Header=BB5_16 Depth=1
	testl	%edi, %edi
	js	.LBB5_55
# BB#19:                                # %if.end.846
                                        #   in Loop: Header=BB5_16 Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	movl	%ebp, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	callq	invert_data
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movslq	204(%rbx), %rcx
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	leaq	(%rcx,%rsi), %r10
	js	.LBB5_16
# BB#20:                                # %top.loopexit
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	76(%rsp), %edi          # 4-byte Reload
	movl	120(%rsp), %r13d        # 4-byte Reload
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	111(%rsp), %sil         # 1-byte Reload
	jmp	.LBB5_21
.LBB5_178:                              # %sw.bb.20
	movl	$0, 216(%rbx)
.LBB5_38:                               # %hbb.preheader
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movq	168(%rbx), %rsi
	leaq	132(%rsp), %r15
	.align	16, 0x90
.LBB5_39:                               # %hbb
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	%esi, %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	$cf_black_decode, %edx
	movl	$7, %ecx
	movl	$2, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %r9
	callq	get_run
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movl	204(%rbx), %ebp
	movslq	%ebp, %rcx
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	js	.LBB5_173
# BB#40:                                # %if.end.910
                                        #   in Loop: Header=BB5_39 Depth=1
	movl	132(%rsp), %edi
	subl	%edi, %r12d
	cmpl	%r13d, %r12d
	jl	.LBB5_161
# BB#41:                                # %if.end.915
                                        #   in Loop: Header=BB5_39 Depth=1
	testl	%edi, %edi
	js	.LBB5_58
# BB#42:                                # %if.end.919
                                        #   in Loop: Header=BB5_39 Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	movl	%ebp, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	124(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	invert_data
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movslq	204(%rbx), %rcx
	leaq	(%rcx,%rsi), %r10
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	js	.LBB5_39
.LBB5_5:                                # %hbw.preheader
	leaq	132(%rsp), %rbp
	.align	16, 0x90
.LBB5_6:                                # %hbw
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	%esi, %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	$cf_white_decode, %edx
	movl	$8, %ecx
	movl	$4, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %r9
	callq	get_run
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movl	204(%rbx), %ecx
	movslq	%ecx, %r10
	movl	188(%rbx), %r8d
	testl	%eax, %eax
	js	.LBB5_174
# BB#7:                                 # %if.end.981
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	132(%rsp), %edi
	subl	%edi, %r12d
	cmpl	%r13d, %r12d
	jl	.LBB5_160
# BB#8:                                 # %if.end.986
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	8(%r14), %r15
	testl	%edi, %edi
	js	.LBB5_57
# BB#9:                                 # %if.end.990
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	leaq	(%r10,%rsi), %rax
	subl	%edi, %r8d
	jns	.LBB5_11
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	andl	$7, %r8d
	movb	$1, %cl
	cmpl	$63, %edi
	jg	.LBB5_12
.LBB5_11:                               # %if.end.20.i
                                        #   in Loop: Header=BB5_6 Depth=1
	xorl	%ecx, %ecx
.LBB5_12:                               # %skip_data.exit
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	%r9, (%r14)
	movl	%r11d, 112(%rbx)
	movl	%edx, 116(%rbx)
	subq	%rsi, %rax
	movl	%eax, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movslq	%eax, %r10
	addq	%rsi, %r10
	testb	%cl, %cl
	jne	.LBB5_6
# BB#13:
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	111(%rsp), %sil         # 1-byte Reload
	movl	76(%rsp), %edi          # 4-byte Reload
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB5_21
.LBB5_161:                              # %out.loopexit977
	addq	%rcx, %rsi
	movl	$-2, %eax
	jmp	.LBB5_162
.LBB5_160:                              # %out.loopexit974
	addq	%rsi, %r10
	movl	$-2, %eax
	jmp	.LBB5_163
.LBB5_169:                              # %outww
	addq	%rsi, %r10
	movl	$-2, 216(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_163
.LBB5_171:                              # %outwb
	addq	%rcx, %rsi
	movl	$1, 216(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_162
.LBB5_173:                              # %outbb
	addq	%rcx, %rsi
	movl	$2, 216(%rbx)
	xorl	%eax, %eax
.LBB5_162:                              # %out
	movq	%rsi, %r10
	jmp	.LBB5_163
.LBB5_174:                              # %outbw
	addq	%rsi, %r10
	movl	$-1, 216(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_163
.LBB5_56:                               # %if.then.145.loopexit973
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	addq	%rsi, %r10
	jmp	.LBB5_60
.LBB5_55:                               # %if.then.145.loopexit
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rsi), %r10
	movl	120(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB5_59
.LBB5_58:                               # %if.then.145.loopexit978
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rsi), %r10
	jmp	.LBB5_59
.LBB5_57:                               # %if.then.145.loopexit975
	addq	%rsi, %r10
	movq	%r15, 112(%rsp)         # 8-byte Spill
.LBB5_59:                               # %if.then.145
	movq	96(%rsp), %rbp          # 8-byte Reload
.LBB5_60:                               # %if.then.145
	movl	$-4, %r15d
	cmpl	$-4, %edi
	je	.LBB5_64
# BB#61:                                # %if.then.145
	movl	$-2, %eax
	cmpl	$-3, %edi
	jne	.LBB5_163
# BB#62:                                # %sw.bb.146
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	movl	%r10d, %ecx
	subl	%esi, %ecx
	movl	%ecx, 204(%rbx)
	movl	%r8d, 188(%rbx)
.LBB5_163:                              # %out
	movb	111(%rsp), %sil         # 1-byte Reload
.LBB5_164:                              # %out
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	168(%rbx), %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movb	%sil, 212(%rbx)
	cmpl	$-2, %eax
	jne	.LBB5_168
# BB#165:                               # %land.lhs.true.727
	movl	140(%rbx), %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	jle	.LBB5_168
# BB#166:                               # %land.lhs.true.730
	movl	$-1, %eax
	cmpl	%ecx, 196(%rbx)
	jg	.LBB5_168
# BB#167:                               # %select.mid2043
	movl	$-2, %eax
.LBB5_168:                              # %cleanup.1024
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_21:                               # %top
	cmpl	%r13d, %r12d
	jle	.LBB5_22
# BB#23:                                # %do.body.29
	cmpl	$2, %edx
	jle	.LBB5_25
# BB#24:
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	jmp	.LBB5_33
.LBB5_22:                               # %if.then
	movl	$-2, %ecx
	movl	$1, %eax
	cmovll	%ecx, %eax
	jmp	.LBB5_164
.LBB5_25:                               # %if.else
	movq	%rbp, %r15
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rax
	subq	%r9, %rax
	cmpq	$3, %rax
	jl	.LBB5_29
# BB#26:                                # %if.then.41
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	shll	$24, %r11d
	cmpl	$0, 108(%rbx)
	leaq	3(%r9), %rcx
	movzbl	1(%r9), %edi
	movzbl	2(%r9), %eax
	movzbl	3(%r9), %esi
	movq	%r15, %rbp
	je	.LBB5_28
# BB#27:                                # %if.then.43
	movzbl	byte_reverse_bits(%rdi), %edi
	shll	$16, %edi
	orl	%r11d, %edi
	movzbl	byte_reverse_bits(%rax), %eax
	shll	$8, %eax
	orl	%edi, %eax
	movzbl	byte_reverse_bits(%rsi), %r11d
	orl	%eax, %r11d
	addl	$24, %edx
	movl	%edx, %eax
	movq	%rcx, %r9
	jmp	.LBB5_33
.LBB5_29:                               # %if.else.77
	cmpq	%rbp, %r9
	jae	.LBB5_158
# BB#30:                                # %if.then.80
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movb	1(%r9), %al
	movzbl	%al, %ecx
	cmpl	$0, 108(%rbx)
	je	.LBB5_32
# BB#31:                                # %if.then.84
	movb	byte_reverse_bits(%rcx), %al
.LBB5_32:                               # %if.end.88
	incq	%r9
	movzbl	%al, %eax
	shll	$8, %r11d
	orl	%eax, %r11d
	addl	$8, %edx
	movl	%edx, %eax
	movq	%r15, %rbp
	jmp	.LBB5_33
.LBB5_158:                              # %out3
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB5_164
# BB#159:                               # %land.lhs.true.700
	movl	%edi, 76(%rsp)          # 4-byte Spill
	movb	%sil, 111(%rsp)         # 1-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	-1(%rdx), %ecx
	btl	%ecx, %r11d
	movq	%r15, %rbp
	jb	.LBB5_35
	jmp	.LBB5_163
.LBB5_28:                               # %if.else.61
	shll	$16, %edi
	orl	%r11d, %edi
	shll	$8, %eax
	orl	%edi, %eax
	orl	%eax, %esi
	addl	$24, %edx
	movl	%edx, %eax
	movl	%esi, %r11d
	movq	%rcx, %r9
.LBB5_33:                               # %do.end.97
	leal	-3(%rax), %edx
	movl	%r11d, %esi
	movb	%dl, %cl
	shrl	%cl, %esi
	andl	$7, %esi
	cmpl	$3, %esi
	jbe	.LBB5_175
# BB#34:
	movl	%eax, %edx
.LBB5_35:                               # %v0
	decl	%edx
	movl	$3, 132(%rsp)
	movl	$3, %r15d
	jmp	.LBB5_64
.LBB5_175:                              # %do.end.97
	jmpq	*.LJTI5_1(,%rsi,8)
.LBB5_53:                               # %sw.bb.113
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r9
	movq	%r9, (%r14)
	movb	%al, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %eax
	movl	%eax, 116(%rbx)
	subl	168(%rbx), %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	leaq	132(%rsp), %r9
	movl	$cf_2d_decode, %edx
	movl	$7, %ecx
	movl	$4, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	get_run
	movl	%eax, %ecx
	movq	(%r14), %r9
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movq	168(%rbx), %rsi
	movslq	204(%rbx), %rax
	leaq	(%rax,%rsi), %r10
	movl	188(%rbx), %r8d
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB5_163
# BB#54:                                # %rlen_lt_zero
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	132(%rsp), %edi
	testl	%edi, %edi
	movl	%edi, %r15d
	jns	.LBB5_64
	jmp	.LBB5_60
.LBB5_37:                               # %sw.bb.105
	movb	111(%rsp), %sil         # 1-byte Reload
	movzbl	%sil, %eax
	movl	76(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	je	.LBB5_44
	jmp	.LBB5_38
.LBB5_63:                               # %sw.bb.101
	movl	$4, 132(%rsp)
	movl	$4, %r15d
	jmp	.LBB5_64
.LBB5_36:                               # %sw.bb.103
	movl	$2, 132(%rsp)
	movl	$2, %r15d
.LBB5_64:                               # %sw.epilog.187
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rcx
	movq	%r10, %rsi
	subq	%rbp, %rsi
	leaq	(%rcx,%rsi), %rdi
	movl	%r12d, %eax
	andl	$7, %eax
	leaq	1(%rcx,%rsi), %rsi
	cmovneq	%rdi, %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movb	111(%rsp), %dil         # 1-byte Reload
	movzbl	%dil, %ecx
	movb	-1(%rsi), %sil
	xorb	%cl, %sil
	testb	cf_decode_2d.count_bit(%rax), %sil
	je	.LBB5_65
# BB#66:                                # %land.lhs.true
	cmpl	76(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	jne	.LBB5_69
# BB#67:                                # %land.lhs.true
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(,%rcx,8), %ecx
	cmpl	%ecx, %r12d
	jl	.LBB5_69
# BB#68:
	movl	%r12d, %ecx
	jmp	.LBB5_96
.LBB5_65:
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%r12d, %ecx
	jmp	.LBB5_96
.LBB5_69:                               # %do.body.218
	movzbl	%sil, %ecx
	movq	byte_bit_run_length_neg(,%rax,8), %rax
	movzbl	(%rax,%rcx), %edi
	cmpl	$8, %edi
	jb	.LBB5_95
# BB#70:                                # %if.then.227
	cmpb	$0, 111(%rsp)           # 1-byte Folded Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %sil
	je	.LBB5_73
# BB#71:                                # %for.cond.270.preheader
	testb	%sil, %sil
	je	.LBB5_83
# BB#72:
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB5_91:                               # %if.then.273
	notb	%sil
.LBB5_92:                               # %if.end.314
	incq	%rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_93
.LBB5_73:                               # %for.cond.preheader
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB5_75
# BB#74:
	incq	48(%rsp)                # 8-byte Folded Spill
.LBB5_93:                               # %if.end.314
	addl	$-8, %edi
.LBB5_94:                               # %if.end.314
	movzbl	%sil, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	addl	%eax, %edi
.LBB5_95:                               # %if.end.319
	movl	%r12d, %ecx
	subl	%edi, %ecx
	cmpl	%r13d, %ecx
	cmovll	%r13d, %ecx
	movb	111(%rsp), %dil         # 1-byte Reload
.LBB5_96:                               # %if.end.330
	cmpl	%r13d, %ecx
	jne	.LBB5_98
# BB#97:
	movl	%r13d, %ecx
	jmp	.LBB5_128
.LBB5_98:                               # %do.body.337
	movq	%r15, %rdi
	movzbl	%sil, %eax
	xorq	$255, %rax
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %r15d
	cmpl	$8, %r15d
	jb	.LBB5_99
# BB#100:                               # %if.then.348
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %sil
	movb	111(%rsp), %dil         # 1-byte Reload
	testb	%dil, %dil
	je	.LBB5_101
# BB#113:                               # %if.else.408
	movq	%rax, %rcx
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB5_115
# BB#114:                               # %if.then.413
	notb	%sil
	incq	%rcx
	movl	%r15d, %eax
	addl	$-8, %eax
	movq	%rcx, %rbp
	jmp	.LBB5_126
.LBB5_99:
	movl	%r15d, %eax
	movq	%rdi, %r15
	movb	111(%rsp), %dil         # 1-byte Reload
	jmp	.LBB5_127
.LBB5_101:                              # %if.then.352
	leaq	1(%rax), %rbp
	testb	%sil, %sil
	je	.LBB5_103
# BB#102:                               # %if.then.355
	movl	%r15d, %eax
	addl	$-8, %eax
	jmp	.LBB5_126
.LBB5_115:                              # %if.else.420
	movzbl	1(%rcx), %esi
	cmpl	$255, %esi
	je	.LBB5_116
# BB#177:                               # %if.then.425
	notb	%sil
	addq	$2, %rcx
	movq	%rcx, %rbp
	movl	%r15d, %eax
	jmp	.LBB5_126
.LBB5_83:
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB5_84:                               # %if.end.280
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rax), %sil
	testb	%sil, %sil
	jne	.LBB5_85
# BB#86:                                # %if.end.289
                                        #   in Loop: Header=BB5_84 Depth=1
	movb	2(%rax), %sil
	testb	%sil, %sil
	jne	.LBB5_87
# BB#88:                                # %if.end.299
                                        #   in Loop: Header=BB5_84 Depth=1
	movb	3(%rax), %sil
	testb	%sil, %sil
	jne	.LBB5_89
# BB#90:                                # %for.inc.310
                                        #   in Loop: Header=BB5_84 Depth=1
	addl	$32, %edi
	movb	4(%rax), %sil
	addq	$4, %rax
	testb	%sil, %sil
	je	.LBB5_84
	jmp	.LBB5_91
.LBB5_103:                              # %if.else.359
	movb	(%rbp), %sil
	testb	%sil, %sil
	je	.LBB5_104
# BB#176:                               # %if.then.362
	addq	$2, %rax
	movq	%rax, %rbp
	movl	%r15d, %eax
	jmp	.LBB5_126
.LBB5_75:                               # %if.end.240.preheader
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	$4, %rcx
.LBB5_76:                               # %if.end.240
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movzbl	-3(%rax), %esi
	cmpl	$255, %esi
	jne	.LBB5_77
# BB#78:                                # %if.end.248
                                        #   in Loop: Header=BB5_76 Depth=1
	movzbl	-2(%rax), %esi
	leaq	-1(%rax), %rcx
	cmpl	$255, %esi
	jne	.LBB5_79
# BB#80:                                # %if.end.257
                                        #   in Loop: Header=BB5_76 Depth=1
	movzbl	(%rcx), %esi
	cmpl	$255, %esi
	jne	.LBB5_81
# BB#82:                                # %for.inc
                                        #   in Loop: Header=BB5_76 Depth=1
	addl	$32, %edi
	movzbl	(%rax), %esi
	leaq	4(%rax), %rcx
	cmpl	$255, %esi
	je	.LBB5_76
	jmp	.LBB5_92
.LBB5_116:                              # %while.cond.432.preheader
	movl	%r13d, 120(%rsp)        # 4-byte Spill
	movl	%r15d, %r13d
	addl	$-32, %r13d
	movq	%rcx, %rsi
.LBB5_117:                              # %while.cond.432
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	movl	%r13d, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movb	2(%rax), %sil
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movb	3(%rax), %bpl
	movb	%bpl, %r13b
	andb	%sil, %r13b
	leaq	4(%rax), %rcx
	movb	4(%rax), %r15b
	andb	%r15b, %r13b
	movb	5(%rax), %dil
	andb	%dil, %r13b
	movzbl	%r13b, %esi
	movl	%esi, 48(%rsp)          # 4-byte Spill
	movq	%rcx, %rsi
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	32(%rcx), %r13d
	cmpl	$255, 48(%rsp)          # 4-byte Folded Reload
	je	.LBB5_117
# BB#118:                               # %while.end.449
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movb	%dil, 7(%rsp)           # 1-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %edi
	cmpl	$255, %edi
	je	.LBB5_120
# BB#119:                               # %if.then.454
	movq	8(%rsp), %rbp           # 8-byte Reload
	addq	$3, %rbp
	movl	28(%rsp), %ecx          # 4-byte Reload
	notb	%cl
	addl	$8, %r13d
	movl	%r13d, %eax
	movl	120(%rsp), %r13d        # 4-byte Reload
	movb	111(%rsp), %dil         # 1-byte Reload
	movl	%ecx, %esi
	jmp	.LBB5_126
.LBB5_104:                              # %while.cond.preheader
	movl	%r13d, 120(%rsp)        # 4-byte Spill
	movl	%r15d, %esi
	addl	$-32, %esi
	movq	%rax, %rcx
.LBB5_105:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movb	2(%rax), %cl
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movb	3(%rax), %r15b
	movb	%r15b, %r13b
	orb	%cl, %r13b
	leaq	4(%rax), %rcx
	movb	4(%rax), %bpl
	orb	%bpl, %r13b
	movb	5(%rax), %dil
	leal	32(%rsi), %esi
	orb	%dil, %r13b
	je	.LBB5_105
# BB#106:                               # %while.end
	movb	%r15b, %r13b
	movb	%dil, 8(%rsp)           # 1-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	28(%rsp), %ecx          # 4-byte Reload
	testb	%cl, %cl
	movl	%ecx, %r15d
	je	.LBB5_108
# BB#107:                               # %if.then.381
	movq	%rax, %rbp
	addq	$3, %rbp
	addl	$8, %esi
	movl	%esi, %eax
	movl	120(%rsp), %r13d        # 4-byte Reload
	movb	111(%rsp), %dil         # 1-byte Reload
	movl	%r15d, %esi
	jmp	.LBB5_126
.LBB5_85:                               # %if.then.283
	notb	%sil
	addq	$2, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_94
.LBB5_87:                               # %if.then.292
	notb	%sil
	addq	$3, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addl	$8, %edi
	jmp	.LBB5_94
.LBB5_89:                               # %if.then.302
	notb	%sil
	addq	$4, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addl	$16, %edi
	jmp	.LBB5_94
.LBB5_120:                              # %if.else.461
	movl	%r13d, %eax
	movzbl	%bpl, %esi
	cmpl	$255, %esi
	movl	120(%rsp), %r13d        # 4-byte Reload
	movb	111(%rsp), %dil         # 1-byte Reload
	je	.LBB5_122
# BB#121:                               # %if.then.466
	notb	%bpl
	addl	$16, %eax
	movb	%bpl, %sil
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB5_126
.LBB5_77:
	addq	$-2, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_94
.LBB5_79:                               # %if.then.253
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	addl	$8, %edi
	jmp	.LBB5_94
.LBB5_81:                               # %if.then.262
	addl	$16, %edi
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_94
.LBB5_108:                              # %if.else.385
	movb	%r13b, %cl
	testb	%cl, %cl
	movl	120(%rsp), %r13d        # 4-byte Reload
	je	.LBB5_110
# BB#109:                               # %if.then.388
	movl	%esi, %eax
	addl	$16, %eax
	movb	%cl, %sil
	movq	48(%rsp), %rbp          # 8-byte Reload
	movb	111(%rsp), %dil         # 1-byte Reload
	jmp	.LBB5_126
.LBB5_122:                              # %if.else.473
	movzbl	%r15b, %esi
	cmpl	$255, %esi
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB5_124
# BB#123:                               # %if.then.478
	addq	$5, %rbp
	notb	%r15b
	addl	$24, %eax
	movb	%r15b, %sil
	jmp	.LBB5_126
.LBB5_110:                              # %if.else.392
	testb	%bpl, %bpl
	movb	111(%rsp), %dil         # 1-byte Reload
	je	.LBB5_112
# BB#111:                               # %if.then.395
	movq	%rax, %rcx
	addq	$5, %rcx
	movl	%esi, %eax
	addl	$24, %eax
	movb	%bpl, %sil
	movq	%rcx, %rbp
	jmp	.LBB5_126
.LBB5_124:                              # %if.else.485
	addl	$64, %ecx
	movb	7(%rsp), %al            # 1-byte Reload
	notb	%al
	addq	$6, %rbp
	jmp	.LBB5_125
.LBB5_112:                              # %if.else.399
	movq	32(%rsp), %rcx          # 8-byte Reload
	addl	$64, %ecx
	movq	%rax, %rbp
	addq	$6, %rbp
	movb	8(%rsp), %al            # 1-byte Reload
.LBB5_125:                              # %if.end.497
	movb	%al, %sil
	movl	%ecx, %eax
.LBB5_126:                              # %if.end.497
	movzbl	%sil, %ecx
	xorq	$255, %rcx
	movzbl	byte_bit_run_length_0(%rcx), %ecx
	addl	%ecx, %eax
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB5_127:                              # %if.end.504
	movq	16(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	cmpl	%r13d, %ecx
	cmovll	%r13d, %ecx
.LBB5_128:                              # %if.end.515
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	cmpl	$-4, %r15d
	movq	%r15, %rax
	jne	.LBB5_153
# BB#129:                               # %if.then.518
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	%r13d, %ecx
	movl	%r13d, %r15d
	movl	44(%rsp), %ebp          # 4-byte Reload
	je	.LBB5_154
# BB#130:                               # %do.body.525
	movzbl	%sil, %eax
	movq	%rcx, %rsi
	movq	%rsi, %r13
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	$8, %esi
	jb	.LBB5_152
# BB#131:                               # %if.then.534
	testb	%dil, %dil
	movq	48(%rsp), %rdi          # 8-byte Reload
	movb	(%rdi), %al
	je	.LBB5_136
# BB#132:                               # %for.cond.580.preheader
	testb	%al, %al
	jne	.LBB5_149
# BB#133:                               # %if.end.590.preheader
	addq	$4, %rdi
.LBB5_134:                              # %if.end.590
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rdi), %al
	testb	%al, %al
	jne	.LBB5_135
# BB#144:                               # %if.end.599
                                        #   in Loop: Header=BB5_134 Depth=1
	movb	-2(%rdi), %al
	testb	%al, %al
	jne	.LBB5_145
# BB#146:                               # %if.end.609
                                        #   in Loop: Header=BB5_134 Depth=1
	movb	-1(%rdi), %al
	testb	%al, %al
	jne	.LBB5_147
# BB#148:                               # %for.inc.620
                                        #   in Loop: Header=BB5_134 Depth=1
	addl	$32, %esi
	movb	(%rdi), %al
	addq	$4, %rdi
	testb	%al, %al
	je	.LBB5_134
.LBB5_149:                              # %if.then.583
	notb	%al
	jmp	.LBB5_150
.LBB5_153:                              # %if.else.641
	movl	%r13d, %r15d
	leal	-3(%rcx,%rax), %r13d
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	44(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB5_154
.LBB5_136:                              # %for.cond.539.preheader
	movzbl	%al, %ecx
	cmpl	$255, %ecx
	jne	.LBB5_150
# BB#137:                               # %if.end.548.preheader
	addq	$4, %rdi
.LBB5_138:                              # %if.end.548
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdi), %eax
	cmpl	$255, %eax
	jne	.LBB5_151
# BB#139:                               # %if.end.556
                                        #   in Loop: Header=BB5_138 Depth=1
	movzbl	-2(%rdi), %eax
	cmpl	$255, %eax
	jne	.LBB5_140
# BB#141:                               # %if.end.565
                                        #   in Loop: Header=BB5_138 Depth=1
	movzbl	-1(%rdi), %eax
	cmpl	$255, %eax
	jne	.LBB5_142
# BB#143:                               # %for.inc.575
                                        #   in Loop: Header=BB5_138 Depth=1
	addl	$32, %esi
	movzbl	(%rdi), %eax
	addq	$4, %rdi
	cmpl	$255, %eax
	je	.LBB5_138
.LBB5_150:                              # %if.end.624
	addl	$-8, %esi
.LBB5_151:                              # %if.end.624
	movzbl	%al, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	addl	%eax, %esi
.LBB5_152:                              # %if.end.629
	subl	%esi, %r13d
	cmpl	%r15d, %r13d
	cmovll	%r15d, %r13d
.LBB5_154:                              # %if.end.650
	movl	76(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %ebp
	jne	.LBB5_156
# BB#155:                               # %if.then.655
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %r10
	subq	%rax, %r10
	movl	%r13d, %r8d
	andl	$7, %r8d
	jmp	.LBB5_157
.LBB5_156:                              # %if.else.661
	subl	%r13d, %r12d
	movl	%r12d, 128(%rsp)
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r9
	movq	%r9, (%r14)
	movb	%dl, %cl
	andb	$-8, %cl
	shrl	%cl, %r11d
	movl	%r11d, 112(%rbx)
	andl	$7, %edx
	movl	%edx, 116(%rbx)
	subl	168(%rbx), %r10d
	movl	%r10d, 204(%rbx)
	movl	%r8d, 188(%rbx)
	movl	124(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %ecx
	leaq	128(%rsp), %rdx
	movl	%ebp, %r12d
	movl	%edi, %ebp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	invert_data
	movl	%ebp, %edi
	movl	%r12d, %ebp
	movq	(%r14), %r9
	movq	8(%r14), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	112(%rbx), %r11d
	movl	116(%rbx), %edx
	movslq	204(%rbx), %r10
	addq	168(%rbx), %r10
	movl	188(%rbx), %r8d
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB5_157:                              # %if.end.690
	movq	56(%rsp), %rax          # 8-byte Reload
	sarl	$31, %eax
	xorl	%eax, %ebp
	notb	%bpl
	movb	%bpl, %sil
	movl	%r13d, %r12d
	movl	%r15d, %r13d
	movq	96(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB5_21
.LBB5_135:                              # %if.then.593
	notb	%al
	jmp	.LBB5_151
.LBB5_145:                              # %if.then.602
	notb	%al
	addl	$8, %esi
	jmp	.LBB5_151
.LBB5_147:                              # %if.then.612
	notb	%al
	addl	$16, %esi
	jmp	.LBB5_151
.LBB5_140:                              # %if.then.561
	addl	$8, %esi
	jmp	.LBB5_151
.LBB5_142:                              # %if.then.570
	addl	$16, %esi
	jmp	.LBB5_151
.Lfunc_end5:
	.size	cf_decode_2d, .Lfunc_end5-cf_decode_2d
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_43
	.quad	.LBB5_4
	.quad	.LBB5_21
	.quad	.LBB5_14
	.quad	.LBB5_178
.LJTI5_1:
	.quad	.LBB5_53
	.quad	.LBB5_37
	.quad	.LBB5_63
	.quad	.LBB5_36

	.text
	.align	16, 0x90
	.type	get_run,@function
get_run:                                # @get_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%ecx, %r10d
	movq	(%rsi), %rax
	movq	8(%rsi), %r15
	movl	112(%rdi), %r12d
	movl	116(%rdi), %ebx
	movl	204(%rdi), %r11d
	movl	188(%rdi), %r14d
	cmpl	%r10d, %ebx
	jge	.LBB6_1
# BB#2:                                 # %if.else
	movq	%r15, %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	jl	.LBB6_5
# BB#3:                                 # %if.then.4
	shll	$24, %r12d
	cmpl	$0, 108(%rdi)
	leaq	3(%rax), %r13
	movzbl	1(%rax), %ebp
	movzbl	2(%rax), %ecx
	movzbl	3(%rax), %eax
	je	.LBB6_13
# BB#4:                                 # %if.then.5
	movzbl	byte_reverse_bits(%rbp), %ebp
	shll	$16, %ebp
	orl	%r12d, %ebp
	movzbl	byte_reverse_bits(%rcx), %ecx
	shll	$8, %ecx
	orl	%ebp, %ecx
	movzbl	byte_reverse_bits(%rax), %r12d
	orl	%ecx, %r12d
	addl	$24, %ebx
	jmp	.LBB6_14
.LBB6_1:
	movq	%rax, %r13
	jmp	.LBB6_14
.LBB6_5:                                # %if.else.34
	cmpq	%r15, %rax
	jae	.LBB6_9
# BB#6:                                 # %if.then.37
	movb	1(%rax), %cl
	movzbl	%cl, %ebp
	cmpl	$0, 108(%rdi)
	je	.LBB6_8
# BB#7:                                 # %if.then.41
	movb	byte_reverse_bits(%rbp), %cl
.LBB6_8:                                # %if.end.45
	incq	%rax
	movzbl	%cl, %ecx
	shll	$8, %r12d
	orl	%ecx, %r12d
	addl	$8, %ebx
	movq	%rax, %r13
	jmp	.LBB6_14
.LBB6_9:                                # %if.else.49
	cmpl	%r8d, %ebx
	jl	.LBB6_19
# BB#10:                                # %if.end.53
	movslq	%ebx, %rcx
	movzbl	byte_right_mask(%rcx), %r8d
	andl	%r12d, %r8d
	subl	%ebx, %r10d
	movb	%r10b, %cl
	shll	%cl, %r8d
	movzwl	2(%rdx,%r8,4), %ebp
	cmpl	%ebx, %ebp
	jg	.LBB6_19
# BB#11:
	leaq	(%rdx,%r8,4), %rdx
	jmp	.LBB6_12
.LBB6_13:                               # %if.else.19
	shll	$16, %ebp
	orl	%r12d, %ebp
	shll	$8, %ecx
	orl	%ebp, %ecx
	orl	%ecx, %eax
	addl	$24, %ebx
	movl	%eax, %r12d
.LBB6_14:                               # %if.end.67
	movl	%ebx, %r8d
	subl	%r10d, %r8d
	movl	%r12d, %eax
	movb	%r8b, %cl
	shrl	%cl, %eax
	movl	$1, %ebp
	movb	%r10b, %cl
	shll	%cl, %ebp
	decl	%ebp
	andl	%eax, %ebp
	movq	%rdx, %rax
	leaq	(%rax,%rbp,4), %rdx
	movzwl	2(%rax,%rbp,4), %ebp
	cmpl	%r10d, %ebp
	jle	.LBB6_15
# BB#16:                                # %do.end.81
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%r9, -8(%rsp)           # 8-byte Spill
	cmpl	%ebx, %ebp
	jle	.LBB6_20
# BB#17:                                # %lor.lhs.false
	movq	%r15, %rax
	subq	%r13, %rax
	movl	%r11d, %ecx
	movl	%ebx, %r11d
	notl	%r11d
	movl	%r14d, %r9d
	movl	%ebp, %r14d
	addl	%r11d, %r14d
	movl	%ecx, %r11d
	sarl	$3, %r14d
	movslq	%r14d, %rcx
	movl	%r9d, %r14d
	cmpq	%rcx, %rax
	jle	.LBB6_18
.LBB6_20:                               # %if.end.94
	movslq	%r10d, %rax
	subq	%rax, %rbp
	cmpl	%ebp, %r8d
	jge	.LBB6_30
# BB#21:                                # %if.else.104
	movq	%r15, %rax
	subq	%r13, %rax
	cmpq	$3, %rax
	jl	.LBB6_25
# BB#22:                                # %if.then.110
	shll	$24, %r12d
	cmpl	$0, 108(%rdi)
	leaq	3(%r13), %rax
	movzbl	1(%r13), %ebx
	movzbl	2(%r13), %r15d
	movzbl	3(%r13), %r10d
	je	.LBB6_24
# BB#23:                                # %if.then.113
	movzbl	byte_reverse_bits(%rbx), %ecx
	shll	$16, %ecx
	orl	%r12d, %ecx
	movzbl	byte_reverse_bits(%r15), %ebx
	shll	$8, %ebx
	orl	%ecx, %ebx
	movzbl	byte_reverse_bits(%r10), %r12d
	orl	%ebx, %r12d
	addl	$24, %r8d
	jmp	.LBB6_31
.LBB6_15:
	movq	%r13, %rax
.LBB6_12:                               # %do.end.190
	subl	%ebp, %ebx
	movl	%ebx, %r8d
	jmp	.LBB6_32
.LBB6_25:                               # %if.else.148
	cmpq	%r15, %r13
	jae	.LBB6_26
# BB#27:                                # %if.then.151
	movb	1(%r13), %al
	movzbl	%al, %ebx
	cmpl	$0, 108(%rdi)
	je	.LBB6_29
# BB#28:                                # %if.then.157
	movb	byte_reverse_bits(%rbx), %al
.LBB6_29:                               # %if.end.161
	incq	%r13
	movzbl	%al, %eax
	shll	$8, %r12d
	orl	%eax, %r12d
	addl	$8, %r8d
.LBB6_30:                               # %do.end.170
	movq	%r13, %rax
.LBB6_31:                               # %do.end.170
	movswl	(%rdx), %r9d
	movl	%r8d, %ecx
	subl	%ebp, %ecx
	movl	%r12d, %ebx
	shrl	%cl, %ebx
	movzbl	byte_right_mask(%rbp), %ecx
	andl	%ebx, %ecx
	addl	%r9d, %ecx
	movq	-16(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%rcx,4), %rdx
	movzwl	2(%rbp,%rcx,4), %ecx
	subl	%ecx, %r8d
	movq	-8(%rsp), %r9           # 8-byte Reload
.LBB6_32:                               # %if.end.192
	movswl	(%rdx), %ecx
	movl	%ecx, (%r9)
	movl	%r8d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movq	%rax, (%rsi)
	movb	%r8b, %cl
	andb	$-8, %cl
	shrl	%cl, %r12d
	xorl	%eax, %eax
	movl	%r8d, %ebx
	jmp	.LBB6_33
.LBB6_26:
	movl	%r8d, %ebx
.LBB6_18:
	movq	%r13, %rax
.LBB6_19:                               # %outl
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movq	%rax, (%rsi)
	movb	%bl, %cl
	andb	$-8, %cl
	shrl	%cl, %r12d
	movl	$-1, %eax
.LBB6_33:                               # %cleanup
	movl	%r12d, 112(%rdi)
	andl	$7, %ebx
	movl	%ebx, 116(%rdi)
	movl	%r11d, 204(%rdi)
	movl	%r14d, 188(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_24:                               # %if.else.132
	shll	$16, %ebx
	orl	%r12d, %ebx
	shll	$8, %r15d
	orl	%ebx, %r15d
	orl	%r15d, %r10d
	addl	$24, %r8d
	movl	%r10d, %r12d
	jmp	.LBB6_31
.Lfunc_end6:
	.size	get_run, .Lfunc_end6-get_run
	.cfi_endproc

	.align	16, 0x90
	.type	invert_data,@function
invert_data:                            # @invert_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 80
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movl	%ecx, %r8d
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	movl	112(%rbx), %r9d
	movl	116(%rbx), %r13d
	movslq	204(%rbx), %rdi
	movq	168(%rbx), %rax
	addq	%rdi, %rax
	movl	188(%rbx), %edx
	movl	(%r12), %ecx
	movl	%edx, %ebp
	subl	%ecx, %ebp
	jge	.LBB7_19
# BB#1:                                 # %if.then
	testl	%edi, %edi
	js	.LBB7_3
# BB#2:                                 # %if.then.5
	movl	$1, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	addl	$255, %edi
	movzbl	(%rax), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%rax)
	movl	(%r12), %ecx
.LBB7_3:                                # %if.end
	leaq	1(%rax), %r15
	movl	%ecx, %edi
	subl	%edx, %edi
	movl	%edi, (%r12)
	movl	%edi, %edx
	sarl	$3, %edx
	cmpl	$7, %edx
	ja	.LBB7_15
# BB#4:                                 # %if.end
	jmpq	*.LJTI7_0(,%rdx,8)
.LBB7_5:                                # %sw.bb
	cmpl	$63, %ecx
	jle	.LBB7_6
.LBB7_15:                               # %d
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movzbl	%r8b, %esi
	movslq	%edx, %rdx
	movq	%r15, %rdi
	callq	memset
	movl	(%r12), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rdx
	addq	%r15, %rdx
	andl	$7, %eax
	movl	%eax, (%r12)
	je	.LBB7_16
# BB#17:                                # %if.else.44
	movl	$8, %ebp
	subl	%eax, %ebp
	movl	$255, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	movzbl	(%rdx), %ecx
	xorl	%eax, %ecx
	movb	%cl, (%rdx)
	jmp	.LBB7_18
.LBB7_19:                               # %if.else.64
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movb	%bpl, %cl
	shll	%cl, %edx
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%rax)
	movq	%rax, %r15
	jmp	.LBB7_20
.LBB7_16:                               # %if.then.42
	decq	%rdx
	xorl	%ebp, %ebp
.LBB7_18:                               # %if.end.50
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %esi          # 4-byte Reload
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r14
	movq	%r14, (%rcx)
	movb	%r13b, %cl
	andb	$-8, %cl
	shrl	%cl, %esi
	movl	%esi, 112(%rbx)
	andl	$7, %r13d
	movl	%r13d, 116(%rbx)
	subq	168(%rbx), %rdx
	movl	$-1, %eax
	movq	%rdx, %r15
	jmp	.LBB7_21
.LBB7_6:                                # %if.end.12
	movb	%r8b, (%r15)
	movq	%r15, %rax
	leaq	1(%r15), %r15
.LBB7_7:                                # %sw.bb.14
	movq	%rax, %rcx
	addq	$2, %rcx
	movb	%r8b, (%r15)
	movq	%r15, %rax
	movq	%rcx, %r15
.LBB7_8:                                # %sw.bb.16
	movq	%rax, %rcx
	addq	$2, %rcx
	movb	%r8b, (%r15)
	movq	%r15, %rax
	movq	%rcx, %r15
.LBB7_9:                                # %sw.bb.18
	movq	%rax, %rcx
	addq	$2, %rcx
	movb	%r8b, (%r15)
	movq	%r15, %rax
	movq	%rcx, %r15
.LBB7_10:                               # %sw.bb.20
	movq	%rax, %rcx
	addq	$2, %rcx
	movb	%r8b, (%r15)
	movq	%r15, %rax
	movq	%rcx, %r15
.LBB7_11:                               # %sw.bb.22
	movq	%rax, %rcx
	addq	$2, %rcx
	movb	%r8b, (%r15)
	movq	%r15, %rax
	movq	%rcx, %r15
.LBB7_12:                               # %sw.bb.24
	movb	%r8b, (%r15)
	movl	(%r12), %edi
	xorl	%ebp, %ebp
	andl	$7, %edi
	movl	%edi, (%r12)
	je	.LBB7_20
# BB#13:                                # %if.end.26
	addq	$2, %rax
	movq	%rax, %r15
.LBB7_14:                               # %sw.bb.28
	movl	$8, %ebp
	subl	%edi, %ebp
	movl	$255, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	movzbl	(%r15), %ecx
	xorl	%eax, %ecx
	movb	%cl, (%r15)
.LBB7_20:                               # %if.end.72
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	subq	%rax, %r14
	movq	%r14, (%rsi)
	movb	%r13b, %cl
	andb	$-8, %cl
	shrl	%cl, %r9d
	movl	%r9d, 112(%rbx)
	andl	$7, %r13d
	movl	%r13d, 116(%rbx)
	subq	168(%rbx), %r15
	xorl	%eax, %eax
.LBB7_21:                               # %cleanup
	movl	%r15d, 204(%rbx)
	movl	%ebp, 188(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	invert_data, .Lfunc_end7-invert_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_14
	.quad	.LBB7_12
	.quad	.LBB7_11
	.quad	.LBB7_10
	.quad	.LBB7_9
	.quad	.LBB7_8
	.quad	.LBB7_7
	.quad	.LBB7_5

	.type	st_CFD_state,@object    # @st_CFD_state
	.align	8
st_CFD_state:
	.long	240                     # 0xf0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cfd_reloc_ptrs
	.size	st_CFD_state, 64

	.type	s_CFD_template,@object  # @s_CFD_template
	.globl	s_CFD_template
	.align	8
s_CFD_template:
	.quad	st_CFD_state
	.quad	s_CFD_init
	.quad	s_CFD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_CFD_release
	.quad	s_CFD_set_defaults
	.quad	0
	.size	s_CFD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CCITTFaxDecode state"
	.size	.L.str, 21

	.type	cfd_reloc_ptrs,@object  # @cfd_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cfd_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cfd_enum_ptrs
	.size	cfd_reloc_ptrs, 24

	.type	cfd_enum_ptrs,@object   # @cfd_enum_ptrs
	.align	2
cfd_enum_ptrs:
	.short	0                       # 0x0
	.short	168                     # 0xa8
	.short	0                       # 0x0
	.short	176                     # 0xb0
	.size	cfd_enum_ptrs, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"CFD lbuf"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CFD lprev"
	.size	.L.str.2, 10

	.type	cf_decode_2d.count_bit,@object # @cf_decode_2d.count_bit
	.section	.rodata.cst8,"aM",@progbits,8
cf_decode_2d.count_bit:
	.ascii	"\200\001\002\004\b\020 @"
	.size	cf_decode_2d.count_bit, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"CFD lprev(close)"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"CFD lbuf(close)"
	.size	.L.str.9, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
