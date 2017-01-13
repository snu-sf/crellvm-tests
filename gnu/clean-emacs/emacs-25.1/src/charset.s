	.text
	.file	"charset.bc"
	.globl	Fcharsetp
	.align	16, 0x90
	.type	Fcharsetp,@function
Fcharsetp:                              # @Fcharsetp
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fcharsetp, .Lfunc_end0-Fcharsetp
	.cfi_endproc

	.globl	map_charset_chars
	.align	16, 0x90
	.type	map_charset_chars,@function
map_charset_chars:                      # @map_charset_chars
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
	subq	$288, %rsp              # imm = 0x120
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %r8d
	movq	-32(%rbp), %rcx
	cmpl	108(%rcx), %r8d
	movb	%al, -109(%rbp)         # 1-byte Spill
	ja	.LBB1_2
# BB#1:                                 # %lor.rhs
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	112(%rcx), %eax
	setb	%dl
	movb	%dl, -109(%rbp)         # 1-byte Spill
.LBB1_2:                                # %lor.end
	movb	-109(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$0, 104(%rcx)
	jne	.LBB1_35
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB1_5
# BB#4:                                 # %cond.true
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_5:                                # %cond.false
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB1_10
# BB#6:                                 # %land.lhs.true
	movl	-36(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_10
# BB#7:                                 # %land.lhs.true.12
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB1_10
# BB#8:                                 # %land.lhs.true.21
	movl	-36(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_10
# BB#9:                                 # %cond.true.29
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movq	-32(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-32(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-36(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-32(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-36(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-32(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-36(%rbp), %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-32(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false.58
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_12:                               # %cond.end.59
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rcx
	movb	88(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB1_14
# BB#13:                                # %cond.true.66
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_14:                               # %cond.false.69
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB1_19
# BB#15:                                # %land.lhs.true.77
	movl	-40(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_19
# BB#16:                                # %land.lhs.true.86
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB1_19
# BB#17:                                # %land.lhs.true.95
	movl	-40(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_19
# BB#18:                                # %cond.true.103
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movq	-32(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-32(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-40(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-32(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-40(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-32(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-40(%rbp), %edx
	andl	$255, %edx
	movq	-32(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-32(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %cond.false.136
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_20
.LBB1_20:                               # %cond.end.137
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_21:                               # %cond.end.139
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	movb	88(%rcx), %dl
	shrb	$5, %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB1_31
# BB#22:                                # %if.then.147
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB1_24
# BB#23:                                # %if.then.151
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	callq	load_charset
.LBB1_24:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB1_25
	jmp	.LBB1_29
.LBB1_25:                               # %if.then.157
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	Vcharset_hash_table, %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-24(%rbp), %rcx
	testb	$1, -49(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	je	.LBB1_27
# BB#26:                                # %cond.true.164
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %cond.false.165
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_28
.LBB1_28:                               # %cond.end.166
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	map_char_table_for_charset
	jmp	.LBB1_30
.LBB1_29:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	map_charset_for_dump
.LBB1_30:                               # %if.end.168
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.169
	movslq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-68(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_33
# BB#32:                                # %if.then.179
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.180
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	call2
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB1_34:                               # %if.end.182
	jmp	.LBB1_68
.LBB1_35:                               # %if.else.183
	movq	-32(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB1_45
# BB#36:                                # %if.then.187
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB1_38
# BB#37:                                # %if.then.193
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	callq	load_charset
.LBB1_38:                               # %if.end.194
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB1_39
	jmp	.LBB1_43
.LBB1_39:                               # %if.then.200
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	Vcharset_hash_table, %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-24(%rbp), %rcx
	testb	$1, -49(%rbp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	je	.LBB1_41
# BB#40:                                # %cond.true.207
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_42
.LBB1_41:                               # %cond.false.208
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_42
.LBB1_42:                               # %cond.end.209
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-236(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	map_char_table_for_charset
	jmp	.LBB1_44
.LBB1_43:                               # %if.else.211
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	map_charset_for_dump
.LBB1_44:                               # %if.end.212
	jmp	.LBB1_67
.LBB1_45:                               # %if.else.213
	movq	-32(%rbp), %rax
	cmpl	$2, 104(%rax)
	jne	.LBB1_51
# BB#46:                                # %if.then.217
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	charset_table, %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	movq	-248(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-80(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %ecx
	movl	-36(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %eax
	movq	-80(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jge	.LBB1_48
# BB#47:                                # %if.then.233
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB1_48:                               # %if.end.237
	movl	$2, %eax
	movl	%eax, %esi
	movl	-84(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-264(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jle	.LBB1_50
# BB#49:                                # %if.then.244
	movl	$2, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
.LBB1_50:                               # %if.end.248
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	map_charset_chars
	jmp	.LBB1_66
.LBB1_51:                               # %if.else.249
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -96(%rbp)
.LBB1_52:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_65
# BB#53:                                # %for.body
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	charset_table, %rax
	movq	-96(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -100(%rbp)
	movl	-36(%rbp), %edx
	cmpl	-100(%rbp), %edx
	jbe	.LBB1_55
# BB#54:                                # %cond.true.271
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	-36(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB1_56
.LBB1_55:                               # %cond.false.273
                                        #   in Loop: Header=BB1_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB1_56
.LBB1_56:                               # %cond.end.274
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jbe	.LBB1_58
# BB#57:                                # %cond.true.278
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	-40(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB1_59
.LBB1_58:                               # %cond.false.280
                                        #   in Loop: Header=BB1_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB1_59
.LBB1_59:                               # %cond.end.281
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jae	.LBB1_61
# BB#60:                                # %if.then.286
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	-32(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB1_61:                               # %if.end.288
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	-108(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB1_63
# BB#62:                                # %if.then.292
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -108(%rbp)
.LBB1_63:                               # %if.end.294
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	callq	map_charset_chars
# BB#64:                                # %for.inc
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB1_52
.LBB1_65:                               # %for.end
	jmp	.LBB1_66
.LBB1_66:                               # %if.end.298
	jmp	.LBB1_67
.LBB1_67:                               # %if.end.299
	jmp	.LBB1_68
.LBB1_68:                               # %if.end.300
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	map_charset_chars, .Lfunc_end1-map_charset_chars
	.cfi_endproc

	.align	16, 0x90
	.type	load_charset,@function
load_charset:                           # @load_charset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	testb	$1, globals+3393
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	cmpq	$0, temp_charset_work
	je	.LBB2_5
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movq	temp_charset_work, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB2_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$2, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	temp_charset_work, %rdx
	movswl	8(%rdx), %esi
	cmpl	%esi, %ecx
	jne	.LBB2_5
# BB#4:                                 # %if.then
	jmp	.LBB2_13
.LBB2_5:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB2_7
# BB#6:                                 # %if.then.10
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -24(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                # %if.else
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB2_9
# BB#8:                                 # %if.then.13
	callq	emacs_abort
.LBB2_9:                                # %if.end.14
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -24(%rbp)
.LBB2_10:                               # %if.end.19
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_11
	jmp	.LBB2_12
.LBB2_11:                               # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	load_charset_map_from_file
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.22
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	load_charset_map_from_vector
.LBB2_13:                               # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	load_charset, .Lfunc_end2-load_charset
	.cfi_endproc

	.align	16, 0x90
	.type	map_charset_for_dump,@function
map_charset_for_dump:                   # @map_charset_for_dump
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movb	88(%rdx), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_2:                                # %cond.false
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#3:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#4:                                 # %land.lhs.true.12
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true.22
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %cond.true.31
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	68(%rcx), %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	64(%rcx), %eax
	movl	-28(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	52(%rcx), %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-28(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	36(%rcx), %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-28(%rbp), %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false.68
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB3_9:                                # %cond.end.69
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	movb	88(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB3_11
# BB#10:                                # %cond.true.77
	movl	-32(%rbp), %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_18
.LBB3_11:                               # %cond.false.81
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB3_16
# BB#12:                                # %land.lhs.true.90
	movl	-32(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB3_16
# BB#13:                                # %land.lhs.true.100
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.110
	movl	-32(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_charset_work, %rdx
	movq	(%rdx), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB3_16
# BB#15:                                # %cond.true.119
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	68(%rcx), %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	64(%rcx), %eax
	movl	-32(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	52(%rcx), %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-32(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	36(%rcx), %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-32(%rbp), %edx
	andl	$255, %edx
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	temp_charset_work, %rcx
	movq	(%rcx), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_17
.LBB3_16:                               # %cond.false.160
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_17
.LBB3_17:                               # %cond.end.161
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB3_18:                               # %cond.end.163
	movl	-72(%rbp), %eax         # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -40(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	movq	temp_charset_work, %rax
	movl	12(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	temp_charset_work, %rax
	cmpl	$131072, 16(%rax)       # imm = 0x20000
	jge	.LBB3_20
# BB#19:                                # %cond.true.168
	movq	temp_charset_work, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %cond.false.170
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_21:                               # %cond.end.171
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB3_22:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	temp_charset_work, %rcx
	cmpl	20(%rcx), %eax
	jne	.LBB3_24
# BB#23:                                # %cond.true.175
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB3_34
.LBB3_24:                               # %cond.false.176
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpl	$131072, -52(%rbp)      # imm = 0x20000
	jge	.LBB3_29
# BB#25:                                # %cond.true.179
                                        #   in Loop: Header=BB3_22 Depth=1
	movslq	-52(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	cmpl	$0, %edx
	je	.LBB3_27
# BB#26:                                # %cond.true.184
                                        #   in Loop: Header=BB3_22 Depth=1
	movslq	-52(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false.190
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_28:                               # %cond.end.191
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB3_33
.LBB3_29:                               # %cond.false.193
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-52(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	cmpl	$0, %eax
	je	.LBB3_31
# BB#30:                                # %cond.true.201
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-52(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false.208
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB3_32
.LBB3_32:                               # %cond.end.209
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB3_33:                               # %cond.end.211
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB3_34:                               # %cond.end.213
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB3_39
# BB#35:                                # %land.lhs.true.217
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB3_39
# BB#36:                                # %if.then
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_38
# BB#37:                                # %if.then.224
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-52(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB3_38:                               # %if.end
                                        #   in Loop: Header=BB3_22 Depth=1
	jmp	.LBB3_45
.LBB3_39:                               # %if.else
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_44
# BB#40:                                # %if.then.232
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB3_42
# BB#41:                                # %if.then.238
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.239
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	call2
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB3_43:                               # %if.end.241
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB3_44:                               # %if.end.243
                                        #   in Loop: Header=BB3_22 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.244
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB3_54
# BB#46:                                # %if.then.247
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-52(%rbp), %eax
	movq	temp_charset_work, %rcx
	cmpl	16(%rcx), %eax
	jne	.LBB3_53
# BB#47:                                # %if.then.251
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_52
# BB#48:                                # %if.then.257
	movq	-48(%rbp), %rdi
	movslq	-52(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB3_50
# BB#49:                                # %if.then.262
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	jmp	.LBB3_51
.LBB3_50:                               # %if.else.263
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	call2
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB3_51:                               # %if.end.265
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.266
	jmp	.LBB3_55
.LBB3_53:                               # %if.end.267
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	$131071, -52(%rbp)      # imm = 0x1FFFF
	movq	temp_charset_work, %rax
	movl	16(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB3_54:                               # %if.end.269
                                        #   in Loop: Header=BB3_22 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_22
.LBB3_55:                               # %while.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	map_charset_for_dump, .Lfunc_end3-map_charset_for_dump
	.cfi_endproc

	.globl	Fmap_charset_chars
	.align	16, 0x90
	.type	Fmap_charset_chars,@function
Fmap_charset_chars:                     # @Fmap_charset_chars
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_4
# BB#3:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jge	.LBB4_5
.LBB4_4:                                # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_5:                                # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
# BB#6:                                 # %do.end
	movq	charset_table, %rax
	movslq	-60(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %do.end.11
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_9
# BB#8:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB4_12
.LBB4_9:                                # %if.else
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	108(%rax), %ecx
	jae	.LBB4_11
# BB#10:                                # %if.then.21
	movq	-48(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB4_11:                               # %if.end.23
	jmp	.LBB4_12
.LBB4_12:                               # %if.end.24
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_14
# BB#13:                                # %if.then.28
	movq	-48(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB4_17
.LBB4_14:                               # %if.else.29
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	112(%rax), %ecx
	jbe	.LBB4_16
# BB#15:                                # %if.then.35
	movq	-48(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB4_16:                               # %if.end.37
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.38
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	callq	map_charset_chars
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fmap_charset_chars, .Lfunc_end4-Fmap_charset_chars
	.cfi_endproc

	.globl	Fdefine_charset_internal
	.align	16, 0x90
	.type	Fdefine_charset_internal,@function
Fdefine_charset_internal:               # @Fdefine_charset_internal
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
	subq	$1008, %rsp             # imm = 0x3F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	%rax, -56(%rbp)
	cmpq	$17, -16(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movabsq	$.L.str, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	intern
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-608(%rbp), %rsi        # 8-byte Reload
	callq	Fcons
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -8(%rbp)
	jmp	.LBB5_296
.LBB5_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$42, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_4
# BB#3:                                 # %cond.true
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB5_5:                                # %cond.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	callq	ASET
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -400(%rbp)
	movl	$1, -408(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	Faref
	movq	%rax, -416(%rbp)
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -424(%rbp)
# BB#7:                                 # %do.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-416(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_9
# BB#8:                                 # %cond.true.28
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.29
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB5_10:                               # %cond.end.31
                                        #   in Loop: Header=BB5_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-416(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB5_12
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-416(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB5_13
.LBB5_12:                               # %if.then.37
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edx
	movq	-416(%rbp), %rdi
	callq	args_out_of_range_3
.LBB5_13:                               # %if.end.38
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-416(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -428(%rbp)
# BB#15:                                # %do.body.41
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-424(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_17
# BB#16:                                # %cond.true.47
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.48
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB5_18:                               # %cond.end.50
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	-428(%rbp), %rax
	movq	-424(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB5_20
# BB#19:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-424(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB5_25
.LBB5_20:                               # %if.then.59
	movq	-424(%rbp), %rdi
	cmpl	$0, -428(%rbp)
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	jge	.LBB5_23
# BB#21:                                # %land.lhs.true.62
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-428(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB5_23
# BB#22:                                # %cond.true.66
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false.67
	movslq	-428(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB5_24:                               # %cond.end.69
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$1022, %ecx             # imm = 0x3FE
	movl	%ecx, %edx
	shlq	$2, %rax
	addq	$2, %rax
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	args_out_of_range_3
.LBB5_25:                               # %if.end.72
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.73
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-424(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -432(%rbp)
	movl	-428(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rax
	movl	%ecx, -372(%rbp,%rax,4)
	movl	-432(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$2, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movl	%ecx, -372(%rbp,%rax,4)
	movl	-432(%rbp), %ecx
	subl	-428(%rbp), %ecx
	addl	$1, %ecx
	movl	-60(%rbp), %edx
	shll	$2, %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movl	%ecx, -372(%rbp,%rax,4)
	cmpl	$0, -432(%rbp)
	jle	.LBB5_28
# BB#27:                                # %if.then.91
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400(%rbp)
.LBB5_28:                               # %if.end.93
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	$3, -60(%rbp)
	jne	.LBB5_30
# BB#29:                                # %if.then.96
	jmp	.LBB5_32
.LBB5_30:                               # %if.end.97
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-60(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movl	-372(%rbp,%rcx,4), %eax
	imull	-408(%rbp), %eax
	movl	%eax, -408(%rbp)
	movl	-408(%rbp), %eax
	movl	-60(%rbp), %edx
	shll	$2, %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movl	%eax, -372(%rbp,%rcx,4)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_6
.LBB5_32:                               # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_34
# BB#33:                                # %if.then.113
	movl	-400(%rbp), %eax
	movl	%eax, -376(%rbp)
	jmp	.LBB5_43
.LBB5_34:                               # %if.else
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.115
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_37
# BB#36:                                # %cond.true.121
	jmp	.LBB5_38
.LBB5_37:                               # %cond.false.122
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB5_38:                               # %cond.end.124
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB5_40
# BB#39:                                # %land.lhs.true.128
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4, %rax
	jle	.LBB5_41
.LBB5_40:                               # %if.then.132
	movl	$6, %eax
	movl	%eax, %esi
	movl	$18, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	args_out_of_range_3
.LBB5_41:                               # %if.end.133
	jmp	.LBB5_42
.LBB5_42:                               # %do.end.134
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -376(%rbp)
.LBB5_43:                               # %if.end.138
	movb	$1, %al
	cmpl	$1, -376(%rbp)
	movb	%al, -665(%rbp)         # 1-byte Spill
	je	.LBB5_53
# BB#44:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$256, -364(%rbp)        # imm = 0x100
	movb	%cl, -666(%rbp)         # 1-byte Spill
	jne	.LBB5_52
# BB#45:                                # %land.rhs
	movb	$1, %al
	cmpl	$2, -376(%rbp)
	movb	%al, -667(%rbp)         # 1-byte Spill
	je	.LBB5_51
# BB#46:                                # %lor.rhs.149
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$256, -348(%rbp)        # imm = 0x100
	movb	%cl, -668(%rbp)         # 1-byte Spill
	jne	.LBB5_50
# BB#47:                                # %land.rhs.154
	movb	$1, %al
	cmpl	$3, -376(%rbp)
	movb	%al, -669(%rbp)         # 1-byte Spill
	je	.LBB5_49
# BB#48:                                # %lor.rhs.158
	cmpl	$256, -332(%rbp)        # imm = 0x100
	sete	%al
	movb	%al, -669(%rbp)         # 1-byte Spill
.LBB5_49:                               # %lor.end
	movb	-669(%rbp), %al         # 1-byte Reload
	movb	%al, -668(%rbp)         # 1-byte Spill
.LBB5_50:                               # %land.end
	movb	-668(%rbp), %al         # 1-byte Reload
	movb	%al, -667(%rbp)         # 1-byte Spill
.LBB5_51:                               # %lor.end.163
	movb	-667(%rbp), %al         # 1-byte Reload
	movb	%al, -666(%rbp)         # 1-byte Spill
.LBB5_52:                               # %land.end.164
	movb	-666(%rbp), %al         # 1-byte Reload
	movb	%al, -665(%rbp)         # 1-byte Spill
.LBB5_53:                               # %lor.end.165
	movb	-665(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	-304(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -304(%rbp)
	movb	-304(%rbp), %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB5_63
# BB#54:                                # %if.then.169
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	callq	xzalloc
	movq	%rax, -312(%rbp)
	movl	$0, -60(%rbp)
.LBB5_55:                               # %for.cond.171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_57 Depth 2
	cmpl	$4, -60(%rbp)
	jge	.LBB5_62
# BB#56:                                # %for.body
                                        #   in Loop: Header=BB5_55 Depth=1
	movl	-60(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movl	-372(%rbp,%rcx,4), %eax
	movl	%eax, -64(%rbp)
.LBB5_57:                               # %for.cond.178
                                        #   Parent Loop BB5_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	cmpl	-372(%rbp,%rdx,4), %eax
	jg	.LBB5_60
# BB#58:                                # %for.body.186
                                        #   in Loop: Header=BB5_57 Depth=2
	movl	$1, %eax
	movl	-60(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	-64(%rbp), %rdx
	movq	-312(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	orl	%eax, %edi
	movb	%dil, %cl
	movb	%cl, (%rsi,%rdx)
# BB#59:                                # %for.inc.193
                                        #   in Loop: Header=BB5_57 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_57
.LBB5_60:                               # %for.end.195
                                        #   in Loop: Header=BB5_55 Depth=1
	jmp	.LBB5_61
.LBB5_61:                               # %for.inc.196
                                        #   in Loop: Header=BB5_55 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_55
.LBB5_62:                               # %for.end.198
	jmp	.LBB5_63
.LBB5_63:                               # %if.end.199
	xorl	%edi, %edi
	cmpl	$96, -364(%rbp)
	sete	%al
	andb	$1, %al
	movb	-304(%rbp), %cl
	shlb	$1, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -304(%rbp)
	movl	-372(%rbp), %edx
	movl	-356(%rbp), %esi
	shll	$8, %esi
	orl	%esi, %edx
	movl	-340(%rbp), %esi
	shll	$16, %esi
	orl	%esi, %edx
	movl	-324(%rbp), %esi
	shll	$24, %esi
	orl	%esi, %edx
	movl	%edx, -284(%rbp)
	movl	-368(%rbp), %edx
	movl	-352(%rbp), %esi
	shll	$8, %esi
	orl	%esi, %edx
	movl	-336(%rbp), %esi
	shll	$16, %esi
	orl	%esi, %edx
	movl	-320(%rbp), %esi
	shll	$24, %esi
	orl	%esi, %edx
	movl	%edx, -280(%rbp)
	movl	$0, -276(%rbp)
	movq	-24(%rbp), %r8
	movq	24(%r8), %r8
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, -680(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	je	.LBB5_87
# BB#64:                                # %if.then.240
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	cons_to_unsigned
	movl	%eax, %ecx
	movl	%ecx, -436(%rbp)
	movl	-436(%rbp), %ecx
	cmpl	-284(%rbp), %ecx
	jb	.LBB5_66
# BB#65:                                # %lor.lhs.false
	movl	-436(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jbe	.LBB5_77
.LBB5_66:                               # %if.then.249
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jbe	.LBB5_68
# BB#67:                                # %lor.lhs.false.253
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-284(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_69
.LBB5_68:                               # %land.lhs.true.258
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-284(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_70
.LBB5_69:                               # %cond.true.263
	movl	-284(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB5_71
.LBB5_70:                               # %cond.false.267
	movl	-284(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
.LBB5_71:                               # %cond.end.272
	movq	-688(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	cmpl	-280(%rbp), %ecx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jbe	.LBB5_73
# BB#72:                                # %lor.lhs.false.277
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-280(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_74
.LBB5_73:                               # %land.lhs.true.282
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-280(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_75
.LBB5_74:                               # %cond.true.287
	movl	-280(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB5_76
.LBB5_75:                               # %cond.false.291
	movl	-280(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
.LBB5_76:                               # %cond.end.296
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rdx
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	args_out_of_range_3
.LBB5_77:                               # %if.end.298
	movb	-304(%rbp), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB5_79
# BB#78:                                # %cond.true.304
	movl	-436(%rbp), %eax
	subl	-284(%rbp), %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB5_86
.LBB5_79:                               # %cond.false.307
	movl	-436(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB5_84
# BB#80:                                # %land.lhs.true.315
	movl	-436(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB5_84
# BB#81:                                # %land.lhs.true.324
	movl	-436(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB5_84
# BB#82:                                # %land.lhs.true.333
	movl	-436(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_84
# BB#83:                                # %cond.true.341
	movl	-436(%rbp), %eax
	shrl	$24, %eax
	subl	-324(%rbp), %eax
	imull	-328(%rbp), %eax
	movl	-436(%rbp), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	subl	-340(%rbp), %ecx
	imull	-344(%rbp), %ecx
	addl	%ecx, %eax
	movl	-436(%rbp), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	subl	-356(%rbp), %ecx
	imull	-360(%rbp), %ecx
	addl	%ecx, %eax
	movl	-436(%rbp), %ecx
	andl	$255, %ecx
	subl	-372(%rbp), %ecx
	addl	%ecx, %eax
	subl	-276(%rbp), %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB5_85
.LBB5_84:                               # %cond.false.374
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB5_85
.LBB5_85:                               # %cond.end.375
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB5_86:                               # %cond.end.377
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	movl	-436(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB5_87:                               # %if.end.381
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_102
# BB#88:                                # %if.then.386
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	cons_to_unsigned
	movl	%eax, %ecx
	movl	%ecx, -440(%rbp)
	movl	-440(%rbp), %ecx
	cmpl	-284(%rbp), %ecx
	jb	.LBB5_90
# BB#89:                                # %lor.lhs.false.393
	movl	-440(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jbe	.LBB5_101
.LBB5_90:                               # %if.then.397
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jbe	.LBB5_92
# BB#91:                                # %lor.lhs.false.401
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-284(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_93
.LBB5_92:                               # %land.lhs.true.406
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-284(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_94
.LBB5_93:                               # %cond.true.411
	movl	-284(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB5_95
.LBB5_94:                               # %cond.false.415
	movl	-284(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
.LBB5_95:                               # %cond.end.420
	movq	-728(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	cmpl	-280(%rbp), %ecx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jbe	.LBB5_97
# BB#96:                                # %lor.lhs.false.425
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-280(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_98
.LBB5_97:                               # %land.lhs.true.430
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-280(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_99
.LBB5_98:                               # %cond.true.435
	movl	-280(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB5_100
.LBB5_99:                               # %cond.false.439
	movl	-280(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
.LBB5_100:                              # %cond.end.444
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rdx
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	args_out_of_range_3
.LBB5_101:                              # %if.end.446
	movl	-440(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB5_102:                              # %if.end.448
	xorl	%edi, %edi
	cmpl	$65536, -280(%rbp)      # imm = 0x10000
	setb	%al
	andb	$1, %al
	movb	-304(%rbp), %cl
	shlb	$4, %al
	andb	$-17, %cl
	orb	%al, %cl
	movb	%cl, -304(%rbp)
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB5_110
# BB#103:                               # %if.then.461
	cmpl	$0, -284(%rbp)
	jbe	.LBB5_105
# BB#104:                               # %if.then.465
	movl	$0, -264(%rbp)
	jmp	.LBB5_109
.LBB5_105:                              # %if.else.466
	cmpl	$-1, -280(%rbp)
	jae	.LBB5_107
# BB#106:                               # %if.then.470
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB5_108
.LBB5_107:                              # %if.else.474
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB5_108:                              # %if.end.475
	jmp	.LBB5_109
.LBB5_109:                              # %if.end.476
	jmp	.LBB5_111
.LBB5_110:                              # %if.else.477
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	cons_to_unsigned
	movl	%eax, %ecx
	movl	%ecx, -264(%rbp)
.LBB5_111:                              # %if.end.481
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_113
# BB#112:                               # %if.then.486
	movl	$-1, -300(%rbp)
	jmp	.LBB5_120
.LBB5_113:                              # %if.else.487
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_115
# BB#114:                               # %cond.true.493
	jmp	.LBB5_116
.LBB5_115:                              # %cond.false.494
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB5_116:                              # %cond.end.496
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$48, %rax
	jl	.LBB5_118
# BB#117:                               # %lor.lhs.false.500
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$127, %rax
	jle	.LBB5_119
.LBB5_118:                              # %if.then.504
	movabsq	$.L.str.2, %rdi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB5_119:                              # %if.end.506
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -300(%rbp)
.LBB5_120:                              # %if.end.510
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_122
# BB#121:                               # %if.then.515
	movl	$-1, -296(%rbp)
	jmp	.LBB5_131
.LBB5_122:                              # %if.else.516
	jmp	.LBB5_123
.LBB5_123:                              # %do.body.517
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_125
# BB#124:                               # %cond.true.523
	jmp	.LBB5_126
.LBB5_125:                              # %cond.false.524
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB5_126:                              # %cond.end.526
	movq	$-1, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB5_128
# BB#127:                               # %land.lhs.true.530
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$63, %rax
	jle	.LBB5_129
.LBB5_128:                              # %if.then.534
	movq	$-2, %rsi
	movl	$254, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	args_out_of_range_3
.LBB5_129:                              # %if.end.535
	jmp	.LBB5_130
.LBB5_130:                              # %do.end.536
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -296(%rbp)
.LBB5_131:                              # %if.end.540
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_133
# BB#132:                               # %if.then.545
	movl	$-1, -292(%rbp)
	jmp	.LBB5_138
.LBB5_133:                              # %if.else.546
	movq	-40(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$0, %rdi
	jle	.LBB5_135
# BB#134:                               # %land.lhs.true.550
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jle	.LBB5_136
.LBB5_135:                              # %lor.lhs.false.554
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB5_137
.LBB5_136:                              # %if.then.558
	movabsq	$.L.str.3, %rdi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB5_137:                              # %if.end.560
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -292(%rbp)
.LBB5_138:                              # %if.end.564
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	-304(%rbp), %sil
	shlb	$2, %dl
	andb	$-5, %sil
	orb	%dl, %sil
	movb	%sil, -304(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$190, %r8d
	movl	%r8d, %edx
	leaq	-392(%rbp), %rcx
	movq	-808(%rbp), %r9         # 8-byte Reload
	cmpq	%rax, %r9
	sete	%sil
	xorb	$-1, %sil
	andb	$1, %sil
	movb	-304(%rbp), %r10b
	shlb	$3, %sil
	andb	$-9, %r10b
	orb	%sil, %r10b
	movb	%r10b, -304(%rbp)
	movb	-304(%rbp), %sil
	andb	$-33, %sil
	movb	%sil, -304(%rbp)
	addq	$132, %rcx
	movl	%edi, -812(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-812(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-812(%rbp), %edi        # 4-byte Reload
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-824(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_187
# BB#139:                               # %if.then.590
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB5_140
	jmp	.LBB5_142
.LBB5_140:                              # %land.lhs.true.594
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB5_142
# BB#141:                               # %cond.true.598
	jmp	.LBB5_143
.LBB5_142:                              # %cond.false.599
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB5_143:                              # %cond.end.601
	movl	$0, -288(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movb	-304(%rbp), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB5_145
# BB#144:                               # %cond.true.609
	movl	-280(%rbp), %eax
	subl	-284(%rbp), %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB5_152
.LBB5_145:                              # %cond.false.613
	movl	-280(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB5_150
# BB#146:                               # %land.lhs.true.622
	movl	-280(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB5_150
# BB#147:                               # %land.lhs.true.632
	movl	-280(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB5_150
# BB#148:                               # %land.lhs.true.642
	movl	-280(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_150
# BB#149:                               # %cond.true.651
	movl	-280(%rbp), %eax
	shrl	$24, %eax
	subl	-324(%rbp), %eax
	imull	-328(%rbp), %eax
	movl	-280(%rbp), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	subl	-340(%rbp), %ecx
	imull	-344(%rbp), %ecx
	addl	%ecx, %eax
	movl	-280(%rbp), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	subl	-356(%rbp), %ecx
	imull	-360(%rbp), %ecx
	addl	%ecx, %eax
	movl	-280(%rbp), %ecx
	andl	$255, %ecx
	subl	-372(%rbp), %ecx
	addl	%ecx, %eax
	subl	-276(%rbp), %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB5_151
.LBB5_150:                              # %cond.false.688
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB5_151
.LBB5_151:                              # %cond.end.689
	movl	-840(%rbp), %eax        # 4-byte Reload
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB5_152:                              # %cond.end.691
	movl	-836(%rbp), %eax        # 4-byte Reload
	movl	$4194303, %ecx          # imm = 0x3FFFFF
	movl	%eax, -60(%rbp)
	subl	-68(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB5_154
# BB#153:                               # %if.then.697
	movabsq	$.L.str.4, %rdi
	movl	-268(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB5_154:                              # %if.end.698
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -268(%rbp)
	movb	-304(%rbp), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB5_156
# BB#155:                               # %cond.true.707
	movl	-284(%rbp), %eax
	subl	-284(%rbp), %eax
	movl	%eax, -844(%rbp)        # 4-byte Spill
	jmp	.LBB5_163
.LBB5_156:                              # %cond.false.711
	movl	-284(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB5_161
# BB#157:                               # %land.lhs.true.720
	movl	-284(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB5_161
# BB#158:                               # %land.lhs.true.730
	movl	-284(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB5_161
# BB#159:                               # %land.lhs.true.740
	movl	-284(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_161
# BB#160:                               # %cond.true.749
	movl	-284(%rbp), %eax
	shrl	$24, %eax
	subl	-324(%rbp), %eax
	imull	-328(%rbp), %eax
	movl	-284(%rbp), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	subl	-340(%rbp), %ecx
	imull	-344(%rbp), %ecx
	addl	%ecx, %eax
	movl	-284(%rbp), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	subl	-356(%rbp), %ecx
	imull	-360(%rbp), %ecx
	addl	%ecx, %eax
	movl	-284(%rbp), %ecx
	andl	$255, %ecx
	subl	-372(%rbp), %ecx
	addl	%ecx, %eax
	subl	-276(%rbp), %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB5_162
.LBB5_161:                              # %cond.false.786
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB5_162
.LBB5_162:                              # %cond.end.787
	movl	-848(%rbp), %eax        # 4-byte Reload
	movl	%eax, -844(%rbp)        # 4-byte Spill
.LBB5_163:                              # %cond.end.789
	movl	-844(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -272(%rbp)
	movl	-272(%rbp), %eax
	sarl	$7, %eax
	shll	$7, %eax
	movl	%eax, -60(%rbp)
.LBB5_164:                              # %for.cond.796
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$65536, -60(%rbp)       # imm = 0x10000
	movb	%cl, -849(%rbp)         # 1-byte Spill
	jge	.LBB5_166
# BB#165:                               # %land.rhs.799
                                        #   in Loop: Header=BB5_164 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-268(%rbp), %eax
	setle	%cl
	movb	%cl, -849(%rbp)         # 1-byte Spill
.LBB5_166:                              # %land.end.803
                                        #   in Loop: Header=BB5_164 Depth=1
	movb	-849(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_167
	jmp	.LBB5_174
.LBB5_167:                              # %for.body.804
                                        #   in Loop: Header=BB5_164 Depth=1
	jmp	.LBB5_168
.LBB5_168:                              # %do.body.805
                                        #   in Loop: Header=BB5_164 Depth=1
	cmpl	$65536, -60(%rbp)       # imm = 0x10000
	jge	.LBB5_170
# BB#169:                               # %if.then.808
                                        #   in Loop: Header=BB5_164 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	sarl	$7, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-60(%rbp), %edx
	sarl	$10, %edx
	movslq	%edx, %rsi
	movzbl	-260(%rbp,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -260(%rbp,%rsi)
	jmp	.LBB5_171
.LBB5_170:                              # %if.else.819
                                        #   in Loop: Header=BB5_164 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	sarl	$12, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-60(%rbp), %edx
	sarl	$15, %edx
	addl	$62, %edx
	movslq	%edx, %rsi
	movzbl	-260(%rbp,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -260(%rbp,%rsi)
.LBB5_171:                              # %if.end.831
                                        #   in Loop: Header=BB5_164 Depth=1
	jmp	.LBB5_172
.LBB5_172:                              # %do.end.832
                                        #   in Loop: Header=BB5_164 Depth=1
	jmp	.LBB5_173
.LBB5_173:                              # %for.inc.833
                                        #   in Loop: Header=BB5_164 Depth=1
	movl	-60(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_164
.LBB5_174:                              # %for.end.835
	movl	-60(%rbp), %eax
	sarl	$12, %eax
	shll	$12, %eax
	movl	%eax, -60(%rbp)
.LBB5_175:                              # %for.cond.838
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jg	.LBB5_183
# BB#176:                               # %for.body.842
                                        #   in Loop: Header=BB5_175 Depth=1
	jmp	.LBB5_177
.LBB5_177:                              # %do.body.843
                                        #   in Loop: Header=BB5_175 Depth=1
	cmpl	$65536, -60(%rbp)       # imm = 0x10000
	jge	.LBB5_179
# BB#178:                               # %if.then.846
                                        #   in Loop: Header=BB5_175 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	sarl	$7, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-60(%rbp), %edx
	sarl	$10, %edx
	movslq	%edx, %rsi
	movzbl	-260(%rbp,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -260(%rbp,%rsi)
	jmp	.LBB5_180
.LBB5_179:                              # %if.else.857
                                        #   in Loop: Header=BB5_175 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	sarl	$12, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-60(%rbp), %edx
	sarl	$15, %edx
	addl	$62, %edx
	movslq	%edx, %rsi
	movzbl	-260(%rbp,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -260(%rbp,%rsi)
.LBB5_180:                              # %if.end.869
                                        #   in Loop: Header=BB5_175 Depth=1
	jmp	.LBB5_181
.LBB5_181:                              # %do.end.870
                                        #   in Loop: Header=BB5_175 Depth=1
	jmp	.LBB5_182
.LBB5_182:                              # %for.inc.871
                                        #   in Loop: Header=BB5_175 Depth=1
	movl	-60(%rbp), %eax
	addl	$4096, %eax             # imm = 0x1000
	movl	%eax, -60(%rbp)
	jmp	.LBB5_175
.LBB5_183:                              # %for.end.873
	cmpl	$0, -68(%rbp)
	jne	.LBB5_186
# BB#184:                               # %land.lhs.true.877
	cmpl	$128, -268(%rbp)
	jl	.LBB5_186
# BB#185:                               # %if.then.881
	movb	-304(%rbp), %al
	andb	$-5, %al
	orb	$4, %al
	movb	%al, -304(%rbp)
.LBB5_186:                              # %if.end.886
	jmp	.LBB5_246
.LBB5_187:                              # %if.else.887
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_189
# BB#188:                               # %if.then.892
	movl	$3, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movl	$1, -288(%rbp)
	jmp	.LBB5_245
.LBB5_189:                              # %if.else.895
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_205
# BB#190:                               # %if.then.900
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -448(%rbp)
# BB#191:                               # %do.body.903
	jmp	.LBB5_192
.LBB5_192:                              # %do.body.904
	movq	-448(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_194
# BB#193:                               # %lor.lhs.false.909
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-448(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -496(%rbp)
	cmpq	$0, %rax
	jge	.LBB5_195
.LBB5_194:                              # %if.then.914
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB5_195:                              # %if.end.916
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-496(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -484(%rbp)
# BB#196:                               # %do.end.922
	movq	charset_table, %rax
	movslq	-484(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)
# BB#197:                               # %do.end.923
	movl	$6, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	callq	Fnth
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rdi
	callq	CHECK_NATNUM
	movl	$10, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi
	callq	Fnth
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rdi
	callq	CHECK_NATNUM
	movl	$14, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi
	callq	Fnth
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_199
# BB#198:                               # %cond.true.932
	jmp	.LBB5_200
.LBB5_199:                              # %cond.false.933
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB5_200:                              # %cond.end.935
	movl	$4, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-480(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	-456(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	-464(%rbp), %rdx
	callq	ASET
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	-472(%rbp), %rdx
	callq	ASET
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movl	$2, -288(%rbp)
	movl	$0, -60(%rbp)
.LBB5_201:                              # %for.cond.942
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$190, -60(%rbp)
	jge	.LBB5_204
# BB#202:                               # %for.body.945
                                        #   in Loop: Header=BB5_201 Depth=1
	movslq	-60(%rbp), %rax
	movq	-480(%rbp), %rcx
	movb	132(%rcx,%rax), %dl
	movslq	-60(%rbp), %rax
	movb	%dl, -260(%rbp,%rax)
# BB#203:                               # %for.inc.952
                                        #   in Loop: Header=BB5_201 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_201
.LBB5_204:                              # %for.end.954
	movq	-480(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -272(%rbp)
	movq	-480(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -268(%rbp)
	jmp	.LBB5_244
.LBB5_205:                              # %if.else.959
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-896(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_242
# BB#206:                               # %if.then.964
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$3, -288(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcopy_sequence
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movl	$4194303, -272(%rbp)    # imm = 0x3FFFFF
	movl	$0, -268(%rbp)
.LBB5_207:                              # %for.cond.970
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_236 Depth 2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB5_208
	jmp	.LBB5_241
.LBB5_208:                              # %for.body.975
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_225
# BB#209:                               # %if.then.981
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-504(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)
# BB#210:                               # %do.body.984
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-512(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_212
# BB#211:                               # %lor.lhs.false.990
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-512(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -544(%rbp)
	cmpq	$0, %rax
	jge	.LBB5_213
.LBB5_212:                              # %if.then.995
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB5_213:                              # %if.end.997
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-544(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -524(%rbp)
# BB#214:                               # %do.end.1003
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_215
.LBB5_215:                              # %do.body.1004
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_216
.LBB5_216:                              # %do.body.1005
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-520(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_218
# BB#217:                               # %cond.true.1011
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_219
.LBB5_218:                              # %cond.false.1012
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB5_219:                              # %cond.end.1014
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-520(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB5_221
# BB#220:                               # %land.lhs.true.1018
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-520(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB5_222
.LBB5_221:                              # %if.then.1022
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-520(%rbp), %rdi
	callq	args_out_of_range_3
.LBB5_222:                              # %if.end.1023
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_223
.LBB5_223:                              # %do.end.1024
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_224
.LBB5_224:                              # %do.end.1025
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-520(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -528(%rbp)
	jmp	.LBB5_231
.LBB5_225:                              # %if.else.1028
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_226
.LBB5_226:                              # %do.body.1029
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-504(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_228
# BB#227:                               # %lor.lhs.false.1035
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-504(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -552(%rbp)
	cmpq	$0, %rax
	jge	.LBB5_229
.LBB5_228:                              # %if.then.1040
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB5_229:                              # %if.end.1042
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-552(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -524(%rbp)
# BB#230:                               # %do.end.1048
                                        #   in Loop: Header=BB5_207 Depth=1
	movl	$0, -528(%rbp)
.LBB5_231:                              # %if.end.1049
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-524(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-528(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	movq	charset_table, %rax
	movslq	-524(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)
	movl	-272(%rbp), %edx
	movq	-536(%rbp), %rax
	cmpl	120(%rax), %edx
	jle	.LBB5_233
# BB#232:                               # %if.then.1063
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-536(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -272(%rbp)
.LBB5_233:                              # %if.end.1066
                                        #   in Loop: Header=BB5_207 Depth=1
	movl	-268(%rbp), %eax
	movq	-536(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jge	.LBB5_235
# BB#234:                               # %if.then.1071
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-536(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -268(%rbp)
.LBB5_235:                              # %if.end.1074
                                        #   in Loop: Header=BB5_207 Depth=1
	movl	$0, -60(%rbp)
.LBB5_236:                              # %for.cond.1075
                                        #   Parent Loop BB5_207 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$190, -60(%rbp)
	jge	.LBB5_239
# BB#237:                               # %for.body.1078
                                        #   in Loop: Header=BB5_236 Depth=2
	movslq	-60(%rbp), %rax
	movq	-536(%rbp), %rcx
	movzbl	132(%rcx,%rax), %edx
	movslq	-60(%rbp), %rax
	movzbl	-260(%rbp,%rax), %esi
	orl	%edx, %esi
	movb	%sil, %dil
	movb	%dil, -260(%rbp,%rax)
# BB#238:                               # %for.inc.1089
                                        #   in Loop: Header=BB5_236 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_236
.LBB5_239:                              # %for.end.1091
                                        #   in Loop: Header=BB5_207 Depth=1
	jmp	.LBB5_240
.LBB5_240:                              # %for.inc.1092
                                        #   in Loop: Header=BB5_207 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	jmp	.LBB5_207
.LBB5_241:                              # %for.end.1094
	jmp	.LBB5_243
.LBB5_242:                              # %if.else.1095
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB5_243:                              # %if.end.1096
	jmp	.LBB5_244
.LBB5_244:                              # %if.end.1097
	jmp	.LBB5_245
.LBB5_245:                              # %if.end.1098
	jmp	.LBB5_246
.LBB5_246:                              # %if.end.1099
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_249
# BB#247:                               # %land.lhs.true.1104
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB5_249
# BB#248:                               # %if.then.1106
	movq	-40(%rbp), %rdi
	callq	CHECK_VECTOR
.LBB5_249:                              # %if.end.1107
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	CHECK_LIST
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdx
	callq	ASET
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	hash_lookup
	movq	%rax, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jl	.LBB5_251
# BB#250:                               # %if.then.1115
	xorl	%edi, %edi
	movb	$0, -401(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -952(%rbp)        # 8-byte Spill
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-952(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -396(%rbp)
	movq	-56(%rbp), %rdi
	movq	-384(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_hash_value_slot
	jmp	.LBB5_254
.LBB5_251:                              # %if.else.1123
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	hash_put
	movq	%rax, -384(%rbp)
	movslq	charset_table_used, %rax
	cmpq	charset_table_size, %rax
	jne	.LBB5_253
# BB#252:                               # %if.then.1130
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-568(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	$328, %eax              # imm = 0x148
	movl	%eax, %r8d
	movq	charset_table_size, %r9
	movl	%r9d, %eax
	movl	%eax, -556(%rbp)
	movslq	-556(%rbp), %r9
	movq	%r9, -568(%rbp)
	callq	xpalloc
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	charset_table, %rcx
	movslq	-556(%rbp), %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-576(%rbp), %rax
	movq	%rax, charset_table
	movq	-568(%rbp), %rax
	movq	%rax, charset_table_size
.LBB5_253:                              # %if.end.1136
	movl	charset_table_used, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, charset_table_used
	movl	%eax, -396(%rbp)
	movb	$1, -401(%rbp)
.LBB5_254:                              # %if.end.1138
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movslq	-396(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movl	$328, %eax              # imm = 0x148
	movl	%eax, %edx
	leaq	-392(%rbp), %rcx
	movl	-396(%rbp), %eax
	movl	%eax, -392(%rbp)
	movslq	-396(%rbp), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	charset_table, %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpl	$1, -288(%rbp)
	jne	.LBB5_256
# BB#255:                               # %if.then.1148
	leaq	-392(%rbp), %rdi
	xorl	%esi, %esi
	callq	load_charset
	movl	$328, %esi              # imm = 0x148
	movl	%esi, %edx
	leaq	-392(%rbp), %rdi
	movslq	-396(%rbp), %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	addq	charset_table, %rax
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-968(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB5_256:                              # %if.end.1151
	cmpl	$0, -300(%rbp)
	jl	.LBB5_271
# BB#257:                               # %if.then.1155
	movabsq	$iso_charset_table, %rax
	movl	-396(%rbp), %ecx
	movslq	-300(%rbp), %rdx
	movb	-304(%rbp), %sil
	shrb	$1, %sil
	andb	$1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movl	%edi, %r8d
	movl	-376(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %r9
	shlq	$10, %r9
	addq	%r9, %rax
	shlq	$9, %r8
	addq	%r8, %rax
	movl	%ecx, (%rax,%rdx,4)
	testb	$1, -401(%rbp)
	je	.LBB5_259
# BB#258:                               # %if.then.1170
	movq	Viso_2022_charset_list, %rdi
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, Viso_2022_charset_list
.LBB5_259:                              # %if.end.1176
	movl	iso_charset_table+296, %eax
	cmpl	-396(%rbp), %eax
	jne	.LBB5_261
# BB#260:                               # %if.then.1179
	movl	-396(%rbp), %eax
	movl	%eax, charset_jisx0201_roman
	jmp	.LBB5_270
.LBB5_261:                              # %if.else.1180
	movl	iso_charset_table+1280, %eax
	cmpl	-396(%rbp), %eax
	jne	.LBB5_263
# BB#262:                               # %if.then.1183
	movl	-396(%rbp), %eax
	movl	%eax, charset_jisx0208_1978
	jmp	.LBB5_269
.LBB5_263:                              # %if.else.1184
	movl	iso_charset_table+1288, %eax
	cmpl	-396(%rbp), %eax
	jne	.LBB5_265
# BB#264:                               # %if.then.1187
	movl	-396(%rbp), %eax
	movl	%eax, charset_jisx0208
	jmp	.LBB5_268
.LBB5_265:                              # %if.else.1188
	movl	iso_charset_table+1292, %eax
	cmpl	-396(%rbp), %eax
	jne	.LBB5_267
# BB#266:                               # %if.then.1191
	movl	-396(%rbp), %eax
	movl	%eax, charset_ksc5601
.LBB5_267:                              # %if.end.1192
	jmp	.LBB5_268
.LBB5_268:                              # %if.end.1193
	jmp	.LBB5_269
.LBB5_269:                              # %if.end.1194
	jmp	.LBB5_270
.LBB5_270:                              # %if.end.1195
	jmp	.LBB5_271
.LBB5_271:                              # %if.end.1196
	cmpl	$0, -292(%rbp)
	jl	.LBB5_278
# BB#272:                               # %if.then.1200
	movl	-396(%rbp), %eax
	movslq	-292(%rbp), %rcx
	movl	%eax, emacs_mule_charset(,%rcx,4)
	cmpl	$160, -292(%rbp)
	jge	.LBB5_274
# BB#273:                               # %if.then.1207
	movl	-376(%rbp), %eax
	addl	$1, %eax
	movb	%al, %cl
	movslq	-292(%rbp), %rdx
	movb	%cl, emacs_mule_bytes(,%rdx)
	jmp	.LBB5_275
.LBB5_274:                              # %if.else.1214
	movl	-376(%rbp), %eax
	addl	$2, %eax
	movb	%al, %cl
	movslq	-292(%rbp), %rdx
	movb	%cl, emacs_mule_bytes(,%rdx)
.LBB5_275:                              # %if.end.1221
	testb	$1, -401(%rbp)
	je	.LBB5_277
# BB#276:                               # %if.then.1223
	movq	Vemacs_mule_charset_list, %rdi
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, Vemacs_mule_charset_list
.LBB5_277:                              # %if.end.1229
	jmp	.LBB5_278
.LBB5_278:                              # %if.end.1230
	testb	$1, -401(%rbp)
	je	.LBB5_295
# BB#279:                               # %if.then.1232
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	globals+232, %rsi
	callq	Fcons
	movq	%rax, globals+232
	movb	-304(%rbp), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB5_281
# BB#280:                               # %if.then.1240
	movq	Vcharset_ordered_list, %rdi
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, Vcharset_ordered_list
	jmp	.LBB5_294
.LBB5_281:                              # %if.else.1246
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -584(%rbp)
.LBB5_282:                              # %for.cond.1247
                                        # =>This Inner Loop Header: Depth=1
	movq	-584(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_287
# BB#283:                               # %for.body.1252
                                        #   in Loop: Header=BB5_282 Depth=1
	movq	charset_table, %rax
	movq	-584(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movb	88(%rax), %dl
	shrb	$3, %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB5_285
# BB#284:                               # %if.then.1262
	jmp	.LBB5_287
.LBB5_285:                              # %if.end.1263
                                        #   in Loop: Header=BB5_282 Depth=1
	jmp	.LBB5_286
.LBB5_286:                              # %for.inc.1264
                                        #   in Loop: Header=BB5_282 Depth=1
	movq	-584(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -584(%rbp)
	jmp	.LBB5_282
.LBB5_287:                              # %for.end.1268
	movq	-584(%rbp), %rax
	cmpq	Vcharset_ordered_list, %rax
	jne	.LBB5_289
# BB#288:                               # %if.then.1271
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	Vcharset_ordered_list, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, Vcharset_ordered_list
	jmp	.LBB5_293
.LBB5_289:                              # %if.else.1276
	xorl	%edi, %edi
	movq	-584(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_291
# BB#290:                               # %if.then.1280
	movq	Vcharset_ordered_list, %rdi
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, Vcharset_ordered_list
	jmp	.LBB5_292
.LBB5_291:                              # %if.else.1286
	movq	-584(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-584(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	movq	-584(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	XSETCDR
	movq	-584(%rbp), %rdi
	movslq	-396(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB5_292:                              # %if.end.1296
	jmp	.LBB5_293
.LBB5_293:                              # %if.end.1297
	jmp	.LBB5_294
.LBB5_294:                              # %if.end.1298
	movq	charset_ordered_list_tick, %rax
	addq	$1, %rax
	movq	%rax, charset_ordered_list_tick
.LBB5_295:                              # %if.end.1300
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB5_296:                              # %return
	movq	-8(%rbp), %rax
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fdefine_charset_internal, .Lfunc_end5-Fdefine_charset_internal
	.cfi_endproc

	.globl	Fdefine_charset_alias
	.align	16, 0x90
	.type	Fdefine_charset_alias,@function
Fdefine_charset_alias:                  # @Fdefine_charset_alias
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_3
# BB#2:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB6_4
.LBB6_3:                                # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	Vcharset_hash_table, %rdx
	callq	Fputhash
	movq	-8(%rbp), %rdi
	movq	globals+232, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, globals+232
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fdefine_charset_alias, .Lfunc_end6-Fdefine_charset_alias
	.cfi_endproc

	.globl	Fcharset_plist
	.align	16, 0x90
	.type	Fcharset_plist,@function
Fcharset_plist:                         # @Fcharset_plist
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_3
# BB#2:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB7_4
.LBB7_3:                                # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fcharset_plist, .Lfunc_end7-Fcharset_plist
	.cfi_endproc

	.globl	Fset_charset_plist
	.align	16, 0x90
	.type	Fset_charset_plist,@function
Fset_charset_plist:                     # @Fset_charset_plist
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB8_4
.LBB8_3:                                # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fset_charset_plist, .Lfunc_end8-Fset_charset_plist
	.cfi_endproc

	.globl	Funify_charset
	.align	16, 0x90
	.type	Funify_charset,@function
Funify_charset:                         # @Funify_charset
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jge	.LBB9_4
.LBB9_3:                                # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB9_4:                                # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
# BB#5:                                 # %do.end
	xorl	%edi, %edi
	movq	charset_table, %rax
	movslq	-36(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_8
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_10
# BB#7:                                 # %land.lhs.true
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_10
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB9_10
.LBB9_9:                                # %if.then.25
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB9_79
.LBB9_10:                               # %if.end.27
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-33, %cl
	movb	%cl, 88(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB9_23
# BB#11:                                # %if.then.34
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB9_13
# BB#12:                                # %lor.lhs.false.37
	movq	-48(%rbp), %rax
	cmpl	$1114112, 324(%rax)     # imm = 0x110000
	jge	.LBB9_14
.LBB9_13:                               # %if.then.40
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB9_14:                               # %if.end.43
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_16
# BB#15:                                # %if.then.47
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -24(%rbp)
	jmp	.LBB9_20
.LBB9_16:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_19
# BB#17:                                # %land.lhs.true.53
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_19
# BB#18:                                # %if.then.55
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB9_19:                               # %if.end.56
	movl	$8, %esi
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	set_charset_attr
.LBB9_20:                               # %if.end.57
	xorl	%edi, %edi
	movq	Vchar_unify_table, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_22
# BB#21:                                # %if.then.61
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, Vchar_unify_table
.LBB9_22:                               # %if.end.65
	movq	Vchar_unify_table, %rdi
	movq	-48(%rbp), %rax
	movl	120(%rax), %esi
	movq	-48(%rbp), %rax
	movl	124(%rax), %edx
	movq	-16(%rbp), %rcx
	callq	char_table_set_range
	movq	-48(%rbp), %rax
	movb	88(%rax), %r8b
	andb	$-33, %r8b
	orb	$32, %r8b
	movb	%r8b, 88(%rax)
	jmp	.LBB9_78
.LBB9_23:                               # %if.else.69
	movq	Vchar_unify_table, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB9_24
	jmp	.LBB9_77
.LBB9_24:                               # %if.then.71
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movl	108(%rcx), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rcx
	movl	112(%rcx), %edx
	movl	%edx, -64(%rbp)
	testb	$1, %al
	jne	.LBB9_25
	jmp	.LBB9_26
.LBB9_25:                               # %cond.true.75
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_27
	jmp	.LBB9_29
.LBB9_26:                               # %cond.false.78
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB9_29
.LBB9_27:                               # %land.lhs.true.83
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_29
# BB#28:                                # %cond.true.89
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_50
.LBB9_29:                               # %cond.false.91
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB9_31
# BB#30:                                # %lor.lhs.false.95
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB9_32
.LBB9_31:                               # %cond.true.99
	movq	$-1, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_49
.LBB9_32:                               # %cond.false.100
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_34
# BB#33:                                # %cond.true.107
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_48
.LBB9_34:                               # %cond.false.110
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB9_39
# BB#35:                                # %cond.true.114
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_37
# BB#36:                                # %cond.true.119
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %cond.false.123
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB9_38:                               # %cond.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_47
.LBB9_39:                               # %cond.false.126
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB9_45
# BB#40:                                # %cond.true.130
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_43
# BB#41:                                # %land.lhs.true.136
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_42
	jmp	.LBB9_43
.LBB9_42:                               # %cond.true.143
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_44
.LBB9_43:                               # %cond.false.153
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
.LBB9_44:                               # %cond.end.156
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB9_46
.LBB9_45:                               # %cond.false.158
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
.LBB9_46:                               # %cond.end.161
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB9_47:                               # %cond.end.163
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB9_48:                               # %cond.end.165
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB9_49:                               # %cond.end.167
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB9_50:                               # %cond.end.169
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -68(%rbp)
	testb	$1, %cl
	jne	.LBB9_51
	jmp	.LBB9_52
.LBB9_51:                               # %cond.true.173
	movl	-64(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_53
	jmp	.LBB9_55
.LBB9_52:                               # %cond.false.177
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB9_55
.LBB9_53:                               # %land.lhs.true.182
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_55
# BB#54:                                # %cond.true.189
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_76
.LBB9_55:                               # %cond.false.191
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB9_57
# BB#56:                                # %lor.lhs.false.195
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB9_58
.LBB9_57:                               # %cond.true.199
	movq	$-1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_75
.LBB9_58:                               # %cond.false.200
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_60
# BB#59:                                # %cond.true.207
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	jmp	.LBB9_74
.LBB9_60:                               # %cond.false.210
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB9_65
# BB#61:                                # %cond.true.214
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_63
# BB#62:                                # %cond.true.220
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB9_64
.LBB9_63:                               # %cond.false.225
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	decode_char
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB9_64:                               # %cond.end.227
	movl	-212(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB9_73
.LBB9_65:                               # %cond.false.230
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB9_71
# BB#66:                                # %cond.true.234
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB9_69
# BB#67:                                # %land.lhs.true.240
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_68
	jmp	.LBB9_69
.LBB9_68:                               # %cond.true.247
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-64(%rbp), %ecx
	movq	-48(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB9_70
.LBB9_69:                               # %cond.false.257
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
.LBB9_70:                               # %cond.end.260
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB9_72
.LBB9_71:                               # %cond.false.262
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
.LBB9_72:                               # %cond.end.265
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB9_73:                               # %cond.end.267
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB9_74:                               # %cond.end.269
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB9_75:                               # %cond.end.271
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_76:                               # %cond.end.273
	movq	-192(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movq	Vchar_unify_table, %rax
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%esi, -260(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-244(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	char_table_set_range
.LBB9_77:                               # %if.end.277
	jmp	.LBB9_78
.LBB9_78:                               # %if.end.278
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB9_79:                               # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Funify_charset, .Lfunc_end9-Funify_charset
	.cfi_endproc

	.globl	decode_char
	.align	16, 0x90
	.type	decode_char,@function
decode_char:                            # @decode_char
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	104(%rdi), %esi
	movl	%esi, -32(%rbp)
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdi
	cmpl	108(%rdi), %esi
	jb	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB10_3
.LBB10_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_95
.LBB10_3:                               # %if.end
	cmpl	$2, -32(%rbp)
	jne	.LBB10_35
# BB#4:                                 # %if.then.4
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	charset_table, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	movq	-88(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -16(%rbp)
	movq	-40(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edi
	subq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB10_6
# BB#5:                                 # %lor.lhs.false.16
	movl	$2, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB10_7
.LBB10_6:                               # %if.then.22
	movl	$-1, -24(%rbp)
	jmp	.LBB10_34
.LBB10_7:                               # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_8:                               # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB10_10
	jmp	.LBB10_12
.LBB10_9:                               # %cond.false
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB10_12
.LBB10_10:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_12
# BB#11:                                # %cond.true.30
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_33
.LBB10_12:                              # %cond.false.32
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB10_14
# BB#13:                                # %lor.lhs.false.36
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB10_15
.LBB10_14:                              # %cond.true.40
	movq	$-1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_32
.LBB10_15:                              # %cond.false.41
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_17
# BB#16:                                # %cond.true.47
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jmp	.LBB10_31
.LBB10_17:                              # %cond.false.50
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB10_22
# BB#18:                                # %cond.true.54
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_20
# BB#19:                                # %cond.true.59
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB10_21
.LBB10_20:                              # %cond.false.63
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	decode_char
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB10_21:                              # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB10_30
.LBB10_22:                              # %cond.false.66
	movq	-16(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB10_28
# BB#23:                                # %cond.true.70
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_26
# BB#24:                                # %land.lhs.true.76
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_25
	jmp	.LBB10_26
.LBB10_25:                              # %cond.true.83
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_27
.LBB10_26:                              # %cond.false.93
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
.LBB10_27:                              # %cond.end.96
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB10_29
.LBB10_28:                              # %cond.false.98
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
.LBB10_29:                              # %cond.end.101
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB10_30:                              # %cond.end.103
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB10_31:                              # %cond.end.105
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB10_32:                              # %cond.end.107
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB10_33:                              # %cond.end.109
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
.LBB10_34:                              # %if.end.112
	jmp	.LBB10_94
.LBB10_35:                              # %if.else.113
	cmpl	$3, -32(%rbp)
	jne	.LBB10_69
# BB#36:                                # %if.then.116
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movl	$-1, -24(%rbp)
.LBB10_37:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_68
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB10_37 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -56(%rbp)
	movl	-20(%rbp), %edx
	subl	-56(%rbp), %edx
	movl	%edx, -60(%rbp)
	movq	charset_table, %rcx
	movslq	-52(%rbp), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -16(%rbp)
	testb	$1, %al
	jne	.LBB10_39
	jmp	.LBB10_40
.LBB10_39:                              # %cond.true.137
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB10_41
	jmp	.LBB10_43
.LBB10_40:                              # %cond.false.141
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB10_43
.LBB10_41:                              # %land.lhs.true.146
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_43
# BB#42:                                # %cond.true.153
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_64
.LBB10_43:                              # %cond.false.155
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB10_45
# BB#44:                                # %lor.lhs.false.159
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB10_46
.LBB10_45:                              # %cond.true.163
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	$-1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB10_63
.LBB10_46:                              # %cond.false.164
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_48
# BB#47:                                # %cond.true.171
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	jmp	.LBB10_62
.LBB10_48:                              # %cond.false.174
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB10_53
# BB#49:                                # %cond.true.178
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_51
# BB#50:                                # %cond.true.184
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB10_52
.LBB10_51:                              # %cond.false.189
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB10_52:                              # %cond.end.191
                                        #   in Loop: Header=BB10_37 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB10_61
.LBB10_53:                              # %cond.false.194
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB10_59
# BB#54:                                # %cond.true.198
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_57
# BB#55:                                # %land.lhs.true.204
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_56
	jmp	.LBB10_57
.LBB10_56:                              # %cond.true.211
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-60(%rbp), %ecx
	movq	-16(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB10_58
.LBB10_57:                              # %cond.false.221
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
.LBB10_58:                              # %cond.end.224
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB10_60
.LBB10_59:                              # %cond.false.226
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
.LBB10_60:                              # %cond.end.229
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB10_61:                              # %cond.end.231
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB10_62:                              # %cond.end.233
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB10_63:                              # %cond.end.235
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB10_64:                              # %cond.end.237
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %ecx
	jl	.LBB10_66
# BB#65:                                # %if.then.242
	jmp	.LBB10_68
.LBB10_66:                              # %if.end.243
                                        #   in Loop: Header=BB10_37 Depth=1
	jmp	.LBB10_67
.LBB10_67:                              # %for.inc
                                        #   in Loop: Header=BB10_37 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_37
.LBB10_68:                              # %for.end
	jmp	.LBB10_93
.LBB10_69:                              # %if.else.247
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_71
# BB#70:                                # %cond.true.253
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB10_78
.LBB10_71:                              # %cond.false.256
	movl	-20(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB10_76
# BB#72:                                # %land.lhs.true.260
	movl	-20(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB10_76
# BB#73:                                # %land.lhs.true.269
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB10_76
# BB#74:                                # %land.lhs.true.278
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB10_76
# BB#75:                                # %cond.true.286
	movl	-20(%rbp), %eax
	shrl	$24, %eax
	movq	-16(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-16(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-20(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-16(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-20(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-16(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-20(%rbp), %edx
	andl	$255, %edx
	movq	-16(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB10_77
.LBB10_76:                              # %cond.false.316
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB10_77
.LBB10_77:                              # %cond.end.317
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB10_78:                              # %cond.end.319
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB10_80
# BB#79:                                # %if.then.323
	movl	$-1, -4(%rbp)
	jmp	.LBB10_95
.LBB10_80:                              # %if.end.324
	cmpl	$1, -32(%rbp)
	jne	.LBB10_87
# BB#81:                                # %if.then.327
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_83
# BB#82:                                # %if.then.333
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	load_charset
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -72(%rbp)
.LBB10_83:                              # %if.end.338
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_84
	jmp	.LBB10_85
.LBB10_84:                              # %if.then.340
	movq	-72(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB10_86
.LBB10_85:                              # %if.else.345
	movslq	-28(%rbp), %rax
	movq	temp_charset_work, %rcx
	movl	24(%rcx,%rax,4), %edx
	movl	%edx, -24(%rbp)
.LBB10_86:                              # %if.end.349
	jmp	.LBB10_92
.LBB10_87:                              # %if.else.350
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movb	88(%rcx), %dl
	shrb	$5, %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB10_91
# BB#88:                                # %land.lhs.true.359
	movl	$1114111, %eax          # imm = 0x10FFFF
	cmpl	-24(%rbp), %eax
	jge	.LBB10_91
# BB#89:                                # %land.lhs.true.362
	cmpl	$4194175, -24(%rbp)     # imm = 0x3FFF7F
	jg	.LBB10_91
# BB#90:                                # %if.then.365
	movq	Vchar_unify_table, %rdi
	movl	-24(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %edi
	movq	-80(%rbp), %rsi
	callq	maybe_unify_char
	movl	%eax, -24(%rbp)
.LBB10_91:                              # %if.end.368
	jmp	.LBB10_92
.LBB10_92:                              # %if.end.369
	jmp	.LBB10_93
.LBB10_93:                              # %if.end.370
	jmp	.LBB10_94
.LBB10_94:                              # %if.end.371
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_95:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	decode_char, .Lfunc_end10-decode_char
	.cfi_endproc

	.globl	Fget_unused_iso_final_char
	.align	16, 0x90
	.type	Fget_unused_iso_final_char,@function
Fget_unused_iso_final_char:             # @Fget_unused_iso_final_char
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
	subq	$32, %rsp
	movl	$194, %eax
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	check_iso_charset_parameter
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	$48, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$63, -32(%rbp)
	jg	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$iso_charset_table, %rax
	movslq	-32(%rbp), %rcx
	movb	-25(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	movq	-16(%rbp), %r8
	sarq	$2, %r8
	subq	$1, %r8
	shlq	$10, %r8
	addq	%r8, %rax
	shlq	$9, %rdi
	addq	%rdi, %rax
	cmpl	$0, (%rax,%rcx,4)
	jge	.LBB11_4
# BB#3:                                 # %if.then
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_7
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB11_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fget_unused_iso_final_char, .Lfunc_end11-Fget_unused_iso_final_char
	.cfi_endproc

	.align	16, 0x90
	.type	check_iso_charset_parameter,@function
check_iso_charset_parameter:            # @check_iso_charset_parameter
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB12_2
# BB#1:                                 # %cond.true
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB12_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB12_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB12_6:                               # %cond.end.11
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB12_7
	jmp	.LBB12_9
.LBB12_7:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB12_9
# BB#8:                                 # %cond.true.16
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false.17
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB12_10:                              # %cond.end.19
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB12_12
# BB#11:                                # %land.lhs.true.23
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$3, %rax
	jle	.LBB12_13
.LBB12_12:                              # %if.then
	movabsq	$.L.str.30, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB12_13:                              # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$96, %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB12_16
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$94, %rax
	je	.LBB12_16
# BB#15:                                # %if.then.35
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB12_16:                              # %if.end.37
	movl	$48, %eax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -32(%rbp)
	cmpl	-32(%rbp), %eax
	jg	.LBB12_18
# BB#17:                                # %land.lhs.true.42
	cmpl	$126, -32(%rbp)
	jle	.LBB12_19
.LBB12_18:                              # %if.then.45
	movabsq	$.L.str.32, %rdi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB12_19:                              # %if.end.46
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	check_iso_charset_parameter, .Lfunc_end12-check_iso_charset_parameter
	.cfi_endproc

	.globl	Fdeclare_equiv_charset
	.align	16, 0x90
	.type	Fdeclare_equiv_charset,@function
Fdeclare_equiv_charset:                 # @Fdeclare_equiv_charset
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jge	.LBB13_4
.LBB13_3:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB13_4:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
# BB#5:                                 # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	check_iso_charset_parameter
	xorl	%edi, %edi
	movabsq	$iso_charset_table, %rdx
	andb	$1, %al
	movb	%al, -49(%rbp)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rsi
	sarq	$2, %rsi
	movb	-49(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	movl	%r8d, %r9d
	movq	-8(%rbp), %r10
	sarq	$2, %r10
	subq	$1, %r10
	shlq	$10, %r10
	addq	%r10, %rdx
	shlq	$9, %r9
	addq	%r9, %rdx
	movl	%ecx, (%rdx,%rsi,4)
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fdeclare_equiv_charset, .Lfunc_end13-Fdeclare_equiv_charset
	.cfi_endproc

	.globl	string_xstring_p
	.align	16, 0x90
	.type	string_xstring_p,@function
string_xstring_p:                       # @string_xstring_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_17
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB14_16
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB14_13
.LBB14_6:                               # %cond.false
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_8
# BB#7:                                 # %cond.true.10
                                        #   in Loop: Header=BB14_3 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	jmp	.LBB14_12
.LBB14_8:                               # %cond.false.23
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_10
# BB#9:                                 # %cond.true.28
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.43
                                        #   in Loop: Header=BB14_3 Depth=1
	leaq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	string_char
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_11:                              # %cond.end
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB14_12:                              # %cond.end.46
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB14_13:                              # %cond.end.48
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jl	.LBB14_15
# BB#14:                                # %if.then.52
	movl	$2, -4(%rbp)
	jmp	.LBB14_17
.LBB14_15:                              # %if.end.53
                                        #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_3
.LBB14_16:                              # %while.end
	movl	$1, -4(%rbp)
.LBB14_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	string_xstring_p, .Lfunc_end14-string_xstring_p
	.cfi_endproc

	.globl	Ffind_charset_region
	.align	16, 0x90
	.type	Ffind_charset_region,@function
Ffind_charset_region:                   # @Ffind_charset_region
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -89(%rbp)
	callq	validate_region
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	8(%rdx), %rax
	jge	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB15_3
# BB#2:                                 # %if.then
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
.LBB15_4:                               # %if.end
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movslq	charset_table_used, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -32(%rbp)
.LBB15_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB15_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false
                                        #   in Loop: Header=BB15_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-64(%rbp), %rcx
	subq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %r8
	movb	-89(%rbp), %dil
	andb	$1, %dil
	movb	%dil, -121(%rbp)        # 1-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movb	-121(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %r9d
	callq	find_charsets_in_text
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB15_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.27
	jmp	.LBB15_12
.LBB15_11:                              # %if.end.28
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_5
.LBB15_12:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
	movl	charset_table_used, %edi
	subl	$1, %edi
	movl	%edi, -76(%rbp)
.LBB15_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	jl	.LBB15_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_16
# BB#15:                                # %if.then.38
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	charset_table, %rdi
	movslq	-76(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -88(%rbp)
.LBB15_16:                              # %if.end.44
                                        #   in Loop: Header=BB15_13 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %for.inc
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB15_13
.LBB15_18:                              # %for.end
	movq	-88(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Ffind_charset_region, .Lfunc_end15-Ffind_charset_region
	.cfi_endproc

	.align	16, 0x90
	.type	find_charsets_in_text,@function
find_charsets_in_text:                  # @find_charsets_in_text
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
	subq	$192, %rsp
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB16_15
# BB#1:                                 # %if.then
	testb	$1, -41(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then.1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movslq	charset_ascii, %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB16_14
.LBB16_3:                               # %if.else
	jmp	.LBB16_4
.LBB16_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB16_13
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB16_4 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	translate_char
	movl	%eax, -60(%rbp)
.LBB16_7:                               # %if.end
                                        #   in Loop: Header=BB16_4 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB16_8
	jmp	.LBB16_9
.LBB16_8:                               # %cond.true
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB16_10
	jmp	.LBB16_11
.LBB16_9:                               # %cond.false
                                        #   in Loop: Header=BB16_4 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB16_11
.LBB16_10:                              # %if.then.16
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movslq	charset_ascii, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.19
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movslq	charset_eight_bit, %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB16_12:                              # %if.end.22
                                        #   in Loop: Header=BB16_4 Depth=1
	jmp	.LBB16_4
.LBB16_13:                              # %while.end
	jmp	.LBB16_14
.LBB16_14:                              # %if.end.23
	jmp	.LBB16_33
.LBB16_15:                              # %if.else.24
	jmp	.LBB16_16
.LBB16_16:                              # %while.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB16_32
# BB#17:                                # %while.body.28
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_19
# BB#18:                                # %cond.true.32
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB16_26
.LBB16_19:                              # %cond.false.35
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_21
# BB#20:                                # %cond.true.40
                                        #   in Loop: Header=BB16_16 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-8(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-8(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	jmp	.LBB16_25
.LBB16_21:                              # %cond.false.53
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_23
# BB#22:                                # %cond.true.58
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-8(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB16_24
.LBB16_23:                              # %cond.false.73
                                        #   in Loop: Header=BB16_16 Depth=1
	leaq	-8(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	string_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB16_24:                              # %cond.end
                                        #   in Loop: Header=BB16_16 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB16_25:                              # %cond.end.76
                                        #   in Loop: Header=BB16_16 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB16_26:                              # %cond.end.78
                                        #   in Loop: Header=BB16_16 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_28
# BB#27:                                # %if.then.83
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-40(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	translate_char
	movl	%eax, -64(%rbp)
.LBB16_28:                              # %if.end.85
                                        #   in Loop: Header=BB16_16 Depth=1
	cmpl	$128, -64(%rbp)
	jge	.LBB16_30
# BB#29:                                # %cond.true.88
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	charset_table, %rax
	movslq	charset_ascii, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB16_31
.LBB16_30:                              # %cond.false.90
                                        #   in Loop: Header=BB16_16 Depth=1
	xorl	%edi, %edi
	movl	-64(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-164(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB16_31:                              # %cond.end.93
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	(%rcx), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB16_16
.LBB16_32:                              # %while.end.97
	jmp	.LBB16_33
.LBB16_33:                              # %if.end.98
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	find_charsets_in_text, .Lfunc_end16-find_charsets_in_text
	.cfi_endproc

	.globl	Ffind_charset_string
	.align	16, 0x90
	.type	Ffind_charset_string,@function
Ffind_charset_string:                   # @Ffind_charset_string
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movslq	charset_table_used, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %edx
	andl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	callq	find_charsets_in_text
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movl	charset_table_used, %edi
	subl	$1, %edi
	movl	%edi, -28(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB17_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	charset_table, %rdi
	movslq	-28(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_5
.LBB17_5:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB17_1
.LBB17_6:                               # %for.end
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Ffind_charset_string, .Lfunc_end17-Ffind_charset_string
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_unify_char,@function
maybe_unify_char:                       # @maybe_unify_char
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
	subq	$80, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %edi
	andl	$-5, %edi
	cmpl	$2, %edi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_19
.LBB18_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_4
# BB#3:                                 # %if.then.6
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_19
.LBB18_4:                               # %if.end.7
	jmp	.LBB18_5
.LBB18_5:                               # %do.body
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.8
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_8
# BB#7:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jge	.LBB18_9
.LBB18_8:                               # %if.then.17
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB18_9:                               # %if.end.19
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
# BB#10:                                # %do.end
	movq	charset_table, %rax
	movslq	-28(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
# BB#11:                                # %do.end.25
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	load_charset
	testb	$1, globals+3393
	jne	.LBB18_15
# BB#12:                                # %if.then.26
	movq	Vchar_unify_table, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_14
# BB#13:                                # %if.then.31
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -8(%rbp)
.LBB18_14:                              # %if.end.34
	jmp	.LBB18_18
.LBB18_15:                              # %if.else
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	324(%rcx), %eax
	movl	%eax, -44(%rbp)
	movslq	-44(%rbp), %rcx
	movq	temp_charset_work, %rdx
	movl	24(%rdx,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jle	.LBB18_17
# BB#16:                                # %if.then.37
	movl	-48(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB18_17:                              # %if.end.38
	jmp	.LBB18_18
.LBB18_18:                              # %if.end.39
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB18_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	maybe_unify_char, .Lfunc_end18-maybe_unify_char
	.cfi_endproc

	.globl	encode_char
	.align	16, 0x90
	.type	encode_char,@function
encode_char:                            # @encode_char
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	104(%rdi), %esi
	movl	%esi, -28(%rbp)
	movq	-16(%rbp), %rdi
	movb	88(%rdi), %al
	shrb	$5, %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB19_23
# BB#1:                                 # %if.then
	movl	$-1, -44(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_3
# BB#2:                                 # %if.then.5
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	load_charset
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -40(%rbp)
.LBB19_3:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_4
	jmp	.LBB19_7
.LBB19_4:                               # %if.then.11
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB19_6
# BB#5:                                 # %if.then.15
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
.LBB19_6:                               # %if.end.17
	jmp	.LBB19_20
.LBB19_7:                               # %if.else
	movl	-20(%rbp), %eax
	movq	temp_charset_work, %rcx
	cmpl	20(%rcx), %eax
	jne	.LBB19_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB19_19
.LBB19_9:                               # %cond.false
	cmpl	$131072, -20(%rbp)      # imm = 0x20000
	jge	.LBB19_14
# BB#10:                                # %cond.true.22
	movslq	-20(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	cmpl	$0, %edx
	je	.LBB19_12
# BB#11:                                # %cond.true.24
	movslq	-20(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB19_13
.LBB19_12:                              # %cond.false.30
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB19_13
.LBB19_13:                              # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB19_18
.LBB19_14:                              # %cond.false.31
	movl	-20(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	cmpl	$0, %eax
	je	.LBB19_16
# BB#15:                                # %cond.true.38
	movl	-20(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB19_17
.LBB19_16:                              # %cond.false.45
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB19_17
.LBB19_17:                              # %cond.end.46
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB19_18:                              # %cond.end.48
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB19_19:                              # %cond.end.50
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
.LBB19_20:                              # %if.end.52
	cmpl	$0, -44(%rbp)
	jl	.LBB19_22
# BB#21:                                # %if.then.55
	movq	-16(%rbp), %rax
	movl	324(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB19_22:                              # %if.end.56
	jmp	.LBB19_23
.LBB19_23:                              # %if.end.57
	cmpl	$2, -28(%rbp)
	jne	.LBB19_60
# BB#24:                                # %if.then.60
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	charset_table, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	AREF
	movb	$1, %dl
	sarq	$2, %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB19_25
	jmp	.LBB19_26
.LBB19_25:                              # %cond.true.67
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB19_27
	jmp	.LBB19_29
.LBB19_26:                              # %cond.false.71
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB19_29
.LBB19_27:                              # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_29
# BB#28:                                # %cond.true.81
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB19_55
.LBB19_29:                              # %cond.false.82
	movq	-72(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB19_32
# BB#30:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB19_32
# BB#31:                                # %lor.lhs.false.92
	movq	-72(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB19_33
.LBB19_32:                              # %cond.true.96
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB19_54
.LBB19_33:                              # %cond.false.98
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB19_35
# BB#34:                                # %lor.lhs.false.101
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB19_36
.LBB19_35:                              # %cond.true.104
	movq	-72(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB19_53
.LBB19_36:                              # %cond.false.105
	movq	-72(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB19_41
# BB#37:                                # %cond.true.109
	movq	-72(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_39
# BB#38:                                # %cond.true.114
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-72(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB19_40
.LBB19_39:                              # %cond.false.118
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB19_40:                              # %cond.end.120
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB19_52
.LBB19_41:                              # %cond.false.122
	movq	-72(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB19_50
# BB#42:                                # %cond.true.126
	movq	-72(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_48
# BB#43:                                # %land.lhs.true.132
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_44
	jmp	.LBB19_48
.LBB19_44:                              # %cond.true.139
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB19_46
# BB#45:                                # %cond.true.148
	movq	-72(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB19_47
.LBB19_46:                              # %cond.false.150
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB19_47:                              # %cond.end.153
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB19_49
.LBB19_48:                              # %cond.false.155
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB19_49:                              # %cond.end.157
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB19_51
.LBB19_50:                              # %cond.false.159
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB19_51:                              # %cond.end.161
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB19_52:                              # %cond.end.163
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB19_53:                              # %cond.end.165
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB19_54:                              # %cond.end.167
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB19_55:                              # %cond.end.169
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB19_58
# BB#56:                                # %lor.lhs.false.174
	movl	$1, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB19_58
# BB#57:                                # %lor.lhs.false.180
	movl	$2, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB19_59
.LBB19_58:                              # %if.then.186
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_139
.LBB19_59:                              # %if.end.188
	movl	$3, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_139
.LBB19_60:                              # %if.end.194
	cmpl	$3, -28(%rbp)
	jne	.LBB19_99
# BB#61:                                # %if.then.197
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -80(%rbp)
.LBB19_62:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_98
# BB#63:                                # %for.body
                                        #   in Loop: Header=BB19_62 Depth=1
	movb	$1, %al
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -88(%rbp)
	movq	charset_table, %rcx
	movslq	-84(%rbp), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -96(%rbp)
	testb	$1, %al
	jne	.LBB19_64
	jmp	.LBB19_65
.LBB19_64:                              # %cond.true.219
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB19_66
	jmp	.LBB19_68
.LBB19_65:                              # %cond.false.223
                                        #   in Loop: Header=BB19_62 Depth=1
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB19_68
.LBB19_66:                              # %land.lhs.true.228
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_68
# BB#67:                                # %cond.true.235
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB19_94
.LBB19_68:                              # %cond.false.236
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB19_71
# BB#69:                                # %lor.lhs.false.243
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB19_71
# BB#70:                                # %lor.lhs.false.247
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB19_72
.LBB19_71:                              # %cond.true.251
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB19_93
.LBB19_72:                              # %cond.false.253
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-20(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB19_74
# BB#73:                                # %lor.lhs.false.257
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-20(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB19_75
.LBB19_74:                              # %cond.true.261
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB19_92
.LBB19_75:                              # %cond.false.263
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB19_80
# BB#76:                                # %cond.true.267
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_78
# BB#77:                                # %cond.true.273
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-20(%rbp), %eax
	movq	-96(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-96(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB19_79
.LBB19_78:                              # %cond.false.278
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB19_79:                              # %cond.end.280
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB19_91
.LBB19_80:                              # %cond.false.282
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB19_89
# BB#81:                                # %cond.true.286
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_87
# BB#82:                                # %land.lhs.true.293
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-96(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_83
	jmp	.LBB19_87
.LBB19_83:                              # %cond.true.300
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-96(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB19_85
# BB#84:                                # %cond.true.309
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB19_86
.LBB19_85:                              # %cond.false.311
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB19_86:                              # %cond.end.314
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB19_88
.LBB19_87:                              # %cond.false.316
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB19_88:                              # %cond.end.318
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB19_90
.LBB19_89:                              # %cond.false.320
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB19_90:                              # %cond.end.322
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB19_91:                              # %cond.end.324
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB19_92:                              # %cond.end.326
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB19_93:                              # %cond.end.328
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB19_94:                              # %cond.end.330
                                        #   in Loop: Header=BB19_62 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB19_96
# BB#95:                                # %if.then.335
	movl	-24(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_139
.LBB19_96:                              # %if.end.337
                                        #   in Loop: Header=BB19_62 Depth=1
	jmp	.LBB19_97
.LBB19_97:                              # %for.inc
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB19_62
.LBB19_98:                              # %for.end
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_139
.LBB19_99:                              # %if.end.342
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jge	.LBB19_101
# BB#100:                               # %cond.true.345
	movl	$1, %eax
	movl	-20(%rbp), %ecx
	sarl	$10, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movzbl	132(%rsi,%rdx), %ecx
	movl	-20(%rbp), %edi
	sarl	$7, %edi
	andl	$7, %edi
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-256(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB19_102
	jmp	.LBB19_104
.LBB19_101:                             # %cond.false.354
	movl	$1, %eax
	movl	-20(%rbp), %ecx
	sarl	$15, %ecx
	addl	$62, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movzbl	132(%rsi,%rdx), %ecx
	movl	-20(%rbp), %edi
	sarl	$12, %edi
	andl	$7, %edi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-260(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	je	.LBB19_104
.LBB19_102:                             # %lor.lhs.false.366
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB19_104
# BB#103:                               # %lor.lhs.false.370
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB19_105
.LBB19_104:                             # %if.then.374
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_139
.LBB19_105:                             # %if.end.376
	cmpl	$1, -28(%rbp)
	jne	.LBB19_134
# BB#106:                               # %if.then.379
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_108
# BB#107:                               # %if.then.390
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	load_charset
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
.LBB19_108:                             # %if.end.395
	movq	-104(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_109
	jmp	.LBB19_117
.LBB19_109:                             # %if.then.397
	movq	-104(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_111
# BB#110:                               # %if.then.402
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_139
.LBB19_111:                             # %if.end.404
	movq	-112(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movb	88(%rax), %dl
	shrb	$4, %dl
	andb	$1, %dl
	testb	$1, %dl
	jne	.LBB19_116
# BB#112:                               # %if.then.412
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB19_114
# BB#113:                               # %cond.true.418
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB19_115
.LBB19_114:                             # %cond.false.421
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	divl	28(%rdi)
	addl	%edx, %ecx
	movq	-16(%rbp), %r8
	movl	36(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	32(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	44(%r8)
	movl	-292(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$8, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	52(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -296(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	48(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	60(%r8)
	movl	-296(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$16, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	68(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	64(%r8)
	movl	-300(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	shll	$24, %esi
	orl	%esi, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB19_115:                             # %cond.end.455
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
.LBB19_116:                             # %if.end.457
	jmp	.LBB19_133
.LBB19_117:                             # %if.else.458
	movl	-20(%rbp), %eax
	movq	temp_charset_work, %rcx
	cmpl	20(%rcx), %eax
	jne	.LBB19_119
# BB#118:                               # %cond.true.462
	xorl	%eax, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB19_129
.LBB19_119:                             # %cond.false.463
	cmpl	$131072, -20(%rbp)      # imm = 0x20000
	jge	.LBB19_124
# BB#120:                               # %cond.true.466
	movslq	-20(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	cmpl	$0, %edx
	je	.LBB19_122
# BB#121:                               # %cond.true.473
	movslq	-20(%rbp), %rax
	movq	temp_charset_work, %rcx
	movzwl	24(%rcx,%rax,2), %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB19_123
.LBB19_122:                             # %cond.false.479
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB19_123
.LBB19_123:                             # %cond.end.480
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB19_128
.LBB19_124:                             # %cond.false.482
	movl	-20(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	cmpl	$0, %eax
	je	.LBB19_126
# BB#125:                               # %cond.true.490
	movl	-20(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rcx
	movq	temp_charset_work, %rdx
	movzwl	24(%rdx,%rcx,2), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB19_127
.LBB19_126:                             # %cond.false.497
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB19_127
.LBB19_127:                             # %cond.end.498
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB19_128:                             # %cond.end.500
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB19_129:                             # %cond.end.502
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movb	88(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB19_131
# BB#130:                               # %cond.true.509
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB19_132
.LBB19_131:                             # %cond.false.512
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	divl	28(%rdi)
	addl	%edx, %ecx
	movq	-16(%rbp), %r8
	movl	36(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	32(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	44(%r8)
	movl	-332(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$8, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	52(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -336(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	48(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	60(%r8)
	movl	-336(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$16, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	68(%r8), %edx
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	64(%r8)
	movl	-340(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	shll	$24, %esi
	orl	%esi, %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
.LBB19_132:                             # %cond.end.551
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
.LBB19_133:                             # %if.end.553
	jmp	.LBB19_138
.LBB19_134:                             # %if.else.554
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	324(%rcx), %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rcx
	movb	88(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB19_136
# BB#135:                               # %cond.true.563
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB19_137
.LBB19_136:                             # %cond.false.566
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	divl	28(%rdi)
	addl	%edx, %ecx
	movq	-16(%rbp), %r8
	movl	36(%r8), %edx
	movl	-116(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	32(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	44(%r8)
	movl	-356(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$8, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	52(%r8), %edx
	movl	-116(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -360(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	48(%r8)
	movq	-16(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	60(%r8)
	movl	-360(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$16, %esi
	orl	%esi, %ecx
	movq	-16(%rbp), %r8
	movl	68(%r8), %edx
	movl	-116(%rbp), %esi
	movq	-16(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	64(%r8)
	movl	-364(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	shll	$24, %esi
	orl	%esi, %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
.LBB19_137:                             # %cond.end.605
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
.LBB19_138:                             # %if.end.607
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_139:                             # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end19:
	.size	encode_char, .Lfunc_end19-encode_char
	.cfi_endproc

	.globl	Fdecode_char
	.align	16, 0x90
	.type	Fdecode_char,@function
Fdecode_char:                           # @Fdecode_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jge	.LBB20_4
.LBB20_3:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB20_4:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
# BB#5:                                 # %do.end
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	cons_to_unsigned
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	charset_table, %rax
	movslq	-32(%rbp), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rax
	movq	%rax, -48(%rbp)
	testb	$1, %cl
	jne	.LBB20_6
	jmp	.LBB20_7
.LBB20_6:                               # %cond.true
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB20_8
	jmp	.LBB20_10
.LBB20_7:                               # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB20_10
.LBB20_8:                               # %land.lhs.true
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB20_10
# BB#9:                                 # %cond.true.19
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB20_31
.LBB20_10:                              # %cond.false.21
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB20_12
# BB#11:                                # %lor.lhs.false.24
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB20_13
.LBB20_12:                              # %cond.true.27
	movq	$-1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_30
.LBB20_13:                              # %cond.false.28
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB20_15
# BB#14:                                # %cond.true.34
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_29
.LBB20_15:                              # %cond.false.37
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB20_20
# BB#16:                                # %cond.true.40
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB20_18
# BB#17:                                # %cond.true.45
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB20_19
.LBB20_18:                              # %cond.false.48
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	decode_char
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB20_19:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_28
.LBB20_20:                              # %cond.false.51
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB20_26
# BB#21:                                # %cond.true.55
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB20_24
# BB#22:                                # %land.lhs.true.61
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB20_23
	jmp	.LBB20_24
.LBB20_23:                              # %cond.true.67
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB20_25
.LBB20_24:                              # %cond.false.77
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
.LBB20_25:                              # %cond.end.80
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_27
.LBB20_26:                              # %cond.false.82
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
.LBB20_27:                              # %cond.end.85
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB20_28:                              # %cond.end.87
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB20_29:                              # %cond.end.89
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB20_30:                              # %cond.end.91
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB20_31:                              # %cond.end.93
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB20_33
# BB#32:                                # %cond.true.98
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB20_34
.LBB20_33:                              # %cond.false.101
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB20_34:                              # %cond.end.103
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fdecode_char, .Lfunc_end20-Fdecode_char
	.cfi_endproc

	.globl	Fencode_char
	.align	16, 0x90
	.type	Fencode_char,@function
Fencode_char:                           # @Fencode_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jge	.LBB21_4
.LBB21_3:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB21_4:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
# BB#5:                                 # %do.end
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB21_6
	jmp	.LBB21_8
.LBB21_6:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB21_8
# BB#7:                                 # %cond.true
	jmp	.LBB21_9
.LBB21_8:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB21_9:                               # %cond.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -36(%rbp)
	movq	charset_table, %rcx
	movslq	-40(%rbp), %rsi
	imulq	$328, %rsi, %rsi        # imm = 0x148
	addq	%rsi, %rcx
	movq	%rcx, -56(%rbp)
	testb	$1, %al
	jne	.LBB21_10
	jmp	.LBB21_11
.LBB21_10:                              # %cond.true.18
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB21_12
	jmp	.LBB21_14
.LBB21_11:                              # %cond.false.21
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB21_14
.LBB21_12:                              # %land.lhs.true.26
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB21_14
# BB#13:                                # %cond.true.28
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB21_40
.LBB21_14:                              # %cond.false.29
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB21_17
# BB#15:                                # %lor.lhs.false.35
	movq	-56(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB21_17
# BB#16:                                # %lor.lhs.false.38
	movq	-56(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB21_18
.LBB21_17:                              # %cond.true.42
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB21_39
.LBB21_18:                              # %cond.false.44
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB21_20
# BB#19:                                # %lor.lhs.false.47
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB21_21
.LBB21_20:                              # %cond.true.50
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB21_38
.LBB21_21:                              # %cond.false.51
	movq	-56(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB21_26
# BB#22:                                # %cond.true.55
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB21_24
# BB#23:                                # %cond.true.60
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-56(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB21_25
.LBB21_24:                              # %cond.false.62
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB21_25:                              # %cond.end.64
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB21_37
.LBB21_26:                              # %cond.false.65
	movq	-56(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB21_35
# BB#27:                                # %cond.true.69
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB21_33
# BB#28:                                # %land.lhs.true.75
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB21_29
	jmp	.LBB21_33
.LBB21_29:                              # %cond.true.81
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB21_31
# BB#30:                                # %cond.true.90
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB21_32
.LBB21_31:                              # %cond.false.92
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB21_32:                              # %cond.end.95
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB21_34
.LBB21_33:                              # %cond.false.97
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB21_34:                              # %cond.end.99
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB21_36
.LBB21_35:                              # %cond.false.101
	movq	-56(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB21_36:                              # %cond.end.103
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB21_37:                              # %cond.end.105
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB21_38:                              # %cond.end.107
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB21_39:                              # %cond.end.109
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB21_40:                              # %cond.end.111
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB21_42
# BB#41:                                # %if.then.116
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB21_51
.LBB21_42:                              # %if.end.118
	xorl	%eax, %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB21_44
# BB#43:                                # %lor.lhs.false.121
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB21_46
.LBB21_44:                              # %land.lhs.true.125
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jg	.LBB21_46
# BB#45:                                # %cond.true.129
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB21_50
.LBB21_46:                              # %cond.false.132
	imull	$0, -44(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jae	.LBB21_48
# BB#47:                                # %cond.true.136
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	callq	intbig_to_lisp
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB21_49
.LBB21_48:                              # %cond.false.139
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	callq	uintbig_to_lisp
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB21_49:                              # %cond.end.142
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB21_50:                              # %cond.end.144
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB21_51:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fencode_char, .Lfunc_end21-Fencode_char
	.cfi_endproc

	.globl	Fmake_char
	.align	16, 0x90
	.type	Fmake_char,@function
Fmake_char:                             # @Fmake_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jge	.LBB22_4
.LBB22_3:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB22_4:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
# BB#5:                                 # %do.end
	xorl	%edi, %edi
	movq	charset_table, %rax
	movslq	-44(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_10
# BB#6:                                 # %if.then.14
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB22_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB22_9
.LBB22_8:                               # %cond.false
	movq	-56(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB22_9:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB22_34
.LBB22_10:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB22_12
# BB#11:                                # %if.then.19
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB22_12:                              # %if.end.20
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$1, -48(%rbp)
	jle	.LBB22_33
# BB#13:                                # %if.then.25
	xorl	%edi, %edi
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_15
# BB#14:                                # %if.then.29
	movl	-48(%rbp), %eax
	subl	$2, %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movl	20(%rdx,%rcx,4), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB22_18
.LBB22_15:                              # %if.else.30
	movq	-24(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-24(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB22_17
# BB#16:                                # %if.then.34
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB22_17:                              # %if.end.35
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	orq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -60(%rbp)
.LBB22_18:                              # %if.end.40
	cmpl	$2, -48(%rbp)
	jle	.LBB22_32
# BB#19:                                # %if.then.43
	xorl	%edi, %edi
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_21
# BB#20:                                # %if.then.48
	movl	-48(%rbp), %eax
	subl	$3, %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movl	20(%rdx,%rcx,4), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB22_24
.LBB22_21:                              # %if.else.55
	movq	-32(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-32(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB22_23
# BB#22:                                # %if.then.59
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB22_23:                              # %if.end.60
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	orq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -60(%rbp)
.LBB22_24:                              # %if.end.65
	cmpl	$3, -48(%rbp)
	jle	.LBB22_31
# BB#25:                                # %if.then.68
	xorl	%edi, %edi
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_27
# BB#26:                                # %if.then.73
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	orl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB22_30
.LBB22_27:                              # %if.else.77
	movq	-40(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB22_29
# BB#28:                                # %if.then.81
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	callq	args_out_of_range
.LBB22_29:                              # %if.end.82
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	orq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -60(%rbp)
.LBB22_30:                              # %if.end.87
	jmp	.LBB22_31
.LBB22_31:                              # %if.end.88
	jmp	.LBB22_32
.LBB22_32:                              # %if.end.89
	jmp	.LBB22_33
.LBB22_33:                              # %if.end.90
	jmp	.LBB22_34
.LBB22_34:                              # %if.end.91
	movq	-56(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB22_36
# BB#35:                                # %if.then.94
	movl	-60(%rbp), %eax
	andl	$2139062143, %eax       # imm = 0x7F7F7F7F
	movl	%eax, -60(%rbp)
.LBB22_36:                              # %if.end.96
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_37
	jmp	.LBB22_38
.LBB22_37:                              # %cond.true.97
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB22_39
	jmp	.LBB22_41
.LBB22_38:                              # %cond.false.100
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB22_41
.LBB22_39:                              # %land.lhs.true
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB22_41
# BB#40:                                # %cond.true.111
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB22_62
.LBB22_41:                              # %cond.false.113
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jb	.LBB22_43
# BB#42:                                # %lor.lhs.false.117
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jbe	.LBB22_44
.LBB22_43:                              # %cond.true.120
	movq	$-1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB22_61
.LBB22_44:                              # %cond.false.121
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB22_46
# BB#45:                                # %cond.true.127
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	jmp	.LBB22_60
.LBB22_46:                              # %cond.false.130
	movq	-56(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB22_51
# BB#47:                                # %cond.true.133
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB22_49
# BB#48:                                # %cond.true.138
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	108(%rcx), %eax
	movq	-56(%rbp), %rcx
	addl	324(%rcx), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB22_50
.LBB22_49:                              # %cond.false.142
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB22_50:                              # %cond.end.144
	movl	-148(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB22_59
.LBB22_51:                              # %cond.false.147
	movq	-56(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB22_57
# BB#52:                                # %cond.true.151
	movq	-56(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB22_55
# BB#53:                                # %land.lhs.true.157
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB22_54
	jmp	.LBB22_55
.LBB22_54:                              # %cond.true.163
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rsi
	subl	108(%rsi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB22_56
.LBB22_55:                              # %cond.false.173
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
.LBB22_56:                              # %cond.end.176
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB22_58
.LBB22_57:                              # %cond.false.178
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	decode_char
	movslq	%eax, %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
.LBB22_58:                              # %cond.end.181
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB22_59:                              # %cond.end.183
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB22_60:                              # %cond.end.185
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB22_61:                              # %cond.end.187
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB22_62:                              # %cond.end.189
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jge	.LBB22_64
# BB#63:                                # %if.then.194
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB22_64:                              # %if.end.195
	movslq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fmake_char, .Lfunc_end22-Fmake_char
	.cfi_endproc

	.globl	char_charset
	.align	16, 0x90
	.type	char_charset,@function
char_charset:                           # @char_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_3
.LBB23_2:                               # %if.else
	movb	$1, -33(%rbp)
.LBB23_3:                               # %if.end
	jmp	.LBB23_4
.LBB23_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_45
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB23_4 Depth=1
	movb	$1, %al
	movq	charset_table, %rcx
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	testb	$1, %al
	jne	.LBB23_6
	jmp	.LBB23_7
.LBB23_6:                               # %cond.true
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB23_8
	jmp	.LBB23_10
.LBB23_7:                               # %cond.false
                                        #   in Loop: Header=BB23_4 Depth=1
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB23_10
.LBB23_8:                               # %land.lhs.true
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB23_10
# BB#9:                                 # %cond.true.10
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_36
.LBB23_10:                              # %cond.false.11
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB23_13
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB23_13
# BB#12:                                # %lor.lhs.false.19
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB23_14
.LBB23_13:                              # %cond.true.23
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	encode_char
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB23_35
.LBB23_14:                              # %cond.false.25
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB23_16
# BB#15:                                # %lor.lhs.false.28
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB23_17
.LBB23_16:                              # %cond.true.31
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB23_34
.LBB23_17:                              # %cond.false.32
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB23_22
# BB#18:                                # %cond.true.36
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB23_20
# BB#19:                                # %cond.true.41
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB23_21
.LBB23_20:                              # %cond.false.44
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	encode_char
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB23_21:                              # %cond.end
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB23_33
.LBB23_22:                              # %cond.false.46
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB23_31
# BB#23:                                # %cond.true.50
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB23_29
# BB#24:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB23_25
	jmp	.LBB23_29
.LBB23_25:                              # %cond.true.62
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB23_27
# BB#26:                                # %cond.true.71
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB23_28
.LBB23_27:                              # %cond.false.73
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB23_28:                              # %cond.end.76
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB23_30
.LBB23_29:                              # %cond.false.78
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	encode_char
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB23_30:                              # %cond.end.80
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB23_32
.LBB23_31:                              # %cond.false.82
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	encode_char
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB23_32:                              # %cond.end.84
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB23_33:                              # %cond.end.86
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB23_34:                              # %cond.end.88
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB23_35:                              # %cond.end.90
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB23_36:                              # %cond.end.92
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB23_40
# BB#37:                                # %if.then.97
	cmpq	$0, -32(%rbp)
	je	.LBB23_39
# BB#38:                                # %if.then.98
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB23_39:                              # %if.end.99
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_52
.LBB23_40:                              # %if.end.100
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	testb	$1, -33(%rbp)
	jne	.LBB23_44
# BB#41:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB23_4 Depth=1
	cmpl	$1114111, -12(%rbp)     # imm = 0x10FFFF
	jg	.LBB23_44
# BB#42:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-24(%rbp), %rax
	cmpq	Vcharset_non_preferred_head, %rax
	jne	.LBB23_44
# BB#43:                                # %if.then.109
	movq	charset_table, %rax
	movslq	charset_unicode, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_52
.LBB23_44:                              # %if.end.111
                                        #   in Loop: Header=BB23_4 Depth=1
	jmp	.LBB23_4
.LBB23_45:                              # %while.end
	testb	$1, -33(%rbp)
	je	.LBB23_47
# BB#46:                                # %cond.true.114
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_51
.LBB23_47:                              # %cond.false.115
	cmpl	$4194175, -12(%rbp)     # imm = 0x3FFF7F
	jg	.LBB23_49
# BB#48:                                # %cond.true.118
	movq	charset_table, %rax
	movslq	charset_emacs, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_50
.LBB23_49:                              # %cond.false.121
	movq	charset_table, %rax
	movslq	charset_eight_bit, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB23_50:                              # %cond.end.124
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB23_51:                              # %cond.end.126
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB23_52:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	char_charset, .Lfunc_end23-char_charset
	.cfi_endproc

	.globl	Fsplit_char
	.align	16, 0x90
	.type	Fsplit_char,@function
Fsplit_char:                            # @Fsplit_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB24_1
	jmp	.LBB24_3
.LBB24_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB24_3
# BB#2:                                 # %cond.true
	jmp	.LBB24_4
.LBB24_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB24_4:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$128, -20(%rbp)
	jge	.LBB24_6
# BB#5:                                 # %cond.true.5
	movq	charset_table, %rax
	movslq	charset_ascii, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB24_7
.LBB24_6:                               # %cond.false.6
	xorl	%edi, %edi
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-60(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB24_7:                               # %cond.end.9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB24_9
# BB#8:                                 # %if.then
	callq	emacs_abort
.LBB24_9:                               # %if.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB24_10
	jmp	.LBB24_11
.LBB24_10:                              # %cond.true.10
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB24_12
	jmp	.LBB24_14
.LBB24_11:                              # %cond.false.13
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB24_14
.LBB24_12:                              # %land.lhs.true.18
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB24_14
# BB#13:                                # %cond.true.20
	movl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB24_40
.LBB24_14:                              # %cond.false.21
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB24_17
# BB#15:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB24_17
# BB#16:                                # %lor.lhs.false.29
	movq	-16(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB24_18
.LBB24_17:                              # %cond.true.33
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB24_39
.LBB24_18:                              # %cond.false.35
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB24_20
# BB#19:                                # %lor.lhs.false.38
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB24_21
.LBB24_20:                              # %cond.true.41
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB24_38
.LBB24_21:                              # %cond.false.42
	movq	-16(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB24_26
# BB#22:                                # %cond.true.46
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB24_24
# BB#23:                                # %cond.true.51
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB24_25
.LBB24_24:                              # %cond.false.53
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB24_25:                              # %cond.end.55
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB24_37
.LBB24_26:                              # %cond.false.57
	movq	-16(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB24_35
# BB#27:                                # %cond.true.61
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB24_33
# BB#28:                                # %land.lhs.true.67
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB24_29
	jmp	.LBB24_33
.LBB24_29:                              # %cond.true.73
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_31
# BB#30:                                # %cond.true.82
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB24_32
.LBB24_31:                              # %cond.false.84
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB24_32:                              # %cond.end.87
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB24_34
.LBB24_33:                              # %cond.false.89
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB24_34:                              # %cond.end.91
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB24_36
.LBB24_35:                              # %cond.false.93
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB24_36:                              # %cond.end.95
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB24_37:                              # %cond.end.97
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB24_38:                              # %cond.end.99
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB24_39:                              # %cond.end.101
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB24_40:                              # %cond.end.103
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB24_42
# BB#41:                                # %if.then.108
	callq	emacs_abort
.LBB24_42:                              # %if.end.109
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB24_43:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB24_46
# BB#44:                                # %for.body
                                        #   in Loop: Header=BB24_43 Depth=1
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edx
	shrl	$8, %edx
	movl	%edx, -28(%rbp)
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB24_43 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB24_43
.LBB24_46:                              # %for.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fsplit_char, .Lfunc_end24-Fsplit_char
	.cfi_endproc

	.globl	Fchar_charset
	.align	16, 0x90
	.type	Fchar_charset,@function
Fchar_charset:                          # @Fchar_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_3
.LBB25_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB25_3
# BB#2:                                 # %cond.true
	jmp	.LBB25_4
.LBB25_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB25_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_9
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jge	.LBB25_7
# BB#6:                                 # %cond.true.6
	movq	charset_table, %rax
	movslq	charset_ascii, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false.7
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-92(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB25_8:                               # %cond.end.11
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB25_58
.LBB25_9:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB25_55
# BB#10:                                # %if.then.15
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB25_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB25_54
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB25_11 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %do.body
                                        #   in Loop: Header=BB25_11 Depth=1
	jmp	.LBB25_14
.LBB25_14:                              # %do.body.22
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jge	.LBB25_17
.LBB25_16:                              # %if.then.33
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB25_17:                              # %if.end
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
# BB#18:                                # %do.end
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	charset_table, %rax
	movslq	-52(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
# BB#19:                                # %do.end.44
                                        #   in Loop: Header=BB25_11 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB25_20
	jmp	.LBB25_21
.LBB25_20:                              # %cond.true.45
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB25_22
	jmp	.LBB25_24
.LBB25_21:                              # %cond.false.48
                                        #   in Loop: Header=BB25_11 Depth=1
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB25_24
.LBB25_22:                              # %land.lhs.true.53
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB25_24
# BB#23:                                # %cond.true.55
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB25_50
.LBB25_24:                              # %cond.false.56
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB25_27
# BB#25:                                # %lor.lhs.false.62
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB25_27
# BB#26:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB25_28
.LBB25_27:                              # %cond.true.69
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB25_49
.LBB25_28:                              # %cond.false.71
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB25_30
# BB#29:                                # %lor.lhs.false.74
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB25_31
.LBB25_30:                              # %cond.true.77
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB25_48
.LBB25_31:                              # %cond.false.78
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB25_36
# BB#32:                                # %cond.true.82
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB25_34
# BB#33:                                # %cond.true.87
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB25_35
.LBB25_34:                              # %cond.false.90
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB25_35:                              # %cond.end.92
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB25_47
.LBB25_36:                              # %cond.false.94
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB25_45
# BB#37:                                # %cond.true.98
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB25_43
# BB#38:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB25_39
	jmp	.LBB25_43
.LBB25_39:                              # %cond.true.110
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB25_41
# BB#40:                                # %cond.true.119
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB25_42
.LBB25_41:                              # %cond.false.121
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB25_42:                              # %cond.end.124
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB25_44
.LBB25_43:                              # %cond.false.126
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB25_44:                              # %cond.end.128
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB25_46
.LBB25_45:                              # %cond.false.130
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB25_46:                              # %cond.end.132
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB25_47:                              # %cond.end.134
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB25_48:                              # %cond.end.136
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB25_49:                              # %cond.end.138
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB25_50:                              # %cond.end.140
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB25_52
# BB#51:                                # %if.then.145
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_59
.LBB25_52:                              # %if.end.148
                                        #   in Loop: Header=BB25_11 Depth=1
	jmp	.LBB25_53
.LBB25_53:                              # %for.inc
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_11
.LBB25_54:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB25_59
.LBB25_55:                              # %if.end.151
	movq	-24(%rbp), %rdi
	callq	coding_system_charset_list
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rsi
	movl	%ecx, %edi
	callq	char_charset
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_57
# BB#56:                                # %if.then.156
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB25_59
.LBB25_57:                              # %if.end.158
	jmp	.LBB25_58
.LBB25_58:                              # %if.end.159
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -8(%rbp)
.LBB25_59:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fchar_charset, .Lfunc_end25-Fchar_charset
	.cfi_endproc

	.globl	Fcharset_after
	.align	16, 0x90
	.type	Fcharset_after,@function
Fcharset_after:                         # @Fcharset_after
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fchar_after
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_6
.LBB26_2:                               # %if.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jge	.LBB26_4
# BB#3:                                 # %cond.true
	movq	charset_table, %rax
	movslq	charset_ascii, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB26_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -8(%rbp)
.LBB26_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fcharset_after, .Lfunc_end26-Fcharset_after
	.cfi_endproc

	.globl	Fiso_charset
	.align	16, 0x90
	.type	Fiso_charset,@function
Fiso_charset:                           # @Fiso_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	check_iso_charset_parameter
	movabsq	$iso_charset_table, %rdx
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rsi
	sarq	$2, %rsi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %r8
	sarq	$2, %r8
	subq	$1, %r8
	shlq	$10, %r8
	addq	%r8, %rdx
	shlq	$9, %rdi
	addq	%rdi, %rdx
	movl	(%rdx,%rsi,4), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jl	.LBB27_2
# BB#1:                                 # %cond.true
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	charset_table, %rdi
	movslq	-32(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB27_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fiso_charset, .Lfunc_end27-Fiso_charset
	.cfi_endproc

	.globl	Fclear_charset_maps
	.align	16, 0x90
	.type	Fclear_charset_maps,@function
Fclear_charset_maps:                    # @Fclear_charset_maps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, temp_charset_work
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	temp_charset_work, %rax
	movq	%rax, %rdi
	callq	xfree
	movq	$0, temp_charset_work
.LBB28_2:                               # %if.end
	movq	Vchar_unify_table, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB28_3
	jmp	.LBB28_4
.LBB28_3:                               # %if.then.1
	xorl	%edi, %edi
	movq	Vchar_unify_table, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Foptimize_char_table
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB28_4:                               # %if.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fclear_charset_maps, .Lfunc_end28-Fclear_charset_maps
	.cfi_endproc

	.globl	Fcharset_priority_list
	.align	16, 0x90
	.type	Fcharset_priority_list,@function
Fcharset_priority_list:                 # @Fcharset_priority_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	charset_table, %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	Fcar
	sarq	$2, %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	8(%rcx), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	HASH_VALUE
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -8(%rbp)
	jmp	.LBB29_6
.LBB29_2:                               # %if.end
	jmp	.LBB29_3
.LBB29_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB29_4
	jmp	.LBB29_5
.LBB29_4:                               # %while.body
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	charset_table, %rdi
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_3
.LBB29_5:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -8(%rbp)
.LBB29_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fcharset_priority_list, .Lfunc_end29-Fcharset_priority_list
	.cfi_endproc

	.globl	Fset_charset_priority
	.align	16, 0x90
	.type	Fset_charset_priority,@function
Fset_charset_priority:                  # @Fset_charset_priority
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	Vcharset_ordered_list, %rdi
	callq	Fcopy_sequence
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	$0, -56(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB30_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_3
.LBB30_3:                               # %do.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB30_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdi,8), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jge	.LBB30_6
.LBB30_5:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
# BB#7:                                 # %do.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_9
# BB#8:                                 # %if.then.20
                                        #   in Loop: Header=BB30_1 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fdelq
	movq	%rax, -32(%rbp)
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB30_9:                               # %if.end.29
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_10
.LBB30_10:                              # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB30_1
.LBB30_11:                              # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, Vcharset_non_preferred_head
	movq	-24(%rbp), %rdi
	callq	Fnreverse
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-88(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	Fnconc
	xorl	%edi, %edi
	movq	%rax, Vcharset_ordered_list
	movq	charset_ordered_list_tick, %rax
	addq	$1, %rax
	movq	%rax, charset_ordered_list_tick
	movl	$-1, charset_unibyte
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
.LBB30_12:                              # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_25
# BB#13:                                # %for.body.39
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	Viso_2022_charset_list, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_15
# BB#14:                                # %if.then.44
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB30_15:                              # %if.end.48
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	Vemacs_mule_charset_list, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_17
# BB#16:                                # %if.then.55
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB30_17:                              # %if.end.59
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpl	$0, charset_unibyte
	jge	.LBB30_23
# BB#18:                                # %if.then.62
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	charset_table, %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB30_22
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-96(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB30_22
# BB#20:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$128, 124(%rax)
	jl	.LBB30_22
# BB#21:                                # %if.then.72
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, charset_unibyte
.LBB30_22:                              # %if.end.74
                                        #   in Loop: Header=BB30_12 Depth=1
	jmp	.LBB30_23
.LBB30_23:                              # %if.end.75
                                        #   in Loop: Header=BB30_12 Depth=1
	jmp	.LBB30_24
.LBB30_24:                              # %for.inc.76
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB30_12
.LBB30_25:                              # %for.end.78
	movq	-40(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, Viso_2022_charset_list
	movq	-48(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, Vemacs_mule_charset_list
	cmpl	$0, charset_unibyte
	jge	.LBB30_27
# BB#26:                                # %if.then.83
	movl	charset_iso_8859_1, %eax
	movl	%eax, charset_unibyte
.LBB30_27:                              # %if.end.84
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fset_charset_priority, .Lfunc_end30-Fset_charset_priority
	.cfi_endproc

	.globl	Fcharset_id_internal
	.align	16, 0x90
	.type	Fcharset_id_internal,@function
Fcharset_id_internal:                   # @Fcharset_id_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_3
# BB#2:                                 # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jge	.LBB31_4
.LBB31_3:                               # %if.then
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB31_4:                               # %if.end
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
# BB#5:                                 # %do.end
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fcharset_id_internal, .Lfunc_end31-Fcharset_id_internal
	.cfi_endproc

	.globl	Fsort_charsets
	.align	16, 0x90
	.type	Fsort_charsets,@function
Fsort_charsets:                         # @Fsort_charsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$2147483647, -96(%rbp)  # imm = 0x7FFFFFFF
	movl	$-2147483648, -100(%rbp) # imm = 0xFFFFFFFF80000000
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_44
.LBB32_2:                               # %if.end
	jmp	.LBB32_3
.LBB32_3:                               # %do.body
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-112(%rbp), %rax
	xorl	%esi, %esi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	shrq	$0, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB32_5
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-32(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)
	jmp	.LBB32_6
.LBB32_5:                               # %if.else
	movl	$24, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -88(%rbp)
	movb	$1, -121(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB32_6:                               # %if.end.8
	jmp	.LBB32_7
.LBB32_7:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
.LBB32_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB32_20
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB32_8 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
# BB#10:                                # %do.body.12
                                        #   in Loop: Header=BB32_8 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB32_8 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB32_13
.LBB32_12:                              # %if.then.22
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB32_13:                              # %if.end.24
                                        #   in Loop: Header=BB32_8 Depth=1
	jmp	.LBB32_14
.LBB32_14:                              # %do.end.25
                                        #   in Loop: Header=BB32_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-88(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-80(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %r8d
	movl	%r8d, -92(%rbp)
	movq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-88(%rbp), %rax
	movl	%r8d, 8(%rax)
	movl	-92(%rbp), %r8d
	cmpl	-96(%rbp), %r8d
	jge	.LBB32_16
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB32_16:                              # %if.end.34
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	-92(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.LBB32_18
# BB#17:                                # %if.then.37
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB32_18:                              # %if.end.38
                                        #   in Loop: Header=BB32_8 Depth=1
	jmp	.LBB32_19
.LBB32_19:                              # %for.inc
                                        #   in Loop: Header=BB32_8 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB32_8
.LBB32_20:                              # %for.end
	movl	$0, -52(%rbp)
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -40(%rbp)
.LBB32_21:                              # %for.cond.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_27 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jge	.LBB32_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB32_21 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -169(%rbp)         # 1-byte Spill
.LBB32_23:                              # %land.end
                                        #   in Loop: Header=BB32_21 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_24
	jmp	.LBB32_35
.LBB32_24:                              # %for.body.48
                                        #   in Loop: Header=BB32_21 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %ecx
	cmpl	-96(%rbp), %ecx
	jl	.LBB32_33
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB32_21 Depth=1
	movl	-92(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB32_33
# BB#26:                                # %if.then.57
                                        #   in Loop: Header=BB32_21 Depth=1
	movq	$0, -48(%rbp)
.LBB32_27:                              # %for.cond.58
                                        #   Parent Loop BB32_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB32_32
# BB#28:                                # %for.body.61
                                        #   in Loop: Header=BB32_27 Depth=2
	movq	-48(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-92(%rbp), %ecx
	jne	.LBB32_30
# BB#29:                                # %if.then.66
                                        #   in Loop: Header=BB32_27 Depth=2
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
.LBB32_30:                              # %if.end.69
                                        #   in Loop: Header=BB32_27 Depth=2
	jmp	.LBB32_31
.LBB32_31:                              # %for.inc.70
                                        #   in Loop: Header=BB32_27 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB32_27
.LBB32_32:                              # %for.end.72
                                        #   in Loop: Header=BB32_21 Depth=1
	jmp	.LBB32_33
.LBB32_33:                              # %if.end.73
                                        #   in Loop: Header=BB32_21 Depth=1
	jmp	.LBB32_34
.LBB32_34:                              # %for.inc.74
                                        #   in Loop: Header=BB32_21 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB32_21
.LBB32_35:                              # %for.end.79
	movl	$24, %eax
	movl	%eax, %edx
	movabsq	$charset_compare, %rcx
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
.LBB32_36:                              # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB32_39
# BB#37:                                # %for.body.85
                                        #   in Loop: Header=BB32_36 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-88(%rbp), %rax
	movq	(%rax), %rsi
	callq	XSETCAR
# BB#38:                                # %for.inc.88
                                        #   in Loop: Header=BB32_36 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB32_36
.LBB32_39:                              # %for.end.93
	jmp	.LBB32_40
.LBB32_40:                              # %do.body.94
	testb	$1, -121(%rbp)
	je	.LBB32_42
# BB#41:                                # %if.then.95
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB32_42:                              # %if.end.98
	jmp	.LBB32_43
.LBB32_43:                              # %do.end.99
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB32_44:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fsort_charsets, .Lfunc_end32-Fsort_charsets
	.cfi_endproc

	.align	16, 0x90
	.type	charset_compare,@function
charset_compare:                        # @charset_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-40(%rbp), %rdi
	cmpq	16(%rdi), %rsi
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-40(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB33_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	charset_compare, .Lfunc_end33-charset_compare
	.cfi_endproc

	.globl	init_charset
	.align	16, 0x90
	.type	init_charset,@function
init_charset:                           # @init_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.9, %rdi
	callq	build_string
	movq	globals+408, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.11, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	egetenv
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.12, %rcx
	cmpq	$0, %rax
	cmovneq	%rcx, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	exit
.LBB34_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	list1
	movq	%rax, globals+240
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	init_charset, .Lfunc_end34-init_charset
	.cfi_endproc

	.globl	init_charset_once
	.align	16, 0x90
	.type	init_charset_once,@function
init_charset_once:                      # @init_charset_once
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_3 Depth 2
                                        #       Child Loop BB35_5 Depth 3
	cmpl	$3, -4(%rbp)
	jge	.LBB35_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	$0, -8(%rbp)
.LBB35_3:                               # %for.cond.1
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_5 Depth 3
	cmpl	$2, -8(%rbp)
	jge	.LBB35_10
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB35_3 Depth=2
	movl	$0, -12(%rbp)
.LBB35_5:                               # %for.cond.4
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$128, -12(%rbp)
	jge	.LBB35_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB35_5 Depth=3
	movabsq	$iso_charset_table, %rax
	movslq	-12(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	shlq	$9, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax,%rcx,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB35_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB35_5
.LBB35_8:                               # %for.end
                                        #   in Loop: Header=BB35_3 Depth=2
	jmp	.LBB35_9
.LBB35_9:                               # %for.inc.11
                                        #   in Loop: Header=BB35_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB35_3
.LBB35_10:                              # %for.end.13
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_11
.LBB35_11:                              # %for.inc.14
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB35_1
.LBB35_12:                              # %for.end.16
	movl	$0, -4(%rbp)
.LBB35_13:                              # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB35_16
# BB#14:                                # %for.body.19
                                        #   in Loop: Header=BB35_13 Depth=1
	movslq	-4(%rbp), %rax
	movl	$-1, emacs_mule_charset(,%rax,4)
# BB#15:                                # %for.inc.22
                                        #   in Loop: Header=BB35_13 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB35_13
.LBB35_16:                              # %for.end.24
	movl	$-1, charset_jisx0201_roman
	movl	$-1, charset_jisx0208_1978
	movl	$-1, charset_jisx0208
	movl	$-1, charset_ksc5601
	popq	%rbp
	retq
.Lfunc_end35:
	.size	init_charset_once, .Lfunc_end35-init_charset_once
	.cfi_endproc

	.globl	syms_of_charset
	.align	16, 0x90
	.type	syms_of_charset,@function
syms_of_charset:                        # @syms_of_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$Vcharset_ordered_list, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Viso_2022_charset_list, %rdi
	movq	%rax, Vcharset_ordered_list
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vemacs_mule_charset_list, %rdi
	movq	%rax, Viso_2022_charset_list
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vcharset_hash_table, %rdi
	movq	%rax, Vemacs_mule_charset_list
	callq	staticpro
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$369, %edi              # imm = 0x171
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-16(%rbp), %rsi
	movq	%rax, -8(%rbp)
	callq	Fmake_hash_table
	movabsq	$Scharsetp, %rsi
	movabsq	$charset_table_init, %rdi
	movq	%rax, Vcharset_hash_table
	movq	%rdi, charset_table
	movq	$180, charset_table_size
	movl	$0, charset_table_used
	movq	%rsi, %rdi
	callq	defsubr
	movabsq	$Smap_charset_chars, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_charset_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_charset_alias, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scharset_plist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_charset_plist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunify_charset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_unused_iso_final_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdeclare_equiv_charset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfind_charset_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfind_charset_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdecode_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sencode_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssplit_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_charset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scharset_after, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Siso_charset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclear_charset_maps, %rdi
	callq	defsubr
	movabsq	$Scharset_priority_list, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_charset_priority, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scharset_id_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssort_charsets, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_charset.o_fwd, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$globals, %rax
	addq	$240, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+240
# BB#3:                                 # %do.body.7
	movabsq	$syms_of_charset.b_fwd, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$globals, %rax
	addq	$3393, %rax             # imm = 0xD41
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.8
	movb	$0, globals+3393
# BB#5:                                 # %do.body.9
	movabsq	$syms_of_charset.o_fwd.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$232, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+232
# BB#7:                                 # %do.body.12
	movabsq	$syms_of_charset.o_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$181, %edi
	movq	%rax, globals+384
	callq	builtin_lisp_symbol
	movl	$1, %esi
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	movl	$127, %r8d
	movl	$66, %r9d
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	define_charset_internal
	movl	$581, %edi              # imm = 0x245
	movl	%eax, charset_ascii
	callq	builtin_lisp_symbol
	movl	$1, %esi
	movabsq	$.L.str.21, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movl	$-1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	define_charset_internal
	movl	$971, %edi              # imm = 0x3CB
	movl	%eax, charset_iso_8859_1
	callq	builtin_lisp_symbol
	movl	$3, %esi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movl	$1114111, %r8d          # imm = 0x10FFFF
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$1, %edi
	movl	%edi, -24(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$-1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	define_charset_internal
	movl	$360, %edi              # imm = 0x168
	movl	%eax, charset_unicode
	callq	builtin_lisp_symbol
	movl	$3, %esi
	movabsq	$.L.str.23, %rdx
	xorl	%ecx, %ecx
	movl	$4194175, %r8d          # imm = 0x3FFF7F
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$1, %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$-1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	define_charset_internal
	movl	$359, %edi              # imm = 0x167
	movl	%eax, charset_emacs
	callq	builtin_lisp_symbol
	movl	$1, %esi
	movabsq	$.L.str.24, %rdx
	movl	$128, %ecx
	movl	$255, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorl	%edi, %edi
	movl	$4194176, %r10d         # imm = 0x3FFF80
	movl	%edi, -32(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$-1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$4194176, 32(%rsp)      # imm = 0x3FFF80
	movl	%r10d, -36(%rbp)        # 4-byte Spill
	callq	define_charset_internal
	movl	%eax, charset_eight_bit
	movl	charset_iso_8859_1, %eax
	movl	%eax, charset_unibyte
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	syms_of_charset, .Lfunc_end36-syms_of_charset
	.cfi_endproc

	.align	16, 0x90
	.type	define_charset_internal,@function
define_charset_internal:                # @define_charset_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$464, %rsp              # imm = 0x1D0
.Ltmp114:
	.cfi_offset %rbx, -48
.Ltmp115:
	.cfi_offset %r12, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
	movl	48(%rbp), %eax
	movb	40(%rbp), %r10b
	movb	32(%rbp), %r11b
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movl	$8, %r15d
	movl	%r15d, %r12d
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movl	%r14d, -72(%rbp)
	movl	%ebx, -76(%rbp)
	andb	$1, %r11b
	movb	%r11b, -77(%rbp)
	andb	$1, %r10b
	movb	%r10b, -78(%rbp)
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movslq	-44(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -232(%rbp)
	movq	%r12, %rdi
	callq	make_uninit_vector
	movq	%rax, -248(%rbp)
	movl	$0, -252(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -252(%rbp)
	jge	.LBB37_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-248(%rbp), %rdi
	movslq	-252(%rbp), %rsi
	movslq	-252(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB37_1
.LBB37_4:                               # %for.end
	movq	-248(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -216(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -208(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB37_6
# BB#5:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB37_7
.LBB37_6:                               # %cond.false
	movslq	-68(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB37_7:                               # %cond.end
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movslq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB37_9
# BB#8:                                 # %cond.true.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB37_10
.LBB37_9:                               # %cond.false.33
	movslq	-76(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB37_10:                              # %cond.end.37
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	testb	$1, -77(%rbp)
	je	.LBB37_12
# BB#11:                                # %cond.true.41
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB37_13
.LBB37_12:                              # %cond.false.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB37_13:                              # %cond.end.45
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	testb	$1, -78(%rbp)
	je	.LBB37_15
# BB#14:                                # %cond.true.50
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB37_16
.LBB37_15:                              # %cond.false.52
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB37_16:                              # %cond.end.54
	movq	-288(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	movslq	-84(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	movl	$86, %edi
	movq	%rax, -120(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.55, %rdi
	movq	-240(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.56, %rdi
	movq	-232(%rbp), %r9
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%r9, -320(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.57, %rdi
	movq	-224(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.58, %rdi
	movq	-200(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movl	$10, %edi
	movq	-184(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.59, %rdi
	movq	-176(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	intern_c_string
	xorl	%edi, %edi
	movl	$14, %edx
	movl	%edx, %esi
	movq	-152(%rbp), %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	-304(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	-320(%rbp), %r9         # 8-byte Reload
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%r10, 48(%rsp)
	movq	-384(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, 72(%rsp)
	movb	$0, %al
	callq	listn
	movl	$17, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-240(%rbp), %rsi
	movq	%rax, -112(%rbp)
	callq	Fdefine_charset_internal
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	Vcharset_hash_table, %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %r11d
	movl	%r11d, %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	define_charset_internal, .Lfunc_end37-define_charset_internal
	.cfi_endproc

	.align	16, 0x90
	.type	load_charset_map_from_file,@function
load_charset_map_from_file:             # @load_charset_map_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movl	$4, %eax
	leaq	-104(%rbp), %rcx
	movabsq	$.L.str.25, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	108(%rsi), %edx
	movl	%edx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	112(%rsi), %edx
	movl	%edx, -28(%rbp)
	movq	$4, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%r8, -80(%rbp)
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-144(%rbp), %rcx
	movabsq	$.L.str.26, %rdi
	movq	%rax, -72(%rbp)
	movq	$4, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rdi, -120(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-184(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$3, %esi
	leaq	-168(%rbp), %rcx
	movq	%rax, -160(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -152(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -192(%rbp)
	callq	record_unwind_protect_nothing
	movl	$419, %edi              # imm = 0x1A3
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	globals+240, %rax
	movq	-16(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	openp
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB38_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB38_3
.LBB38_2:                               # %cond.false
	movabsq	$.L.str.27, %rsi
	movl	-32(%rbp), %edi
	callq	fdopen
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB38_3:                               # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_5
# BB#4:                                 # %if.then
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -196(%rbp)
	movl	-32(%rbp), %edi
	callq	emacs_close
	movabsq	$.L.str.28, %rdi
	movq	-16(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	report_file_errno
.LBB38_5:                               # %if.end
	movabsq	$fclose_unwind, %rsi
	movq	-192(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	set_unwind_protect_ptr
	xorl	%edi, %edi
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$786440, %ecx           # imm = 0xC0008
	movl	%ecx, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	record_xmalloc
	xorl	%esi, %esi
	movl	$786440, %ecx           # imm = 0xC0008
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
	movl	$0, -60(%rbp)
.LBB38_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-213(%rbp), %rsi
	leaq	-214(%rbp), %rdx
	movb	$0, -213(%rbp)
	movb	$0, -214(%rbp)
	movq	-40(%rbp), %rdi
	callq	read_hex
	movl	%eax, -200(%rbp)
	testb	$1, -213(%rbp)
	je	.LBB38_8
# BB#7:                                 # %if.then.37
	jmp	.LBB38_25
.LBB38_8:                               # %if.end.38
                                        #   in Loop: Header=BB38_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	_IO_getc
	cmpl	$45, %eax
	jne	.LBB38_10
# BB#9:                                 # %if.then.41
                                        #   in Loop: Header=BB38_6 Depth=1
	leaq	-213(%rbp), %rsi
	leaq	-214(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	read_hex
	movl	%eax, -204(%rbp)
	jmp	.LBB38_11
.LBB38_10:                              # %if.else
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-200(%rbp), %eax
	movl	%eax, -204(%rbp)
.LBB38_11:                              # %if.end.43
                                        #   in Loop: Header=BB38_6 Depth=1
	testb	$1, -213(%rbp)
	je	.LBB38_13
# BB#12:                                # %if.then.45
	jmp	.LBB38_25
.LBB38_13:                              # %if.end.46
                                        #   in Loop: Header=BB38_6 Depth=1
	leaq	-213(%rbp), %rsi
	leaq	-214(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	read_hex
	movl	%eax, -208(%rbp)
	testb	$1, -213(%rbp)
	je	.LBB38_15
# BB#14:                                # %if.then.49
	jmp	.LBB38_25
.LBB38_15:                              # %if.end.50
                                        #   in Loop: Header=BB38_6 Depth=1
	testb	$1, -214(%rbp)
	je	.LBB38_17
# BB#16:                                # %if.then.52
                                        #   in Loop: Header=BB38_6 Depth=1
	jmp	.LBB38_6
.LBB38_17:                              # %if.end.53
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-200(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.LBB38_21
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-204(%rbp), %eax
	cmpl	-28(%rbp), %eax
	ja	.LBB38_21
# BB#19:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-200(%rbp), %eax
	cmpl	-204(%rbp), %eax
	ja	.LBB38_21
# BB#20:                                # %lor.lhs.false.58
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpl	$4194303, -208(%rbp)    # imm = 0x3FFFFF
	jbe	.LBB38_22
.LBB38_21:                              # %if.then.60
                                        #   in Loop: Header=BB38_6 Depth=1
	jmp	.LBB38_6
.LBB38_22:                              # %if.end.61
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpl	$65536, -60(%rbp)       # imm = 0x10000
	jne	.LBB38_24
# BB#23:                                # %if.then.63
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	$786440, %eax           # imm = 0xC0008
	movl	%eax, %edi
	callq	record_xmalloc
	xorl	%esi, %esi
	movl	$786440, %ecx           # imm = 0xC0008
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi
	movq	%rax, 786432(%rdi)
	movq	-56(%rbp), %rax
	movq	786432(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
	movl	$0, -60(%rbp)
.LBB38_24:                              # %if.end.66
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-200(%rbp), %eax
	movslq	-212(%rbp), %rcx
	movq	-56(%rbp), %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-204(%rbp), %eax
	movslq	-212(%rbp), %rcx
	movq	-56(%rbp), %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, 4(%rdx)
	movl	-208(%rbp), %eax
	movslq	-212(%rbp), %rcx
	movq	-56(%rbp), %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, 8(%rdx)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB38_6
.LBB38_25:                              # %while.end
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-192(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	clear_unwind_protect
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	load_charset_map
	xorl	%edi, %edi
	movq	-192(%rbp), %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -304(%rbp)        # 8-byte Spill
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end38:
	.size	load_charset_map_from_file, .Lfunc_end38-load_charset_map_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	load_charset_map_from_vector,@function
load_charset_map_from_vector:           # @load_charset_map_from_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	108(%rsi), %edx
	movl	%edx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	112(%rsi), %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %edx
	movl	%edx, -56(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movl	$2, %edx
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movl	-56(%rbp), %eax
	movl	%edx, -128(%rbp)        # 4-byte Spill
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.29, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	add_to_log
	jmp	.LBB39_27
.LBB39_2:                               # %if.end
	movl	$786440, %eax           # imm = 0xC0008
	movl	%eax, %ecx
	cmpq	-72(%rbp), %rcx
	ja	.LBB39_4
# BB#3:                                 # %cond.true
	movq	-72(%rbp), %rax
	addq	$-786440, %rax          # imm = 0xFFFFFFFFFFF3FFF8
	movq	%rax, -72(%rbp)
	movq	%rsp, %rax
	addq	$-786448, %rax          # imm = 0xFFFFFFFFFFF3FFF0
	movq	%rax, %rsp
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB39_5
.LBB39_4:                               # %cond.false
	movl	$786440, %eax           # imm = 0xC0008
	movl	%eax, %edi
	movb	$1, -81(%rbp)
	callq	record_xmalloc
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB39_5:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movl	$786440, %ecx           # imm = 0xC0008
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
	movl	$0, -52(%rbp)
	movl	$0, -60(%rbp)
.LBB39_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB39_23
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	AREF
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB39_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	jmp	.LBB39_10
.LBB39_9:                               # %if.else
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movl	%ecx, -108(%rbp)
.LBB39_10:                              # %if.end.23
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -120(%rbp)
	movl	-108(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	jb	.LBB39_14
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	-112(%rbp), %eax
	cmpl	-28(%rbp), %eax
	ja	.LBB39_14
# BB#12:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	ja	.LBB39_14
# BB#13:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB39_6 Depth=1
	cmpq	$4194303, -120(%rbp)    # imm = 0x3FFFFF
	jle	.LBB39_15
.LBB39_14:                              # %if.then.37
                                        #   in Loop: Header=BB39_6 Depth=1
	jmp	.LBB39_22
.LBB39_15:                              # %if.end.38
                                        #   in Loop: Header=BB39_6 Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB39_21
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	-52(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB39_21
# BB#17:                                # %if.then.44
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	$786440, %eax           # imm = 0xC0008
	movl	%eax, %ecx
	cmpq	-72(%rbp), %rcx
	ja	.LBB39_19
# BB#18:                                # %cond.true.47
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-72(%rbp), %rax
	addq	$-786440, %rax          # imm = 0xFFFFFFFFFFF3FFF8
	movq	%rax, -72(%rbp)
	movq	%rsp, %rax
	addq	$-786448, %rax          # imm = 0xFFFFFFFFFFF3FFF0
	movq	%rax, %rsp
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_20
.LBB39_19:                              # %cond.false.49
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	$786440, %eax           # imm = 0xC0008
	movl	%eax, %edi
	movb	$1, -81(%rbp)
	callq	record_xmalloc
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB39_20:                              # %cond.end.51
                                        #   in Loop: Header=BB39_6 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movl	$786440, %ecx           # imm = 0xC0008
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movq	%rax, 786432(%rdi)
	movq	-48(%rbp), %rax
	movq	786432(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
.LBB39_21:                              # %if.end.54
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	-52(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-156(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -124(%rbp)
	movl	-108(%rbp), %edx
	movslq	-124(%rbp), %rsi
	movq	-48(%rbp), %rdi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdi
	movl	%edx, (%rdi)
	movl	-112(%rbp), %edx
	movslq	-124(%rbp), %rsi
	movq	-48(%rbp), %rdi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdi
	movl	%edx, 4(%rdi)
	movq	-120(%rbp), %rsi
	movl	%esi, %edx
	movslq	-124(%rbp), %rsi
	movq	-48(%rbp), %rdi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdi
	movl	%edx, 8(%rdi)
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
.LBB39_22:                              # %for.inc
                                        #   in Loop: Header=BB39_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB39_6
.LBB39_23:                              # %for.end
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	load_charset_map
# BB#24:                                # %do.body
	testb	$1, -81(%rbp)
	je	.LBB39_26
# BB#25:                                # %if.then.68
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB39_26:                              # %if.end.71
	jmp	.LBB39_27
.LBB39_27:                              # %do.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	load_charset_map_from_vector, .Lfunc_end39-load_charset_map_from_vector
	.cfi_endproc

	.align	16, 0x90
	.type	read_hex,@function
read_hex:                               # @read_hex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_4 Depth 2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB40_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$35, -36(%rbp)
	jne	.LBB40_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_4
.LBB40_4:                               # %while.cond.2
                                        #   Parent Loop BB40_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -41(%rbp)          # 1-byte Spill
	je	.LBB40_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB40_4 Depth=2
	cmpl	$10, -36(%rbp)
	setne	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB40_6:                               # %land.end
                                        #   in Loop: Header=BB40_4 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_7
	jmp	.LBB40_8
.LBB40_7:                               # %while.body.6
                                        #   in Loop: Header=BB40_4 Depth=2
	jmp	.LBB40_4
.LBB40_8:                               # %while.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_15
.LBB40_9:                               # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$48, -36(%rbp)
	jne	.LBB40_14
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB40_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$120, -36(%rbp)
	jne	.LBB40_13
.LBB40_12:                              # %if.then.12
	jmp	.LBB40_16
.LBB40_13:                              # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_14
.LBB40_14:                              # %if.end.13
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_15
.LBB40_15:                              # %if.end.14
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_1
.LBB40_16:                              # %while.end.15
	cmpl	$-1, -36(%rbp)
	jne	.LBB40_18
# BB#17:                                # %if.then.17
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB40_32
.LBB40_18:                              # %if.end.18
	movl	$0, -40(%rbp)
.LBB40_19:                              # %while.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	movl	%eax, %edi
	callq	c_isxdigit
	testb	$1, %al
	jne	.LBB40_20
	jmp	.LBB40_29
.LBB40_20:                              # %while.body.22
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	$268435455, %eax        # imm = 0xFFFFFFF
	cmpl	-40(%rbp), %eax
	jae	.LBB40_22
# BB#21:                                # %if.then.24
                                        #   in Loop: Header=BB40_19 Depth=1
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
.LBB40_22:                              # %if.end.25
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	$48, %eax
	movl	-40(%rbp), %ecx
	shll	$4, %ecx
	movl	-36(%rbp), %edx
	cmpl	-36(%rbp), %eax
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jg	.LBB40_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB40_19 Depth=1
	cmpl	$57, -36(%rbp)
	jg	.LBB40_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	$48, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB40_28
.LBB40_25:                              # %cond.false
                                        #   in Loop: Header=BB40_19 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$65, %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jg	.LBB40_27
# BB#26:                                # %land.rhs.29
                                        #   in Loop: Header=BB40_19 Depth=1
	cmpl	$70, -36(%rbp)
	setle	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB40_27:                              # %land.end.31
                                        #   in Loop: Header=BB40_19 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$87, %ecx
	movl	$55, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB40_28:                              # %cond.end
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	-52(%rbp), %eax         # 4-byte Reload
	orl	%ecx, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB40_19
.LBB40_29:                              # %while.end.33
	cmpl	$-1, -36(%rbp)
	je	.LBB40_31
# BB#30:                                # %if.then.35
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB40_31:                              # %if.end.37
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB40_32:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	read_hex, .Lfunc_end40-read_hex
	.cfi_endproc

	.align	16, 0x90
	.type	load_charset_map,@function
load_charset_map:                       # @load_charset_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	112(%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movb	88(%rsi), %al
	shrb	$2, %al
	andb	$1, %al
	andb	$1, %al
	movb	%al, -45(%rbp)
	movq	-8(%rbp), %rsi
	addq	$132, %rsi
	movq	%rsi, -72(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.LBB41_2
# BB#1:                                 # %if.then
	jmp	.LBB41_151
.LBB41_2:                               # %if.end
	cmpl	$0, -24(%rbp)
	je	.LBB41_27
# BB#3:                                 # %if.then.4
	testb	$1, globals+3393
	jne	.LBB41_20
# BB#4:                                 # %if.then.6
	cmpl	$1, -24(%rbp)
	jne	.LBB41_18
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB41_16
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB41_8
# BB#7:                                 # %cond.true
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB41_15
.LBB41_8:                               # %cond.false
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB41_13
# BB#9:                                 # %land.lhs.true
	movl	-44(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB41_13
# BB#10:                                # %land.lhs.true.23
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB41_13
# BB#11:                                # %land.lhs.true.32
	movl	-44(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB41_13
# BB#12:                                # %cond.true.40
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-44(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-44(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-44(%rbp), %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB41_14
.LBB41_13:                              # %cond.false.69
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB41_14
.LBB41_14:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB41_15:                              # %cond.end.70
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	$-2, %rsi
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	movslq	-76(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	Fmake_vector
	movl	$4, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	set_charset_attr
	jmp	.LBB41_17
.LBB41_16:                              # %if.else
	xorl	%edi, %edi
	movq	Vchar_unify_table, %rax
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	124(%rcx), %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	char_table_set_range
.LBB41_17:                              # %if.end.78
	jmp	.LBB41_19
.LBB41_18:                              # %if.else.79
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movl	$9, %ecx
	movl	$5, %edx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	cmpl	$1, 104(%rax)
	cmovel	%edx, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	callq	set_charset_attr
.LBB41_19:                              # %if.end.87
	jmp	.LBB41_26
.LBB41_20:                              # %if.else.88
	cmpq	$0, temp_charset_work
	jne	.LBB41_22
# BB#21:                                # %if.then.90
	movl	$262168, %eax           # imm = 0x40018
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, temp_charset_work
.LBB41_22:                              # %if.end.92
	cmpl	$1, -24(%rbp)
	jne	.LBB41_24
# BB#23:                                # %if.then.95
	movl	$255, %esi
	movl	$262144, %eax           # imm = 0x40000
	movl	%eax, %edx
	movq	temp_charset_work, %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	memset
	jmp	.LBB41_25
.LBB41_24:                              # %if.else.97
	xorl	%esi, %esi
	movl	$262144, %eax           # imm = 0x40000
	movl	%eax, %edx
	movq	temp_charset_work, %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	temp_charset_work, %rcx
	movl	$-1, 20(%rcx)
.LBB41_25:                              # %if.end.99
	movq	-8(%rbp), %rax
	movq	temp_charset_work, %rcx
	movq	%rax, (%rcx)
	cmpl	$2, -24(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movw	%si, %di
	movq	temp_charset_work, %rax
	movw	%di, 8(%rax)
	movl	-24(%rbp), %esi
	addl	$2, %esi
	movl	%esi, -24(%rbp)
.LBB41_26:                              # %if.end.104
	movb	$1, charset_map_loaded
.LBB41_27:                              # %if.end.105
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	%ecx, -52(%rbp)
	movl	$4194303, -60(%rbp)     # imm = 0x3FFFFF
	movl	$0, -64(%rbp)
.LBB41_28:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_64 Depth 2
                                        #     Child Loop BB41_69 Depth 2
                                        #     Child Loop BB41_78 Depth 2
                                        #     Child Loop BB41_88 Depth 2
                                        #     Child Loop BB41_97 Depth 2
                                        #     Child Loop BB41_103 Depth 2
                                        #     Child Loop BB41_129 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB41_143
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	-64(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-156(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -108(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.LBB41_32
# BB#30:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$0, -108(%rbp)
	jne	.LBB41_32
# BB#31:                                # %if.then.115
                                        #   in Loop: Header=BB41_28 Depth=1
	movq	-16(%rbp), %rax
	movq	786432(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB41_32:                              # %if.end.116
                                        #   in Loop: Header=BB41_28 Depth=1
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movl	8(%rcx), %edx
	movl	%edx, -100(%rbp)
	movq	-8(%rbp), %rax
	movb	88(%rax), %sil
	andb	$1, %sil
	testb	$1, %sil
	je	.LBB41_34
# BB#33:                                # %cond.true.134
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB41_41
.LBB41_34:                              # %cond.false.137
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB41_39
# BB#35:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB41_39
# BB#36:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB41_39
# BB#37:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB41_39
# BB#38:                                # %cond.true.171
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-80(%rbp), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-80(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-80(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-80(%rbp), %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB41_40
.LBB41_39:                              # %cond.false.204
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB41_40
.LBB41_40:                              # %cond.end.205
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB41_41:                              # %cond.end.207
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB41_43
# BB#42:                                # %if.then.211
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB41_53
.LBB41_43:                              # %if.else.212
                                        #   in Loop: Header=BB41_28 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB41_45
# BB#44:                                # %cond.true.218
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	108(%rcx), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB41_52
.LBB41_45:                              # %cond.false.221
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB41_50
# BB#46:                                # %land.lhs.true.229
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB41_50
# BB#47:                                # %land.lhs.true.238
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB41_50
# BB#48:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB41_50
# BB#49:                                # %cond.true.255
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-84(%rbp), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	subl	68(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	64(%rcx), %eax
	movl	-84(%rbp), %edx
	shrl	$16, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	52(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	%edx, %eax
	movl	-84(%rbp), %edx
	shrl	$8, %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	32(%rcx), %edx
	addl	%edx, %eax
	movl	-84(%rbp), %edx
	andl	$255, %edx
	movq	-8(%rbp), %rcx
	subl	20(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	subl	116(%rcx), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB41_51
.LBB41_50:                              # %cond.false.288
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB41_51
.LBB41_51:                              # %cond.end.289
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB41_52:                              # %cond.end.291
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	movl	-100(%rbp), %eax
	movl	-92(%rbp), %ecx
	subl	-88(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
.LBB41_53:                              # %if.end.295
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$0, -88(%rbp)
	jl	.LBB41_55
# BB#54:                                # %lor.lhs.false
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$0, -92(%rbp)
	jge	.LBB41_56
.LBB41_55:                              # %if.then.300
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_142
.LBB41_56:                              # %if.end.301
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB41_58
# BB#57:                                # %if.then.305
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB41_61
.LBB41_58:                              # %if.else.306
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB41_60
# BB#59:                                # %if.then.309
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB41_60:                              # %if.end.310
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_61
.LBB41_61:                              # %if.end.311
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$1, -24(%rbp)
	jne	.LBB41_74
# BB#62:                                # %if.then.314
                                        #   in Loop: Header=BB41_28 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB41_68
# BB#63:                                # %if.then.318
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_64
.LBB41_64:                              # %for.cond.319
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_67
# BB#65:                                # %for.body.322
                                        #   in Loop: Header=BB41_64 Depth=2
	movq	-32(%rbp), %rdi
	movslq	-88(%rbp), %rsi
	movslq	-100(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#66:                                # %for.inc
                                        #   in Loop: Header=BB41_64 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_64
.LBB41_67:                              # %for.end
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_73
.LBB41_68:                              # %if.else.328
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_69
.LBB41_69:                              # %for.cond.329
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_72
# BB#70:                                # %for.body.332
                                        #   in Loop: Header=BB41_69 Depth=2
	movq	Vchar_unify_table, %rdi
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	addl	-88(%rbp), %ecx
	movslq	-100(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movl	%ecx, %esi
	movq	%rax, %rdx
	callq	CHAR_TABLE_SET
# BB#71:                                # %for.inc.337
                                        #   in Loop: Header=BB41_69 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_69
.LBB41_72:                              # %for.end.340
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_73
.LBB41_73:                              # %if.end.341
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_141
.LBB41_74:                              # %if.else.342
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$2, -24(%rbp)
	jne	.LBB41_95
# BB#75:                                # %if.then.345
                                        #   in Loop: Header=BB41_28 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB41_87
# BB#76:                                # %land.lhs.true.349
                                        #   in Loop: Header=BB41_28 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB41_87
# BB#77:                                # %if.then.355
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_78
.LBB41_78:                              # %for.cond.356
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_86
# BB#79:                                # %for.body.359
                                        #   in Loop: Header=BB41_78 Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-8(%rbp), %rcx
	movb	88(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB41_81
# BB#80:                                # %cond.true.365
                                        #   in Loop: Header=BB41_78 Depth=2
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB41_82
.LBB41_81:                              # %cond.false.368
                                        #   in Loop: Header=BB41_78 Depth=2
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	divl	28(%rdi)
	addl	%edx, %ecx
	movq	-8(%rbp), %r8
	movl	36(%r8), %edx
	movl	-112(%rbp), %esi
	movq	-8(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	32(%r8)
	movq	-8(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	44(%r8)
	movl	-188(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$8, %esi
	orl	%esi, %ecx
	movq	-8(%rbp), %r8
	movl	52(%r8), %edx
	movl	-112(%rbp), %esi
	movq	-8(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -192(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	48(%r8)
	movq	-8(%rbp), %r8
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	60(%r8)
	movl	-192(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	shll	$16, %esi
	orl	%esi, %ecx
	movq	-8(%rbp), %r8
	movl	68(%r8), %edx
	movl	-112(%rbp), %esi
	movq	-8(%rbp), %r8
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	divl	64(%r8)
	movl	-196(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	shll	$24, %esi
	orl	%esi, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB41_82:                              # %cond.end.405
                                        #   in Loop: Header=BB41_78 Depth=2
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_84
# BB#83:                                # %if.then.411
                                        #   in Loop: Header=BB41_78 Depth=2
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-112(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	CHAR_TABLE_SET
.LBB41_84:                              # %if.end.415
                                        #   in Loop: Header=BB41_78 Depth=2
	jmp	.LBB41_85
.LBB41_85:                              # %for.inc.416
                                        #   in Loop: Header=BB41_78 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_78
.LBB41_86:                              # %for.end.419
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_94
.LBB41_87:                              # %if.else.420
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_88
.LBB41_88:                              # %for.cond.421
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_93
# BB#89:                                # %for.body.424
                                        #   in Loop: Header=BB41_88 Depth=2
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_91
# BB#90:                                # %if.then.429
                                        #   in Loop: Header=BB41_88 Depth=2
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	CHAR_TABLE_SET
.LBB41_91:                              # %if.end.433
                                        #   in Loop: Header=BB41_88 Depth=2
	jmp	.LBB41_92
.LBB41_92:                              # %for.inc.434
                                        #   in Loop: Header=BB41_88 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_88
.LBB41_93:                              # %for.end.437
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_94
.LBB41_94:                              # %if.end.438
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_140
.LBB41_95:                              # %if.else.439
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$3, -24(%rbp)
	jne	.LBB41_101
# BB#96:                                # %if.then.442
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_97
.LBB41_97:                              # %for.cond.443
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_100
# BB#98:                                # %for.body.446
                                        #   in Loop: Header=BB41_97 Depth=2
	movl	-100(%rbp), %eax
	movslq	-88(%rbp), %rcx
	movq	temp_charset_work, %rdx
	movl	%eax, 24(%rdx,%rcx,4)
# BB#99:                                # %for.inc.451
                                        #   in Loop: Header=BB41_97 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_97
.LBB41_100:                             # %for.end.454
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_139
.LBB41_101:                             # %if.else.455
                                        #   in Loop: Header=BB41_28 Depth=1
	cmpl	$4, -24(%rbp)
	jne	.LBB41_115
# BB#102:                               # %if.then.458
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_103
.LBB41_103:                             # %for.cond.459
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB41_114
# BB#104:                               # %for.body.462
                                        #   in Loop: Header=BB41_103 Depth=2
	jmp	.LBB41_105
.LBB41_105:                             # %do.body
                                        #   in Loop: Header=BB41_103 Depth=2
	cmpl	$0, -88(%rbp)
	jne	.LBB41_107
# BB#106:                               # %if.then.465
                                        #   in Loop: Header=BB41_103 Depth=2
	movl	-100(%rbp), %eax
	movq	temp_charset_work, %rcx
	movl	%eax, 20(%rcx)
	jmp	.LBB41_111
.LBB41_107:                             # %if.else.467
                                        #   in Loop: Header=BB41_103 Depth=2
	cmpl	$131072, -100(%rbp)     # imm = 0x20000
	jge	.LBB41_109
# BB#108:                               # %if.then.470
                                        #   in Loop: Header=BB41_103 Depth=2
	movl	-88(%rbp), %eax
	movw	%ax, %cx
	movslq	-100(%rbp), %rdx
	movq	temp_charset_work, %rsi
	movw	%cx, 24(%rsi,%rdx,2)
	jmp	.LBB41_110
.LBB41_109:                             # %if.else.476
                                        #   in Loop: Header=BB41_103 Depth=2
	movl	-88(%rbp), %eax
	movw	%ax, %cx
	movl	-100(%rbp), %eax
	subl	$65536, %eax            # imm = 0x10000
	movslq	%eax, %rdx
	movq	temp_charset_work, %rsi
	movw	%cx, 24(%rsi,%rdx,2)
.LBB41_110:                             # %if.end.483
                                        #   in Loop: Header=BB41_103 Depth=2
	jmp	.LBB41_111
.LBB41_111:                             # %if.end.484
                                        #   in Loop: Header=BB41_103 Depth=2
	jmp	.LBB41_112
.LBB41_112:                             # %do.end
                                        #   in Loop: Header=BB41_103 Depth=2
	jmp	.LBB41_113
.LBB41_113:                             # %for.inc.485
                                        #   in Loop: Header=BB41_103 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_103
.LBB41_114:                             # %for.end.488
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_138
.LBB41_115:                             # %if.else.489
                                        #   in Loop: Header=BB41_28 Depth=1
	testb	$1, -45(%rbp)
	je	.LBB41_128
# BB#116:                               # %if.then.491
                                        #   in Loop: Header=BB41_28 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB41_117
	jmp	.LBB41_118
.LBB41_117:                             # %cond.true.492
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB41_122
	jmp	.LBB41_119
.LBB41_118:                             # %cond.false.496
                                        #   in Loop: Header=BB41_28 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB41_122
.LBB41_119:                             # %if.then.501
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB41_121
# BB#120:                               # %if.then.504
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB41_121:                             # %if.end.505
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_127
.LBB41_122:                             # %if.else.506
                                        #   in Loop: Header=BB41_28 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB41_123
	jmp	.LBB41_124
.LBB41_123:                             # %cond.true.507
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-104(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB41_126
	jmp	.LBB41_125
.LBB41_124:                             # %cond.false.511
                                        #   in Loop: Header=BB41_28 Depth=1
	movslq	-104(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB41_126
.LBB41_125:                             # %if.then.516
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	$128, -60(%rbp)
.LBB41_126:                             # %if.end.517
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_127
.LBB41_127:                             # %if.end.518
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_128
.LBB41_128:                             # %if.end.519
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_129
.LBB41_129:                             # %for.cond.520
                                        #   Parent Loop BB41_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB41_137
# BB#130:                               # %for.body.523
                                        #   in Loop: Header=BB41_129 Depth=2
	jmp	.LBB41_131
.LBB41_131:                             # %do.body.524
                                        #   in Loop: Header=BB41_129 Depth=2
	cmpl	$65536, -100(%rbp)      # imm = 0x10000
	jge	.LBB41_133
# BB#132:                               # %if.then.527
                                        #   in Loop: Header=BB41_129 Depth=2
	movl	$1, %eax
	movl	-100(%rbp), %ecx
	sarl	$7, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-100(%rbp), %edx
	sarl	$10, %edx
	movslq	%edx, %rsi
	movq	-72(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB41_134
.LBB41_133:                             # %if.else.537
                                        #   in Loop: Header=BB41_129 Depth=2
	movl	$1, %eax
	movl	-100(%rbp), %ecx
	sarl	$12, %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-100(%rbp), %edx
	sarl	$15, %edx
	addl	$62, %edx
	movslq	%edx, %rsi
	movq	-72(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
.LBB41_134:                             # %if.end.548
                                        #   in Loop: Header=BB41_129 Depth=2
	jmp	.LBB41_135
.LBB41_135:                             # %do.end.549
                                        #   in Loop: Header=BB41_129 Depth=2
	jmp	.LBB41_136
.LBB41_136:                             # %for.inc.550
                                        #   in Loop: Header=BB41_129 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB41_129
.LBB41_137:                             # %for.end.552
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_138
.LBB41_138:                             # %if.end.553
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_139
.LBB41_139:                             # %if.end.554
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_140
.LBB41_140:                             # %if.end.555
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_141
.LBB41_141:                             # %if.end.556
                                        #   in Loop: Header=BB41_28 Depth=1
	jmp	.LBB41_142
.LBB41_142:                             # %for.inc.557
                                        #   in Loop: Header=BB41_28 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB41_28
.LBB41_143:                             # %for.end.559
	cmpl	$0, -24(%rbp)
	jne	.LBB41_148
# BB#144:                               # %if.then.562
	testb	$1, -45(%rbp)
	je	.LBB41_146
# BB#145:                               # %cond.true.565
	movl	-60(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB41_147
.LBB41_146:                             # %cond.false.566
	movl	-52(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB41_147:                             # %cond.end.567
	movl	-220(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
	jmp	.LBB41_151
.LBB41_148:                             # %if.else.571
	cmpl	$4, -24(%rbp)
	jne	.LBB41_150
# BB#149:                               # %if.then.574
	movl	-52(%rbp), %eax
	movq	temp_charset_work, %rcx
	movl	%eax, 12(%rcx)
	movl	-56(%rbp), %eax
	movq	temp_charset_work, %rcx
	movl	%eax, 16(%rcx)
.LBB41_150:                             # %if.end.577
	jmp	.LBB41_151
.LBB41_151:                             # %if.end.578
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	load_charset_map, .Lfunc_end41-load_charset_map
	.cfi_endproc

	.type	Vcharset_hash_table,@object # @Vcharset_hash_table
	.comm	Vcharset_hash_table,8,8
	.type	charset_table,@object   # @charset_table
	.comm	charset_table,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"define-charset-internal"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Attribute :invalid-code must be specified"
	.size	.L.str.1, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid iso-final-char: %ld"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid emacs-mule-id: %ld"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unsupported max char: %d"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"None of :code-offset, :map, :parents are specified"
	.size	.L.str.5, 51

	.type	charset_table_used,@object # @charset_table_used
	.local	charset_table_used
	.comm	charset_table_used,4,4
	.type	charset_table_size,@object # @charset_table_size
	.local	charset_table_size
	.comm	charset_table_size,8,8
	.type	iso_charset_table,@object # @iso_charset_table
	.comm	iso_charset_table,3072,16
	.type	Viso_2022_charset_list,@object # @Viso_2022_charset_list
	.comm	Viso_2022_charset_list,8,8
	.type	charset_jisx0201_roman,@object # @charset_jisx0201_roman
	.comm	charset_jisx0201_roman,4,4
	.type	charset_jisx0208_1978,@object # @charset_jisx0208_1978
	.comm	charset_jisx0208_1978,4,4
	.type	charset_jisx0208,@object # @charset_jisx0208
	.comm	charset_jisx0208,4,4
	.type	charset_ksc5601,@object # @charset_ksc5601
	.comm	charset_ksc5601,4,4
	.type	emacs_mule_charset,@object # @emacs_mule_charset
	.comm	emacs_mule_charset,1024,16
	.type	Vemacs_mule_charset_list,@object # @Vemacs_mule_charset_list
	.comm	Vemacs_mule_charset_list,8,8
	.type	Vcharset_ordered_list,@object # @Vcharset_ordered_list
	.comm	Vcharset_ordered_list,8,8
	.type	charset_ordered_list_tick,@object # @charset_ordered_list_tick
	.comm	charset_ordered_list_tick,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Can't unify charset: %s"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bad unify-map"
	.size	.L.str.7, 14

	.type	temp_charset_work,@object # @temp_charset_work
	.local	temp_charset_work
	.comm	temp_charset_work,8,8
	.type	charset_work,@object    # @charset_work
	.comm	charset_work,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Invalid code(s)"
	.size	.L.str.8, 16

	.type	Vcharset_non_preferred_head,@object # @Vcharset_non_preferred_head
	.comm	Vcharset_non_preferred_head,8,8
	.type	charset_unicode,@object # @charset_unicode
	.comm	charset_unicode,4,4
	.type	charset_emacs,@object   # @charset_emacs
	.local	charset_emacs
	.comm	charset_emacs,4,4
	.type	charset_eight_bit,@object # @charset_eight_bit
	.comm	charset_eight_bit,4,4
	.type	charset_ascii,@object   # @charset_ascii
	.comm	charset_ascii,4,4
	.type	charset_unibyte,@object # @charset_unibyte
	.comm	charset_unibyte,4,4
	.type	charset_iso_8859_1,@object # @charset_iso_8859_1
	.local	charset_iso_8859_1
	.comm	charset_iso_8859_1,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"charsets"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Error: charsets directory not found:\n%s\nEmacs will not function correctly without the character map files.\n%sPlease check your installation!\n"
	.size	.L.str.10, 142

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"EMACSDATA"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The EMACSDATA environment variable is set, maybe it has the wrong value?\n"
	.size	.L.str.12, 74

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.zero	1
	.size	.L.str.13, 1

	.type	charset_table_init,@object # @charset_table_init
	.local	charset_table_init
	.comm	charset_table_init,59040,16
	.type	Sclear_charset_maps,@object # @Sclear_charset_maps
	.data
	.align	8
Sclear_charset_maps:
	.quad	167772160               # 0xa000000
	.quad	Fclear_charset_maps
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.size	Sclear_charset_maps, 48

	.type	syms_of_charset.o_fwd,@object # @syms_of_charset.o_fwd
	.local	syms_of_charset.o_fwd
	.comm	syms_of_charset.o_fwd,16,8
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"charset-map-path"
	.size	.L.str.14, 17

	.type	syms_of_charset.b_fwd,@object # @syms_of_charset.b_fwd
	.local	syms_of_charset.b_fwd
	.comm	syms_of_charset.b_fwd,16,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"inhibit-load-charset-map"
	.size	.L.str.15, 25

	.type	syms_of_charset.o_fwd.16,@object # @syms_of_charset.o_fwd.16
	.local	syms_of_charset.o_fwd.16
	.comm	syms_of_charset.o_fwd.16,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"charset-list"
	.size	.L.str.17, 13

	.type	syms_of_charset.o_fwd.18,@object # @syms_of_charset.o_fwd.18
	.local	syms_of_charset.o_fwd.18
	.comm	syms_of_charset.o_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"current-iso639-language"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.20:
	.asciz	"\000\177\000\000\000\000\000"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\000\377\000\000\000\000\000"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\000\377\000\377\000\020\000"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\000\377\000\377\000?\000"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\200\377\000\000\000\000\000"
	.size	.L.str.24, 8

	.type	charset_map_loaded,@object # @charset_map_loaded
	.comm	charset_map_loaded,1,1
	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	".map"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	".txt"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"r"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Loading charset map"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Failure in loading charset map: %V"
	.size	.L.str.29, 35

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Invalid DIMENSION %ld, it should be 1, 2, or 3"
	.size	.L.str.30, 47

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Invalid CHARS %ld, it should be 94 or 96"
	.size	.L.str.31, 41

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Invalid FINAL-CHAR '%c', it should be '0'..'~'"
	.size	.L.str.32, 47

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"charsetp"
	.size	.L.str.33, 9

	.type	Scharsetp,@object       # @Scharsetp
	.data
	.align	8
Scharsetp:
	.quad	167772160               # 0xa000000
	.quad	Fcharsetp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.size	Scharsetp, 48

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"map-charset-chars"
	.size	.L.str.34, 18

	.type	Smap_charset_chars,@object # @Smap_charset_chars
	.data
	.align	8
Smap_charset_chars:
	.quad	167772160               # 0xa000000
	.quad	Fmap_charset_chars
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.34
	.quad	0
	.quad	0
	.size	Smap_charset_chars, 48

	.type	Sdefine_charset_internal,@object # @Sdefine_charset_internal
	.align	8
Sdefine_charset_internal:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_charset_internal
	.short	17                      # 0x11
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.size	Sdefine_charset_internal, 48

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"define-charset-alias"
	.size	.L.str.35, 21

	.type	Sdefine_charset_alias,@object # @Sdefine_charset_alias
	.data
	.align	8
Sdefine_charset_alias:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_charset_alias
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.35
	.quad	0
	.quad	0
	.size	Sdefine_charset_alias, 48

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"charset-plist"
	.size	.L.str.36, 14

	.type	Scharset_plist,@object  # @Scharset_plist
	.data
	.align	8
Scharset_plist:
	.quad	167772160               # 0xa000000
	.quad	Fcharset_plist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	0
	.quad	0
	.size	Scharset_plist, 48

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"set-charset-plist"
	.size	.L.str.37, 18

	.type	Sset_charset_plist,@object # @Sset_charset_plist
	.data
	.align	8
Sset_charset_plist:
	.quad	167772160               # 0xa000000
	.quad	Fset_charset_plist
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.37
	.quad	0
	.quad	0
	.size	Sset_charset_plist, 48

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"unify-charset"
	.size	.L.str.38, 14

	.type	Sunify_charset,@object  # @Sunify_charset
	.data
	.align	8
Sunify_charset:
	.quad	167772160               # 0xa000000
	.quad	Funify_charset
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.38
	.quad	0
	.quad	0
	.size	Sunify_charset, 48

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"get-unused-iso-final-char"
	.size	.L.str.39, 26

	.type	Sget_unused_iso_final_char,@object # @Sget_unused_iso_final_char
	.data
	.align	8
Sget_unused_iso_final_char:
	.quad	167772160               # 0xa000000
	.quad	Fget_unused_iso_final_char
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.39
	.quad	0
	.quad	0
	.size	Sget_unused_iso_final_char, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"declare-equiv-charset"
	.size	.L.str.40, 22

	.type	Sdeclare_equiv_charset,@object # @Sdeclare_equiv_charset
	.data
	.align	8
Sdeclare_equiv_charset:
	.quad	167772160               # 0xa000000
	.quad	Fdeclare_equiv_charset
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.size	Sdeclare_equiv_charset, 48

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"find-charset-region"
	.size	.L.str.41, 20

	.type	Sfind_charset_region,@object # @Sfind_charset_region
	.data
	.align	8
Sfind_charset_region:
	.quad	167772160               # 0xa000000
	.quad	Ffind_charset_region
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.size	Sfind_charset_region, 48

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"find-charset-string"
	.size	.L.str.42, 20

	.type	Sfind_charset_string,@object # @Sfind_charset_string
	.data
	.align	8
Sfind_charset_string:
	.quad	167772160               # 0xa000000
	.quad	Ffind_charset_string
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.size	Sfind_charset_string, 48

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"decode-char"
	.size	.L.str.43, 12

	.type	Sdecode_char,@object    # @Sdecode_char
	.data
	.align	8
Sdecode_char:
	.quad	167772160               # 0xa000000
	.quad	Fdecode_char
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.43
	.quad	0
	.quad	0
	.size	Sdecode_char, 48

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"encode-char"
	.size	.L.str.44, 12

	.type	Sencode_char,@object    # @Sencode_char
	.data
	.align	8
Sencode_char:
	.quad	167772160               # 0xa000000
	.quad	Fencode_char
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.44
	.quad	0
	.quad	0
	.size	Sencode_char, 48

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"split-char"
	.size	.L.str.45, 11

	.type	Ssplit_char,@object     # @Ssplit_char
	.data
	.align	8
Ssplit_char:
	.quad	167772160               # 0xa000000
	.quad	Fsplit_char
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.45
	.quad	0
	.quad	0
	.size	Ssplit_char, 48

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"make-char"
	.size	.L.str.46, 10

	.type	Smake_char,@object      # @Smake_char
	.data
	.align	8
Smake_char:
	.quad	167772160               # 0xa000000
	.quad	Fmake_char
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.size	Smake_char, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"char-charset"
	.size	.L.str.47, 13

	.type	Schar_charset,@object   # @Schar_charset
	.data
	.align	8
Schar_charset:
	.quad	167772160               # 0xa000000
	.quad	Fchar_charset
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.47
	.quad	0
	.quad	0
	.size	Schar_charset, 48

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"charset-after"
	.size	.L.str.48, 14

	.type	Scharset_after,@object  # @Scharset_after
	.data
	.align	8
Scharset_after:
	.quad	167772160               # 0xa000000
	.quad	Fcharset_after
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	0
	.quad	0
	.size	Scharset_after, 48

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"iso-charset"
	.size	.L.str.49, 12

	.type	Siso_charset,@object    # @Siso_charset
	.data
	.align	8
Siso_charset:
	.quad	167772160               # 0xa000000
	.quad	Fiso_charset
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.size	Siso_charset, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"clear-charset-maps"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"charset-priority-list"
	.size	.L.str.51, 22

	.type	Scharset_priority_list,@object # @Scharset_priority_list
	.data
	.align	8
Scharset_priority_list:
	.quad	167772160               # 0xa000000
	.quad	Fcharset_priority_list
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.size	Scharset_priority_list, 48

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"set-charset-priority"
	.size	.L.str.52, 21

	.type	Sset_charset_priority,@object # @Sset_charset_priority
	.data
	.align	8
Sset_charset_priority:
	.quad	167772160               # 0xa000000
	.quad	Fset_charset_priority
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.52
	.quad	0
	.quad	0
	.size	Sset_charset_priority, 48

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"charset-id-internal"
	.size	.L.str.53, 20

	.type	Scharset_id_internal,@object # @Scharset_id_internal
	.data
	.align	8
Scharset_id_internal:
	.quad	167772160               # 0xa000000
	.quad	Fcharset_id_internal
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.53
	.quad	0
	.quad	0
	.size	Scharset_id_internal, 48

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"sort-charsets"
	.size	.L.str.54, 14

	.type	Ssort_charsets,@object  # @Ssort_charsets
	.data
	.align	8
Ssort_charsets:
	.quad	167772160               # 0xa000000
	.quad	Fsort_charsets
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.54
	.quad	0
	.quad	0
	.size	Ssort_charsets, 48

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	":dimension"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	":code-space"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	":iso-final-char"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	":emacs-mule-id"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	":code-offset"
	.size	.L.str.59, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
