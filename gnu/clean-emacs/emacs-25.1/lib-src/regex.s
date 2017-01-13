	.text
	.file	"regex.bc"
	.globl	re_set_syntax
	.align	16, 0x90
	.type	re_set_syntax,@function
re_set_syntax:                          # @re_set_syntax
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
	movq	%rdi, -8(%rbp)
	movq	re_syntax_options, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, re_syntax_options
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	re_set_syntax, .Lfunc_end0-re_set_syntax
	.cfi_endproc

	.globl	re_set_whitespace_regexp
	.align	16, 0x90
	.type	re_set_whitespace_regexp,@function
re_set_whitespace_regexp:               # @re_set_whitespace_regexp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, whitespace_regexp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	re_set_whitespace_regexp, .Lfunc_end1-re_set_whitespace_regexp
	.cfi_endproc

	.globl	re_wctype
	.align	16, 0x90
	.type	re_wctype,@function
re_wctype:                              # @re_wctype
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB2_35
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	movl	$2, -4(%rbp)
	jmp	.LBB2_35
.LBB2_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_6
# BB#5:                                 # %if.then.7
	movl	$3, -4(%rbp)
	jmp	.LBB2_35
.LBB2_6:                                # %if.else.8
	movq	-24(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	movl	$16, -4(%rbp)
	jmp	.LBB2_35
.LBB2_8:                                # %if.else.12
	movq	-24(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.15
	movl	$15, -4(%rbp)
	jmp	.LBB2_35
.LBB2_10:                               # %if.else.16
	movq	-24(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_12
# BB#11:                                # %if.then.19
	movl	$4, -4(%rbp)
	jmp	.LBB2_35
.LBB2_12:                               # %if.else.20
	movq	-24(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_14
# BB#13:                                # %if.then.23
	movl	$6, -4(%rbp)
	jmp	.LBB2_35
.LBB2_14:                               # %if.else.24
	movq	-24(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_16
# BB#15:                                # %if.then.27
	movl	$5, -4(%rbp)
	jmp	.LBB2_35
.LBB2_16:                               # %if.else.28
	movq	-24(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_18
# BB#17:                                # %if.then.31
	movl	$8, -4(%rbp)
	jmp	.LBB2_35
.LBB2_18:                               # %if.else.32
	movq	-24(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.35
	movl	$13, -4(%rbp)
	jmp	.LBB2_35
.LBB2_20:                               # %if.else.36
	movq	-24(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %if.then.39
	movl	$7, -4(%rbp)
	jmp	.LBB2_35
.LBB2_22:                               # %if.else.40
	movq	-24(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_24
# BB#23:                                # %if.then.43
	movl	$17, -4(%rbp)
	jmp	.LBB2_35
.LBB2_24:                               # %if.else.44
	movq	-24(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_26
# BB#25:                                # %if.then.47
	movl	$14, -4(%rbp)
	jmp	.LBB2_35
.LBB2_26:                               # %if.else.48
	movq	-24(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_28
# BB#27:                                # %if.then.51
	movl	$10, -4(%rbp)
	jmp	.LBB2_35
.LBB2_28:                               # %if.else.52
	movq	-24(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_30
# BB#29:                                # %if.then.55
	movl	$11, -4(%rbp)
	jmp	.LBB2_35
.LBB2_30:                               # %if.else.56
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_32
# BB#31:                                # %if.then.59
	movl	$9, -4(%rbp)
	jmp	.LBB2_35
.LBB2_32:                               # %if.else.60
	movq	-24(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_34
# BB#33:                                # %if.then.63
	movl	$12, -4(%rbp)
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.64
	movl	$0, -4(%rbp)
.LBB2_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	re_wctype, .Lfunc_end2-re_wctype
	.cfi_endproc

	.globl	re_iswctype
	.align	16, 0x90
	.type	re_iswctype,@function
re_iswctype:                            # @re_iswctype
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
	subq	$144, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$17, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB3_19
# BB#21:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movslq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_2:                                # %sw.bb.3
	movslq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_3:                                # %sw.bb.12
	movslq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_4:                                # %sw.bb.21
	movslq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_5:                                # %sw.bb.30
	movslq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_6:                                # %sw.bb.39
	movslq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$32768, %edx            # imm = 0x8000
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_7:                                # %sw.bb.48
	movslq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$512, %edx              # imm = 0x200
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_8:                                # %sw.bb.57
	movslq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$16384, %edx            # imm = 0x4000
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_9:                                # %sw.bb.66
	movslq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$4, %edx
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_10:                               # %sw.bb.75
	movslq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8192, %edx             # imm = 0x2000
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_11:                               # %sw.bb.84
	movslq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_12:                               # %sw.bb.93
	movslq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$4096, %edx             # imm = 0x1000
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_13:                               # %sw.bb.102
	cmpl	$128, -8(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_20
.LBB3_14:                               # %sw.bb.108
	cmpl	$128, -8(%rbp)
	setl	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %sw.bb.112
	movb	$1, -1(%rbp)
	jmp	.LBB3_20
.LBB3_16:                               # %sw.bb.113
	movb	$0, -1(%rbp)
	jmp	.LBB3_20
.LBB3_17:                               # %sw.bb.114
	movslq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movb	%dl, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB3_20
.LBB3_18:                               # %sw.bb.123
	movb	$0, -1(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %sw.default
	callq	abort
.LBB3_20:                               # %return
	movsbl	-1(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	re_iswctype, .Lfunc_end3-re_iswctype
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_18
	.quad	.LBB3_1
	.quad	.LBB3_2
	.quad	.LBB3_17
	.quad	.LBB3_6
	.quad	.LBB3_8
	.quad	.LBB3_7
	.quad	.LBB3_11
	.quad	.LBB3_9
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_12
	.quad	.LBB3_3
	.quad	.LBB3_10
	.quad	.LBB3_16
	.quad	.LBB3_14
	.quad	.LBB3_13
	.quad	.LBB3_15

	.text
	.globl	re_compile_fastmap
	.align	16, 0x90
	.type	re_compile_fastmap,@function
re_compile_fastmap:                     # @re_compile_fastmap
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
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	memset
	movq	-8(%rbp), %rdx
	movb	56(%rdx), %r8b
	andb	$-9, %r8b
	orb	$8, %r8b
	movb	%r8b, 56(%rdx)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %r9
	addq	16(%r9), %rdx
	movq	-16(%rbp), %r9
	movq	%rdx, %rsi
	movq	%r9, %rdx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	analyze_first
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	-8(%rbp), %rdx
	movb	%al, %r8b
	movb	56(%rdx), %r10b
	andb	$1, %r8b
	andb	$-2, %r10b
	orb	%r8b, %r10b
	movb	%r10b, 56(%rdx)
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	re_compile_fastmap, .Lfunc_end4-re_compile_fastmap
	.cfi_endproc

	.align	16, 0x90
	.type	analyze_first,@function
analyze_first:                          # @analyze_first
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movb	$0, -46(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_57
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$29, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	ja	.LBB5_55
# BB#59:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_3:                                # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB5_58
.LBB5_4:                                # %sw.bb.1
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %sw.bb.3
	cmpq	$0, -32(%rbp)
	je	.LBB5_9
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	$1, (%rdx,%rax)
	cmpl	$0, -36(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rdx
	movb	$1, (%rdx,%rax)
.LBB5_8:                                # %if.end
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.11
	jmp	.LBB5_56
.LBB5_10:                               # %sw.bb.12
	cmpq	$0, -32(%rbp)
	jne	.LBB5_12
# BB#11:                                # %if.then.14
	jmp	.LBB5_56
.LBB5_12:                               # %if.end.15
	movl	$-1, -4(%rbp)
	jmp	.LBB5_58
.LBB5_13:                               # %sw.bb.16
	cmpq	$0, -32(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.18
	jmp	.LBB5_56
.LBB5_15:                               # %if.end.19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	shll	$3, %ecx
	movl	%ecx, -40(%rbp)
.LBB5_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB5_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB5_16 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB5_16 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_16
.LBB5_19:                               # %for.end
	jmp	.LBB5_20
.LBB5_20:                               # %sw.bb.27
	cmpq	$0, -32(%rbp)
	jne	.LBB5_22
# BB#21:                                # %if.then.29
	jmp	.LBB5_56
.LBB5_22:                               # %if.end.30
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -45(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	shll	$3, %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB5_23:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jl	.LBB5_28
# BB#24:                                # %for.body.44
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movl	-40(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-40(%rbp), %r8d
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-84(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movsbl	-45(%rbp), %r8d
	xorl	%r8d, %edx
	cmpl	$0, %edx
	je	.LBB5_26
# BB#25:                                # %if.then.53
                                        #   in Loop: Header=BB5_23 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB5_26:                               # %if.end.56
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc.57
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_23
.LBB5_28:                               # %for.end.58
	jmp	.LBB5_56
.LBB5_29:                               # %sw.bb.59
	cmpq	$0, -32(%rbp)
	jne	.LBB5_31
# BB#30:                                # %if.then.61
	jmp	.LBB5_56
.LBB5_31:                               # %if.end.62
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$29, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -45(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$0, -40(%rbp)
.LBB5_32:                               # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB5_37
# BB#33:                                # %for.body.73
                                        #   in Loop: Header=BB5_32 Depth=1
	movslq	-40(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	cmpl	-44(%rbp), %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movsbl	-45(%rbp), %esi
	xorl	%esi, %ecx
	cmpl	$0, %ecx
	je	.LBB5_35
# BB#34:                                # %if.then.82
                                        #   in Loop: Header=BB5_32 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB5_35:                               # %if.end.85
                                        #   in Loop: Header=BB5_32 Depth=1
	jmp	.LBB5_36
.LBB5_36:                               # %for.inc.86
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_32
.LBB5_37:                               # %for.end.88
	jmp	.LBB5_56
.LBB5_38:                               # %sw.bb.89
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_39:                               # %sw.bb.90
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB5_41
# BB#40:                                # %if.then.93
	jmp	.LBB5_56
.LBB5_41:                               # %if.end.94
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax,%rcx), %esi
	addl	$-14, %esi
	subl	$4, %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	ja	.LBB5_43
	jmp	.LBB5_42
.LBB5_42:                               # %sw.bb.97
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_44
.LBB5_43:                               # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_44:                               # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_45
.LBB5_45:                               # %sw.bb.99
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rdi
	cmpq	-56(%rbp), %rdi
	ja	.LBB5_47
# BB#46:                                # %if.then.105
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_50
.LBB5_47:                               # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	analyze_first
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_49
# BB#48:                                # %if.then.108
	movl	-64(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_58
.LBB5_49:                               # %if.end.109
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB5_50:                               # %if.end.112
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_51:                               # %sw.bb.113
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_52:                               # %sw.bb.115
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_53:                               # %sw.bb.117
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_54:                               # %sw.bb.119
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_55:                               # %sw.default.121
	callq	abort
.LBB5_56:                               # %sw.epilog.122
	movl	$0, -4(%rbp)
	jmp	.LBB5_58
.LBB5_57:                               # %while.end
	movl	$1, -4(%rbp)
.LBB5_58:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	analyze_first, .Lfunc_end5-analyze_first
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_38
	.quad	.LBB5_3
	.quad	.LBB5_5
	.quad	.LBB5_10
	.quad	.LBB5_20
	.quad	.LBB5_13
	.quad	.LBB5_54
	.quad	.LBB5_54
	.quad	.LBB5_4
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_39
	.quad	.LBB5_45
	.quad	.LBB5_45
	.quad	.LBB5_45
	.quad	.LBB5_45
	.quad	.LBB5_45
	.quad	.LBB5_52
	.quad	.LBB5_51
	.quad	.LBB5_53
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_38
	.quad	.LBB5_29
	.quad	.LBB5_29

	.text
	.globl	re_set_registers
	.align	16, 0x90
	.type	re_set_registers,@function
re_set_registers:                       # @re_set_registers
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	orb	$2, %cl
	movb	%cl, 56(%rax)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	movb	%cl, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	re_set_registers, .Lfunc_end6-re_set_registers
	.cfi_endproc

	.globl	re_search
	.align	16, 0x90
	.type	re_search,@function
re_search:                              # @re_search
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %r11
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	re_search_2
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	re_search, .Lfunc_end7-re_search
	.cfi_endproc

	.globl	re_search_2
	.align	16, 0x90
	.type	re_search_2,@function
re_search_2:                            # @re_search_2
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
	subq	$240, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)
	movb	$0, -138(%rbp)
	cmpq	$0, -56(%rbp)
	jl	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jbe	.LBB8_3
.LBB8_2:                                # %if.then
	movq	$-1, -8(%rbp)
	jmp	.LBB8_85
.LBB8_3:                                # %if.end
	cmpq	$0, -136(%rbp)
	jge	.LBB8_5
# BB#4:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-56(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB8_8
.LBB8_5:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jbe	.LBB8_7
# BB#6:                                 # %if.then.8
	movq	-128(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_7:                                # %if.end.10
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jbe	.LBB8_15
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB8_15
# BB#10:                                # %land.lhs.true.15
	cmpq	$0, -64(%rbp)
	jle	.LBB8_15
# BB#11:                                # %if.then.18
	cmpq	$0, -56(%rbp)
	jle	.LBB8_13
# BB#12:                                # %if.then.21
	movq	$-1, -8(%rbp)
	jmp	.LBB8_85
.LBB8_13:                               # %if.else.22
	movq	$0, -64(%rbp)
# BB#14:                                # %if.end.23
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.24
	cmpq	$0, -112(%rbp)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.25
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB8_18
# BB#17:                                # %if.then.27
	movq	-16(%rbp), %rdi
	callq	re_compile_fastmap
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB8_18:                               # %if.end.28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -137(%rbp)
.LBB8_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_39 Depth 2
                                        #     Child Loop BB8_48 Depth 2
	movsbl	-137(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB8_27
# BB#20:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -56(%rbp)
	jle	.LBB8_27
# BB#21:                                # %if.then.40
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.LBB8_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	subq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB8_24:                               # %cond.end
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	je	.LBB8_26
# BB#25:                                # %if.then.52
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_77
.LBB8_26:                               # %if.end.53
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_27
.LBB8_27:                               # %if.end.54
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB8_67
# BB#28:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jae	.LBB8_67
# BB#29:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB8_67
# BB#30:                                # %if.then.64
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB8_32
# BB#31:                                # %cond.true.67
                                        #   in Loop: Header=BB8_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	subq	-32(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB8_33
.LBB8_32:                               # %cond.false.68
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB8_33:                               # %cond.end.69
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -64(%rbp)
	jle	.LBB8_54
# BB#34:                                # %if.then.74
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB8_37
# BB#35:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB8_37
# BB#36:                                # %if.then.81
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -176(%rbp)
.LBB8_37:                               # %if.end.84
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB8_47
# BB#38:                                # %if.then.86
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_39
.LBB8_39:                               # %while.cond
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jle	.LBB8_46
# BB#40:                                # %while.body
                                        #   in Loop: Header=BB8_39 Depth=2
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movl	-156(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	movslq	-180(%rbp), %rax
	movq	-120(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -184(%rbp)
	movl	-184(%rbp), %ecx
	cmpl	-180(%rbp), %ecx
	je	.LBB8_43
# BB#41:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB8_39 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_43
# BB#42:                                # %if.then.97
                                        #   in Loop: Header=BB8_39 Depth=2
	movl	-180(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB8_43:                               # %if.end.98
                                        #   in Loop: Header=BB8_39 Depth=2
	movslq	-156(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_45
# BB#44:                                # %if.then.102
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_46
.LBB8_45:                               # %if.end.103
                                        #   in Loop: Header=BB8_39 Depth=2
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_39
.LBB8_46:                               # %while.end
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_53
.LBB8_47:                               # %if.else.104
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_48
.LBB8_48:                               # %while.cond.105
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	-176(%rbp), %rdx
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jle	.LBB8_50
# BB#49:                                # %land.rhs
                                        #   in Loop: Header=BB8_48 Depth=2
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-112(%rbp), %rdx
	cmpb	$0, (%rdx,%rax)
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -209(%rbp)        # 1-byte Spill
.LBB8_50:                               # %land.end
                                        #   in Loop: Header=BB8_48 Depth=2
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_51
	jmp	.LBB8_52
.LBB8_51:                               # %while.body.111
                                        #   in Loop: Header=BB8_48 Depth=2
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_48
.LBB8_52:                               # %while.end.114
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_53
.LBB8_53:                               # %if.end.115
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-168(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_66
.LBB8_54:                               # %if.else.118
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movl	-156(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB8_56
# BB#55:                                # %cond.true.123
                                        #   in Loop: Header=BB8_19 Depth=1
	movslq	-188(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
	jmp	.LBB8_57
.LBB8_56:                               # %cond.false.127
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB8_57:                               # %cond.end.128
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	movl	-192(%rbp), %eax
	cmpl	-188(%rbp), %eax
	je	.LBB8_60
# BB#58:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-192(%rbp), %eax
	movl	%eax, -188(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_60
# BB#59:                                # %if.then.135
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB8_60:                               # %if.end.136
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB8_62
# BB#61:                                # %cond.true.138
                                        #   in Loop: Header=BB8_19 Depth=1
	movslq	-156(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB8_63
.LBB8_62:                               # %cond.false.142
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB8_63:                               # %cond.end.143
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-112(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB8_65
# BB#64:                                # %if.then.148
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_77
.LBB8_65:                               # %if.end.149
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_66
.LBB8_66:                               # %if.end.150
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_67
.LBB8_67:                               # %if.end.151
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -64(%rbp)
	jl	.LBB8_72
# BB#68:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB8_72
# BB#69:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB8_72
# BB#70:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB8_72
# BB#71:                                # %if.then.165
	movq	$-1, -8(%rbp)
	jmp	.LBB8_85
.LBB8_72:                               # %if.end.166
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2_internal
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jl	.LBB8_74
# BB#73:                                # %if.then.170
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_85
.LBB8_74:                               # %if.end.171
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$-2, -88(%rbp)
	jne	.LBB8_76
# BB#75:                                # %if.then.174
	movq	$-2, -8(%rbp)
	jmp	.LBB8_85
.LBB8_76:                               # %if.end.175
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_77
.LBB8_77:                               # %advance
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB8_79
# BB#78:                                # %if.then.177
	jmp	.LBB8_84
.LBB8_79:                               # %if.else.178
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -64(%rbp)
	jle	.LBB8_81
# BB#80:                                # %if.then.181
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_82
.LBB8_81:                               # %if.else.183
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB8_82:                               # %if.end.186
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_83
.LBB8_83:                               # %if.end.187
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_84:                               # %for.end
	movq	$-1, -8(%rbp)
.LBB8_85:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	re_search_2, .Lfunc_end8-re_search_2
	.cfi_endproc

	.align	16, 0x90
	.type	re_match_2_internal,@function
re_match_2_internal:                    # @re_match_2_internal
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
	subq	$1312, %rsp             # imm = 0x520
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)
	movb	$0, -169(%rbp)
	movb	$0, -170(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	movl	$0, -236(%rbp)
	movq	$0, -264(%rbp)
# BB#1:                                 # %do.body
	movq	%rsp, %rax
	addq	$-3200, %rax            # imm = 0xFFFFFFFFFFFFF380
	movq	%rax, %rsp
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_3:                                # %if.end
	movq	$20, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
# BB#4:                                 # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_29
# BB#5:                                 # %if.then.4
	movq	-216(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -224(%rbp)
	movq	-216(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -232(%rbp)
	movq	-216(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)
	movq	-216(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -256(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB9_9
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -232(%rbp)
	je	.LBB9_9
# BB#7:                                 # %land.lhs.true.10
	cmpq	$0, -248(%rbp)
	je	.LBB9_9
# BB#8:                                 # %land.lhs.true.12
	cmpq	$0, -256(%rbp)
	jne	.LBB9_28
.LBB9_9:                                # %if.then.14
	jmp	.LBB9_10
.LBB9_10:                               # %do.body.15
	jmp	.LBB9_11
.LBB9_11:                               # %do.body.16
	cmpq	$0, -224(%rbp)
	je	.LBB9_13
# BB#12:                                # %if.then.18
	movq	$0, -224(%rbp)
.LBB9_13:                               # %if.end.19
	jmp	.LBB9_14
.LBB9_14:                               # %do.end.20
	jmp	.LBB9_15
.LBB9_15:                               # %do.body.21
	cmpq	$0, -232(%rbp)
	je	.LBB9_17
# BB#16:                                # %if.then.23
	movq	$0, -232(%rbp)
.LBB9_17:                               # %if.end.24
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.25
	jmp	.LBB9_19
.LBB9_19:                               # %do.body.26
	cmpq	$0, -248(%rbp)
	je	.LBB9_21
# BB#20:                                # %if.then.28
	movq	$0, -248(%rbp)
.LBB9_21:                               # %if.end.29
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.30
	jmp	.LBB9_23
.LBB9_23:                               # %do.body.31
	cmpq	$0, -256(%rbp)
	je	.LBB9_25
# BB#24:                                # %if.then.33
	movq	$0, -256(%rbp)
.LBB9_25:                               # %if.end.34
	jmp	.LBB9_26
.LBB9_26:                               # %do.end.35
	jmp	.LBB9_27
.LBB9_27:                               # %do.end.36
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_28:                               # %if.end.37
	jmp	.LBB9_30
.LBB9_29:                               # %if.else
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
.LBB9_30:                               # %if.end.38
	cmpq	$0, -56(%rbp)
	jl	.LBB9_32
# BB#31:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB9_51
.LBB9_32:                               # %if.then.42
	jmp	.LBB9_33
.LBB9_33:                               # %do.body.43
	jmp	.LBB9_34
.LBB9_34:                               # %do.body.44
	cmpq	$0, -224(%rbp)
	je	.LBB9_36
# BB#35:                                # %if.then.46
	movq	$0, -224(%rbp)
.LBB9_36:                               # %if.end.47
	jmp	.LBB9_37
.LBB9_37:                               # %do.end.48
	jmp	.LBB9_38
.LBB9_38:                               # %do.body.49
	cmpq	$0, -232(%rbp)
	je	.LBB9_40
# BB#39:                                # %if.then.51
	movq	$0, -232(%rbp)
.LBB9_40:                               # %if.end.52
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.53
	jmp	.LBB9_42
.LBB9_42:                               # %do.body.54
	cmpq	$0, -248(%rbp)
	je	.LBB9_44
# BB#43:                                # %if.then.56
	movq	$0, -248(%rbp)
.LBB9_44:                               # %if.end.57
	jmp	.LBB9_45
.LBB9_45:                               # %do.end.58
	jmp	.LBB9_46
.LBB9_46:                               # %do.body.59
	cmpq	$0, -256(%rbp)
	je	.LBB9_48
# BB#47:                                # %if.then.61
	movq	$0, -256(%rbp)
.LBB9_48:                               # %if.end.62
	jmp	.LBB9_49
.LBB9_49:                               # %do.end.63
	jmp	.LBB9_50
.LBB9_50:                               # %do.end.64
	movq	$-1, -8(%rbp)
	jmp	.LBB9_732
.LBB9_51:                               # %if.end.65
	movq	$1, -88(%rbp)
.LBB9_52:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jae	.LBB9_55
# BB#53:                                # %for.body
                                        #   in Loop: Header=BB9_52 Depth=1
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
# BB#54:                                # %for.inc
                                        #   in Loop: Header=BB9_52 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_52
.LBB9_55:                               # %for.end
	cmpq	$0, -48(%rbp)
	jne	.LBB9_58
# BB#56:                                # %land.lhs.true.69
	cmpq	$0, -24(%rbp)
	je	.LBB9_58
# BB#57:                                # %if.then.71
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB9_58:                               # %if.end.72
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB9_60
# BB#59:                                # %if.then.76
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	addq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	subq	-32(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -128(%rbp)
	movq	-40(%rbp), %rdx
	addq	-72(%rbp), %rdx
	subq	-32(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -120(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB9_64
.LBB9_60:                               # %if.else.82
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB9_62
# BB#61:                                # %if.then.84
	movq	-24(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB9_63
.LBB9_62:                               # %if.else.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-40(%rbp), %rdx
	addq	-72(%rbp), %rdx
	subq	-32(%rbp), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -120(%rbp)
.LBB9_63:                               # %if.end.90
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_64:                               # %if.end.92
	jmp	.LBB9_65
.LBB9_65:                               # %for.cond.93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_83 Depth 2
                                        #     Child Loop BB9_658 Depth 2
                                        #     Child Loop BB9_615 Depth 2
                                        #     Child Loop BB9_574 Depth 2
                                        #     Child Loop BB9_532 Depth 2
                                        #     Child Loop BB9_509 Depth 2
                                        #     Child Loop BB9_485 Depth 2
                                        #     Child Loop BB9_391 Depth 2
                                        #     Child Loop BB9_403 Depth 2
                                        #     Child Loop BB9_424 Depth 2
                                        #     Child Loop BB9_437 Depth 2
                                        #     Child Loop BB9_372 Depth 2
                                        #     Child Loop BB9_457 Depth 2
                                        #     Child Loop BB9_313 Depth 2
                                        #       Child Loop BB9_314 Depth 3
                                        #       Child Loop BB9_323 Depth 3
                                        #     Child Loop BB9_282 Depth 2
                                        #     Child Loop BB9_259 Depth 2
                                        #     Child Loop BB9_243 Depth 2
                                        #     Child Loop BB9_220 Depth 2
                                        #       Child Loop BB9_221 Depth 3
                                        #     Child Loop BB9_231 Depth 2
                                        #       Child Loop BB9_232 Depth 3
                                        #     Child Loop BB9_667 Depth 2
                                        #       Child Loop BB9_670 Depth 3
                                        #     Child Loop BB9_684 Depth 2
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB9_215
# BB#66:                                # %if.then.95
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB9_102
# BB#67:                                # %if.then.97
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -689(%rbp)         # 1-byte Spill
	je	.LBB9_70
# BB#68:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-264(%rbp), %rdx
	movb	%cl, -689(%rbp)         # 1-byte Spill
	ja	.LBB9_70
# BB#69:                                # %land.rhs
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-264(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -689(%rbp)         # 1-byte Spill
.LBB9_70:                               # %land.end
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	-689(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	cmpq	$0, -32(%rbp)
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movb	%dl, -697(%rbp)         # 1-byte Spill
	je	.LBB9_73
# BB#71:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-128(%rbp), %rdx
	movb	%cl, -697(%rbp)         # 1-byte Spill
	ja	.LBB9_73
# BB#72:                                # %land.rhs.106
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -697(%rbp)         # 1-byte Spill
.LBB9_73:                               # %land.end.109
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	-697(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-696(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -273(%rbp)
	cmpb	$0, -273(%rbp)
	je	.LBB9_75
# BB#74:                                # %if.then.114
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-264(%rbp), %rax
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -274(%rbp)
	jmp	.LBB9_79
.LBB9_75:                               # %if.else.118
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -698(%rbp)         # 1-byte Spill
	je	.LBB9_78
# BB#76:                                # %land.lhs.true.120
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-128(%rbp), %rdx
	movb	%cl, -698(%rbp)         # 1-byte Spill
	ja	.LBB9_78
# BB#77:                                # %land.rhs.123
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -698(%rbp)         # 1-byte Spill
.LBB9_78:                               # %land.end.127
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	-698(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -274(%rbp)
.LBB9_79:                               # %if.end.130
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB9_88
# BB#80:                                # %if.then.134
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$0, -236(%rbp)
	je	.LBB9_82
# BB#81:                                # %lor.lhs.false.136
                                        #   in Loop: Header=BB9_65 Depth=1
	movsbl	-274(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_87
.LBB9_82:                               # %if.then.139
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, -236(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	$1, -88(%rbp)
.LBB9_83:                               # %for.cond.140
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jae	.LBB9_86
# BB#84:                                # %for.body.143
                                        #   in Loop: Header=BB9_83 Depth=2
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-88(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-88(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#85:                                # %for.inc.148
                                        #   in Loop: Header=BB9_83 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_83
.LBB9_86:                               # %for.end.150
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_87
.LBB9_87:                               # %if.end.151
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_88:                               # %if.else.152
	cmpl	$0, -236(%rbp)
	je	.LBB9_100
# BB#89:                                # %land.lhs.true.154
	cmpb	$0, -274(%rbp)
	jne	.LBB9_100
# BB#90:                                # %if.then.156
	jmp	.LBB9_91
.LBB9_91:                               # %restore_best_regs
	movq	-264(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB9_94
# BB#92:                                # %land.lhs.true.159
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	ja	.LBB9_94
# BB#93:                                # %cond.true
	movq	-112(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB9_95
.LBB9_94:                               # %cond.false
	movq	-120(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB9_95:                               # %cond.end
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	$1, -88(%rbp)
.LBB9_96:                               # %for.cond.162
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jae	.LBB9_99
# BB#97:                                # %for.body.165
                                        #   in Loop: Header=BB9_96 Depth=1
	movq	-88(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-88(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-88(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-88(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#98:                                # %for.inc.170
                                        #   in Loop: Header=BB9_96 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_96
.LBB9_99:                               # %for.end.172
	jmp	.LBB9_100
.LBB9_100:                              # %if.end.173
	jmp	.LBB9_101
.LBB9_101:                              # %if.end.174
	jmp	.LBB9_102
.LBB9_102:                              # %if.end.175
	jmp	.LBB9_103
.LBB9_103:                              # %succeed_label
	cmpq	$0, -64(%rbp)
	je	.LBB9_191
# BB#104:                               # %land.lhs.true.177
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB9_191
# BB#105:                               # %if.then.179
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$1, %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB9_131
# BB#106:                               # %if.then.186
	movl	$30, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB9_108
# BB#107:                               # %cond.true.190
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB9_109
.LBB9_108:                              # %cond.false.191
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB9_109:                              # %cond.end.193
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-64(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-64(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_111
# BB#110:                               # %lor.lhs.false.207
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_130
.LBB9_111:                              # %if.then.211
	jmp	.LBB9_112
.LBB9_112:                              # %do.body.212
	jmp	.LBB9_113
.LBB9_113:                              # %do.body.213
	cmpq	$0, -224(%rbp)
	je	.LBB9_115
# BB#114:                               # %if.then.215
	movq	$0, -224(%rbp)
.LBB9_115:                              # %if.end.216
	jmp	.LBB9_116
.LBB9_116:                              # %do.end.217
	jmp	.LBB9_117
.LBB9_117:                              # %do.body.218
	cmpq	$0, -232(%rbp)
	je	.LBB9_119
# BB#118:                               # %if.then.220
	movq	$0, -232(%rbp)
.LBB9_119:                              # %if.end.221
	jmp	.LBB9_120
.LBB9_120:                              # %do.end.222
	jmp	.LBB9_121
.LBB9_121:                              # %do.body.223
	cmpq	$0, -248(%rbp)
	je	.LBB9_123
# BB#122:                               # %if.then.225
	movq	$0, -248(%rbp)
.LBB9_123:                              # %if.end.226
	jmp	.LBB9_124
.LBB9_124:                              # %do.end.227
	jmp	.LBB9_125
.LBB9_125:                              # %do.body.228
	cmpq	$0, -256(%rbp)
	je	.LBB9_127
# BB#126:                               # %if.then.230
	movq	$0, -256(%rbp)
.LBB9_127:                              # %if.end.231
	jmp	.LBB9_128
.LBB9_128:                              # %do.end.232
	jmp	.LBB9_129
.LBB9_129:                              # %do.end.233
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_130:                              # %if.end.234
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-7, %cl
	orb	$2, %cl
	movb	%cl, 56(%rax)
	jmp	.LBB9_158
.LBB9_131:                              # %if.else.238
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$1, %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB9_156
# BB#132:                               # %if.then.246
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-216(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jae	.LBB9_155
# BB#133:                               # %if.then.252
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, %edx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_135
# BB#134:                               # %lor.lhs.false.271
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_154
.LBB9_135:                              # %if.then.275
	jmp	.LBB9_136
.LBB9_136:                              # %do.body.276
	jmp	.LBB9_137
.LBB9_137:                              # %do.body.277
	cmpq	$0, -224(%rbp)
	je	.LBB9_139
# BB#138:                               # %if.then.279
	movq	$0, -224(%rbp)
.LBB9_139:                              # %if.end.280
	jmp	.LBB9_140
.LBB9_140:                              # %do.end.281
	jmp	.LBB9_141
.LBB9_141:                              # %do.body.282
	cmpq	$0, -232(%rbp)
	je	.LBB9_143
# BB#142:                               # %if.then.284
	movq	$0, -232(%rbp)
.LBB9_143:                              # %if.end.285
	jmp	.LBB9_144
.LBB9_144:                              # %do.end.286
	jmp	.LBB9_145
.LBB9_145:                              # %do.body.287
	cmpq	$0, -248(%rbp)
	je	.LBB9_147
# BB#146:                               # %if.then.289
	movq	$0, -248(%rbp)
.LBB9_147:                              # %if.end.290
	jmp	.LBB9_148
.LBB9_148:                              # %do.end.291
	jmp	.LBB9_149
.LBB9_149:                              # %do.body.292
	cmpq	$0, -256(%rbp)
	je	.LBB9_151
# BB#150:                               # %if.then.294
	movq	$0, -256(%rbp)
.LBB9_151:                              # %if.end.295
	jmp	.LBB9_152
.LBB9_152:                              # %do.end.296
	jmp	.LBB9_153
.LBB9_153:                              # %do.end.297
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_154:                              # %if.end.298
	jmp	.LBB9_155
.LBB9_155:                              # %if.end.299
	jmp	.LBB9_157
.LBB9_156:                              # %if.else.300
	jmp	.LBB9_157
.LBB9_157:                              # %if.end.301
	jmp	.LBB9_158
.LBB9_158:                              # %if.end.302
	movq	-64(%rbp), %rax
	cmpl	$0, (%rax)
	jbe	.LBB9_165
# BB#159:                               # %if.then.306
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -32(%rbp)
	je	.LBB9_163
# BB#160:                               # %land.lhs.true.310
	movq	-24(%rbp), %rax
	cmpq	-128(%rbp), %rax
	ja	.LBB9_163
# BB#161:                               # %land.lhs.true.313
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_163
# BB#162:                               # %cond.true.317
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB9_164
.LBB9_163:                              # %cond.false.318
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB9_164:                              # %cond.end.323
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB9_165:                              # %if.end.327
	movq	$1, -88(%rbp)
.LBB9_166:                              # %for.cond.328
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx), %esi
	movl	%esi, %edx
	cmpq	%rdx, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jae	.LBB9_168
# BB#167:                               # %cond.true.333
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB9_169
.LBB9_168:                              # %cond.false.334
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB9_169:                              # %cond.end.337
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB9_186
# BB#170:                               # %for.body.341
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_172
# BB#171:                               # %lor.lhs.false.345
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB9_173
.LBB9_172:                              # %if.then.349
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	jmp	.LBB9_184
.LBB9_173:                              # %if.else.354
                                        #   in Loop: Header=BB9_166 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_177
# BB#174:                               # %land.lhs.true.356
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB9_177
# BB#175:                               # %land.lhs.true.360
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_177
# BB#176:                               # %cond.true.365
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB9_178
.LBB9_177:                              # %cond.false.370
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB9_178:                              # %cond.end.376
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpq	$0, -32(%rbp)
	je	.LBB9_182
# BB#179:                               # %land.lhs.true.381
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-232(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	ja	.LBB9_182
# BB#180:                               # %land.lhs.true.385
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_182
# BB#181:                               # %cond.true.390
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB9_183
.LBB9_182:                              # %cond.false.395
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB9_183:                              # %cond.end.401
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB9_184:                              # %if.end.405
                                        #   in Loop: Header=BB9_166 Depth=1
	jmp	.LBB9_185
.LBB9_185:                              # %for.inc.406
                                        #   in Loop: Header=BB9_166 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_166
.LBB9_186:                              # %for.end.408
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB9_187:                              # %for.cond.409
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jae	.LBB9_190
# BB#188:                               # %for.body.414
                                        #   in Loop: Header=BB9_187 Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	$-1, (%rcx,%rax,8)
# BB#189:                               # %for.inc.419
                                        #   in Loop: Header=BB9_187 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_187
.LBB9_190:                              # %for.end.421
	jmp	.LBB9_191
.LBB9_191:                              # %if.end.422
	cmpq	$0, -32(%rbp)
	je	.LBB9_195
# BB#192:                               # %land.lhs.true.424
	movq	-24(%rbp), %rax
	cmpq	-128(%rbp), %rax
	ja	.LBB9_195
# BB#193:                               # %land.lhs.true.427
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB9_195
# BB#194:                               # %cond.true.431
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB9_196
.LBB9_195:                              # %cond.false.435
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB9_196:                              # %cond.end.440
	movq	-768(%rbp), %rax        # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)
# BB#197:                               # %do.body.442
	jmp	.LBB9_198
.LBB9_198:                              # %do.body.443
	cmpq	$0, -224(%rbp)
	je	.LBB9_200
# BB#199:                               # %if.then.445
	movq	$0, -224(%rbp)
.LBB9_200:                              # %if.end.446
	jmp	.LBB9_201
.LBB9_201:                              # %do.end.447
	jmp	.LBB9_202
.LBB9_202:                              # %do.body.448
	cmpq	$0, -232(%rbp)
	je	.LBB9_204
# BB#203:                               # %if.then.450
	movq	$0, -232(%rbp)
.LBB9_204:                              # %if.end.451
	jmp	.LBB9_205
.LBB9_205:                              # %do.end.452
	jmp	.LBB9_206
.LBB9_206:                              # %do.body.453
	cmpq	$0, -248(%rbp)
	je	.LBB9_208
# BB#207:                               # %if.then.455
	movq	$0, -248(%rbp)
.LBB9_208:                              # %if.end.456
	jmp	.LBB9_209
.LBB9_209:                              # %do.end.457
	jmp	.LBB9_210
.LBB9_210:                              # %do.body.458
	cmpq	$0, -256(%rbp)
	je	.LBB9_212
# BB#211:                               # %if.then.460
	movq	$0, -256(%rbp)
.LBB9_212:                              # %if.end.461
	jmp	.LBB9_213
.LBB9_213:                              # %do.end.462
	jmp	.LBB9_214
.LBB9_214:                              # %do.end.463
	movq	-272(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_732
.LBB9_215:                              # %if.end.464
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -152(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$29, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	ja	.LBB9_665
# BB#733:                               # %if.end.464
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_216:                              # %sw.bb
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_217:                              # %sw.bb.466
	jmp	.LBB9_103
.LBB9_218:                              # %sw.bb.467
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB9_230
# BB#219:                               # %if.then.471
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_220
.LBB9_220:                              # %do.body.472
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_221 Depth 3
	jmp	.LBB9_221
.LBB9_221:                              # %while.cond
                                        #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_220 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_225
# BB#222:                               # %while.body
                                        #   in Loop: Header=BB9_221 Depth=3
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_224
# BB#223:                               # %if.then.477
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_224:                              # %if.end.478
                                        #   in Loop: Header=BB9_221 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_221
.LBB9_225:                              # %while.end
                                        #   in Loop: Header=BB9_220 Depth=2
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movzbl	(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB9_227
# BB#226:                               # %if.then.485
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB9_667
.LBB9_227:                              # %if.end.486
                                        #   in Loop: Header=BB9_220 Depth=2
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
# BB#228:                               # %do.cond
                                        #   in Loop: Header=BB9_220 Depth=2
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jne	.LBB9_220
# BB#229:                               # %do.end.489
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_241
.LBB9_230:                              # %if.else.490
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_231
.LBB9_231:                              # %do.body.491
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_232 Depth 3
	jmp	.LBB9_232
.LBB9_232:                              # %while.cond.492
                                        #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_236
# BB#233:                               # %while.body.495
                                        #   in Loop: Header=BB9_232 Depth=3
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_235
# BB#234:                               # %if.then.498
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_235:                              # %if.end.499
                                        #   in Loop: Header=BB9_232 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_232
.LBB9_236:                              # %while.end.500
                                        #   in Loop: Header=BB9_231 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movzbl	(%rax), %edx
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movzbl	(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB9_238
# BB#237:                               # %if.then.507
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB9_667
.LBB9_238:                              # %if.end.508
                                        #   in Loop: Header=BB9_231 Depth=2
	jmp	.LBB9_239
.LBB9_239:                              # %do.cond.509
                                        #   in Loop: Header=BB9_231 Depth=2
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jne	.LBB9_231
# BB#240:                               # %do.end.512
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_241
.LBB9_241:                              # %if.end.513
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_242:                              # %sw.bb.514
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_243
.LBB9_243:                              # %while.cond.515
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_247
# BB#244:                               # %while.body.518
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_246
# BB#245:                               # %if.then.521
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_246:                              # %if.end.522
                                        #   in Loop: Header=BB9_243 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_243
.LBB9_247:                              # %while.end.523
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, -280(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -284(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB9_249
# BB#248:                               # %cond.true.526
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-284(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -788(%rbp)        # 4-byte Spill
	jmp	.LBB9_250
.LBB9_249:                              # %cond.false.530
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-284(%rbp), %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB9_250:                              # %cond.end.531
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-788(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	andq	$64, %rcx
	cmpq	$0, %rcx
	jne	.LBB9_252
# BB#251:                               # %land.lhs.true.534
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$10, -284(%rbp)
	je	.LBB9_254
.LBB9_252:                              # %lor.lhs.false.537
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB9_255
# BB#253:                               # %land.lhs.true.541
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$0, -284(%rbp)
	jne	.LBB9_255
.LBB9_254:                              # %if.then.544
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_255:                              # %if.end.545
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-280(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB9_666
.LBB9_256:                              # %sw.bb.547
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -293(%rbp)
	movl	$0, -320(%rbp)
	movb	$0, -321(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	movl	%ecx, -316(%rbp)
	cmpl	$0, -316(%rbp)
	je	.LBB9_258
# BB#257:                               # %if.then.558
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-312(%rbp), %rdi
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rax
	movq	-152(%rbp), %rdx
	addq	$-1, %rdx
	addq	%rax, %rdx
	movq	%rdx, -312(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -320(%rbp)
.LBB9_258:                              # %if.end.568
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_259
.LBB9_259:                              # %while.cond.569
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_263
# BB#260:                               # %while.body.572
                                        #   in Loop: Header=BB9_259 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_262
# BB#261:                               # %if.then.575
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_262:                              # %if.end.576
                                        #   in Loop: Header=BB9_259 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_259
.LBB9_263:                              # %while.end.577
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, -300(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -288(%rbp)
	movl	%ecx, -292(%rbp)
	movl	-288(%rbp), %ecx
	movl	%ecx, -328(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB9_265
# BB#264:                               # %cond.true.580
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-328(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -792(%rbp)        # 4-byte Spill
	jmp	.LBB9_266
.LBB9_265:                              # %cond.false.584
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-328(%rbp), %eax
	movl	%eax, -792(%rbp)        # 4-byte Spill
.LBB9_266:                              # %cond.end.585
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-792(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)
	movl	-328(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	jl	.LBB9_268
# BB#267:                               # %if.then.589
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	$1, -321(%rbp)
	movl	-328(%rbp), %eax
	movl	%eax, -288(%rbp)
.LBB9_268:                              # %if.end.590
                                        #   in Loop: Header=BB9_65 Depth=1
	movsbl	-321(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_274
# BB#269:                               # %land.lhs.true.593
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$256, -288(%rbp)        # imm = 0x100
	jae	.LBB9_274
# BB#270:                               # %if.then.596
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-288(%rbp), %eax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$127, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jae	.LBB9_273
# BB#271:                               # %land.lhs.true.604
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, %eax
	movl	-288(%rbp), %ecx
	shrl	$3, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-288(%rbp), %edi
	andl	$7, %edi
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-796(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	je	.LBB9_273
# BB#272:                               # %if.then.611
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpb	$0, -293(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -293(%rbp)
.LBB9_273:                              # %if.end.616
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_274
.LBB9_274:                              # %if.end.617
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$0, -316(%rbp)
	je	.LBB9_276
# BB#275:                               # %if.then.619
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-312(%rbp), %rax
	movl	-320(%rbp), %ecx
	shll	$1, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_277
.LBB9_276:                              # %if.else.624
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$1, %ecx
	movq	-152(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
.LBB9_277:                              # %if.end.632
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpb	$0, -293(%rbp)
	jne	.LBB9_279
# BB#278:                               # %if.then.634
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_279:                              # %if.end.635
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-300(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB9_666
.LBB9_280:                              # %sw.bb.638
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_281
.LBB9_281:                              # %do.body.639
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -344(%rbp)
.LBB9_282:                              # %while.cond.641
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_297
# BB#283:                               # %while.body.647
                                        #   in Loop: Header=BB9_282 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_285
# BB#284:                               # %cond.true.653
                                        #   in Loop: Header=BB9_282 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_296
	jmp	.LBB9_295
.LBB9_285:                              # %cond.false.654
                                        #   in Loop: Header=BB9_282 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_287
# BB#286:                               # %cond.true.661
                                        #   in Loop: Header=BB9_282 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB9_288
.LBB9_287:                              # %cond.false.663
                                        #   in Loop: Header=BB9_282 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB9_288:                              # %cond.end.667
                                        #   in Loop: Header=BB9_282 Depth=2
	movq	-808(%rbp), %rax        # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_290
# BB#289:                               # %cond.true.676
                                        #   in Loop: Header=BB9_282 Depth=2
	xorl	%eax, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB9_294
.LBB9_290:                              # %cond.false.677
                                        #   in Loop: Header=BB9_282 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_292
# BB#291:                               # %cond.true.684
                                        #   in Loop: Header=BB9_282 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB9_293
.LBB9_292:                              # %cond.false.686
                                        #   in Loop: Header=BB9_282 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB9_293:                              # %cond.end.690
                                        #   in Loop: Header=BB9_282 Depth=2
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -820(%rbp)        # 4-byte Spill
.LBB9_294:                              # %cond.end.694
                                        #   in Loop: Header=BB9_282 Depth=2
	movl	-820(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_296
.LBB9_295:                              # %if.then.697
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_296:                              # %if.end.698
                                        #   in Loop: Header=BB9_282 Depth=2
	jmp	.LBB9_282
.LBB9_297:                              # %while.end.699
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-344(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-344(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-344(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#298:                               # %do.end.716
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-224(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-232(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_666
.LBB9_299:                              # %sw.bb.722
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	-232(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB9_666
.LBB9_300:                              # %sw.bb.726
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -364(%rbp)
	movslq	-364(%rbp), %rax
	movq	-224(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB9_302
# BB#301:                               # %lor.lhs.false.733
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-364(%rbp), %rax
	movq	-232(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB9_303
.LBB9_302:                              # %if.then.738
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_303:                              # %if.end.739
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-364(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	cmpq	$0, -32(%rbp)
	movb	%cl, -833(%rbp)         # 1-byte Spill
	je	.LBB9_306
# BB#304:                               # %land.lhs.true.743
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movslq	-364(%rbp), %rsi
	movq	-224(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -833(%rbp)         # 1-byte Spill
	ja	.LBB9_306
# BB#305:                               # %land.rhs.748
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-364(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -833(%rbp)         # 1-byte Spill
.LBB9_306:                              # %land.end.754
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	-833(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	cmpq	$0, -32(%rbp)
	movl	%ecx, -840(%rbp)        # 4-byte Spill
	movb	%dl, -841(%rbp)         # 1-byte Spill
	je	.LBB9_309
# BB#307:                               # %land.lhs.true.757
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movslq	-364(%rbp), %rsi
	movq	-232(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rdx
	movb	%cl, -841(%rbp)         # 1-byte Spill
	ja	.LBB9_309
# BB#308:                               # %land.rhs.762
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-364(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	setbe	%dl
	movb	%dl, -841(%rbp)         # 1-byte Spill
.LBB9_309:                              # %land.end.768
                                        #   in Loop: Header=BB9_65 Depth=1
	movb	-841(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-840(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB9_311
# BB#310:                               # %cond.true.772
                                        #   in Loop: Header=BB9_65 Depth=1
	movslq	-364(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB9_312
.LBB9_311:                              # %cond.false.775
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB9_312:                              # %cond.end.776
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)
.LBB9_313:                              # %for.cond.778
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_314 Depth 3
                                        #       Child Loop BB9_323 Depth 3
	jmp	.LBB9_314
.LBB9_314:                              # %while.cond.780
                                        #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-352(%rbp), %rax
	cmpq	-360(%rbp), %rax
	jne	.LBB9_320
# BB#315:                               # %while.body.783
                                        #   in Loop: Header=BB9_314 Depth=3
	movq	-360(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_317
# BB#316:                               # %if.then.786
                                        #   in Loop: Header=BB9_313 Depth=2
	jmp	.LBB9_320
.LBB9_317:                              # %if.end.787
                                        #   in Loop: Header=BB9_314 Depth=3
	movq	-360(%rbp), %rax
	movslq	-364(%rbp), %rcx
	movq	-232(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB9_319
# BB#318:                               # %if.then.792
                                        #   in Loop: Header=BB9_313 Depth=2
	jmp	.LBB9_320
.LBB9_319:                              # %if.end.793
                                        #   in Loop: Header=BB9_314 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)
	movslq	-364(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -360(%rbp)
	jmp	.LBB9_314
.LBB9_320:                              # %while.end.796
                                        #   in Loop: Header=BB9_313 Depth=2
	movq	-352(%rbp), %rax
	cmpq	-360(%rbp), %rax
	jne	.LBB9_322
# BB#321:                               # %if.then.799
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_334
.LBB9_322:                              # %if.end.800
                                        #   in Loop: Header=BB9_313 Depth=2
	jmp	.LBB9_323
.LBB9_323:                              # %while.cond.801
                                        #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_327
# BB#324:                               # %while.body.804
                                        #   in Loop: Header=BB9_323 Depth=3
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_326
# BB#325:                               # %if.then.807
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_326:                              # %if.end.808
                                        #   in Loop: Header=BB9_323 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_323
.LBB9_327:                              # %while.end.809
                                        #   in Loop: Header=BB9_313 Depth=2
	movq	-136(%rbp), %rax
	movq	-128(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_329
# BB#328:                               # %if.then.818
                                        #   in Loop: Header=BB9_313 Depth=2
	movq	-360(%rbp), %rax
	movq	-352(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -376(%rbp)
.LBB9_329:                              # %if.end.822
                                        #   in Loop: Header=BB9_313 Depth=2
	cmpq	$0, -168(%rbp)
	je	.LBB9_331
# BB#330:                               # %cond.true.824
                                        #   in Loop: Header=BB9_313 Depth=2
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	-168(%rbp), %rcx
	callq	bcmp_translate
	cmpl	$0, %eax
	jne	.LBB9_332
	jmp	.LBB9_333
.LBB9_331:                              # %cond.false.827
                                        #   in Loop: Header=BB9_313 Depth=2
	movq	-128(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movq	-376(%rbp), %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB9_333
.LBB9_332:                              # %if.then.830
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB9_667
.LBB9_333:                              # %if.end.831
                                        #   in Loop: Header=BB9_313 Depth=2
	movq	-376(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-376(%rbp), %rax
	addq	-352(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB9_313
.LBB9_334:                              # %for.end.834
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_335:                              # %sw.bb.835
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -864(%rbp)        # 8-byte Spill
	je	.LBB9_337
# BB#336:                               # %cond.true.837
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB9_338
.LBB9_337:                              # %cond.false.838
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB9_338:                              # %cond.end.839
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_340
# BB#339:                               # %lor.lhs.false.843
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_343
.LBB9_340:                              # %if.then.845
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB9_342
# BB#341:                               # %if.then.851
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_342:                              # %if.end.852
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_349
.LBB9_343:                              # %if.else.853
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_345
# BB#344:                               # %cond.true.857
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -876(%rbp)        # 4-byte Spill
	jmp	.LBB9_346
.LBB9_345:                              # %cond.false.860
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -876(%rbp)        # 4-byte Spill
.LBB9_346:                              # %cond.end.863
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)
	cmpl	$10, -380(%rbp)
	jne	.LBB9_348
# BB#347:                               # %if.then.867
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_348:                              # %if.end.868
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_349
.LBB9_349:                              # %if.end.869
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_350:                              # %sw.bb.870
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_354
# BB#351:                               # %if.then.873
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-16(%rbp), %rax
	movb	56(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB9_353
# BB#352:                               # %if.then.879
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_353:                              # %if.end.880
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_359
.LBB9_354:                              # %if.else.881
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_356
# BB#355:                               # %if.then.884
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_356:                              # %if.end.885
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB9_358
# BB#357:                               # %if.then.889
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_358:                              # %if.end.890
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_359
.LBB9_359:                              # %if.end.891
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_360:                              # %sw.bb.892
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -888(%rbp)        # 8-byte Spill
	je	.LBB9_362
# BB#361:                               # %cond.true.894
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB9_363
.LBB9_362:                              # %cond.false.895
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB9_363:                              # %cond.end.896
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	-888(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_365
# BB#364:                               # %lor.lhs.false.900
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_366
.LBB9_365:                              # %if.then.902
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_366:                              # %if.end.903
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_367:                              # %sw.bb.904
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_369
# BB#368:                               # %if.then.907
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_369:                              # %if.end.908
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_370:                              # %sw.bb.909
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
# BB#371:                               # %do.body.911
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_372
.LBB9_372:                              # %while.cond.913
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_387
# BB#373:                               # %while.body.919
                                        #   in Loop: Header=BB9_372 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_375
# BB#374:                               # %cond.true.925
                                        #   in Loop: Header=BB9_372 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_386
	jmp	.LBB9_385
.LBB9_375:                              # %cond.false.926
                                        #   in Loop: Header=BB9_372 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_377
# BB#376:                               # %cond.true.933
                                        #   in Loop: Header=BB9_372 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB9_378
.LBB9_377:                              # %cond.false.935
                                        #   in Loop: Header=BB9_372 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB9_378:                              # %cond.end.939
                                        #   in Loop: Header=BB9_372 Depth=2
	movq	-904(%rbp), %rax        # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_380
# BB#379:                               # %cond.true.948
                                        #   in Loop: Header=BB9_372 Depth=2
	xorl	%eax, %eax
	movl	%eax, -916(%rbp)        # 4-byte Spill
	jmp	.LBB9_384
.LBB9_380:                              # %cond.false.949
                                        #   in Loop: Header=BB9_372 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_382
# BB#381:                               # %cond.true.956
                                        #   in Loop: Header=BB9_372 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB9_383
.LBB9_382:                              # %cond.false.958
                                        #   in Loop: Header=BB9_372 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB9_383:                              # %cond.end.962
                                        #   in Loop: Header=BB9_372 Depth=2
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -916(%rbp)        # 4-byte Spill
.LBB9_384:                              # %cond.end.966
                                        #   in Loop: Header=BB9_372 Depth=2
	movl	-916(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_386
.LBB9_385:                              # %if.then.969
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_386:                              # %if.end.970
                                        #   in Loop: Header=BB9_372 Depth=2
	jmp	.LBB9_372
.LBB9_387:                              # %while.end.971
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-152(%rbp), %rax
	addq	$-3, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
# BB#388:                               # %do.end.992
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_389:                              # %sw.bb.993
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
	movl	$0, -396(%rbp)
# BB#390:                               # %do.body.995
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
.LBB9_391:                              # %while.cond.997
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -408(%rbp)
	movb	%cl, -929(%rbp)         # 1-byte Spill
	jle	.LBB9_395
# BB#392:                               # %land.rhs.1000
                                        #   in Loop: Header=BB9_391 Depth=2
	movb	$1, %al
	movq	-408(%rbp), %rcx
	subq	$2, %rcx
	movq	-208(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	-128(%rbp), %rcx
	movb	%al, -930(%rbp)         # 1-byte Spill
	je	.LBB9_394
# BB#393:                               # %lor.rhs
                                        #   in Loop: Header=BB9_391 Depth=2
	movq	-408(%rbp), %rax
	subq	$2, %rax
	movq	-208(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	sete	%dl
	movb	%dl, -930(%rbp)         # 1-byte Spill
.LBB9_394:                              # %lor.end
                                        #   in Loop: Header=BB9_391 Depth=2
	movb	-930(%rbp), %al         # 1-byte Reload
	movb	%al, -929(%rbp)         # 1-byte Spill
.LBB9_395:                              # %land.end.1013
                                        #   in Loop: Header=BB9_391 Depth=2
	movb	-929(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_396
	jmp	.LBB9_399
.LBB9_396:                              # %while.body.1015
                                        #   in Loop: Header=BB9_391 Depth=2
	movq	-408(%rbp), %rax
	subq	$1, %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-152(%rbp), %rcx
	addq	$-4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_398
# BB#397:                               # %if.then.1023
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, -396(%rbp)
	jmp	.LBB9_399
.LBB9_398:                              # %if.end.1024
                                        #   in Loop: Header=BB9_391 Depth=2
	movq	-408(%rbp), %rax
	subq	$3, %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -408(%rbp)
	jmp	.LBB9_391
.LBB9_399:                              # %while.end.1029
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_400
.LBB9_400:                              # %do.end.1031
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$0, -396(%rbp)
	jne	.LBB9_420
# BB#401:                               # %if.then.1033
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_402
.LBB9_402:                              # %do.body.1034
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_403
.LBB9_403:                              # %while.cond.1036
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_418
# BB#404:                               # %while.body.1042
                                        #   in Loop: Header=BB9_403 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_406
# BB#405:                               # %cond.true.1048
                                        #   in Loop: Header=BB9_403 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_417
	jmp	.LBB9_416
.LBB9_406:                              # %cond.false.1049
                                        #   in Loop: Header=BB9_403 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_408
# BB#407:                               # %cond.true.1056
                                        #   in Loop: Header=BB9_403 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB9_409
.LBB9_408:                              # %cond.false.1058
                                        #   in Loop: Header=BB9_403 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB9_409:                              # %cond.end.1062
                                        #   in Loop: Header=BB9_403 Depth=2
	movq	-944(%rbp), %rax        # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-952(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_411
# BB#410:                               # %cond.true.1071
                                        #   in Loop: Header=BB9_403 Depth=2
	xorl	%eax, %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB9_415
.LBB9_411:                              # %cond.false.1072
                                        #   in Loop: Header=BB9_403 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_413
# BB#412:                               # %cond.true.1079
                                        #   in Loop: Header=BB9_403 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB9_414
.LBB9_413:                              # %cond.false.1081
                                        #   in Loop: Header=BB9_403 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB9_414:                              # %cond.end.1085
                                        #   in Loop: Header=BB9_403 Depth=2
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -956(%rbp)        # 4-byte Spill
.LBB9_415:                              # %cond.end.1089
                                        #   in Loop: Header=BB9_403 Depth=2
	movl	-956(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_417
.LBB9_416:                              # %if.then.1092
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_417:                              # %if.end.1093
                                        #   in Loop: Header=BB9_403 Depth=2
	jmp	.LBB9_403
.LBB9_418:                              # %while.end.1094
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-128(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-152(%rbp), %rax
	addq	$-3, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
# BB#419:                               # %do.end.1115
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_420
.LBB9_420:                              # %if.end.1116
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_421:                              # %sw.bb.1117
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_422
.LBB9_422:                              # %on_failure
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
	movl	$0, -420(%rbp)
# BB#423:                               # %do.body.1120
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -432(%rbp)
.LBB9_424:                              # %while.cond.1123
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -432(%rbp)
	movb	%cl, -969(%rbp)         # 1-byte Spill
	jle	.LBB9_428
# BB#425:                               # %land.rhs.1126
                                        #   in Loop: Header=BB9_424 Depth=2
	movb	$1, %al
	movq	-432(%rbp), %rcx
	subq	$2, %rcx
	movq	-208(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	-128(%rbp), %rcx
	movb	%al, -970(%rbp)         # 1-byte Spill
	je	.LBB9_427
# BB#426:                               # %lor.rhs.1133
                                        #   in Loop: Header=BB9_424 Depth=2
	movq	-432(%rbp), %rax
	subq	$2, %rax
	movq	-208(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	sete	%dl
	movb	%dl, -970(%rbp)         # 1-byte Spill
.LBB9_427:                              # %lor.end.1140
                                        #   in Loop: Header=BB9_424 Depth=2
	movb	-970(%rbp), %al         # 1-byte Reload
	movb	%al, -969(%rbp)         # 1-byte Spill
.LBB9_428:                              # %land.end.1141
                                        #   in Loop: Header=BB9_424 Depth=2
	movb	-969(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_429
	jmp	.LBB9_432
.LBB9_429:                              # %while.body.1143
                                        #   in Loop: Header=BB9_424 Depth=2
	movq	-432(%rbp), %rax
	subq	$1, %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-152(%rbp), %rcx
	addq	$-3, %rcx
	cmpq	%rcx, %rax
	jne	.LBB9_431
# BB#430:                               # %if.then.1151
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	$1, -420(%rbp)
	jmp	.LBB9_432
.LBB9_431:                              # %if.end.1152
                                        #   in Loop: Header=BB9_424 Depth=2
	movq	-432(%rbp), %rax
	subq	$3, %rax
	movq	-208(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -432(%rbp)
	jmp	.LBB9_424
.LBB9_432:                              # %while.end.1157
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_433
.LBB9_433:                              # %do.end.1159
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$0, -420(%rbp)
	je	.LBB9_435
# BB#434:                               # %if.then.1161
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-76(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	jmp	.LBB9_454
.LBB9_435:                              # %if.else.1164
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_436
.LBB9_436:                              # %do.body.1165
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_437
.LBB9_437:                              # %while.cond.1167
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_452
# BB#438:                               # %while.body.1173
                                        #   in Loop: Header=BB9_437 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_440
# BB#439:                               # %cond.true.1179
                                        #   in Loop: Header=BB9_437 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_451
	jmp	.LBB9_450
.LBB9_440:                              # %cond.false.1180
                                        #   in Loop: Header=BB9_437 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_442
# BB#441:                               # %cond.true.1187
                                        #   in Loop: Header=BB9_437 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB9_443
.LBB9_442:                              # %cond.false.1189
                                        #   in Loop: Header=BB9_437 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB9_443:                              # %cond.end.1193
                                        #   in Loop: Header=BB9_437 Depth=2
	movq	-984(%rbp), %rax        # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_445
# BB#444:                               # %cond.true.1202
                                        #   in Loop: Header=BB9_437 Depth=2
	xorl	%eax, %eax
	movl	%eax, -996(%rbp)        # 4-byte Spill
	jmp	.LBB9_449
.LBB9_445:                              # %cond.false.1203
                                        #   in Loop: Header=BB9_437 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_447
# BB#446:                               # %cond.true.1210
                                        #   in Loop: Header=BB9_437 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB9_448
.LBB9_447:                              # %cond.false.1212
                                        #   in Loop: Header=BB9_437 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB9_448:                              # %cond.end.1216
                                        #   in Loop: Header=BB9_437 Depth=2
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -996(%rbp)        # 4-byte Spill
.LBB9_449:                              # %cond.end.1220
                                        #   in Loop: Header=BB9_437 Depth=2
	movl	-996(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_451
.LBB9_450:                              # %if.then.1223
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_451:                              # %if.end.1224
                                        #   in Loop: Header=BB9_437 Depth=2
	jmp	.LBB9_437
.LBB9_452:                              # %while.end.1225
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-128(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-152(%rbp), %rax
	addq	$-3, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
# BB#453:                               # %do.end.1246
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_454
.LBB9_454:                              # %if.end.1247
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_455:                              # %sw.bb.1248
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
# BB#456:                               # %do.body.1250
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_457
.LBB9_457:                              # %while.cond.1252
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_472
# BB#458:                               # %while.body.1258
                                        #   in Loop: Header=BB9_457 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_460
# BB#459:                               # %cond.true.1264
                                        #   in Loop: Header=BB9_457 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_471
	jmp	.LBB9_470
.LBB9_460:                              # %cond.false.1265
                                        #   in Loop: Header=BB9_457 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_462
# BB#461:                               # %cond.true.1272
                                        #   in Loop: Header=BB9_457 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB9_463
.LBB9_462:                              # %cond.false.1274
                                        #   in Loop: Header=BB9_457 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB9_463:                              # %cond.end.1278
                                        #   in Loop: Header=BB9_457 Depth=2
	movq	-1016(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_465
# BB#464:                               # %cond.true.1287
                                        #   in Loop: Header=BB9_457 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB9_469
.LBB9_465:                              # %cond.false.1288
                                        #   in Loop: Header=BB9_457 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_467
# BB#466:                               # %cond.true.1295
                                        #   in Loop: Header=BB9_457 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB9_468
.LBB9_467:                              # %cond.false.1297
                                        #   in Loop: Header=BB9_457 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB9_468:                              # %cond.end.1301
                                        #   in Loop: Header=BB9_457 Depth=2
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
.LBB9_469:                              # %cond.end.1305
                                        #   in Loop: Header=BB9_457 Depth=2
	movl	-1028(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_471
.LBB9_470:                              # %if.then.1308
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_471:                              # %if.end.1309
                                        #   in Loop: Header=BB9_457 Depth=2
	jmp	.LBB9_457
.LBB9_472:                              # %while.end.1310
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-128(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-152(%rbp), %rax
	addq	$-3, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
# BB#473:                               # %do.end.1331
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_474:                              # %sw.bb.1332
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
	movq	-152(%rbp), %rdi
	movq	%rdi, -456(%rbp)
	movq	-152(%rbp), %rdi
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -464(%rbp)
	movq	-152(%rbp), %rcx
	addq	$-3, %rcx
	movq	%rcx, -472(%rbp)
	movq	-152(%rbp), %rcx
	addq	$-3, %rcx
	movq	%rcx, -152(%rbp)
	movq	-464(%rbp), %rcx
	addq	$-2, %rcx
	movq	%rcx, %rdi
	callq	extract_number
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rdx
	callq	mutually_exclusive_p
	cmpl	$0, %eax
	je	.LBB9_478
# BB#475:                               # %if.then.1342
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-472(%rbp), %rax
	movb	$15, (%rax)
# BB#476:                               # %do.body.1343
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-76(%rbp), %eax
	addl	$3, %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	movb	%cl, -2(%rdx)
	movl	-76(%rbp), %eax
	addl	$3, %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	movb	%cl, -1(%rdx)
# BB#477:                               # %do.end.1354
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_479
.LBB9_478:                              # %if.else.1355
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-472(%rbp), %rax
	movb	$14, (%rax)
.LBB9_479:                              # %if.end.1356
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_480:                              # %sw.bb.1357
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_481
.LBB9_481:                              # %unconditional_jump
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-152(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -152(%rbp)
	jmp	.LBB9_666
.LBB9_482:                              # %sw.bb.1361
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	extract_number
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB9_504
# BB#483:                               # %if.then.1366
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -480(%rbp)
	movl	-76(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -152(%rbp)
# BB#484:                               # %do.body.1371
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_485
.LBB9_485:                              # %while.cond.1374
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_500
# BB#486:                               # %while.body.1380
                                        #   in Loop: Header=BB9_485 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_488
# BB#487:                               # %cond.true.1386
                                        #   in Loop: Header=BB9_485 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_499
	jmp	.LBB9_498
.LBB9_488:                              # %cond.false.1387
                                        #   in Loop: Header=BB9_485 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_490
# BB#489:                               # %cond.true.1394
                                        #   in Loop: Header=BB9_485 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB9_491
.LBB9_490:                              # %cond.false.1396
                                        #   in Loop: Header=BB9_485 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB9_491:                              # %cond.end.1400
                                        #   in Loop: Header=BB9_485 Depth=2
	movq	-1048(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_493
# BB#492:                               # %cond.true.1409
                                        #   in Loop: Header=BB9_485 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB9_497
.LBB9_493:                              # %cond.false.1410
                                        #   in Loop: Header=BB9_485 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_495
# BB#494:                               # %cond.true.1417
                                        #   in Loop: Header=BB9_485 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB9_496
.LBB9_495:                              # %cond.false.1419
                                        #   in Loop: Header=BB9_485 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB9_496:                              # %cond.end.1423
                                        #   in Loop: Header=BB9_485 Depth=2
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
.LBB9_497:                              # %cond.end.1427
                                        #   in Loop: Header=BB9_485 Depth=2
	movl	-1060(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_499
.LBB9_498:                              # %if.then.1430
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_499:                              # %if.end.1431
                                        #   in Loop: Header=BB9_485 Depth=2
	jmp	.LBB9_485
.LBB9_500:                              # %while.end.1432
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-480(%rbp), %rdi
	callq	extract_number
	movl	%eax, -492(%rbp)
	movslq	-492(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-480(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -192(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#501:                               # %do.body.1450
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-76(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-480(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-480(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#502:                               # %do.end.1458
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_503
.LBB9_503:                              # %do.end.1460
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_505
.LBB9_504:                              # %if.else.1461
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_422
.LBB9_505:                              # %if.end.1462
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_506:                              # %sw.bb.1463
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	extract_number
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB9_528
# BB#507:                               # %if.then.1468
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -504(%rbp)
	movl	-76(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
# BB#508:                               # %do.body.1472
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_509
.LBB9_509:                              # %while.cond.1475
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_524
# BB#510:                               # %while.body.1481
                                        #   in Loop: Header=BB9_509 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_512
# BB#511:                               # %cond.true.1487
                                        #   in Loop: Header=BB9_509 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_523
	jmp	.LBB9_522
.LBB9_512:                              # %cond.false.1488
                                        #   in Loop: Header=BB9_509 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_514
# BB#513:                               # %cond.true.1495
                                        #   in Loop: Header=BB9_509 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB9_515
.LBB9_514:                              # %cond.false.1497
                                        #   in Loop: Header=BB9_509 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB9_515:                              # %cond.end.1501
                                        #   in Loop: Header=BB9_509 Depth=2
	movq	-1080(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_517
# BB#516:                               # %cond.true.1510
                                        #   in Loop: Header=BB9_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB9_521
.LBB9_517:                              # %cond.false.1511
                                        #   in Loop: Header=BB9_509 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_519
# BB#518:                               # %cond.true.1518
                                        #   in Loop: Header=BB9_509 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB9_520
.LBB9_519:                              # %cond.false.1520
                                        #   in Loop: Header=BB9_509 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB9_520:                              # %cond.end.1524
                                        #   in Loop: Header=BB9_509 Depth=2
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -1092(%rbp)       # 4-byte Spill
.LBB9_521:                              # %cond.end.1528
                                        #   in Loop: Header=BB9_509 Depth=2
	movl	-1092(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_523
.LBB9_522:                              # %if.then.1531
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_523:                              # %if.end.1532
                                        #   in Loop: Header=BB9_509 Depth=2
	jmp	.LBB9_509
.LBB9_524:                              # %while.end.1533
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-504(%rbp), %rdi
	callq	extract_number
	movl	%eax, -516(%rbp)
	movslq	-516(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-504(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -192(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#525:                               # %do.body.1551
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-76(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-504(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-504(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#526:                               # %do.end.1559
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_527
.LBB9_527:                              # %do.end.1561
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_481
.LBB9_528:                              # %if.else.1562
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -152(%rbp)
# BB#529:                               # %if.end.1564
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_530:                              # %sw.bb.1565
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-152(%rbp), %rdi
	callq	extract_number_and_incr
	leaq	-152(%rbp), %rdi
	movl	%eax, -76(%rbp)
	movq	-152(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -528(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
# BB#531:                               # %do.body.1571
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_532
.LBB9_532:                              # %while.cond.1574
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_547
# BB#533:                               # %while.body.1580
                                        #   in Loop: Header=BB9_532 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_535
# BB#534:                               # %cond.true.1586
                                        #   in Loop: Header=BB9_532 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_546
	jmp	.LBB9_545
.LBB9_535:                              # %cond.false.1587
                                        #   in Loop: Header=BB9_532 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_537
# BB#536:                               # %cond.true.1594
                                        #   in Loop: Header=BB9_532 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB9_538
.LBB9_537:                              # %cond.false.1596
                                        #   in Loop: Header=BB9_532 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB9_538:                              # %cond.end.1600
                                        #   in Loop: Header=BB9_532 Depth=2
	movq	-1112(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_540
# BB#539:                               # %cond.true.1609
                                        #   in Loop: Header=BB9_532 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB9_544
.LBB9_540:                              # %cond.false.1610
                                        #   in Loop: Header=BB9_532 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_542
# BB#541:                               # %cond.true.1617
                                        #   in Loop: Header=BB9_532 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB9_543
.LBB9_542:                              # %cond.false.1619
                                        #   in Loop: Header=BB9_532 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB9_543:                              # %cond.end.1623
                                        #   in Loop: Header=BB9_532 Depth=2
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
.LBB9_544:                              # %cond.end.1627
                                        #   in Loop: Header=BB9_532 Depth=2
	movl	-1124(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_546
.LBB9_545:                              # %if.then.1630
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_546:                              # %if.end.1631
                                        #   in Loop: Header=BB9_532 Depth=2
	jmp	.LBB9_532
.LBB9_547:                              # %while.end.1632
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-528(%rbp), %rdi
	callq	extract_number
	movl	%eax, -540(%rbp)
	movslq	-540(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdi, (%rdx,%rcx,8)
	movq	-528(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -192(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	$-1, (%rdx,%rcx,8)
# BB#548:                               # %do.body.1650
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-76(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-528(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-528(%rbp), %rdx
	movb	%cl, 1(%rdx)
# BB#549:                               # %do.end.1658
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_550
.LBB9_550:                              # %do.end.1660
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_551:                              # %sw.bb.1661
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$25, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -541(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	je	.LBB9_553
# BB#552:                               # %cond.true.1669
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB9_554
.LBB9_553:                              # %cond.false.1670
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB9_554:                              # %cond.end.1671
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_557
# BB#555:                               # %lor.lhs.false.1675
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_557
# BB#556:                               # %lor.lhs.false.1677
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_558
.LBB9_557:                              # %if.then.1680
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpb	$0, -541(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -541(%rbp)
	jmp	.LBB9_568
.LBB9_558:                              # %if.else.1685
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_560
# BB#559:                               # %cond.true.1689
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB9_561
.LBB9_560:                              # %cond.false.1692
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1156(%rbp)       # 4-byte Spill
.LBB9_561:                              # %cond.end.1695
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movl	%eax, -548(%rbp)
	movslq	-548(%rbp), %rcx
	movsbl	re_syntax_table(,%rcx), %eax
	movl	%eax, -556(%rbp)
	movq	-128(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB9_563
# BB#562:                               # %if.then.1702
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_563:                              # %if.end.1703
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -552(%rbp)
	movl	$1, -564(%rbp)
	movslq	-552(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	movl	%ecx, -560(%rbp)
	cmpl	$1, -556(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$1, -560(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jne	.LBB9_566
# BB#564:                               # %lor.lhs.false.1714
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$1, -556(%rbp)
	jne	.LBB9_567
# BB#565:                               # %land.lhs.true.1717
                                        #   in Loop: Header=BB9_65 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_566
	jmp	.LBB9_567
.LBB9_566:                              # %if.then.1718
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpb	$0, -541(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -541(%rbp)
.LBB9_567:                              # %if.end.1723
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_568
.LBB9_568:                              # %if.end.1724
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpb	$0, -541(%rbp)
	je	.LBB9_570
# BB#569:                               # %if.then.1726
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_570:                              # %if.else.1727
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_571:                              # %sw.bb.1728
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_573
# BB#572:                               # %if.then.1731
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_573:                              # %if.else.1732
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_574
.LBB9_574:                              # %while.cond.1738
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_578
# BB#575:                               # %while.body.1741
                                        #   in Loop: Header=BB9_574 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_577
# BB#576:                               # %if.then.1744
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_577:                              # %if.end.1745
                                        #   in Loop: Header=BB9_574 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_574
.LBB9_578:                              # %while.end.1746
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -572(%rbp)
	movl	$1, -584(%rbp)
	movslq	-572(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	movl	%ecx, -580(%rbp)
	cmpl	$1, -580(%rbp)
	je	.LBB9_580
# BB#579:                               # %if.then.1753
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_580:                              # %if.end.1754
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	je	.LBB9_582
# BB#581:                               # %cond.true.1756
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB9_583
.LBB9_582:                              # %cond.false.1757
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB9_583:                              # %cond.end.1758
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_591
# BB#584:                               # %lor.lhs.false.1762
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_591
# BB#585:                               # %if.then.1764
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_587
# BB#586:                               # %cond.true.1767
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1180(%rbp)       # 4-byte Spill
	jmp	.LBB9_588
.LBB9_587:                              # %cond.false.1770
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1180(%rbp)       # 4-byte Spill
.LBB9_588:                              # %cond.end.1773
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1180(%rbp), %eax       # 4-byte Reload
	movl	%eax, -568(%rbp)
	movslq	-568(%rbp), %rcx
	movsbl	re_syntax_table(,%rcx), %eax
	movl	%eax, -576(%rbp)
	cmpl	$1, -576(%rbp)
	jne	.LBB9_590
# BB#589:                               # %if.then.1780
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_590:                              # %if.end.1781
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_591
.LBB9_591:                              # %if.end.1782
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_592
.LBB9_592:                              # %if.end.1783
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_593:                              # %sw.bb.1784
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	je	.LBB9_595
# BB#594:                               # %cond.true.1786
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB9_596
.LBB9_595:                              # %cond.false.1787
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB9_596:                              # %cond.end.1788
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_598
# BB#597:                               # %lor.lhs.false.1792
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_599
.LBB9_598:                              # %if.then.1794
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_599:                              # %if.else.1795
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_601
# BB#600:                               # %cond.true.1803
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
	jmp	.LBB9_602
.LBB9_601:                              # %cond.false.1806
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
.LBB9_602:                              # %cond.end.1809
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1204(%rbp), %eax       # 4-byte Reload
	movl	%eax, -588(%rbp)
	movslq	-588(%rbp), %rcx
	movsbl	re_syntax_table(,%rcx), %eax
	movl	%eax, -596(%rbp)
	cmpl	$1, -596(%rbp)
	je	.LBB9_604
# BB#603:                               # %if.then.1816
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_604:                              # %if.end.1817
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB9_610
# BB#605:                               # %if.then.1820
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_607
# BB#606:                               # %if.then.1823
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_607:                              # %if.end.1824
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -592(%rbp)
	movl	$1, -604(%rbp)
	movslq	-592(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	movl	%ecx, -600(%rbp)
	cmpl	$1, -600(%rbp)
	jne	.LBB9_609
# BB#608:                               # %if.then.1831
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_609:                              # %if.end.1832
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_610
.LBB9_610:                              # %if.end.1833
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_611
.LBB9_611:                              # %if.end.1834
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_612:                              # %sw.bb.1835
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_614
# BB#613:                               # %if.then.1838
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_614:                              # %if.else.1839
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_615
.LBB9_615:                              # %while.cond.1844
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_619
# BB#616:                               # %while.body.1847
                                        #   in Loop: Header=BB9_615 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_618
# BB#617:                               # %if.then.1850
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_618:                              # %if.end.1851
                                        #   in Loop: Header=BB9_615 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_615
.LBB9_619:                              # %while.end.1852
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -612(%rbp)
	movslq	-612(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	movl	%ecx, -620(%rbp)
	cmpl	$1, -620(%rbp)
	je	.LBB9_622
# BB#620:                               # %land.lhs.true.1859
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$2, -620(%rbp)
	je	.LBB9_622
# BB#621:                               # %if.then.1862
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_622:                              # %if.end.1863
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	je	.LBB9_624
# BB#623:                               # %cond.true.1865
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB9_625
.LBB9_624:                              # %cond.false.1866
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB9_625:                              # %cond.end.1867
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_634
# BB#626:                               # %lor.lhs.false.1871
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_634
# BB#627:                               # %if.then.1873
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_629
# BB#628:                               # %cond.true.1876
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB9_630
.LBB9_629:                              # %cond.false.1879
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
.LBB9_630:                              # %cond.end.1882
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	%eax, -608(%rbp)
	movslq	-608(%rbp), %rcx
	movsbl	re_syntax_table(,%rcx), %eax
	movl	%eax, -616(%rbp)
	cmpl	$1, -616(%rbp)
	je	.LBB9_632
# BB#631:                               # %lor.lhs.false.1889
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$2, -616(%rbp)
	jne	.LBB9_633
.LBB9_632:                              # %if.then.1892
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_633:                              # %if.end.1893
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_634
.LBB9_634:                              # %if.end.1894
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_635
.LBB9_635:                              # %if.end.1895
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_636:                              # %sw.bb.1896
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	je	.LBB9_638
# BB#637:                               # %cond.true.1898
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB9_639
.LBB9_638:                              # %cond.false.1899
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB9_639:                              # %cond.end.1900
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_641
# BB#640:                               # %lor.lhs.false.1904
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_642
.LBB9_641:                              # %if.then.1906
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_642:                              # %if.else.1907
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_644
# BB#643:                               # %cond.true.1914
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-96(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1252(%rbp)       # 4-byte Spill
	jmp	.LBB9_645
.LBB9_644:                              # %cond.false.1917
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -1252(%rbp)       # 4-byte Spill
.LBB9_645:                              # %cond.end.1920
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1252(%rbp), %eax       # 4-byte Reload
	movl	%eax, -624(%rbp)
	movslq	-624(%rbp), %rcx
	movsbl	re_syntax_table(,%rcx), %eax
	movl	%eax, -632(%rbp)
	cmpl	$1, -632(%rbp)
	je	.LBB9_648
# BB#646:                               # %land.lhs.true.1927
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$2, -632(%rbp)
	je	.LBB9_648
# BB#647:                               # %if.then.1930
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_648:                              # %if.end.1931
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB9_655
# BB#649:                               # %if.then.1934
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_651
# BB#650:                               # %if.then.1937
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_651:                              # %if.end.1938
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -628(%rbp)
	movslq	-628(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	movl	%ecx, -636(%rbp)
	cmpl	$1, -636(%rbp)
	je	.LBB9_653
# BB#652:                               # %lor.lhs.false.1945
                                        #   in Loop: Header=BB9_65 Depth=1
	cmpl	$2, -636(%rbp)
	jne	.LBB9_654
.LBB9_653:                              # %if.then.1948
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_654:                              # %if.end.1949
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_655
.LBB9_655:                              # %if.end.1950
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_656
.LBB9_656:                              # %if.end.1951
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_666
.LBB9_657:                              # %sw.bb.1952
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-152(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$29, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movb	%dl, -637(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB9_658:                              # %while.cond.1961
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_662
# BB#659:                               # %while.body.1964
                                        #   in Loop: Header=BB9_658 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB9_661
# BB#660:                               # %if.then.1967
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_661:                              # %if.end.1968
                                        #   in Loop: Header=BB9_658 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB9_658
.LBB9_662:                              # %while.end.1969
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -648(%rbp)
	movl	$1, -644(%rbp)
	movslq	-648(%rbp), %rax
	movsbl	re_syntax_table(,%rax), %ecx
	cmpl	-76(%rbp), %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movsbl	-637(%rbp), %esi
	xorl	%esi, %ecx
	cmpl	$0, %ecx
	je	.LBB9_664
# BB#663:                               # %if.then.1980
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_667
.LBB9_664:                              # %if.end.1981
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-644(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB9_666
.LBB9_665:                              # %sw.default
	callq	abort
.LBB9_666:                              # %sw.epilog
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_65
.LBB9_667:                              # %fail
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_670 Depth 3
	cmpq	$0, -184(%rbp)
	je	.LBB9_709
# BB#668:                               # %if.then.1987
                                        #   in Loop: Header=BB9_667 Depth=2
	jmp	.LBB9_669
.LBB9_669:                              # %do.body.1988
                                        #   in Loop: Header=BB9_667 Depth=2
	jmp	.LBB9_670
.LBB9_670:                              # %while.cond.1989
                                        #   Parent Loop BB9_65 Depth=1
                                        #     Parent Loop BB9_667 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jae	.LBB9_679
# BB#671:                               # %while.body.1994
                                        #   in Loop: Header=BB9_670 Depth=3
	jmp	.LBB9_672
.LBB9_672:                              # %do.body.1995
                                        #   in Loop: Header=BB9_670 Depth=3
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -672(%rbp)
	cmpq	$-1, -672(%rbp)
	jne	.LBB9_676
# BB#673:                               # %if.then.2003
                                        #   in Loop: Header=BB9_670 Depth=3
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -680(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -672(%rbp)
# BB#674:                               # %do.body.2014
                                        #   in Loop: Header=BB9_670 Depth=3
	movq	-672(%rbp), %rax
	andq	$255, %rax
	movb	%al, %cl
	movq	-680(%rbp), %rax
	movb	%cl, (%rax)
	movq	-672(%rbp), %rax
	sarq	$8, %rax
	movb	%al, %cl
	movq	-680(%rbp), %rax
	movb	%cl, 1(%rax)
# BB#675:                               # %do.end.2022
                                        #   in Loop: Header=BB9_670 Depth=3
	jmp	.LBB9_677
.LBB9_676:                              # %if.else.2023
                                        #   in Loop: Header=BB9_670 Depth=3
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	-672(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	-672(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB9_677:                              # %if.end.2036
                                        #   in Loop: Header=BB9_670 Depth=3
	jmp	.LBB9_678
.LBB9_678:                              # %do.end.2038
                                        #   in Loop: Header=BB9_670 Depth=3
	jmp	.LBB9_670
.LBB9_679:                              # %while.end.2039
                                        #   in Loop: Header=BB9_667 Depth=2
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -664(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -656(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-208(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
# BB#680:                               # %do.end.2057
                                        #   in Loop: Header=BB9_667 Depth=2
	movq	-664(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -664(%rbp)
	movzbl	(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -1256(%rbp)       # 4-byte Spill
	je	.LBB9_703
	jmp	.LBB9_734
.LBB9_734:                              # %do.end.2057
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	je	.LBB9_701
	jmp	.LBB9_735
.LBB9_735:                              # %do.end.2057
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -1264(%rbp)       # 4-byte Spill
	je	.LBB9_681
	jmp	.LBB9_736
.LBB9_736:                              # %do.end.2057
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	je	.LBB9_701
	jmp	.LBB9_737
.LBB9_737:                              # %do.end.2057
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	subl	$17, %eax
	movl	%eax, -1272(%rbp)       # 4-byte Spill
	je	.LBB9_682
	jmp	.LBB9_738
.LBB9_738:                              # %do.end.2057
                                        #   in Loop: Header=BB9_65 Depth=1
	movl	-1256(%rbp), %eax       # 4-byte Reload
	subl	$19, %eax
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	je	.LBB9_701
	jmp	.LBB9_704
.LBB9_681:                              # %sw.bb.2060
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_702
.LBB9_682:                              # %sw.bb.2061
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_683
.LBB9_683:                              # %do.body.2062
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_684
.LBB9_684:                              # %while.cond.2064
                                        #   Parent Loop BB9_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB9_699
# BB#685:                               # %while.body.2070
                                        #   in Loop: Header=BB9_684 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$20, re_max_failures, %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_687
# BB#686:                               # %cond.true.2076
                                        #   in Loop: Header=BB9_684 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_698
	jmp	.LBB9_697
.LBB9_687:                              # %cond.false.2077
                                        #   in Loop: Header=BB9_684 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_689
# BB#688:                               # %cond.true.2084
                                        #   in Loop: Header=BB9_684 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB9_690
.LBB9_689:                              # %cond.false.2086
                                        #   in Loop: Header=BB9_684 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB9_690:                              # %cond.end.2090
                                        #   in Loop: Header=BB9_684 Depth=2
	movq	-1288(%rbp), %rax       # 8-byte Reload
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -688(%rbp)
	movq	-688(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB9_692
# BB#691:                               # %cond.true.2099
                                        #   in Loop: Header=BB9_684 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB9_696
.LBB9_692:                              # %cond.false.2100
                                        #   in Loop: Header=BB9_684 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_694
# BB#693:                               # %cond.true.2107
                                        #   in Loop: Header=BB9_684 Depth=2
	imulq	$20, re_max_failures, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB9_695
.LBB9_694:                              # %cond.false.2109
                                        #   in Loop: Header=BB9_684 Depth=2
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	shlq	$2, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB9_695:                              # %cond.end.2113
                                        #   in Loop: Header=BB9_684 Depth=2
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	shrq	$3, %rax
	movq	%rax, -200(%rbp)
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
.LBB9_696:                              # %cond.end.2117
                                        #   in Loop: Header=BB9_684 Depth=2
	movl	-1300(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB9_698
.LBB9_697:                              # %if.then.2120
	movq	$-2, -8(%rbp)
	jmp	.LBB9_732
.LBB9_698:                              # %if.end.2121
                                        #   in Loop: Header=BB9_684 Depth=2
	jmp	.LBB9_684
.LBB9_699:                              # %while.end.2122
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-656(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-664(%rbp), %rax
	addq	$-2, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
# BB#700:                               # %do.end.2143
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_701
.LBB9_701:                              # %sw.bb.2144
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-656(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB9_702:                              # %continue_failure_jump
                                        #   in Loop: Header=BB9_65 Depth=1
	leaq	-664(%rbp), %rdi
	callq	extract_number_and_incr
	movl	%eax, -76(%rbp)
	movq	-664(%rbp), %rdi
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -152(%rbp)
	jmp	.LBB9_705
.LBB9_703:                              # %sw.bb.2148
                                        #   in Loop: Header=BB9_667 Depth=2
	jmp	.LBB9_667
.LBB9_704:                              # %sw.default.2149
	callq	abort
.LBB9_705:                              # %sw.epilog.2150
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB9_708
# BB#706:                               # %land.lhs.true.2153
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	ja	.LBB9_708
# BB#707:                               # %if.then.2156
                                        #   in Loop: Header=BB9_65 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_708:                              # %if.end.2157
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_710
.LBB9_709:                              # %if.else.2158
	jmp	.LBB9_711
.LBB9_710:                              # %if.end.2159
                                        #   in Loop: Header=BB9_65 Depth=1
	jmp	.LBB9_65
.LBB9_711:                              # %for.end.2160
	cmpl	$0, -236(%rbp)
	je	.LBB9_713
# BB#712:                               # %if.then.2162
	jmp	.LBB9_91
.LBB9_713:                              # %if.end.2163
	jmp	.LBB9_714
.LBB9_714:                              # %do.body.2164
	jmp	.LBB9_715
.LBB9_715:                              # %do.body.2165
	cmpq	$0, -224(%rbp)
	je	.LBB9_717
# BB#716:                               # %if.then.2167
	movq	$0, -224(%rbp)
.LBB9_717:                              # %if.end.2168
	jmp	.LBB9_718
.LBB9_718:                              # %do.end.2170
	jmp	.LBB9_719
.LBB9_719:                              # %do.body.2171
	cmpq	$0, -232(%rbp)
	je	.LBB9_721
# BB#720:                               # %if.then.2173
	movq	$0, -232(%rbp)
.LBB9_721:                              # %if.end.2174
	jmp	.LBB9_722
.LBB9_722:                              # %do.end.2176
	jmp	.LBB9_723
.LBB9_723:                              # %do.body.2177
	cmpq	$0, -248(%rbp)
	je	.LBB9_725
# BB#724:                               # %if.then.2179
	movq	$0, -248(%rbp)
.LBB9_725:                              # %if.end.2180
	jmp	.LBB9_726
.LBB9_726:                              # %do.end.2182
	jmp	.LBB9_727
.LBB9_727:                              # %do.body.2183
	cmpq	$0, -256(%rbp)
	je	.LBB9_729
# BB#728:                               # %if.then.2185
	movq	$0, -256(%rbp)
.LBB9_729:                              # %if.end.2186
	jmp	.LBB9_730
.LBB9_730:                              # %do.end.2188
	jmp	.LBB9_731
.LBB9_731:                              # %do.end.2190
	movq	$-1, -8(%rbp)
.LBB9_732:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	re_match_2_internal, .Lfunc_end9-re_match_2_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_216
	.quad	.LBB9_217
	.quad	.LBB9_218
	.quad	.LBB9_242
	.quad	.LBB9_256
	.quad	.LBB9_256
	.quad	.LBB9_280
	.quad	.LBB9_299
	.quad	.LBB9_300
	.quad	.LBB9_335
	.quad	.LBB9_350
	.quad	.LBB9_360
	.quad	.LBB9_367
	.quad	.LBB9_480
	.quad	.LBB9_455
	.quad	.LBB9_370
	.quad	.LBB9_421
	.quad	.LBB9_389
	.quad	.LBB9_474
	.quad	.LBB9_482
	.quad	.LBB9_506
	.quad	.LBB9_530
	.quad	.LBB9_571
	.quad	.LBB9_593
	.quad	.LBB9_551
	.quad	.LBB9_551
	.quad	.LBB9_612
	.quad	.LBB9_636
	.quad	.LBB9_657
	.quad	.LBB9_657

	.text
	.globl	re_match
	.align	16, 0x90
	.type	re_match,@function
re_match:                               # @re_match
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %r10
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2_internal
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	re_match, .Lfunc_end10-re_match
	.cfi_endproc

	.globl	re_match_2
	.align	16, 0x90
	.type	re_match_2,@function
re_match_2:                             # @re_match_2
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
	subq	$96, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	re_match_2_internal
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	re_match_2, .Lfunc_end11-re_match_2
	.cfi_endproc

	.globl	re_compile_pattern
	.align	16, 0x90
	.type	re_compile_pattern,@function
re_compile_pattern:                     # @re_compile_pattern
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	56(%rdx), %al
	andb	$-7, %al
	movb	%al, 56(%rdx)
	movq	-32(%rbp), %rdx
	movb	56(%rdx), %al
	andb	$-17, %al
	movb	%al, 56(%rdx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	re_syntax_options, %rdx
	movq	-32(%rbp), %rcx
	callq	regex_compile
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movslq	-36(%rbp), %rax
	movq	re_error_msgid(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB12_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	re_compile_pattern, .Lfunc_end12-re_compile_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	regex_compile,@function
regex_compile:                          # @regex_compile
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
	subq	$1232, %rsp             # imm = 0x4D0
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -144(%rbp)
	movb	$0, -169(%rbp)
	movl	$0, -176(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_2:                               # %if.end
	movq	$32, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-9, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-65, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$-33, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movb	56(%rax), %dl
	andb	$127, %dl
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	callq	init_syntax_once
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB13_14
# BB#3:                                 # %if.then.13
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_5
# BB#4:                                 # %if.then.14
	movl	$32, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	xrealloc
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB13_6
.LBB13_5:                               # %if.else
	movl	$32, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB13_6:                               # %if.end.20
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_13
# BB#7:                                 # %if.then.23
	jmp	.LBB13_8
.LBB13_8:                               # %do.body
	jmp	.LBB13_9
.LBB13_9:                               # %do.body.24
	cmpq	$0, -168(%rbp)
	je	.LBB13_11
# BB#10:                                # %if.then.27
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_11:                              # %if.end.29
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_13:                              # %if.end.32
	movq	-40(%rbp), %rax
	movq	$32, 8(%rax)
.LBB13_14:                              # %if.end.34
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -128(%rbp)
.LBB13_15:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_46 Depth 2
                                        #     Child Loop BB13_772 Depth 2
                                        #     Child Loop BB13_812 Depth 2
                                        #     Child Loop BB13_898 Depth 2
                                        #     Child Loop BB13_934 Depth 2
                                        #     Child Loop BB13_1090 Depth 2
                                        #     Child Loop BB13_1138 Depth 2
                                        #     Child Loop BB13_1035 Depth 2
                                        #     Child Loop BB13_1058 Depth 2
                                        #     Child Loop BB13_958 Depth 2
                                        #     Child Loop BB13_1114 Depth 2
                                        #     Child Loop BB13_1006 Depth 2
                                        #     Child Loop BB13_982 Depth 2
                                        #     Child Loop BB13_1195 Depth 2
                                        #     Child Loop BB13_1162 Depth 2
                                        #     Child Loop BB13_310 Depth 2
                                        #     Child Loop BB13_330 Depth 2
                                        #     Child Loop BB13_353 Depth 2
                                        #     Child Loop BB13_376 Depth 2
                                        #       Child Loop BB13_421 Depth 3
                                        #       Child Loop BB13_454 Depth 3
                                        #       Child Loop BB13_492 Depth 3
                                        #     Child Loop BB13_503 Depth 2
                                        #     Child Loop BB13_510 Depth 2
                                        #     Child Loop BB13_533 Depth 2
                                        #     Child Loop BB13_282 Depth 2
                                        #     Child Loop BB13_113 Depth 2
                                        #     Child Loop BB13_162 Depth 2
                                        #     Child Loop BB13_181 Depth 2
                                        #     Child Loop BB13_185 Depth 2
                                        #     Child Loop BB13_211 Depth 2
                                        #     Child Loop BB13_232 Depth 2
                                        #     Child Loop BB13_254 Depth 2
                                        #     Child Loop BB13_685 Depth 2
                                        #     Child Loop BB13_579 Depth 2
                                        #     Child Loop BB13_632 Depth 2
                                        #     Child Loop BB13_73 Depth 2
                                        #     Child Loop BB13_28 Depth 2
                                        #     Child Loop BB13_713 Depth 2
                                        #     Child Loop BB13_736 Depth 2
                                        #     Child Loop BB13_1245 Depth 2
                                        #     Child Loop BB13_1266 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_19
# BB#16:                                # %if.then.37
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -176(%rbp)
	je	.LBB13_18
# BB#17:                                # %if.then.39
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -176(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB13_15
.LBB13_18:                              # %if.end.40
	jmp	.LBB13_1292
.LBB13_19:                              # %if.end.41
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %do.body.42
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_22
# BB#21:                                # %if.then.44
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_22:                              # %if.end.45
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -204(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-204(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#23:                                # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -956(%rbp)        # 4-byte Spill
	movl	%ecx, -960(%rbp)        # 4-byte Spill
	je	.LBB13_546
	jmp	.LBB13_1333
.LBB13_1333:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
	je	.LBB13_24
	jmp	.LBB13_1334
.LBB13_1334:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -968(%rbp)        # 4-byte Spill
	je	.LBB13_68
	jmp	.LBB13_1335
.LBB13_1335:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
	je	.LBB13_540
	jmp	.LBB13_1336
.LBB13_1336:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -976(%rbp)        # 4-byte Spill
	je	.LBB13_543
	jmp	.LBB13_1337
.LBB13_1337:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -980(%rbp)        # 4-byte Spill
	je	.LBB13_100
	jmp	.LBB13_1338
.LBB13_1338:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -984(%rbp)        # 4-byte Spill
	je	.LBB13_95
	jmp	.LBB13_1339
.LBB13_1339:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -988(%rbp)        # 4-byte Spill
	je	.LBB13_280
	jmp	.LBB13_1340
.LBB13_1340:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
	je	.LBB13_95
	jmp	.LBB13_1341
.LBB13_1341:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -996(%rbp)        # 4-byte Spill
	je	.LBB13_302
	jmp	.LBB13_1342
.LBB13_1342:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	je	.LBB13_556
	jmp	.LBB13_1343
.LBB13_1343:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	je	.LBB13_41
	jmp	.LBB13_1344
.LBB13_1344:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	je	.LBB13_552
	jmp	.LBB13_1345
.LBB13_1345:                            # %do.end.47
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	je	.LBB13_549
	jmp	.LBB13_1221
.LBB13_24:                              # %sw.bb
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, whitespace_regexp
	je	.LBB13_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -176(%rbp)
	je	.LBB13_27
.LBB13_26:                              # %if.then.50
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_27:                              # %if.end.51
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_28
.LBB13_28:                              # %while.cond.52
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_32
# BB#29:                                # %while.body.55
                                        #   in Loop: Header=BB13_28 Depth=2
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB13_31
# BB#30:                                # %if.then.59
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_32
.LBB13_31:                              # %if.end.60
                                        #   in Loop: Header=BB13_28 Depth=2
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB13_28
.LBB13_32:                              # %while.end
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_40
# BB#33:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB13_39
# BB#34:                                # %lor.lhs.false.66
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB13_39
# BB#35:                                # %lor.lhs.false.70
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB13_39
# BB#36:                                # %lor.lhs.false.74
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB13_40
# BB#37:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_40
# BB#38:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-216(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB13_40
.LBB13_39:                              # %if.then.86
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_40:                              # %if.end.87
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -176(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	whitespace_regexp, %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -96(%rbp)
	jmp	.LBB13_1291
.LBB13_41:                              # %sw.bb.90
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB13_44
# BB#42:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB13_44
# BB#43:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_begline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB13_66
.LBB13_44:                              # %if.then.100
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_45
.LBB13_45:                              # %do.body.101
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_46
.LBB13_46:                              # %while.cond.102
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_64
# BB#47:                                # %while.body.107
                                        #   in Loop: Header=BB13_46 Depth=2
	jmp	.LBB13_48
.LBB13_48:                              # %do.body.108
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_50
# BB#49:                                # %if.then.113
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_50:                              # %if.end.114
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_52
# BB#51:                                # %if.then.119
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_52:                              # %if.end.121
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_54
# BB#53:                                # %if.then.129
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_54:                              # %if.end.130
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-224(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_62
# BB#55:                                # %if.then.134
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_57
# BB#56:                                # %if.then.145
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-232(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_57:                              # %if.end.150
                                        #   in Loop: Header=BB13_46 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_59
# BB#58:                                # %if.then.152
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-232(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_59:                              # %if.end.157
                                        #   in Loop: Header=BB13_46 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_61
# BB#60:                                # %if.then.159
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-232(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-224(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_61:                              # %if.end.164
                                        #   in Loop: Header=BB13_46 Depth=2
	jmp	.LBB13_62
.LBB13_62:                              # %if.end.165
                                        #   in Loop: Header=BB13_46 Depth=2
	jmp	.LBB13_63
.LBB13_63:                              # %do.end.166
                                        #   in Loop: Header=BB13_46 Depth=2
	jmp	.LBB13_46
.LBB13_64:                              # %while.end.167
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$9, %eax
	movl	$11, %ecx
	movq	-32(%rbp), %rdx
	andq	$4194304, %rdx          # imm = 0x400000
	cmpq	$0, %rdx
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
# BB#65:                                # %do.end.172
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_67
.LBB13_66:                              # %if.else.173
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_67:                              # %if.end.174
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_68:                              # %sw.bb.175
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_71
# BB#69:                                # %lor.lhs.false.178
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB13_71
# BB#70:                                # %lor.lhs.false.181
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	at_endline_loc_p
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB13_93
.LBB13_71:                              # %if.then.185
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_72
.LBB13_72:                              # %do.body.186
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_73
.LBB13_73:                              # %while.cond.187
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_91
# BB#74:                                # %while.body.196
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_75
.LBB13_75:                              # %do.body.197
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_77
# BB#76:                                # %if.then.203
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_77:                              # %if.end.204
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_79
# BB#78:                                # %if.then.210
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_79:                              # %if.end.212
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_81
# BB#80:                                # %if.then.221
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_81:                              # %if.end.222
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-240(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_89
# BB#82:                                # %if.then.226
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-248(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_84
# BB#83:                                # %if.then.238
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-248(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_84:                              # %if.end.243
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_86
# BB#85:                                # %if.then.245
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-248(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_86:                              # %if.end.250
                                        #   in Loop: Header=BB13_73 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_88
# BB#87:                                # %if.then.252
                                        #   in Loop: Header=BB13_73 Depth=2
	movq	-248(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_88:                              # %if.end.257
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_89
.LBB13_89:                              # %if.end.258
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_90
.LBB13_90:                              # %do.end.259
                                        #   in Loop: Header=BB13_73 Depth=2
	jmp	.LBB13_73
.LBB13_91:                              # %while.end.260
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$10, %eax
	movl	$12, %ecx
	movq	-32(%rbp), %rdx
	andq	$4194304, %rdx          # imm = 0x400000
	cmpq	$0, %rdx
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
# BB#92:                                # %do.end.266
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_94
.LBB13_93:                              # %if.else.267
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_94:                              # %if.end.268
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_95:                              # %sw.bb.269
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB13_97
# BB#96:                                # %lor.lhs.false.272
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB13_98
.LBB13_97:                              # %if.then.275
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_98:                              # %if.end.276
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_99
.LBB13_99:                              # %handle_plus
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_100
.LBB13_100:                             # %sw.bb.277
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB13_112
# BB#101:                               # %if.then.279
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB13_108
# BB#102:                               # %if.then.282
	jmp	.LBB13_103
.LBB13_103:                             # %do.body.283
	jmp	.LBB13_104
.LBB13_104:                             # %do.body.284
	cmpq	$0, -168(%rbp)
	je	.LBB13_106
# BB#105:                               # %if.then.287
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_106:                             # %if.end.289
	jmp	.LBB13_107
.LBB13_107:                             # %do.end.290
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$13, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_108:                             # %if.else.293
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	jne	.LBB13_110
# BB#109:                               # %if.then.296
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_110:                             # %if.end.297
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_111
.LBB13_111:                             # %if.end.298
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_112
.LBB13_112:                             # %if.end.299
                                        #   in Loop: Header=BB13_15 Depth=1
	movb	$0, -249(%rbp)
	movb	$0, -250(%rbp)
	movb	$1, -251(%rbp)
.LBB13_113:                             # %for.cond
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	andq	$1048576, %rax          # imm = 0x100000
	cmpq	$0, %rax
	je	.LBB13_118
# BB#114:                               # %land.lhs.true.302
                                        #   in Loop: Header=BB13_113 Depth=2
	cmpl	$63, -44(%rbp)
	jne	.LBB13_118
# BB#115:                               # %land.lhs.true.305
                                        #   in Loop: Header=BB13_113 Depth=2
	movsbl	-249(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB13_117
# BB#116:                               # %lor.lhs.false.308
                                        #   in Loop: Header=BB13_113 Depth=2
	movsbl	-250(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB13_118
.LBB13_117:                             # %if.then.311
                                        #   in Loop: Header=BB13_113 Depth=2
	movb	$0, -251(%rbp)
	jmp	.LBB13_119
.LBB13_118:                             # %if.else.312
                                        #   in Loop: Header=BB13_113 Depth=2
	cmpl	$43, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbl	-249(%rbp), %edx
	orl	%ecx, %edx
	movb	%dl, %al
	movb	%al, -249(%rbp)
	cmpl	$63, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movsbl	-250(%rbp), %edx
	orl	%ecx, %edx
	movb	%dl, %al
	movb	%al, -250(%rbp)
.LBB13_119:                             # %if.end.322
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_121
# BB#120:                               # %if.then.325
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_152
.LBB13_121:                             # %if.else.326
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB13_125
# BB#122:                               # %lor.lhs.false.330
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB13_126
# BB#123:                               # %land.lhs.true.333
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB13_125
# BB#124:                               # %lor.lhs.false.337
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB13_126
.LBB13_125:                             # %if.then.341
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_146
.LBB13_126:                             # %if.else.342
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB13_144
# BB#127:                               # %land.lhs.true.345
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB13_144
# BB#128:                               # %if.then.349
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_135
# BB#129:                               # %if.then.353
	jmp	.LBB13_130
.LBB13_130:                             # %do.body.354
	jmp	.LBB13_131
.LBB13_131:                             # %do.body.355
	cmpq	$0, -168(%rbp)
	je	.LBB13_133
# BB#132:                               # %if.then.358
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_133:                             # %if.end.360
	jmp	.LBB13_134
.LBB13_134:                             # %do.end.361
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_135:                             # %if.end.364
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB13_137
# BB#136:                               # %lor.lhs.false.369
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB13_142
.LBB13_137:                             # %if.then.374
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_138
.LBB13_138:                             # %do.body.375
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_140
# BB#139:                               # %if.then.379
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_140:                             # %if.end.380
                                        #   in Loop: Header=BB13_113 Depth=2
	movl	$1, -256(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-256(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#141:                               # %do.end.384
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_143
.LBB13_142:                             # %if.else.385
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_152
.LBB13_143:                             # %if.end.386
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_145
.LBB13_144:                             # %if.else.387
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_152
.LBB13_145:                             # %if.end.388
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_146
.LBB13_146:                             # %if.end.389
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_147
.LBB13_147:                             # %if.end.390
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_148
.LBB13_148:                             # %do.body.391
                                        #   in Loop: Header=BB13_113 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_150
# BB#149:                               # %if.then.395
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_150:                             # %if.end.396
                                        #   in Loop: Header=BB13_113 Depth=2
	movl	$1, -260(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-260(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#151:                               # %do.end.400
                                        #   in Loop: Header=BB13_113 Depth=2
	jmp	.LBB13_113
.LBB13_152:                             # %for.end
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB13_154
# BB#153:                               # %lor.lhs.false.402
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_155
.LBB13_154:                             # %if.then.405
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_155:                             # %if.end.406
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpb	$0, -251(%rbp)
	je	.LBB13_231
# BB#156:                               # %if.then.408
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpb	$0, -250(%rbp)
	je	.LBB13_210
# BB#157:                               # %if.then.410
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-120(%rbp), %rdi
	callq	skip_one_char
	movb	$1, %cl
	cmpq	-56(%rbp), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movb	%sil, %dl
	movb	%dl, -261(%rbp)
	movq	$0, -272(%rbp)
	movsbl	-261(%rbp), %esi
	cmpl	$0, %esi
	movb	%cl, -1025(%rbp)        # 1-byte Spill
	jne	.LBB13_159
# BB#158:                               # %lor.rhs
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	analyze_first
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	movb	%r8b, -1025(%rbp)       # 1-byte Spill
.LBB13_159:                             # %lor.end
                                        #   in Loop: Header=BB13_15 Depth=1
	movb	-1025(%rbp), %al        # 1-byte Reload
	movl	$16, %ecx
	movl	$14, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -276(%rbp)
	cmpb	$0, -249(%rbp)
	jne	.LBB13_184
# BB#160:                               # %land.lhs.true.421
                                        #   in Loop: Header=BB13_15 Depth=1
	movsbl	-261(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB13_184
# BB#161:                               # %if.then.424
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -272(%rbp)
.LBB13_162:                             # %while.cond.429
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	-272(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_180
# BB#163:                               # %while.body.438
                                        #   in Loop: Header=BB13_162 Depth=2
	jmp	.LBB13_164
.LBB13_164:                             # %do.body.439
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_166
# BB#165:                               # %if.then.445
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_166:                             # %if.end.446
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_168
# BB#167:                               # %if.then.452
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_168:                             # %if.end.454
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_170
# BB#169:                               # %if.then.463
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_170:                             # %if.end.464
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-304(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_178
# BB#171:                               # %if.then.468
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-312(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_173
# BB#172:                               # %if.then.480
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-312(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_173:                             # %if.end.485
                                        #   in Loop: Header=BB13_162 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_175
# BB#174:                               # %if.then.487
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-312(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_175:                             # %if.end.492
                                        #   in Loop: Header=BB13_162 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_177
# BB#176:                               # %if.then.494
                                        #   in Loop: Header=BB13_162 Depth=2
	movq	-312(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-304(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_177:                             # %if.end.499
                                        #   in Loop: Header=BB13_162 Depth=2
	jmp	.LBB13_178
.LBB13_178:                             # %if.end.500
                                        #   in Loop: Header=BB13_162 Depth=2
	jmp	.LBB13_179
.LBB13_179:                             # %do.end.501
                                        #   in Loop: Header=BB13_162 Depth=2
	jmp	.LBB13_162
.LBB13_180:                             # %while.end.502
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)
.LBB13_181:                             # %while.cond.503
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-296(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jae	.LBB13_183
# BB#182:                               # %while.body.506
                                        #   in Loop: Header=BB13_181 Depth=2
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB13_181
.LBB13_183:                             # %while.end.509
                                        #   in Loop: Header=BB13_15 Depth=1
	movb	$1, -249(%rbp)
.LBB13_184:                             # %if.end.510
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_185
.LBB13_185:                             # %while.cond.511
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$6, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_203
# BB#186:                               # %while.body.520
                                        #   in Loop: Header=BB13_185 Depth=2
	jmp	.LBB13_187
.LBB13_187:                             # %do.body.521
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_189
# BB#188:                               # %if.then.527
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_189:                             # %if.end.528
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_191
# BB#190:                               # %if.then.534
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_191:                             # %if.end.536
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_193
# BB#192:                               # %if.then.545
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_193:                             # %if.end.546
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-320(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_201
# BB#194:                               # %if.then.550
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-328(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_196
# BB#195:                               # %if.then.562
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-328(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_196:                             # %if.end.567
                                        #   in Loop: Header=BB13_185 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_198
# BB#197:                               # %if.then.569
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-328(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_198:                             # %if.end.574
                                        #   in Loop: Header=BB13_185 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_200
# BB#199:                               # %if.then.576
                                        #   in Loop: Header=BB13_185 Depth=2
	movq	-328(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-320(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_200:                             # %if.end.581
                                        #   in Loop: Header=BB13_185 Depth=2
	jmp	.LBB13_201
.LBB13_201:                             # %if.end.582
                                        #   in Loop: Header=BB13_185 Depth=2
	jmp	.LBB13_202
.LBB13_202:                             # %do.end.583
                                        #   in Loop: Header=BB13_185 Depth=2
	jmp	.LBB13_185
.LBB13_203:                             # %while.end.584
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpb	$0, -249(%rbp)
	jne	.LBB13_205
# BB#204:                               # %if.then.586
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-276(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
	jmp	.LBB13_209
.LBB13_205:                             # %if.else.592
                                        #   in Loop: Header=BB13_15 Depth=1
	movsbl	-261(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB13_207
# BB#206:                               # %cond.true
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$18, %eax
	movl	%eax, -1032(%rbp)       # 4-byte Spill
	jmp	.LBB13_208
.LBB13_207:                             # %cond.false
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -1032(%rbp)       # 4-byte Spill
.LBB13_208:                             # %cond.end
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1032(%rbp), %eax       # 4-byte Reload
	movq	-120(%rbp), %rcx
	addq	-272(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$6, %rdx
	movq	-120(%rbp), %rsi
	addq	-272(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$3, %rdx
	movl	%edx, %edi
	movq	-56(%rbp), %rdx
	movl	%edi, -1036(%rbp)       # 4-byte Spill
	movl	%eax, %edi
	movq	%rcx, %rsi
	movl	-1036(%rbp), %eax       # 4-byte Reload
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	movl	%eax, %edx
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	callq	insert_op1
.LBB13_209:                             # %if.end.604
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	-272(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_230
.LBB13_210:                             # %if.else.613
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_211
.LBB13_211:                             # %while.cond.614
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_229
# BB#212:                               # %while.body.623
                                        #   in Loop: Header=BB13_211 Depth=2
	jmp	.LBB13_213
.LBB13_213:                             # %do.body.624
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_215
# BB#214:                               # %if.then.630
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_215:                             # %if.end.631
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_217
# BB#216:                               # %if.then.637
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_217:                             # %if.end.639
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_219
# BB#218:                               # %if.then.648
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_219:                             # %if.end.649
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-336(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_227
# BB#220:                               # %if.then.653
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-344(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_222
# BB#221:                               # %if.then.665
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-344(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_222:                             # %if.end.670
                                        #   in Loop: Header=BB13_211 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_224
# BB#223:                               # %if.then.672
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-344(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_224:                             # %if.end.677
                                        #   in Loop: Header=BB13_211 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_226
# BB#225:                               # %if.then.679
                                        #   in Loop: Header=BB13_211 Depth=2
	movq	-344(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-336(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_226:                             # %if.end.684
                                        #   in Loop: Header=BB13_211 Depth=2
	jmp	.LBB13_227
.LBB13_227:                             # %if.end.685
                                        #   in Loop: Header=BB13_211 Depth=2
	jmp	.LBB13_228
.LBB13_228:                             # %do.end.686
                                        #   in Loop: Header=BB13_211 Depth=2
	jmp	.LBB13_211
.LBB13_229:                             # %while.end.687
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$14, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB13_230:                             # %if.end.695
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_279
.LBB13_231:                             # %if.else.696
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_232
.LBB13_232:                             # %while.cond.697
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$7, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_250
# BB#233:                               # %while.body.706
                                        #   in Loop: Header=BB13_232 Depth=2
	jmp	.LBB13_234
.LBB13_234:                             # %do.body.707
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_236
# BB#235:                               # %if.then.713
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_236:                             # %if.end.714
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_238
# BB#237:                               # %if.then.720
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_238:                             # %if.end.722
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_240
# BB#239:                               # %if.then.731
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_240:                             # %if.end.732
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-352(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_248
# BB#241:                               # %if.then.736
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-360(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_243
# BB#242:                               # %if.then.748
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-360(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_243:                             # %if.end.753
                                        #   in Loop: Header=BB13_232 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_245
# BB#244:                               # %if.then.755
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-360(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_245:                             # %if.end.760
                                        #   in Loop: Header=BB13_232 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_247
# BB#246:                               # %if.then.762
                                        #   in Loop: Header=BB13_232 Depth=2
	movq	-360(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-352(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_247:                             # %if.end.767
                                        #   in Loop: Header=BB13_232 Depth=2
	jmp	.LBB13_248
.LBB13_248:                             # %if.end.768
                                        #   in Loop: Header=BB13_232 Depth=2
	jmp	.LBB13_249
.LBB13_249:                             # %do.end.769
                                        #   in Loop: Header=BB13_232 Depth=2
	jmp	.LBB13_232
.LBB13_250:                             # %while.end.770
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpb	$0, -250(%rbp)
	je	.LBB13_277
# BB#251:                               # %if.then.772
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	analyze_first
	movb	%al, %r8b
	movb	%r8b, -361(%rbp)
	cmpb	$0, -361(%rbp)
	je	.LBB13_274
# BB#252:                               # %if.then.776
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_253
.LBB13_253:                             # %do.body.777
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_254
.LBB13_254:                             # %while.cond.778
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_272
# BB#255:                               # %while.body.787
                                        #   in Loop: Header=BB13_254 Depth=2
	jmp	.LBB13_256
.LBB13_256:                             # %do.body.788
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_258
# BB#257:                               # %if.then.794
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_258:                             # %if.end.795
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_260
# BB#259:                               # %if.then.801
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_260:                             # %if.end.803
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_262
# BB#261:                               # %if.then.812
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_262:                             # %if.end.813
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-376(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_270
# BB#263:                               # %if.then.817
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-384(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_265
# BB#264:                               # %if.then.829
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-384(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_265:                             # %if.end.834
                                        #   in Loop: Header=BB13_254 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_267
# BB#266:                               # %if.then.836
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-384(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_267:                             # %if.end.841
                                        #   in Loop: Header=BB13_254 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_269
# BB#268:                               # %if.then.843
                                        #   in Loop: Header=BB13_254 Depth=2
	movq	-384(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-376(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_269:                             # %if.end.848
                                        #   in Loop: Header=BB13_254 Depth=2
	jmp	.LBB13_270
.LBB13_270:                             # %if.end.849
                                        #   in Loop: Header=BB13_254 Depth=2
	jmp	.LBB13_271
.LBB13_271:                             # %do.end.850
                                        #   in Loop: Header=BB13_254 Depth=2
	jmp	.LBB13_254
.LBB13_272:                             # %while.end.851
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
# BB#273:                               # %do.end.853
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_274
.LBB13_274:                             # %if.end.854
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$14, %eax
	movl	$17, %ecx
	movsbl	-361(%rbp), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %r8
	subq	%r8, %rdi
	subq	$3, %rdi
	movl	%edi, %ecx
	movl	%eax, %edi
	movl	%ecx, %edx
	callq	store_op1
	movq	-56(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -56(%rbp)
	cmpb	$0, -249(%rbp)
	je	.LBB13_276
# BB#275:                               # %if.then.865
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB13_276:                             # %if.end.872
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_278
.LBB13_277:                             # %if.else.873
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movl	$14, %edi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movq	-120(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
.LBB13_278:                             # %if.end.888
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_279
.LBB13_279:                             # %if.end.889
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	$0, -112(%rbp)
	jmp	.LBB13_1291
.LBB13_280:                             # %sw.bb.890
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#281:                               # %do.body.891
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_282
.LBB13_282:                             # %while.cond.892
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_300
# BB#283:                               # %while.body.901
                                        #   in Loop: Header=BB13_282 Depth=2
	jmp	.LBB13_284
.LBB13_284:                             # %do.body.902
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_286
# BB#285:                               # %if.then.908
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_286:                             # %if.end.909
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_288
# BB#287:                               # %if.then.915
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_288:                             # %if.end.917
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_290
# BB#289:                               # %if.then.926
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_290:                             # %if.end.927
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-392(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_298
# BB#291:                               # %if.then.931
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-400(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_293
# BB#292:                               # %if.then.943
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-400(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_293:                             # %if.end.948
                                        #   in Loop: Header=BB13_282 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_295
# BB#294:                               # %if.then.950
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-400(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_295:                             # %if.end.955
                                        #   in Loop: Header=BB13_282 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_297
# BB#296:                               # %if.then.957
                                        #   in Loop: Header=BB13_282 Depth=2
	movq	-400(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-392(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_297:                             # %if.end.962
                                        #   in Loop: Header=BB13_282 Depth=2
	jmp	.LBB13_298
.LBB13_298:                             # %if.end.963
                                        #   in Loop: Header=BB13_282 Depth=2
	jmp	.LBB13_299
.LBB13_299:                             # %do.end.964
                                        #   in Loop: Header=BB13_282 Depth=2
	jmp	.LBB13_282
.LBB13_300:                             # %while.end.965
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$3, (%rax)
# BB#301:                               # %do.end.967
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_302:                             # %sw.bb.968
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_309
# BB#303:                               # %if.then.973
	jmp	.LBB13_304
.LBB13_304:                             # %do.body.974
	jmp	.LBB13_305
.LBB13_305:                             # %do.body.975
	cmpq	$0, -168(%rbp)
	je	.LBB13_307
# BB#306:                               # %if.then.978
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_307:                             # %if.end.980
	jmp	.LBB13_308
.LBB13_308:                             # %do.end.981
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_309:                             # %if.end.984
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_310
.LBB13_310:                             # %while.cond.985
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$34, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_328
# BB#311:                               # %while.body.994
                                        #   in Loop: Header=BB13_310 Depth=2
	jmp	.LBB13_312
.LBB13_312:                             # %do.body.995
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_314
# BB#313:                               # %if.then.1001
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_314:                             # %if.end.1002
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_316
# BB#315:                               # %if.then.1008
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_316:                             # %if.end.1010
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_318
# BB#317:                               # %if.then.1019
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_318:                             # %if.end.1020
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-416(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_326
# BB#319:                               # %if.then.1024
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-424(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_321
# BB#320:                               # %if.then.1036
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-424(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_321:                             # %if.end.1041
                                        #   in Loop: Header=BB13_310 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_323
# BB#322:                               # %if.then.1043
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-424(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_323:                             # %if.end.1048
                                        #   in Loop: Header=BB13_310 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_325
# BB#324:                               # %if.then.1050
                                        #   in Loop: Header=BB13_310 Depth=2
	movq	-424(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-416(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_325:                             # %if.end.1055
                                        #   in Loop: Header=BB13_310 Depth=2
	jmp	.LBB13_326
.LBB13_326:                             # %if.end.1056
                                        #   in Loop: Header=BB13_310 Depth=2
	jmp	.LBB13_327
.LBB13_327:                             # %do.end.1057
                                        #   in Loop: Header=BB13_310 Depth=2
	jmp	.LBB13_310
.LBB13_328:                             # %while.end.1058
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#329:                               # %do.body.1059
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_330
.LBB13_330:                             # %while.cond.1060
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_348
# BB#331:                               # %while.body.1069
                                        #   in Loop: Header=BB13_330 Depth=2
	jmp	.LBB13_332
.LBB13_332:                             # %do.body.1070
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_334
# BB#333:                               # %if.then.1076
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_334:                             # %if.end.1077
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_336
# BB#335:                               # %if.then.1083
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_336:                             # %if.end.1085
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_338
# BB#337:                               # %if.then.1094
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_338:                             # %if.end.1095
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-432(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_346
# BB#339:                               # %if.then.1099
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-440(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_341
# BB#340:                               # %if.then.1111
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-440(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_341:                             # %if.end.1116
                                        #   in Loop: Header=BB13_330 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_343
# BB#342:                               # %if.then.1118
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-440(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_343:                             # %if.end.1123
                                        #   in Loop: Header=BB13_330 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_345
# BB#344:                               # %if.then.1125
                                        #   in Loop: Header=BB13_330 Depth=2
	movq	-440(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-432(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_345:                             # %if.end.1130
                                        #   in Loop: Header=BB13_330 Depth=2
	jmp	.LBB13_346
.LBB13_346:                             # %if.end.1131
                                        #   in Loop: Header=BB13_330 Depth=2
	jmp	.LBB13_347
.LBB13_347:                             # %do.end.1132
                                        #   in Loop: Header=BB13_330 Depth=2
	jmp	.LBB13_330
.LBB13_348:                             # %while.end.1133
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$4, %eax
	movl	$5, %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	cmpl	$94, %esi
	cmovel	%ecx, %eax
	movb	%al, %dil
	movq	-56(%rbp), %rdx
	movq	%rdx, %r8
	addq	$1, %r8
	movq	%r8, -56(%rbp)
	movb	%dil, (%rdx)
# BB#349:                               # %do.end.1140
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB13_351
# BB#350:                               # %if.then.1144
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB13_351:                             # %if.end.1146
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -408(%rbp)
# BB#352:                               # %do.body.1147
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_353
.LBB13_353:                             # %while.cond.1148
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_371
# BB#354:                               # %while.body.1157
                                        #   in Loop: Header=BB13_353 Depth=2
	jmp	.LBB13_355
.LBB13_355:                             # %do.body.1158
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_357
# BB#356:                               # %if.then.1164
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_357:                             # %if.end.1165
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_359
# BB#358:                               # %if.then.1171
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_359:                             # %if.end.1173
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_361
# BB#360:                               # %if.then.1182
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_361:                             # %if.end.1183
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-448(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_369
# BB#362:                               # %if.then.1187
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-456(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_364
# BB#363:                               # %if.then.1199
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-456(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_364:                             # %if.end.1204
                                        #   in Loop: Header=BB13_353 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_366
# BB#365:                               # %if.then.1206
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-456(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_366:                             # %if.end.1211
                                        #   in Loop: Header=BB13_353 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_368
# BB#367:                               # %if.then.1213
                                        #   in Loop: Header=BB13_353 Depth=2
	movq	-456(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-448(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_368:                             # %if.end.1218
                                        #   in Loop: Header=BB13_353 Depth=2
	jmp	.LBB13_369
.LBB13_369:                             # %if.end.1219
                                        #   in Loop: Header=BB13_353 Depth=2
	jmp	.LBB13_370
.LBB13_370:                             # %do.end.1220
                                        #   in Loop: Header=BB13_353 Depth=2
	jmp	.LBB13_353
.LBB13_371:                             # %while.end.1221
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$32, (%rax)
# BB#372:                               # %do.end.1223
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	memset
	movq	-56(%rbp), %rdx
	movzbl	-2(%rdx), %eax
	cmpl	$5, %eax
	jne	.LBB13_375
# BB#373:                               # %land.lhs.true.1228
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB13_375
# BB#374:                               # %if.then.1231
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	orl	$4, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
.LBB13_375:                             # %if.end.1236
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_376
.LBB13_376:                             # %for.cond.1237
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_421 Depth 3
                                        #       Child Loop BB13_454 Depth 3
                                        #       Child Loop BB13_492 Depth 3
	movb	$0, -457(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_383
# BB#377:                               # %if.then.1241
	jmp	.LBB13_378
.LBB13_378:                             # %do.body.1242
	jmp	.LBB13_379
.LBB13_379:                             # %do.body.1243
	cmpq	$0, -168(%rbp)
	je	.LBB13_381
# BB#380:                               # %if.then.1246
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_381:                             # %if.end.1248
	jmp	.LBB13_382
.LBB13_382:                             # %do.end.1249
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_383:                             # %if.end.1252
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_384
.LBB13_384:                             # %do.body.1253
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_386
# BB#385:                               # %if.then.1257
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_386:                             # %if.end.1258
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -480(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-480(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#387:                               # %do.end.1262
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-32(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB13_401
# BB#388:                               # %land.lhs.true.1265
                                        #   in Loop: Header=BB13_376 Depth=2
	cmpl	$92, -44(%rbp)
	jne	.LBB13_401
# BB#389:                               # %if.then.1268
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_396
# BB#390:                               # %if.then.1271
	jmp	.LBB13_391
.LBB13_391:                             # %do.body.1272
	jmp	.LBB13_392
.LBB13_392:                             # %do.body.1273
	cmpq	$0, -168(%rbp)
	je	.LBB13_394
# BB#393:                               # %if.then.1276
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_394:                             # %if.end.1278
	jmp	.LBB13_395
.LBB13_395:                             # %do.end.1279
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_396:                             # %if.end.1282
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_397
.LBB13_397:                             # %do.body.1283
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_399
# BB#398:                               # %if.then.1287
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_399:                             # %if.end.1288
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -484(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-484(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#400:                               # %do.end.1292
                                        #   in Loop: Header=BB13_376 Depth=2
	movb	$1, -457(%rbp)
	jmp	.LBB13_405
.LBB13_401:                             # %if.else.1293
                                        #   in Loop: Header=BB13_376 Depth=2
	cmpl	$93, -44(%rbp)
	jne	.LBB13_404
# BB#402:                               # %land.lhs.true.1296
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-472(%rbp), %rax
	cmpq	-408(%rbp), %rax
	je	.LBB13_404
# BB#403:                               # %if.then.1299
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_502
.LBB13_404:                             # %if.end.1300
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_405
.LBB13_405:                             # %if.end.1301
                                        #   in Loop: Header=BB13_376 Depth=2
	cmpb	$0, -457(%rbp)
	jne	.LBB13_469
# BB#406:                               # %land.lhs.true.1303
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-32(%rbp), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB13_469
# BB#407:                               # %land.lhs.true.1306
                                        #   in Loop: Header=BB13_376 Depth=2
	cmpl	$91, -44(%rbp)
	jne	.LBB13_469
# BB#408:                               # %land.lhs.true.1309
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB13_469
# BB#409:                               # %if.then.1313
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_410
.LBB13_410:                             # %do.body.1314
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_412
# BB#411:                               # %if.then.1318
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_412:                             # %if.end.1319
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -508(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-508(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#413:                               # %do.end.1323
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_420
# BB#414:                               # %if.then.1326
	jmp	.LBB13_415
.LBB13_415:                             # %do.body.1327
	jmp	.LBB13_416
.LBB13_416:                             # %do.body.1328
	cmpq	$0, -168(%rbp)
	je	.LBB13_418
# BB#417:                               # %if.then.1331
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_418:                             # %if.end.1333
	jmp	.LBB13_419
.LBB13_419:                             # %do.end.1334
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_420:                             # %if.end.1337
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_421
.LBB13_421:                             # %for.cond.1338
                                        #   Parent Loop BB13_15 Depth=1
                                        #     Parent Loop BB13_376 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	jmp	.LBB13_422
.LBB13_422:                             # %do.body.1339
                                        #   in Loop: Header=BB13_421 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_424
# BB#423:                               # %if.then.1343
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_424:                             # %if.end.1344
                                        #   in Loop: Header=BB13_421 Depth=3
	movl	$1, -512(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-512(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#425:                               # %do.end.1348
                                        #   in Loop: Header=BB13_421 Depth=3
	cmpl	$58, -44(%rbp)
	jne	.LBB13_427
# BB#426:                               # %land.lhs.true.1351
                                        #   in Loop: Header=BB13_421 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB13_428
.LBB13_427:                             # %lor.lhs.false.1355
                                        #   in Loop: Header=BB13_421 Depth=3
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_429
.LBB13_428:                             # %if.then.1358
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_433
.LBB13_429:                             # %if.end.1359
                                        #   in Loop: Header=BB13_421 Depth=3
	cmpl	$9, -48(%rbp)
	jge	.LBB13_431
# BB#430:                               # %if.then.1362
                                        #   in Loop: Header=BB13_421 Depth=3
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -494(%rbp,%rsi)
	jmp	.LBB13_432
.LBB13_431:                             # %if.else.1365
                                        #   in Loop: Header=BB13_421 Depth=3
	movb	$0, -494(%rbp)
.LBB13_432:                             # %if.end.1367
                                        #   in Loop: Header=BB13_421 Depth=3
	jmp	.LBB13_421
.LBB13_433:                             # %for.end.1368
                                        #   in Loop: Header=BB13_376 Depth=2
	movslq	-48(%rbp), %rax
	movb	$0, -494(%rbp,%rax)
	cmpl	$58, -44(%rbp)
	jne	.LBB13_467
# BB#434:                               # %land.lhs.true.1373
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$93, %ecx
	jne	.LBB13_467
# BB#435:                               # %if.then.1377
                                        #   in Loop: Header=BB13_376 Depth=2
	leaq	-494(%rbp), %rdi
	callq	re_wctype
	movl	%eax, -516(%rbp)
	cmpl	$0, -516(%rbp)
	jne	.LBB13_442
# BB#436:                               # %if.then.1381
	jmp	.LBB13_437
.LBB13_437:                             # %do.body.1382
	jmp	.LBB13_438
.LBB13_438:                             # %do.body.1383
	cmpq	$0, -168(%rbp)
	je	.LBB13_440
# BB#439:                               # %if.then.1386
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_440:                             # %if.end.1388
	jmp	.LBB13_441
.LBB13_441:                             # %do.end.1389
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$4, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_442:                             # %if.end.1392
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_443
.LBB13_443:                             # %do.body.1393
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_445
# BB#444:                               # %if.then.1397
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_445:                             # %if.end.1398
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -520(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-520(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#446:                               # %do.end.1402
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_453
# BB#447:                               # %if.then.1405
	jmp	.LBB13_448
.LBB13_448:                             # %do.body.1406
	jmp	.LBB13_449
.LBB13_449:                             # %do.body.1407
	cmpq	$0, -168(%rbp)
	je	.LBB13_451
# BB#450:                               # %if.then.1410
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_451:                             # %if.end.1412
	jmp	.LBB13_452
.LBB13_452:                             # %do.end.1413
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$7, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_453:                             # %if.end.1416
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$0, -476(%rbp)
.LBB13_454:                             # %for.cond.1417
                                        #   Parent Loop BB13_15 Depth=1
                                        #     Parent Loop BB13_376 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$256, -476(%rbp)        # imm = 0x100
	jge	.LBB13_464
# BB#455:                               # %for.body
                                        #   in Loop: Header=BB13_454 Depth=3
	movl	-476(%rbp), %edi
	movl	-516(%rbp), %esi
	callq	re_iswctype
	cmpb	$0, %al
	je	.LBB13_462
# BB#456:                               # %if.then.1422
                                        #   in Loop: Header=BB13_454 Depth=3
	cmpq	$0, -104(%rbp)
	je	.LBB13_458
# BB#457:                               # %cond.true.1424
                                        #   in Loop: Header=BB13_454 Depth=3
	movslq	-476(%rbp), %rax
	movq	-104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB13_459
.LBB13_458:                             # %cond.false.1428
                                        #   in Loop: Header=BB13_454 Depth=3
	movl	-476(%rbp), %eax
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB13_459:                             # %cond.end.1429
                                        #   in Loop: Header=BB13_454 Depth=3
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB13_461
# BB#460:                               # %if.then.1433
                                        #   in Loop: Header=BB13_454 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -1056(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1056(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1060(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-44(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1064(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1064(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB13_461:                             # %if.end.1440
                                        #   in Loop: Header=BB13_454 Depth=3
	jmp	.LBB13_462
.LBB13_462:                             # %if.end.1441
                                        #   in Loop: Header=BB13_454 Depth=3
	jmp	.LBB13_463
.LBB13_463:                             # %for.inc
                                        #   in Loop: Header=BB13_454 Depth=3
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB13_454
.LBB13_464:                             # %for.end.1443
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, %eax
	movl	-516(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	$8200, %eax             # imm = 0x2008
	cmpl	$0, %eax
	je	.LBB13_466
# BB#465:                               # %if.then.1447
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-40(%rbp), %rax
	movb	56(%rax), %cl
	andb	$127, %cl
	orb	$-128, %cl
	movb	%cl, 56(%rax)
.LBB13_466:                             # %if.end.1451
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_376
.LBB13_467:                             # %if.else.1452
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-504(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movzbl	11(%rax), %ecx
	orl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, 11(%rax)
	movl	$58, -44(%rbp)
# BB#468:                               # %if.end.1457
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_469
.LBB13_469:                             # %if.end.1458
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB13_481
# BB#470:                               # %land.lhs.true.1461
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB13_481
# BB#471:                               # %land.lhs.true.1466
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB13_481
# BB#472:                               # %if.then.1471
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_473
.LBB13_473:                             # %do.body.1472
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_475
# BB#474:                               # %if.then.1476
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_475:                             # %if.end.1477
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -524(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-524(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#476:                               # %do.end.1481
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_477
.LBB13_477:                             # %do.body.1482
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_479
# BB#478:                               # %if.then.1486
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_479:                             # %if.end.1487
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	$1, -528(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-528(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#480:                               # %do.end.1491
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_482
.LBB13_481:                             # %if.else.1492
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB13_482:                             # %if.end.1493
                                        #   in Loop: Header=BB13_376 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB13_491
# BB#483:                               # %if.then.1496
                                        #   in Loop: Header=BB13_376 Depth=2
	movq	-32(%rbp), %rax
	andq	$65536, %rax            # imm = 0x10000
	cmpq	$0, %rax
	je	.LBB13_490
# BB#484:                               # %if.then.1499
	jmp	.LBB13_485
.LBB13_485:                             # %do.body.1500
	jmp	.LBB13_486
.LBB13_486:                             # %do.body.1501
	cmpq	$0, -168(%rbp)
	je	.LBB13_488
# BB#487:                               # %if.then.1504
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_488:                             # %if.end.1506
	jmp	.LBB13_489
.LBB13_489:                             # %do.end.1507
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$17, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_490:                             # %if.end.1510
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_501
.LBB13_491:                             # %if.else.1511
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_492
.LBB13_492:                             # %for.cond.1512
                                        #   Parent Loop BB13_15 Depth=1
                                        #     Parent Loop BB13_376 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB13_500
# BB#493:                               # %for.body.1515
                                        #   in Loop: Header=BB13_492 Depth=3
	cmpq	$0, -104(%rbp)
	je	.LBB13_495
# BB#494:                               # %cond.true.1517
                                        #   in Loop: Header=BB13_492 Depth=3
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB13_496
.LBB13_495:                             # %cond.false.1521
                                        #   in Loop: Header=BB13_492 Depth=3
	movl	-44(%rbp), %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
.LBB13_496:                             # %cond.end.1522
                                        #   in Loop: Header=BB13_492 Depth=3
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movl	%eax, -476(%rbp)
	cmpl	$256, -476(%rbp)        # imm = 0x100
	jge	.LBB13_498
# BB#497:                               # %if.then.1526
                                        #   in Loop: Header=BB13_492 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movl	-476(%rbp), %edx
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1072(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1076(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movl	-476(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -1080(%rbp)       # 4-byte Spill
	cltd
	idivl	%esi
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-1080(%rbp), %edi       # 4-byte Reload
	orl	%edi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB13_498:                             # %if.end.1535
                                        #   in Loop: Header=BB13_492 Depth=3
	jmp	.LBB13_499
.LBB13_499:                             # %for.inc.1536
                                        #   in Loop: Header=BB13_492 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_492
.LBB13_500:                             # %for.end.1538
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_501
.LBB13_501:                             # %if.end.1539
                                        #   in Loop: Header=BB13_376 Depth=2
	jmp	.LBB13_376
.LBB13_502:                             # %for.end.1540
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_503
.LBB13_503:                             # %while.cond.1541
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movzbl	-1(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1081(%rbp)        # 1-byte Spill
	jle	.LBB13_505
# BB#504:                               # %land.rhs
                                        #   in Loop: Header=BB13_503 Depth=2
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$0, %ecx
	sete	%sil
	movb	%sil, -1081(%rbp)       # 1-byte Spill
.LBB13_505:                             # %land.end
                                        #   in Loop: Header=BB13_503 Depth=2
	movb	-1081(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_506
	jmp	.LBB13_507
.LBB13_506:                             # %while.body.1554
                                        #   in Loop: Header=BB13_503 Depth=2
	movq	-56(%rbp), %rax
	movb	-1(%rax), %cl
	addb	$-1, %cl
	movb	%cl, -1(%rax)
	jmp	.LBB13_503
.LBB13_507:                             # %while.end.1556
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.LBB13_509
# BB#508:                               # %lor.lhs.false.1563
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -152(%rbp)
	je	.LBB13_539
.LBB13_509:                             # %if.then.1566
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -536(%rbp)
.LBB13_510:                             # %while.cond.1569
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	imull	$3, -536(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_528
# BB#511:                               # %while.body.1581
                                        #   in Loop: Header=BB13_510 Depth=2
	jmp	.LBB13_512
.LBB13_512:                             # %do.body.1582
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_514
# BB#513:                               # %if.then.1588
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_514:                             # %if.end.1589
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_516
# BB#515:                               # %if.then.1595
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_516:                             # %if.end.1597
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_518
# BB#517:                               # %if.then.1606
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_518:                             # %if.end.1607
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-544(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_526
# BB#519:                               # %if.then.1611
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-544(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-552(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-544(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_521
# BB#520:                               # %if.then.1623
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-552(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-544(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_521:                             # %if.end.1628
                                        #   in Loop: Header=BB13_510 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_523
# BB#522:                               # %if.then.1630
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-552(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-544(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_523:                             # %if.end.1635
                                        #   in Loop: Header=BB13_510 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_525
# BB#524:                               # %if.then.1637
                                        #   in Loop: Header=BB13_510 Depth=2
	movq	-552(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-544(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_525:                             # %if.end.1642
                                        #   in Loop: Header=BB13_510 Depth=2
	jmp	.LBB13_526
.LBB13_526:                             # %if.end.1643
                                        #   in Loop: Header=BB13_510 Depth=2
	jmp	.LBB13_527
.LBB13_527:                             # %do.end.1644
                                        #   in Loop: Header=BB13_510 Depth=2
	jmp	.LBB13_510
.LBB13_528:                             # %while.end.1645
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-120(%rbp), %rax
	movzbl	1(%rax), %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, 1(%rax)
	movl	-152(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rax)
	movl	-152(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rax)
# BB#529:                               # %do.body.1657
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_530
.LBB13_530:                             # %do.body.1658
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$2, %eax
	movl	-536(%rbp), %ecx
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1088(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	andl	$255, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdi
	movb	%sil, (%rdi)
	movl	-536(%rbp), %eax
	cltd
	idivl	%ecx
	sarl	$8, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rdi
	movb	%sil, 1(%rdi)
# BB#531:                               # %do.end.1667
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#532:                               # %do.end.1669
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -532(%rbp)
.LBB13_533:                             # %for.cond.1670
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-532(%rbp), %eax
	cmpl	-536(%rbp), %eax
	jge	.LBB13_538
# BB#534:                               # %for.body.1673
                                        #   in Loop: Header=BB13_533 Depth=2
	jmp	.LBB13_535
.LBB13_535:                             # %do.body.1674
                                        #   in Loop: Header=BB13_533 Depth=2
	movslq	-532(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$255, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, (%rax)
	movslq	-532(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	sarl	$8, %edx
	andl	$255, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 1(%rax)
	movslq	-532(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	sarl	$16, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
# BB#536:                               # %do.end.1695
                                        #   in Loop: Header=BB13_533 Depth=2
	jmp	.LBB13_537
.LBB13_537:                             # %for.inc.1696
                                        #   in Loop: Header=BB13_533 Depth=2
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB13_533
.LBB13_538:                             # %for.end.1698
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_539
.LBB13_539:                             # %if.end.1699
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_540:                             # %sw.bb.1700
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB13_542
# BB#541:                               # %if.then.1703
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_571
.LBB13_542:                             # %if.else.1704
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_543:                             # %sw.bb.1705
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB13_545
# BB#544:                               # %if.then.1708
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_665
.LBB13_545:                             # %if.else.1709
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_546:                             # %sw.bb.1710
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2048, %rax             # imm = 0x800
	cmpq	$0, %rax
	je	.LBB13_548
# BB#547:                               # %if.then.1713
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_710
.LBB13_548:                             # %if.else.1714
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_549:                             # %sw.bb.1715
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB13_551
# BB#550:                               # %if.then.1718
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_710
.LBB13_551:                             # %if.else.1719
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_552:                             # %sw.bb.1720
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB13_555
# BB#553:                               # %land.lhs.true.1723
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB13_555
# BB#554:                               # %if.then.1726
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_759
.LBB13_555:                             # %if.else.1727
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_556:                             # %sw.bb.1728
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_563
# BB#557:                               # %if.then.1731
	jmp	.LBB13_558
.LBB13_558:                             # %do.body.1732
	jmp	.LBB13_559
.LBB13_559:                             # %do.body.1733
	cmpq	$0, -168(%rbp)
	je	.LBB13_561
# BB#560:                               # %if.then.1736
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_561:                             # %if.end.1738
	jmp	.LBB13_562
.LBB13_562:                             # %do.end.1739
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_563:                             # %if.end.1742
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_564
.LBB13_564:                             # %do.body.1743
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_566
# BB#565:                               # %if.then.1747
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_566:                             # %if.end.1748
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -556(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-556(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#567:                               # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$39, %ecx
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	movl	%ecx, -1096(%rbp)       # 4-byte Spill
	je	.LBB13_1158
	jmp	.LBB13_1346
.LBB13_1346:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	je	.LBB13_568
	jmp	.LBB13_1347
.LBB13_1347:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	je	.LBB13_653
	jmp	.LBB13_1348
.LBB13_1348:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	je	.LBB13_1215
	jmp	.LBB13_1349
.LBB13_1349:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	jb	.LBB13_1182
	jmp	.LBB13_1350
.LBB13_1350:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	je	.LBB13_978
	jmp	.LBB13_1351
.LBB13_1351:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -1120(%rbp)       # 4-byte Spill
	je	.LBB13_1002
	jmp	.LBB13_1352
.LBB13_1352:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	je	.LBB13_1215
	jmp	.LBB13_1353
.LBB13_1353:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -1128(%rbp)       # 4-byte Spill
	je	.LBB13_1110
	jmp	.LBB13_1354
.LBB13_1354:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	je	.LBB13_954
	jmp	.LBB13_1355
.LBB13_1355:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	je	.LBB13_1026
	jmp	.LBB13_1356
.LBB13_1356:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$96, %eax
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	je	.LBB13_1134
	jmp	.LBB13_1357
.LBB13_1357:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	je	.LBB13_1086
	jmp	.LBB13_1358
.LBB13_1358:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	je	.LBB13_930
	jmp	.LBB13_1359
.LBB13_1359:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	je	.LBB13_755
	jmp	.LBB13_1360
.LBB13_1360:                            # %do.end.1752
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	je	.LBB13_706
	jmp	.LBB13_1218
.LBB13_568:                             # %sw.bb.1753
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB13_570
# BB#569:                               # %if.then.1756
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_570:                             # %if.end.1757
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_571
.LBB13_571:                             # %handle_open
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -560(%rbp)
	movl	$0, -564(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB13_604
# BB#572:                               # %if.then.1761
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2097152, %rax          # imm = 0x200000
	cmpq	$0, %rax
	je	.LBB13_603
# BB#573:                               # %land.lhs.true.1764
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB13_603
# BB#574:                               # %if.then.1768
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_575
.LBB13_575:                             # %do.body.1769
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_577
# BB#576:                               # %if.then.1773
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_577:                             # %if.end.1774
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -568(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-568(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#578:                               # %do.end.1778
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_579
.LBB13_579:                             # %while.cond.1779
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -560(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB13_580
	jmp	.LBB13_602
.LBB13_580:                             # %while.body.1782
                                        #   in Loop: Header=BB13_579 Depth=2
	jmp	.LBB13_581
.LBB13_581:                             # %do.body.1783
                                        #   in Loop: Header=BB13_579 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_583
# BB#582:                               # %if.then.1787
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_583:                             # %if.end.1788
                                        #   in Loop: Header=BB13_579 Depth=2
	movl	$1, -572(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-572(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#584:                               # %do.end.1792
                                        #   in Loop: Header=BB13_579 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$48, %ecx
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	movl	%ecx, -1164(%rbp)       # 4-byte Spill
	je	.LBB13_586
	jmp	.LBB13_1361
.LBB13_1361:                            # %do.end.1792
                                        #   in Loop: Header=BB13_579 Depth=2
	movl	-1160(%rbp), %eax       # 4-byte Reload
	addl	$-49, %eax
	subl	$9, %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	jb	.LBB13_594
	jmp	.LBB13_1362
.LBB13_1362:                            # %do.end.1792
                                        #   in Loop: Header=BB13_579 Depth=2
	movl	-1160(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	jne	.LBB13_595
	jmp	.LBB13_585
.LBB13_585:                             # %sw.bb.1793
                                        #   in Loop: Header=BB13_579 Depth=2
	movl	$1, -560(%rbp)
	jmp	.LBB13_601
.LBB13_586:                             # %sw.bb.1794
                                        #   in Loop: Header=BB13_579 Depth=2
	cmpl	$0, -564(%rbp)
	jne	.LBB13_593
# BB#587:                               # %if.then.1797
	jmp	.LBB13_588
.LBB13_588:                             # %do.body.1798
	jmp	.LBB13_589
.LBB13_589:                             # %do.body.1799
	cmpq	$0, -168(%rbp)
	je	.LBB13_591
# BB#590:                               # %if.then.1802
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_591:                             # %if.end.1804
	jmp	.LBB13_592
.LBB13_592:                             # %do.end.1805
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$2, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_593:                             # %if.end.1808
                                        #   in Loop: Header=BB13_579 Depth=2
	jmp	.LBB13_594
.LBB13_594:                             # %sw.bb.1809
                                        #   in Loop: Header=BB13_579 Depth=2
	imull	$10, -564(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -564(%rbp)
	jmp	.LBB13_601
.LBB13_595:                             # %sw.default
	jmp	.LBB13_596
.LBB13_596:                             # %do.body.1813
	jmp	.LBB13_597
.LBB13_597:                             # %do.body.1814
	cmpq	$0, -168(%rbp)
	je	.LBB13_599
# BB#598:                               # %if.then.1817
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_599:                             # %if.end.1819
	jmp	.LBB13_600
.LBB13_600:                             # %do.end.1820
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$2, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_601:                             # %sw.epilog
                                        #   in Loop: Header=BB13_579 Depth=2
	jmp	.LBB13_579
.LBB13_602:                             # %while.end.1823
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_603
.LBB13_603:                             # %if.end.1824
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_604
.LBB13_604:                             # %if.end.1825
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -560(%rbp)
	jne	.LBB13_606
# BB#605:                               # %if.then.1827
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movl	%ecx, %edx
	movl	%edx, -564(%rbp)
	jmp	.LBB13_621
.LBB13_606:                             # %if.else.1831
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -564(%rbp)
	je	.LBB13_619
# BB#607:                               # %if.then.1833
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -560(%rbp)
	movslq	-564(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jbe	.LBB13_609
# BB#608:                               # %if.then.1838
                                        #   in Loop: Header=BB13_15 Depth=1
	movslq	-564(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB13_618
.LBB13_609:                             # %if.else.1841
                                        #   in Loop: Header=BB13_15 Depth=1
	movslq	-564(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	48(%rcx), %rax
	ja	.LBB13_611
# BB#610:                               # %lor.lhs.false.1846
                                        #   in Loop: Header=BB13_15 Depth=1
	leaq	-80(%rbp), %rax
	movl	-564(%rbp), %edi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	group_in_compile_stack
	movsbl	%al, %edi
	cmpl	$0, %edi
	je	.LBB13_617
.LBB13_611:                             # %if.then.1850
	jmp	.LBB13_612
.LBB13_612:                             # %do.body.1851
	jmp	.LBB13_613
.LBB13_613:                             # %do.body.1852
	cmpq	$0, -168(%rbp)
	je	.LBB13_615
# BB#614:                               # %if.then.1855
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_615:                             # %if.end.1857
	jmp	.LBB13_616
.LBB13_616:                             # %do.end.1858
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$2, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_617:                             # %if.end.1861
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_618
.LBB13_618:                             # %if.end.1862
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_620
.LBB13_619:                             # %if.else.1863
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	subq	48(%rdx), %rcx
	movl	%ecx, %eax
	movl	%eax, -564(%rbp)
.LBB13_620:                             # %if.end.1867
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_621
.LBB13_621:                             # %if.end.1868
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_625
# BB#622:                               # %if.then.1873
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_624
# BB#623:                               # %if.then.1883
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_624:                             # %if.end.1884
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-72(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB13_625:                             # %if.end.1887
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -144(%rbp)
	je	.LBB13_627
# BB#626:                               # %cond.true.1896
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB13_628
.LBB13_627:                             # %cond.false.1902
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB13_628
.LBB13_628:                             # %cond.end.1903
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-564(%rbp), %edx
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	movl	%edx, 24(%rax)
	cmpl	$255, -564(%rbp)
	jg	.LBB13_652
# BB#629:                               # %land.lhs.true.1922
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -564(%rbp)
	jle	.LBB13_652
# BB#630:                               # %if.then.1925
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_631
.LBB13_631:                             # %do.body.1926
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_632
.LBB13_632:                             # %while.cond.1927
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_650
# BB#633:                               # %while.body.1936
                                        #   in Loop: Header=BB13_632 Depth=2
	jmp	.LBB13_634
.LBB13_634:                             # %do.body.1937
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_636
# BB#635:                               # %if.then.1943
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_636:                             # %if.end.1944
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_638
# BB#637:                               # %if.then.1950
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_638:                             # %if.end.1952
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_640
# BB#639:                               # %if.then.1961
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_640:                             # %if.end.1962
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-584(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_648
# BB#641:                               # %if.then.1966
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-584(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-592(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-584(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_643
# BB#642:                               # %if.then.1978
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-592(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-584(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_643:                             # %if.end.1983
                                        #   in Loop: Header=BB13_632 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_645
# BB#644:                               # %if.then.1985
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-592(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-584(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_645:                             # %if.end.1990
                                        #   in Loop: Header=BB13_632 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_647
# BB#646:                               # %if.then.1992
                                        #   in Loop: Header=BB13_632 Depth=2
	movq	-592(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-584(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_647:                             # %if.end.1997
                                        #   in Loop: Header=BB13_632 Depth=2
	jmp	.LBB13_648
.LBB13_648:                             # %if.end.1998
                                        #   in Loop: Header=BB13_632 Depth=2
	jmp	.LBB13_649
.LBB13_649:                             # %do.end.1999
                                        #   in Loop: Header=BB13_632 Depth=2
	jmp	.LBB13_632
.LBB13_650:                             # %while.end.2000
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$6, (%rax)
	movl	-564(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#651:                               # %do.end.2004
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_652
.LBB13_652:                             # %if.end.2005
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$0, -112(%rbp)
	jmp	.LBB13_1220
.LBB13_653:                             # %sw.bb.2008
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB13_655
# BB#654:                               # %if.then.2011
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_655:                             # %if.end.2012
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB13_664
# BB#656:                               # %if.then.2016
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB13_658
# BB#657:                               # %if.then.2019
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_658:                             # %if.else.2020
	jmp	.LBB13_659
.LBB13_659:                             # %do.body.2021
	jmp	.LBB13_660
.LBB13_660:                             # %do.body.2022
	cmpq	$0, -168(%rbp)
	je	.LBB13_662
# BB#661:                               # %if.then.2025
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_662:                             # %if.end.2027
	jmp	.LBB13_663
.LBB13_663:                             # %do.end.2028
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$16, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_664:                             # %if.end.2032
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_665
.LBB13_665:                             # %handle_close
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_666
.LBB13_666:                             # %do.body.2033
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB13_668
# BB#667:                               # %if.then.2035
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB13_668:                             # %if.end.2041
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_669
.LBB13_669:                             # %do.end.2042
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB13_678
# BB#670:                               # %if.then.2046
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$131072, %rax           # imm = 0x20000
	cmpq	$0, %rax
	je	.LBB13_672
# BB#671:                               # %if.then.2049
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_672:                             # %if.else.2050
	jmp	.LBB13_673
.LBB13_673:                             # %do.body.2051
	jmp	.LBB13_674
.LBB13_674:                             # %do.body.2052
	cmpq	$0, -168(%rbp)
	je	.LBB13_676
# BB#675:                               # %if.then.2055
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_676:                             # %if.end.2057
	jmp	.LBB13_677
.LBB13_677:                             # %do.end.2058
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$16, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_678:                             # %if.end.2062
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_680
# BB#679:                               # %cond.true.2077
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	8(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB13_681
.LBB13_680:                             # %cond.false.2085
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB13_681
.LBB13_681:                             # %cond.end.2086
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	-80(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	-80(%rbp), %rax
	movl	24(%rax), %edx
	movl	%edx, -596(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$255, -596(%rbp)
	jg	.LBB13_705
# BB#682:                               # %land.lhs.true.2100
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -596(%rbp)
	jle	.LBB13_705
# BB#683:                               # %if.then.2103
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_684
.LBB13_684:                             # %do.body.2104
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_685
.LBB13_685:                             # %while.cond.2105
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_703
# BB#686:                               # %while.body.2114
                                        #   in Loop: Header=BB13_685 Depth=2
	jmp	.LBB13_687
.LBB13_687:                             # %do.body.2115
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_689
# BB#688:                               # %if.then.2121
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_689:                             # %if.end.2122
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_691
# BB#690:                               # %if.then.2128
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_691:                             # %if.end.2130
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_693
# BB#692:                               # %if.then.2139
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_693:                             # %if.end.2140
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-608(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_701
# BB#694:                               # %if.then.2144
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-616(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_696
# BB#695:                               # %if.then.2156
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-616(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_696:                             # %if.end.2161
                                        #   in Loop: Header=BB13_685 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_698
# BB#697:                               # %if.then.2163
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-616(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_698:                             # %if.end.2168
                                        #   in Loop: Header=BB13_685 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_700
# BB#699:                               # %if.then.2170
                                        #   in Loop: Header=BB13_685 Depth=2
	movq	-616(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-608(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_700:                             # %if.end.2175
                                        #   in Loop: Header=BB13_685 Depth=2
	jmp	.LBB13_701
.LBB13_701:                             # %if.end.2176
                                        #   in Loop: Header=BB13_685 Depth=2
	jmp	.LBB13_702
.LBB13_702:                             # %do.end.2177
                                        #   in Loop: Header=BB13_685 Depth=2
	jmp	.LBB13_685
.LBB13_703:                             # %while.end.2178
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$7, (%rax)
	movl	-596(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#704:                               # %do.end.2182
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_705
.LBB13_705:                             # %if.end.2183
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_706:                             # %sw.bb.2184
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	jne	.LBB13_708
# BB#707:                               # %lor.lhs.false.2187
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB13_709
.LBB13_708:                             # %if.then.2190
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_709:                             # %if.end.2191
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_710
.LBB13_710:                             # %handle_alt
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$1024, %rax             # imm = 0x400
	cmpq	$0, %rax
	je	.LBB13_712
# BB#711:                               # %if.then.2194
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_712:                             # %if.end.2195
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_713
.LBB13_713:                             # %while.cond.2196
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_731
# BB#714:                               # %while.body.2205
                                        #   in Loop: Header=BB13_713 Depth=2
	jmp	.LBB13_715
.LBB13_715:                             # %do.body.2206
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_717
# BB#716:                               # %if.then.2212
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_717:                             # %if.end.2213
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_719
# BB#718:                               # %if.then.2219
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_719:                             # %if.end.2221
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_721
# BB#720:                               # %if.then.2230
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_721:                             # %if.end.2231
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-624(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_729
# BB#722:                               # %if.then.2235
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-624(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-632(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-624(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_724
# BB#723:                               # %if.then.2247
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-632(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-624(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_724:                             # %if.end.2252
                                        #   in Loop: Header=BB13_713 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_726
# BB#725:                               # %if.then.2254
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-632(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-624(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_726:                             # %if.end.2259
                                        #   in Loop: Header=BB13_713 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_728
# BB#727:                               # %if.then.2261
                                        #   in Loop: Header=BB13_713 Depth=2
	movq	-632(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-624(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_728:                             # %if.end.2266
                                        #   in Loop: Header=BB13_713 Depth=2
	jmp	.LBB13_729
.LBB13_729:                             # %if.end.2267
                                        #   in Loop: Header=BB13_713 Depth=2
	jmp	.LBB13_730
.LBB13_730:                             # %do.end.2268
                                        #   in Loop: Header=BB13_713 Depth=2
	jmp	.LBB13_713
.LBB13_731:                             # %while.end.2269
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$14, %edi
	movq	-128(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movq	-128(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	callq	insert_op1
	movq	$0, -112(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
# BB#732:                               # %do.body.2277
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB13_734
# BB#733:                               # %if.then.2279
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB13_734:                             # %if.end.2285
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_735
.LBB13_735:                             # %do.end.2286
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB13_736:                             # %while.cond.2287
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_754
# BB#737:                               # %while.body.2296
                                        #   in Loop: Header=BB13_736 Depth=2
	jmp	.LBB13_738
.LBB13_738:                             # %do.body.2297
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_740
# BB#739:                               # %if.then.2303
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_740:                             # %if.end.2304
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_742
# BB#741:                               # %if.then.2310
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_742:                             # %if.end.2312
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_744
# BB#743:                               # %if.then.2321
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_744:                             # %if.end.2322
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-640(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_752
# BB#745:                               # %if.then.2326
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-640(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-648(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-640(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_747
# BB#746:                               # %if.then.2338
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-648(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-640(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_747:                             # %if.end.2343
                                        #   in Loop: Header=BB13_736 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_749
# BB#748:                               # %if.then.2345
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-648(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-640(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_749:                             # %if.end.2350
                                        #   in Loop: Header=BB13_736 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_751
# BB#750:                               # %if.then.2352
                                        #   in Loop: Header=BB13_736 Depth=2
	movq	-648(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-640(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_751:                             # %if.end.2357
                                        #   in Loop: Header=BB13_736 Depth=2
	jmp	.LBB13_752
.LBB13_752:                             # %if.end.2358
                                        #   in Loop: Header=BB13_736 Depth=2
	jmp	.LBB13_753
.LBB13_753:                             # %do.end.2359
                                        #   in Loop: Header=BB13_736 Depth=2
	jmp	.LBB13_736
.LBB13_754:                             # %while.end.2360
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB13_1220
.LBB13_755:                             # %sw.bb.2362
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB13_757
# BB#756:                               # %lor.lhs.false.2365
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB13_758
.LBB13_757:                             # %if.then.2368
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_758:                             # %if.end.2369
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_759
.LBB13_759:                             # %handle_interval
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -652(%rbp)
	movl	$-1, -656(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)
# BB#760:                               # %do.body.2370
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_767
# BB#761:                               # %if.then.2373
	jmp	.LBB13_762
.LBB13_762:                             # %do.body.2374
	jmp	.LBB13_763
.LBB13_763:                             # %do.body.2375
	cmpq	$0, -168(%rbp)
	je	.LBB13_765
# BB#764:                               # %if.then.2378
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_765:                             # %if.end.2380
	jmp	.LBB13_766
.LBB13_766:                             # %do.end.2381
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_767:                             # %if.else.2384
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_768
.LBB13_768:                             # %do.body.2385
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_770
# BB#769:                               # %if.then.2389
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_770:                             # %if.end.2390
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -660(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-660(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#771:                               # %do.end.2394
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_772
.LBB13_772:                             # %while.cond.2395
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -1193(%rbp)        # 1-byte Spill
	jg	.LBB13_774
# BB#773:                               # %land.rhs.2398
                                        #   in Loop: Header=BB13_772 Depth=2
	cmpl	$57, -44(%rbp)
	setle	%al
	movb	%al, -1193(%rbp)        # 1-byte Spill
.LBB13_774:                             # %land.end.2401
                                        #   in Loop: Header=BB13_772 Depth=2
	movb	-1193(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_775
	jmp	.LBB13_796
.LBB13_775:                             # %while.body.2402
                                        #   in Loop: Header=BB13_772 Depth=2
	cmpl	$0, -652(%rbp)
	jge	.LBB13_777
# BB#776:                               # %if.then.2405
                                        #   in Loop: Header=BB13_772 Depth=2
	movl	$0, -652(%rbp)
.LBB13_777:                             # %if.end.2406
                                        #   in Loop: Header=BB13_772 Depth=2
	movl	$3276, %eax             # imm = 0xCCC
	movl	$7, %ecx
	movl	-44(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	cmpl	-652(%rbp), %eax
	jge	.LBB13_784
# BB#778:                               # %if.then.2413
	jmp	.LBB13_779
.LBB13_779:                             # %do.body.2414
	jmp	.LBB13_780
.LBB13_780:                             # %do.body.2415
	cmpq	$0, -168(%rbp)
	je	.LBB13_782
# BB#781:                               # %if.then.2418
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_782:                             # %if.end.2420
	jmp	.LBB13_783
.LBB13_783:                             # %do.end.2421
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_784:                             # %if.end.2424
                                        #   in Loop: Header=BB13_772 Depth=2
	imull	$10, -652(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -652(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB13_791
# BB#785:                               # %if.then.2430
	jmp	.LBB13_786
.LBB13_786:                             # %do.body.2431
	jmp	.LBB13_787
.LBB13_787:                             # %do.body.2432
	cmpq	$0, -168(%rbp)
	je	.LBB13_789
# BB#788:                               # %if.then.2435
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_789:                             # %if.end.2437
	jmp	.LBB13_790
.LBB13_790:                             # %do.end.2438
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_791:                             # %if.end.2441
                                        #   in Loop: Header=BB13_772 Depth=2
	jmp	.LBB13_792
.LBB13_792:                             # %do.body.2442
                                        #   in Loop: Header=BB13_772 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_794
# BB#793:                               # %if.then.2446
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_794:                             # %if.end.2447
                                        #   in Loop: Header=BB13_772 Depth=2
	movl	$1, -664(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-664(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#795:                               # %do.end.2451
                                        #   in Loop: Header=BB13_772 Depth=2
	jmp	.LBB13_772
.LBB13_796:                             # %while.end.2452
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_797
.LBB13_797:                             # %if.end.2453
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_798
.LBB13_798:                             # %do.end.2454
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$44, -44(%rbp)
	jne	.LBB13_839
# BB#799:                               # %if.then.2457
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_800
.LBB13_800:                             # %do.body.2458
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_807
# BB#801:                               # %if.then.2461
	jmp	.LBB13_802
.LBB13_802:                             # %do.body.2462
	jmp	.LBB13_803
.LBB13_803:                             # %do.body.2463
	cmpq	$0, -168(%rbp)
	je	.LBB13_805
# BB#804:                               # %if.then.2466
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_805:                             # %if.end.2468
	jmp	.LBB13_806
.LBB13_806:                             # %do.end.2469
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_807:                             # %if.else.2472
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_808
.LBB13_808:                             # %do.body.2473
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_810
# BB#809:                               # %if.then.2477
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_810:                             # %if.end.2478
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -668(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-668(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#811:                               # %do.end.2482
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_812
.LBB13_812:                             # %while.cond.2483
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -1194(%rbp)        # 1-byte Spill
	jg	.LBB13_814
# BB#813:                               # %land.rhs.2486
                                        #   in Loop: Header=BB13_812 Depth=2
	cmpl	$57, -44(%rbp)
	setle	%al
	movb	%al, -1194(%rbp)        # 1-byte Spill
.LBB13_814:                             # %land.end.2489
                                        #   in Loop: Header=BB13_812 Depth=2
	movb	-1194(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_815
	jmp	.LBB13_836
.LBB13_815:                             # %while.body.2490
                                        #   in Loop: Header=BB13_812 Depth=2
	cmpl	$0, -656(%rbp)
	jge	.LBB13_817
# BB#816:                               # %if.then.2493
                                        #   in Loop: Header=BB13_812 Depth=2
	movl	$0, -656(%rbp)
.LBB13_817:                             # %if.end.2494
                                        #   in Loop: Header=BB13_812 Depth=2
	movl	$3276, %eax             # imm = 0xCCC
	movl	$7, %ecx
	movl	-44(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	cmpl	-656(%rbp), %eax
	jge	.LBB13_824
# BB#818:                               # %if.then.2501
	jmp	.LBB13_819
.LBB13_819:                             # %do.body.2502
	jmp	.LBB13_820
.LBB13_820:                             # %do.body.2503
	cmpq	$0, -168(%rbp)
	je	.LBB13_822
# BB#821:                               # %if.then.2506
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_822:                             # %if.end.2508
	jmp	.LBB13_823
.LBB13_823:                             # %do.end.2509
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_824:                             # %if.end.2512
                                        #   in Loop: Header=BB13_812 Depth=2
	imull	$10, -656(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -656(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB13_831
# BB#825:                               # %if.then.2518
	jmp	.LBB13_826
.LBB13_826:                             # %do.body.2519
	jmp	.LBB13_827
.LBB13_827:                             # %do.body.2520
	cmpq	$0, -168(%rbp)
	je	.LBB13_829
# BB#828:                               # %if.then.2523
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_829:                             # %if.end.2525
	jmp	.LBB13_830
.LBB13_830:                             # %do.end.2526
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$9, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_831:                             # %if.end.2529
                                        #   in Loop: Header=BB13_812 Depth=2
	jmp	.LBB13_832
.LBB13_832:                             # %do.body.2530
                                        #   in Loop: Header=BB13_812 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_834
# BB#833:                               # %if.then.2534
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_834:                             # %if.end.2535
                                        #   in Loop: Header=BB13_812 Depth=2
	movl	$1, -672(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-672(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#835:                               # %do.end.2539
                                        #   in Loop: Header=BB13_812 Depth=2
	jmp	.LBB13_812
.LBB13_836:                             # %while.end.2540
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_837
.LBB13_837:                             # %if.end.2541
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_838
.LBB13_838:                             # %do.end.2542
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_840
.LBB13_839:                             # %if.else.2543
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-652(%rbp), %eax
	movl	%eax, -656(%rbp)
.LBB13_840:                             # %if.end.2544
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -652(%rbp)
	jl	.LBB13_843
# BB#841:                               # %lor.lhs.false.2547
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	cmpl	-656(%rbp), %eax
	jg	.LBB13_849
# BB#842:                               # %land.lhs.true.2550
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-656(%rbp), %eax
	cmpl	-652(%rbp), %eax
	jge	.LBB13_849
.LBB13_843:                             # %if.then.2553
	jmp	.LBB13_844
.LBB13_844:                             # %do.body.2554
	jmp	.LBB13_845
.LBB13_845:                             # %do.body.2555
	cmpq	$0, -168(%rbp)
	je	.LBB13_847
# BB#846:                               # %if.then.2558
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_847:                             # %if.end.2560
	jmp	.LBB13_848
.LBB13_848:                             # %do.end.2561
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_849:                             # %if.end.2564
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB13_869
# BB#850:                               # %if.then.2567
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$92, -44(%rbp)
	je	.LBB13_857
# BB#851:                               # %if.then.2570
	jmp	.LBB13_852
.LBB13_852:                             # %do.body.2571
	jmp	.LBB13_853
.LBB13_853:                             # %do.body.2572
	cmpq	$0, -168(%rbp)
	je	.LBB13_855
# BB#854:                               # %if.then.2575
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_855:                             # %if.end.2577
	jmp	.LBB13_856
.LBB13_856:                             # %do.end.2578
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_857:                             # %if.end.2581
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_864
# BB#858:                               # %if.then.2584
	jmp	.LBB13_859
.LBB13_859:                             # %do.body.2585
	jmp	.LBB13_860
.LBB13_860:                             # %do.body.2586
	cmpq	$0, -168(%rbp)
	je	.LBB13_862
# BB#861:                               # %if.then.2589
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_862:                             # %if.end.2591
	jmp	.LBB13_863
.LBB13_863:                             # %do.end.2592
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$5, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_864:                             # %if.end.2595
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_865
.LBB13_865:                             # %do.body.2596
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_867
# BB#866:                               # %if.then.2600
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_867:                             # %if.end.2601
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -676(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-676(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#868:                               # %do.end.2605
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_869
.LBB13_869:                             # %if.end.2606
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$125, -44(%rbp)
	je	.LBB13_876
# BB#870:                               # %if.then.2609
	jmp	.LBB13_871
.LBB13_871:                             # %do.body.2610
	jmp	.LBB13_872
.LBB13_872:                             # %do.body.2611
	cmpq	$0, -168(%rbp)
	je	.LBB13_874
# BB#873:                               # %if.then.2614
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_874:                             # %if.end.2616
	jmp	.LBB13_875
.LBB13_875:                             # %do.end.2617
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$10, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_876:                             # %if.end.2620
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -120(%rbp)
	jne	.LBB13_889
# BB#877:                               # %if.then.2622
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB13_884
# BB#878:                               # %if.then.2625
	jmp	.LBB13_879
.LBB13_879:                             # %do.body.2626
	jmp	.LBB13_880
.LBB13_880:                             # %do.body.2627
	cmpq	$0, -168(%rbp)
	je	.LBB13_882
# BB#881:                               # %if.then.2630
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_882:                             # %if.end.2632
	jmp	.LBB13_883
.LBB13_883:                             # %do.end.2633
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$13, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_884:                             # %if.else.2636
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	je	.LBB13_886
# BB#885:                               # %if.then.2639
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB13_887
.LBB13_886:                             # %if.else.2640
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_927
.LBB13_887:                             # %if.end.2641
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_888
.LBB13_888:                             # %if.end.2642
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_889
.LBB13_889:                             # %if.end.2643
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -656(%rbp)
	jne	.LBB13_891
# BB#890:                               # %if.then.2646
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_926
.LBB13_891:                             # %if.else.2647
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$1, -652(%rbp)
	jne	.LBB13_894
# BB#892:                               # %land.lhs.true.2650
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$1, -656(%rbp)
	jne	.LBB13_894
# BB#893:                               # %if.then.2653
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_925
.LBB13_894:                             # %if.else.2654
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -656(%rbp)
	jge	.LBB13_896
# BB#895:                               # %cond.true.2657
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$3, %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	jmp	.LBB13_897
.LBB13_896:                             # %cond.false.2658
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	$5, %ecx
	cmpl	$1, -656(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
.LBB13_897:                             # %cond.end.2662
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1200(%rbp), %eax       # 4-byte Reload
	movl	%eax, -680(%rbp)
	movl	$0, -684(%rbp)
.LBB13_898:                             # %while.cond.2665
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$20, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_916
# BB#899:                               # %while.body.2674
                                        #   in Loop: Header=BB13_898 Depth=2
	jmp	.LBB13_900
.LBB13_900:                             # %do.body.2675
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_902
# BB#901:                               # %if.then.2681
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_902:                             # %if.end.2682
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_904
# BB#903:                               # %if.then.2688
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_904:                             # %if.end.2690
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_906
# BB#905:                               # %if.then.2699
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_906:                             # %if.end.2700
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-696(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_914
# BB#907:                               # %if.then.2704
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-696(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-704(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-696(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_909
# BB#908:                               # %if.then.2716
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-704(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-696(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_909:                             # %if.end.2721
                                        #   in Loop: Header=BB13_898 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_911
# BB#910:                               # %if.then.2723
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-704(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-696(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_911:                             # %if.end.2728
                                        #   in Loop: Header=BB13_898 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_913
# BB#912:                               # %if.then.2730
                                        #   in Loop: Header=BB13_898 Depth=2
	movq	-704(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-696(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_913:                             # %if.end.2735
                                        #   in Loop: Header=BB13_898 Depth=2
	jmp	.LBB13_914
.LBB13_914:                             # %if.end.2736
                                        #   in Loop: Header=BB13_898 Depth=2
	jmp	.LBB13_915
.LBB13_915:                             # %do.end.2737
                                        #   in Loop: Header=BB13_898 Depth=2
	jmp	.LBB13_898
.LBB13_916:                             # %while.end.2738
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -652(%rbp)
	jne	.LBB13_918
# BB#917:                               # %if.then.2741
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$16, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movl	-680(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	insert_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_919
.LBB13_918:                             # %if.else.2751
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$19, %edi
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movl	-680(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	-652(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movq	%rax, %r8
	callq	insert_op2
	movl	$21, %edi
	movl	$5, %edx
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movl	-652(%rbp), %ecx
	movq	-56(%rbp), %r8
	callq	insert_op2
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movl	-684(%rbp), %ecx
	addl	$5, %ecx
	movl	%ecx, -684(%rbp)
.LBB13_919:                             # %if.end.2763
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -656(%rbp)
	jge	.LBB13_921
# BB#920:                               # %if.then.2766
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$13, %edi
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-684(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	store_op1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_924
.LBB13_921:                             # %if.else.2775
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$1, -656(%rbp)
	jle	.LBB13_923
# BB#922:                               # %if.then.2778
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$20, %edi
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-684(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	subq	$3, %rax
	movl	%eax, %ecx
	movl	-656(%rbp), %r8d
	subl	$1, %r8d
	movl	%ecx, %edx
	movl	%r8d, %ecx
	callq	store_op2
	movl	$21, %edi
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %r9
	subq	%r9, %rax
	movl	%eax, %ecx
	movl	-656(%rbp), %edx
	subl	$1, %edx
	movq	-56(%rbp), %r8
	movl	%edx, -1204(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1204(%rbp), %ecx       # 4-byte Reload
	callq	insert_op2
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -56(%rbp)
.LBB13_923:                             # %if.end.2794
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_924
.LBB13_924:                             # %if.end.2795
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_925
.LBB13_925:                             # %if.end.2796
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_926
.LBB13_926:                             # %if.end.2797
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	$0, -112(%rbp)
	movq	$0, -136(%rbp)
	jmp	.LBB13_1220
.LBB13_927:                             # %unfetch_interval
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -136(%rbp)
	movl	$123, -44(%rbp)
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	jne	.LBB13_929
# BB#928:                               # %if.then.2800
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_929:                             # %if.else.2801
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_930:                             # %sw.bb.2802
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_932
# BB#931:                               # %if.then.2805
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_932:                             # %if.end.2806
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#933:                               # %do.body.2807
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_934
.LBB13_934:                             # %while.cond.2808
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_952
# BB#935:                               # %while.body.2817
                                        #   in Loop: Header=BB13_934 Depth=2
	jmp	.LBB13_936
.LBB13_936:                             # %do.body.2818
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_938
# BB#937:                               # %if.then.2824
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_938:                             # %if.end.2825
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_940
# BB#939:                               # %if.then.2831
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_940:                             # %if.end.2833
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_942
# BB#941:                               # %if.then.2842
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_942:                             # %if.end.2843
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-712(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_950
# BB#943:                               # %if.then.2847
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-712(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-720(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-712(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_945
# BB#944:                               # %if.then.2859
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-720(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-712(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_945:                             # %if.end.2864
                                        #   in Loop: Header=BB13_934 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_947
# BB#946:                               # %if.then.2866
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-720(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-712(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_947:                             # %if.end.2871
                                        #   in Loop: Header=BB13_934 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_949
# BB#948:                               # %if.then.2873
                                        #   in Loop: Header=BB13_934 Depth=2
	movq	-720(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-712(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_949:                             # %if.end.2878
                                        #   in Loop: Header=BB13_934 Depth=2
	jmp	.LBB13_950
.LBB13_950:                             # %if.end.2879
                                        #   in Loop: Header=BB13_934 Depth=2
	jmp	.LBB13_951
.LBB13_951:                             # %do.end.2880
                                        #   in Loop: Header=BB13_934 Depth=2
	jmp	.LBB13_934
.LBB13_952:                             # %while.end.2881
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$28, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$1, (%rax)
# BB#953:                               # %do.end.2884
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_954:                             # %sw.bb.2885
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_956
# BB#955:                               # %if.then.2888
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_956:                             # %if.end.2889
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#957:                               # %do.body.2890
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_958
.LBB13_958:                             # %while.cond.2891
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_976
# BB#959:                               # %while.body.2900
                                        #   in Loop: Header=BB13_958 Depth=2
	jmp	.LBB13_960
.LBB13_960:                             # %do.body.2901
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_962
# BB#961:                               # %if.then.2907
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_962:                             # %if.end.2908
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_964
# BB#963:                               # %if.then.2914
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_964:                             # %if.end.2916
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_966
# BB#965:                               # %if.then.2925
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_966:                             # %if.end.2926
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-728(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_974
# BB#967:                               # %if.then.2930
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-728(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-736(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-728(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_969
# BB#968:                               # %if.then.2942
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-736(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-728(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_969:                             # %if.end.2947
                                        #   in Loop: Header=BB13_958 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_971
# BB#970:                               # %if.then.2949
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-736(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-728(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_971:                             # %if.end.2954
                                        #   in Loop: Header=BB13_958 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_973
# BB#972:                               # %if.then.2956
                                        #   in Loop: Header=BB13_958 Depth=2
	movq	-736(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-728(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_973:                             # %if.end.2961
                                        #   in Loop: Header=BB13_958 Depth=2
	jmp	.LBB13_974
.LBB13_974:                             # %if.end.2962
                                        #   in Loop: Header=BB13_958 Depth=2
	jmp	.LBB13_975
.LBB13_975:                             # %do.end.2963
                                        #   in Loop: Header=BB13_958 Depth=2
	jmp	.LBB13_958
.LBB13_976:                             # %while.end.2964
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$29, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$1, (%rax)
# BB#977:                               # %do.end.2967
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_978:                             # %sw.bb.2968
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_980
# BB#979:                               # %if.then.2971
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_980:                             # %if.end.2972
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#981:                               # %do.body.2973
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_982
.LBB13_982:                             # %while.cond.2974
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1000
# BB#983:                               # %while.body.2983
                                        #   in Loop: Header=BB13_982 Depth=2
	jmp	.LBB13_984
.LBB13_984:                             # %do.body.2984
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_986
# BB#985:                               # %if.then.2990
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_986:                             # %if.end.2991
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_988
# BB#987:                               # %if.then.2997
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_988:                             # %if.end.2999
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_990
# BB#989:                               # %if.then.3008
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_990:                             # %if.end.3009
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-744(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_998
# BB#991:                               # %if.then.3013
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-744(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-752(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-744(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_993
# BB#992:                               # %if.then.3025
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-752(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-744(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_993:                             # %if.end.3030
                                        #   in Loop: Header=BB13_982 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_995
# BB#994:                               # %if.then.3032
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-752(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-744(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_995:                             # %if.end.3037
                                        #   in Loop: Header=BB13_982 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_997
# BB#996:                               # %if.then.3039
                                        #   in Loop: Header=BB13_982 Depth=2
	movq	-752(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-744(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_997:                             # %if.end.3044
                                        #   in Loop: Header=BB13_982 Depth=2
	jmp	.LBB13_998
.LBB13_998:                             # %if.end.3045
                                        #   in Loop: Header=BB13_982 Depth=2
	jmp	.LBB13_999
.LBB13_999:                             # %do.end.3046
                                        #   in Loop: Header=BB13_982 Depth=2
	jmp	.LBB13_982
.LBB13_1000:                            # %while.end.3047
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$22, (%rax)
# BB#1001:                              # %do.end.3049
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1002:                            # %sw.bb.3050
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1004
# BB#1003:                              # %if.then.3053
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1004:                            # %if.end.3054
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1005:                              # %do.body.3055
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1006
.LBB13_1006:                            # %while.cond.3056
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1024
# BB#1007:                              # %while.body.3065
                                        #   in Loop: Header=BB13_1006 Depth=2
	jmp	.LBB13_1008
.LBB13_1008:                            # %do.body.3066
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1010
# BB#1009:                              # %if.then.3072
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1010:                            # %if.end.3073
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1012
# BB#1011:                              # %if.then.3079
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1012:                            # %if.end.3081
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1014
# BB#1013:                              # %if.then.3090
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1014:                            # %if.end.3091
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-760(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1022
# BB#1015:                              # %if.then.3095
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-768(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1017
# BB#1016:                              # %if.then.3107
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-768(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1017:                            # %if.end.3112
                                        #   in Loop: Header=BB13_1006 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1019
# BB#1018:                              # %if.then.3114
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-768(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1019:                            # %if.end.3119
                                        #   in Loop: Header=BB13_1006 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1021
# BB#1020:                              # %if.then.3121
                                        #   in Loop: Header=BB13_1006 Depth=2
	movq	-768(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-760(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1021:                            # %if.end.3126
                                        #   in Loop: Header=BB13_1006 Depth=2
	jmp	.LBB13_1022
.LBB13_1022:                            # %if.end.3127
                                        #   in Loop: Header=BB13_1006 Depth=2
	jmp	.LBB13_1023
.LBB13_1023:                            # %do.end.3128
                                        #   in Loop: Header=BB13_1006 Depth=2
	jmp	.LBB13_1006
.LBB13_1024:                            # %while.end.3129
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$23, (%rax)
# BB#1025:                              # %do.end.3131
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1026:                            # %sw.bb.3132
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1028
# BB#1027:                              # %if.then.3135
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1028:                            # %if.end.3136
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1029:                              # %do.body.3137
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_1031
# BB#1030:                              # %if.then.3141
	movl	$14, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1031:                            # %if.end.3142
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, -772(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-772(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#1032:                              # %do.end.3146
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$60, -44(%rbp)
	jne	.LBB13_1055
# BB#1033:                              # %if.then.3149
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1034
.LBB13_1034:                            # %do.body.3150
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1035
.LBB13_1035:                            # %while.cond.3151
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1053
# BB#1036:                              # %while.body.3160
                                        #   in Loop: Header=BB13_1035 Depth=2
	jmp	.LBB13_1037
.LBB13_1037:                            # %do.body.3161
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1039
# BB#1038:                              # %if.then.3167
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1039:                            # %if.end.3168
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1041
# BB#1040:                              # %if.then.3174
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1041:                            # %if.end.3176
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1043
# BB#1042:                              # %if.then.3185
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1043:                            # %if.end.3186
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-784(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1051
# BB#1044:                              # %if.then.3190
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-784(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-792(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-784(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1046
# BB#1045:                              # %if.then.3202
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-792(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-784(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1046:                            # %if.end.3207
                                        #   in Loop: Header=BB13_1035 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1048
# BB#1047:                              # %if.then.3209
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-792(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-784(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1048:                            # %if.end.3214
                                        #   in Loop: Header=BB13_1035 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1050
# BB#1049:                              # %if.then.3216
                                        #   in Loop: Header=BB13_1035 Depth=2
	movq	-792(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-784(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1050:                            # %if.end.3221
                                        #   in Loop: Header=BB13_1035 Depth=2
	jmp	.LBB13_1051
.LBB13_1051:                            # %if.end.3222
                                        #   in Loop: Header=BB13_1035 Depth=2
	jmp	.LBB13_1052
.LBB13_1052:                            # %do.end.3223
                                        #   in Loop: Header=BB13_1035 Depth=2
	jmp	.LBB13_1035
.LBB13_1053:                            # %while.end.3224
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$26, (%rax)
# BB#1054:                              # %do.end.3226
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1085
.LBB13_1055:                            # %if.else.3227
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$62, -44(%rbp)
	jne	.LBB13_1078
# BB#1056:                              # %if.then.3230
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1057
.LBB13_1057:                            # %do.body.3231
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1058
.LBB13_1058:                            # %while.cond.3232
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1076
# BB#1059:                              # %while.body.3241
                                        #   in Loop: Header=BB13_1058 Depth=2
	jmp	.LBB13_1060
.LBB13_1060:                            # %do.body.3242
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1062
# BB#1061:                              # %if.then.3248
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1062:                            # %if.end.3249
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1064
# BB#1063:                              # %if.then.3255
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1064:                            # %if.end.3257
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1066
# BB#1065:                              # %if.then.3266
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1066:                            # %if.end.3267
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-800(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1074
# BB#1067:                              # %if.then.3271
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-808(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1069
# BB#1068:                              # %if.then.3283
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-808(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1069:                            # %if.end.3288
                                        #   in Loop: Header=BB13_1058 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1071
# BB#1070:                              # %if.then.3290
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-808(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1071:                            # %if.end.3295
                                        #   in Loop: Header=BB13_1058 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1073
# BB#1072:                              # %if.then.3297
                                        #   in Loop: Header=BB13_1058 Depth=2
	movq	-808(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-800(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1073:                            # %if.end.3302
                                        #   in Loop: Header=BB13_1058 Depth=2
	jmp	.LBB13_1074
.LBB13_1074:                            # %if.end.3303
                                        #   in Loop: Header=BB13_1058 Depth=2
	jmp	.LBB13_1075
.LBB13_1075:                            # %do.end.3304
                                        #   in Loop: Header=BB13_1058 Depth=2
	jmp	.LBB13_1058
.LBB13_1076:                            # %while.end.3305
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$27, (%rax)
# BB#1077:                              # %do.end.3307
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1084
.LBB13_1078:                            # %if.else.3308
	jmp	.LBB13_1079
.LBB13_1079:                            # %do.body.3309
	jmp	.LBB13_1080
.LBB13_1080:                            # %do.body.3310
	cmpq	$0, -168(%rbp)
	je	.LBB13_1082
# BB#1081:                              # %if.then.3313
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_1082:                            # %if.end.3315
	jmp	.LBB13_1083
.LBB13_1083:                            # %do.end.3316
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$2, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1084:                            # %if.end.3319
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1085
.LBB13_1085:                            # %if.end.3320
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1086:                            # %sw.bb.3321
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1088
# BB#1087:                              # %if.then.3324
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1088:                            # %if.end.3325
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1089
.LBB13_1089:                            # %do.body.3326
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1090
.LBB13_1090:                            # %while.cond.3327
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1108
# BB#1091:                              # %while.body.3336
                                        #   in Loop: Header=BB13_1090 Depth=2
	jmp	.LBB13_1092
.LBB13_1092:                            # %do.body.3337
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1094
# BB#1093:                              # %if.then.3343
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1094:                            # %if.end.3344
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1096
# BB#1095:                              # %if.then.3350
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1096:                            # %if.end.3352
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1098
# BB#1097:                              # %if.then.3361
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1098:                            # %if.end.3362
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-816(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1106
# BB#1099:                              # %if.then.3366
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-816(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-824(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-816(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1101
# BB#1100:                              # %if.then.3378
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-824(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-816(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1101:                            # %if.end.3383
                                        #   in Loop: Header=BB13_1090 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1103
# BB#1102:                              # %if.then.3385
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-824(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-816(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1103:                            # %if.end.3390
                                        #   in Loop: Header=BB13_1090 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1105
# BB#1104:                              # %if.then.3392
                                        #   in Loop: Header=BB13_1090 Depth=2
	movq	-824(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-816(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1105:                            # %if.end.3397
                                        #   in Loop: Header=BB13_1090 Depth=2
	jmp	.LBB13_1106
.LBB13_1106:                            # %if.end.3398
                                        #   in Loop: Header=BB13_1090 Depth=2
	jmp	.LBB13_1107
.LBB13_1107:                            # %do.end.3399
                                        #   in Loop: Header=BB13_1090 Depth=2
	jmp	.LBB13_1090
.LBB13_1108:                            # %while.end.3400
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$24, (%rax)
# BB#1109:                              # %do.end.3402
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1110:                            # %sw.bb.3403
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1112
# BB#1111:                              # %if.then.3406
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1112:                            # %if.end.3407
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1113
.LBB13_1113:                            # %do.body.3408
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1114
.LBB13_1114:                            # %while.cond.3409
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1132
# BB#1115:                              # %while.body.3418
                                        #   in Loop: Header=BB13_1114 Depth=2
	jmp	.LBB13_1116
.LBB13_1116:                            # %do.body.3419
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1118
# BB#1117:                              # %if.then.3425
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1118:                            # %if.end.3426
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1120
# BB#1119:                              # %if.then.3432
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1120:                            # %if.end.3434
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1122
# BB#1121:                              # %if.then.3443
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1122:                            # %if.end.3444
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-832(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1130
# BB#1123:                              # %if.then.3448
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-832(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-840(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-832(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1125
# BB#1124:                              # %if.then.3460
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-840(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-832(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1125:                            # %if.end.3465
                                        #   in Loop: Header=BB13_1114 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1127
# BB#1126:                              # %if.then.3467
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-840(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-832(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1127:                            # %if.end.3472
                                        #   in Loop: Header=BB13_1114 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1129
# BB#1128:                              # %if.then.3474
                                        #   in Loop: Header=BB13_1114 Depth=2
	movq	-840(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-832(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1129:                            # %if.end.3479
                                        #   in Loop: Header=BB13_1114 Depth=2
	jmp	.LBB13_1130
.LBB13_1130:                            # %if.end.3480
                                        #   in Loop: Header=BB13_1114 Depth=2
	jmp	.LBB13_1131
.LBB13_1131:                            # %do.end.3481
                                        #   in Loop: Header=BB13_1114 Depth=2
	jmp	.LBB13_1114
.LBB13_1132:                            # %while.end.3482
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$25, (%rax)
# BB#1133:                              # %do.end.3484
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1134:                            # %sw.bb.3485
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1136
# BB#1135:                              # %if.then.3488
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1136:                            # %if.end.3489
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1137
.LBB13_1137:                            # %do.body.3490
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1138
.LBB13_1138:                            # %while.cond.3491
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1156
# BB#1139:                              # %while.body.3500
                                        #   in Loop: Header=BB13_1138 Depth=2
	jmp	.LBB13_1140
.LBB13_1140:                            # %do.body.3501
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1142
# BB#1141:                              # %if.then.3507
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1142:                            # %if.end.3508
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1144
# BB#1143:                              # %if.then.3514
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1144:                            # %if.end.3516
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1146
# BB#1145:                              # %if.then.3525
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1146:                            # %if.end.3526
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-848(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1154
# BB#1147:                              # %if.then.3530
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-856(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1149
# BB#1148:                              # %if.then.3542
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-856(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1149:                            # %if.end.3547
                                        #   in Loop: Header=BB13_1138 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1151
# BB#1150:                              # %if.then.3549
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-856(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1151:                            # %if.end.3554
                                        #   in Loop: Header=BB13_1138 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1153
# BB#1152:                              # %if.then.3556
                                        #   in Loop: Header=BB13_1138 Depth=2
	movq	-856(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-848(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1153:                            # %if.end.3561
                                        #   in Loop: Header=BB13_1138 Depth=2
	jmp	.LBB13_1154
.LBB13_1154:                            # %if.end.3562
                                        #   in Loop: Header=BB13_1138 Depth=2
	jmp	.LBB13_1155
.LBB13_1155:                            # %do.end.3563
                                        #   in Loop: Header=BB13_1138 Depth=2
	jmp	.LBB13_1138
.LBB13_1156:                            # %while.end.3564
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$11, (%rax)
# BB#1157:                              # %do.end.3566
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1158:                            # %sw.bb.3567
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$524288, %rax           # imm = 0x80000
	cmpq	$0, %rax
	je	.LBB13_1160
# BB#1159:                              # %if.then.3570
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1160:                            # %if.end.3571
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1161
.LBB13_1161:                            # %do.body.3572
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1162
.LBB13_1162:                            # %while.cond.3573
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1180
# BB#1163:                              # %while.body.3582
                                        #   in Loop: Header=BB13_1162 Depth=2
	jmp	.LBB13_1164
.LBB13_1164:                            # %do.body.3583
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1166
# BB#1165:                              # %if.then.3589
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1166:                            # %if.end.3590
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1168
# BB#1167:                              # %if.then.3596
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1168:                            # %if.end.3598
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1170
# BB#1169:                              # %if.then.3607
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1170:                            # %if.end.3608
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-864(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1178
# BB#1171:                              # %if.then.3612
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-864(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-872(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-864(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1173
# BB#1172:                              # %if.then.3624
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-872(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-864(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1173:                            # %if.end.3629
                                        #   in Loop: Header=BB13_1162 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1175
# BB#1174:                              # %if.then.3631
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-872(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-864(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1175:                            # %if.end.3636
                                        #   in Loop: Header=BB13_1162 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1177
# BB#1176:                              # %if.then.3638
                                        #   in Loop: Header=BB13_1162 Depth=2
	movq	-872(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-864(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1177:                            # %if.end.3643
                                        #   in Loop: Header=BB13_1162 Depth=2
	jmp	.LBB13_1178
.LBB13_1178:                            # %if.end.3644
                                        #   in Loop: Header=BB13_1162 Depth=2
	jmp	.LBB13_1179
.LBB13_1179:                            # %do.end.3645
                                        #   in Loop: Header=BB13_1162 Depth=2
	jmp	.LBB13_1162
.LBB13_1180:                            # %while.end.3646
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$12, (%rax)
# BB#1181:                              # %do.end.3648
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1182:                            # %sw.bb.3649
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$16384, %rax            # imm = 0x4000
	cmpq	$0, %rax
	je	.LBB13_1184
# BB#1183:                              # %if.then.3652
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_1184:                            # %if.end.3653
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-44(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -876(%rbp)
	movslq	-876(%rbp), %rcx
	movq	-40(%rbp), %rdx
	cmpq	48(%rdx), %rcx
	ja	.LBB13_1187
# BB#1185:                              # %lor.lhs.false.3659
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$1, -876(%rbp)
	jl	.LBB13_1187
# BB#1186:                              # %lor.lhs.false.3662
                                        #   in Loop: Header=BB13_15 Depth=1
	leaq	-80(%rbp), %rax
	movl	-876(%rbp), %edi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	group_in_compile_stack
	movsbl	%al, %edi
	cmpl	$0, %edi
	je	.LBB13_1193
.LBB13_1187:                            # %if.then.3666
	jmp	.LBB13_1188
.LBB13_1188:                            # %do.body.3667
	jmp	.LBB13_1189
.LBB13_1189:                            # %do.body.3668
	cmpq	$0, -168(%rbp)
	je	.LBB13_1191
# BB#1190:                              # %if.then.3671
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_1191:                            # %if.end.3673
	jmp	.LBB13_1192
.LBB13_1192:                            # %do.end.3674
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$6, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1193:                            # %if.end.3677
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1194:                              # %do.body.3678
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1195
.LBB13_1195:                            # %while.cond.3679
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1213
# BB#1196:                              # %while.body.3688
                                        #   in Loop: Header=BB13_1195 Depth=2
	jmp	.LBB13_1197
.LBB13_1197:                            # %do.body.3689
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1199
# BB#1198:                              # %if.then.3695
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1199:                            # %if.end.3696
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1201
# BB#1200:                              # %if.then.3702
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1201:                            # %if.end.3704
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1203
# BB#1202:                              # %if.then.3713
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1203:                            # %if.end.3714
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-888(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1211
# BB#1204:                              # %if.then.3718
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-896(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1206
# BB#1205:                              # %if.then.3730
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-896(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1206:                            # %if.end.3735
                                        #   in Loop: Header=BB13_1195 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1208
# BB#1207:                              # %if.then.3737
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-896(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1208:                            # %if.end.3742
                                        #   in Loop: Header=BB13_1195 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1210
# BB#1209:                              # %if.then.3744
                                        #   in Loop: Header=BB13_1195 Depth=2
	movq	-896(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-888(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1210:                            # %if.end.3749
                                        #   in Loop: Header=BB13_1195 Depth=2
	jmp	.LBB13_1211
.LBB13_1211:                            # %if.end.3750
                                        #   in Loop: Header=BB13_1195 Depth=2
	jmp	.LBB13_1212
.LBB13_1212:                            # %do.end.3751
                                        #   in Loop: Header=BB13_1195 Depth=2
	jmp	.LBB13_1195
.LBB13_1213:                            # %while.end.3752
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$8, (%rax)
	movl	-876(%rbp), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#1214:                              # %do.end.3756
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1220
.LBB13_1215:                            # %sw.bb.3757
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB13_1217
# BB#1216:                              # %if.then.3760
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_99
.LBB13_1217:                            # %if.else.3761
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_1218:                            # %sw.default.3762
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1219
.LBB13_1219:                            # %normal_backslash
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1220:                            # %sw.epilog.3763
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1291
.LBB13_1221:                            # %sw.default.3764
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1222
.LBB13_1222:                            # %normal_char
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB13_1243
# BB#1223:                              # %lor.lhs.false.3766
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-112(%rbp), %rax
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_1243
# BB#1224:                              # %lor.lhs.false.3773
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	jge	.LBB13_1243
# BB#1225:                              # %lor.lhs.false.3777
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_1228
# BB#1226:                              # %land.lhs.true.3780
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB13_1243
# BB#1227:                              # %lor.lhs.false.3784
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB13_1243
.LBB13_1228:                            # %lor.lhs.false.3788
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$2, %rax
	cmpq	$0, %rax
	je	.LBB13_1233
# BB#1229:                              # %cond.true.3791
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB13_1236
# BB#1230:                              # %land.lhs.true.3795
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB13_1236
# BB#1231:                              # %land.lhs.true.3799
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB13_1243
# BB#1232:                              # %lor.lhs.false.3804
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB13_1243
	jmp	.LBB13_1236
.LBB13_1233:                            # %cond.false.3809
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_1236
# BB#1234:                              # %land.lhs.true.3812
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB13_1243
# BB#1235:                              # %lor.lhs.false.3816
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	je	.LBB13_1243
.LBB13_1236:                            # %lor.lhs.false.3820
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$512, %rax              # imm = 0x200
	cmpq	$0, %rax
	je	.LBB13_1265
# BB#1237:                              # %land.lhs.true.3823
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-32(%rbp), %rax
	andq	$4096, %rax             # imm = 0x1000
	cmpq	$0, %rax
	je	.LBB13_1240
# BB#1238:                              # %cond.true.3826
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB13_1265
# BB#1239:                              # %land.lhs.true.3829
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$123, %ecx
	je	.LBB13_1243
	jmp	.LBB13_1265
.LBB13_1240:                            # %cond.false.3833
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB13_1265
# BB#1241:                              # %land.lhs.true.3837
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB13_1265
# BB#1242:                              # %land.lhs.true.3842
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB13_1265
.LBB13_1243:                            # %if.then.3847
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#1244:                              # %do.body.3848
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1245
.LBB13_1245:                            # %while.cond.3849
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1263
# BB#1246:                              # %while.body.3858
                                        #   in Loop: Header=BB13_1245 Depth=2
	jmp	.LBB13_1247
.LBB13_1247:                            # %do.body.3859
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1249
# BB#1248:                              # %if.then.3865
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1249:                            # %if.end.3866
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1251
# BB#1250:                              # %if.then.3872
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1251:                            # %if.end.3874
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1253
# BB#1252:                              # %if.then.3883
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1253:                            # %if.end.3884
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-904(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1261
# BB#1254:                              # %if.then.3888
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-912(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1256
# BB#1255:                              # %if.then.3900
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-912(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1256:                            # %if.end.3905
                                        #   in Loop: Header=BB13_1245 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1258
# BB#1257:                              # %if.then.3907
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-912(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1258:                            # %if.end.3912
                                        #   in Loop: Header=BB13_1245 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1260
# BB#1259:                              # %if.then.3914
                                        #   in Loop: Header=BB13_1245 Depth=2
	movq	-912(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-904(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1260:                            # %if.end.3919
                                        #   in Loop: Header=BB13_1245 Depth=2
	jmp	.LBB13_1261
.LBB13_1261:                            # %if.end.3920
                                        #   in Loop: Header=BB13_1245 Depth=2
	jmp	.LBB13_1262
.LBB13_1262:                            # %do.end.3921
                                        #   in Loop: Header=BB13_1245 Depth=2
	jmp	.LBB13_1245
.LBB13_1263:                            # %while.end.3922
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$2, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
# BB#1264:                              # %do.end.3925
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB13_1265:                            # %if.end.3927
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_1266
.LBB13_1266:                            # %while.cond.3928
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1284
# BB#1267:                              # %while.body.3937
                                        #   in Loop: Header=BB13_1266 Depth=2
	jmp	.LBB13_1268
.LBB13_1268:                            # %do.body.3938
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -920(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1270
# BB#1269:                              # %if.then.3944
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1270:                            # %if.end.3945
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1272
# BB#1271:                              # %if.then.3951
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1272:                            # %if.end.3953
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1274
# BB#1273:                              # %if.then.3962
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1274:                            # %if.end.3963
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-920(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1282
# BB#1275:                              # %if.then.3967
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-928(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1277
# BB#1276:                              # %if.then.3979
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-928(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1277:                            # %if.end.3984
                                        #   in Loop: Header=BB13_1266 Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB13_1279
# BB#1278:                              # %if.then.3986
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-928(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1279:                            # %if.end.3991
                                        #   in Loop: Header=BB13_1266 Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB13_1281
# BB#1280:                              # %if.then.3993
                                        #   in Loop: Header=BB13_1266 Depth=2
	movq	-928(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-920(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1281:                            # %if.end.3998
                                        #   in Loop: Header=BB13_1266 Depth=2
	jmp	.LBB13_1282
.LBB13_1282:                            # %if.end.3999
                                        #   in Loop: Header=BB13_1266 Depth=2
	jmp	.LBB13_1283
.LBB13_1283:                            # %do.end.4000
                                        #   in Loop: Header=BB13_1266 Depth=2
	jmp	.LBB13_1266
.LBB13_1284:                            # %while.end.4001
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB13_1286
# BB#1285:                              # %cond.true.4004
                                        #   in Loop: Header=BB13_15 Depth=1
	movslq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -1208(%rbp)       # 4-byte Spill
	jmp	.LBB13_1287
.LBB13_1286:                            # %cond.false.4008
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -1208(%rbp)       # 4-byte Spill
.LBB13_1287:                            # %cond.end.4009
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-1208(%rbp), %eax       # 4-byte Reload
	movl	%eax, -936(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-936(%rbp), %eax
	je	.LBB13_1290
# BB#1288:                              # %land.lhs.true.4013
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-936(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jl	.LBB13_1290
# BB#1289:                              # %if.then.4016
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB13_1290:                            # %if.end.4017
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%cl, (%rdx)
	movl	$1, -932(%rbp)
	movl	-932(%rbp), %eax
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %edi
	addl	%eax, %edi
	movb	%dil, %cl
	movb	%cl, (%rdx)
.LBB13_1291:                            # %sw.epilog.4023
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_15
.LBB13_1292:                            # %while.end.4024
	jmp	.LBB13_1293
.LBB13_1293:                            # %do.body.4025
	cmpq	$0, -144(%rbp)
	je	.LBB13_1295
# BB#1294:                              # %if.then.4027
	movl	$13, %edi
	movq	-144(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rcx, %rax
	subq	$3, %rax
	movl	%eax, %edx
	callq	store_op1
.LBB13_1295:                            # %if.end.4033
	jmp	.LBB13_1296
.LBB13_1296:                            # %do.end.4034
	cmpq	$0, -64(%rbp)
	je	.LBB13_1303
# BB#1297:                              # %if.then.4038
	jmp	.LBB13_1298
.LBB13_1298:                            # %do.body.4039
	jmp	.LBB13_1299
.LBB13_1299:                            # %do.body.4040
	cmpq	$0, -168(%rbp)
	je	.LBB13_1301
# BB#1300:                              # %if.then.4043
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_1301:                            # %if.end.4045
	jmp	.LBB13_1302
.LBB13_1302:                            # %do.end.4046
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$8, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1303:                            # %if.end.4049
	movq	-32(%rbp), %rax
	andq	$262144, %rax           # imm = 0x40000
	cmpq	$0, %rax
	je	.LBB13_1326
# BB#1304:                              # %if.then.4052
	jmp	.LBB13_1305
.LBB13_1305:                            # %do.body.4053
	jmp	.LBB13_1306
.LBB13_1306:                            # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB13_1324
# BB#1307:                              # %while.body.4062
                                        #   in Loop: Header=BB13_1306 Depth=1
	jmp	.LBB13_1308
.LBB13_1308:                            # %do.body.4063
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -944(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jne	.LBB13_1310
# BB#1309:                              # %if.then.4069
	movl	$15, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1310:                            # %if.end.4070
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rax
	cmpq	$32768, 8(%rax)         # imm = 0x8000
	jbe	.LBB13_1312
# BB#1311:                              # %if.then.4076
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-40(%rbp), %rax
	movq	$32768, 8(%rax)         # imm = 0x8000
.LBB13_1312:                            # %if.end.4078
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_1314
# BB#1313:                              # %if.then.4087
	movl	$12, -4(%rbp)
	jmp	.LBB13_1332
.LBB13_1314:                            # %if.end.4088
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-944(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB13_1322
# BB#1315:                              # %if.then.4092
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-944(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-952(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-944(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB13_1317
# BB#1316:                              # %if.then.4104
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-952(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-944(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB13_1317:                            # %if.end.4109
                                        #   in Loop: Header=BB13_1306 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB13_1319
# BB#1318:                              # %if.then.4111
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-952(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-944(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
.LBB13_1319:                            # %if.end.4116
                                        #   in Loop: Header=BB13_1306 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB13_1321
# BB#1320:                              # %if.then.4118
                                        #   in Loop: Header=BB13_1306 Depth=1
	movq	-952(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-944(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB13_1321:                            # %if.end.4123
                                        #   in Loop: Header=BB13_1306 Depth=1
	jmp	.LBB13_1322
.LBB13_1322:                            # %if.end.4124
                                        #   in Loop: Header=BB13_1306 Depth=1
	jmp	.LBB13_1323
.LBB13_1323:                            # %do.end.4125
                                        #   in Loop: Header=BB13_1306 Depth=1
	jmp	.LBB13_1306
.LBB13_1324:                            # %while.end.4126
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$1, (%rax)
# BB#1325:                              # %do.end.4128
	jmp	.LBB13_1326
.LBB13_1326:                            # %if.end.4129
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#1327:                              # %do.body.4135
	jmp	.LBB13_1328
.LBB13_1328:                            # %do.body.4136
	cmpq	$0, -168(%rbp)
	je	.LBB13_1330
# BB#1329:                              # %if.then.4139
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_1330:                            # %if.end.4141
	jmp	.LBB13_1331
.LBB13_1331:                            # %do.end.4142
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$0, -4(%rbp)
.LBB13_1332:                            # %do.end.4144
	movl	-4(%rbp), %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	regex_compile, .Lfunc_end13-regex_compile
	.cfi_endproc

	.globl	regcomp
	.align	16, 0x90
	.type	regcomp,@function
regcomp:                                # @regcomp
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
	subq	$96, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movl	$66246, %eax            # imm = 0x102C6
	movl	%eax, %r8d
	movl	$242428, %eax           # imm = 0x3B2FC
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	cmovneq	%r9, %r8
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 8(%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-28(%rbp), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB14_11
# BB#1:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	callq	xmalloc
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB14_3
# BB#2:                                 # %if.then.5
	movl	$12, -4(%rbp)
	jmp	.LBB14_23
.LBB14_3:                               # %if.end
	movl	$0, -44(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jae	.LBB14_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_4
.LBB14_10:                              # %for.end
	jmp	.LBB14_12
.LBB14_11:                              # %if.else
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB14_12:                              # %if.end.19
	movl	-28(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.22
	movq	-40(%rbp), %rax
	andq	$-65, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	orq	$256, %rax              # imm = 0x100
	movq	%rax, -40(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.else.24
	movq	-40(%rbp), %rax
	orq	$4194304, %rax          # imm = 0x400000
	movq	%rax, -40(%rbp)
.LBB14_15:                              # %if.end.26
	movl	-28(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-16(%rbp), %rdx
	movb	%al, %cl
	movb	56(%rdx), %sil
	andb	$1, %cl
	shlb	$4, %cl
	andb	$-17, %sil
	orb	%cl, %sil
	movb	%sil, 56(%rdx)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	regex_compile
	movl	%eax, -32(%rbp)
	cmpl	$16, -32(%rbp)
	jne	.LBB14_17
# BB#16:                                # %if.then.34
	movl	$8, -32(%rbp)
.LBB14_17:                              # %if.end.35
	cmpl	$0, -32(%rbp)
	jne	.LBB14_22
# BB#18:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB14_22
# BB#19:                                # %if.then.40
	movq	-16(%rbp), %rdi
	callq	re_compile_fastmap
	movq	-16(%rbp), %rdi
	movb	56(%rdi), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_21
# BB#20:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB14_21:                              # %if.end.48
	jmp	.LBB14_22
.LBB14_22:                              # %if.end.49
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	regcomp, .Lfunc_end14-regcomp
	.cfi_endproc

	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	movl	$2, %edi
	movabsq	$.L.str.17, %rsi
	movl	$25, %eax
	movl	%eax, %edx
	callq	write
	movl	$1, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	exit
.LBB15_3:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xmalloc, .Lfunc_end15-xmalloc
	.cfi_endproc

	.globl	regexec
	.align	16, 0x90
	.type	regexec,@function
regexec:                                # @regexec
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movb	%al, %r9b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-24(%rbp), %rdi
	movb	%r9b, -161(%rbp)        # 1-byte Spill
	callq	strlen
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movb	56(%rax), %r9b
	shrb	$4, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	cmpl	$0, %r8d
	movb	-161(%rbp), %r9b        # 1-byte Reload
	movb	%r9b, -162(%rbp)        # 1-byte Spill
	jne	.LBB16_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -162(%rbp)         # 1-byte Spill
	jbe	.LBB16_3
# BB#2:                                 # %land.rhs
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -162(%rbp)         # 1-byte Spill
.LBB16_3:                               # %land.end
	movb	-162(%rbp), %al         # 1-byte Reload
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-144(%rbp), %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -153(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movl	-44(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	-88(%rbp), %r8b
	andb	$1, %al
	shlb	$5, %al
	andb	$-33, %r8b
	orb	%al, %r8b
	movb	%r8b, -88(%rbp)
	movl	-44(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	-88(%rbp), %r8b
	andb	$1, %al
	shlb	$6, %al
	andb	$-65, %r8b
	orb	%al, %r8b
	movb	%r8b, -88(%rbp)
	movb	-88(%rbp), %al
	andb	$-7, %al
	orb	$4, %al
	movb	%al, -88(%rbp)
	cmpb	$0, -153(%rbp)
	je	.LBB16_7
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_6
# BB#5:                                 # %if.then.28
	movl	$1, -4(%rbp)
	jmp	.LBB16_19
.LBB16_6:                               # %if.end
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB16_7:                               # %if.end.30
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-152(%rbp), %r8
	movsbl	-153(%rbp), %eax
	cmpl	$0, %eax
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	je	.LBB16_9
# BB#8:                                 # %cond.true
	leaq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_10:                              # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	re_search
	movq	%rax, -56(%rbp)
	cmpb	$0, -153(%rbp)
	je	.LBB16_18
# BB#11:                                # %if.then.35
	cmpq	$0, -56(%rbp)
	jl	.LBB16_17
# BB#12:                                # %if.then.38
	movl	$0, -160(%rbp)
.LBB16_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jae	.LBB16_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-160(%rbp), %eax
	movl	%eax, %edx
	shlq	$4, %rdx
	addq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	-160(%rbp), %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-160(%rbp), %eax
	movl	%eax, %edx
	shlq	$4, %rdx
	addq	-40(%rbp), %rdx
	movq	%rcx, 8(%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB16_13
.LBB16_16:                              # %for.end
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.50
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB16_18:                              # %if.end.52
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, -56(%rbp)
	cmovgel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB16_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	regexec, .Lfunc_end16-regexec
	.cfi_endproc

	.globl	regerror
	.align	16, 0x90
	.type	regerror,@function
regerror:                               # @regerror
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movslq	-4(%rbp), %rax
	cmpq	$18, %rax
	jb	.LBB17_3
.LBB17_2:                               # %if.then
	callq	abort
.LBB17_3:                               # %if.end
	movslq	-4(%rbp), %rax
	movq	re_error_msgid(,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#4:                                 # %if.then.5
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB17_6
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcpy
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB17_7:                               # %if.end.12
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.13
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	regerror, .Lfunc_end17-regerror
	.cfi_endproc

	.globl	regfree
	.align	16, 0x90
	.type	regfree,@function
regfree:                                # @regfree
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	$0, (%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movb	56(%rdi), %al
	andb	$-9, %al
	movb	%al, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	regfree, .Lfunc_end18-regfree
	.cfi_endproc

	.align	16, 0x90
	.type	extract_number_and_incr,@function
extract_number_and_incr:                # @extract_number_and_incr
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	extract_number
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rcx
	addq	$2, %rcx
	movq	%rcx, (%rdi)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	extract_number_and_incr, .Lfunc_end19-extract_number_and_incr
	.cfi_endproc

	.align	16, 0x90
	.type	extract_number,@function
extract_number:                         # @extract_number
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	1(%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	addl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	extract_number, .Lfunc_end20-extract_number
	.cfi_endproc

	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -24(%rbp)
.LBB21_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB21_6
# BB#4:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	je	.LBB21_6
# BB#5:                                 # %if.then.4
	movl	$2, %edi
	movabsq	$.L.str.17, %rsi
	movl	$25, %eax
	movl	%eax, %edx
	callq	write
	movl	$1, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	exit
.LBB21_6:                               # %if.end.6
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	xrealloc, .Lfunc_end21-xrealloc
	.cfi_endproc

	.align	16, 0x90
	.type	bcmp_translate,@function
bcmp_translate:                         # @bcmp_translate
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpq	-72(%rbp), %rdx
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jae	.LBB22_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setb	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB22_3:                               # %land.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_4
	jmp	.LBB22_7
.LBB22_4:                               # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	$1, -84(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movl	$1, -88(%rbp)
	movslq	-92(%rbp), %rax
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movslq	-96(%rbp), %rax
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB22_6
# BB#5:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB22_11
.LBB22_6:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB22_1
.LBB22_7:                               # %while.end
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB22_9
# BB#8:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB22_10
.LBB22_9:                               # %if.then.17
	movl	$1, -4(%rbp)
	jmp	.LBB22_11
.LBB22_10:                              # %if.end.18
	movl	$0, -4(%rbp)
.LBB22_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	bcmp_translate, .Lfunc_end22-bcmp_translate
	.cfi_endproc

	.align	16, 0x90
	.type	mutually_exclusive_p,@function
mutually_exclusive_p:                   # @mutually_exclusive_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -37(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	16(%rsi), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	skip_noops
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_3
.LBB23_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB23_3:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	decl	%eax
	movl	%eax, %ecx
	subl	$28, %eax
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%eax, -84(%rbp)         # 4-byte Spill
	ja	.LBB23_88
# BB#91:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_4:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	skip_one_char
	cmpq	$0, %rax
	je	.LBB23_6
# BB#5:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_6:                               # %if.end
	jmp	.LBB23_89
.LBB23_7:                               # %sw.bb.2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB23_9
# BB#8:                                 # %cond.true.6
	movl	$10, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false.7
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB23_10:                              # %cond.end.10
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %eax
	cmpl	$2, %eax
	jne	.LBB23_14
# BB#11:                                # %if.then.15
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB23_13
# BB#12:                                # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_13:                              # %if.end.21
	jmp	.LBB23_27
.LBB23_14:                              # %if.else
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	je	.LBB23_16
# BB#15:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB23_22
.LBB23_16:                              # %if.then.28
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %esi
	andl	$127, %esi
	shll	$3, %esi
	cmpl	%esi, %ecx
	jge	.LBB23_19
# BB#17:                                # %land.lhs.true
	movl	$1, %eax
	movl	$8, %ecx
	movl	-52(%rbp), %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-92(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB23_19
# BB#18:                                # %if.then.39
	cmpl	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -56(%rbp)
.LBB23_19:                              # %if.end.41
	cmpl	$0, -56(%rbp)
	jne	.LBB23_21
# BB#20:                                # %if.then.43
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_21:                              # %if.end.44
	jmp	.LBB23_26
.LBB23_22:                              # %if.else.45
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB23_25
# BB#23:                                # %land.lhs.true.49
	cmpl	$10, -52(%rbp)
	jne	.LBB23_25
# BB#24:                                # %if.then.52
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_25:                              # %if.end.53
	jmp	.LBB23_26
.LBB23_26:                              # %if.end.54
	jmp	.LBB23_27
.LBB23_27:                              # %if.end.55
	jmp	.LBB23_89
.LBB23_28:                              # %sw.bb.56
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB23_30
# BB#29:                                # %if.then.60
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	mutually_exclusive_p
	movl	%eax, -4(%rbp)
	jmp	.LBB23_90
.LBB23_30:                              # %if.else.62
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB23_43
# BB#31:                                # %if.then.66
	movl	$0, -60(%rbp)
.LBB23_32:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rdx
	movzbl	1(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jge	.LBB23_34
# BB#33:                                # %land.rhs
                                        #   in Loop: Header=BB23_32 Depth=1
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -97(%rbp)         # 1-byte Spill
.LBB23_34:                              # %land.end
                                        #   in Loop: Header=BB23_32 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_35
	jmp	.LBB23_39
.LBB23_35:                              # %for.body
                                        #   in Loop: Header=BB23_32 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-60(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB23_37
# BB#36:                                # %if.then.87
	jmp	.LBB23_39
.LBB23_37:                              # %if.end.88
                                        #   in Loop: Header=BB23_32 Depth=1
	jmp	.LBB23_38
.LBB23_38:                              # %for.inc
                                        #   in Loop: Header=BB23_32 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB23_32
.LBB23_39:                              # %for.end
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB23_41
# BB#40:                                # %lor.lhs.false.93
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	jne	.LBB23_42
.LBB23_41:                              # %if.then.99
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_42:                              # %if.end.100
	jmp	.LBB23_56
.LBB23_43:                              # %if.else.101
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB23_55
# BB#44:                                # %if.then.105
	movl	$0, -64(%rbp)
.LBB23_45:                              # %for.cond.107
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB23_52
# BB#46:                                # %for.body.112
                                        #   in Loop: Header=BB23_45 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB23_50
# BB#47:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB23_45 Depth=1
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	andl	$127, %edx
	cmpl	%edx, %eax
	jge	.LBB23_49
# BB#48:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB23_45 Depth=1
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-64(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	xorl	$-1, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB23_50
.LBB23_49:                              # %if.then.137
	jmp	.LBB23_52
.LBB23_50:                              # %if.end.138
                                        #   in Loop: Header=BB23_45 Depth=1
	jmp	.LBB23_51
.LBB23_51:                              # %for.inc.139
                                        #   in Loop: Header=BB23_45 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB23_45
.LBB23_52:                              # %for.end.141
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB23_54
# BB#53:                                # %if.then.146
	movl	$1, -4(%rbp)
	jmp	.LBB23_90
.LBB23_54:                              # %if.end.147
	jmp	.LBB23_55
.LBB23_55:                              # %if.end.148
	jmp	.LBB23_56
.LBB23_56:                              # %if.end.149
	jmp	.LBB23_57
.LBB23_57:                              # %if.end.150
	jmp	.LBB23_89
.LBB23_58:                              # %sw.bb.151
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	%edx, -108(%rbp)        # 4-byte Spill
	je	.LBB23_59
	jmp	.LBB23_92
.LBB23_92:                              # %sw.bb.151
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB23_59
	jmp	.LBB23_93
.LBB23_93:                              # %sw.bb.151
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB23_60
	jmp	.LBB23_61
.LBB23_59:                              # %sw.bb.153
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	mutually_exclusive_p
	movl	%eax, -4(%rbp)
	jmp	.LBB23_90
.LBB23_60:                              # %sw.bb.155
	jmp	.LBB23_61
.LBB23_61:                              # %sw.epilog
	jmp	.LBB23_89
.LBB23_62:                              # %sw.bb.156
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -117(%rbp)         # 1-byte Spill
	jne	.LBB23_64
# BB#63:                                # %land.rhs.160
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movb	%dl, -117(%rbp)         # 1-byte Spill
.LBB23_64:                              # %land.end.165
	movb	-117(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_65:                              # %sw.bb.166
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -118(%rbp)         # 1-byte Spill
	jne	.LBB23_69
# BB#66:                                # %land.rhs.170
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$2, %edx
	movb	%al, -119(%rbp)         # 1-byte Spill
	je	.LBB23_68
# BB#67:                                # %lor.rhs
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movb	%dl, -119(%rbp)         # 1-byte Spill
.LBB23_68:                              # %lor.end
	movb	-119(%rbp), %al         # 1-byte Reload
	movb	%al, -118(%rbp)         # 1-byte Spill
.LBB23_69:                              # %land.end.179
	movb	-118(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_70:                              # %sw.bb.181
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -120(%rbp)         # 1-byte Spill
	jne	.LBB23_72
# BB#71:                                # %land.rhs.185
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -120(%rbp)        # 1-byte Spill
.LBB23_72:                              # %land.end.192
	movb	-120(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_73:                              # %sw.bb.194
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jne	.LBB23_75
# BB#74:                                # %land.rhs.198
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movb	%dl, -121(%rbp)         # 1-byte Spill
.LBB23_75:                              # %land.end.203
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_76:                              # %sw.bb.205
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -122(%rbp)         # 1-byte Spill
	jne	.LBB23_80
# BB#77:                                # %land.rhs.209
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$2, %edx
	movb	%al, -123(%rbp)         # 1-byte Spill
	je	.LBB23_79
# BB#78:                                # %lor.rhs.214
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movb	%dl, -123(%rbp)         # 1-byte Spill
.LBB23_79:                              # %lor.end.219
	movb	-123(%rbp), %al         # 1-byte Reload
	movb	%al, -122(%rbp)         # 1-byte Spill
.LBB23_80:                              # %land.end.220
	movb	-122(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_81:                              # %sw.bb.222
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$29, %eax
	movb	%cl, -124(%rbp)         # 1-byte Spill
	jne	.LBB23_83
# BB#82:                                # %land.rhs.226
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -124(%rbp)        # 1-byte Spill
.LBB23_83:                              # %land.end.233
	movb	-124(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_84:                              # %sw.bb.235
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$29, %ecx
	je	.LBB23_86
# BB#85:                                # %lor.lhs.false.239
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$28, %eax
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB23_87
.LBB23_86:                              # %land.rhs.243
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	movb	%dl, -125(%rbp)         # 1-byte Spill
.LBB23_87:                              # %land.end.248
	movb	-125(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_90
.LBB23_88:                              # %sw.default
	jmp	.LBB23_89
.LBB23_89:                              # %sw.epilog.250
	movl	$0, -4(%rbp)
.LBB23_90:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	mutually_exclusive_p, .Lfunc_end23-mutually_exclusive_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_4
	.quad	.LBB23_7
	.quad	.LBB23_88
	.quad	.LBB23_28
	.quad	.LBB23_58
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_7
	.quad	.LBB23_88
	.quad	.LBB23_4
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_88
	.quad	.LBB23_73
	.quad	.LBB23_62
	.quad	.LBB23_84
	.quad	.LBB23_88
	.quad	.LBB23_76
	.quad	.LBB23_65
	.quad	.LBB23_81
	.quad	.LBB23_70

	.text
	.align	16, 0x90
	.type	skip_noops,@function
skip_noops:                             # @skip_noops
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB24_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	je	.LBB24_4
	jmp	.LBB24_10
.LBB24_10:                              # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jb	.LBB24_3
	jmp	.LBB24_11
.LBB24_11:                              # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB24_5
	jmp	.LBB24_6
.LBB24_3:                               # %sw.bb
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB24_7
.LBB24_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB24_7
.LBB24_5:                               # %sw.bb.3
                                        #   in Loop: Header=BB24_1 Depth=1
	leaq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -16(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %sw.default
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_9
.LBB24_7:                               # %sw.epilog
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_1
.LBB24_8:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	skip_noops, .Lfunc_end24-skip_noops
	.cfi_endproc

	.align	16, 0x90
	.type	skip_one_char,@function
skip_one_char:                          # @skip_one_char
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
	incq	%rax
	movq	%rax, -8(%rbp)
	movzbl	(%rdi), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	je	.LBB25_2
	jmp	.LBB25_10
.LBB25_10:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB25_1
	jmp	.LBB25_11
.LBB25_11:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB25_3
	jmp	.LBB25_12
.LBB25_12:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-28, %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jb	.LBB25_7
	jmp	.LBB25_8
.LBB25_1:                               # %sw.bb
	jmp	.LBB25_9
.LBB25_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_9
.LBB25_3:                               # %sw.bb.3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB25_5
# BB#4:                                 # %if.then
	leaq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	$-1, %rdx
	addq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	callq	extract_number_and_incr
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	shll	$1, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB25_6
.LBB25_5:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$127, %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.LBB25_6:                               # %if.end
	jmp	.LBB25_9
.LBB25_7:                               # %sw.bb.23
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_9
.LBB25_8:                               # %sw.default
	movq	$0, -8(%rbp)
.LBB25_9:                               # %sw.epilog
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	skip_one_char, .Lfunc_end25-skip_one_char
	.cfi_endproc

	.align	16, 0x90
	.type	init_syntax_once,@function
init_syntax_once:                       # @init_syntax_once
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
	subq	$16, %rsp
	cmpl	$0, init_syntax_once.done
	je	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_9
.LBB26_2:                               # %if.end
	movabsq	$re_syntax_table, %rdi
	xorl	%esi, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	callq	memset
	movl	$0, -4(%rbp)
.LBB26_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB26_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB26_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB26_3 Depth=1
	movslq	-4(%rbp), %rax
	movb	$1, re_syntax_table(,%rax)
.LBB26_6:                               # %if.end.5
                                        #   in Loop: Header=BB26_3 Depth=1
	jmp	.LBB26_7
.LBB26_7:                               # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_3
.LBB26_8:                               # %for.end
	movb	$2, re_syntax_table+95
	movl	$1, init_syntax_once.done
.LBB26_9:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	init_syntax_once, .Lfunc_end26-init_syntax_once
	.cfi_endproc

	.align	16, 0x90
	.type	at_begline_loc_p,@function
at_begline_loc_p:                       # @at_begline_loc_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	addq	$-2, %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$40, %eax
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB27_20
.LBB27_2:                               # %if.else
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	jne	.LBB27_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB27_19
.LBB27_4:                               # %if.else.13
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB27_17
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	andq	$2097152, %rax          # imm = 0x200000
	cmpq	$0, %rax
	je	.LBB27_17
# BB#6:                                 # %if.then.18
	jmp	.LBB27_7
.LBB27_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	addq	$-1, %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jb	.LBB27_10
# BB#8:                                 # %land.lhs.true.22
                                        #   in Loop: Header=BB27_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movzbl	-1(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jl	.LBB27_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB27_7 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
.LBB27_10:                              # %land.end
                                        #   in Loop: Header=BB27_7 Depth=1
	movb	-42(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_11
	jmp	.LBB27_12
.LBB27_11:                              # %while.body
                                        #   in Loop: Header=BB27_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB27_7
.LBB27_12:                              # %while.end
	movq	-40(%rbp), %rax
	addq	$-2, %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB27_15
# BB#13:                                # %land.lhs.true.33
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB27_15
# BB#14:                                # %land.lhs.true.38
	movq	-40(%rbp), %rax
	movzbl	-2(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB27_16
.LBB27_15:                              # %if.then.43
	movb	$0, -1(%rbp)
	jmp	.LBB27_26
.LBB27_16:                              # %if.end
	movq	-40(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB27_18
.LBB27_17:                              # %if.else.49
	movb	$0, -1(%rbp)
	jmp	.LBB27_26
.LBB27_18:                              # %if.end.50
	jmp	.LBB27_19
.LBB27_19:                              # %if.end.51
	jmp	.LBB27_20
.LBB27_20:                              # %if.end.52
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB27_21:                              # %while.cond.53
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	addq	$-1, %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jb	.LBB27_23
# BB#22:                                # %land.rhs.57
                                        #   in Loop: Header=BB27_21 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	sete	%dl
	movb	%dl, -43(%rbp)          # 1-byte Spill
.LBB27_23:                              # %land.end.62
                                        #   in Loop: Header=BB27_21 Depth=1
	movb	-43(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_24
	jmp	.LBB27_25
.LBB27_24:                              # %while.body.63
                                        #   in Loop: Header=BB27_21 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB27_21
.LBB27_25:                              # %while.end.65
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movsbq	-41(%rbp), %rcx
	andq	%rcx, %rax
	movb	%al, %dl
	movb	%dl, -1(%rbp)
.LBB27_26:                              # %return
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	at_begline_loc_p, .Lfunc_end27-at_begline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	at_endline_loc_p,@function
at_endline_loc_p:                       # @at_endline_loc_p
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$92, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -33(%rbp)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	-16(%rbp), %rdx
	jae	.LBB28_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB28_3
.LBB28_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	andq	$8192, %rax             # imm = 0x2000
	cmpq	$0, %rax
	je	.LBB28_5
# BB#4:                                 # %cond.true.6
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB28_15
	jmp	.LBB28_8
.LBB28_5:                               # %cond.false.10
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB28_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB28_8
# BB#7:                                 # %land.lhs.true.14
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$41, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB28_15
.LBB28_8:                               # %lor.rhs
	movq	-24(%rbp), %rax
	andq	$32768, %rax            # imm = 0x8000
	cmpq	$0, %rax
	je	.LBB28_10
# BB#9:                                 # %cond.true.20
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB28_14
.LBB28_10:                              # %cond.false.24
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB28_13
# BB#11:                                # %land.lhs.true.27
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB28_13
# BB#12:                                # %land.rhs
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$124, %ecx
	sete	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB28_13:                              # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB28_14:                              # %cond.end.32
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB28_15:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	at_endline_loc_p, .Lfunc_end28-at_endline_loc_p
	.cfi_endproc

	.align	16, 0x90
	.type	store_op1,@function
store_op1:                              # @store_op1
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edx
	movb	%dl, %al
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#2:                                 # %do.end
	popq	%rbp
	retq
.Lfunc_end29:
	.size	store_op1, .Lfunc_end29-store_op1
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op1,@function
insert_op1:                             # @insert_op1
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -48(%rbp)
.LBB30_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB30_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	-1(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, -1(%rax)
	jmp	.LBB30_1
.LBB30_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	store_op1
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	insert_op1, .Lfunc_end30-insert_op1
	.cfi_endproc

	.align	16, 0x90
	.type	group_in_compile_stack,@function
group_in_compile_stack:                 # @group_in_compile_stack
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
	leaq	16(%rbp), %rax
	movl	%edi, -8(%rbp)
	movq	16(%rax), %rcx
	subq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jl	.LBB31_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	shlq	$5, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	(%rcx), %rax
	movl	24(%rax), %edx
	cmpl	-8(%rbp), %edx
	jne	.LBB31_4
# BB#3:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB31_7
.LBB31_4:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_5
.LBB31_5:                               # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB31_1
.LBB31_6:                               # %for.end
	movb	$0, -1(%rbp)
.LBB31_7:                               # %return
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	group_in_compile_stack, .Lfunc_end31-group_in_compile_stack
	.cfi_endproc

	.align	16, 0x90
	.type	insert_op2,@function
insert_op2:                             # @insert_op2
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	addq	$5, %rsi
	movq	%rsi, -48(%rbp)
.LBB32_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB32_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	-1(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, -1(%rax)
	jmp	.LBB32_1
.LBB32_3:                               # %while.end
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	store_op2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	insert_op2, .Lfunc_end32-insert_op2
	.cfi_endproc

	.align	16, 0x90
	.type	store_op2,@function
store_op2:                              # @store_op2
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-4(%rbp), %ecx
	movb	%cl, %al
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
# BB#1:                                 # %do.body
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#2:                                 # %do.end
	jmp	.LBB33_3
.LBB33_3:                               # %do.body.5
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 4(%rdx)
# BB#4:                                 # %do.end.14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	store_op2, .Lfunc_end33-store_op2
	.cfi_endproc

	.type	re_syntax_options,@object # @re_syntax_options
	.comm	re_syntax_options,8,8
	.type	whitespace_regexp,@object # @whitespace_regexp
	.local	whitespace_regexp
	.comm	whitespace_regexp,8,8
	.type	re_max_failures,@object # @re_max_failures
	.data
	.globl	re_max_failures
	.align	8
re_max_failures:
	.quad	40000                   # 0x9c40
	.size	re_max_failures, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alnum"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alpha"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"word"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ascii"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nonascii"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"graph"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lower"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"print"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"punct"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"space"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"upper"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unibyte"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"multibyte"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"digit"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xdigit"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cntrl"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"blank"
	.size	.L.str.16, 6

	.type	re_error_msgid,@object  # @re_error_msgid
	.data
	.align	16
re_error_msgid:
	.quad	.L.str.18
	.quad	.L.str.19
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
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.size	re_error_msgid, 144

	.type	re_syntax_table,@object # @re_syntax_table
	.local	re_syntax_table
	.comm	re_syntax_table,256,16
	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"virtual memory exhausted\n"
	.size	.L.str.17, 26

	.type	init_syntax_once.done,@object # @init_syntax_once.done
	.local	init_syntax_once.done
	.comm	init_syntax_once.done,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Success"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"No match"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid regular expression"
	.size	.L.str.20, 27

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid collation character"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid character class name"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Trailing backslash"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Invalid back reference"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Unmatched [ or [^"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Unmatched ( or \\("
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Unmatched \\{"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Invalid content of \\{\\}"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid range end"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Memory exhausted"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Invalid preceding regular expression"
	.size	.L.str.31, 37

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Premature end of regular expression"
	.size	.L.str.32, 36

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Regular expression too big"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unmatched ) or \\)"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Range striding over charsets"
	.size	.L.str.35, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
