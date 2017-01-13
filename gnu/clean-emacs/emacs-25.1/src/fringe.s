	.text
	.file	"fringe.bc"
	.globl	lookup_fringe_bitmap
	.align	16, 0x90
	.type	lookup_fringe_bitmap,@function
lookup_fringe_bitmap:                   # @lookup_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$467, %eax              # imm = 0x1D3
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jle	.LBB0_7
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movslq	max_used_fringe_bitmap, %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_7
# BB#4:                                 # %land.lhs.true.9
	cmpq	$24, -24(%rbp)
	jb	.LBB0_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	fringe_bitmaps, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_7
.LBB0_6:                                # %if.then.14
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.end.16
	movl	$0, -4(%rbp)
.LBB0_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lookup_fringe_bitmap, .Lfunc_end0-lookup_fringe_bitmap
	.cfi_endproc

	.globl	draw_fringe_bitmap
	.align	16, 0x90
	.type	draw_fringe_bitmap,@function
draw_fringe_bitmap:                     # @draw_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$34, %rsi
	andq	$1, %rsi
	movb	%sil, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	%ecx, %edx
	jne	.LBB1_17
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$28, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB1_17
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	404(%rax), %edi
	incl	%edi
	movl	%edi, %eax
	subl	$4, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	ja	.LBB1_11
# BB#21:                                # %if.then
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_3:                                # %sw.bb
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rax
	cmpq	$13, %rax
	jb	.LBB1_5
# BB#4:                                 # %if.then.10
	movl	$521, %edi              # imm = 0x209
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$522, %edi              # imm = 0x20A
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_12
.LBB1_7:                                # %sw.bb.13
	movl	$218, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB1_12
.LBB1_8:                                # %sw.bb.15
	movl	$196, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb.17
	movl	$512, %edi              # imm = 0x200
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.19
	jmp	.LBB1_11
.LBB1_11:                               # %sw.default
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-129, %cx
	movw	%cx, 468(%rax)
	movq	-16(%rbp), %rax
	movq	236(%rax), %rdx
	andq	$-268435457, %rdx       # imm = 0xFFFFFFFFEFFFFFFF
	movq	%rdx, 236(%rax)
.LBB1_12:                               # %sw.epilog
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_16
# BB#13:                                # %if.then.28
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	get_logical_cursor_bitmap
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.32
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-36(%rbp), %r8d
	callq	draw_fringe_bitmap_1
	movl	$218, %edi
	movq	-32(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	movl	$3, %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	cmovel	%edx, %ecx
	movl	%ecx, -24(%rbp)
.LBB1_15:                               # %if.end.36
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.37
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.38
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	draw_fringe_bitmap_1
	cmpl	$0, -20(%rbp)
	je	.LBB1_20
# BB#18:                                # %land.lhs.true.39
	movq	-16(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB1_20
# BB#19:                                # %if.then.42
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	208(%rcx), %r8d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	draw_fringe_bitmap_1
.LBB1_20:                               # %if.end.44
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	draw_fringe_bitmap, .Lfunc_end1-draw_fringe_bitmap
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_7
	.quad	.LBB1_3
	.quad	.LBB1_8
	.quad	.LBB1_9

	.text
	.align	16, 0x90
	.type	get_logical_cursor_bitmap,@function
get_logical_cursor_bitmap:              # @get_logical_cursor_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	520(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB2_1
	jmp	.LBB2_6
.LBB2_1:                                # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fassq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_5
# BB#2:                                 # %if.then.6
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_4
# BB#3:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB2_12
.LBB2_4:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -4(%rbp)
	jmp	.LBB2_12
.LBB2_5:                                # %if.end.12
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.13
	movq	-32(%rbp), %rax
	cmpq	buffer_defaults+520, %rax
	jne	.LBB2_8
# BB#7:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB2_12
.LBB2_8:                                # %if.end.17
	movq	-24(%rbp), %rdi
	movq	buffer_defaults+520, %rsi
	callq	Fassq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_10
# BB#9:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_11
.LBB2_10:                               # %if.then.29
	movl	$0, -4(%rbp)
	jmp	.LBB2_12
.LBB2_11:                               # %if.end.30
	movq	-40(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -4(%rbp)
.LBB2_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_logical_cursor_bitmap, .Lfunc_end2-get_logical_cursor_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	draw_fringe_bitmap_1,@function
draw_fringe_bitmap_1:                   # @draw_fringe_bitmap_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	%rsi, -40(%rbp)
	movl	$0, -120(%rbp)
	movl	-24(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$1, %ecx
	sete	%al
	andb	$1, %al
	movb	-52(%rbp), %r9b
	shlb	$1, %al
	andb	$-3, %r9b
	orb	%al, %r9b
	movb	%r9b, -52(%rbp)
	movl	-24(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$2, %ecx
	sete	%al
	andb	$1, %al
	movb	-52(%rbp), %r9b
	andb	$-2, %r9b
	orb	%al, %r9b
	movb	%r9b, -52(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.else
	cmpl	$0, -20(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movzwl	216(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	228(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -120(%rbp)
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	shll	$4, %ecx
	sarl	$24, %ecx
	movl	%ecx, -124(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else.16
	movq	-16(%rbp), %rax
	movzwl	218(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shlq	$56, %rax
	sarq	$56, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.27
	cmpl	$0, -120(%rbp)
	jne	.LBB3_13
# BB#7:                                 # %if.then.29
	xorl	%edi, %edi
	movslq	-28(%rbp), %rax
	movq	fringe_faces, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_9
# BB#8:                                 # %cond.true
	movl	$467, %edi              # imm = 0x1D3
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	lookup_named_face
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	lookup_derived_face
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB3_10:                               # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jge	.LBB3_12
# BB#11:                                # %if.then.35
	movl	$4, -120(%rbp)
.LBB3_12:                               # %if.end.36
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.37
	movl	-28(%rbp), %edi
	callq	get_fringe_bitmap_data
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %edi
	shrl	$16, %edi
	andl	$255, %edi
	movl	%edi, -116(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	244(%rax), %ecx
	addl	%ecx, %edi
	addl	-124(%rbp), %edi
	movl	%edi, -72(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	movl	%ecx, -88(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -116(%rbp)
	jle	.LBB3_15
# BB#14:                                # %cond.true.56
	movl	-72(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movl	%edx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB3_16
.LBB3_15:                               # %cond.false.58
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB3_16
.LBB3_16:                               # %cond.end.59
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movq	-112(%rbp), %rdx
	movzbl	11(%rdx), %eax
	andl	$3, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB3_17
	jmp	.LBB3_139
.LBB3_139:                              # %cond.end.59
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB3_19
	jmp	.LBB3_140
.LBB3_140:                              # %cond.end.59
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB3_18
	jmp	.LBB3_20
.LBB3_17:                               # %sw.bb
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %edx
	subl	-84(%rbp), %edx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-192(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB3_20
.LBB3_18:                               # %sw.bb.72
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	subl	-84(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %sw.bb.77
	jmp	.LBB3_20
.LBB3_20:                               # %sw.epilog
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_21
	jmp	.LBB3_22
.LBB3_21:                               # %cond.true.78
	movl	-120(%rbp), %eax
	addl	$0, %eax
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB3_23
	jmp	.LBB3_24
.LBB3_22:                               # %cond.false.82
	movslq	-120(%rbp), %rax
	addq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_24
.LBB3_23:                               # %cond.true.90
	movslq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %cond.false.94
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB3_25
.LBB3_25:                               # %cond.end.95
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.101
	jmp	.LBB3_138
.LBB3_27:                               # %if.end.102
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	prepare_face_for_display
	movl	$-1, -68(%rbp)
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_28
	jmp	.LBB3_42
.LBB3_28:                               # %cond.true.106
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB3_57
# BB#29:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB3_57
# BB#30:                                # %land.lhs.true.114
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB3_57
# BB#31:                                # %land.lhs.true.122
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_57
# BB#32:                                # %land.lhs.true.128
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_33
	jmp	.LBB3_38
.LBB3_33:                               # %cond.true.132
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB3_40
# BB#34:                                # %land.lhs.true.137
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB3_40
# BB#35:                                # %land.lhs.true.143
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB3_40
# BB#36:                                # %land.lhs.true.152
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_40
# BB#37:                                # %land.lhs.true.158
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB3_39
	jmp	.LBB3_40
.LBB3_38:                               # %cond.false.164
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB3_39
	jmp	.LBB3_40
.LBB3_39:                               # %cond.true.165
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB3_41
.LBB3_40:                               # %cond.false.169
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB3_41:                               # %cond.end.173
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_43
	jmp	.LBB3_57
.LBB3_42:                               # %cond.false.177
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB3_43
	jmp	.LBB3_57
.LBB3_43:                               # %cond.true.178
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB3_45
# BB#44:                                # %cond.true.182
	movq	-8(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB3_56
.LBB3_45:                               # %cond.false.184
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB3_48
# BB#46:                                # %land.lhs.true.186
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_48
# BB#47:                                # %cond.true.189
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB3_49
	jmp	.LBB3_54
.LBB3_48:                               # %cond.false.194
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB3_49
	jmp	.LBB3_54
.LBB3_49:                               # %cond.true.195
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB3_52
# BB#50:                                # %land.lhs.true.198
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_52
# BB#51:                                # %cond.true.202
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB3_53
.LBB3_52:                               # %cond.false.206
	xorl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB3_53
.LBB3_53:                               # %cond.end.207
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB3_55
.LBB3_54:                               # %cond.false.209
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB3_55:                               # %cond.end.213
	movl	-240(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB3_56:                               # %cond.end.216
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB3_58
.LBB3_57:                               # %cond.false.218
	xorl	%eax, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB3_58
.LBB3_58:                               # %cond.end.219
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jle	.LBB3_60
# BB#59:                                # %cond.true.224
	movl	-128(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB3_61
.LBB3_60:                               # %cond.false.225
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
.LBB3_61:                               # %cond.end.227
	movl	-248(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	244(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movl	72(%rcx), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB3_95
# BB#62:                                # %if.then.237
	movq	-8(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB3_64
# BB#63:                                # %cond.true.241
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB3_65
.LBB3_64:                               # %cond.false.243
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB3_65:                               # %cond.end.247
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%eax, -140(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movw	468(%rsi), %r8w
	shrw	$12, %r8w
	andw	$1, %r8w
	movb	%r8b, %r9b
	testb	$1, %r9b
	cmovnel	%edx, %ecx
	movl	%ecx, %esi
	callq	window_box_left
	movl	%eax, -144(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.LBB3_67
# BB#66:                                # %if.then.259
	movl	-140(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB3_67:                               # %if.end.261
	movl	$2, %eax
	movl	-144(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	-140(%rbp), %edx
	subl	-88(%rbp), %edx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-256(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.LBB3_70
# BB#68:                                # %lor.lhs.false
	movl	-72(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB3_70
# BB#69:                                # %lor.lhs.false.276
	movl	-72(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_94
.LBB3_70:                               # %if.then.285
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpl	$0, 240(%rdx)
	movb	%cl, -257(%rbp)         # 1-byte Spill
	je	.LBB3_93
# BB#71:                                # %land.lhs.true.288
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpl	$0, 336(%rdx)
	movb	%cl, -257(%rbp)         # 1-byte Spill
	jne	.LBB3_93
# BB#72:                                # %land.lhs.true.290
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB3_74
# BB#73:                                # %cond.true.297
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB3_81
.LBB3_74:                               # %cond.false.298
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_76
# BB#75:                                # %cond.true.302
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB3_80
.LBB3_76:                               # %cond.false.310
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_78
# BB#77:                                # %cond.true.315
	movl	$1, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB3_79
.LBB3_78:                               # %cond.false.316
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-304(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -292(%rbp)        # 4-byte Spill
.LBB3_79:                               # %cond.end.322
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB3_80:                               # %cond.end.324
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB3_81:                               # %cond.end.326
	movl	-264(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$1, %eax
	movb	%dl, -257(%rbp)         # 1-byte Spill
	je	.LBB3_93
# BB#82:                                # %lor.lhs.false.330
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB3_84
# BB#83:                                # %cond.true.337
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB3_91
.LBB3_84:                               # %cond.false.338
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_86
# BB#85:                                # %cond.true.343
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB3_90
.LBB3_86:                               # %cond.false.351
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_88
# BB#87:                                # %cond.true.356
	movl	$1, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB3_89
.LBB3_88:                               # %cond.false.357
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-352(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -340(%rbp)        # 4-byte Spill
.LBB3_89:                               # %cond.end.363
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB3_90:                               # %cond.end.365
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB3_91:                               # %cond.end.367
	movl	-308(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$2, %eax
	movb	%dl, -257(%rbp)         # 1-byte Spill
	je	.LBB3_93
# BB#92:                                # %land.rhs
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	sete	%cl
	movb	%cl, -257(%rbp)         # 1-byte Spill
.LBB3_93:                               # %land.end
	movb	-257(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-140(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -140(%rbp)
	movl	-144(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-140(%rbp), %ecx
	movl	%ecx, -64(%rbp)
.LBB3_94:                               # %if.end.377
	jmp	.LBB3_105
.LBB3_95:                               # %if.else.378
	movl	$1, %eax
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$12, %si
	andw	$1, %si
	movb	%sil, %r8b
	testb	$1, %r8b
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	window_box_right
	movl	%eax, -148(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 424(%rdx)
	jl	.LBB3_97
# BB#96:                                # %cond.true.391
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB3_98
.LBB3_97:                               # %cond.false.393
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB3_98:                               # %cond.end.397
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jle	.LBB3_100
# BB#99:                                # %if.then.402
	movl	-152(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB3_100:                              # %if.end.404
	movl	$2, %eax
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %edx
	subl	-88(%rbp), %edx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-360(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.LBB3_103
# BB#101:                               # %lor.lhs.false.413
	movl	-72(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB3_103
# BB#102:                               # %lor.lhs.false.418
	movl	-72(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_104
.LBB3_103:                              # %if.then.427
	movl	-148(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB3_104:                              # %if.end.430
	jmp	.LBB3_105
.LBB3_105:                              # %if.end.431
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	240(%rcx), %esi
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %di
	shrw	$11, %di
	andw	$1, %di
	testw	$1, %di
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, -368(%rbp)        # 4-byte Spill
	movl	%esi, -372(%rbp)        # 4-byte Spill
	je	.LBB3_107
# BB#106:                               # %cond.true.443
	xorl	%eax, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB3_114
.LBB3_107:                              # %cond.false.444
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_109
# BB#108:                               # %cond.true.449
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB3_113
.LBB3_109:                              # %cond.false.457
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_111
# BB#110:                               # %cond.true.462
	movl	$1, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB3_112
.LBB3_111:                              # %cond.false.463
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -404(%rbp)        # 4-byte Spill
.LBB3_112:                              # %cond.end.469
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB3_113:                              # %cond.end.471
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB3_114:                              # %cond.end.473
	movl	-376(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB3_119
# BB#115:                               # %cond.true.477
	movq	-8(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB3_117
# BB#116:                               # %cond.true.480
	movq	-8(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB3_118
.LBB3_117:                              # %cond.false.482
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB3_118:                              # %cond.end.485
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB3_120
.LBB3_119:                              # %cond.false.487
	xorl	%eax, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB3_120
.LBB3_120:                              # %cond.end.488
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	-372(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-368(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movl	-364(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB3_138
# BB#121:                               # %land.lhs.true.494
	movl	-76(%rbp), %eax
	addl	-88(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	240(%rcx), %esi
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %di
	shrw	$11, %di
	andw	$1, %di
	testw	$1, %di
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	%edx, -432(%rbp)        # 4-byte Spill
	movl	%esi, -436(%rbp)        # 4-byte Spill
	je	.LBB3_123
# BB#122:                               # %cond.true.508
	xorl	%eax, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB3_130
.LBB3_123:                              # %cond.false.509
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_125
# BB#124:                               # %cond.true.514
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	jmp	.LBB3_129
.LBB3_125:                              # %cond.false.522
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_127
# BB#126:                               # %cond.true.527
	movl	$1, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB3_128
.LBB3_127:                              # %cond.false.528
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-480(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -468(%rbp)        # 4-byte Spill
.LBB3_128:                              # %cond.end.534
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB3_129:                              # %cond.end.536
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB3_130:                              # %cond.end.538
	movl	-440(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB3_135
# BB#131:                               # %cond.true.542
	movq	-8(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB3_133
# BB#132:                               # %cond.true.546
	movq	-8(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	jmp	.LBB3_134
.LBB3_133:                              # %cond.false.548
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
.LBB3_134:                              # %cond.end.552
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB3_136
.LBB3_135:                              # %cond.false.554
	xorl	%eax, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB3_136
.LBB3_136:                              # %cond.end.555
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-432(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addl	256(%rdx), %eax
	movl	-428(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_138
# BB#137:                               # %if.then.562
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB3_138:                              # %if.end.563
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	draw_fringe_bitmap_1, .Lfunc_end3-draw_fringe_bitmap_1
	.cfi_endproc

	.globl	draw_row_fringe_bitmaps
	.align	16, 0x90
	.type	draw_row_fringe_bitmaps,@function
draw_row_fringe_bitmaps:                # @draw_row_fringe_bitmaps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 72(%rsi)
	jg	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_12
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	draw_fringe_bitmap
.LBB4_7:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpl	$0, 424(%rax)
	jl	.LBB4_9
# BB#8:                                 # %cond.true.8
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false.10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
.LBB4_10:                               # %cond.end.14
	movl	-24(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB4_12
# BB#11:                                # %if.then.17
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	draw_fringe_bitmap
.LBB4_12:                               # %if.end.18
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	draw_row_fringe_bitmaps, .Lfunc_end4-draw_row_fringe_bitmaps
	.cfi_endproc

	.globl	draw_window_fringes
	.align	16, 0x90
	.type	draw_window_fringes,@function
draw_window_fringes:                    # @draw_window_fringes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdi
	movl	24(%rdi), %eax
	movl	%eax, -40(%rbp)
	movb	$0, -49(%rbp)
	movq	-16(%rbp), %rdi
	movw	468(%rdi), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movb	-49(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB5_21
.LBB5_2:                                # %if.end
	testb	$1, -17(%rbp)
	je	.LBB5_12
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB5_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB5_6:                                # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB5_11
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 424(%rax)
	jl	.LBB5_9
# BB#8:                                 # %cond.true.7
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.9
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB5_10:                               # %cond.end.13
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB5_12
.LBB5_11:                               # %if.then.16
	movb	$1, -49(%rbp)
.LBB5_12:                               # %if.end.17
	movq	-16(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jge	.LBB5_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	setl	%cl
	movb	%cl, -61(%rbp)          # 1-byte Spill
.LBB5_15:                               # %land.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_16
	jmp	.LBB5_20
.LBB5_16:                               # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.25
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_19
.LBB5_18:                               # %if.end.26
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	draw_row_fringe_bitmaps
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rdi
	andq	$-513, %rdi             # imm = 0xFFFFFFFFFFFFFDFF
	movq	%rdi, 236(%rsi)
	movb	$1, -49(%rbp)
.LBB5_19:                               # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -32(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB5_13
.LBB5_20:                               # %for.end
	movb	-49(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB5_21:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	draw_window_fringes, .Lfunc_end5-draw_window_fringes
	.cfi_endproc

	.globl	update_window_fringes
	.align	16, 0x90
	.type	update_window_fringes,@function
update_window_fringes:                  # @update_window_fringes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$1568, %rsp             # imm = 0x620
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_text_bottom_y
	xorl	%edi, %edi
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -52(%rbp)
	movb	$0, -57(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movw	468(%rax), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB6_541
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_23
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	504(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB6_4
	jmp	.LBB6_23
.LBB6_4:                                # %if.then.12
	movl	$607, %edi              # imm = 0x25F
	movq	-112(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_6
# BB#5:                                 # %lor.lhs.false
	movl	$811, %edi              # imm = 0x32B
	movq	-112(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_7
.LBB6_6:                                # %if.then.17
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB6_22
.LBB6_7:                                # %if.else
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_20
# BB#8:                                 # %land.lhs.true.20
	movq	-112(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_20
# BB#9:                                 # %if.then.25
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_10
	jmp	.LBB6_11
.LBB6_10:                               # %if.then.32
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
.LBB6_11:                               # %if.end.34
	movl	$928, %edi              # imm = 0x3A0
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_12
	jmp	.LBB6_13
.LBB6_12:                               # %if.then.41
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB6_13:                               # %if.end.45
	movl	$213, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_14:                               # %if.then.52
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB6_15:                               # %if.end.56
	movl	$977, %edi              # imm = 0x3D1
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_16
	jmp	.LBB6_17
.LBB6_16:                               # %if.then.63
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB6_17:                               # %if.end.67
	movl	$352, %edi              # imm = 0x160
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_18
	jmp	.LBB6_19
.LBB6_18:                               # %if.then.74
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB6_19:                               # %if.end.78
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.79
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
.LBB6_21:                               # %if.end.81
	jmp	.LBB6_22
.LBB6_22:                               # %if.end.82
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.83
	xorl	%edi, %edi
	movl	$-1, -248(%rbp)
	movl	$-1, -244(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_144
# BB#24:                                # %if.then.87
	movq	-16(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB6_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -425(%rbp)         # 1-byte Spill
	jge	.LBB6_27
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setl	%cl
	movb	%cl, -425(%rbp)         # 1-byte Spill
.LBB6_27:                               # %land.end
                                        #   in Loop: Header=BB6_25 Depth=1
	movb	-425(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_28
	jmp	.LBB6_143
.LBB6_28:                               # %for.body
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_30
# BB#29:                                # %if.then.96
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB6_30:                               # %if.end.101
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movabsq	$-2147483649, %rcx      # imm = 0xFFFFFFFF7FFFFFFF
	andq	236(%rax), %rcx
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1073741825, %rcx      # imm = 0xFFFFFFFFBFFFFFFF
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movabsq	$-8589934593, %rcx      # imm = 0xFFFFFFFDFFFFFFFF
	andq	236(%rax), %rcx
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movabsq	$-4294967297, %rcx      # imm = 0xFFFFFFFEFFFFFFFF
	andq	236(%rax), %rcx
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_141
# BB#31:                                # %if.then.114
                                        #   in Loop: Header=BB6_25 Depth=1
	cmpl	$0, -244(%rbp)
	jge	.LBB6_76
# BB#32:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 72(%rax)
	jle	.LBB6_76
# BB#33:                                # %if.then.120
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB6_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB6_39
.LBB6_35:                               # %cond.false
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_37
# BB#36:                                # %cond.true.130
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB6_38
.LBB6_37:                               # %cond.false.134
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB6_38:                               # %cond.end
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB6_39:                               # %cond.end.139
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB6_74
# BB#40:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	je	.LBB6_73
# BB#41:                                # %land.lhs.true.147
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_42
	jmp	.LBB6_56
.LBB6_42:                               # %cond.true.152
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_71
# BB#43:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_71
# BB#44:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_71
# BB#45:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_71
# BB#46:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_47
	jmp	.LBB6_52
.LBB6_47:                               # %cond.true.180
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_54
# BB#48:                                # %land.lhs.true.185
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_54
# BB#49:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_54
# BB#50:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_54
# BB#51:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_53
	jmp	.LBB6_54
.LBB6_52:                               # %cond.false.212
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_53
	jmp	.LBB6_54
.LBB6_53:                               # %cond.true.213
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB6_55
.LBB6_54:                               # %cond.false.217
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
.LBB6_55:                               # %cond.end.221
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	-484(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_57
	jmp	.LBB6_71
.LBB6_56:                               # %cond.false.225
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_57
	jmp	.LBB6_71
.LBB6_57:                               # %cond.true.226
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB6_59
# BB#58:                                # %cond.true.229
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	jmp	.LBB6_70
.LBB6_59:                               # %cond.false.231
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_62
# BB#60:                                # %land.lhs.true.233
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_62
# BB#61:                                # %cond.true.237
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_63
	jmp	.LBB6_68
.LBB6_62:                               # %cond.false.242
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_63
	jmp	.LBB6_68
.LBB6_63:                               # %cond.true.243
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_66
# BB#64:                                # %land.lhs.true.246
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_66
# BB#65:                                # %cond.true.250
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB6_67
.LBB6_66:                               # %cond.false.254
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB6_67
.LBB6_67:                               # %cond.end.255
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB6_69
.LBB6_68:                               # %cond.false.257
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB6_69:                               # %cond.end.261
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-512(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -504(%rbp)        # 4-byte Spill
.LBB6_70:                               # %cond.end.264
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB6_72
.LBB6_71:                               # %cond.false.266
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB6_72
.LBB6_72:                               # %cond.end.267
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	-468(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB6_74
.LBB6_73:                               # %if.then.271
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, %esi
	movq	236(%rax), %r8
	shlq	$30, %rsi
	andq	$-1073741825, %r8       # imm = 0xFFFFFFFFBFFFFFFF
	orq	%rsi, %r8
	movq	%r8, 236(%rax)
	jmp	.LBB6_75
.LBB6_74:                               # %if.else.280
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, %esi
	movq	236(%rax), %r8
	shlq	$31, %rsi
	movabsq	$-2147483649, %r9       # imm = 0xFFFFFFFF7FFFFFFF
	andq	%r9, %r8
	orq	%rsi, %r8
	movq	%r8, 236(%rax)
.LBB6_75:                               # %if.end.292
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -244(%rbp)
.LBB6_76:                               # %if.end.293
                                        #   in Loop: Header=BB6_25 Depth=1
	cmpl	$0, -248(%rbp)
	jge	.LBB6_140
# BB#77:                                # %if.then.296
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB6_79
# BB#78:                                # %cond.true.302
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB6_83
.LBB6_79:                               # %cond.false.303
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_81
# BB#80:                                # %cond.true.309
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB6_82
.LBB6_81:                               # %cond.false.313
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB6_82:                               # %cond.end.318
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB6_83:                               # %cond.end.320
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB6_136
# BB#84:                                # %land.lhs.true.324
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	je	.LBB6_135
# BB#85:                                # %land.lhs.true.329
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	60(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	76(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	260(%rax), %edx
	movq	-16(%rbp), %rax
	movl	244(%rax), %esi
	movq	-16(%rbp), %rax
	addl	260(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	%edx, -576(%rbp)        # 4-byte Spill
	movl	%esi, -580(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -584(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-584(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-580(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB6_87
# BB#86:                                # %land.lhs.true.348
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_89
.LBB6_87:                               # %lor.lhs.false.356
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB6_89
# BB#88:                                # %lor.lhs.false.362
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB6_90
.LBB6_89:                               # %cond.true.369
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB6_91
.LBB6_90:                               # %cond.false.370
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
.LBB6_91:                               # %cond.end.373
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	-576(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -600(%rbp)        # 4-byte Spill
	jne	.LBB6_94
# BB#92:                                # %lor.lhs.false.382
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB6_95
# BB#93:                                # %land.lhs.true.388
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB6_95
.LBB6_94:                               # %cond.true.395
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_100
	jmp	.LBB6_104
.LBB6_95:                               # %cond.false.396
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_97
# BB#96:                                # %cond.true.400
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_100
	jmp	.LBB6_104
.LBB6_97:                               # %cond.false.408
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_99
# BB#98:                                # %cond.true.413
                                        #   in Loop: Header=BB6_25 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_100
	jmp	.LBB6_104
.LBB6_99:                               # %cond.false.414
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_100
	jmp	.LBB6_104
.LBB6_100:                              # %cond.true.415
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB6_102
# BB#101:                               # %cond.true.418
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	jmp	.LBB6_103
.LBB6_102:                              # %cond.false.420
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
.LBB6_103:                              # %cond.end.423
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB6_105
.LBB6_104:                              # %cond.false.425
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB6_105
.LBB6_105:                              # %cond.end.426
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	-600(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_106
	jmp	.LBB6_111
.LBB6_106:                              # %cond.true.432
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_133
# BB#107:                               # %land.lhs.true.437
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_133
# BB#108:                               # %land.lhs.true.443
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_133
# BB#109:                               # %land.lhs.true.452
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_133
# BB#110:                               # %land.lhs.true.459
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_112
	jmp	.LBB6_133
.LBB6_111:                              # %cond.false.466
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_112
	jmp	.LBB6_133
.LBB6_112:                              # %cond.true.467
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB6_114
# BB#113:                               # %cond.true.470
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	jmp	.LBB6_132
.LBB6_114:                              # %cond.false.472
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_117
# BB#115:                               # %land.lhs.true.475
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_117
# BB#116:                               # %cond.true.479
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB6_118
	jmp	.LBB6_123
.LBB6_117:                              # %cond.false.489
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_118
	jmp	.LBB6_123
.LBB6_118:                              # %cond.true.490
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_121
# BB#119:                               # %land.lhs.true.493
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_121
# BB#120:                               # %cond.true.497
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -648(%rbp)        # 4-byte Spill
	jmp	.LBB6_122
.LBB6_121:                              # %cond.false.506
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB6_122
.LBB6_122:                              # %cond.end.507
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-648(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB6_131
.LBB6_123:                              # %cond.false.509
                                        #   in Loop: Header=BB6_25 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	movb	%al, -665(%rbp)         # 1-byte Spill
	je	.LBB6_130
# BB#124:                               # %lor.lhs.false.513
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-680(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -665(%rbp)         # 1-byte Spill
	je	.LBB6_130
# BB#125:                               # %lor.rhs
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -681(%rbp)         # 1-byte Spill
	jle	.LBB6_129
# BB#126:                               # %land.lhs.true.519
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-696(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -681(%rbp)         # 1-byte Spill
	je	.LBB6_129
# BB#127:                               # %land.lhs.true.523
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-704(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -681(%rbp)         # 1-byte Spill
	jne	.LBB6_129
# BB#128:                               # %land.rhs.528
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -681(%rbp)         # 1-byte Spill
.LBB6_129:                              # %land.end.532
                                        #   in Loop: Header=BB6_25 Depth=1
	movb	-681(%rbp), %al         # 1-byte Reload
	movb	%al, -665(%rbp)         # 1-byte Spill
.LBB6_130:                              # %lor.end
                                        #   in Loop: Header=BB6_25 Depth=1
	movb	-665(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB6_131:                              # %cond.end.535
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB6_132:                              # %cond.end.538
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB6_134
.LBB6_133:                              # %cond.false.540
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB6_134
.LBB6_134:                              # %cond.end.541
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	-628(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-572(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB6_136
.LBB6_135:                              # %if.then.546
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, %esi
	movq	236(%rax), %r8
	shlq	$32, %rsi
	movabsq	$-4294967297, %r9       # imm = 0xFFFFFFFEFFFFFFFF
	andq	%r9, %r8
	orq	%rsi, %r8
	movq	%r8, 236(%rax)
	movl	-48(%rbp), %edi
	movl	%edi, -248(%rbp)
	jmp	.LBB6_139
.LBB6_136:                              # %if.else.558
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	60(%rcx), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB6_138
# BB#137:                               # %if.then.563
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, %esi
	movq	236(%rax), %r8
	shlq	$33, %rsi
	movabsq	$-8589934593, %r9       # imm = 0xFFFFFFFDFFFFFFFF
	andq	%r9, %r8
	orq	%rsi, %r8
	movq	%r8, 236(%rax)
	movl	-48(%rbp), %edi
	movl	%edi, -248(%rbp)
.LBB6_138:                              # %if.end.575
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_139
.LBB6_139:                              # %if.end.576
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_140
.LBB6_140:                              # %if.end.577
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_141
.LBB6_141:                              # %if.end.578
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_142
.LBB6_142:                              # %for.inc
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB6_25
.LBB6_143:                              # %for.end
	jmp	.LBB6_144
.LBB6_144:                              # %if.end.581
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	496(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_153
# BB#145:                               # %land.lhs.true.587
	movl	$811, %edi              # imm = 0x32B
	movq	-104(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_153
# BB#146:                               # %if.then.591
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB6_148
# BB#147:                               # %cond.true.594
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	jmp	.LBB6_149
.LBB6_148:                              # %cond.false.596
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
.LBB6_149:                              # %cond.end.600
	movl	-756(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_151
# BB#150:                               # %cond.true.604
	movl	$811, %edi              # imm = 0x32B
	callq	builtin_lisp_symbol
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB6_152
.LBB6_151:                              # %cond.false.606
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB6_152:                              # %cond.end.608
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
.LBB6_153:                              # %if.end.610
	movl	$0, -56(%rbp)
.LBB6_154:                              # %for.cond.611
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32, -56(%rbp)
	jge	.LBB6_157
# BB#155:                               # %for.body.614
                                        #   in Loop: Header=BB6_154 Depth=1
	movslq	-56(%rbp), %rax
	movl	$-1, -240(%rbp,%rax,4)
# BB#156:                               # %for.inc.615
                                        #   in Loop: Header=BB6_154 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_154
.LBB6_157:                              # %for.end.617
	movl	$-1, -256(%rbp)
	movl	$-1, -252(%rbp)
	cmpl	$0, -244(%rbp)
	jl	.LBB6_247
# BB#158:                               # %if.then.620
	movl	$0, -276(%rbp)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-244(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_160
# BB#159:                               # %if.then.630
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-244(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB6_160:                              # %if.end.635
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -260(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$30, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_185
# BB#161:                               # %if.then.646
	movl	$607, %edi              # imm = 0x25F
	movq	-72(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_173
# BB#162:                               # %if.then.650
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_168
# BB#163:                               # %land.lhs.true.657
	movl	$607, %edi              # imm = 0x25F
	movq	-80(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_168
# BB#164:                               # %cond.true.661
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$4, %edx
	movslq	%edx, %rax
	cmpl	$0, -240(%rbp,%rax,4)
	jl	.LBB6_166
# BB#165:                               # %cond.true.673
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$4, %edx
	movslq	%edx, %rax
	movl	-240(%rbp,%rax,4), %edx
	movl	%edx, -788(%rbp)        # 4-byte Spill
	jmp	.LBB6_167
.LBB6_166:                              # %cond.false.683
	movl	$929, %edi              # imm = 0x3A1
	movq	-16(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$15, %rcx
	andq	$1, %rcx
	movb	%cl, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$15, %rsi
	andq	$1, %rsi
	movb	%sil, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB6_167:                              # %cond.end.701
	movl	-788(%rbp), %eax        # 4-byte Reload
	movl	%eax, -804(%rbp)        # 4-byte Spill
	jmp	.LBB6_172
.LBB6_168:                              # %cond.false.703
	cmpl	$0, -208(%rbp)
	jl	.LBB6_170
# BB#169:                               # %cond.true.707
	movl	-208(%rbp), %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB6_171
.LBB6_170:                              # %cond.false.709
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-816(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -820(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-820(%rbp), %edx        # 4-byte Reload
	movl	-820(%rbp), %ecx        # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -208(%rbp)
	movl	%eax, -808(%rbp)        # 4-byte Spill
.LBB6_171:                              # %cond.end.713
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	%eax, -804(%rbp)        # 4-byte Spill
.LBB6_172:                              # %cond.end.715
	movl	-804(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	jmp	.LBB6_184
.LBB6_173:                              # %if.else.717
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_179
# BB#174:                               # %land.lhs.true.724
	movl	$811, %edi              # imm = 0x32B
	movq	-80(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-832(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_179
# BB#175:                               # %cond.true.728
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$6, %edx
	movslq	%edx, %rax
	cmpl	$0, -240(%rbp,%rax,4)
	jl	.LBB6_177
# BB#176:                               # %cond.true.740
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$6, %edx
	movslq	%edx, %rax
	movl	-240(%rbp,%rax,4), %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
	jmp	.LBB6_178
.LBB6_177:                              # %cond.false.750
	movl	$929, %edi              # imm = 0x3A1
	movq	-16(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$15, %rcx
	andq	$1, %rcx
	movb	%cl, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$15, %rsi
	andq	$1, %rsi
	movb	%sil, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB6_178:                              # %cond.end.768
	movl	-836(%rbp), %eax        # 4-byte Reload
	movl	%eax, -852(%rbp)        # 4-byte Spill
	jmp	.LBB6_183
.LBB6_179:                              # %cond.false.770
	cmpl	$0, -200(%rbp)
	jl	.LBB6_181
# BB#180:                               # %cond.true.774
	movl	-200(%rbp), %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB6_182
.LBB6_181:                              # %cond.false.776
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -200(%rbp)
	movl	%eax, -856(%rbp)        # 4-byte Spill
.LBB6_182:                              # %cond.end.780
	movl	-856(%rbp), %eax        # 4-byte Reload
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB6_183:                              # %cond.end.782
	movl	-852(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
.LBB6_184:                              # %if.end.784
	jmp	.LBB6_197
.LBB6_185:                              # %if.else.785
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$31, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_196
# BB#186:                               # %if.then.791
	movl	$607, %edi              # imm = 0x25F
	movq	-88(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_191
# BB#187:                               # %if.then.795
	cmpl	$0, -144(%rbp)
	jl	.LBB6_189
# BB#188:                               # %cond.true.799
	movl	-144(%rbp), %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
	jmp	.LBB6_190
.LBB6_189:                              # %cond.false.801
	movl	$977, %edi              # imm = 0x3D1
	movq	-16(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-888(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -892(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-892(%rbp), %edx        # 4-byte Reload
	movl	-892(%rbp), %ecx        # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -144(%rbp)
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB6_190:                              # %cond.end.805
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	jmp	.LBB6_195
.LBB6_191:                              # %if.else.807
	cmpl	$0, -136(%rbp)
	jl	.LBB6_193
# BB#192:                               # %cond.true.811
	movl	-136(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	jmp	.LBB6_194
.LBB6_193:                              # %cond.false.813
	movl	$977, %edi              # imm = 0x3D1
	movq	-16(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -136(%rbp)
	movl	%eax, -896(%rbp)        # 4-byte Spill
.LBB6_194:                              # %cond.end.817
	movl	-896(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
.LBB6_195:                              # %if.end.819
	jmp	.LBB6_196
.LBB6_196:                              # %if.end.820
	jmp	.LBB6_197
.LBB6_197:                              # %if.end.821
	cmpl	$0, -276(%rbp)
	je	.LBB6_246
# BB#198:                               # %if.then.824
	movl	-276(%rbp), %edi
	callq	get_fringe_bitmap_data
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movl	8(%rax), %edi
	shrl	$24, %edi
	andl	$3, %edi
	cmpl	$1, %edi
	jne	.LBB6_245
# BB#199:                               # %land.lhs.true.831
	movq	-288(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_245
# BB#200:                               # %if.then.837
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_201
	jmp	.LBB6_215
.LBB6_201:                              # %cond.true.841
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_230
# BB#202:                               # %land.lhs.true.846
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_230
# BB#203:                               # %land.lhs.true.852
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_230
# BB#204:                               # %land.lhs.true.861
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-912(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_230
# BB#205:                               # %land.lhs.true.868
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_206
	jmp	.LBB6_211
.LBB6_206:                              # %cond.true.873
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_213
# BB#207:                               # %land.lhs.true.878
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_213
# BB#208:                               # %land.lhs.true.884
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_213
# BB#209:                               # %land.lhs.true.893
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_213
# BB#210:                               # %land.lhs.true.900
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_212
	jmp	.LBB6_213
.LBB6_211:                              # %cond.false.907
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_212
	jmp	.LBB6_213
.LBB6_212:                              # %cond.true.908
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	jmp	.LBB6_214
.LBB6_213:                              # %cond.false.913
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
.LBB6_214:                              # %cond.end.917
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	-916(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_216
	jmp	.LBB6_230
.LBB6_215:                              # %cond.false.921
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_216
	jmp	.LBB6_230
.LBB6_216:                              # %cond.true.922
	movq	-16(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB6_218
# BB#217:                               # %cond.true.926
	movq	-16(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -936(%rbp)        # 4-byte Spill
	jmp	.LBB6_229
.LBB6_218:                              # %cond.false.928
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_221
# BB#219:                               # %land.lhs.true.931
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_221
# BB#220:                               # %cond.true.935
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_222
	jmp	.LBB6_227
.LBB6_221:                              # %cond.false.940
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_222
	jmp	.LBB6_227
.LBB6_222:                              # %cond.true.941
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_225
# BB#223:                               # %land.lhs.true.944
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_225
# BB#224:                               # %cond.true.948
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB6_226
.LBB6_225:                              # %cond.false.952
	xorl	%eax, %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	jmp	.LBB6_226
.LBB6_226:                              # %cond.end.953
	movl	-940(%rbp), %eax        # 4-byte Reload
	movl	%eax, -944(%rbp)        # 4-byte Spill
	jmp	.LBB6_228
.LBB6_227:                              # %cond.false.955
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -944(%rbp)        # 4-byte Spill
.LBB6_228:                              # %cond.end.959
	movl	-944(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -936(%rbp)        # 4-byte Spill
.LBB6_229:                              # %cond.end.962
	movl	-936(%rbp), %eax        # 4-byte Reload
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB6_231
.LBB6_230:                              # %cond.false.964
	xorl	%eax, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB6_231
.LBB6_231:                              # %cond.end.965
	movl	-948(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)
	movl	-252(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	8(%rcx), %edx
	andl	$255, %edx
	addl	%edx, %eax
	movl	%eax, -300(%rbp)
	movl	-300(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_233
# BB#232:                               # %if.then.973
	movl	-44(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB6_233:                              # %if.end.974
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	60(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-244(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
.LBB6_234:                              # %for.cond.979
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-56(%rbp), %eax
	cmpl	-300(%rbp), %eax
	movb	%cl, -949(%rbp)         # 1-byte Spill
	jge	.LBB6_236
# BB#235:                               # %land.rhs.982
                                        #   in Loop: Header=BB6_234 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setl	%cl
	movb	%cl, -949(%rbp)         # 1-byte Spill
.LBB6_236:                              # %land.end.985
                                        #   in Loop: Header=BB6_234 Depth=1
	movb	-949(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_237
	jmp	.LBB6_244
.LBB6_237:                              # %for.body.986
                                        #   in Loop: Header=BB6_234 Depth=1
	cmpl	$0, -248(%rbp)
	jl	.LBB6_240
# BB#238:                               # %land.lhs.true.989
                                        #   in Loop: Header=BB6_234 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jl	.LBB6_240
# BB#239:                               # %if.then.992
	jmp	.LBB6_244
.LBB6_240:                              # %if.end.993
                                        #   in Loop: Header=BB6_234 Depth=1
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_242
# BB#241:                               # %if.then.1003
                                        #   in Loop: Header=BB6_234 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
.LBB6_242:                              # %if.end.1008
                                        #   in Loop: Header=BB6_234 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$30, %rax
	andq	$1, %rax
	movb	%al, %cl
	movq	-296(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movq	236(%rax), %rdi
	shlq	$30, %rsi
	andq	$-1073741825, %rdi      # imm = 0xFFFFFFFFBFFFFFFF
	orq	%rsi, %rdi
	movq	%rdi, 236(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$31, %rax
	andq	$1, %rax
	movb	%al, %cl
	movq	-296(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movq	236(%rax), %rdi
	shlq	$31, %rsi
	movabsq	$-2147483649, %r8       # imm = 0xFFFFFFFF7FFFFFFF
	andq	%r8, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 236(%rax)
# BB#243:                               # %for.inc.1033
                                        #   in Loop: Header=BB6_234 Depth=1
	movq	-296(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB6_234
.LBB6_244:                              # %for.end.1037
	jmp	.LBB6_245
.LBB6_245:                              # %if.end.1038
	jmp	.LBB6_246
.LBB6_246:                              # %if.end.1039
	jmp	.LBB6_247
.LBB6_247:                              # %if.end.1040
	cmpl	$0, -248(%rbp)
	jl	.LBB6_354
# BB#248:                               # %if.then.1043
	movl	$0, -304(%rbp)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-248(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_250
# BB#249:                               # %if.then.1054
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-248(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB6_250:                              # %if.end.1059
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -264(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_261
# BB#251:                               # %if.then.1071
	movl	$607, %edi              # imm = 0x25F
	movq	-80(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_256
# BB#252:                               # %if.then.1075
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$12, %edx
	movslq	%edx, %rax
	cmpl	$0, -240(%rbp,%rax,4)
	jl	.LBB6_254
# BB#253:                               # %cond.true.1087
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$12, %edx
	movslq	%edx, %rax
	movl	-240(%rbp,%rax,4), %edx
	movl	%edx, -964(%rbp)        # 4-byte Spill
	jmp	.LBB6_255
.LBB6_254:                              # %cond.false.1097
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$15, %rcx
	andq	$1, %rcx
	movb	%cl, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$15, %rsi
	andq	$1, %rsi
	movb	%sil, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -964(%rbp)        # 4-byte Spill
.LBB6_255:                              # %cond.end.1115
	movl	-964(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)
	jmp	.LBB6_260
.LBB6_256:                              # %if.else.1117
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$14, %edx
	movslq	%edx, %rax
	cmpl	$0, -240(%rbp,%rax,4)
	jl	.LBB6_258
# BB#257:                               # %cond.true.1129
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$14, %edx
	movslq	%edx, %rax
	movl	-240(%rbp,%rax,4), %edx
	movl	%edx, -980(%rbp)        # 4-byte Spill
	jmp	.LBB6_259
.LBB6_258:                              # %cond.false.1139
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$15, %rcx
	andq	$1, %rcx
	movb	%cl, %sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$15, %rsi
	andq	$1, %rsi
	movb	%sil, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -980(%rbp)        # 4-byte Spill
.LBB6_259:                              # %cond.end.1157
	movl	-980(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)
.LBB6_260:                              # %if.end.1159
	jmp	.LBB6_273
.LBB6_261:                              # %if.else.1160
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_272
# BB#262:                               # %if.then.1166
	movl	$607, %edi              # imm = 0x25F
	movq	-96(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_267
# BB#263:                               # %if.then.1170
	cmpl	$0, -128(%rbp)
	jl	.LBB6_265
# BB#264:                               # %cond.true.1174
	movl	-128(%rbp), %eax
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB6_266
.LBB6_265:                              # %cond.false.1176
	movl	$352, %edi              # imm = 0x160
	movq	-16(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1020(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1020(%rbp), %edx       # 4-byte Reload
	movl	-1020(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -128(%rbp)
	movl	%eax, -1004(%rbp)       # 4-byte Spill
.LBB6_266:                              # %cond.end.1180
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movl	%eax, -304(%rbp)
	jmp	.LBB6_271
.LBB6_267:                              # %if.else.1182
	cmpl	$0, -120(%rbp)
	jl	.LBB6_269
# BB#268:                               # %cond.true.1186
	movl	-120(%rbp), %eax
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB6_270
.LBB6_269:                              # %cond.false.1188
	movl	$352, %edi              # imm = 0x160
	movq	-16(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -120(%rbp)
	movl	%eax, -1024(%rbp)       # 4-byte Spill
.LBB6_270:                              # %cond.end.1192
	movl	-1024(%rbp), %eax       # 4-byte Reload
	movl	%eax, -304(%rbp)
.LBB6_271:                              # %if.end.1194
	jmp	.LBB6_272
.LBB6_272:                              # %if.end.1195
	jmp	.LBB6_273
.LBB6_273:                              # %if.end.1196
	cmpl	$0, -304(%rbp)
	je	.LBB6_353
# BB#274:                               # %if.then.1199
	movl	-304(%rbp), %edi
	callq	get_fringe_bitmap_data
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movl	8(%rax), %edi
	shrl	$24, %edi
	andl	$3, %edi
	cmpl	$2, %edi
	jne	.LBB6_352
# BB#275:                               # %land.lhs.true.1208
	movq	-312(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_352
# BB#276:                               # %if.then.1215
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	72(%rax), %ecx
	movl	%ecx, -256(%rbp)
	movl	-256(%rbp), %ecx
	movq	-312(%rbp), %rax
	movl	8(%rax), %edx
	andl	$255, %edx
	subl	%edx, %ecx
	movl	%ecx, -324(%rbp)
	movl	-324(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -1036(%rbp)       # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_277
	jmp	.LBB6_291
.LBB6_277:                              # %cond.true.1227
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_306
# BB#278:                               # %land.lhs.true.1232
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_306
# BB#279:                               # %land.lhs.true.1238
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_306
# BB#280:                               # %land.lhs.true.1247
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_306
# BB#281:                               # %land.lhs.true.1254
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_282
	jmp	.LBB6_287
.LBB6_282:                              # %cond.true.1259
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_289
# BB#283:                               # %land.lhs.true.1264
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_289
# BB#284:                               # %land.lhs.true.1270
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_289
# BB#285:                               # %land.lhs.true.1279
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_289
# BB#286:                               # %land.lhs.true.1286
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_288
	jmp	.LBB6_289
.LBB6_287:                              # %cond.false.1293
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_288
	jmp	.LBB6_289
.LBB6_288:                              # %cond.true.1294
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB6_290
.LBB6_289:                              # %cond.false.1299
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
.LBB6_290:                              # %cond.end.1303
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movl	-1052(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_292
	jmp	.LBB6_306
.LBB6_291:                              # %cond.false.1307
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_292
	jmp	.LBB6_306
.LBB6_292:                              # %cond.true.1308
	movq	-16(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB6_294
# BB#293:                               # %cond.true.1312
	movq	-16(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
	jmp	.LBB6_305
.LBB6_294:                              # %cond.false.1314
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_297
# BB#295:                               # %land.lhs.true.1317
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_297
# BB#296:                               # %cond.true.1321
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_298
	jmp	.LBB6_303
.LBB6_297:                              # %cond.false.1326
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_298
	jmp	.LBB6_303
.LBB6_298:                              # %cond.true.1327
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_301
# BB#299:                               # %land.lhs.true.1330
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_301
# BB#300:                               # %cond.true.1334
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB6_302
.LBB6_301:                              # %cond.false.1338
	xorl	%eax, %eax
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB6_302
.LBB6_302:                              # %cond.end.1339
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB6_304
.LBB6_303:                              # %cond.false.1341
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -1080(%rbp)       # 4-byte Spill
.LBB6_304:                              # %cond.end.1345
	movl	-1080(%rbp), %eax       # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -1072(%rbp)       # 4-byte Spill
.LBB6_305:                              # %cond.end.1348
	movl	-1072(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB6_307
.LBB6_306:                              # %cond.false.1350
	xorl	%eax, %eax
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB6_307
.LBB6_307:                              # %cond.end.1351
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movl	-1036(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB6_340
# BB#308:                               # %if.then.1355
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_309
	jmp	.LBB6_323
.LBB6_309:                              # %cond.true.1359
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_338
# BB#310:                               # %land.lhs.true.1364
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_338
# BB#311:                               # %land.lhs.true.1370
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_338
# BB#312:                               # %land.lhs.true.1379
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_338
# BB#313:                               # %land.lhs.true.1386
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -1100(%rbp)       # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_314
	jmp	.LBB6_319
.LBB6_314:                              # %cond.true.1391
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_321
# BB#315:                               # %land.lhs.true.1396
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_321
# BB#316:                               # %land.lhs.true.1402
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_321
# BB#317:                               # %land.lhs.true.1411
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_321
# BB#318:                               # %land.lhs.true.1418
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_320
	jmp	.LBB6_321
.LBB6_319:                              # %cond.false.1425
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_320
	jmp	.LBB6_321
.LBB6_320:                              # %cond.true.1426
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	jmp	.LBB6_322
.LBB6_321:                              # %cond.false.1431
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
.LBB6_322:                              # %cond.end.1435
	movl	-1116(%rbp), %eax       # 4-byte Reload
	movl	-1100(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_324
	jmp	.LBB6_338
.LBB6_323:                              # %cond.false.1439
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_324
	jmp	.LBB6_338
.LBB6_324:                              # %cond.true.1440
	movq	-16(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB6_326
# BB#325:                               # %cond.true.1444
	movq	-16(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -1120(%rbp)       # 4-byte Spill
	jmp	.LBB6_337
.LBB6_326:                              # %cond.false.1446
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_329
# BB#327:                               # %land.lhs.true.1449
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_329
# BB#328:                               # %cond.true.1453
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_330
	jmp	.LBB6_335
.LBB6_329:                              # %cond.false.1458
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_330
	jmp	.LBB6_335
.LBB6_330:                              # %cond.true.1459
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_333
# BB#331:                               # %land.lhs.true.1462
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_333
# BB#332:                               # %cond.true.1466
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB6_334
.LBB6_333:                              # %cond.false.1470
	xorl	%eax, %eax
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB6_334
.LBB6_334:                              # %cond.end.1471
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1128(%rbp)       # 4-byte Spill
	jmp	.LBB6_336
.LBB6_335:                              # %cond.false.1473
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -1128(%rbp)       # 4-byte Spill
.LBB6_336:                              # %cond.end.1477
	movl	-1128(%rbp), %eax       # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -1120(%rbp)       # 4-byte Spill
.LBB6_337:                              # %cond.end.1480
	movl	-1120(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB6_339
.LBB6_338:                              # %cond.false.1482
	xorl	%eax, %eax
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB6_339
.LBB6_339:                              # %cond.end.1483
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movl	%eax, -324(%rbp)
.LBB6_340:                              # %if.end.1485
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-248(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
.LBB6_341:                              # %for.cond.1488
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-56(%rbp), %eax
	cmpl	-324(%rbp), %eax
	movb	%cl, -1133(%rbp)        # 1-byte Spill
	jl	.LBB6_343
# BB#342:                               # %land.rhs.1491
                                        #   in Loop: Header=BB6_341 Depth=1
	cmpl	$0, -48(%rbp)
	setge	%al
	movb	%al, -1133(%rbp)        # 1-byte Spill
.LBB6_343:                              # %land.end.1494
                                        #   in Loop: Header=BB6_341 Depth=1
	movb	-1133(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_344
	jmp	.LBB6_351
.LBB6_344:                              # %for.body.1495
                                        #   in Loop: Header=BB6_341 Depth=1
	cmpl	$0, -244(%rbp)
	jl	.LBB6_347
# BB#345:                               # %land.lhs.true.1498
                                        #   in Loop: Header=BB6_341 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jg	.LBB6_347
# BB#346:                               # %if.then.1501
	jmp	.LBB6_351
.LBB6_347:                              # %if.end.1502
                                        #   in Loop: Header=BB6_341 Depth=1
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_349
# BB#348:                               # %if.then.1512
                                        #   in Loop: Header=BB6_341 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
.LBB6_349:                              # %if.end.1517
                                        #   in Loop: Header=BB6_341 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	movb	%al, %cl
	movq	-320(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movq	236(%rax), %rdi
	shlq	$32, %rsi
	movabsq	$-4294967297, %r8       # imm = 0xFFFFFFFEFFFFFFFF
	andq	%r8, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 236(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	movb	%al, %cl
	movq	-320(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movq	236(%rax), %rdi
	shlq	$33, %rsi
	movabsq	$-8589934593, %r8       # imm = 0xFFFFFFFDFFFFFFFF
	andq	%r8, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 236(%rax)
# BB#350:                               # %for.inc.1542
                                        #   in Loop: Header=BB6_341 Depth=1
	movq	-320(%rbp), %rax
	movl	60(%rax), %ecx
	movl	-56(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB6_341
.LBB6_351:                              # %for.end.1545
	jmp	.LBB6_352
.LBB6_352:                              # %if.end.1546
	jmp	.LBB6_353
.LBB6_353:                              # %if.end.1547
	jmp	.LBB6_354
.LBB6_354:                              # %if.end.1548
	movq	-16(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB6_355:                              # %for.cond.1550
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -1134(%rbp)        # 1-byte Spill
	jge	.LBB6_357
# BB#356:                               # %land.rhs.1553
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setl	%cl
	movb	%cl, -1134(%rbp)        # 1-byte Spill
.LBB6_357:                              # %land.end.1556
                                        #   in Loop: Header=BB6_355 Depth=1
	movb	-1134(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_358
	jmp	.LBB6_538
.LBB6_358:                              # %for.body.1557
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_360
# BB#359:                               # %if.then.1571
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_360:                              # %if.end.1572
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$0, -340(%rbp)
	movl	$0, -336(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -344(%rbp)
	movb	$0, -349(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB6_362
# BB#361:                               # %cond.true.1576
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB6_363
.LBB6_362:                              # %cond.false.1578
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
.LBB6_363:                              # %cond.end.1582
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1140(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_365
# BB#364:                               # %if.then.1586
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$0, -328(%rbp)
	jmp	.LBB6_437
.LBB6_365:                              # %if.else.1587
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movzwl	212(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_367
# BB#366:                               # %if.then.1593
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movzwl	212(%rax), %ecx
	movl	%ecx, -328(%rbp)
	movq	-32(%rbp), %rax
	movzwl	220(%rax), %ecx
	movzbl	222(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -336(%rbp)
	jmp	.LBB6_436
.LBB6_367:                              # %if.else.1602
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_369
# BB#368:                               # %land.lhs.true.1607
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$11, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_371
.LBB6_369:                              # %lor.lhs.false.1613
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_375
# BB#370:                               # %land.lhs.true.1620
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_375
.LBB6_371:                              # %if.then.1626
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -240(%rbp)
	jl	.LBB6_373
# BB#372:                               # %cond.true.1630
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-240(%rbp), %eax
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB6_374
.LBB6_373:                              # %cond.false.1632
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$936, %edi              # imm = 0x3A8
	movq	-16(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1156(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1156(%rbp), %edx       # 4-byte Reload
	movl	-1156(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -240(%rbp)
	movl	%eax, -1144(%rbp)       # 4-byte Spill
.LBB6_374:                              # %cond.end.1636
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1144(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	jmp	.LBB6_435
.LBB6_375:                              # %if.else.1638
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$30, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_390
# BB#376:                               # %land.lhs.true.1645
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-72(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_390
# BB#377:                               # %if.then.1649
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_383
# BB#378:                               # %land.lhs.true.1656
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-80(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_383
# BB#379:                               # %cond.true.1660
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-260(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	cmpl	$0, -240(%rbp,%rcx,4)
	jl	.LBB6_381
# BB#380:                               # %cond.true.1666
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-260(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	jmp	.LBB6_382
.LBB6_381:                              # %cond.false.1670
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$929, %edi              # imm = 0x3A1
	movq	-16(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movl	-260(%rbp), %ecx
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	-260(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -1180(%rbp)       # 4-byte Spill
.LBB6_382:                              # %cond.end.1676
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1180(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	jmp	.LBB6_387
.LBB6_383:                              # %cond.false.1678
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -208(%rbp)
	jl	.LBB6_385
# BB#384:                               # %cond.true.1682
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-208(%rbp), %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	jmp	.LBB6_386
.LBB6_385:                              # %cond.false.1684
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1212(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1212(%rbp), %edx       # 4-byte Reload
	movl	-1212(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -208(%rbp)
	movl	%eax, -1200(%rbp)       # 4-byte Spill
.LBB6_386:                              # %cond.end.1688
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1200(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1196(%rbp)       # 4-byte Spill
.LBB6_387:                              # %cond.end.1690
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1196(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	cmpl	$0, -252(%rbp)
	jl	.LBB6_389
# BB#388:                               # %if.then.1694
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-252(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, -344(%rbp)
.LBB6_389:                              # %if.end.1697
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_434
.LBB6_390:                              # %if.else.1698
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_398
# BB#391:                               # %land.lhs.true.1705
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-80(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_398
# BB#392:                               # %if.then.1709
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-264(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	cmpl	$0, -240(%rbp,%rcx,4)
	jl	.LBB6_394
# BB#393:                               # %cond.true.1715
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-264(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	movl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB6_395
.LBB6_394:                              # %cond.false.1719
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movl	-264(%rbp), %ecx
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	-264(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -1228(%rbp)       # 4-byte Spill
.LBB6_395:                              # %cond.end.1725
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	cmpl	$0, -256(%rbp)
	jl	.LBB6_397
# BB#396:                               # %if.then.1729
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-256(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	72(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -344(%rbp)
.LBB6_397:                              # %if.end.1734
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_433
.LBB6_398:                              # %if.else.1735
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_400
# BB#399:                               # %land.lhs.true.1741
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 244(%rax)
	jg	.LBB6_402
.LBB6_400:                              # %lor.lhs.false.1744
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_406
# BB#401:                               # %land.lhs.true.1751
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$13, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_406
.LBB6_402:                              # %if.then.1757
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -176(%rbp)
	jl	.LBB6_404
# BB#403:                               # %cond.true.1761
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-176(%rbp), %eax
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	jmp	.LBB6_405
.LBB6_404:                              # %cond.false.1763
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$297, %edi              # imm = 0x129
	movq	-16(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1260(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1260(%rbp), %edx       # 4-byte Reload
	movl	-1260(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -176(%rbp)
	movl	%eax, -1244(%rbp)       # 4-byte Spill
.LBB6_405:                              # %cond.end.1767
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1244(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	jmp	.LBB6_432
.LBB6_406:                              # %if.else.1769
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$17, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_412
# BB#407:                               # %land.lhs.true.1775
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-104(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_412
# BB#408:                               # %if.then.1779
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -160(%rbp)
	jl	.LBB6_410
# BB#409:                               # %cond.true.1783
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB6_411
.LBB6_410:                              # %cond.false.1785
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$364, %edi              # imm = 0x16C
	movq	-16(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1292(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1292(%rbp), %edx       # 4-byte Reload
	movl	-1292(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -160(%rbp)
	movl	%eax, -1276(%rbp)       # 4-byte Spill
.LBB6_411:                              # %cond.end.1789
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	jmp	.LBB6_431
.LBB6_412:                              # %if.else.1791
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$31, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_420
# BB#413:                               # %land.lhs.true.1798
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-88(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_420
# BB#414:                               # %if.then.1802
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -144(%rbp)
	jl	.LBB6_416
# BB#415:                               # %cond.true.1806
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-144(%rbp), %eax
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB6_417
.LBB6_416:                              # %cond.false.1808
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$977, %edi              # imm = 0x3D1
	movq	-16(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1324(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1324(%rbp), %edx       # 4-byte Reload
	movl	-1324(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -144(%rbp)
	movl	%eax, -1308(%rbp)       # 4-byte Spill
.LBB6_417:                              # %cond.end.1812
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	cmpl	$0, -252(%rbp)
	jl	.LBB6_419
# BB#418:                               # %if.then.1816
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-252(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, -344(%rbp)
.LBB6_419:                              # %if.end.1819
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_430
.LBB6_420:                              # %if.else.1820
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_428
# BB#421:                               # %land.lhs.true.1827
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-96(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_428
# BB#422:                               # %if.then.1831
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -128(%rbp)
	jl	.LBB6_424
# BB#423:                               # %cond.true.1835
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB6_425
.LBB6_424:                              # %cond.false.1837
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$352, %edi              # imm = 0x160
	movq	-16(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1356(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1356(%rbp), %edx       # 4-byte Reload
	movl	-1356(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movl	%eax, -128(%rbp)
	movl	%eax, -1340(%rbp)       # 4-byte Spill
.LBB6_425:                              # %cond.end.1841
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movl	%eax, -328(%rbp)
	cmpl	$0, -256(%rbp)
	jl	.LBB6_427
# BB#426:                               # %if.then.1845
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-256(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	72(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -344(%rbp)
.LBB6_427:                              # %if.end.1850
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_429
.LBB6_428:                              # %if.else.1851
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$0, -328(%rbp)
.LBB6_429:                              # %if.end.1852
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_430
.LBB6_430:                              # %if.end.1853
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_431
.LBB6_431:                              # %if.end.1854
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_432
.LBB6_432:                              # %if.end.1855
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_433
.LBB6_433:                              # %if.end.1856
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_434
.LBB6_434:                              # %if.end.1857
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_435
.LBB6_435:                              # %if.end.1858
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_436
.LBB6_436:                              # %if.end.1859
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_437
.LBB6_437:                              # %if.end.1860
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 424(%rax)
	jl	.LBB6_439
# BB#438:                               # %cond.true.1863
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -1360(%rbp)       # 4-byte Spill
	jmp	.LBB6_440
.LBB6_439:                              # %cond.false.1865
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -1360(%rbp)       # 4-byte Spill
.LBB6_440:                              # %cond.end.1869
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1360(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_442
# BB#441:                               # %if.then.1873
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$0, -332(%rbp)
	jmp	.LBB6_514
.LBB6_442:                              # %if.else.1874
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movzwl	214(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_444
# BB#443:                               # %if.then.1881
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movzwl	214(%rax), %ecx
	movl	%ecx, -332(%rbp)
	movq	-32(%rbp), %rax
	movl	224(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -340(%rbp)
	jmp	.LBB6_513
.LBB6_444:                              # %if.else.1889
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_446
# BB#445:                               # %land.lhs.true.1895
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_448
.LBB6_446:                              # %lor.lhs.false.1902
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_452
# BB#447:                               # %land.lhs.true.1909
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$11, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_452
.LBB6_448:                              # %if.then.1916
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -232(%rbp)
	jl	.LBB6_450
# BB#449:                               # %cond.true.1920
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	jmp	.LBB6_451
.LBB6_450:                              # %cond.false.1922
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$936, %edi              # imm = 0x3A8
	movq	-16(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -232(%rbp)
	movl	%eax, -1364(%rbp)       # 4-byte Spill
.LBB6_451:                              # %cond.end.1926
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1364(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	jmp	.LBB6_512
.LBB6_452:                              # %if.else.1928
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$30, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_467
# BB#453:                               # %land.lhs.true.1935
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-72(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1384(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_467
# BB#454:                               # %if.then.1939
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_460
# BB#455:                               # %land.lhs.true.1946
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-80(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_460
# BB#456:                               # %cond.true.1950
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-260(%rbp), %eax
	addl	$6, %eax
	movslq	%eax, %rcx
	cmpl	$0, -240(%rbp,%rcx,4)
	jl	.LBB6_458
# BB#457:                               # %cond.true.1956
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-260(%rbp), %eax
	addl	$6, %eax
	movslq	%eax, %rcx
	movl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	jmp	.LBB6_459
.LBB6_458:                              # %cond.false.1960
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$929, %edi              # imm = 0x3A1
	movq	-16(%rbp), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movl	-260(%rbp), %ecx
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	-260(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -1396(%rbp)       # 4-byte Spill
.LBB6_459:                              # %cond.end.1966
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1396(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1412(%rbp)       # 4-byte Spill
	jmp	.LBB6_464
.LBB6_460:                              # %cond.false.1968
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -200(%rbp)
	jl	.LBB6_462
# BB#461:                               # %cond.true.1972
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-200(%rbp), %eax
	movl	%eax, -1416(%rbp)       # 4-byte Spill
	jmp	.LBB6_463
.LBB6_462:                              # %cond.false.1974
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -200(%rbp)
	movl	%eax, -1416(%rbp)       # 4-byte Spill
.LBB6_463:                              # %cond.end.1978
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1416(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1412(%rbp)       # 4-byte Spill
.LBB6_464:                              # %cond.end.1980
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1412(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	cmpl	$0, -252(%rbp)
	jl	.LBB6_466
# BB#465:                               # %if.then.1984
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-252(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, -348(%rbp)
.LBB6_466:                              # %if.end.1987
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_511
.LBB6_467:                              # %if.else.1988
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_475
# BB#468:                               # %land.lhs.true.1995
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-80(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_475
# BB#469:                               # %if.then.1999
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-264(%rbp), %eax
	addl	$14, %eax
	movslq	%eax, %rcx
	cmpl	$0, -240(%rbp,%rcx,4)
	jl	.LBB6_471
# BB#470:                               # %cond.true.2005
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-264(%rbp), %eax
	addl	$14, %eax
	movslq	%eax, %rcx
	movl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -1436(%rbp)       # 4-byte Spill
	jmp	.LBB6_472
.LBB6_471:                              # %cond.false.2009
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movl	-264(%rbp), %ecx
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	-264(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rsi
	movl	%eax, -240(%rbp,%rsi,4)
	movl	%eax, -1436(%rbp)       # 4-byte Spill
.LBB6_472:                              # %cond.end.2015
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	cmpl	$0, -256(%rbp)
	jl	.LBB6_474
# BB#473:                               # %if.then.2019
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-256(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	72(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -348(%rbp)
.LBB6_474:                              # %if.end.2024
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_510
.LBB6_475:                              # %if.else.2025
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_477
# BB#476:                               # %land.lhs.true.2031
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$13, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_479
.LBB6_477:                              # %lor.lhs.false.2038
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_483
# BB#478:                               # %land.lhs.true.2045
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 244(%rax)
	jle	.LBB6_483
.LBB6_479:                              # %if.then.2049
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -168(%rbp)
	jl	.LBB6_481
# BB#480:                               # %cond.true.2053
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-168(%rbp), %eax
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB6_482
.LBB6_481:                              # %cond.false.2055
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$297, %edi              # imm = 0x129
	movq	-16(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -168(%rbp)
	movl	%eax, -1452(%rbp)       # 4-byte Spill
.LBB6_482:                              # %cond.end.2059
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1452(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	jmp	.LBB6_509
.LBB6_483:                              # %if.else.2061
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$31, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_491
# BB#484:                               # %land.lhs.true.2068
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-88(%rbp), %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1472(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_491
# BB#485:                               # %if.then.2072
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -136(%rbp)
	jl	.LBB6_487
# BB#486:                               # %cond.true.2076
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-136(%rbp), %eax
	movl	%eax, -1476(%rbp)       # 4-byte Spill
	jmp	.LBB6_488
.LBB6_487:                              # %cond.false.2078
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$977, %edi              # imm = 0x3D1
	movq	-16(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -136(%rbp)
	movl	%eax, -1476(%rbp)       # 4-byte Spill
.LBB6_488:                              # %cond.end.2082
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1476(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	cmpl	$0, -252(%rbp)
	jl	.LBB6_490
# BB#489:                               # %if.then.2086
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-252(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, -348(%rbp)
.LBB6_490:                              # %if.end.2089
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_508
.LBB6_491:                              # %if.else.2090
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_499
# BB#492:                               # %land.lhs.true.2097
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-96(%rbp), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1496(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_499
# BB#493:                               # %if.then.2101
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -120(%rbp)
	jl	.LBB6_495
# BB#494:                               # %cond.true.2105
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, -1500(%rbp)       # 4-byte Spill
	jmp	.LBB6_496
.LBB6_495:                              # %cond.false.2107
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$352, %edi              # imm = 0x160
	movq	-16(%rbp), %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -120(%rbp)
	movl	%eax, -1500(%rbp)       # 4-byte Spill
.LBB6_496:                              # %cond.end.2111
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1500(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	cmpl	$0, -256(%rbp)
	jl	.LBB6_498
# BB#497:                               # %if.then.2115
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-256(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	72(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -348(%rbp)
.LBB6_498:                              # %if.end.2120
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_507
.LBB6_499:                              # %if.else.2121
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$17, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_505
# BB#500:                               # %land.lhs.true.2128
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$811, %edi              # imm = 0x32B
	movq	-104(%rbp), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_505
# BB#501:                               # %if.then.2132
                                        #   in Loop: Header=BB6_355 Depth=1
	cmpl	$0, -152(%rbp)
	jl	.LBB6_503
# BB#502:                               # %cond.true.2136
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -1524(%rbp)       # 4-byte Spill
	jmp	.LBB6_504
.LBB6_503:                              # %cond.false.2138
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$364, %edi              # imm = 0x16C
	movq	-16(%rbp), %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_logical_fringe_bitmap
	movl	%eax, -152(%rbp)
	movl	%eax, -1524(%rbp)       # 4-byte Spill
.LBB6_504:                              # %cond.end.2142
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-1524(%rbp), %eax       # 4-byte Reload
	movl	%eax, -332(%rbp)
	jmp	.LBB6_506
.LBB6_505:                              # %if.else.2144
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$0, -332(%rbp)
.LBB6_506:                              # %if.end.2145
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_507
.LBB6_507:                              # %if.end.2146
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_508
.LBB6_508:                              # %if.end.2147
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_509
.LBB6_509:                              # %if.end.2148
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_510
.LBB6_510:                              # %if.end.2149
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_511
.LBB6_511:                              # %if.end.2150
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_512
.LBB6_512:                              # %if.end.2151
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_513
.LBB6_513:                              # %if.end.2152
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_514
.LBB6_514:                              # %if.end.2153
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-328(%rbp), %edi
	callq	get_fringe_bitmap_data
	movb	$1, %cl
	movl	8(%rax), %edi
	shrl	$16, %edi
	andl	$255, %edi
	cmpl	$0, %edi
	movb	%cl, -1537(%rbp)        # 1-byte Spill
	jne	.LBB6_516
# BB#515:                               # %lor.rhs.2161
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-332(%rbp), %edi
	callq	get_fringe_bitmap_data
	movl	8(%rax), %edi
	shrl	$16, %edi
	andl	$255, %edi
	cmpl	$0, %edi
	setne	%cl
	movb	%cl, -1537(%rbp)        # 1-byte Spill
.LBB6_516:                              # %lor.end.2169
                                        #   in Loop: Header=BB6_355 Depth=1
	movb	-1537(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -349(%rbp)
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-40(%rbp), %rcx
	cmpl	48(%rcx), %edx
	jne	.LBB6_527
# BB#517:                               # %lor.lhs.false.2175
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	72(%rax), %ecx
	jne	.LBB6_527
# BB#518:                               # %lor.lhs.false.2180
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$15, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB6_527
# BB#519:                               # %lor.lhs.false.2195
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-328(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzwl	216(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#520:                               # %lor.lhs.false.2202
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-332(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzwl	218(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#521:                               # %lor.lhs.false.2209
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-336(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	228(%rcx), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#522:                               # %lor.lhs.false.2214
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-340(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	232(%rcx), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#523:                               # %lor.lhs.false.2219
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-344(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	232(%rcx), %edx
	shll	$4, %edx
	sarl	$24, %edx
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#524:                               # %lor.lhs.false.2224
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	-348(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	236(%rcx), %rcx
	shlq	$56, %rcx
	sarq	$56, %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jne	.LBB6_527
# BB#525:                               # %lor.lhs.false.2231
                                        #   in Loop: Header=BB6_355 Depth=1
	movb	-349(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$8, %rdx
	andq	$1, %rdx
	movb	%dl, %al
	andb	$1, %al
	movzbl	%al, %esi
	cmpl	%esi, %ecx
	jne	.LBB6_527
# BB#526:                               # %lor.lhs.false.2241
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_530
.LBB6_527:                              # %if.then.2247
                                        #   in Loop: Header=BB6_355 Depth=1
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
	testb	$1, -17(%rbp)
	jne	.LBB6_529
# BB#528:                               # %if.then.2253
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-40(%rbp), %rax
	movq	236(%rax), %rcx
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
	movq	-40(%rbp), %rax
	movzwl	-328(%rbp), %edx
	movl	%edx, %ecx
	movzwl	220(%rax), %edx
	movl	%edx, %esi
	movzbl	222(%rax), %edx
	movl	%edx, %edi
	movw	%cx, %r8w
	movw	%r8w, 216(%rax)
	movb	%dil, %r9b
	movb	%r9b, 222(%rax)
	movw	%si, %r8w
	movw	%r8w, 220(%rax)
	movq	-40(%rbp), %rax
	movzwl	-332(%rbp), %edx
	movl	%edx, %ecx
	movzwl	220(%rax), %edx
	movl	%edx, %esi
	movzbl	222(%rax), %edx
	movl	%edx, %edi
	movw	%cx, %r8w
	movw	%r8w, 218(%rax)
	movb	%dil, %r9b
	movb	%r9b, 222(%rax)
	movw	%si, %r8w
	movw	%r8w, 220(%rax)
	movl	-336(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	228(%rax), %r10d
	andl	$1048575, %edx          # imm = 0xFFFFF
	andl	$-1048576, %r10d        # imm = 0xFFFFFFFFFFF00000
	orl	%edx, %r10d
	movl	%r10d, 228(%rax)
	movl	-340(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	232(%rax), %r10d
	andl	$1048575, %edx          # imm = 0xFFFFF
	andl	$-1048576, %r10d        # imm = 0xFFFFFFFFFFF00000
	orl	%edx, %r10d
	movl	%r10d, 232(%rax)
	movl	-344(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	232(%rax), %r10d
	andl	$255, %edx
	shll	$20, %edx
	andl	$-267386881, %r10d      # imm = 0xFFFFFFFFF00FFFFF
	orl	%edx, %r10d
	movl	%r10d, 232(%rax)
	movl	-348(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	236(%rax), %rsi
	andq	$255, %rcx
	andq	$-256, %rsi
	orq	%rcx, %rsi
	movq	%rsi, 236(%rax)
	movb	-349(%rbp), %r9b
	movq	-40(%rbp), %rax
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, %ecx
	movq	236(%rax), %rsi
	shlq	$8, %rcx
	andq	$-257, %rsi             # imm = 0xFFFFFFFFFFFFFEFF
	orq	%rcx, %rsi
	movq	%rsi, 236(%rax)
.LBB6_529:                              # %if.end.2303
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_530
.LBB6_530:                              # %if.end.2304
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 208(%rax)
	jge	.LBB6_532
# BB#531:                               # %if.then.2307
                                        #   in Loop: Header=BB6_355 Depth=1
	movl	$730, %edi              # imm = 0x2DA
	movq	-16(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1556(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-1556(%rbp), %edx       # 4-byte Reload
	movl	-1556(%rbp), %ecx       # 4-byte Reload
	callq	get_logical_fringe_bitmap
	movq	-32(%rbp), %rsi
	movl	%eax, 208(%rsi)
.LBB6_532:                              # %if.end.2311
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	208(%rax), %ecx
	je	.LBB6_536
# BB#533:                               # %if.then.2316
                                        #   in Loop: Header=BB6_355 Depth=1
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
	testb	$1, -17(%rbp)
	jne	.LBB6_535
# BB#534:                               # %if.then.2322
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-40(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movl	208(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 208(%rax)
.LBB6_535:                              # %if.end.2329
                                        #   in Loop: Header=BB6_355 Depth=1
	jmp	.LBB6_536
.LBB6_536:                              # %if.end.2330
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movzwl	-328(%rbp), %ecx
	movl	%ecx, %edx
	movzwl	220(%rax), %ecx
	movl	%ecx, %esi
	movzbl	222(%rax), %ecx
	movl	%ecx, %edi
	movw	%dx, %r8w
	movw	%r8w, 216(%rax)
	movb	%dil, %r9b
	movb	%r9b, 222(%rax)
	movw	%si, %r8w
	movw	%r8w, 220(%rax)
	movq	-32(%rbp), %rax
	movzwl	-332(%rbp), %ecx
	movl	%ecx, %edx
	movzwl	220(%rax), %ecx
	movl	%ecx, %esi
	movzbl	222(%rax), %ecx
	movl	%ecx, %edi
	movw	%dx, %r8w
	movw	%r8w, 218(%rax)
	movb	%dil, %r9b
	movb	%r9b, 222(%rax)
	movw	%si, %r8w
	movw	%r8w, 220(%rax)
	movl	-336(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	228(%rax), %r10d
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %r10d        # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %r10d
	movl	%r10d, 228(%rax)
	movl	-340(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	232(%rax), %r10d
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %r10d        # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %r10d
	movl	%r10d, 232(%rax)
	movl	-344(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	232(%rax), %r10d
	andl	$255, %ecx
	shll	$20, %ecx
	andl	$-267386881, %r10d      # imm = 0xFFFFFFFFF00FFFFF
	orl	%ecx, %r10d
	movl	%r10d, 232(%rax)
	movl	-348(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	236(%rax), %rsi
	andq	$255, %rdx
	andq	$-256, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 236(%rax)
	movb	-349(%rbp), %r9b
	movq	-32(%rbp), %rax
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, %edx
	movq	236(%rax), %rsi
	shlq	$8, %rdx
	andq	$-257, %rsi             # imm = 0xFFFFFFFFFFFFFEFF
	orq	%rdx, %rsi
	movq	%rsi, 236(%rax)
# BB#537:                               # %for.inc.2379
                                        #   in Loop: Header=BB6_355 Depth=1
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB6_355
.LBB6_538:                              # %for.end.2383
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -57(%rbp)
	movb	%cl, -1557(%rbp)        # 1-byte Spill
	je	.LBB6_540
# BB#539:                               # %land.rhs.2386
	movb	-17(%rbp), %al
	xorb	$-1, %al
	movb	%al, -1557(%rbp)        # 1-byte Spill
.LBB6_540:                              # %land.end.2389
	movb	-1557(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB6_541:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$1568, %rsp             # imm = 0x620
	popq	%rbp
	retq
.Lfunc_end6:
	.size	update_window_fringes, .Lfunc_end6-update_window_fringes
	.cfi_endproc

	.align	16, 0x90
	.type	get_logical_fringe_bitmap,@function
get_logical_fringe_bitmap:              # @get_logical_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	-28(%rbp), %edi
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %edi
	cmpl	$0, -32(%rbp)
	cmovnel	%edx, %ecx
	addl	%ecx, %edi
	movl	%edi, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	512(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	jne	.LBB7_1
	jmp	.LBB7_22
.LBB7_1:                                # %if.then
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fassq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_21
# BB#2:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_4
# BB#3:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB7_50
.LBB7_4:                                # %if.end
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_17
# BB#5:                                 # %if.then.16
	movq	-48(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_11
# BB#6:                                 # %if.then.19
	movq	-72(%rbp), %rax
	movslq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB7_10
# BB#7:                                 # %if.then.23
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_9
# BB#8:                                 # %if.then.30
	jmp	.LBB7_49
.LBB7_9:                                # %if.end.31
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.32
	jmp	.LBB7_16
.LBB7_11:                               # %if.else
	movq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB7_15
# BB#12:                                # %if.then.36
	movslq	-84(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_14
# BB#13:                                # %if.then.44
	jmp	.LBB7_49
.LBB7_14:                               # %if.end.45
	jmp	.LBB7_15
.LBB7_15:                               # %if.end.46
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.47
	jmp	.LBB7_20
.LBB7_17:                               # %if.else.48
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB7_18
	jmp	.LBB7_19
.LBB7_18:                               # %if.then.53
	jmp	.LBB7_49
.LBB7_19:                               # %if.end.54
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.55
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.56
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.57
	movq	-40(%rbp), %rax
	cmpq	buffer_defaults+512, %rax
	je	.LBB7_37
# BB#23:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	buffer_defaults+512, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_37
# BB#24:                                # %if.then.63
	movq	-24(%rbp), %rdi
	movq	buffer_defaults+512, %rsi
	callq	Fassq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_36
# BB#25:                                # %if.then.69
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB7_26
	jmp	.LBB7_35
.LBB7_26:                               # %if.then.77
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_34
# BB#27:                                # %if.then.82
	movq	-56(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_33
# BB#28:                                # %if.then.86
	movq	-80(%rbp), %rax
	movslq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB7_32
# BB#29:                                # %if.then.90
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_31
# BB#30:                                # %if.then.98
	jmp	.LBB7_49
.LBB7_31:                               # %if.end.99
	jmp	.LBB7_32
.LBB7_32:                               # %if.end.100
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.101
	jmp	.LBB7_34
.LBB7_34:                               # %if.end.102
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.103
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.104
	jmp	.LBB7_37
.LBB7_37:                               # %if.end.105
	movq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB7_41
# BB#38:                                # %if.then.109
	movslq	-84(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_40
# BB#39:                                # %if.then.117
	jmp	.LBB7_49
.LBB7_40:                               # %if.end.118
	jmp	.LBB7_41
.LBB7_41:                               # %if.end.119
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB7_45
# BB#42:                                # %if.then.123
	movslq	-84(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_44
# BB#43:                                # %if.then.131
	jmp	.LBB7_49
.LBB7_44:                               # %if.end.132
	movl	$0, -4(%rbp)
	jmp	.LBB7_50
.LBB7_45:                               # %if.else.133
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_47
# BB#46:                                # %if.then.137
	movl	$0, -4(%rbp)
	jmp	.LBB7_50
.LBB7_47:                               # %if.end.138
	jmp	.LBB7_48
.LBB7_48:                               # %if.end.139
	jmp	.LBB7_49
.LBB7_49:                               # %found
	movq	-64(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -4(%rbp)
.LBB7_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_logical_fringe_bitmap, .Lfunc_end7-get_logical_fringe_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	get_fringe_bitmap_data,@function
get_fringe_bitmap_data:                 # @get_fringe_bitmap_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	fringe_bitmaps, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_5
# BB#1:                                 # %if.then
	movslq	-4(%rbp), %rax
	cmpq	$24, %rax
	jae	.LBB8_3
# BB#2:                                 # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB8_4
.LBB8_3:                                # %cond.false
	movl	$1, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB8_4
.LBB8_4:                                # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movabsq	$standard_bitmaps, %rcx
	movslq	%eax, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB8_5:                                # %if.end
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_fringe_bitmap_data, .Lfunc_end8-get_fringe_bitmap_data
	.cfi_endproc

	.globl	Fdestroy_fringe_bitmap
	.align	16, 0x90
	.type	Fdestroy_fringe_bitmap,@function
Fdestroy_fringe_bitmap:                 # @Fdestroy_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-16(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB9_8
.LBB9_5:                                # %if.end
	movl	-20(%rbp), %edi
	callq	destroy_fringe_bitmap
	movslq	-20(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB9_7
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	movq	globals+896, %rsi
	callq	Fdelq
	movl	$467, %edi              # imm = 0x1D3
	movq	%rax, globals+896
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB9_7:                                # %if.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB9_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fdestroy_fringe_bitmap, .Lfunc_end9-Fdestroy_fringe_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	destroy_fringe_bitmap,@function
destroy_fringe_bitmap:                  # @destroy_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movslq	-4(%rbp), %rcx
	movq	fringe_faces, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	addq	fringe_bitmaps, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_10
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	shrl	$26, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB10_10
# BB#2:                                 # %if.then
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB10_3
	jmp	.LBB10_5
.LBB10_3:                               # %land.lhs.true.4
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_5
# BB#4:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false
	callq	emacs_abort
.LBB10_6:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_9
# BB#7:                                 # %land.lhs.true.9
	movq	-24(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB10_9
# BB#8:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-4(%rbp), %edi
	callq	*%rax
.LBB10_9:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB10_10:                              # %if.end.13
	jmp	.LBB10_11
.LBB10_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	max_used_fringe_bitmap, %rdx
	cmpq	$24, %rdx
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jbe	.LBB10_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	max_used_fringe_bitmap, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	fringe_bitmaps, %rdx
	cmpq	$0, (%rdx,%rcx,8)
	sete	%sil
	movb	%sil, -33(%rbp)         # 1-byte Spill
.LBB10_13:                              # %land.end
                                        #   in Loop: Header=BB10_11 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_14
	jmp	.LBB10_15
.LBB10_14:                              # %while.body
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	max_used_fringe_bitmap, %eax
	addl	$-1, %eax
	movl	%eax, max_used_fringe_bitmap
	jmp	.LBB10_11
.LBB10_15:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	destroy_fringe_bitmap, .Lfunc_end10-destroy_fringe_bitmap
	.cfi_endproc

	.globl	Fdefine_fringe_bitmap
	.align	16, 0x90
	.type	Fdefine_fringe_bitmap,@function
Fdefine_fringe_bitmap:                  # @Fdefine_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB11_3:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	CHECK_VECTOR_OR_STRING
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB11_5
# BB#4:                                 # %if.then
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	andl	$255, %eax
	andl	$-256, %ecx
	orl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB11_20
.LBB11_5:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_7
# BB#6:                                 # %cond.true.13
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.14
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB11_8:                               # %cond.end.16
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jge	.LBB11_10
# BB#9:                                 # %cond.true.19
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.21
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB11_11
.LBB11_11:                              # %cond.end.22
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB11_13
# BB#12:                                # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_17
.LBB11_13:                              # %cond.false.26
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jge	.LBB11_15
# BB#14:                                # %cond.true.30
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB11_16
.LBB11_15:                              # %cond.false.32
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB11_16
.LBB11_16:                              # %cond.end.33
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB11_17:                              # %cond.end.35
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	-72(%rbp), %edx
	andl	$255, %ecx
	andl	$-256, %edx
	orl	%ecx, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	cmpl	-48(%rbp), %ecx
	jle	.LBB11_19
# BB#18:                                # %if.then.48
	movl	$2, %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	subl	-48(%rbp), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-172(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -92(%rbp)
	movl	-72(%rbp), %eax
	andl	$255, %eax
	subl	-48(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB11_19:                              # %if.end
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.57
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_22
# BB#21:                                # %if.then.61
	movl	-72(%rbp), %eax
	andl	$-65281, %eax           # imm = 0xFFFFFFFFFFFF00FF
	orl	$2048, %eax             # imm = 0x800
	movl	%eax, -72(%rbp)
	jmp	.LBB11_35
.LBB11_22:                              # %if.else.66
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_24
# BB#23:                                # %cond.true.72
	jmp	.LBB11_25
.LBB11_24:                              # %cond.false.73
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB11_25:                              # %cond.end.75
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jge	.LBB11_27
# BB#26:                                # %cond.true.79
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false.81
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB11_28
.LBB11_28:                              # %cond.end.82
	movq	-200(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB11_30
# BB#29:                                # %cond.true.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB11_34
.LBB11_30:                              # %cond.false.87
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jge	.LBB11_32
# BB#31:                                # %cond.true.91
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB11_33
.LBB11_32:                              # %cond.false.93
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB11_33
.LBB11_33:                              # %cond.end.94
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB11_34:                              # %cond.end.96
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	-72(%rbp), %edx
	andl	$255, %ecx
	shll	$8, %ecx
	andl	$-65281, %edx           # imm = 0xFFFFFFFFFFFF00FF
	orl	%ecx, %edx
	movl	%edx, -72(%rbp)
.LBB11_35:                              # %if.end.104
	movl	-72(%rbp), %eax
	andl	$-16711681, %eax        # imm = 0xFFFFFFFFFF00FFFF
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-50331649, %eax        # imm = 0xFFFFFFFFFCFFFFFF
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB11_41
# BB#36:                                # %if.then.114
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_40
# BB#37:                                # %if.then.121
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_39
# BB#38:                                # %if.then.126
	movl	-72(%rbp), %eax
	andl	$255, %eax
	movl	-72(%rbp), %ecx
	andl	$255, %eax
	shll	$16, %eax
	andl	$-16711681, %ecx        # imm = 0xFFFFFFFFFF00FFFF
	orl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-256, %eax
	orl	$255, %eax
	movl	%eax, -72(%rbp)
.LBB11_39:                              # %if.end.140
	jmp	.LBB11_40
.LBB11_40:                              # %if.end.141
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_41:                              # %if.end.144
	movl	$928, %edi              # imm = 0x3A0
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_43
# BB#42:                                # %if.then.148
	movl	-72(%rbp), %eax
	andl	$-50331649, %eax        # imm = 0xFFFFFFFFFCFFFFFF
	orl	$16777216, %eax         # imm = 0x1000000
	movl	%eax, -72(%rbp)
	jmp	.LBB11_50
.LBB11_43:                              # %if.else.153
	movl	$213, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_45
# BB#44:                                # %if.then.157
	movl	-72(%rbp), %eax
	andl	$-50331649, %eax        # imm = 0xFFFFFFFFFCFFFFFF
	orl	$33554432, %eax         # imm = 0x2000000
	movl	%eax, -72(%rbp)
	jmp	.LBB11_49
.LBB11_45:                              # %if.else.162
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_48
# BB#46:                                # %land.lhs.true
	movl	$251, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_48
# BB#47:                                # %if.then.169
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB11_48:                              # %if.end.170
	jmp	.LBB11_49
.LBB11_49:                              # %if.end.171
	jmp	.LBB11_50
.LBB11_50:                              # %if.end.172
	movq	-8(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB11_69
# BB#51:                                # %if.then.174
	movl	max_used_fringe_bitmap, %eax
	cmpl	max_fringe_bitmaps, %eax
	jge	.LBB11_53
# BB#52:                                # %if.then.177
	movl	max_used_fringe_bitmap, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, max_used_fringe_bitmap
	movl	%eax, -44(%rbp)
	jmp	.LBB11_68
.LBB11_53:                              # %if.else.178
	movl	$24, -44(%rbp)
.LBB11_54:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	max_fringe_bitmaps, %eax
	jge	.LBB11_59
# BB#55:                                # %for.body
                                        #   in Loop: Header=BB11_54 Depth=1
	movslq	-44(%rbp), %rax
	movq	fringe_bitmaps, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB11_57
# BB#56:                                # %if.then.183
	jmp	.LBB11_59
.LBB11_57:                              # %if.end.184
                                        #   in Loop: Header=BB11_54 Depth=1
	jmp	.LBB11_58
.LBB11_58:                              # %for.inc
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_54
.LBB11_59:                              # %for.end
	movl	-44(%rbp), %eax
	cmpl	max_fringe_bitmaps, %eax
	jne	.LBB11_67
# BB#60:                                # %if.then.188
	movl	$65536, %eax            # imm = 0x10000
	movl	max_fringe_bitmaps, %ecx
	addl	$20, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	-108(%rbp), %eax
	jge	.LBB11_62
# BB#61:                                # %if.then.191
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB11_62:                              # %if.end.192
	movl	max_fringe_bitmaps, %eax
	movl	%eax, -52(%rbp)
	movq	fringe_bitmaps, %rcx
	movslq	-108(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, fringe_bitmaps
	movq	fringe_faces, %rax
	movslq	-108(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, fringe_faces
	movl	max_fringe_bitmaps, %r8d
	movl	%r8d, -52(%rbp)
.LBB11_63:                              # %for.cond.198
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB11_66
# BB#64:                                # %for.body.201
                                        #   in Loop: Header=BB11_63 Depth=1
	xorl	%edi, %edi
	movslq	-52(%rbp), %rax
	movq	fringe_bitmaps, %rcx
	movq	$0, (%rcx,%rax,8)
	callq	builtin_lisp_symbol
	movslq	-52(%rbp), %rcx
	movq	fringe_faces, %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#65:                                # %for.inc.207
                                        #   in Loop: Header=BB11_63 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_63
.LBB11_66:                              # %for.end.209
	movl	-108(%rbp), %eax
	movl	%eax, max_fringe_bitmaps
.LBB11_67:                              # %if.end.210
	jmp	.LBB11_68
.LBB11_68:                              # %if.end.211
	movq	-8(%rbp), %rdi
	movq	globals+896, %rsi
	callq	Fcons
	movl	$467, %edi              # imm = 0x1D3
	movq	%rax, globals+896
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-44(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	Fput
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB11_69:                              # %if.end.217
	movl	-72(%rbp), %eax
	andl	$-67108865, %eax        # imm = 0xFFFFFFFFFBFFFFFF
	orl	$67108864, %eax         # imm = 0x4000000
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$1, %rcx
	addq	$16, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	xorl	%esi, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	-72(%rbp), %edx
	andl	$255, %edx
	movl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	memset
	movl	$0, -56(%rbp)
.LBB11_70:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_72 Depth 2
                                        #     Child Loop BB11_78 Depth 2
                                        #     Child Loop BB11_87 Depth 2
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_93
# BB#71:                                # %while.body
                                        #   in Loop: Header=BB11_70 Depth=1
	movl	$0, -52(%rbp)
.LBB11_72:                              # %for.cond.238
                                        #   Parent Loop BB11_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	cmpl	-92(%rbp), %eax
	movb	%cl, -281(%rbp)         # 1-byte Spill
	jge	.LBB11_74
# BB#73:                                # %land.rhs
                                        #   in Loop: Header=BB11_72 Depth=2
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -281(%rbp)         # 1-byte Spill
.LBB11_74:                              # %land.end
                                        #   in Loop: Header=BB11_72 Depth=2
	movb	-281(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_75
	jmp	.LBB11_77
.LBB11_75:                              # %for.body.246
                                        #   in Loop: Header=BB11_72 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movw	$0, (%rsi,%rdx,2)
# BB#76:                                # %for.inc.250
                                        #   in Loop: Header=BB11_72 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_72
.LBB11_77:                              # %for.end.252
                                        #   in Loop: Header=BB11_70 Depth=1
	movl	$0, -52(%rbp)
.LBB11_78:                              # %for.cond.253
                                        #   Parent Loop BB11_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	movb	%cl, -282(%rbp)         # 1-byte Spill
	jge	.LBB11_80
# BB#79:                                # %land.rhs.256
                                        #   in Loop: Header=BB11_78 Depth=2
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -282(%rbp)         # 1-byte Spill
.LBB11_80:                              # %land.end.262
                                        #   in Loop: Header=BB11_78 Depth=2
	movb	-282(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_81
	jmp	.LBB11_86
.LBB11_81:                              # %for.body.263
                                        #   in Loop: Header=BB11_78 Depth=2
	movq	-16(%rbp), %rdi
	movslq	-52(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB11_82
	jmp	.LBB11_83
.LBB11_82:                              # %cond.true.270
                                        #   in Loop: Header=BB11_78 Depth=2
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB11_84
.LBB11_83:                              # %cond.false.272
                                        #   in Loop: Header=BB11_78 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB11_84
.LBB11_84:                              # %cond.end.273
                                        #   in Loop: Header=BB11_78 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	movw	%ax, %cx
	movl	-56(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%edx, %rax
	movq	-64(%rbp), %rdi
	movw	%cx, (%rdi,%rax,2)
# BB#85:                                # %for.inc.279
                                        #   in Loop: Header=BB11_78 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_78
.LBB11_86:                              # %for.end.281
                                        #   in Loop: Header=BB11_70 Depth=1
	movl	$0, -52(%rbp)
.LBB11_87:                              # %for.cond.282
                                        #   Parent Loop BB11_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	cmpl	-96(%rbp), %eax
	movb	%cl, -297(%rbp)         # 1-byte Spill
	jge	.LBB11_89
# BB#88:                                # %land.rhs.285
                                        #   in Loop: Header=BB11_87 Depth=2
	movl	-56(%rbp), %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -297(%rbp)         # 1-byte Spill
.LBB11_89:                              # %land.end.291
                                        #   in Loop: Header=BB11_87 Depth=2
	movb	-297(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_90
	jmp	.LBB11_92
.LBB11_90:                              # %for.body.292
                                        #   in Loop: Header=BB11_87 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movw	$0, (%rsi,%rdx,2)
# BB#91:                                # %for.inc.296
                                        #   in Loop: Header=BB11_87 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_87
.LBB11_92:                              # %for.end.298
                                        #   in Loop: Header=BB11_70 Depth=1
	jmp	.LBB11_70
.LBB11_93:                              # %while.end
	xorl	%edx, %edx
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-44(%rbp), %edi
	movq	-88(%rbp), %rsi
	callq	init_fringe_bitmap
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fdefine_fringe_bitmap, .Lfunc_end11-Fdefine_fringe_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	init_fringe_bitmap,@function
init_fringe_bitmap:                     # @init_fringe_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$26, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB12_14
.LBB12_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	cmpl	$8, %ecx
	jg	.LBB12_8
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB12_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	andl	$255, %edx
	cmpl	%edx, %eax
	jge	.LBB12_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	$8, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -32(%rbp)
	movw	(%rcx), %si
	movw	%si, -50(%rbp)
	movzwl	-50(%rbp), %edi
	andl	$15, %edi
	movslq	%edi, %rcx
	movzbl	swap_nibble(,%rcx), %edi
	shll	$4, %edi
	movzwl	-50(%rbp), %r8d
	sarl	$4, %r8d
	andl	$15, %r8d
	movslq	%r8d, %rcx
	movzbl	swap_nibble(,%rcx), %r8d
	orl	%r8d, %edi
	movb	%dil, %r9b
	movb	%r9b, -51(%rbp)
	movzbl	-51(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %r8d
	shrl	$8, %r8d
	andl	$255, %r8d
	subl	%r8d, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movb	%dil, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %r10
	addq	$1, %r10
	movq	%r10, -48(%rbp)
	movb	%cl, (%rdx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_4
.LBB12_7:                               # %for.end
	jmp	.LBB12_13
.LBB12_8:                               # %if.else
	movl	$0, -36(%rbp)
.LBB12_9:                               # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	andl	$255, %edx
	cmpl	%edx, %eax
	jge	.LBB12_12
# BB#10:                                # %for.body.31
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	$16, %eax
	movq	-32(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, -54(%rbp)
	movzwl	-54(%rbp), %esi
	andl	$15, %esi
	movslq	%esi, %rcx
	movzbl	swap_nibble(,%rcx), %esi
	shll	$12, %esi
	movzwl	-54(%rbp), %edi
	sarl	$4, %edi
	andl	$15, %edi
	movslq	%edi, %rcx
	movzbl	swap_nibble(,%rcx), %edi
	shll	$8, %edi
	orl	%edi, %esi
	movzwl	-54(%rbp), %edi
	sarl	$8, %edi
	andl	$15, %edi
	movslq	%edi, %rcx
	movzbl	swap_nibble(,%rcx), %edi
	shll	$4, %edi
	orl	%edi, %esi
	movzwl	-54(%rbp), %edi
	sarl	$12, %edi
	andl	$15, %edi
	movslq	%edi, %rcx
	movzbl	swap_nibble(,%rcx), %edi
	orl	%edi, %esi
	movw	%si, %dx
	movw	%dx, -54(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	shrl	$8, %esi
	andl	$255, %esi
	subl	%esi, %eax
	movzwl	-54(%rbp), %esi
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movw	%si, %dx
	movw	%dx, -54(%rbp)
	movw	-54(%rbp), %dx
	movq	-32(%rbp), %r8
	movq	%r8, %r9
	addq	$2, %r9
	movq	%r9, -32(%rbp)
	movw	%dx, (%r8)
# BB#11:                                # %for.inc.72
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_9
.LBB12_12:                              # %for.end.74
	jmp	.LBB12_13
.LBB12_13:                              # %if.end
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.75
	cmpl	$0, -20(%rbp)
	jne	.LBB12_25
# BB#15:                                # %if.then.77
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB12_16
	jmp	.LBB12_18
.LBB12_16:                              # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB12_18
# BB#17:                                # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false
	callq	emacs_abort
.LBB12_19:                              # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movl	-4(%rbp), %edi
	callq	destroy_fringe_bitmap
	cmpq	$0, -64(%rbp)
	je	.LBB12_22
# BB#20:                                # %land.lhs.true.86
	movq	-64(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB12_22
# BB#21:                                # %if.then.88
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	andl	$255, %edx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %r8d
	shrl	$8, %r8d
	andl	$255, %r8d
	movl	%r8d, %ecx
	callq	*%rax
.LBB12_22:                              # %if.end.98
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	fringe_bitmaps, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-4(%rbp), %esi
	cmpl	max_used_fringe_bitmap, %esi
	jl	.LBB12_24
# BB#23:                                # %if.then.103
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, max_used_fringe_bitmap
.LBB12_24:                              # %if.end.104
	jmp	.LBB12_25
.LBB12_25:                              # %if.end.105
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	init_fringe_bitmap, .Lfunc_end12-init_fringe_bitmap
	.cfi_endproc

	.globl	Fset_fringe_bitmap_face
	.align	16, 0x90
	.type	Fset_fringe_bitmap_face,@function
Fset_fringe_bitmap_face:                # @Fset_fringe_bitmap_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB13_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	lookup_fringe_bitmap
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB13_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB13_5:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_18
# BB#6:                                 # %if.then.6
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB13_7
	jmp	.LBB13_9
.LBB13_7:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB13_9
# BB#8:                                 # %cond.true.11
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_10
.LBB13_9:                               # %cond.false.13
	callq	emacs_abort
.LBB13_10:                              # %cond.end.14
	movb	$1, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -32(%rbp)
	testb	$1, %al
	jne	.LBB13_11
	jmp	.LBB13_12
.LBB13_11:                              # %cond.true.15
	movl	$4, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB13_13
	jmp	.LBB13_14
.LBB13_12:                              # %cond.false.18
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB13_14
.LBB13_13:                              # %cond.true.25
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB13_15
	jmp	.LBB13_17
.LBB13_14:                              # %cond.false.28
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB13_15
	jmp	.LBB13_17
.LBB13_15:                              # %land.lhs.true.29
	movl	$4, %edx
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lookup_derived_face
	cmpl	$0, %eax
	jge	.LBB13_17
# BB#16:                                # %if.then.33
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB13_17:                              # %if.end.34
	jmp	.LBB13_18
.LBB13_18:                              # %if.end.35
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	fringe_faces, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fset_fringe_bitmap_face, .Lfunc_end13-Fset_fringe_bitmap_face
	.cfi_endproc

	.globl	Ffringe_bitmaps_at_pos
	.align	16, 0x90
	.type	Ffringe_bitmaps_at_pos,@function
Ffringe_bitmaps_at_pos:                 # @Ffringe_bitmaps_at_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_any_window
	movl	$5, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_14
# BB#1:                                 # %if.then
	jmp	.LBB14_2
.LBB14_2:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB14_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB14_5
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB14_9
.LBB14_5:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_7
# BB#6:                                 # %cond.true
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB14_8:                               # %cond.end
	jmp	.LBB14_9
.LBB14_9:                               # %if.end
	jmp	.LBB14_10
.LBB14_10:                              # %do.end
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB14_12
# BB#11:                                # %land.lhs.true.19
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB14_13
.LBB14_12:                              # %if.then.23
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB14_13:                              # %if.end.24
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_18
.LBB14_14:                              # %if.else.26
	movq	-32(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB14_16
# BB#15:                                # %if.then.30
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.31
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	marker_position
	movq	%rax, -48(%rbp)
.LBB14_17:                              # %if.end.33
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.34
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB14_20
# BB#19:                                # %cond.true.36
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB14_21
.LBB14_20:                              # %cond.false.39
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_21:                              # %cond.end.42
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	row_containing_pos
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB14_29
# BB#22:                                # %if.then.44
	movq	-40(%rbp), %rax
	movzwl	216(%rax), %edi
	callq	get_fringe_bitmap_name
	movq	-40(%rbp), %rcx
	movzwl	218(%rcx), %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	get_fringe_bitmap_name
	movq	-40(%rbp), %rcx
	cmpl	$0, 208(%rcx)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB14_24
# BB#23:                                # %cond.true.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB14_28
.LBB14_24:                              # %cond.false.59
	movq	-40(%rbp), %rax
	cmpl	$0, 208(%rax)
	jge	.LBB14_26
# BB#25:                                # %cond.true.63
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB14_27
.LBB14_26:                              # %cond.false.65
	movq	-40(%rbp), %rax
	movl	208(%rax), %edi
	callq	get_fringe_bitmap_name
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB14_27:                              # %cond.end.68
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_28:                              # %cond.end.70
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB14_30
.LBB14_29:                              # %if.else.73
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Ffringe_bitmaps_at_pos, .Lfunc_end14-Ffringe_bitmaps_at_pos
	.cfi_endproc

	.align	16, 0x90
	.type	get_fringe_bitmap_name,@function
get_fringe_bitmap_name:                 # @get_fringe_bitmap_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_8
.LBB15_2:                               # %if.end
	movq	globals+896, %rax
	movq	%rax, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$467, %edi              # imm = 0x1D3
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_6
# BB#5:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_8
.LBB15_6:                               # %if.end.9
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_3
.LBB15_7:                               # %while.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_fringe_bitmap_name, .Lfunc_end15-get_fringe_bitmap_name
	.cfi_endproc

	.globl	syms_of_fringe
	.align	16, 0x90
	.type	syms_of_fringe,@function
syms_of_fringe:                         # @syms_of_fringe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	movabsq	$Sdestroy_fringe_bitmap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_fringe_bitmap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfringe_bitmaps_at_pos, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_fringe_bitmap_face, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_fringe.o_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$1696, %rax             # imm = 0x6A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1696
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_fringe.o_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$896, %rax              # imm = 0x380
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+896
	popq	%rbp
	retq
.Lfunc_end16:
	.size	syms_of_fringe, .Lfunc_end16-syms_of_fringe
	.cfi_endproc

	.globl	mark_fringe_data
	.align	16, 0x90
	.type	mark_fringe_data,@function
mark_fringe_data:                       # @mark_fringe_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	max_fringe_bitmaps, %eax
	jge	.LBB17_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%edi, %edi
	movslq	-4(%rbp), %rax
	movq	fringe_faces, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	fringe_faces, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	mark_object
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_5
.LBB17_5:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_1
.LBB17_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	mark_fringe_data, .Lfunc_end17-mark_fringe_data
	.cfi_endproc

	.globl	init_fringe_once
	.align	16, 0x90
	.type	init_fringe_once,@function
init_fringe_once:                       # @init_fringe_once
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$24, %rax
	jae	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %edx
	movabsq	$standard_bitmaps, %rax
	movl	-4(%rbp), %edi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	init_fringe_bitmap
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	init_fringe_once, .Lfunc_end18-init_fringe_once
	.cfi_endproc

	.globl	init_fringe
	.align	16, 0x90
	.type	init_fringe,@function
init_fringe:                            # @init_fringe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movl	$44, max_fringe_bitmaps
	movslq	max_fringe_bitmaps, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xzalloc
	movq	%rax, fringe_bitmaps
	movslq	max_fringe_bitmaps, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xzalloc
	movq	%rax, fringe_faces
	popq	%rbp
	retq
.Lfunc_end19:
	.size	init_fringe, .Lfunc_end19-init_fringe
	.cfi_endproc

	.type	max_used_fringe_bitmap,@object # @max_used_fringe_bitmap
	.data
	.globl	max_used_fringe_bitmap
	.align	4
max_used_fringe_bitmap:
	.long	24                      # 0x18
	.size	max_used_fringe_bitmap, 4

	.type	fringe_bitmaps,@object  # @fringe_bitmaps
	.local	fringe_bitmaps
	.comm	fringe_bitmaps,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bad align argument"
	.size	.L.str, 19

	.type	max_fringe_bitmaps,@object # @max_fringe_bitmaps
	.local	max_fringe_bitmaps
	.comm	max_fringe_bitmaps,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"No free fringe bitmap slots"
	.size	.L.str.1, 28

	.type	fringe_faces,@object    # @fringe_faces
	.local	fringe_faces
	.comm	fringe_faces,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Undefined fringe bitmap"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No such face"
	.size	.L.str.3, 13

	.type	syms_of_fringe.o_fwd,@object # @syms_of_fringe.o_fwd
	.local	syms_of_fringe.o_fwd
	.comm	syms_of_fringe.o_fwd,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"overflow-newline-into-fringe"
	.size	.L.str.4, 29

	.type	syms_of_fringe.o_fwd.5,@object # @syms_of_fringe.o_fwd.5
	.local	syms_of_fringe.o_fwd.5
	.comm	syms_of_fringe.o_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fringe-bitmaps"
	.size	.L.str.6, 15

	.type	swap_nibble,@object     # @swap_nibble
	.section	.rodata,"a",@progbits
	.align	16
swap_nibble:
	.ascii	"\000\b\004\f\002\n\006\016\001\t\005\r\003\013\007\017"
	.size	swap_nibble, 16

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"destroy-fringe-bitmap"
	.size	.L.str.7, 22

	.type	Sdestroy_fringe_bitmap,@object # @Sdestroy_fringe_bitmap
	.data
	.align	8
Sdestroy_fringe_bitmap:
	.quad	167772160               # 0xa000000
	.quad	Fdestroy_fringe_bitmap
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sdestroy_fringe_bitmap, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"define-fringe-bitmap"
	.size	.L.str.8, 21

	.type	Sdefine_fringe_bitmap,@object # @Sdefine_fringe_bitmap
	.data
	.align	8
Sdefine_fringe_bitmap:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_fringe_bitmap
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sdefine_fringe_bitmap, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"fringe-bitmaps-at-pos"
	.size	.L.str.9, 22

	.type	Sfringe_bitmaps_at_pos,@object # @Sfringe_bitmaps_at_pos
	.data
	.align	8
Sfringe_bitmaps_at_pos:
	.quad	167772160               # 0xa000000
	.quad	Ffringe_bitmaps_at_pos
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sfringe_bitmaps_at_pos, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"set-fringe-bitmap-face"
	.size	.L.str.10, 23

	.type	Sset_fringe_bitmap_face,@object # @Sset_fringe_bitmap_face
	.data
	.align	8
Sset_fringe_bitmap_face:
	.quad	167772160               # 0xa000000
	.quad	Fset_fringe_bitmap_face
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sset_fringe_bitmap_face, 48

	.type	question_mark_bits,@object # @question_mark_bits
	.align	16
question_mark_bits:
	.short	60                      # 0x3c
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	12                      # 0xc
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	24                      # 0x18
	.size	question_mark_bits, 18

	.type	exclamation_mark_bits,@object # @exclamation_mark_bits
	.align	16
exclamation_mark_bits:
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	exclamation_mark_bits, 20

	.type	left_arrow_bits,@object # @left_arrow_bits
	.align	16
left_arrow_bits:
	.short	24                      # 0x18
	.short	48                      # 0x30
	.short	96                      # 0x60
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.short	96                      # 0x60
	.short	48                      # 0x30
	.short	24                      # 0x18
	.size	left_arrow_bits, 16

	.type	right_arrow_bits,@object # @right_arrow_bits
	.align	16
right_arrow_bits:
	.short	24                      # 0x18
	.short	12                      # 0xc
	.short	6                       # 0x6
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	24                      # 0x18
	.size	right_arrow_bits, 16

	.type	up_arrow_bits,@object   # @up_arrow_bits
	.align	16
up_arrow_bits:
	.short	24                      # 0x18
	.short	60                      # 0x3c
	.short	126                     # 0x7e
	.short	255                     # 0xff
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.size	up_arrow_bits, 16

	.type	down_arrow_bits,@object # @down_arrow_bits
	.align	16
down_arrow_bits:
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	255                     # 0xff
	.short	126                     # 0x7e
	.short	60                      # 0x3c
	.short	24                      # 0x18
	.size	down_arrow_bits, 16

	.type	left_curly_arrow_bits,@object # @left_curly_arrow_bits
	.align	16
left_curly_arrow_bits:
	.short	60                      # 0x3c
	.short	124                     # 0x7c
	.short	192                     # 0xc0
	.short	228                     # 0xe4
	.short	252                     # 0xfc
	.short	124                     # 0x7c
	.short	60                      # 0x3c
	.short	124                     # 0x7c
	.size	left_curly_arrow_bits, 16

	.type	right_curly_arrow_bits,@object # @right_curly_arrow_bits
	.align	16
right_curly_arrow_bits:
	.short	60                      # 0x3c
	.short	62                      # 0x3e
	.short	3                       # 0x3
	.short	39                      # 0x27
	.short	63                      # 0x3f
	.short	62                      # 0x3e
	.short	60                      # 0x3c
	.short	62                      # 0x3e
	.size	right_curly_arrow_bits, 16

	.type	left_triangle_bits,@object # @left_triangle_bits
	.align	16
left_triangle_bits:
	.short	3                       # 0x3
	.short	15                      # 0xf
	.short	31                      # 0x1f
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	31                      # 0x1f
	.short	15                      # 0xf
	.short	3                       # 0x3
	.size	left_triangle_bits, 16

	.type	right_triangle_bits,@object # @right_triangle_bits
	.align	16
right_triangle_bits:
	.short	192                     # 0xc0
	.short	240                     # 0xf0
	.short	248                     # 0xf8
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.short	248                     # 0xf8
	.short	240                     # 0xf0
	.short	192                     # 0xc0
	.size	right_triangle_bits, 16

	.type	top_left_angle_bits,@object # @top_left_angle_bits
	.align	16
top_left_angle_bits:
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	0                       # 0x0
	.size	top_left_angle_bits, 16

	.type	top_right_angle_bits,@object # @top_right_angle_bits
	.align	16
top_right_angle_bits:
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	0                       # 0x0
	.size	top_right_angle_bits, 16

	.type	bottom_left_angle_bits,@object # @bottom_left_angle_bits
	.align	16
bottom_left_angle_bits:
	.short	0                       # 0x0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.size	bottom_left_angle_bits, 16

	.type	bottom_right_angle_bits,@object # @bottom_right_angle_bits
	.align	16
bottom_right_angle_bits:
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.size	bottom_right_angle_bits, 16

	.type	left_bracket_bits,@object # @left_bracket_bits
	.align	16
left_bracket_bits:
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	252                     # 0xfc
	.short	252                     # 0xfc
	.size	left_bracket_bits, 20

	.type	right_bracket_bits,@object # @right_bracket_bits
	.align	16
right_bracket_bits:
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	63                      # 0x3f
	.short	63                      # 0x3f
	.size	right_bracket_bits, 20

	.type	filled_rectangle_bits,@object # @filled_rectangle_bits
	.align	16
filled_rectangle_bits:
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.size	filled_rectangle_bits, 26

	.type	hollow_rectangle_bits,@object # @hollow_rectangle_bits
	.align	16
hollow_rectangle_bits:
	.short	254                     # 0xfe
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	254                     # 0xfe
	.size	hollow_rectangle_bits, 26

	.type	filled_square_bits,@object # @filled_square_bits
	.align	2
filled_square_bits:
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.short	126                     # 0x7e
	.size	filled_square_bits, 12

	.type	hollow_square_bits,@object # @hollow_square_bits
	.align	2
hollow_square_bits:
	.short	126                     # 0x7e
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	126                     # 0x7e
	.size	hollow_square_bits, 12

	.type	vertical_bar_bits,@object # @vertical_bar_bits
	.align	16
vertical_bar_bits:
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.short	192                     # 0xc0
	.size	vertical_bar_bits, 26

	.type	horizontal_bar_bits,@object # @horizontal_bar_bits
	.align	2
horizontal_bar_bits:
	.short	254                     # 0xfe
	.short	254                     # 0xfe
	.size	horizontal_bar_bits, 4

	.type	empty_line_bits,@object # @empty_line_bits
	.align	16
empty_line_bits:
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.size	empty_line_bits, 144

	.type	standard_bitmaps,@object # @standard_bitmaps
	.align	16
standard_bitmaps:
	.zero	16
	.quad	question_mark_bits
	.byte	9                       # 0x9
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	exclamation_mark_bits
	.byte	10                      # 0xa
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	left_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	right_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	up_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.zero	4
	.quad	down_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	2                       # 0x2
	.zero	4
	.quad	left_curly_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	right_curly_arrow_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	left_triangle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	right_triangle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	top_left_angle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.zero	4
	.quad	top_right_angle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.zero	4
	.quad	bottom_left_angle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	2                       # 0x2
	.zero	4
	.quad	bottom_right_angle_bits
	.byte	8                       # 0x8
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	2                       # 0x2
	.zero	4
	.quad	left_bracket_bits
	.byte	10                      # 0xa
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	right_bracket_bits
	.byte	10                      # 0xa
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	filled_rectangle_bits
	.byte	13                      # 0xd
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	hollow_rectangle_bits
	.byte	13                      # 0xd
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	filled_square_bits
	.byte	6                       # 0x6
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	hollow_square_bits
	.byte	6                       # 0x6
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	vertical_bar_bits
	.byte	13                      # 0xd
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	4
	.quad	horizontal_bar_bits
	.byte	2                       # 0x2
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	2                       # 0x2
	.zero	4
	.quad	empty_line_bits
	.byte	72                      # 0x48
	.byte	8                       # 0x8
	.byte	3                       # 0x3
	.byte	1                       # 0x1
	.zero	4
	.size	standard_bitmaps, 384


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
