	.text
	.file	"scfe.bc"
	.align	16, 0x90
	.type	s_CFE_init,@function
s_CFE_init:                             # @s_CFE_init
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
	movl	136(%rbx), %r14d
	movl	$9, %r15d
	cmpl	$0, 124(%rbx)
	je	.LBB0_2
# BB#1:                                 # %select.mid
	movl	$12, %r15d
.LBB0_2:                                # %select.end
	movl	156(%rbx), %ecx
	leal	-1(%rcx), %eax
	leal	7(%r14), %edx
	sarl	$3, %edx
	testl	%ecx, %eax
	leal	-1(%rcx,%rdx), %ebp
	je	.LBB0_4
# BB#3:                                 # %cond.true
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebp
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false
	negl	%ecx
	andl	%ecx, %ebp
.LBB0_5:                                # %cond.end
	movl	%ebp, 160(%rbx)
	movl	$0, 112(%rbx)
	movl	$32, 116(%rbx)
	movq	$0, 192(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movl	$-2, %r12d
	cmpl	$54613333, %r14d        # imm = 0x3415555
	jg	.LBB0_19
# BB#6:                                 # %if.end
	imull	%r14d, %r15d
	sarl	$4, %r15d
	addl	$20, %r15d
	movq	8(%rbx), %rdi
	leal	4(%rbp), %r13d
	movl	$.L.str.1, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 168(%rbx)
	movq	8(%rbx), %rdi
	movl	$.L.str.2, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, 192(%rbx)
	testq	%rax, %rax
	je	.LBB0_8
# BB#7:                                 # %if.end
	movq	168(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_8
# BB#9:                                 # %if.end.35
	movslq	%ebp, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	addq	%rax, %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	cmpl	$0, 124(%rbx)
	je	.LBB0_18
# BB#10:                                # %if.then.40
	movq	8(%rbx), %rdi
	movl	$.L.str.3, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 176(%rbx)
	testq	%rax, %rax
	je	.LBB0_11
# BB#13:                                # %if.end.51
	xorl	%esi, %esi
	cmpl	$0, 148(%rbx)
	jne	.LBB0_15
# BB#14:                                # %select.mid98
	movl	$255, %esi
.LBB0_15:                               # %select.end97
	movslq	%r13d, %rdx
	movq	%rax, %rdi
	callq	memset
	andl	$7, %r14d
	je	.LBB0_17
# BB#16:                                # %if.then.59
	movl	$128, %eax
	movb	%r14b, %cl
	shrl	%cl, %eax
	movq	176(%rbx), %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rdx, %rsi
	movzbl	-1(%rsi,%rcx), %edx
	xorl	%eax, %edx
	movb	%dl, -1(%rsi,%rcx)
	jmp	.LBB0_18
.LBB0_8:                                # %if.then.34
	movq	8(%rbx), %rdi
	movq	176(%rbx), %rsi
	jmp	.LBB0_12
.LBB0_11:                               # %if.then.50
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
.LBB0_12:                               # %cleanup
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movq	192(%rbx), %rsi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movq	168(%rbx), %rsi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movl	$-2, %r12d
	jmp	.LBB0_19
.LBB0_17:                               # %if.else
	movq	176(%rbx), %rax
	movb	(%rax), %cl
	notb	%cl
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%cl, (%rax,%rdx)
.LBB0_18:                               # %if.end.74
	movl	%ebp, 200(%rbx)
	movl	$0, 204(%rbx)
	movl	124(%rbx), %eax
	cmpl	$2, %eax
	movl	$1, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 184(%rbx)
	movl	%r15d, 188(%rbx)
.LBB0_19:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_CFE_init, .Lfunc_end0-s_CFE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_CFE_process,@function
s_CFE_process:                          # @s_CFE_process
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
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
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
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movq	%rdx, %r14
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rsi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	16(%r14), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	160(%rbx), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	subl	136(%rbx), %ecx
	andb	$7, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movslq	%eax, %r13
	movzbl	%dl, %r12d
	movl	%edx, %eax
	negl	%eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	andl	$254, %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_44:                               # %cleanup.250
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 200(%rbx)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	204(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%r14), %rdi
	movq	48(%rsp), %rcx          # 8-byte Reload
	subl	%edi, %ecx
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	incq	%rdi
	movslq	208(%rbx), %rsi
	addq	192(%rbx), %rsi
	subq	%rax, %rsi
	movslq	%ecx, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 8(%r14)
	movl	204(%rbx), %eax
	subl	%ebp, %eax
	movl	%eax, 204(%rbx)
	movl	$1, %r15d
	testl	%eax, %eax
	jg	.LBB1_45
.LBB1_3:                                # %if.end.25
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	200(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_7
# BB#4:                                 # %if.then.27
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rsi
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	movl	%eax, %ecx
	cmovlel	%edx, %ecx
	xorl	%r15d, %r15d
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB1_6
# BB#5:                                 # %if.then.27
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%edx, %edx
	je	.LBB1_45
.LBB1_6:                                # %if.end.46
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	168(%rbx), %rdi
	addq	%r13, %rdi
	subq	%rax, %rdi
	incq	%rsi
	movl	%r12d, %ebp
	movslq	%ecx, %r12
	movq	%r12, %rdx
	callq	memcpy
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%r12, (%rax)
	movl	200(%rbx), %eax
	subl	%r12d, %eax
	movl	%ebp, %r12d
	movl	%eax, 200(%rbx)
	jne	.LBB1_45
.LBB1_7:                                # %if.end.70
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	168(%rbx), %rax
	movzbl	-1(%rax,%r13), %edx
	movl	%edx, %ecx
	andl	32(%rsp), %ecx          # 4-byte Folded Reload
	andl	28(%rsp), %edx          # 4-byte Folded Reload
	movb	%dl, -1(%rax,%r13)
	cmpl	$1, %r12d
	jne	.LBB1_11
# BB#8:                                 # %if.then.90
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%ecx, %ecx
	movb	$64, %cl
	jne	.LBB1_10
# BB#9:                                 # %if.then.90
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	$-128, %cl
.LBB1_10:                               # %if.then.90
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	%cl, (%rax,%r13)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_11:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, %esi
	xorl	12(%rsp), %esi          # 4-byte Folded Reload
	shrl	%esi
	cmpl	$2, %r12d
	jne	.LBB1_13
# BB#12:                                # %if.then.98
                                        #   in Loop: Header=BB1_1 Depth=1
	orl	%edx, %esi
	movb	%sil, -1(%rax,%r13)
	shll	$7, %ecx
	movb	%cl, (%rax,%r13)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_13:                               # %if.else.106
                                        #   in Loop: Header=BB1_1 Depth=1
	shrl	$2, %ecx
	orl	%edx, %ecx
	orl	%esi, %ecx
	movb	%cl, -1(%rax,%r13)
.LBB1_14:                               # %if.end.116
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	subq	8(%r14), %rcx
	movslq	188(%rbx), %rax
	cmpq	%rax, %rcx
	jge	.LBB1_15
# BB#16:                                # %if.else.125
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	192(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, 72(%rsp)
	leaq	-1(%rcx,%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_15:                               # %if.then.124
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%r14), %rax
	movq	%rax, 80(%rsp)
	movups	(%r14), %xmm0
	movaps	%xmm0, 64(%rsp)
.LBB1_17:                               # %if.end.134
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 128(%rbx)
	je	.LBB1_30
# BB#18:                                # %if.then.136
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r12d, %r15d
	cmpl	$0, 124(%rbx)
	movl	$cf_run_eol, %ebp
	jle	.LBB1_21
# BB#19:                                # %cond.false.140
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$1, 184(%rbx)
	movl	$cf2_run_eol_2d, %ebp
	jg	.LBB1_21
# BB#20:                                # %select.mid
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$cf2_run_eol_1d, %ebp
.LBB1_21:                               # %cond.end.144
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	112(%rbx), %eax
	movl	116(%rbx), %r12d
	cmpl	$0, 132(%rbx)
	je	.LBB1_22
# BB#23:                                # %if.then.149
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	(%rbp), %edx
	movl	%edx, 60(%rsp)
	leal	4(%r12), %esi
	movl	%esi, %ecx
	andl	$7, %ecx
	shrl	$16, %edx
	leal	(%rcx,%rdx), %ecx
	movzwl	%cx, %edi
	cmpl	$17, %edi
	jb	.LBB1_25
# BB#24:                                # %if.then.158
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	%esi, %edx
	andl	$7, %edx
	subl	%edx, %r12d
	movw	$16, %cx
.LBB1_25:                               # %if.end.164
                                        #   in Loop: Header=BB1_1 Depth=1
	movw	%cx, 62(%rsp)
	leaq	60(%rsp), %rbp
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_30:                               # %if.else.191
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 132(%rbx)
	je	.LBB1_32
# BB#31:                                # %if.then.194
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	$-8, 116(%rbx)
	jmp	.LBB1_32
	.align	16, 0x90
.LBB1_22:                               # %cond.end.144.if.end.165_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	2(%rbp), %ecx
.LBB1_26:                               # %if.end.165
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	%cx, %ecx
	subl	%ecx, %r12d
	js	.LBB1_28
# BB#27:                                # %cond.true.171
                                        #   in Loop: Header=BB1_1 Depth=1
	movzwl	(%rbp), %edx
	movb	%r12b, %cl
	shll	%cl, %edx
	addl	%eax, %edx
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_28:                               # %cond.false.175
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	108(%rbx), %edi
	movq	72(%rsp), %rsi
	addq	$4, %rsi
	movq	%rsi, 72(%rsp)
	movzwl	(%rbp), %edx
	movl	%r12d, %ecx
	negl	%ecx
	shrl	%cl, %edx
	addl	%eax, %edx
	callq	hc_put_code_proc
	movzwl	(%rbp), %edx
	addl	$32, %r12d
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB1_29:                               # %cond.end.187
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%edx, 112(%rbx)
	movl	%r12d, 116(%rbx)
	movl	%r15d, %r12d
.LBB1_32:                               # %if.end.198
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	124(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_33
# BB#34:                                # %if.else.204
                                        #   in Loop: Header=BB1_1 Depth=1
	js	.LBB1_35
# BB#36:                                # %if.else.210
                                        #   in Loop: Header=BB1_1 Depth=1
	decl	184(%rbx)
	movq	168(%rbx), %rsi
	jne	.LBB1_37
# BB#38:                                # %if.else.216
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	leaq	64(%rsp), %rdx
	callq	cf_encode_1d
	movl	124(%rbx), %eax
	movl	%eax, 184(%rbx)
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_33:                               # %if.then.202
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	168(%rbx), %rsi
	movq	%rbx, %rdi
	leaq	64(%rsp), %rdx
	callq	cf_encode_1d
	jmp	.LBB1_39
	.align	16, 0x90
.LBB1_35:                               # %if.then.208
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	168(%rbx), %rsi
.LBB1_37:                               # %if.then.213
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	176(%rbx), %rcx
	movq	%rbx, %rdi
	leaq	64(%rsp), %rdx
	callq	cf_encode_2d
.LBB1_39:                               # %if.end.222
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	72(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, 80(%rsp)
	je	.LBB1_40
# BB#41:                                # %if.else.229
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	192(%rbx), %ecx
	decl	%ecx
	subl	%ecx, %eax
	movl	%eax, 208(%rbx)
	movl	%eax, 204(%rbx)
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_40:                               # %if.then.226
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, 8(%r14)
.LBB1_42:                               # %if.end.239
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 124(%rbx)
	je	.LBB1_44
# BB#43:                                # %if.then.243
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	168(%rbx), %rax
	movq	176(%rbx), %rcx
	movq	%rcx, 168(%rbx)
	movq	%rax, 176(%rbx)
	jmp	.LBB1_44
.LBB1_45:                               # %for.end
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB1_60
# BB#46:                                # %for.end
	testl	%r15d, %r15d
	jne	.LBB1_60
# BB#47:                                # %if.then.257
	movl	124(%rbx), %eax
	testl	%eax, %eax
	movl	$cf2_run_eol_1d, %ecx
	movl	$cf_run_eol, %edi
	cmovgq	%rcx, %rdi
	xorl	%r13d, %r13d
	cmpl	$0, 144(%rbx)
	je	.LBB1_49
# BB#48:                                # %cond.false.265
	sarl	$31, %eax
	andl	$-4, %eax
	addl	$6, %eax
	movl	%eax, %r13d
.LBB1_49:                               # %cond.end.270
	movl	116(%rbx), %eax
	movzwl	2(%rdi), %r10d
	movl	%r10d, %ecx
	imull	%r13d, %ecx
	movq	8(%r14), %rsi
	movq	48(%rsp), %rbp          # 8-byte Reload
	subq	%rsi, %rbp
	movl	$39, %edx
	subl	%eax, %edx
	addl	%ecx, %edx
	shrl	$3, %edx
	movl	$1, %r15d
	cmpq	%rdx, %rbp
	jl	.LBB1_60
# BB#50:                                # %if.end.289
	movl	112(%rbx), %r9d
	cmpl	$0, 132(%rbx)
	je	.LBB1_52
# BB#51:                                # %select.mid376
	andl	$-8, %eax
.LBB1_52:                               # %select.end375
	testl	%r13d, %r13d
	jle	.LBB1_53
# BB#54:                                # %while.body.lr.ph.lr.ph
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%r10d, %r15d
	negl	%r15d
.LBB1_55:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_56 Depth 2
	movl	%r13d, %r12d
	movq	48(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB1_56:                               # %while.body
                                        #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%r12), %r13d
	movl	%r15d, %ebp
	addl	%eax, %ebp
	js	.LBB1_58
# BB#57:                                # %cond.true.305
                                        #   in Loop: Header=BB1_56 Depth=2
	subl	%r10d, %eax
	movzwl	(%r8), %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	addl	%edx, %r9d
	leal	1(%r13), %ecx
	cmpl	$1, %ecx
	movl	%r13d, %r12d
	jg	.LBB1_56
	jmp	.LBB1_53
.LBB1_58:                               # %cond.false.310
                                        #   in Loop: Header=BB1_55 Depth=1
	movl	108(%rbx), %edi
	addq	$4, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movzwl	(%r8), %edx
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%ebp, %ecx
	negl	%ecx
	shrl	%cl, %edx
	addl	%r9d, %edx
	movl	%r10d, 36(%rsp)         # 4-byte Spill
	callq	hc_put_code_proc
	movl	32(%rsp), %edx          # 4-byte Reload
	movl	36(%rsp), %r10d         # 4-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	addl	$32, %ebp
	movb	%bpl, %cl
	shll	%cl, %edx
	cmpl	$1, %r12d
	movl	%ebp, %eax
	movl	%edx, %r9d
	jg	.LBB1_55
	jmp	.LBB1_59
.LBB1_53:
	movl	%eax, %ebp
	movl	%r9d, %edx
.LBB1_59:                               # %while.end
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	hc_put_last_bits_proc
	movq	%rax, 8(%r14)
	xorl	%r15d, %r15d
.LBB1_60:                               # %cleanup.338
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_CFE_process, .Lfunc_end1-s_CFE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_CFE_release,@function
s_CFE_release:                          # @s_CFE_release
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
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movq	192(%rbx), %rsi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
	movq	8(%rbx), %rdi
	movq	168(%rbx), %rsi
	movq	24(%rdi), %rax
	movl	$.L.str.6, %edx
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	s_CFE_release, .Lfunc_end2-s_CFE_release
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
	.type	s_CFE_set_defaults,@function
s_CFE_set_defaults:                     # @s_CFE_set_defaults
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
	movq	$0, 192(%rdi)
	retq
.Lfunc_end3:
	.size	s_CFE_set_defaults, .Lfunc_end3-s_CFE_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	cf_encode_1d,@function
cf_encode_1d:                           # @cf_encode_1d
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
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 96
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	160(%rdi), %ebp
	shll	$3, %ebp
	movq	8(%rdx), %rax
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	subl	136(%rdi), %r13d
	andl	$7, %r13d
	movl	112(%rdi), %r11d
	movl	116(%rdi), %r10d
	cmpl	%r13d, %ebp
	jne	.LBB4_2
# BB#1:
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	jmp	.LBB4_71
.LBB4_2:                                # %do.body.lr.ph
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	148(%rdi), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movzbl	(%r14), %eax
	movl	$255, %ecx
	cmovel	%ecx, %r15d
	xorl	%eax, %r15d
	incq	%r14
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_40:                               # %do.body.216
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%edx, %eax
	movl	%ebp, %ecx
	movl	%ebp, %r15d
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %ebp
	cmpl	$8, %ebp
	jb	.LBB4_64
# BB#41:                                # %if.then.225
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movb	(%r14), %al
	je	.LBB4_59
# BB#42:                                # %for.cond.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%al, %ecx
	cmpl	$255, %ecx
	jne	.LBB4_61
# BB#43:                                # %if.end.239.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$4, %r14
	.align	16, 0x90
.LBB4_44:                               # %if.end.239
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rcx
	movzbl	-3(%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB4_45
# BB#46:                                # %if.end.248
                                        #   in Loop: Header=BB4_44 Depth=2
	movzbl	-2(%rcx), %eax
	leaq	-1(%rcx), %r14
	cmpl	$255, %eax
	jne	.LBB4_47
# BB#48:                                # %if.end.258
                                        #   in Loop: Header=BB4_44 Depth=2
	movzbl	(%r14), %eax
	cmpl	$255, %eax
	jne	.LBB4_49
# BB#50:                                # %for.inc
                                        #   in Loop: Header=BB4_44 Depth=2
	addl	$32, %ebp
	movzbl	(%rcx), %eax
	leaq	4(%rcx), %r14
	cmpl	$255, %eax
	je	.LBB4_44
# BB#51:                                #   in Loop: Header=BB4_3 Depth=1
	incq	%rcx
	movq	%rcx, %r14
	jmp	.LBB4_62
	.align	16, 0x90
.LBB4_58:                               # %for.inc.316
                                        #   in Loop: Header=BB4_59 Depth=2
	addl	$32, %ebp
	movb	4(%r14), %al
	addq	$4, %r14
.LBB4_59:                               # %for.cond.272.preheader
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	jne	.LBB4_60
# BB#52:                                # %if.end.283
                                        #   in Loop: Header=BB4_59 Depth=2
	movb	1(%r14), %al
	testb	%al, %al
	jne	.LBB4_53
# BB#54:                                # %if.end.293
                                        #   in Loop: Header=BB4_59 Depth=2
	movb	2(%r14), %al
	testb	%al, %al
	jne	.LBB4_55
# BB#56:                                # %if.end.304
                                        #   in Loop: Header=BB4_59 Depth=2
	movb	3(%r14), %al
	testb	%al, %al
	je	.LBB4_58
# BB#57:                                # %if.then.307
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%al
	addq	$4, %r14
	addl	$16, %ebp
	jmp	.LBB4_63
.LBB4_60:                               # %if.then.275
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%al
.LBB4_61:                               # %if.end.320
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r14
.LBB4_62:                               # %if.end.320
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$-8, %ebp
.LBB4_63:                               # %if.end.320
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%al, %edx
	movzbl	byte_bit_run_length_0(%rdx), %eax
	addl	%eax, %ebp
.LBB4_64:                               # %if.end.325
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$64, %ebp
	jl	.LBB4_65
# BB#66:                                # %if.then.333
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%r12d, 112(%rbx)
	movl	%r10d, 116(%rbx)
	movl	$cf_black_runs, %ecx
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, %edx
	callq	cf_put_long_run
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	112(%rbx), %r12d
	movl	116(%rbx), %r10d
	movl	%ebp, %eax
	andl	$63, %eax
	jmp	.LBB4_67
	.align	16, 0x90
.LBB4_65:                               #   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
.LBB4_67:                               # %if.end.340
                                        #   in Loop: Header=BB4_3 Depth=1
	subl	%ebp, %r15d
	movl	%r15d, %ebp
	cltq
	movzwl	cf_black_runs(,%rax,4), %r11d
	movzwl	cf_black_runs+2(,%rax,4), %eax
	subl	%eax, %r10d
	js	.LBB4_69
# BB#68:                                # %cond.true.351
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	%r10b, %cl
	shll	%cl, %r11d
	addl	%r12d, %r11d
	jmp	.LBB4_70
	.align	16, 0x90
.LBB4_69:                               # %cond.false.356
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	movq	32(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%r10d, %ecx
	negl	%ecx
	movl	%r11d, %edx
	shrl	%cl, %edx
	addl	%r12d, %edx
	movl	%r10d, %r15d
	movl	%r11d, %ebx
	callq	hc_put_code_proc
	movl	%ebx, %r11d
	movl	%r15d, %r10d
	addl	$32, %r10d
	movb	%r10b, %cl
	shll	%cl, %r11d
.LBB4_70:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	16(%rsp), %r15          # 8-byte Reload
	cmpl	%r13d, %ebp
	jne	.LBB4_3
	jmp	.LBB4_71
.LBB4_45:                               #   in Loop: Header=BB4_3 Depth=1
	addq	$-2, %rcx
	movq	%rcx, %r14
	jmp	.LBB4_63
.LBB4_47:                               # %if.then.253
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$8, %ebp
	jmp	.LBB4_63
.LBB4_49:                               # %if.then.263
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$16, %ebp
	movq	%rcx, %r14
	jmp	.LBB4_63
.LBB4_20:                               # %while.cond.101.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$-32, %r12d
	.align	16, 0x90
.LBB4_21:                               # %while.cond.101
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbp
	movl	%r12d, %ecx
	movb	2(%rbp), %sil
	movb	3(%rbp), %bl
	movb	%bl, %al
	andb	%sil, %al
	leaq	4(%rbp), %r14
	movb	4(%rbp), %dil
	andb	%dil, %al
	movb	5(%rbp), %dl
	andb	%dl, %al
	movzbl	%al, %eax
	leal	32(%rcx), %r12d
	cmpl	$255, %eax
	je	.LBB4_21
# BB#22:                                # %while.end.118
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB4_26
# BB#23:                                # %if.then.123
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$3, %rbp
	notb	%sil
	addl	$8, %r12d
	jmp	.LBB4_31
.LBB4_53:                               # %if.then.286
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%al
	addq	$2, %r14
	jmp	.LBB4_63
.LBB4_55:                               # %if.then.296
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%al
	addq	$3, %r14
	addl	$8, %ebp
	jmp	.LBB4_63
.LBB4_12:                               # %if.else.51
                                        #   in Loop: Header=BB4_3 Depth=1
	testb	%al, %al
	je	.LBB4_14
# BB#13:                                # %if.then.54
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$16, %r12d
	movq	%r14, %rbp
	movb	%al, %sil
	jmp	.LBB4_31
.LBB4_26:                               # %if.else.131
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%bl, %eax
	cmpl	$255, %eax
	je	.LBB4_28
# BB#27:                                # %if.then.136
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%bl
	addl	$16, %r12d
	movq	%r14, %rbp
	movb	%bl, %sil
	jmp	.LBB4_31
.LBB4_14:                               # %if.else.59
                                        #   in Loop: Header=BB4_3 Depth=1
	testb	%bl, %bl
	je	.LBB4_16
# BB#15:                                # %if.then.62
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$5, %rbp
	addl	$24, %r12d
	movb	%bl, %sil
	jmp	.LBB4_31
.LBB4_28:                               # %if.else.144
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%dil, %eax
	cmpl	$255, %eax
	je	.LBB4_30
# BB#29:                                # %if.then.149
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$5, %rbp
	notb	%dil
	addl	$24, %r12d
	movb	%dil, %sil
	jmp	.LBB4_31
.LBB4_16:                               # %if.else.67
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$64, %edi
	addq	$6, %rbp
	movb	%dl, %sil
	movl	%edi, %r12d
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.157
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$64, %ecx
	notb	%dl
	addq	$6, %rbp
	movb	%dl, %sil
	movl	%ecx, %r12d
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_3:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_21 Depth 2
                                        #     Child Loop BB4_44 Depth 2
                                        #     Child Loop BB4_59 Depth 2
	movl	%r15d, %eax
	xorl	$255, %eax
	movl	%ebp, %ecx
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %r12d
	cmpl	$8, %r12d
	jb	.LBB4_32
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movb	(%r14), %sil
	je	.LBB4_17
# BB#5:                                 # %if.then.16
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%ebp, %r8d
	leaq	1(%r14), %rbp
	testb	%sil, %sil
	je	.LBB4_7
# BB#6:                                 # %if.then.19
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$-8, %r12d
	jmp	.LBB4_31
.LBB4_17:                               # %if.else.76
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB4_19
# BB#18:                                # %if.then.81
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%ebp, %r8d
	notb	%sil
	incq	%r14
	addl	$-8, %r12d
	movq	%r14, %rbp
	jmp	.LBB4_31
.LBB4_7:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	(%rbp), %sil
	testb	%sil, %sil
	jne	.LBB4_25
# BB#8:                                 # %while.cond.30.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	addl	$-32, %r12d
	.align	16, 0x90
.LBB4_9:                                # %while.cond.30
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbp
	movl	%r12d, %edi
	movb	2(%rbp), %sil
	movb	3(%rbp), %al
	movb	%al, %cl
	orb	%sil, %cl
	leaq	4(%rbp), %r14
	movb	4(%rbp), %bl
	orb	%bl, %cl
	movb	5(%rbp), %dl
	leal	32(%rdi), %r12d
	orb	%dl, %cl
	je	.LBB4_9
# BB#10:                                # %while.end
                                        #   in Loop: Header=BB4_3 Depth=1
	testb	%sil, %sil
	je	.LBB4_12
# BB#11:                                # %if.then.46
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$3, %rbp
	addl	$8, %r12d
	jmp	.LBB4_31
.LBB4_19:                               # %if.else.88
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	1(%r14), %esi
	movl	%ebp, %r8d
	cmpl	$255, %esi
	je	.LBB4_20
# BB#24:                                # %if.then.93
                                        #   in Loop: Header=BB4_3 Depth=1
	notb	%sil
.LBB4_25:                               # %if.then.25
                                        #   in Loop: Header=BB4_3 Depth=1
	addq	$2, %r14
	movq	%r14, %rbp
.LBB4_31:                               # %if.end.170
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%sil, %r15d
	movl	%r15d, %eax
	xorl	$255, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	addl	%eax, %r12d
	movq	%rbp, %r14
	movl	%r8d, %ebp
.LBB4_32:                               # %if.end.176
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$64, %r12d
	jl	.LBB4_33
# BB#34:                                # %if.then.181
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%r11d, 112(%rbx)
	movl	%r10d, 116(%rbx)
	movl	$cf_white_runs, %ecx
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	callq	cf_put_long_run
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	112(%rbx), %r11d
	movl	116(%rbx), %r10d
	movl	%r12d, %eax
	andl	$63, %eax
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_33:                               #   in Loop: Header=BB4_3 Depth=1
	movl	%r12d, %eax
.LBB4_35:                               # %if.end.187
                                        #   in Loop: Header=BB4_3 Depth=1
	subl	%r12d, %ebp
	cltq
	movzwl	cf_white_runs(,%rax,4), %r12d
	movzwl	cf_white_runs+2(,%rax,4), %eax
	subl	%eax, %r10d
	js	.LBB4_37
# BB#36:                                # %cond.true
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	%r10b, %cl
	shll	%cl, %r12d
	addl	%r11d, %r12d
	jmp	.LBB4_38
	.align	16, 0x90
.LBB4_37:                               # %cond.false
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	movq	32(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%r10d, %ecx
	negl	%ecx
	movl	%r12d, %edx
	shrl	%cl, %edx
	addl	%r11d, %edx
	movl	%r10d, %ebx
	callq	hc_put_code_proc
	movl	%ebx, %r10d
	addl	$32, %r10d
	movb	%r10b, %cl
	shll	%cl, %r12d
.LBB4_38:                               # %cond.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r15, %rdx
	cmpl	%r13d, %ebp
	jne	.LBB4_40
# BB#39:
	movl	%r12d, %r11d
.LBB4_71:                               # %while.end.372
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%r11d, 112(%rax)
	movl	%r10d, 116(%rax)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cf_encode_1d, .Lfunc_end4-cf_encode_1d
	.cfi_endproc

	.align	16, 0x90
	.type	cf_encode_2d,@function
cf_encode_2d:                           # @cf_encode_2d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 160
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	cmpl	$1, 148(%rdi)
	sbbb	%r8b, %r8b
	movl	160(%rdi), %r14d
	shll	$3, %r14d
	xorl	%ebx, %ebx
	subl	136(%rdi), %ebx
	andl	$7, %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	8(%rdx), %rax
	movl	112(%rdi), %r11d
	movl	116(%rdi), %ebp
	cmpl	%ebx, %r14d
	jne	.LBB5_3
# BB#1:
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	jmp	.LBB5_2
.LBB5_3:                                # %while.body.lr.ph.lr.ph
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movb	(%rsi), %al
	xorb	%r8b, %al
	movzbl	%al, %edx
	leaq	1(%rsi), %rdi
	movl	$2, %eax
	subq	%rsi, %rax
	leaq	(%rax,%r12), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$cf_encode_2d.initial_count_bit, %r13d
	movb	%r8b, %cl
	movb	%r8b, 47(%rsp)          # 1-byte Spill
.LBB5_4:                                # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_12 Depth 3
                                        #       Child Loop BB5_58 Depth 3
                                        #       Child Loop BB5_50 Depth 3
                                        #       Child Loop BB5_67 Depth 3
                                        #         Child Loop BB5_90 Depth 4
                                        #         Child Loop BB5_75 Depth 4
                                        #         Child Loop BB5_109 Depth 4
                                        #         Child Loop BB5_115 Depth 4
                                        #       Child Loop BB5_145 Depth 3
                                        #       Child Loop BB5_151 Depth 3
	movb	%cl, 46(%rsp)           # 1-byte Spill
	movl	%r14d, %r9d
	jmp	.LBB5_5
	.align	16, 0x90
.LBB5_140:                              # %if.end.650
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	%ebx, %r14d
	jne	.LBB5_142
# BB#141:                               #   in Loop: Header=BB5_5 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ebx, %esi
	jmp	.LBB5_167
	.align	16, 0x90
.LBB5_142:                              # %do.body.654
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, %eax
	movl	%r14d, %ecx
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$8, %eax
	jb	.LBB5_143
# BB#144:                               # %if.then.663
                                        #   in Loop: Header=BB5_5 Depth=2
	testb	%r8b, %r8b
	movq	48(%rsp), %rsi          # 8-byte Reload
	movb	(%rsi), %cl
	jne	.LBB5_145
# BB#147:                               # %for.cond.668.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%cl, %edx
	cmpl	$255, %edx
	je	.LBB5_150
# BB#148:                               #   in Loop: Header=BB5_5 Depth=2
	incq	%rsi
	addl	$-8, %eax
	jmp	.LBB5_165
	.align	16, 0x90
.LBB5_197:                              # %for.inc.757
                                        #   in Loop: Header=BB5_145 Depth=3
	addl	$32, %eax
	movb	4(%rsi), %cl
	addq	$4, %rsi
.LBB5_145:                              # %for.cond.713.preheader
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	%cl, %cl
	jne	.LBB5_146
# BB#159:                               # %if.end.724
                                        #   in Loop: Header=BB5_145 Depth=3
	movb	1(%rsi), %cl
	testb	%cl, %cl
	jne	.LBB5_160
# BB#161:                               # %if.end.734
                                        #   in Loop: Header=BB5_145 Depth=3
	movb	2(%rsi), %cl
	testb	%cl, %cl
	jne	.LBB5_162
# BB#163:                               # %if.end.745
                                        #   in Loop: Header=BB5_145 Depth=3
	movb	3(%rsi), %cl
	testb	%cl, %cl
	je	.LBB5_197
# BB#164:                               # %if.then.748
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%cl
	addq	$4, %rsi
	addl	$16, %eax
	jmp	.LBB5_165
	.align	16, 0x90
.LBB5_143:                              #   in Loop: Header=BB5_5 Depth=2
	movq	48(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB5_166
.LBB5_146:                              # %if.then.716
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%cl
	incq	%rsi
	addl	$-8, %eax
.LBB5_165:                              # %if.end.761
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%cl, %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movzbl	byte_bit_run_length_0(%rcx), %ecx
	addl	%ecx, %eax
.LBB5_166:                              # %if.end.766
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r14d, %ecx
	subl	%eax, %ecx
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movl	%ecx, %esi
.LBB5_167:                              # %if.end.770
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r9d, %r13d
	movb	%r8b, %r12b
	movl	%ebp, %r15d
	addl	$-3, %r15d
	js	.LBB5_169
# BB#168:                               # %cond.true.774
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	addl	%r11d, %eax
	jmp	.LBB5_170
	.align	16, 0x90
.LBB5_169:                              # %cond.false.777
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	movl	%esi, %r15d
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	$3, %ecx
	subl	%ebp, %ecx
	movl	$1, %edx
	shrl	%cl, %edx
	addl	%r11d, %edx
	movl	%ebp, %ebx
	callq	hc_put_code_proc
	movl	%r15d, %esi
	addl	$29, %ebx
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%ebx, %r15d
.LBB5_170:                              # %cond.end.785
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	47(%rsp), %bl           # 1-byte Reload
	subl	%r14d, %r13d
	subl	%esi, %r14d
	movzbl	%bl, %ecx
	movzbl	%r12b, %edi
	cmpl	%ecx, %edi
	jne	.LBB5_184
# BB#171:                               # %do.body.797
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	$64, %r13d
	jb	.LBB5_172
# BB#173:                               # %if.then.800
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%esi, 92(%rsp)          # 4-byte Spill
	movb	%bl, 47(%rsp)           # 1-byte Spill
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	%eax, 112(%rbx)
	movl	%r15d, 116(%rbx)
	movl	$cf_white_runs, %ecx
	movq	%rbx, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %edx
	callq	cf_put_long_run
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	112(%rbx), %eax
	movl	116(%rbx), %r15d
	andl	$63, %r13d
	jmp	.LBB5_174
	.align	16, 0x90
.LBB5_184:                              # %do.body.885
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	$64, %r13d
	jb	.LBB5_185
# BB#186:                               # %if.then.889
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%esi, 92(%rsp)          # 4-byte Spill
	movb	%bl, 47(%rsp)           # 1-byte Spill
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	%eax, 112(%rbx)
	movl	%r15d, 116(%rbx)
	movl	$cf_black_runs, %ecx
	movq	%rbx, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %edx
	callq	cf_put_long_run
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	112(%rbx), %eax
	movl	116(%rbx), %r15d
	andl	$63, %r13d
	jmp	.LBB5_187
	.align	16, 0x90
.LBB5_172:                              #   in Loop: Header=BB5_5 Depth=2
	movl	%esi, 92(%rsp)          # 4-byte Spill
	movb	%bl, 47(%rsp)           # 1-byte Spill
.LBB5_174:                              # %if.end.806
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r13d, %ecx
	movzwl	cf_white_runs(,%rcx,4), %r12d
	movzwl	cf_white_runs+2(,%rcx,4), %ecx
	subl	%ecx, %r15d
	movl	20(%rsp), %ebx          # 4-byte Reload
	js	.LBB5_176
# BB#175:                               # %cond.true.817
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	%r15b, %cl
	shll	%cl, %r12d
	addl	%eax, %r12d
	movq	96(%rsp), %r13          # 8-byte Reload
	jmp	.LBB5_177
	.align	16, 0x90
.LBB5_185:                              #   in Loop: Header=BB5_5 Depth=2
	movl	%esi, 92(%rsp)          # 4-byte Spill
	movb	%bl, 47(%rsp)           # 1-byte Spill
.LBB5_187:                              # %if.end.896
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r13d, %ecx
	movzwl	cf_black_runs(,%rcx,4), %r12d
	movzwl	cf_black_runs+2(,%rcx,4), %ecx
	subl	%ecx, %r15d
	movl	20(%rsp), %ebx          # 4-byte Reload
	js	.LBB5_189
# BB#188:                               # %cond.true.907
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	%r15b, %cl
	shll	%cl, %r12d
	addl	%eax, %r12d
	movq	96(%rsp), %r13          # 8-byte Reload
	jmp	.LBB5_190
.LBB5_176:                              # %cond.false.822
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	108(%rcx), %edi
	movq	96(%rsp), %r13          # 8-byte Reload
	addq	$4, %r13
	movl	%r15d, %ecx
	negl	%ecx
	movl	%r12d, %edx
	shrl	%cl, %edx
	addl	%eax, %edx
	movq	%r13, %rsi
	callq	hc_put_code_proc
	addl	$32, %r15d
	movb	%r15b, %cl
	shll	%cl, %r12d
.LBB5_177:                              # %cond.end.834
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	$64, %r14d
	jb	.LBB5_179
# BB#178:                               # %if.then.842
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	%r12d, 112(%rbp)
	movl	%r15d, 116(%rbp)
	movl	$cf_black_runs, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	cf_put_long_run
	movq	%rax, %r13
	movl	112(%rbp), %r12d
	movl	116(%rbp), %r15d
	andl	$63, %r14d
.LBB5_179:                              # %if.end.849
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	92(%rsp), %r9d          # 4-byte Reload
	movl	%r14d, %eax
	movzwl	cf_black_runs(,%rax,4), %r11d
	movzwl	cf_black_runs+2(,%rax,4), %eax
	movl	%r15d, %ebp
	subl	%eax, %ebp
	js	.LBB5_181
# BB#180:                               # %cond.true.860
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movb	%bpl, %cl
	shll	%cl, %r11d
	addl	%r12d, %r11d
	jmp	.LBB5_182
.LBB5_189:                              # %cond.false.912
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	108(%rcx), %edi
	movq	96(%rsp), %r13          # 8-byte Reload
	addq	$4, %r13
	movl	%r15d, %ecx
	negl	%ecx
	movl	%r12d, %edx
	shrl	%cl, %edx
	addl	%eax, %edx
	movq	%r13, %rsi
	callq	hc_put_code_proc
	addl	$32, %r15d
	movb	%r15b, %cl
	shll	%cl, %r12d
.LBB5_190:                              # %cond.end.924
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	$64, %r14d
	jb	.LBB5_192
# BB#191:                               # %if.then.932
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	%r12d, 112(%rbp)
	movl	%r15d, 116(%rbp)
	movl	$cf_white_runs, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	cf_put_long_run
	movq	%rax, %r13
	movl	112(%rbp), %r12d
	movl	116(%rbp), %r15d
	andl	$63, %r14d
.LBB5_192:                              # %if.end.939
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r14d, %eax
	movzwl	cf_white_runs(,%rax,4), %r11d
	movzwl	cf_white_runs+2(,%rax,4), %eax
	movl	%r15d, %ebp
	subl	%eax, %ebp
	js	.LBB5_195
# BB#193:                               # %cond.true.950
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movb	%bpl, %cl
	shll	%cl, %r11d
	addl	%r12d, %r11d
	jmp	.LBB5_194
.LBB5_181:                              # %cond.false.865
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	addq	$4, %r13
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	negl	%ecx
	movl	%r11d, %edx
	shrl	%cl, %edx
	addl	%r12d, %edx
	movl	%r9d, %r15d
	movq	%r13, %rsi
	movl	%r11d, %r14d
	callq	hc_put_code_proc
	movl	%r15d, %r9d
	movl	%r14d, %r11d
	addl	$32, %ebp
	movb	%bpl, %cl
	shll	%cl, %r11d
.LBB5_182:                              # %while.cond.backedge
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	46(%rsp), %cl           # 1-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	jmp	.LBB5_183
.LBB5_195:                              # %cond.false.955
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	addq	$4, %r13
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	negl	%ecx
	movl	%r11d, %edx
	shrl	%cl, %edx
	addl	%r12d, %edx
	movq	%r13, %rsi
	movl	%r11d, %r14d
	callq	hc_put_code_proc
	movl	%r14d, %r11d
	addl	$32, %ebp
	movb	%bpl, %cl
	shll	%cl, %r11d
.LBB5_194:                              # %while.cond.backedge
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	46(%rsp), %cl           # 1-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	movl	92(%rsp), %r9d          # 4-byte Reload
.LBB5_183:                              # %while.cond.backedge
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	cmpl	%ebx, %r9d
	movl	$cf_encode_2d.further_count_bit, %r13d
	jne	.LBB5_5
	jmp	.LBB5_2
.LBB5_150:                              # %if.end.678.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$4, %rsi
	.align	16, 0x90
.LBB5_151:                              # %if.end.678
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	-3(%rdx), %ecx
	cmpl	$255, %ecx
	jne	.LBB5_152
# BB#153:                               # %if.end.687
                                        #   in Loop: Header=BB5_151 Depth=3
	movzbl	-2(%rdx), %ecx
	leaq	-1(%rdx), %rsi
	cmpl	$255, %ecx
	jne	.LBB5_154
# BB#155:                               # %if.end.697
                                        #   in Loop: Header=BB5_151 Depth=3
	movzbl	(%rsi), %ecx
	cmpl	$255, %ecx
	jne	.LBB5_156
# BB#157:                               # %for.inc.708
                                        #   in Loop: Header=BB5_151 Depth=3
	addl	$32, %eax
	movzbl	(%rdx), %ecx
	leaq	4(%rdx), %rsi
	cmpl	$255, %ecx
	je	.LBB5_151
# BB#158:                               #   in Loop: Header=BB5_5 Depth=2
	incq	%rdx
	movq	%rdx, %rsi
	addl	$-8, %eax
	jmp	.LBB5_165
.LBB5_160:                              # %if.then.727
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%cl
	addq	$2, %rsi
	jmp	.LBB5_165
.LBB5_162:                              # %if.then.737
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%cl
	addq	$3, %rsi
	addl	$8, %eax
	jmp	.LBB5_165
.LBB5_152:                              #   in Loop: Header=BB5_5 Depth=2
	addq	$-2, %rdx
	movq	%rdx, %rsi
	jmp	.LBB5_165
.LBB5_154:                              # %if.then.692
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$8, %eax
	jmp	.LBB5_165
.LBB5_156:                              # %if.then.702
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$16, %eax
	movq	%rdx, %rsi
	jmp	.LBB5_165
.LBB5_21:                               # %if.else.73
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$64, %r14d
	addq	$6, %rdi
	movl	%r14d, %r8d
	movb	%al, %sil
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_37
	.align	16, 0x90
.LBB5_5:                                # %while.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_12 Depth 3
                                        #       Child Loop BB5_58 Depth 3
                                        #       Child Loop BB5_50 Depth 3
                                        #       Child Loop BB5_67 Depth 3
                                        #         Child Loop BB5_90 Depth 4
                                        #         Child Loop BB5_75 Depth 4
                                        #         Child Loop BB5_109 Depth 4
                                        #         Child Loop BB5_115 Depth 4
                                        #       Child Loop BB5_145 Depth 3
                                        #       Child Loop BB5_151 Depth 3
	movl	%r11d, 56(%rsp)         # 4-byte Spill
	movl	%ebp, 60(%rsp)          # 4-byte Spill
	movq	%rdi, %r10
	subq	%rsi, %r10
	movb	-1(%r12,%r10), %r15b
	xorb	%cl, %r15b
	movl	%edx, %eax
	xorl	$255, %eax
	movl	%r9d, %r11d
	andl	$7, %r11d
	movq	byte_bit_run_length_neg(,%r11,8), %rbp
	movzbl	(%rbp,%rax), %r8d
	cmpl	$8, %r8d
	jb	.LBB5_6
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r9d, 92(%rsp)          # 4-byte Spill
	movb	(%rdi), %sil
	testb	%cl, %cl
	je	.LBB5_8
# BB#22:                                # %if.else.82
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB5_24
# BB#23:                                # %if.then.87
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%sil
	leaq	1(%rdi), %rax
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_5 Depth=2
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_39
.LBB5_8:                                # %if.then.21
                                        #   in Loop: Header=BB5_5 Depth=2
	leaq	1(%rdi), %rax
	testb	%sil, %sil
	je	.LBB5_10
.LBB5_9:                                # %if.then.24
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addl	$-8, %r8d
	jmp	.LBB5_38
.LBB5_24:                               # %if.else.94
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	1(%rdi), %esi
	cmpl	$255, %esi
	je	.LBB5_25
# BB#29:                                # %if.then.99
                                        #   in Loop: Header=BB5_5 Depth=2
	notb	%sil
	jmp	.LBB5_30
.LBB5_10:                               # %if.else
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	(%rax), %sil
	testb	%sil, %sil
	je	.LBB5_11
.LBB5_30:                               # %if.then.31
                                        #   in Loop: Header=BB5_5 Depth=2
	leaq	2(%rdi), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB5_38
.LBB5_25:                               # %while.cond.107.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	%ebx, %r9d
	addl	$-32, %r8d
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leaq	-4(%rdi), %rdi
	.align	16, 0x90
.LBB5_26:                               # %while.cond.107
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r8d, %ebp
	movq	%rdi, %rbx
	movb	6(%rbx), %sil
	movb	7(%rbx), %dl
	movb	%dl, %al
	andb	%sil, %al
	movb	8(%rbx), %r14b
	andb	%r14b, %al
	movb	9(%rbx), %r12b
	andb	%r12b, %al
	movzbl	%al, %eax
	leal	32(%rbp), %r8d
	leaq	4(%rbx), %rdi
	cmpl	$255, %eax
	je	.LBB5_26
# BB#27:                                # %while.end.124
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB5_31
# BB#28:                                # %if.then.129
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$7, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	notb	%sil
	addl	$8, %r8d
	jmp	.LBB5_36
.LBB5_11:                               # %while.cond.36.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movb	%cl, 46(%rsp)           # 1-byte Spill
	movl	%ebx, %r9d
	addl	$-32, %r8d
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leaq	-4(%rdi), %rdi
	.align	16, 0x90
.LBB5_12:                               # %while.cond.36
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r8d, %r14d
	movq	%rdi, %rbp
	movb	6(%rbp), %sil
	movb	7(%rbp), %dl
	movb	%dl, %bl
	orb	%sil, %bl
	movb	8(%rbp), %r12b
	orb	%r12b, %bl
	movb	9(%rbp), %al
	leal	32(%r14), %r8d
	leaq	4(%rbp), %rdi
	orb	%al, %bl
	je	.LBB5_12
# BB#13:                                # %while.end
                                        #   in Loop: Header=BB5_5 Depth=2
	testb	%sil, %sil
	je	.LBB5_16
# BB#14:                                # %if.then.52
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$7, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	addl	$8, %r8d
	jmp	.LBB5_36
.LBB5_31:                               # %if.else.137
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%dl, %eax
	cmpl	$255, %eax
	je	.LBB5_33
# BB#32:                                # %if.then.142
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$8, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	notb	%dl
	jmp	.LBB5_18
.LBB5_16:                               # %if.else.57
                                        #   in Loop: Header=BB5_5 Depth=2
	testb	%dl, %dl
	je	.LBB5_19
# BB#17:                                # %if.then.60
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$8, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
.LBB5_18:                               # %if.end.176
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$16, %r8d
	movb	%dl, %sil
	jmp	.LBB5_36
.LBB5_33:                               # %if.else.150
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%r14b, %eax
	cmpl	$255, %eax
	je	.LBB5_35
# BB#34:                                # %if.then.155
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$9, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	notb	%r14b
	addl	$24, %r8d
	movb	%r14b, %sil
	jmp	.LBB5_36
.LBB5_19:                               # %if.else.65
                                        #   in Loop: Header=BB5_5 Depth=2
	testb	%r12b, %r12b
	movl	%r9d, %ebx
	je	.LBB5_21
# BB#20:                                # %if.then.68
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$9, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	addl	$24, %r8d
	movb	%r12b, %sil
	jmp	.LBB5_37
.LBB5_35:                               # %if.else.163
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$64, %ebp
	notb	%r12b
	addq	$6, %rdi
	movl	%ebp, %r8d
	movb	%r12b, %sil
	movq	%rdi, 48(%rsp)          # 8-byte Spill
.LBB5_36:                               # %if.end.176
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r9d, %ebx
.LBB5_37:                               # %if.end.176
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	46(%rsp), %cl           # 1-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB5_38:                               # %if.end.176
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%sil, %edx
	movl	%edx, %eax
	xorl	$255, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	addl	%eax, %r8d
	movl	92(%rsp), %r9d          # 4-byte Reload
.LBB5_39:                               # %if.end.182
                                        #   in Loop: Header=BB5_5 Depth=2
	leaq	(%r10,%r12), %r12
	movl	%r9d, %r14d
	subl	%r8d, %r14d
	testb	(%r13,%r11), %r15b
	je	.LBB5_40
# BB#41:                                # %do.body.192
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%r15b, %eax
	movzbl	(%rbp,%rax), %eax
	cmpl	$8, %eax
	jb	.LBB5_42
# BB#43:                                # %if.then.201
                                        #   in Loop: Header=BB5_5 Depth=2
	movb	%cl, %r8b
	testb	%r8b, %r8b
	movb	(%r12), %r15b
	je	.LBB5_46
# BB#44:                                # %for.cond.244.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	testb	%r15b, %r15b
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	56(%rsp), %r11d         # 4-byte Reload
	jne	.LBB5_45
	.align	16, 0x90
.LBB5_58:                               # %if.end.254
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	1(%r12), %r15b
	testb	%r15b, %r15b
	jne	.LBB5_59
# BB#60:                                # %if.end.263
                                        #   in Loop: Header=BB5_58 Depth=3
	movb	2(%r12), %r15b
	testb	%r15b, %r15b
	jne	.LBB5_61
# BB#62:                                # %if.end.273
                                        #   in Loop: Header=BB5_58 Depth=3
	movb	3(%r12), %r15b
	testb	%r15b, %r15b
	jne	.LBB5_63
# BB#57:                                # %for.inc.284
                                        #   in Loop: Header=BB5_58 Depth=3
	addl	$32, %eax
	movb	4(%r12), %r15b
	addq	$4, %r12
	testb	%r15b, %r15b
	je	.LBB5_58
.LBB5_45:                               # %if.then.247
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	notb	%r15b
	incq	%r12
	addl	$-8, %eax
	jmp	.LBB5_65
	.align	16, 0x90
.LBB5_40:                               #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%r9d, %r13d
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	56(%rsp), %r11d         # 4-byte Reload
	movb	%cl, %r8b
	jmp	.LBB5_67
	.align	16, 0x90
.LBB5_42:                               #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	56(%rsp), %r11d         # 4-byte Reload
	movb	%cl, %r8b
	jmp	.LBB5_66
.LBB5_46:                               # %for.cond.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movzbl	%r15b, %ecx
	cmpl	$255, %ecx
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	56(%rsp), %r11d         # 4-byte Reload
	je	.LBB5_49
# BB#47:                                #   in Loop: Header=BB5_5 Depth=2
	incq	%r12
	addl	$-8, %eax
	jmp	.LBB5_65
.LBB5_49:                               # %if.end.214.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rdi,%rcx), %rcx
	.align	16, 0x90
.LBB5_50:                               # %if.end.214
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %r12
	movzbl	-1(%r12), %r15d
	cmpl	$255, %r15d
	jne	.LBB5_65
# BB#51:                                # %if.end.222
                                        #   in Loop: Header=BB5_50 Depth=3
	movzbl	(%r12), %r15d
	cmpl	$255, %r15d
	jne	.LBB5_52
# BB#53:                                # %if.end.231
                                        #   in Loop: Header=BB5_50 Depth=3
	movzbl	1(%r12), %r15d
	cmpl	$255, %r15d
	jne	.LBB5_54
# BB#55:                                # %for.inc
                                        #   in Loop: Header=BB5_50 Depth=3
	addl	$32, %eax
	movzbl	2(%r12), %r15d
	leaq	4(%r12), %rcx
	cmpl	$255, %r15d
	je	.LBB5_50
# BB#56:                                #   in Loop: Header=BB5_5 Depth=2
	addq	$3, %r12
	addl	$-8, %eax
	jmp	.LBB5_65
.LBB5_59:                               # %if.then.257
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	notb	%r15b
	addq	$2, %r12
	jmp	.LBB5_65
.LBB5_61:                               # %if.then.266
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	notb	%r15b
	addq	$3, %r12
	addl	$8, %eax
	jmp	.LBB5_65
.LBB5_63:                               # %if.then.276
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	notb	%r15b
	addq	$4, %r12
	jmp	.LBB5_64
.LBB5_52:                               # %if.then.227
                                        #   in Loop: Header=BB5_5 Depth=2
	incq	%r12
	addl	$8, %eax
	jmp	.LBB5_65
.LBB5_54:                               # %if.then.236
                                        #   in Loop: Header=BB5_5 Depth=2
	addq	$2, %r12
.LBB5_64:                               # %if.end.288
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$16, %eax
	.align	16, 0x90
.LBB5_65:                               # %if.end.288
                                        #   in Loop: Header=BB5_5 Depth=2
	movzbl	%r15b, %ecx
	movzbl	byte_bit_run_length_0(%rcx), %ecx
	addl	%ecx, %eax
.LBB5_66:                               # %if.end.293
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	%r9d, %r13d
	subl	%eax, %r13d
	jmp	.LBB5_67
	.align	16, 0x90
.LBB5_133:                              # %cond.true
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	$1, %eax
	shll	%cl, %eax
	addl	%eax, %r11d
	movl	%r13d, %r9d
	movl	%ecx, %ebp
.LBB5_67:                               # %pass
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_90 Depth 4
                                        #         Child Loop BB5_75 Depth 4
                                        #         Child Loop BB5_109 Depth 4
                                        #         Child Loop BB5_115 Depth 4
	cmpl	%ebx, %r13d
	jne	.LBB5_69
# BB#68:                                #   in Loop: Header=BB5_67 Depth=3
	movl	%ebx, %r13d
	jmp	.LBB5_104
	.align	16, 0x90
.LBB5_69:                               # %do.body.301
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %eax
	xorq	$255, %rax
	movl	%r13d, %ecx
	andl	$7, %ecx
	movq	byte_bit_run_length_neg(,%rcx,8), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	$8, %esi
	jb	.LBB5_103
# BB#70:                                # %if.then.312
                                        #   in Loop: Header=BB5_67 Depth=3
	movb	(%r12), %r15b
	testb	%r8b, %r8b
	je	.LBB5_71
# BB#86:                                # %if.else.377
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %eax
	cmpl	$255, %eax
	je	.LBB5_88
# BB#87:                                # %if.then.382
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	incq	%r12
	addl	$-8, %esi
	movq	%r12, %rcx
	jmp	.LBB5_102
.LBB5_71:                               # %if.then.316
                                        #   in Loop: Header=BB5_67 Depth=3
	leaq	1(%r12), %rcx
	testb	%r15b, %r15b
	je	.LBB5_73
# BB#72:                                # %if.then.319
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$-8, %esi
	jmp	.LBB5_102
.LBB5_88:                               # %if.else.389
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	1(%r12), %r15d
	cmpl	$255, %r15d
	je	.LBB5_89
# BB#93:                                # %if.then.394
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	jmp	.LBB5_94
.LBB5_73:                               # %if.else.323
                                        #   in Loop: Header=BB5_67 Depth=3
	movb	(%rcx), %r15b
	testb	%r15b, %r15b
	je	.LBB5_74
.LBB5_94:                               # %if.then.326
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$2, %r12
	movq	%r12, %rcx
	jmp	.LBB5_102
.LBB5_89:                               # %while.cond.401.preheader
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	%r9d, 92(%rsp)          # 4-byte Spill
	movb	%r8b, %r10b
	movl	%ebx, %r9d
	addl	$-32, %esi
	.align	16, 0x90
.LBB5_90:                               # %while.cond.401
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r12, %rcx
	movl	%esi, %edi
	movb	2(%rcx), %r15b
	movb	3(%rcx), %bl
	movb	%bl, %dl
	andb	%r15b, %dl
	leaq	4(%rcx), %r12
	movb	4(%rcx), %r8b
	andb	%r8b, %dl
	movb	5(%rcx), %al
	andb	%al, %dl
	movzbl	%dl, %edx
	leal	32(%rdi), %esi
	cmpl	$255, %edx
	je	.LBB5_90
# BB#91:                                # %while.end.418
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %edx
	cmpl	$255, %edx
	je	.LBB5_95
# BB#92:                                # %if.then.423
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$3, %rcx
	notb	%r15b
	jmp	.LBB5_78
.LBB5_74:                               # %while.cond.330.preheader
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	%r9d, 92(%rsp)          # 4-byte Spill
	movb	%r8b, %r10b
	movl	%ebx, %r9d
	addl	$-32, %esi
	.align	16, 0x90
.LBB5_75:                               # %while.cond.330
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r12, %rcx
	movl	%esi, %edi
	movb	2(%rcx), %r15b
	movb	3(%rcx), %al
	movb	%al, %bl
	orb	%r15b, %bl
	leaq	4(%rcx), %r12
	movb	4(%rcx), %r8b
	orb	%r8b, %bl
	movb	5(%rcx), %dl
	leal	32(%rdi), %esi
	orb	%dl, %bl
	je	.LBB5_75
# BB#76:                                # %while.end.347
                                        #   in Loop: Header=BB5_67 Depth=3
	testb	%r15b, %r15b
	je	.LBB5_80
# BB#77:                                # %if.then.350
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$3, %rcx
.LBB5_78:                               # %if.end.466
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$8, %esi
	movl	%r9d, %ebx
	jmp	.LBB5_101
.LBB5_95:                               # %if.else.430
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%bl, %edx
	cmpl	$255, %edx
	je	.LBB5_97
# BB#96:                                # %if.then.435
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%bl
	addl	$16, %esi
	movq	%r12, %rcx
	movb	%bl, %r15b
	movl	%r9d, %ebx
	jmp	.LBB5_101
.LBB5_80:                               # %if.else.354
                                        #   in Loop: Header=BB5_67 Depth=3
	testb	%al, %al
	movl	%r9d, %ebx
	je	.LBB5_82
# BB#81:                                # %if.then.357
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$16, %esi
	movq	%r12, %rcx
	movb	%al, %r15b
	jmp	.LBB5_101
.LBB5_97:                               # %if.else.442
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r8b, %edx
	cmpl	$255, %edx
	movl	%r9d, %ebx
	je	.LBB5_99
# BB#98:                                # %if.then.447
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$5, %rcx
	notb	%r8b
	jmp	.LBB5_84
.LBB5_82:                               # %if.else.361
                                        #   in Loop: Header=BB5_67 Depth=3
	testb	%r8b, %r8b
	je	.LBB5_85
# BB#83:                                # %if.then.364
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$5, %rcx
.LBB5_84:                               # %if.end.466
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$24, %esi
	movb	%r8b, %r15b
	jmp	.LBB5_101
.LBB5_99:                               # %if.else.454
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$64, %edi
	notb	%al
	addq	$6, %rcx
	movb	%al, %r15b
	jmp	.LBB5_100
.LBB5_85:                               # %if.else.368
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$64, %edi
	addq	$6, %rcx
	movb	%dl, %r15b
.LBB5_100:                              # %if.end.466
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	%edi, %esi
.LBB5_101:                              # %if.end.466
                                        #   in Loop: Header=BB5_67 Depth=3
	movb	%r10b, %r8b
	movl	92(%rsp), %r9d          # 4-byte Reload
	.align	16, 0x90
.LBB5_102:                              # %if.end.466
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %eax
	xorq	$255, %rax
	movzbl	byte_bit_run_length_0(%rax), %eax
	addl	%eax, %esi
	movq	%rcx, %r12
.LBB5_103:                              # %if.end.473
                                        #   in Loop: Header=BB5_67 Depth=3
	subl	%esi, %r13d
.LBB5_104:                              # %if.end.477
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	%r14d, %eax
	subl	%r13d, %eax
	cmpl	$-2, %eax
	jg	.LBB5_135
# BB#105:                               # %if.then.481
                                        #   in Loop: Header=BB5_67 Depth=3
	cmpl	%ebx, %r13d
	jne	.LBB5_107
# BB#106:                               #   in Loop: Header=BB5_67 Depth=3
	movl	%ebx, %r13d
	jmp	.LBB5_131
	.align	16, 0x90
.LBB5_107:                              # %do.body.485
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %ecx
	movl	%r13d, %edx
	andl	$7, %edx
	movq	byte_bit_run_length_neg(,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %ecx
	cmpl	$8, %ecx
	jb	.LBB5_130
# BB#108:                               # %if.then.494
                                        #   in Loop: Header=BB5_67 Depth=3
	testb	%r8b, %r8b
	movb	(%r12), %r15b
	jne	.LBB5_109
# BB#111:                               # %for.cond.499.preheader
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %edx
	cmpl	$255, %edx
	je	.LBB5_114
# BB#112:                               #   in Loop: Header=BB5_67 Depth=3
	incq	%r12
	addl	$-8, %ecx
	jmp	.LBB5_129
	.align	16, 0x90
.LBB5_196:                              # %for.inc.580
                                        #   in Loop: Header=BB5_109 Depth=4
	addl	$32, %ecx
	movb	4(%r12), %r15b
	addq	$4, %r12
.LBB5_109:                              # %for.cond.540.preheader
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	%r15b, %r15b
	jne	.LBB5_110
# BB#123:                               # %if.end.550
                                        #   in Loop: Header=BB5_109 Depth=4
	movb	1(%r12), %r15b
	testb	%r15b, %r15b
	jne	.LBB5_124
# BB#125:                               # %if.end.559
                                        #   in Loop: Header=BB5_109 Depth=4
	movb	2(%r12), %r15b
	testb	%r15b, %r15b
	jne	.LBB5_126
# BB#127:                               # %if.end.569
                                        #   in Loop: Header=BB5_109 Depth=4
	movb	3(%r12), %r15b
	testb	%r15b, %r15b
	je	.LBB5_196
# BB#128:                               # %if.then.572
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	addq	$4, %r12
	addl	$16, %ecx
	jmp	.LBB5_129
.LBB5_110:                              # %if.then.543
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	incq	%r12
	addl	$-8, %ecx
.LBB5_129:                              # %if.end.584
                                        #   in Loop: Header=BB5_67 Depth=3
	movzbl	%r15b, %edx
	movzbl	byte_bit_run_length_0(%rdx), %edx
	addl	%edx, %ecx
.LBB5_130:                              # %if.end.589
                                        #   in Loop: Header=BB5_67 Depth=3
	subl	%ecx, %r13d
.LBB5_131:                              # %if.end.593
                                        #   in Loop: Header=BB5_67 Depth=3
	cmpl	%r14d, %r13d
	jbe	.LBB5_135
# BB#132:                               # %do.end.599
                                        #   in Loop: Header=BB5_67 Depth=3
	movl	%ebp, %ecx
	addl	$-4, %ecx
	jns	.LBB5_133
# BB#134:                               # %cond.false
                                        #   in Loop: Header=BB5_67 Depth=3
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	108(%rax), %edi
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	$4, %ecx
	subl	%ebp, %ecx
	movl	$1, %edx
	shrl	%cl, %edx
	addl	%r11d, %edx
	callq	hc_put_code_proc
	movb	46(%rsp), %r8b          # 1-byte Reload
	addl	$28, %ebp
	movl	$1, %r11d
	movb	%bpl, %cl
	shll	%cl, %r11d
	movl	%r13d, %r9d
	jmp	.LBB5_67
.LBB5_114:                              # %if.end.508.preheader
                                        #   in Loop: Header=BB5_67 Depth=3
	addq	$4, %r12
	.align	16, 0x90
.LBB5_115:                              # %if.end.508
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        #       Parent Loop BB5_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r12, %rdx
	movzbl	-3(%rdx), %r15d
	cmpl	$255, %r15d
	jne	.LBB5_116
# BB#117:                               # %if.end.516
                                        #   in Loop: Header=BB5_115 Depth=4
	movzbl	-2(%rdx), %r15d
	leaq	-1(%rdx), %r12
	cmpl	$255, %r15d
	jne	.LBB5_118
# BB#119:                               # %if.end.525
                                        #   in Loop: Header=BB5_115 Depth=4
	movzbl	(%r12), %r15d
	cmpl	$255, %r15d
	jne	.LBB5_120
# BB#121:                               # %for.inc.535
                                        #   in Loop: Header=BB5_115 Depth=4
	addl	$32, %ecx
	movzbl	(%rdx), %r15d
	leaq	4(%rdx), %r12
	cmpl	$255, %r15d
	je	.LBB5_115
# BB#122:                               #   in Loop: Header=BB5_67 Depth=3
	incq	%rdx
	movq	%rdx, %r12
	addl	$-8, %ecx
	jmp	.LBB5_129
.LBB5_124:                              # %if.then.553
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	addq	$2, %r12
	jmp	.LBB5_129
.LBB5_126:                              # %if.then.562
                                        #   in Loop: Header=BB5_67 Depth=3
	notb	%r15b
	addq	$3, %r12
	addl	$8, %ecx
	jmp	.LBB5_129
.LBB5_116:                              #   in Loop: Header=BB5_67 Depth=3
	addq	$-2, %rdx
	movq	%rdx, %r12
	jmp	.LBB5_129
.LBB5_118:                              # %if.then.521
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$8, %ecx
	jmp	.LBB5_129
.LBB5_120:                              # %if.then.530
                                        #   in Loop: Header=BB5_67 Depth=3
	addl	$16, %ecx
	movq	%rdx, %r12
	jmp	.LBB5_129
	.align	16, 0x90
.LBB5_135:                              # %if.end.612
                                        #   in Loop: Header=BB5_5 Depth=2
	addl	$3, %eax
	cmpl	$6, %eax
	ja	.LBB5_140
# BB#136:                               # %if.then.617
                                        #   in Loop: Header=BB5_4 Depth=1
	movb	%r8b, %r12b
	movq	72(%rsp), %rdx          # 8-byte Reload
	cltq
	movzwl	cf2_run_vertical+2(,%rax,4), %ecx
	subl	%ecx, %ebp
	movzwl	cf2_run_vertical(,%rax,4), %ebx
	js	.LBB5_138
# BB#137:                               # %cond.true.628
                                        #   in Loop: Header=BB5_4 Depth=1
	movb	%bpl, %cl
	shll	%cl, %ebx
	addl	%ebx, %r11d
	jmp	.LBB5_139
.LBB5_138:                              # %cond.false.632
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	108(%rdx), %edi
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	negl	%ecx
	movl	%ebx, %edx
	shrl	%cl, %edx
	addl	%r11d, %edx
	callq	hc_put_code_proc
	addl	$32, %ebp
	movb	%bpl, %cl
	shll	%cl, %ebx
	movl	%ebx, %r11d
.LBB5_139:                              # %cond.end.644
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movb	%r12b, %cl
	notb	%cl
	movq	80(%rsp), %rdx          # 8-byte Reload
	xorl	$255, %edx
	movl	20(%rsp), %ebx          # 4-byte Reload
	cmpl	%ebx, %r14d
	movl	$cf_encode_2d.further_count_bit, %r13d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %r12
	jne	.LBB5_4
.LBB5_2:                                # %while.end.978
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%r11d, 112(%rax)
	movl	%ebp, 116(%rax)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rax)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cf_encode_2d, .Lfunc_end5-cf_encode_2d
	.cfi_endproc

	.align	16, 0x90
	.type	cf_put_long_run,@function
cf_put_long_run:                        # @cf_put_long_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	112(%r14), %eax
	movl	116(%r14), %r13d
	cmpl	$2624, %ebx             # imm = 0xA40
	jl	.LBB6_5
	.align	16, 0x90
.LBB6_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	416(%r12), %ebp
	movzwl	418(%r12), %ecx
	subl	%ecx, %r13d
	js	.LBB6_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%r13b, %cl
	shll	%cl, %ebp
	addl	%ebp, %eax
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_3:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	108(%r14), %edi
	addq	$4, %r15
	movl	%r13d, %ecx
	negl	%ecx
	movl	%ebp, %edx
	shrl	%cl, %edx
	addl	%eax, %edx
	movq	%r15, %rsi
	callq	hc_put_code_proc
	addl	$32, %r13d
	movb	%r13b, %cl
	shll	%cl, %ebp
	movl	%ebp, %eax
.LBB6_4:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	addl	$-2560, %ebx            # imm = 0xFFFFFFFFFFFFF600
	cmpl	$2623, %ebx             # imm = 0xA3F
	jg	.LBB6_1
.LBB6_5:                                # %while.end
	sarl	$6, %ebx
	movslq	%ebx, %rcx
	movzwl	256(%r12,%rcx,4), %ebx
	movzwl	258(%r12,%rcx,4), %ecx
	subl	%ecx, %r13d
	js	.LBB6_7
# BB#6:                                 # %cond.true.26
	movb	%r13b, %cl
	shll	%cl, %ebx
	addl	%eax, %ebx
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.31
	movl	108(%r14), %edi
	addq	$4, %r15
	movl	%r13d, %ecx
	negl	%ecx
	movl	%ebx, %edx
	shrl	%cl, %edx
	addl	%eax, %edx
	movq	%r15, %rsi
	callq	hc_put_code_proc
	addl	$32, %r13d
	movb	%r13b, %cl
	shll	%cl, %ebx
.LBB6_8:                                # %cond.end.43
	movl	%ebx, 112(%r14)
	movl	%r13d, 116(%r14)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cf_put_long_run, .Lfunc_end6-cf_put_long_run
	.cfi_endproc

	.type	st_CFE_state,@object    # @st_CFE_state
	.section	.rodata,"a",@progbits
	.align	8
st_CFE_state:
	.long	216                     # 0xd8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cfe_reloc_ptrs
	.size	st_CFE_state, 64

	.type	s_CFE_template,@object  # @s_CFE_template
	.globl	s_CFE_template
	.align	8
s_CFE_template:
	.quad	st_CFE_state
	.quad	s_CFE_init
	.quad	s_CFE_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_CFE_release
	.quad	s_CFE_set_defaults
	.quad	0
	.size	s_CFE_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CCITTFaxEncode state"
	.size	.L.str, 21

	.type	cfe_reloc_ptrs,@object  # @cfe_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cfe_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cfe_enum_ptrs
	.size	cfe_reloc_ptrs, 24

	.type	cfe_enum_ptrs,@object   # @cfe_enum_ptrs
	.align	2
cfe_enum_ptrs:
	.short	0                       # 0x0
	.short	168                     # 0xa8
	.short	0                       # 0x0
	.short	176                     # 0xb0
	.short	0                       # 0x0
	.short	192                     # 0xc0
	.size	cfe_enum_ptrs, 12

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"CFE lbuf"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CFE lcode"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CFE lprev"
	.size	.L.str.3, 10

	.type	cf_encode_2d.initial_count_bit,@object # @cf_encode_2d.initial_count_bit
	.section	.rodata.cst8,"aM",@progbits,8
cf_encode_2d.initial_count_bit:
	.ascii	"\000\001\002\004\b\020 @"
	.size	cf_encode_2d.initial_count_bit, 8

	.type	cf_encode_2d.further_count_bit,@object # @cf_encode_2d.further_count_bit
cf_encode_2d.further_count_bit:
	.ascii	"\200\001\002\004\b\020 @"
	.size	cf_encode_2d.further_count_bit, 8

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"CFE lprev(close)"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CFE lcode(close)"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CFE lbuf(close)"
	.size	.L.str.6, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
